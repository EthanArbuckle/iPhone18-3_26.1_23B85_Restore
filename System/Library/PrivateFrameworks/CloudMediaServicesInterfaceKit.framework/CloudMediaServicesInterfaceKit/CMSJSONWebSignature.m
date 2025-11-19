@interface CMSJSONWebSignature
- (BOOL)_validateJWSProtectedHeader:(id)a3;
- (CMSJSONWebSignature)initWithJWSCompactEncodedString:(id)a3 keyID:(id)a4 publicKey:(id)a5;
- (__SecKey)_createPublicKeyFromPEM:(id)a3;
- (id)_createASN1SignatureFromJWSSignature:(id)a3;
- (void)_validateJWSSignature:(id)a3 ofHeader:(id)a4 andPayload:(id)a5 withPublicKey:(__SecKey *)a6;
@end

@implementation CMSJSONWebSignature

- (CMSJSONWebSignature)initWithJWSCompactEncodedString:(id)a3 keyID:(id)a4 publicKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33.receiver = self;
  v33.super_class = CMSJSONWebSignature;
  v11 = [(CMSJSONWebSignature *)&v33 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keyID, a4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v8 componentsSeparatedByString:@"."];
      if ([v13 count] != 3)
      {
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:1 userInfo:0];
        verificationError = v12->_verificationError;
        v12->_verificationError = v27;
LABEL_15:

        goto LABEL_16;
      }

      v14 = [v13 objectAtIndexedSubscript:0];
      v15 = [(CMSJSONWebSignature *)v12 _validateJWSProtectedHeader:v14];

      if (v15)
      {
        verificationError = [v13 objectAtIndexedSubscript:1];
        v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64URLEncodedString:verificationError];
        payload = v12->_payload;
        v12->_payload = v17;

        v19 = objc_alloc(MEMORY[0x277CBEA90]);
        v20 = [v13 objectAtIndexedSubscript:2];
        v21 = [v19 initWithBase64URLEncodedString:v20];

        if (v12->_payload && v21)
        {
          v22 = [(CMSJSONWebSignature *)v12 _createPublicKeyFromPEM:v10];
          if (v22)
          {
            v23 = v22;
            v24 = [v13 objectAtIndexedSubscript:0];
            v25 = [v13 objectAtIndexedSubscript:1];
            [(CMSJSONWebSignature *)v12 _validateJWSSignature:v21 ofHeader:v24 andPayload:v25 withPublicKey:v23];

            CFRelease(v23);
LABEL_14:

            goto LABEL_15;
          }

          v28 = MEMORY[0x277CCA9B8];
          v29 = 10;
        }

        else
        {
          v28 = MEMORY[0x277CCA9B8];
          v29 = 3;
        }

        v30 = [v28 errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:v29 userInfo:0];
        v31 = v12->_verificationError;
        v12->_verificationError = v30;

        goto LABEL_14;
      }
    }

    else
    {
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:0 userInfo:0];
      v13 = v12->_verificationError;
      v12->_verificationError = v26;
    }

LABEL_16:
  }

  return v12;
}

- (BOOL)_validateJWSProtectedHeader:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = a3;
  v6 = [[v4 alloc] initWithBase64URLEncodedString:v5];

  if (v6)
  {
    v33 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v33];
    v8 = v33;
    v9 = v8;
    if (v8)
    {
      v10 = v8;
LABEL_19:
      v13 = 0;
      verificationError = self->_verificationError;
      self->_verificationError = v10;
LABEL_20:

      goto LABEL_21;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:5 userInfo:0];
      goto LABEL_19;
    }

    verificationError = v7;
    if ([(NSError *)verificationError count]>= 2)
    {
      v15 = [(NSError *)verificationError objectForKeyedSubscript:@"alg"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [(NSError *)verificationError objectForKeyedSubscript:@"kid"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v18 = [(NSError *)verificationError objectForKeyedSubscript:@"alg"];
          if ([v18 isEqualToString:@"ES256"])
          {
            v19 = [(NSError *)verificationError objectForKeyedSubscript:@"kid"];
            v20 = [(CMSJSONWebSignature *)self keyID];
            v13 = [v20 isEqualToString:v19];

            if (v13)
            {
              v21 = [(NSError *)verificationError objectForKeyedSubscript:@"typ"];
              v22 = v21;
              if (v21 && [(NSError *)v21 caseInsensitiveCompare:@"JOSE"])
              {
                v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:9 userInfo:0];
                v24 = self->_verificationError;
                self->_verificationError = v23;
              }

              v25 = [(NSError *)verificationError objectForKeyedSubscript:@"cty"];
              v26 = v25;
              if (v25 && [v25 caseInsensitiveCompare:@"JSON"])
              {
                v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:9 userInfo:0];
                v28 = self->_verificationError;
                self->_verificationError = v27;
              }
            }

            else
            {
              v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:8 userInfo:0];
              v22 = self->_verificationError;
              self->_verificationError = v32;
            }
          }

          else
          {
            v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:7 userInfo:0];
            v13 = 0;
            v19 = self->_verificationError;
            self->_verificationError = v31;
          }

          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:6 userInfo:0];
    v13 = 0;
    v18 = self->_verificationError;
    self->_verificationError = v30;
