@interface LegacySigningKeyPublic
- (LegacySigningKeyPublic)initWithData:(id)a3 error:(id *)a4;
- (id)dataRepresentation;
@end

@implementation LegacySigningKeyPublic

- (id)dataRepresentation
{
  v2 = SecKeyCopyExternalRepresentation(self->_secKeyRef, 0);

  return v2;
}

- (LegacySigningKeyPublic)initWithData:(id)a3 error:(id *)a4
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CDC040];
  v7 = *MEMORY[0x277CDBFE0];
  v21[0] = *MEMORY[0x277CDC028];
  v21[1] = v7;
  v8 = *MEMORY[0x277CDC000];
  v22[0] = v6;
  v22[1] = v8;
  v9 = *MEMORY[0x277CDBFD0];
  v21[2] = *MEMORY[0x277CDC018];
  v21[3] = v9;
  v22[2] = &unk_283F13B68;
  v22[3] = MEMORY[0x277CBEC28];
  v10 = MEMORY[0x277CBEAC0];
  v11 = a3;
  v12 = [v10 dictionaryWithObjects:v22 forKeys:v21 count:4];
  v20 = 0;
  v13 = SecKeyCreateWithData(v11, v12, &v20);

  if (v13)
  {
    v14 = [(LegacySigningKeyPublic *)self init];
    secKeyRef = v14->_secKeyRef;
    v14->_secKeyRef = v13;

    self = v14;
    v16 = self;
  }

  else
  {
    v17 = MessageProtectionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LegacySigningKeyPublic initWithData:v17 error:?];
    }

    v16 = 0;
    if (a4)
    {
      *a4 = v20;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)initWithData:(CFTypeRef *)a1 error:(NSObject *)a2 .cold.1(CFTypeRef *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = CFCopyDescription(*a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to initialize a legacy ECDSA key with error: %@.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end