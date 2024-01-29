<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple JSP Form</title>
</head>
<body>

    <h2>Simple JSP Form</h2>

    <%-- JSP code to process the form submission --%>
    <%
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        if (firstName != null && lastName != null) {
            out.println("<p>First Name: " + firstName + "</p>");
            out.println("<p>Last Name: " + lastName + "</p>");
        }
    %>

    <%-- HTML form using JSP syntax --%>
    <form method="post" action="">
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" required><br>

        <label for="lastName">Last Name:</label>
        <input type="text" name="lastName" required><br>

	<label for="age">Age:</label>
        <input type="text" name="age" required><br>

        <input type="submit" value="Send">
    </form>

</body>
</html>