LABEL_24:

    goto LABEL_20;
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:4 userInfo:0];
  v12 = self->_verificationError;
  self->_verificationError = v11;

  v13 = 0;
LABEL_21:

  return v13;
}

- (void)_validateJWSSignature:(id)a3 ofHeader:(id)a4 andPayload:(id)a5 withPublicKey:(__SecKey *)a6
{
  v10 = MEMORY[0x277CCACA8];
  v11 = a3;
  v12 = [v10 stringWithFormat:@"%@.%@", a4, a5];
  v13 = [v12 dataUsingEncoding:4];

  v14 = [(CMSJSONWebSignature *)self _createASN1SignatureFromJWSSignature:v11];

  if (!v14)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = 11;
    goto LABEL_8;
  }

  error = 0;
  if (SecKeyVerifySignature(a6, *MEMORY[0x277CDC300], v13, v14, &error))
  {
    v15 = error == 0;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = 12;
LABEL_8:
    v18 = [v16 errorWithDomain:@"com.apple.cloudextension.errors.jsonwebsignature" code:v17 userInfo:0];
    verificationError = self->_verificationError;
    self->_verificationError = v18;
  }
}

- (__SecKey)_createPublicKeyFromPEM:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 componentsSeparatedByString:@"-----BEGIN PUBLIC KEY-----"];
    if ([v6 count] < 2)
    {
      v7 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v8 = [v6 objectAtIndexedSubscript:1];

    v9 = [v8 componentsSeparatedByString:@"-----END PUBLIC KEY-----"];
    if ([v9 count] < 2)
    {
      v7 = 0;
LABEL_20:

      v5 = v8;
      goto LABEL_21;
    }

    v10 = [v9 objectAtIndexedSubscript:0];

    v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [v10 componentsSeparatedByCharactersInSet:v11];
    v8 = [v12 componentsJoinedByString:&stru_2856A7BB0];

    v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
    if (v13)
    {
      v28 = 0u;
      v29 = 0u;
      dest = 0u;
      v42 = 0u;
      v43 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      LODWORD(v42) = 16;
      LODWORD(v43) = 32;
      DWORD2(v43) = 6;
      *&v45 = 0x1000000500;
      *&templates.kind = 16;
      templates.sub = 0;
      templates.size = 48;
      v33 = 2048;
      v34 = &v42;
      v35 = 0;
      v36 = 0x2000000003;
      v37 = 0;
      v38 = 0;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      coder = 0;
      if (!SecAsn1CoderCreate(&coder))
      {
        if (!SecAsn1Decode(coder, [v13 bytes], objc_msgSend(v13, "length"), &templates, &dest) && (dest == 7 && !memcmp(*(&dest + 1), &_oidEcPubKey, 7uLL) ? (v14 = 0) : (v14 = 1), (v15 = v28 - 2, v28 == 10) && **(&v28 + 1) == 6 && v15 == *(*(&v28 + 1) + 1) && ((memcmp((*(&v28 + 1) + 2), &_oidEcPrime256v1, v15) == 0) & ~v14) != 0))
        {
          if ((v29 & 7) != 0)
          {
            v18 = (v29 >> 3) + 1;
          }

          else
          {
            v18 = v29 >> 3;
          }

          v19 = [MEMORY[0x277CBEA90] dataWithBytes:*(&v29 + 1) length:v18];
          SecAsn1CoderRelease(coder);
          if (v19)
          {
            v20 = *MEMORY[0x277CDC040];
            v21 = *MEMORY[0x277CDBFE0];
            v30[0] = *MEMORY[0x277CDC028];
            v30[1] = v21;
            v22 = *MEMORY[0x277CDC000];
            v31[0] = v20;
            v31[1] = v22;
            v30[2] = *MEMORY[0x277CDC018];
            v31[2] = &unk_2856B0B20;
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
            v25 = 0;
            v24 = SecKeyCreateWithData(v19, v23, &v25);
            v7 = v24;
            if (v25 && v24)
            {
              CFRelease(v24);
              v7 = 0;
            }

            goto LABEL_19;
          }
        }

        else
        {
          SecAsn1CoderRelease(coder);
        }
      }
    }

    v7 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v7 = 0;
LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_createASN1SignatureFromJWSSignature:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] == 64)
  {
    v4 = [v3 subdataWithRange:{0, 32}];
    v5 = [v3 subdataWithRange:{32, 32}];
    v6 = v5;
    v7 = 0;
    if (v4)
    {
      if (v5)
      {
        src[0] = [v4 length];
        src[1] = [v4 bytes];
        src[2] = [v6 length];
        src[3] = [v6 bytes];
        memset(templates, 0, sizeof(templates));
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        *templates = 16;
        *&templates[16] = 32;
        *&templates[24] = 2;
        v15 = 0x1000000002uLL;
        dest.Data = 0;
        coder = 0;
        dest.Length = 0;
        v7 = 0;
        if (!SecAsn1CoderCreate(&coder))
        {
          if (SecAsn1EncodeItem(coder, src, templates, &dest))
          {
            SecAsn1CoderRelease(coder);
          }

          v7 = [MEMORY[0x277CBEA90] dataWithBytes:dest.Data length:dest.Length];
          SecAsn1CoderRelease(coder);
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end