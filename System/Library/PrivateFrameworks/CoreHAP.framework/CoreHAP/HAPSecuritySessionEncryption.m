@interface HAPSecuritySessionEncryption
- (HAPSecuritySessionEncryption)init;
- (HAPSecuritySessionEncryption)initWithInputKey:(id)a3 outputKey:(id)a4;
- (id)decrypt:(const void *)a3 length:(unint64_t)a4 additionalAuthData:(const void *)a5 additionalAuthDataLength:(unint64_t)a6 authTagData:(const void *)a7 authTagDataLength:(unint64_t)a8 error:(id *)a9;
- (id)decrypt:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5;
- (id)encrypt:(id)a3 additionalAuthenticatedData:(id)a4;
@end

@implementation HAPSecuritySessionEncryption

- (id)decrypt:(const void *)a3 length:(unint64_t)a4 additionalAuthData:(const void *)a5 additionalAuthDataLength:(unint64_t)a6 authTagData:(const void *)a7 authTagDataLength:(unint64_t)a8 error:(id *)a9
{
  if (a9)
  {
    *a9 = 0;
    if (a8 != 16)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 userInfo:{0, a5, a6, a7}];
      *a9 = v10 = 0;
      goto LABEL_20;
    }
  }

  else if (a8 != 16)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a4];
  v12 = [(HAPSecuritySessionEncryption *)self inputKey];
  [v12 bytes];
  v13 = [(HAPSecuritySessionEncryption *)self inputNonce];
  [v13 bytes];
  v24 = v11;
  [v11 mutableBytes];
  v14 = chacha20_poly1305_decrypt_all_64x64();

  v15 = [(HAPSecuritySessionEncryption *)self inputNonce];
  v16 = [v15 mutableBytes];
  v17 = [(HAPSecuritySessionEncryption *)self inputNonce];
  v18 = [v17 length];
  if (v18)
  {
    v19 = v18 - 1;
    do
    {
      if (++*v16++)
      {
        v21 = 1;
      }

      else
      {
        v21 = v19 == 0;
      }

      --v19;
    }

    while (!v21);
  }

  if (v14)
  {
    if (a9)
    {
      HMErrorFromOSStatus(v14);
      *a9 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }

    v22 = v24;
  }

  else
  {
    v22 = v24;
    v10 = v24;
  }

LABEL_20:

  return v10;
}

- (id)decrypt:(id)a3 additionalAuthenticatedData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = [v8 subdataWithRange:{objc_msgSend(v8, "length") - 16, 16}];
  v30 = v8;
  v11 = [v8 subdataWithRange:{0, objc_msgSend(v8, "length") - 16}];
  v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v11, "length")}];
  v13 = [(HAPSecuritySessionEncryption *)self inputKey];
  [v13 bytes];
  v14 = [(HAPSecuritySessionEncryption *)self inputNonce];
  [v14 bytes];
  [v9 bytes];
  [v9 length];
  [v11 bytes];
  v29 = v11;
  [v11 length];
  v28 = v12;
  [v12 mutableBytes];
  [v10 bytes];
  v15 = chacha20_poly1305_decrypt_all_64x64();

  v16 = [(HAPSecuritySessionEncryption *)self inputNonce];
  v17 = [v16 mutableBytes];
  v18 = [(HAPSecuritySessionEncryption *)self inputNonce];
  v19 = [v18 length];
  if (v19)
  {
    v20 = v19 - 1;
    do
    {
      if (++*v17++)
      {
        v22 = 1;
      }

      else
      {
        v22 = v20 == 0;
      }

      --v20;
    }

    while (!v22);
  }

  if (v15)
  {
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:v15 userInfo:0];
    v24 = v30;
    v25 = v28;
    if (a5)
    {
      v23 = v23;
      *a5 = v23;
    }

    v26 = 0;
  }

  else
  {
    v25 = v28;
    v26 = v28;
    v24 = v30;
  }

  return v26;
}

- (id)encrypt:(id)a3 additionalAuthenticatedData:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v6, "length")}];
  v9 = [(HAPSecuritySessionEncryption *)self outputKey];
  [v9 bytes];
  v10 = [(HAPSecuritySessionEncryption *)self outputNonce];
  [v10 bytes];
  [v7 bytes];
  [v7 length];
  [v6 bytes];
  [v6 length];
  [v8 mutableBytes];
  chacha20_poly1305_encrypt_all_64x64();

  [v8 appendBytes:v20 length:16];
  v11 = [(HAPSecuritySessionEncryption *)self outputNonce];
  v12 = [v11 mutableBytes];
  v13 = [(HAPSecuritySessionEncryption *)self outputNonce];
  v14 = [v13 length];
  if (v14)
  {
    v15 = v14 - 1;
    do
    {
      if (++*v12++)
      {
        v17 = 1;
      }

      else
      {
        v17 = v15 == 0;
      }

      --v15;
    }

    while (!v17);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HAPSecuritySessionEncryption)initWithInputKey:(id)a3 outputKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HAPSecuritySessionEncryption;
  v9 = [(HAPSecuritySessionEncryption *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputKey, a3);
    objc_storeStrong(&v10->_outputKey, a4);
    memset_s(__s, 8uLL, 0, 8uLL);
    v11 = [MEMORY[0x277CBEB28] dataWithBytes:__s length:8];
    inputNonce = v10->_inputNonce;
    v10->_inputNonce = v11;

    v13 = [MEMORY[0x277CBEB28] dataWithBytes:__s length:8];
    outputNonce = v10->_outputNonce;
    v10->_outputNonce = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HAPSecuritySessionEncryption)init
{
  v3.receiver = self;
  v3.super_class = HAPSecuritySessionEncryption;
  return [(HAPSecuritySessionEncryption *)&v3 init];
}

@end