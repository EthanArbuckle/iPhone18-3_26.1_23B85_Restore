@interface ICCloudSyncingObjectCryptoStrategyV1Neo
- (BOOL)authenticateWithPassphrase:(id)passphrase;
- (BOOL)hasPassphraseSet;
- (BOOL)hasSameKeyAsObject:(id)object;
- (BOOL)isAuthenticated;
- (BOOL)isPassphraseCorrect:(id)correct;
- (BOOL)isRecordAuthenticated:(id)authenticated;
- (BOOL)loadDecryptedValuesIfNecessary;
- (BOOL)mainKeyDecryptsPrimaryData:(id)data;
- (BOOL)mergeEncryptedDataFromRecord:(id)record;
- (BOOL)recordHasChangedPassphrase:(id)passphrase;
- (BOOL)rewrapWithMainKey:(id)key;
- (BOOL)saveEncryptedJSON;
- (ICEncryptionKey)fallbackSidecarMainKey;
- (ICEncryptionKey)primaryWrappedKey;
- (ICEncryptionKey)sidecarMainKey;
- (ICEncryptionMetadata)primaryMetadata;
- (ICEncryptionObject)primaryEncryptionObject;
- (NSString)passphraseHint;
- (id)decryptData:(id)data;
- (id)decryptObject:(id)object encryptionKey:(id)key mainKey:(id)mainKey;
- (id)decryptSidecarData:(id)data;
- (id)encryptData:(id)data;
- (id)encryptData:(id)data encryptionKey:(id)key mainKey:(id)mainKey;
- (id)encryptSidecarData:(id)data;
- (id)encryptedData:(id)data rewrappedWithMainKey:(id)key;
- (id)mainKeyForPassphrase:(id)passphrase;
- (id)sidecarMainKeyCreateIfNeeded;
- (void)initializeCryptoPropertiesFromObject:(id)object;
- (void)saveEncryptedJSON;
@end

@implementation ICCloudSyncingObjectCryptoStrategyV1Neo

- (void)initializeCryptoPropertiesFromObject:(id)object
{
  v20 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    shortLoggingDescription2 = [objectCopy shortLoggingDescription];
    *buf = 138412546;
    v17 = shortLoggingDescription;
    v18 = 2112;
    v19 = shortLoggingDescription2;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Initializing crypto properties from original object… {object: %@, originalObject: %@}", buf, 0x16u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__ICCloudSyncingObjectCryptoStrategyV1Neo_initializeCryptoPropertiesFromObject___block_invoke;
  v14[3] = &unk_278195B40;
  v9 = objectCopy;
  v15 = v9;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v14];
  v10 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    object2 = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription3 = [object2 shortLoggingDescription];
    shortLoggingDescription4 = [v9 shortLoggingDescription];
    *buf = 138412546;
    v17 = shortLoggingDescription3;
    v18 = 2112;
    v19 = shortLoggingDescription4;
    _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_INFO, "Initialized crypto properties from original object {object: %@, originalObject: %@}", buf, 0x16u);
  }
}

void __80__ICCloudSyncingObjectCryptoStrategyV1Neo_initializeCryptoPropertiesFromObject___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if ([*(a1 + 32) isPasswordProtected] && +[ICCryptoStrategyFactory cipherVersionForObject:](ICCryptoStrategyFactory, "cipherVersionForObject:", *(a1 + 32)) == 2)
  {
    v3 = +[ICAuthenticationState sharedState];
    v4 = [*(a1 + 32) identifier];
    v5 = [v3 cachedMainKeyForIdentifier:v4];
  }

  else
  {
    v6 = [v13 cloudAccount];
    v7 = [v6 accountData];
    v8 = [v7 identifier];

    v9 = v13;
    if (!v8)
    {
      goto LABEL_9;
    }

    v3 = +[ICAuthenticationState sharedState];
    v4 = [v13 cloudAccount];
    v10 = [v4 accountData];
    v11 = [v10 identifier];
    v5 = [v3 cachedMainKeyForIdentifier:v11];
  }

  if (v5)
  {
    v12 = +[ICAuthenticationState sharedState];
    [v12 setCachedMainKey:v5 forObject:v13];
  }

  v9 = v13;
LABEL_9:
}

- (ICEncryptionMetadata)primaryMetadata
{
  primaryEncryptionObject = [(ICCloudSyncingObjectCryptoStrategyV1Neo *)self primaryEncryptionObject];
  metadata = [primaryEncryptionObject metadata];

  return metadata;
}

