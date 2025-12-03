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
  v7 = [self length];
  tAG_LENGTH = [v5 dataWithLength:v7 + v6 + TAG_LENGTH];
  v9 = [self _randomDataGeneratorWithNumberOfBytes:IV_LENGTH];
  if (v9)
  {
    [v4 bytes];
    [v4 length];
    [v9 bytes];
    [v9 length];
    [self bytes];
    v10 = [self length];
    mutableBytes = [tAG_LENGTH mutableBytes];
    v12 = mutableBytes + IV_LENGTH;
    mutableBytes2 = [tAG_LENGTH mutableBytes];
    v14 = IV_LENGTH;
    v23 = mutableBytes2 + v14 + [self length];
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
      mutableBytes3 = [tAG_LENGTH mutableBytes];
      bytes = [v9 bytes];
      memcpy(mutableBytes3, bytes, IV_LENGTH);
      v18 = [tAG_LENGTH copy];
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
  v6 = [self length];
  v7 = [v4 dataWithLength:v6 - (IV_LENGTH + TAG_LENGTH)];
  v8 = [MEMORY[0x277CBEB28] dataWithLength:IV_LENGTH];
  mutableBytes = [v8 mutableBytes];
  bytes = [self bytes];
  memcpy(mutableBytes, bytes, IV_LENGTH);
  [v5 bytes];
  [v5 length];

  [v8 bytes];
  [v8 length];
  [self bytes];
  v11 = [v7 length];
  mutableBytes2 = [v7 mutableBytes];
  bytes2 = [self bytes];
  v14 = bytes2 + IV_LENGTH;
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