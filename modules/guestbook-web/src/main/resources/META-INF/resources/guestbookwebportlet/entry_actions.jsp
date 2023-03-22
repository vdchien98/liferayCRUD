
<%@page import="com.liferay.portal.kernel.util.WebKeys"%>
<%@include file="../init.jsp"%>
<%
String mvcPath = ParamUtil.getString(request, "mvcPath");

ResultRow row = (ResultRow)request.getAttribute(WebKeys.SEARCH_CONTAINER_RESULT_ROW);

Entry entry = (Entry)row.getObject(); 
%>
<liferay-ui:icon-menu>
 
    <portlet:renderURL var="viewEntryURL">
        <portlet:param name="entryId" value="<%= String.valueOf(entry.getEntryId()) %>" />
       
    </portlet:renderURL>
        <portlet:renderURL var="editURL">
            <portlet:param name="entryId"
                value="<%= String.valueOf(entry.getEntryId()) %>" />
            <portlet:param name="mvcPath" value="/guestbookwebportlet/edit_entry.jsp" />
        </portlet:renderURL>

        <liferay-ui:icon image="edit" message="Edit"
            url="<%=editURL.toString() %>" />
            
            
            
             <portlet:actionURL name="deleteEntry" var="deleteURL">
            <portlet:param name="entryId"
                value="<%= String.valueOf(entry.getEntryId()) %>" />
            <portlet:param name="guestbookId"
                value="<%= String.valueOf(entry.getGuestbookId()) %>" />
        </portlet:actionURL>

        <liferay-ui:icon-delete url="<%=deleteURL.toString() %>" />
            
            
</liferay-ui:icon-menu>