- (ICEncryptionKey)primaryWrappedKey
{
  primaryEncryptionObject = [(ICCloudSyncingObjectCryptoStrategyV1Neo *)self primaryEncryptionObject];
  if (primaryEncryptionObject)
  {
    v3 = [ICEncryptionKey alloc];
    wrappedEncryptionKey = [primaryEncryptionObject wrappedEncryptionKey];
    metadata = [primaryEncryptionObject metadata];
    v6 = [(ICEncryptionKey *)v3 initWithKeyData:wrappedEncryptionKey metadata:metadata];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ICEncryptionObject)primaryEncryptionObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__ICCloudSyncingObjectCryptoStrategyV1Neo_primaryEncryptionObject__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __66__ICCloudSyncingObjectCryptoStrategyV1Neo_primaryEncryptionObject__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unappliedEncryptedRecord];
  v5 = [v3 primaryEncryptedDataFromRecord:v4];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v3 primaryEncryptedData];

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = [[ICEncryptionObject alloc] initWithSerializedData:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __60__ICCloudSyncingObjectCryptoStrategyV2_accountKeyIdentifier__block_invoke_cold_1(v3);
    }
  }

LABEL_8:
}

- (BOOL)isAuthenticated
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__ICCloudSyncingObjectCryptoStrategyV1Neo_isAuthenticated__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __58__ICCloudSyncingObjectCryptoStrategyV1Neo_isAuthenticated__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[ICAuthenticationState sharedState];
  v4 = [v5 cachedMainKeyForObject:v3];

  *(*(*(a1 + 32) + 8) + 24) = v4 != 0;
}

- (BOOL)hasPassphraseSet
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ICCloudSyncingObjectCryptoStrategyV1Neo_hasPassphraseSet__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __59__ICCloudSyncingObjectCryptoStrategyV1Neo_hasPassphraseSet__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 unappliedEncryptedRecord];
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v4 = [v5 primaryEncryptedData];
    *(*(*(a1 + 32) + 8) + 24) = v4 != 0;
  }
}

- (NSString)passphraseHint
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__ICCloudSyncingObjectCryptoStrategyV1Neo_passphraseHint__block_invoke;
  v4[3] = &unk_278195960;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __57__ICCloudSyncingObjectCryptoStrategyV1Neo_passphraseHint__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) primaryMetadata];
  v2 = [v5 passphraseHint];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)mainKeyForPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke;
  v8[3] = &unk_2781959B0;
  v8[4] = self;
  v5 = passphraseCopy;
  v9 = v5;
  v10 = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) primaryMetadata];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v4 passphraseSalt];
    v14 = 0;
    v8 = +[ICCipherV1Neo keyForPassphrase:salt:iterationCount:error:](ICCipherV1Neo, "keyForPassphrase:salt:iterationCount:error:", v6, v7, [v5 passphraseIterationCount], &v14);
    v9 = v14;

    if (!v8)
    {
      v13 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke_cold_2();
      }

      goto LABEL_11;
    }

    v10 = [[ICEncryptionKey alloc] initWithKeyData:v8 metadata:v5];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v13 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke_cold_1(v3);
      }

LABEL_11:
    }
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke_cold_3(v3);
    }

    v9 = v8;
  }
}

- (BOOL)isPassphraseCorrect:(id)correct
{
  correctCopy = correct;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ICCloudSyncingObjectCryptoStrategyV1Neo_isPassphraseCorrect___block_invoke;
  v7[3] = &unk_2781959B0;
  v7[4] = self;
  v5 = correctCopy;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __63__ICCloudSyncingObjectCryptoStrategyV1Neo_isPassphraseCorrect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mainKeyForPassphrase:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) mainKeyDecryptsPrimaryData:v2];
    v2 = v4;
    *(*(*(a1 + 48) + 8) + 24) = v3;
  }
}

- (BOOL)authenticateWithPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ICCloudSyncingObjectCryptoStrategyV1Neo_authenticateWithPassphrase___block_invoke;
  v7[3] = &unk_2781959B0;
  v7[4] = self;
  v5 = passphraseCopy;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __70__ICCloudSyncingObjectCryptoStrategyV1Neo_authenticateWithPassphrase___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) mainKeyForPassphrase:*(a1 + 40)];
  if (v3)
  {
    if ([*(a1 + 32) mainKeyDecryptsPrimaryData:v3])
    {
      v4 = +[ICAuthenticationState sharedState];
      v5 = [v4 setCachedMainKey:v3 forObject:v9];
      v7 = *(a1 + 48);
      v6 = a1 + 48;
      *(*(v7 + 8) + 24) = v5;
    }

    else
    {
      v8 = *(a1 + 48);
      v6 = a1 + 48;
      *(*(v8 + 8) + 24) = 0;
    }

    if (*(*(*v6 + 8) + 24) == 1)
    {
      [v9 mergeUnappliedEncryptedRecord];
    }
  }
}

