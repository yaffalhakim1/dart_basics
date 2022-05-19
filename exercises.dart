void fibonacci(int maxLength) {
  var result = <int>[];
  result.add(0); //menambahkan angka 0
  result.add(1); //menambahkan angka 1
  for (int i = 2; i < maxLength; i++) {
    result.add(result[i - 2] + result[i - 1]);
    //menambahkan hasil kedalam variabel result
  }
  //perulangan, dimulai dari 2, i kurang dari maksimal panjang bilangan, i bertambah
  // result dalam bentuk list, dengan rumus Un = [Un-1] - [Un-2]
  print(result);
}

int factorialTwo(int somevalue) {
  int factorial = 1;
  for (int i = 1; i <= somevalue; i++) {
    factorial = factorial * i;
//     Kita perlu mengambil hasil faktorial awal dan mengalikannya
//     dengan penghitung setiap kali di dalam loop.
//1x2x3x4x5
  }
  return factorial;
}
// DALAM PERULANGAN
// Kita harus mulai dengan angka 1, sehingga penghitung awal dapat diatur ke 1.
// Kita perlu terus mengulang sampai counter kita kurang dari sama dengan input somevalue.
// Kita perlu mengambil hasil faktorial awal dan mengalikannya dengan penghitung setiap kali di dalam loop.
// Setelah setiap langkah melalui loop, kita perlu meningkatkan penghitung sebesar 1.

void prime(int maxValue) {
  var result = <int>[];
  for (int i = 2; i <= maxValue; i++) {
    bool isPrime = true; //set default nilai isPrime, defaultnya adalah true.
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      } //jika counter i dibgai counter j sama dengan 0 dan tidak bersisa maka bukan bilangan prima
    }
    if (isPrime) {
      result.add(i);
    }
  }
  print(result);
}

//value = 5

void segitiga(int value) {
  String segitiga = '';
  for (int i = 0; i < value; i++) //pengulangan untuk berapa baris
  {
    for (int j = 0;
        j <= i;
        j++) //pengulangan untuk berapa bintang yg ingin dicetak dalam baris tertentu
    {
      segitiga +='*';
    }
    segitiga +='\n';
  }
  print(segitiga);
}

// i =0, lalu i kurang dari value(5), maka betul, lalu masuk ke perulangan j. j =0, j kurang dari sama dengan 0, betul. lalu print *. j samadengan 1, j kurang dari samadengan 0, maka salah. lalu keluar dari looping j dan print \n.
// i=1 karena i = i+1, lalu i kurang dari value(5), maka beteul, lalu masuk ke perulangan j. j =0, j kurang dari samadengan 1, maka betul. lalu print *. j sama dengan 1, j kurangdari samadengan 1, maka betul. lalu print *. j sama dengan 2, j kurang dari sama dengan 2, maka salah. lalu keluar dari looping j dan print \n.

//value terbalik = 5

void segitigaTerbalik(valueTerbalik) {
  String segitigaa = '';
  for (int i = valueTerbalik; i > 0; i--) {
    for (int j = 1; j <= i; j++) {
      segitigaa = segitigaa + '*';
    }
    segitigaa = segitigaa + '\n';
  }
  print(segitigaa);
}

// i = valueterbalik(5), lalu i lebih dari 0, maka betul, lalu masuk ke perulangan j. j =1, j kurang dari sama dengan valueterbalik(5), betul. lalu print *. j samadengan 1, j kurang dari samadengan valueterbalik(5), maka betul. lalu print *, dan seterusnya sampai j = 6, j kurang dari sama dengan 5, maka salah, lalu keluar dari looping j dan print \n

// i = valueterbalik(4) karena i = i-1, lalu i lebih dari 0, maka betul, lalu masuk ke perulangan j. j =1, j kurang dari sama dengan valueterbalik(5), betul. lalu print *. j samadengan 1, j kurang dari samadengan valueterbalik(5), maka betul. lalu print *, dan seterusnya sampai j = 6, j kurang dari sama dengan 5, maka salah, lalu keluar dari looping j dan print \n

void fizzBuzz(int maxValue) {
  List<String> result = [];
  for (int i = 1; i <= maxValue; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      result.add('FizzBuzz');
    } else if (i % 3 == 0) {
      result.add('Fizz');
    } else if (i % 5 == 0) {
      result.add('Buzz');
    } else {
      result.add('$i');
    }
  }
  print(result);
}

void isPalyndrome(String text) {
  String temp = '';
  for (int i = text.length - 1; i >= 0; i--) {
    temp = temp + text[i];
  }
  if (temp.toLowerCase() == text.toLowerCase()) {
    print('$text is Palyndrome');
  } else {
    print('$text is not Palyndrome');
  }
}

void main() {
  prime(20);
  fibonacci(5);
  segitiga(5);
  segitigaTerbalik(5);
  print(factorialTwo(5));
  fizzBuzz(20);
  isPalyndrome('katak');
}
