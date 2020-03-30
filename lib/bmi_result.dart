import 'package:flutter/material.dart';
import 'dart:math';
import 'about_me.dart';

class BMIResult extends StatelessWidget {


  BMIResult({@required this.tinggi_badan, @required this.berat_badan, @required this.nama_lengkap, @required this.tahun_lahir, @required this.bulan_lahir, @required this.tanggal_lahir,@required this.jk});
  final int tinggi_badan;
  final int tahun_lahir;
  final int bulan_lahir;
  final int tanggal_lahir;
  final int berat_badan;
  final String nama_lengkap;
  final String jk;



  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="OBESITAS";
    else if (bmi>=23) cBMI="GEMUK";
    else if (bmi>=17.5) cBMI="NORMAL";
    else cBMI="KURUS";


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL BMI'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "NAMA : ${nama_lengkap}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87
              ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "UMUR : ${2020 - tahun_lahir} TAHUN",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87
              ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "LAHIR BULAN : ${bulan_lahir} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87
              ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "LAHIR TANGGAL : ${tanggal_lahir} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87
              ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),

            new Text(
              "JENIS KELAMIN : ${jk} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87
              ),
            ),
            SizedBox(height: 20,child: Container(
              color: Colors.white,
            ),),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),


            Text(
              'RATA-RATA NORMAL BMI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 60,
          color: Colors.black54,
          alignment: Alignment.center,
          child: Text(
            'Developed by Kadek  Wira Adi Saputra',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}