- (id)encryptedData:(id)data rewrappedWithMainKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptedData_rewrappedWithMainKey___block_invoke;
  v12[3] = &unk_2781959B0;
  v8 = dataCopy;
  v13 = v8;
  v9 = keyCopy;
  v14 = v9;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __78__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptedData_rewrappedWithMainKey___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ICAuthenticationState sharedState];
  v5 = [v4 cachedMainKeyForObject:v3];

  if (v5)
  {
    v6 = [[ICEncryptionObject alloc] initWithSerializedData:*(a1 + 32)];
    v7 = v6;
    if (v6)
    {
      v8 = [(ICEncryptionObject *)v6 wrappedEncryptionKey];
      v9 = [v5 keyData];
      v28 = 0;
      v10 = [ICCipherV1Neo unwrapKey:v8 withWrapper:v9 error:&v28];
      v11 = v28;

      if (v10)
      {
        v12 = [*(a1 + 40) keyData];
        v27 = v11;
        v13 = [ICCipherV1Neo wrapKey:v10 withWrapper:v12 error:&v27];
        v14 = v27;

        if (v13)
        {
          v15 = [*(a1 + 40) metadata];
          v16 = [v3 identifier];
          v17 = [ICEncryptionMetadata makeFromMetadata:v15 forObjectIdentifier:v16];

          if (v17)
          {
            v18 = [ICEncryptionObject alloc];
            v19 = [(ICEncryptionObject *)v7 encryptedData];
            v20 = [(ICEncryptionObject *)v18 initWithMetadata:v17 wrappedEncryptionKey:v13 encryptedData:v19];

            if (v20)
            {
              v21 = [v20 serialized];
              v22 = *(*(a1 + 48) + 8);
              v23 = *(v22 + 40);
              *(v22 + 40) = v21;
            }

            else
            {
              v23 = os_log_create("com.apple.notes", "Crypto");
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                __78__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptedData_rewrappedWithMainKey___block_invoke_cold_1(v3);
              }
            }
          }

          else
          {
            v23 = os_log_create("com.apple.notes", "Crypto");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              __78__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptedData_rewrappedWithMainKey___block_invoke_cold_2(v3);
            }

            v20 = v23;
          }
        }

        else
        {
          v20 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            __78__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptedData_rewrappedWithMainKey___block_invoke_cold_3();
          }

          v17 = v20;
        }
      }

      else
      {
        v17 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v26 = [v3 shortLoggingDescription];
          *buf = 138412546;
          v30 = v26;
          v31 = 2112;
          v32 = v11;
          _os_log_impl(&dword_214D51000, v17, OS_LOG_TYPE_INFO, "Not rewrapping data because current encryption key cannot be unwrapped {object: %@, error: %@}", buf, 0x16u);
        }

        v13 = v17;
        v14 = v11;
      }
    }

    else
    {
      v10 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v25 = [v3 shortLoggingDescription];
        *buf = 138412290;
        v30 = v25;
        _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_INFO, "Not rewrapping data because encryption object cannot be deserialized {object: %@}", buf, 0xCu);
      }

      v14 = v10;
    }
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v24 = [v3 shortLoggingDescription];
      *buf = 138412290;
      v30 = v24;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Not rewrapping data because main key is missing {object: %@}", buf, 0xCu);
    }

    v7 = v14;
  }
}

- (BOOL)rewrapWithMainKey:(id)key
{
  keyCopy = key;
  sidecarMainKeyCreateIfNeeded = [(ICCloudSyncingObjectCryptoStrategyV1Neo *)self sidecarMainKeyCreateIfNeeded];
  v7.receiver = self;
  v7.super_class = ICCloudSyncingObjectCryptoStrategyV1Neo;
  LOBYTE(self) = [(ICCryptoStrategyBase *)&v7 rewrapWithMainKey:keyCopy];

  return self;
}

- (ICEncryptionKey)sidecarMainKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__ICCloudSyncingObjectCryptoStrategyV1Neo_sidecarMainKey__block_invoke;
  v4[3] = &unk_2781959D8;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __57__ICCloudSyncingObjectCryptoStrategyV1Neo_sidecarMainKey__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isAuthenticated])
  {
    if (([v3 supportsEncryptedValuesDictionary] & 1) == 0)
    {
      v10 = [*(a1 + 32) fallbackSidecarMainKey];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      goto LABEL_13;
    }

    v4 = NSStringFromSelector(sel_sidecarMainKey);
    v5 = [v3 primitiveValueForEncryptableKey:v4];

    if ([v5 length])
    {
      v6 = [[ICEncryptionKey alloc] initWithSerializedData:v5];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v9 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __57__ICCloudSyncingObjectCryptoStrategyV1Neo_sidecarMainKey__block_invoke_cold_2(v3);
        }
      }
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __57__ICCloudSyncingObjectCryptoStrategyV1Neo_sidecarMainKey__block_invoke_cold_1(v3);
    }
  }

LABEL_13:
}

- (id)sidecarMainKeyCreateIfNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__ICCloudSyncingObjectCryptoStrategyV1Neo_sidecarMainKeyCreateIfNeeded__block_invoke;
  v4[3] = &unk_2781959D8;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __71__ICCloudSyncingObjectCryptoStrategyV1Neo_sidecarMainKeyCreateIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isAuthenticated] & 1) == 0)
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __57__ICCloudSyncingObjectCryptoStrategyV1Neo_sidecarMainKey__block_invoke_cold_1(v3);
    }

    v12 = v13;
    goto LABEL_10;
  }

  if ([v3 supportsEncryptedValuesDictionary])
  {
    v4 = [*(a1 + 32) sidecarMainKey];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v3 shortLoggingDescription];
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Creating sidecar main key from fallback sidecar main key… {object: %@}", &v14, 0xCu);
      }

      v9 = [*(a1 + 32) fallbackSidecarMainKey];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = [*(*(*(a1 + 40) + 8) + 40) serializedData];
      v13 = NSStringFromSelector(sel_sidecarMainKey);
      [v3 setValue:v12 forEncryptableKey:v13];
LABEL_10:
    }
  }
}

- (ICEncryptionKey)fallbackSidecarMainKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__ICCloudSyncingObjectCryptoStrategyV1Neo_fallbackSidecarMainKey__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __65__ICCloudSyncingObjectCryptoStrategyV1Neo_fallbackSidecarMainKey__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICAuthenticationState sharedState];
  v5 = [v4 cachedMainKeyForObject:v3];

  if (!v5)
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __65__ICCloudSyncingObjectCryptoStrategyV1Neo_fallbackSidecarMainKey__block_invoke_cold_3(v3);
    }

    v7 = v13;
    goto LABEL_12;
  }

  v6 = [v3 identifier];
  v7 = [ICEncryptionMetadata makeForV1NeoSidecarCipherWithObjectIdentifier:v6];

  if (!v7)
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudSyncingObjectCryptoStrategyV1Neo_fallbackSidecarMainKey__block_invoke_cold_2(v3);
    }

    goto LABEL_11;
  }

  v8 = [ICEncryptionKey alloc];
  v9 = [v5 keyData];
  v10 = [(ICEncryptionKey *)v8 initWithKeyData:v9 metadata:v7];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudSyncingObjectCryptoStrategyV1Neo_fallbackSidecarMainKey__block_invoke_cold_1(v3);
    }

LABEL_11:

LABEL_12:
  }
}

- (BOOL)hasSameKeyAsObject:(id)object
{
  objectCopy = object;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ICCloudSyncingObjectCryptoStrategyV1Neo_hasSameKeyAsObject___block_invoke;
  v7[3] = &unk_2781959B0;
  v7[4] = self;
  v5 = objectCopy;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __62__ICCloudSyncingObjectCryptoStrategyV1Neo_hasSameKeyAsObject___block_invoke(uint64_t a1)
{
  v21 = [*(a1 + 32) primaryMetadata];
  objc_opt_class();
  v2 = [*(a1 + 40) cryptoStrategy];
  v3 = ICDynamicCast();
  v4 = [v3 v1NeoStrategy];
  v5 = [v4 primaryMetadata];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    objc_opt_class();
    v8 = [*(a1 + 40) cryptoStrategy];
    v9 = ICDynamicCast();
    v7 = [v9 primaryMetadata];
  }

  if (!v21 || !v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_21;
  }

  v10 = [v21 passphraseSalt];
  v11 = [v7 passphraseSalt];
  v12 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;
  if (v12 == v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15;
  if (!(v14 | v16))
  {
    goto LABEL_16;
  }

  v17 = v16;
  if (!v14 || !v16)
  {

    goto LABEL_19;
  }

  v18 = [v14 isEqual:v16];

  if (!v18)
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

LABEL_16:
  v19 = [v21 passphraseIterationCount];
  v20 = v19 == [v7 passphraseIterationCount];
LABEL_20:
  *(*(*(a1 + 48) + 8) + 24) = v20;

LABEL_21:
}

- (id)encryptData:(id)data encryptionKey:(id)key mainKey:(id)mainKey
{
  dataCopy = data;
  keyCopy = key;
  mainKeyCopy = mainKey;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__14;
  v25 = __Block_byref_object_dispose__14;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData_encryptionKey_mainKey___block_invoke;
  v16[3] = &unk_278195A00;
  v11 = keyCopy;
  v17 = v11;
  v12 = mainKeyCopy;
  v18 = v12;
  v13 = dataCopy;
  v19 = v13;
  v20 = &v21;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __77__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData_encryptionKey_mainKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) keyData];
  v21 = 0;
  v6 = [ICCipherV1Neo wrapKey:v4 withWrapper:v5 error:&v21];
  v7 = v21;

  if (v6)
  {
    v8 = [*(a1 + 40) metadata];
    v9 = [v3 identifier];
    v10 = [ICEncryptionMetadata makeFromMetadata:v8 forObjectIdentifier:v9];

    if (v10)
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 32);
      v13 = [v10 authenticatedData];
      v20 = v7;
      v14 = [ICCipherV1Neo encryptData:v11 withKey:v12 additionalAuthenticatedData:v13 error:&v20];
      v15 = v20;

      if (v14)
      {
        v16 = [[ICEncryptionObject alloc] initWithMetadata:v10 wrappedEncryptionKey:v6 encryptedData:v14];
        v17 = *(*(a1 + 56) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        if (*(*(*(a1 + 56) + 8) + 40))
        {
LABEL_17:
          v7 = v15;
          goto LABEL_18;
        }

        v19 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __77__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData_encryptionKey_mainKey___block_invoke_cold_1(v3);
        }
      }

      else
      {
        v19 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __77__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData_encryptionKey_mainKey___block_invoke_cold_2();
        }
      }
    }

    else
    {
      v19 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __78__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptedData_rewrappedWithMainKey___block_invoke_cold_2(v3);
      }

      v14 = v19;
      v15 = v7;
    }

    goto LABEL_17;
  }

  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __77__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData_encryptionKey_mainKey___block_invoke_cold_4();
  }

  v10 = v14;
