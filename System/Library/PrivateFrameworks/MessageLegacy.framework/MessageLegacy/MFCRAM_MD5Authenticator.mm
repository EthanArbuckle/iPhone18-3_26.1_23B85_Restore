@interface MFCRAM_MD5Authenticator
- (id)responseForServerData:(id)data;
@end

@implementation MFCRAM_MD5Authenticator

- (id)responseForServerData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  if (data)
  {
    v5 = [objc_msgSend(-[MFSASLAuthenticator account](self "account")];
    v6 = [objc_msgSend(-[MFSASLAuthenticator account](self "account")];
    result = 0;
    if (v5 && v6)
    {
      memset(c, 0, 220);
      bytes = 32;
      Mutable = CFDataCreateMutable(0, [v5 length] + 33);
      CFDataAppendBytes(Mutable, [v5 bytes], objc_msgSend(v5, "length"));
      CFDataAppendBytes(Mutable, &bytes, 1);
      MF_MD5HMAC_Init();
      CC_MD5_Update(c, [data bytes], objc_msgSend(data, "length"));
      MF_MD5HMAC_Output();
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        snprintf(__str, 3uLL, "%02x", *(&c[116] + v9));
        [(__CFData *)Mutable appendBytes:__str length:2];
        v9 = v10;
      }

      while (v10 != 16);
      result = Mutable;
    }
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end