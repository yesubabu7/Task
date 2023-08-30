<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
</head>
<body>
    <h1>Product List</h1>
    
    <% if (products_list != null && !products_list.isEmpty()) { %>
        <table border="1">
            <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>HSN Code</th>
                    <th>Category</th>
                    <th>Image</th>
                </tr>
            </thead>
            <tbody>
                <% for (int i = 0; i < products_list.size(); i++) { %>
                    <tr>
                        <td><%= products_list.get(i).getProdId() %></td>
                        <td><%= products_list.get(i).getName() %></td>
                        <td><%= products_list.get(i).getDescription() %></td>
                        <td><%= products_list.get(i).getHsncode() %></td>
                        <td><%= products_list.get(i).getCategory() %></td>
                        <td><img src="<%= products_list.get(i).getImageUrl() %>" alt="Product Image" height="100"></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } else { %>
        <p>No products to display.</p>
    <% } %>
</body>
</html>