LABEL_18:
}

- (id)encryptData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData___block_invoke;
  v8[3] = &unk_278195A28;
  v8[4] = self;
  v10 = &v11;
  v5 = dataCopy;
  v9 = v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __55__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ICAuthenticationState sharedState];
  v5 = [v4 cachedMainKeyForObject:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) primaryEncryptionObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 wrappedEncryptionKey];
      v9 = [v5 keyData];
      v20 = 0;
      v10 = [ICCipherV1Neo unwrapKey:v8 withWrapper:v9 error:&v20];
      v11 = v20;

      if (!v10)
      {
        v12 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v3 shortLoggingDescription];
          *buf = 138412546;
          v22 = v13;
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Cannot unwrap primary encryption key {object: %@, error: %@}", buf, 0x16u);
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
      v10 = [MEMORY[0x277CBEA90] ic_random256BitData:&v19];
      v11 = v19;
      v15 = os_log_create("com.apple.notes", "Crypto");
      v12 = v15;
      if (!v10)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __55__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData___block_invoke_cold_1();
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v3 shortLoggingDescription];
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Generated new encryption key {object: %@}", buf, 0xCu);
      }
    }

    v17 = [*(a1 + 32) encryptData:*(a1 + 40) encryptionKey:v10 mainKey:v5];
    v18 = *(*(a1 + 48) + 8);
    v12 = *(v18 + 40);
    *(v18 + 40) = v17;
LABEL_17:

    goto LABEL_18;
  }

  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = [v3 shortLoggingDescription];
    *buf = 138412290;
    v22 = v14;
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Cannot encrypt data because object is not authenticated {object: %@}", buf, 0xCu);
  }

  v11 = v7;
LABEL_18:
}

- (id)encryptSidecarData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptSidecarData___block_invoke;
  v8[3] = &unk_278195A28;
  v8[4] = self;
  v10 = &v11;
  v5 = dataCopy;
  v9 = v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  serialized = [v12[5] serialized];

  _Block_object_dispose(&v11, 8);

  return serialized;
}

void __62__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptSidecarData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sidecarMainKeyCreateIfNeeded];
  if (v4 || ([*(a1 + 32) fallbackSidecarMainKey], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v11 = 0;
    v6 = [MEMORY[0x277CBEA90] ic_random256BitData:&v11];
    v7 = v11;
    if (v6)
    {
      v8 = [*(a1 + 32) encryptData:*(a1 + 40) encryptionKey:v6 mainKey:v5];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else
    {
      v10 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __55__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptSidecarData___block_invoke_cold_2(v3);
    }

    v7 = v5;
  }
}

- (BOOL)saveEncryptedJSON
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObjectCryptoStrategyV1Neo *)self saveEncryptedJSON];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__ICCloudSyncingObjectCryptoStrategyV1Neo_saveEncryptedJSON__block_invoke;
  v10[3] = &unk_2781959D8;
  v10[4] = self;
  v10[5] = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v10];
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:*(v12 + 24)];
    *buf = 138413058;
    v16 = shortLoggingDescription;
    v17 = 2112;
    v19 = 2080;
    v18 = v9;
    v20 = "[ICCloudSyncingObjectCryptoStrategyV1Neo saveEncryptedJSON]";
    v21 = 1024;
    v22 = 570;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Saved encrypted values JSON {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v5;
}

