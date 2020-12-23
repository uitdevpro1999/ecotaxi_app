import 'package:ecotaxi_app/src/app.dart';
import 'package:ecotaxi_app/src/res/home_page.dart';
import 'package:ecotaxi_app/src/res/login_page.dart';
import 'package:flutter/material.dart';
import 'package:ecotaxi_app/src/blocs/auth_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
    runApp(MyApp(
        new AuthBloc(),
        MaterialApp(
          home: LoginPage(),
        )));

}