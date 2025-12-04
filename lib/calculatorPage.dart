import 'package:flutter/material.dart';

class Mycalculator extends StatefulWidget {
  const Mycalculator({super.key});

  @override
  State<Mycalculator> createState() => _MycalculatorState();
}

class _MycalculatorState extends State<Mycalculator> {
final TextEditingController _myNum1 = TextEditingController();
final TextEditingController _myNum2 = TextEditingController();
final TextEditingController _total = TextEditingController();

double result = 0.0;

void _sum(){
  setState(() {
    double? input1 = double.tryParse(_myNum1.text);
    double? input2 = double.tryParse(_myNum2.text);
    

  if(input1 != null && input2 != null){
    result = input1 + input2;
  _total.text = result.toString();
    
  }

  else{
    print("Num 1 and Num2 is Empty");
  }

  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calculate, size: 120, color: Colors.blue),
              SizedBox(height: 50),
              TextField(
                controller: _myNum1,
                decoration: InputDecoration(
                  labelText: "Input the first number",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _myNum2,
                decoration: InputDecoration(
                  labelText: "Input the second number",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
          
              SizedBox(height: 20),
              TextField( controller: _total,
                decoration: InputDecoration(
                  labelText: "Total",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              
              SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _sum,
                  child: Text("Kwentahin"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