void __60__ICCloudSyncingObjectCryptoStrategyV1Neo_saveEncryptedJSON__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 encryptedValuesJSON];

  if ([v3 supportsEncryptedValuesDictionary])
  {
    if ([*(a1 + 32) isAuthenticated])
    {
      v5 = [v3 serializedValuesToEncrypt];
      if (v5)
      {
        v6 = [*(a1 + 32) encryptData:v5];
        v7 = [v6 serialized];
        if (v7)
        {
          [v3 setEncryptedValuesJSON:v7];
          [v3 applyRandomCryptoGooIfNeeded];
          if (!v4)
          {
            [v3 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
          }

          *(*(*(a1 + 40) + 8) + 24) = 1;
        }

        else
        {
          v9 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __60__ICCloudSyncingObjectCryptoStrategyV1Neo_saveEncryptedJSON__block_invoke_cold_2(v3);
          }
        }
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        v7 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [v3 shortLoggingDescription];
          v10 = 138412290;
          v11 = v8;
          _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "No encrypted values JSON to save — skipping {object: %@}", &v10, 0xCu);
        }

        v6 = v7;
      }
    }

    else
    {
      v6 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __57__ICCloudSyncingObjectCryptoStrategyV2_saveEncryptedJSON__block_invoke_cold_1(v3);
      }

      v5 = v6;
    }
  }
}

- (BOOL)mainKeyDecryptsPrimaryData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyDecryptsPrimaryData___block_invoke;
  v7[3] = &unk_2781959B0;
  v5 = dataCopy;
  v8 = v5;
  selfCopy = self;
  v10 = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __70__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyDecryptsPrimaryData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  v3 = [v2 cipherVersion];

  if (v3 == 2)
  {
    v4 = [*(a1 + 40) primaryWrappedKey];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 keyData];
      v7 = [*(a1 + 32) keyData];
      v10 = 0;
      v8 = [ICCipherV1Neo unwrapKey:v6 withWrapper:v7 error:&v10];
      v9 = v10;

      if (v8)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (id)decryptObject:(id)object encryptionKey:(id)key mainKey:(id)mainKey
{
  objectCopy = object;
  keyCopy = key;
  mainKeyCopy = mainKey;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__14;
  v23 = __Block_byref_object_dispose__14;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptObject_encryptionKey_mainKey___block_invoke;
  v15[3] = &unk_278195A28;
  v11 = objectCopy;
  v16 = v11;
  v18 = &v19;
  v12 = keyCopy;
  v17 = v12;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __79__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptObject_encryptionKey_mainKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) metadata];
  v5 = [v4 objectIdentifier];
  v6 = [v3 identifier];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v16 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __79__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptObject_encryptionKey_mainKey___block_invoke_cold_1();
    }

    v13 = 0;
    goto LABEL_8;
  }

  v8 = [*(a1 + 32) encryptedData];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) metadata];
  v11 = [v10 authenticatedData];
  v17 = 0;
  v12 = [ICCipherV1Neo decryptData:v8 withKey:v9 additionalAuthenticatedData:v11 error:&v17];
  v13 = v17;
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v12;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v16 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __79__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptObject_encryptionKey_mainKey___block_invoke_cold_2();
    }

LABEL_8:
  }
}

- (id)decryptData:(id)data
{
  dataCopy = data;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptData___block_invoke;
  v8[3] = &unk_278195A28;
  v5 = dataCopy;
  selfCopy = self;
  v11 = &v12;
  v9 = v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __55__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICAuthenticationState sharedState];
  v5 = [v4 cachedMainKeyForObject:v3];

  if (v5)
  {
    v6 = [[ICEncryptionObject alloc] initWithSerializedData:*(a1 + 32)];
    if (!v6)
    {
      p_super = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        __63__ICCloudSyncingObjectCryptoStrategyV2_primaryEncryptionObject__block_invoke_cold_1(v3);
      }

      v8 = p_super;
      goto LABEL_25;
    }

    v7 = [v3 unappliedEncryptedRecord];
    v8 = [v3 primaryEncryptedDataFromRecord:v7];

    if (v8)
    {
      v9 = [[ICEncryptionObject alloc] initWithSerializedData:v8];
      if (!v9)
      {
        v9 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
        {
          __55__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptData___block_invoke_cold_1(v3);
        }

        p_super = &v9->super;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = [(ICEncryptionObject *)v9 wrappedEncryptionKey];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(ICEncryptionObject *)v6 wrappedEncryptionKey];
    }

    v14 = v13;

    v15 = [v5 keyData];
    v20 = 0;
    v16 = [ICCipherV1Neo unwrapKey:v14 withWrapper:v15 error:&v20];
    p_super = v20;

    if (v16)
    {
      v17 = [*(a1 + 40) decryptObject:v6 encryptionKey:v16 mainKey:v5];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    else
    {
      v19 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __55__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptData___block_invoke_cold_2();
      }
    }

    goto LABEL_24;
  }

  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __55__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptData___block_invoke_cold_4(v3);
  }

  v6 = v8;
LABEL_26:
}

