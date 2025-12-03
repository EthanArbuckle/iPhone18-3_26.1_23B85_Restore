@interface SecKeyRSAPrivate
- (SecKeyRSAPrivate)init;
- (SecKeyRSAPrivate)initWithData:(id)data error:(id *)error;
- (id)dataRepresentation;
- (id)decryptData:(id)data error:(id *)error;
- (id)publicKey;
- (void)init;
@end

@implementation SecKeyRSAPrivate

- (id)publicKey
{
  v3 = [SecKeyRSAPublic alloc];
  secKeyRef = [(SecKeyRSAPrivate *)self secKeyRef];
  v5 = SecKeyCopyPublicKey(secKeyRef);
  v6 = [(SecKeyRSAPublic *)v3 initWithSecKeyRef:v5];

  return v6;
}

- (SecKeyRSAPrivate)init
{
  v21[4] = *MEMORY[0x277D85DE8];
  error = 0;
  v3 = *MEMORY[0x277CDC060];
  v4 = *MEMORY[0x277CDC018];
  v20[0] = *MEMORY[0x277CDC028];
  v20[1] = v4;
  v21[0] = v3;
  v21[1] = &unk_283F13BC8;
  v5 = *MEMORY[0x277CDBFD0];
  v21[2] = MEMORY[0x277CBEC28];
  v6 = *MEMORY[0x277CDC4F0];
  v20[2] = v5;
  v20[3] = v6;
  v18 = v5;
  v19 = MEMORY[0x277CBEC28];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v9 = SecKeyCreateRandomKey(v8, &error);
  if (v9)
  {
    v16.receiver = self;
    v16.super_class = SecKeyRSAPrivate;
    v10 = [(SecKeyRSAPrivate *)&v16 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_secKeyRef, v9);
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v13 = MessageProtectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SecKeyRSAPrivate *)&error init];
    }

    selfCopy = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SecKeyRSAPrivate)initWithData:(id)data error:(id *)error
{
  v18[3] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SecKeyRSAPrivate;
  error = 0;
  dataCopy = data;
  v5 = [(SecKeyRSAPrivate *)&v15 init];
  v6 = *MEMORY[0x277CDC060];
  v7 = *MEMORY[0x277CDBFE0];
  v17[0] = *MEMORY[0x277CDC028];
  v17[1] = v7;
  v8 = *MEMORY[0x277CDBFF0];
  v18[0] = v6;
  v18[1] = v8;
  v17[2] = *MEMORY[0x277CDC018];
  v18[2] = &unk_283F13BC8;
  v9 = SecKeyCreateWithData(dataCopy, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:{3, v15.receiver, v15.super_class, error}], &error);

  [(SecKeyRSAPrivate *)v5 setSecKeyRef:v9];
  secKeyRef = [(SecKeyRSAPrivate *)v5 secKeyRef];

  if (secKeyRef)
  {
    v11 = v5;
  }

  else
  {
    v12 = MessageProtectionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SecKeyRSAPublic initWithData:? error:?];
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)decryptData:(id)data error:(id *)error
{
  error = 0;
  dataCopy = data;
  secKeyRef = [(SecKeyRSAPrivate *)self secKeyRef];
  v8 = SecKeyCreateDecryptedData(secKeyRef, *MEMORY[0x277CDC358], dataCopy, &error);

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = MessageProtectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SecKeyRSAPrivate decryptData:? error:?];
    }

    if (error)
    {
      *error = error;
    }
  }

  return v8;
}

- (id)dataRepresentation
{
  secKeyRef = [(SecKeyRSAPrivate *)self secKeyRef];
  v3 = SecKeyCopyExternalRepresentation(secKeyRef, 0);

  return v3;
}

- (void)init
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = CFCopyDescription(*self);
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to generate an RSA Key with error: %@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)decryptData:(CFTypeRef *)a1 error:.cold.1(CFTypeRef *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = CFCopyDescription(*a1);
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to decrypt with RSA: %@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end