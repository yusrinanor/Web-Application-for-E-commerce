﻿<%@ Page Language="C#" MasterPageFile="~/Site2.master"  AutoEventWireup="true" CodeFile="Cust_Reg.aspx.cs" Inherits="Cust_Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
	<section id="content" style="margin-left:200px">
		<form runat="server" method="post" enctype="multipart/form-data">
			<h1>Sign Up Form</h1>
            
            <br />
           
			<div>      
                <label style="float:left; margin-left:10px">Email Address:</label><br /> <br />
                <%--<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> <br />--%>
                <input class="form-control" type="email" id="txtEmail" runat="server" required />
                
               <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email address" Visible="False" ValidationExpression="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\s*$"  ></asp:RegularExpressionValidator>--%>
			</div>
            <br />
			<div>
                <label style="float:left; margin-left:10px">New Password:</label><br /> <br />
               <input class="form-control" type="text" id="txtPassword" runat="server" required />
			</div>
            <br />
            <div>
                <label style="float:left; margin-left:10px">Full Name:</label><br /> <br />
                <input class="form-control" type="text" id="txtFullName" runat="server" required />
            </div><br />
			<div>
                <label style="float:left; margin-left:10px">Contact Number:</label><br /> <br />
                <input class="form-control" type="number" id="txtContactNo" runat="server" required />
				
			</div>
            <br />
            <div>
                <label style="float:left; margin-left:10px">Address:</label><br /> <br />
              <input class="form-control" type="text" id="txtAddress" runat="server" required />
            </div>
            <div>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>

        </div>
			<div>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
				<asp:LinkButton ID="linkRegister" runat="server">Have an account? Login</asp:LinkButton>
				
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WAPPDBEntitiesConnectionString %>" SelectCommand="SELECT * FROM [customers]"></asp:SqlDataSource>
				
			</div>
		</form><!-- form -->
		<div class="button">
		
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->

    <script  src="index.js"></script>
    </asp:Content>