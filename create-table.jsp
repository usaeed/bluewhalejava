<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Create a Database using JSP</h1>

<% 
Connection connection = null;
try {
Class.forName("com.mysql.jdbc.Driver").getConstructor().newInstance();
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "");
Statement statement = connection.createStatement();
String query = "CREATE DATABASE runner";
statement.executeUpdate(query);
out.println("Database test created sucessfully.");
} 
catch (Exception e) 
{
out.println("An error occurred.");
}
%>

<h1>Creating a Table</h1>
<% 
Connection conn = null;
try {
Class.forName("com.mysql.jdbc.Driver").getConstructor().newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/runner", "root", "");
Statement statement = conn.createStatement();
String query = "CREATE TABLE student (Id INTEGER, Name CHAR(50));";
statement.executeUpdate(query);
out.println("Table student create sucessfully.");
} 
catch (Exception e) 
{
out.println("An error occurred.");
}
%>

</body>
</html>