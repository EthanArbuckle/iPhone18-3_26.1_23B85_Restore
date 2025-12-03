@interface MFCRAM_MD5Authenticator
- (id)responseForServerData:(id)data;
@end

@implementation MFCRAM_MD5Authenticator

- (id)responseForServerData:(id)data
{
  v24[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    account = [(ECSASLAuthenticator *)self account];
    username = [account username];
    v7 = [username dataUsingEncoding:4];

    account2 = [(ECSASLAuthenticator *)self account];
    password = [account2 password];
    v10 = [password dataUsingEncoding:4];

    v11 = 0;
    if (v7 && v10)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *(v23 + 12) = v12;
      c[11] = v12;
      v23[0] = v12;
      c[9] = v12;
      c[10] = v12;
      c[8] = v12;
      c[6] = v12;
      c[7] = v12;
      c[4] = v12;
      c[5] = v12;
      c[2] = v12;
      c[3] = v12;
      c[0] = v12;
      c[1] = v12;
      bytes = 32;
      Mutable = CFDataCreateMutable(0, [v7 length] + 33);
      CFDataAppendBytes(Mutable, [v7 bytes], objc_msgSend(v7, "length"));
      CFDataAppendBytes(Mutable, &bytes, 1);
      MF_MD5HMAC_Init();
      v14 = dataCopy;
      v15 = v14;
      CC_MD5_Update(c, [v14 bytes], objc_msgSend(v14, "length"));

      v16 = Mutable;
      v24[0] = 0xAAAAAAAAAAAAAAAALL;
      v24[1] = 0xAAAAAAAAAAAAAAAALL;
      MF_MD5HMAC_Output();
      v11 = v16;
      for (i = 0; i != 16; ++i)
      {
        memset(v21, 170, sizeof(v21));
        __snprintf_chk(v21, 3uLL, 0, 3uLL, "%02x", *(v24 + i));
        [(__CFData *)v11 appendBytes:v21 length:2];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

@end