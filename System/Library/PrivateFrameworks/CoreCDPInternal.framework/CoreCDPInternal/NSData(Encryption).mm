@interface NSData(Encryption)
- (id)AESGCM256DecryptedDataWithSymmetricKey:()Encryption;
- (id)AESGCM256EncryptedDataWithSymmetricKey:()Encryption;
- (id)_randomDataGeneratorWithNumberOfBytes:()Encryption;
@end

@implementation NSData(Encryption)

- (id)AESGCM256EncryptedDataWithSymmetricKey:()Encryption
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB28];
  v6 = IV_LENGTH;
  v7 = [a1 length];
  v8 = [v5 dataWithLength:v7 + v6 + TAG_LENGTH];
  v9 = [a1 _randomDataGeneratorWithNumberOfBytes:IV_LENGTH];
  if (v9)
  {
    [v4 bytes];
    [v4 length];
    [v9 bytes];
    [v9 length];
    [a1 bytes];
    v10 = [a1 length];
    v11 = [v8 mutableBytes];
    v12 = v11 + IV_LENGTH;
    v13 = [v8 mutableBytes];
    v14 = IV_LENGTH;
    v23 = v13 + v14 + [a1 length];
    v24 = TAG_LENGTH;
    v15 = CCCryptorGCMOneshotEncrypt();
    if (v15)
    {
      v16 = v15;
      v17 = _CDPLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(NSData(Encryption) *)v16 AESGCM256EncryptedDataWithSymmetricKey:v17];
      }

      v18 = 0;
    }

    else
    {
      v20 = [v8 mutableBytes];
      v21 = [v9 bytes];
      memcpy(v20, v21, IV_LENGTH);
      v18 = [v8 copy];
    }
  }

  else
  {
    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NSData(Encryption) AESGCM256EncryptedDataWithSymmetricKey:v19];
    }

    v18 = 0;
  }

  return v18;
}

- (id)AESGCM256DecryptedDataWithSymmetricKey:()Encryption
{
  v4 = MEMORY[0x277CBEB28];
  v5 = a3;
  v6 = [a1 length];
  v7 = [v4 dataWithLength:v6 - (IV_LENGTH + TAG_LENGTH)];
  v8 = [MEMORY[0x277CBEB28] dataWithLength:IV_LENGTH];
  v9 = [v8 mutableBytes];
  v10 = [a1 bytes];
  memcpy(v9, v10, IV_LENGTH);
  [v5 bytes];
  [v5 length];

  [v8 bytes];
  [v8 length];
  [a1 bytes];
  v11 = [v7 length];
  v12 = [v7 mutableBytes];
  v13 = [a1 bytes];
  v14 = v13 + IV_LENGTH;
  v20 = v14 + [v7 length];
  v21 = TAG_LENGTH;
  v15 = CCCryptorGCMOneshotDecrypt();
  if (v15)
  {
    v16 = v15;
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(NSData(Encryption) *)v16 AESGCM256DecryptedDataWithSymmetricKey:v17];
    }

    v18 = 0;
  }

  else
  {
    v18 = [v7 copy];
  }

  return v18;
}

- (id)_randomDataGeneratorWithNumberOfBytes:()Encryption
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = v8 - ((count + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], count, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:count];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)AESGCM256EncryptedDataWithSymmetricKey:()Encryption .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to encrypt data with status: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)AESGCM256DecryptedDataWithSymmetricKey:()Encryption .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to decrypt data with status: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end