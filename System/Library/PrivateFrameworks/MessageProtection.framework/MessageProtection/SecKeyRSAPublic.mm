@interface SecKeyRSAPublic
- (SecKeyRSAPublic)initWithData:(id)data error:(id *)error;
- (SecKeyRSAPublic)initWithSecKeyRef:(id)ref;
- (id)dataRepresentation;
- (id)encryptData:(id)data error:(id *)error;
@end

@implementation SecKeyRSAPublic

- (id)dataRepresentation
{
  secKeyRef = [(SecKeyRSAPublic *)self secKeyRef];
  v3 = SecKeyCopyExternalRepresentation(secKeyRef, 0);

  return v3;
}

- (SecKeyRSAPublic)initWithSecKeyRef:(id)ref
{
  refCopy = ref;
  v8.receiver = self;
  v8.super_class = SecKeyRSAPublic;
  v5 = [(SecKeyRSAPublic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SecKeyRSAPublic *)v5 setSecKeyRef:refCopy];
  }

  return v6;
}

- (SecKeyRSAPublic)initWithData:(id)data error:(id *)error
{
  v21[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = SecKeyRSAPublic;
  error = 0;
  v7 = [(SecKeyRSAPublic *)&v18 init];
  if (v7)
  {
    v8 = *MEMORY[0x277CDC060];
    v9 = *MEMORY[0x277CDBFE0];
    v20[0] = *MEMORY[0x277CDC028];
    v20[1] = v9;
    v10 = *MEMORY[0x277CDC000];
    v21[0] = v8;
    v21[1] = v10;
    v20[2] = *MEMORY[0x277CDC018];
    v21[2] = &unk_283F13B20;
    v11 = SecKeyCreateWithData(dataCopy, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3], &error);
    secKeyRef = v7->_secKeyRef;
    v7->_secKeyRef = v11;
  }

  secKeyRef = [(SecKeyRSAPublic *)v7 secKeyRef];

  if (secKeyRef)
  {
    v14 = v7;
  }

  else
  {
    v15 = MessageProtectionLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SecKeyRSAPublic initWithData:? error:?];
    }

    v14 = 0;
    if (error)
    {
      *error = error;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)encryptData:(id)data error:(id *)error
{
  error = 0;
  dataCopy = data;
  secKeyRef = [(SecKeyRSAPublic *)self secKeyRef];
  v8 = SecKeyCreateEncryptedData(secKeyRef, *MEMORY[0x277CDC358], dataCopy, &error);

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = MessageProtectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SecKeyRSAPublic encryptData:? error:?];
    }

    if (error)
    {
      *error = error;
    }
  }

  return v8;
}

- (void)initWithData:(CFTypeRef *)a1 error:.cold.1(CFTypeRef *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = CFCopyDescription(*a1);
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to initialize an RSA Key with error: %@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)encryptData:(CFTypeRef *)a1 error:.cold.1(CFTypeRef *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = CFCopyDescription(*a1);
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to encrypt with RSA: %@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end