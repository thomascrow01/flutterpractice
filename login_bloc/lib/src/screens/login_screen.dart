import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget{
  Widget build(context){
    
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(margin:EdgeInsets.only(bottom:25.0)),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField(){

    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'example@email.com',
            labelText: 'email address',
            errorText: snapshot.error,
          ),
        );
      }
    );

    
  }

  Widget passwordField(){
    return TextField(
      decoration: InputDecoration(
        hintText: 'password',
        labelText: 'password',
      ),
    );
  }

  Widget submitButton(){
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blueGrey,
      onPressed: (){},
    );
  }

}