- (id)decryptSidecarData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke;
  v8[3] = &unk_2781959B0;
  v8[4] = self;
  v5 = dataCopy;
  v9 = v5;
  v10 = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sidecarMainKey];
  v5 = [*(a1 + 32) fallbackSidecarMainKey];
  if (v4 | v5)
  {
    v6 = [[ICEncryptionObject alloc] initWithSerializedData:*(a1 + 40)];
    v7 = v6;
    if (v6)
    {
      if (v4)
      {
        v8 = [(ICEncryptionObject *)v6 wrappedEncryptionKey];
        v9 = [v4 keyData];
        v25 = 0;
        v10 = [ICCipherV1Neo unwrapKey:v8 withWrapper:v9 error:&v25];
        v11 = v25;

        if (v10)
        {
          v12 = [*(a1 + 32) decryptObject:v7 encryptionKey:v10 mainKey:v4];
          v13 = *(*(a1 + 48) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;
        }

        else
        {
          v14 = os_log_create("com.apple.notes", "Crypto");
          v18 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
          if (v5)
          {
            if (v18)
            {
              __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke_cold_2();
            }
          }

          else if (v18)
          {
            __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke_cold_1();
          }
        }
      }

      else
      {
        v11 = 0;
      }

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        v19 = 1;
      }

      else
      {
        v19 = v5 == 0;
      }

      if (v19)
      {
        goto LABEL_27;
      }

      v20 = [(ICEncryptionObject *)v7 wrappedEncryptionKey];
      v21 = [v5 keyData];
      v24 = v11;
      v17 = [ICCipherV1Neo unwrapKey:v20 withWrapper:v21 error:&v24];
      v16 = v24;

      if (v17)
      {
        v22 = [*(a1 + 32) decryptObject:v7 encryptionKey:v17 mainKey:v4];
        v23 = *(*(a1 + 48) + 8);
        v15 = *(v23 + 40);
        *(v23 + 40) = v22;
      }

      else
      {
        v15 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke_cold_3();
        }
      }
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke_cold_4(v3);
      }

      v16 = 0;
      v17 = v15;
    }

    v11 = v16;
LABEL_27:
  }
}

- (BOOL)loadDecryptedValuesIfNecessary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__ICCloudSyncingObjectCryptoStrategyV1Neo_loadDecryptedValuesIfNecessary__block_invoke;
  v4[3] = &unk_2781959D8;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __73__ICCloudSyncingObjectCryptoStrategyV1Neo_loadDecryptedValuesIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isAuthenticated] & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 shortLoggingDescription];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Cannot load decrypted values because object is not authenticated — failing {object: %@}", &v12, 0xCu);
    }

    goto LABEL_19;
  }

  if ([v3 needsToLoadDecryptedValues])
  {
    v4 = [v3 encryptedValuesJSON];
    if (v4)
    {
      v5 = [*(a1 + 32) decryptData:v4];
      if (v5)
      {
        [v3 deserializeAndMergeValues:v5];
        [v3 setNeedsToLoadDecryptedValues:0];
        v6 = [v3 managedObjectContext];
        v7 = [v6 concurrencyType];

        if (v7 == 2)
        {
          [v3 mergeUnappliedEncryptedRecord];
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      else
      {
        v11 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __73__ICCloudSyncingObjectCryptoStrategyV1Neo_loadDecryptedValuesIfNecessary__block_invoke_cold_1(v3);
        }
      }
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v3 shortLoggingDescription];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Cannot load decrypted values because encrypted values JSON is nil — succeeding {object: %@}", &v12, 0xCu);
      }

      [v3 setNeedsToLoadDecryptedValues:0];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

LABEL_19:

    goto LABEL_20;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_20:
}

- (BOOL)isRecordAuthenticated:(id)authenticated
{
  authenticatedCopy = authenticated;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ICCloudSyncingObjectCryptoStrategyV1Neo_isRecordAuthenticated___block_invoke;
  v7[3] = &unk_278195A28;
  v5 = authenticatedCopy;
  selfCopy = self;
  v10 = &v11;
  v8 = v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __65__ICCloudSyncingObjectCryptoStrategyV1Neo_isRecordAuthenticated___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a2 primaryEncryptedDataFromRecord:*(a1 + 32)];
  if (v3)
  {
    v4 = [[ICEncryptionObject alloc] initWithSerializedData:v3];
    if (v4)
    {
      v5 = +[ICAuthenticationState sharedState];
      v6 = [*(a1 + 40) object];
      v7 = [v5 cachedMainKeyForObject:v6];

      if (!v7)
      {
LABEL_15:

        goto LABEL_16;
      }

      v8 = [(ICEncryptionObject *)v4 wrappedEncryptionKey];
      v9 = [v7 keyData];
      v15 = 0;
      v10 = [ICCipherV1Neo unwrapKey:v8 withWrapper:v9 error:&v15];
      v11 = v15;

      if (v10)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else
      {
        v12 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [*(a1 + 40) object];
          v14 = [v13 shortLoggingDescription];
          *buf = 138412546;
          v17 = v14;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Cannot unwrap encryption key {object: %@, error: %@}", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __65__ICCloudSyncingObjectCryptoStrategyV1Neo_isRecordAuthenticated___block_invoke_cold_1(a1);
      }

      v7 = v11;
    }

    goto LABEL_15;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_16:
}

