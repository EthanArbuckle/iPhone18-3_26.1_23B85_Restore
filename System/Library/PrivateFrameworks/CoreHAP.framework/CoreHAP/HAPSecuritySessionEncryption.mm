@interface HAPSecuritySessionEncryption
- (HAPSecuritySessionEncryption)init;
- (HAPSecuritySessionEncryption)initWithInputKey:(id)key outputKey:(id)outputKey;
- (id)decrypt:(const void *)decrypt length:(unint64_t)length additionalAuthData:(const void *)data additionalAuthDataLength:(unint64_t)dataLength authTagData:(const void *)tagData authTagDataLength:(unint64_t)tagDataLength error:(id *)error;
- (id)decrypt:(id)decrypt additionalAuthenticatedData:(id)data error:(id *)error;
- (id)encrypt:(id)encrypt additionalAuthenticatedData:(id)data;
@end

@implementation HAPSecuritySessionEncryption

- (id)decrypt:(const void *)decrypt length:(unint64_t)length additionalAuthData:(const void *)data additionalAuthDataLength:(unint64_t)dataLength authTagData:(const void *)tagData authTagDataLength:(unint64_t)tagDataLength error:(id *)error
{
  if (error)
  {
    *error = 0;
    if (tagDataLength != 16)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 userInfo:{0, data, dataLength, tagData}];
      *error = v10 = 0;
      goto LABEL_20;
    }
  }

  else if (tagDataLength != 16)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:length];
  inputKey = [(HAPSecuritySessionEncryption *)self inputKey];
  [inputKey bytes];
  inputNonce = [(HAPSecuritySessionEncryption *)self inputNonce];
  [inputNonce bytes];
  v24 = v11;
  [v11 mutableBytes];
  v14 = chacha20_poly1305_decrypt_all_64x64();

  inputNonce2 = [(HAPSecuritySessionEncryption *)self inputNonce];
  mutableBytes = [inputNonce2 mutableBytes];
  inputNonce3 = [(HAPSecuritySessionEncryption *)self inputNonce];
  v18 = [inputNonce3 length];
  if (v18)
  {
    v19 = v18 - 1;
    do
    {
      if (++*mutableBytes++)
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
    if (error)
    {
      HMErrorFromOSStatus(v14);
      *error = v10 = 0;
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

- (id)decrypt:(id)decrypt additionalAuthenticatedData:(id)data error:(id *)error
{
  decryptCopy = decrypt;
  dataCopy = data;
  if (error)
  {
    *error = 0;
  }

  v10 = [decryptCopy subdataWithRange:{objc_msgSend(decryptCopy, "length") - 16, 16}];
  v30 = decryptCopy;
  v11 = [decryptCopy subdataWithRange:{0, objc_msgSend(decryptCopy, "length") - 16}];
  v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v11, "length")}];
  inputKey = [(HAPSecuritySessionEncryption *)self inputKey];
  [inputKey bytes];
  inputNonce = [(HAPSecuritySessionEncryption *)self inputNonce];
  [inputNonce bytes];
  [dataCopy bytes];
  [dataCopy length];
  [v11 bytes];
  v29 = v11;
  [v11 length];
  v28 = v12;
  [v12 mutableBytes];
  [v10 bytes];
  v15 = chacha20_poly1305_decrypt_all_64x64();

  inputNonce2 = [(HAPSecuritySessionEncryption *)self inputNonce];
  mutableBytes = [inputNonce2 mutableBytes];
  inputNonce3 = [(HAPSecuritySessionEncryption *)self inputNonce];
  v19 = [inputNonce3 length];
  if (v19)
  {
    v20 = v19 - 1;
    do
    {
      if (++*mutableBytes++)
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
    if (error)
    {
      v23 = v23;
      *error = v23;
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

- (id)encrypt:(id)encrypt additionalAuthenticatedData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  encryptCopy = encrypt;
  dataCopy = data;
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(encryptCopy, "length")}];
  outputKey = [(HAPSecuritySessionEncryption *)self outputKey];
  [outputKey bytes];
  outputNonce = [(HAPSecuritySessionEncryption *)self outputNonce];
  [outputNonce bytes];
  [dataCopy bytes];
  [dataCopy length];
  [encryptCopy bytes];
  [encryptCopy length];
  [v8 mutableBytes];
  chacha20_poly1305_encrypt_all_64x64();

  [v8 appendBytes:v20 length:16];
  outputNonce2 = [(HAPSecuritySessionEncryption *)self outputNonce];
  mutableBytes = [outputNonce2 mutableBytes];
  outputNonce3 = [(HAPSecuritySessionEncryption *)self outputNonce];
  v14 = [outputNonce3 length];
  if (v14)
  {
    v15 = v14 - 1;
    do
    {
      if (++*mutableBytes++)
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

- (HAPSecuritySessionEncryption)initWithInputKey:(id)key outputKey:(id)outputKey
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  outputKeyCopy = outputKey;
  v17.receiver = self;
  v17.super_class = HAPSecuritySessionEncryption;
  v9 = [(HAPSecuritySessionEncryption *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputKey, key);
    objc_storeStrong(&v10->_outputKey, outputKey);
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