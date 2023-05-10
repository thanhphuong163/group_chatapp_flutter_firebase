import 'package:encrypt/encrypt.dart';

class EncryptData{
//for AES Algorithms

  // static Encrypted? encrypted;
  // static var decrypted;


  static String encryptAES(plainText){
    final key = Key.fromUtf8('my 32 length key................');
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    Encrypted encrypted = encrypter.encrypt(plainText, iv: iv);
    return encrypted!.base64;
  }

  static String decryptAES(encrypted_str){
    final key = Key.fromUtf8('my 32 length key................');
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    Encrypted encrypted = Encrypted.fromBase64(encrypted_str);
    String decrypted = encrypter.decrypt(encrypted!, iv: iv);
    return decrypted;
  }
}