- (BOOL)mergeEncryptedDataFromRecord:(id)record
{
  v28 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObjectCryptoStrategyV1Neo mergeEncryptedDataFromRecord:?];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__ICCloudSyncingObjectCryptoStrategyV1Neo_mergeEncryptedDataFromRecord___block_invoke;
  v13[3] = &unk_2781959B0;
  v13[4] = self;
  v6 = recordCopy;
  v14 = v6;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v13];
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:*(v17 + 24)];
    *buf = 138413058;
    v21 = shortLoggingDescription;
    v22 = 2112;
    v24 = 2080;
    v23 = v12;
    v25 = "[ICCloudSyncingObjectCryptoStrategyV1Neo mergeEncryptedDataFromRecord:]";
    v26 = 1024;
    v27 = 860;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Merged encrypted data from record {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __72__ICCloudSyncingObjectCryptoStrategyV1Neo_mergeEncryptedDataFromRecord___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isAuthenticated] && (objc_msgSend(*(a1 + 32), "isRecordAuthenticated:", *(a1 + 40)) & 1) != 0)
  {
    [*(a1 + 32) loadDecryptedValuesIfNecessary];
    v4 = [*(a1 + 40) ic_inlineableDataAssetForKeyPrefix:@"EncryptedValues"];
    if (v4)
    {
      v5 = [*(a1 + 32) decryptData:v4];
      if (v5)
      {
        [v3 deserializeAndMergeValues:v5];
        if ([*(a1 + 32) saveEncryptedJSON])
        {
          [v3 setUnappliedEncryptedRecord:0];
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else
      {
        v8 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __73__ICCloudSyncingObjectCryptoStrategyV1Neo_loadDecryptedValuesIfNecessary__block_invoke_cold_1(v3);
        }
      }
    }

    else
    {
      v6 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v3 shortLoggingDescription];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Not merging empty encrypted values JSON {object: %@}", &v9, 0xCu);
      }

      [v3 setUnappliedEncryptedRecord:0];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    [v3 setUnappliedEncryptedRecord:*(a1 + 40)];
  }
}

- (BOOL)recordHasChangedPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ICCloudSyncingObjectCryptoStrategyV1Neo_recordHasChangedPassphrase___block_invoke;
  v7[3] = &unk_2781959D8;
  v5 = passphraseCopy;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __70__ICCloudSyncingObjectCryptoStrategyV1Neo_recordHasChangedPassphrase___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [v17 primaryEncryptedData];
  if (v3)
  {
    v4 = [[ICEncryptionObject alloc] initWithSerializedData:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v17 primaryEncryptedDataFromRecord:*(a1 + 32)];
  if (v5)
  {
    v6 = [[ICEncryptionObject alloc] initWithSerializedData:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ICEncryptionObject *)v4 wrappedEncryptionKey];
  v8 = [(ICEncryptionObject *)v6 wrappedEncryptionKey];
  v9 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  if (v9 == v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;
  v14 = v13;
  if (v11 | v13)
  {
    if (v11)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = [v11 isEqual:v13] ^ 1;
    }
  }

  else
  {
    v16 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v16;
}

void __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __78__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptedData_rewrappedWithMainKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __78__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptedData_rewrappedWithMainKey___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __78__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptedData_rewrappedWithMainKey___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __57__ICCloudSyncingObjectCryptoStrategyV1Neo_sidecarMainKey__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void __57__ICCloudSyncingObjectCryptoStrategyV1Neo_sidecarMainKey__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV1Neo_fallbackSidecarMainKey__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV1Neo_fallbackSidecarMainKey__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV1Neo_fallbackSidecarMainKey__block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void __77__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData_encryptionKey_mainKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __77__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData_encryptionKey_mainKey___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __77__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData_encryptionKey_mainKey___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __55__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __62__ICCloudSyncingObjectCryptoStrategyV1Neo_encryptSidecarData___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)saveEncryptedJSON
{
  object = [self object];
  shortLoggingDescription = [object shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Saving encrypted values JSON… {object: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __60__ICCloudSyncingObjectCryptoStrategyV1Neo_saveEncryptedJSON__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __79__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptObject_encryptionKey_mainKey___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 shortLoggingDescription];
  v8 = [*v0 metadata];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __79__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptObject_encryptionKey_mainKey___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __55__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __55__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __55__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptData___block_invoke_cold_4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

void __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

void __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

void __62__ICCloudSyncingObjectCryptoStrategyV1Neo_decryptSidecarData___block_invoke_cold_4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __73__ICCloudSyncingObjectCryptoStrategyV1Neo_loadDecryptedValuesIfNecessary__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV1Neo_isRecordAuthenticated___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)mergeEncryptedDataFromRecord:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Merging encrypted data from record… {object: %@}%s:%d", v5, v6, v7, v8, v9);
}

@end