@interface SecKeyRSAPublic
- (SecKeyRSAPublic)initWithData:(id)a3 error:(id *)a4;
- (SecKeyRSAPublic)initWithSecKeyRef:(id)a3;
- (id)dataRepresentation;
- (id)encryptData:(id)a3 error:(id *)a4;
@end

@implementation SecKeyRSAPublic

- (id)dataRepresentation
{
  v2 = [(SecKeyRSAPublic *)self secKeyRef];
  v3 = SecKeyCopyExternalRepresentation(v2, 0);

  return v3;
}

- (SecKeyRSAPublic)initWithSecKeyRef:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SecKeyRSAPublic;
  v5 = [(SecKeyRSAPublic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SecKeyRSAPublic *)v5 setSecKeyRef:v4];
  }

  return v6;
}

- (SecKeyRSAPublic)initWithData:(id)a3 error:(id *)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
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
    v11 = SecKeyCreateWithData(v6, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3], &error);
    secKeyRef = v7->_secKeyRef;
    v7->_secKeyRef = v11;
  }

  v13 = [(SecKeyRSAPublic *)v7 secKeyRef];

  if (v13)
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
    if (a4)
    {
      *a4 = error;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)encryptData:(id)a3 error:(id *)a4
{
  error = 0;
  v6 = a3;
  v7 = [(SecKeyRSAPublic *)self secKeyRef];
  v8 = SecKeyCreateEncryptedData(v7, *MEMORY[0x277CDC358], v6, &error);

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

    if (a4)
    {
      *a4 = error;
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