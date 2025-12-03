@interface ICCloudSyncingObjectCryptoStrategyV1
+ (id)decryptWithMainKeyOfObject:(id)object encryptedData:(id)data fallbackAttemptSuccessCleanupHandler:(id)handler;
+ (id)decryptWithMainKeyOfObject:(id)object encryptedDataPreparationBlock:(id)block fallbackAttemptSuccessCleanupHandler:(id)handler;
+ (void)encryptWithMainKeyOfObject:(id)object dataPreparationBlock:(id)block failureHandler:(id)handler successHandler:(id)successHandler;
+ (void)encryptWithMainKeyOfObject:(id)object dataToEncrypt:(id)encrypt failureHandler:(id)handler successHandler:(id)successHandler;
- (BOOL)authenticateWithPassphrase:(id)passphrase;
- (BOOL)canMainKey:(id)key decryptObject:(id)object;
- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL;
- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL setTagAndIVHandler:(id)handler;
- (BOOL)encryptSidecarFileFromURL:(id)l toURL:(id)rL;
- (BOOL)hasPassphraseSet;
- (BOOL)hasSameKeyAsObject:(id)object;
- (BOOL)isAuthenticated;
- (BOOL)isPassphraseCorrect:(id)correct;
- (BOOL)loadDecryptedValuesIfNecessary;
- (BOOL)mainKeyDecryptsPrimaryData:(id)data;
- (BOOL)mergeEncryptedDataFromRecord:(id)record;
- (BOOL)recordHasChangedPassphrase:(id)passphrase;
- (BOOL)rewrapWithMainKey:(id)key;
- (BOOL)saveEncryptedJSON;
- (ICEncryptionKey)primaryWrappedKey;
- (ICEncryptionMetadata)primaryMetadata;
- (ICEncryptionObject)primaryEncryptionObject;
- (NSData)fileURLEncryptionCryptoInitialzationVector;
- (NSData)fileURLEncryptionCryptoTag;
- (NSString)passphraseHint;
- (id)decryptData:(id)data;
- (id)decryptSidecarData:(id)data;
- (id)decryptedDataFromFileURL:(id)l;
- (id)encryptData:(id)data;
- (id)encryptSidecarData:(id)data;
- (id)encryptedData:(id)data rewrappedWithMainKey:(id)key;
- (id)encryptionObjectWithData:(id)data;
- (id)mainKeyForPassphrase:(id)passphrase;
- (id)unwrappedKey;
- (void)decryptAndMergeEncryptedJSON:(id)n;
- (void)initializeCryptoPropertiesFromObject:(id)object;
- (void)rewrapAndDivergeKeyUsingPassphrase:(id)passphrase;
- (void)rewrapKeyWithNewMainKey:(id)key salt:(id)salt iterationCount:(unint64_t)count hint:(id)hint;
- (void)saveEncryptedJSON;
@end

@implementation ICCloudSyncingObjectCryptoStrategyV1

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
  v14[2] = __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke;
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

void __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICAuthenticationState sharedState];
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = [v6 identifier];
  v8 = [v4 cachedMainKeyForIdentifier:v7];

  v9 = +[ICAuthenticationState sharedState];
  v10 = [v3 cloudAccount];
  v11 = [v10 identifier];
  v12 = [v9 cachedMainKeyForIdentifier:v11];

  if (v8 | v12)
  {
    if (v8)
    {
      v13 = v8;
      v14 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_4();
      }
    }

    else
    {
      if (!v12)
      {
        v13 = 0;
        goto LABEL_14;
      }

      v13 = v12;
      v14 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_3();
      }
    }

LABEL_14:
    v16 = [v13 keyData];
    v17 = [v13 keyData];
    v28 = 0;
    v18 = [ICCipherV1 wrapKey:v16 withWrapper:v17 error:&v28];
    v15 = v28;

    if (v18)
    {
      v19 = [v13 metadata];
      [v3 setCryptoIterationCount:{objc_msgSend(v19, "passphraseIterationCount")}];

      v20 = [v13 metadata];
      v21 = [v20 passphraseSalt];
      [v3 setCryptoSalt:v21];

      [v3 setCryptoWrappedKey:v18];
      v22 = [v13 metadata];
      v23 = [v22 passphraseHint];
      [v3 setPasswordHint:v23];

      v24 = +[ICAuthenticationState sharedState];
      [v24 setCachedMainKey:v13 forObject:v3];
    }

    else
    {
      v24 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_5();
      }
    }

    goto LABEL_20;
  }

  if ([*v5 isPasswordProtected] && !+[ICCryptoStrategyFactory cipherVersionForObject:](ICCryptoStrategyFactory, "cipherVersionForObject:", *v5))
  {
    v25 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_2();
    }

    [v3 setCryptoIterationCount:{objc_msgSend(*v5, "cryptoIterationCount")}];
    v26 = [*v5 cryptoSalt];
    [v3 setCryptoSalt:v26];

    v27 = [*v5 cryptoWrappedKey];
    [v3 setCryptoWrappedKey:v27];

    v15 = [(ICCryptoStrategyBase *)[ICCloudSyncingObjectCryptoStrategyV1 alloc] initWithCloudSyncingObject:*v5];
    v13 = [(ICCloudSyncingObjectCryptoStrategyV1 *)v15 passphraseHint];
    [v3 setPasswordHint:v13];
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_1(v3);
    }

    v15 = v13;
  }

LABEL_20:
}

- (ICEncryptionMetadata)primaryMetadata
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__65;
  v9 = __Block_byref_object_dispose__65;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ICCloudSyncingObjectCryptoStrategyV1_primaryMetadata__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __55__ICCloudSyncingObjectCryptoStrategyV1_primaryMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 cryptoSalt];
  v6 = [v3 cryptoIterationCount];
  v7 = [v3 passwordHint];
  v8 = [ICEncryptionMetadata makeForV1CipherWithObjectIdentifier:v4 salt:v5 iterationCount:v6 hint:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v11 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__ICCloudSyncingObjectCryptoStrategyV1_primaryMetadata__block_invoke_cold_1(v3);
    }
  }
}

- (ICEncryptionKey)primaryWrappedKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__65;
  v9 = __Block_byref_object_dispose__65;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__ICCloudSyncingObjectCryptoStrategyV1_primaryWrappedKey__block_invoke;
  v4[3] = &unk_278195960;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __57__ICCloudSyncingObjectCryptoStrategyV1_primaryWrappedKey__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cryptoWrappedKey];
  if (!v4)
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __57__ICCloudSyncingObjectCryptoStrategyV1_primaryWrappedKey__block_invoke_cold_2(v3);
    }

    goto LABEL_7;
  }

  v5 = [ICEncryptionKey alloc];
  v6 = [*(a1 + 32) primaryMetadata];
  v7 = [(ICEncryptionKey *)v5 initWithKeyData:v4 metadata:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __57__ICCloudSyncingObjectCryptoStrategyV1_primaryWrappedKey__block_invoke_cold_1(v3);
    }

LABEL_7:
  }
}

- (ICEncryptionObject)primaryEncryptionObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__65;
  v9 = __Block_byref_object_dispose__65;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__ICCloudSyncingObjectCryptoStrategyV1_primaryEncryptionObject__block_invoke;
  v4[3] = &unk_278195960;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __63__ICCloudSyncingObjectCryptoStrategyV1_primaryEncryptionObject__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 unappliedEncryptedRecord];
  v4 = [v9 primaryEncryptedDataFromRecord:v3];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v9 primaryEncryptedData];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [*(a1 + 32) encryptionObjectWithData:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

LABEL_5:
}

- (id)encryptionObjectWithData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__65;
  v15 = __Block_byref_object_dispose__65;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__ICCloudSyncingObjectCryptoStrategyV1_encryptionObjectWithData___block_invoke;
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

void __65__ICCloudSyncingObjectCryptoStrategyV1_encryptionObjectWithData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) primaryMetadata];
  if (!v4)
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudSyncingObjectCryptoStrategyV1_encryptionObjectWithData___block_invoke_cold_3(v3);
    }

    v5 = v9;
    goto LABEL_12;
  }

  v5 = [v3 cryptoWrappedKey];
  if (!v5)
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudSyncingObjectCryptoStrategyV1_encryptionObjectWithData___block_invoke_cold_2(v3);
    }

    goto LABEL_11;
  }

  v6 = [[ICEncryptionObject alloc] initWithMetadata:v4 wrappedEncryptionKey:v5 encryptedData:*(a1 + 40)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudSyncingObjectCryptoStrategyV1_encryptionObjectWithData___block_invoke_cold_1(v3);
    }

LABEL_11:

LABEL_12:
  }
}

- (BOOL)saveEncryptedJSON
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObjectCryptoStrategyV1 *)self saveEncryptedJSON];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke;
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
    v20 = "[ICCloudSyncingObjectCryptoStrategyV1 saveEncryptedJSON]";
    v21 = 1024;
    v22 = 201;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Saved encrypted values {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v5;
}

void __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 supportsEncryptedValuesDictionary])
  {
    if ([*(a1 + 32) isAuthenticated])
    {
      v4 = [v3 serializedValuesToEncrypt];
      if (v4)
      {
        v5 = objc_opt_class();
        v6 = [v3 serializedValuesToEncrypt];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke_9;
        v14[3] = &unk_278194B00;
        v15 = v3;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke_2;
        v11[3] = &unk_278194B28;
        v7 = v15;
        v8 = *(a1 + 40);
        v12 = v7;
        v13 = v8;
        [v5 encryptWithMainKeyOfObject:v7 dataToEncrypt:v6 failureHandler:v14 successHandler:v11];

        v9 = v15;
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        v9 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v3 shortLoggingDescription];
          *buf = 138412290;
          v17 = v10;
          _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "No encrypted values to save — skipping {object: %@}", buf, 0xCu);
        }
      }
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke_cold_1(v3);
      }

      v4 = v9;
    }
  }
}

uint64_t __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke_9(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke_9_cold_1(a1);
  }

  return [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObjectCryptoStrategyV1 saveEncryptedJSON]_block_invoke" simulateCrash:1 showAlert:1 format:@"Error encrypting JSON"];
}

void __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  [v7 setEncryptedValuesJSON:a2];
  [*(a1 + 32) setCryptoInitializationVector:v8];

  [*(a1 + 32) setCryptoTag:v9];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)encryptData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__65;
  v15 = __Block_byref_object_dispose__65;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ICCloudSyncingObjectCryptoStrategyV1_encryptData___block_invoke;
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

void __52__ICCloudSyncingObjectCryptoStrategyV1_encryptData___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = a1[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__ICCloudSyncingObjectCryptoStrategyV1_encryptData___block_invoke_2;
  v11[3] = &unk_278194B00;
  v12 = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ICCloudSyncingObjectCryptoStrategyV1_encryptData___block_invoke_16;
  v8[3] = &unk_27819A4A0;
  v6 = a1[6];
  v9 = v12;
  v10 = v6;
  v8[4] = a1[4];
  v7 = v12;
  [v4 encryptWithMainKeyOfObject:v7 dataToEncrypt:v5 failureHandler:v11 successHandler:v8];
}

void __52__ICCloudSyncingObjectCryptoStrategyV1_encryptData___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __52__ICCloudSyncingObjectCryptoStrategyV1_encryptData___block_invoke_2_cold_1(a1);
  }
}

void __52__ICCloudSyncingObjectCryptoStrategyV1_encryptData___block_invoke_16(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v12 = a3;
  v9 = [v7 encryptionObjectWithData:a2];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  [*(a1 + 40) setCryptoInitializationVector:v8];
  [*(a1 + 40) setCryptoTag:v12];
}

- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL___block_invoke;
  v11[3] = &unk_27819A4C8;
  v14 = &v15;
  v11[4] = self;
  v8 = lCopy;
  v12 = v8;
  v9 = rLCopy;
  v13 = v9;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __65__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL___block_invoke_2;
  v8[3] = &unk_278199A68;
  v9 = v3;
  v7 = v3;
  *(*(a1[7] + 8) + 24) = [v4 encryptFileFromURL:v5 toURL:v6 setTagAndIVHandler:v8];
}

void __65__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setCryptoTag:a2];
  [*(a1 + 32) setCryptoInitializationVector:v6];
}

- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL setTagAndIVHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL_setTagAndIVHandler___block_invoke;
  v15[3] = &unk_27819A518;
  v11 = lCopy;
  v16 = v11;
  selfCopy = self;
  v12 = rLCopy;
  v18 = v12;
  v13 = handlerCopy;
  v19 = v13;
  v20 = &v21;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v15];
  LOBYTE(self) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return self;
}

void __84__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL_setTagAndIVHandler___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__65;
  v36 = __Block_byref_object_dispose__65;
  v37 = 0;
  v4 = [v3 managedObjectContext];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __84__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL_setTagAndIVHandler___block_invoke_2;
  v29[3] = &unk_278194DE8;
  v31 = &v32;
  v5 = v3;
  v30 = v5;
  [v4 performBlockAndWait:v29];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__65;
  v27 = __Block_byref_object_dispose__65;
  v28 = 0;
  v6 = *(a1 + 32);
  obj = 0;
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 options:0 error:&obj];
  objc_storeStrong(&v28, obj);
  if (v7 && !v24[5])
  {
    v9 = objc_opt_class();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL_setTagAndIVHandler___block_invoke_19;
    v15[3] = &unk_27819A4F0;
    v19 = &v23;
    v16 = *(a1 + 48);
    v17 = v5;
    v20 = &v32;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v18 = v10;
    v21 = v11;
    [v9 encryptWithMainKeyOfObject:v17 dataToEncrypt:v7 failureHandler:0 successHandler:v15];

    v8 = v16;
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [v5 className];
      v13 = v33[5];
      v14 = v24[5];
      *buf = 138412802;
      v39 = v12;
      v40 = 2112;
      v41 = v13;
      v42 = 2112;
      v43 = v14;
      _os_log_error_impl(&dword_214D51000, v8, OS_LOG_TYPE_ERROR, "Error loading decrypted file for %@ %@: %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v32, 8);
}

void __84__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL_setTagAndIVHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __84__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL_setTagAndIVHandler___block_invoke_19(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
  v11 = a2;

  v12 = a1[4];
  v13 = *(a1[7] + 8);
  obj = *(v13 + 40);
  v14 = [v11 writeToURL:v12 options:1 error:&obj];

  objc_storeStrong((v13 + 40), obj);
  if (v14)
  {
    v15 = a1[6];
    if (v15)
    {
      (*(v15 + 16))(v15, v7, v8);
    }

    *(*(a1[9] + 8) + 24) = 1;
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __84__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL_setTagAndIVHandler___block_invoke_19_cold_1();
    }
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
  v4[2] = __70__ICCloudSyncingObjectCryptoStrategyV1_loadDecryptedValuesIfNecessary__block_invoke;
  v4[3] = &unk_2781959D8;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __70__ICCloudSyncingObjectCryptoStrategyV1_loadDecryptedValuesIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isAuthenticated])
  {
    if ([v3 needsToLoadDecryptedValues])
    {
      v4 = [v3 encryptedValuesJSON];
      if (v4)
      {
        v5 = *(a1 + 32);
        v6 = [v3 encryptedValuesJSON];
        [v5 decryptAndMergeEncryptedJSON:v6];

        [v3 setNeedsToLoadDecryptedValues:0];
        v7 = [v3 managedObjectContext];
        v8 = [v7 concurrencyType];

        if (v8 == 2)
        {
          [v3 mergeUnappliedEncryptedRecord];
        }
      }

      else
      {
        v11 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v3 shortLoggingDescription];
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_INFO, "Cannot load decrypted values because encrypted values JSON is nil — succeeding {object: %@}", &v13, 0xCu);
        }

        [v3 setNeedsToLoadDecryptedValues:0];
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v3 shortLoggingDescription];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Cannot load decrypted values because object is not authenticated — failing {object: %@}", &v13, 0xCu);
    }
  }
}

- (id)decryptData:(id)data
{
  dataCopy = data;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__65;
  v16 = __Block_byref_object_dispose__65;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ICCloudSyncingObjectCryptoStrategyV1_decryptData___block_invoke;
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

void __52__ICCloudSyncingObjectCryptoStrategyV1_decryptData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__65;
  v17 = __Block_byref_object_dispose__65;
  v18 = 0;
  v4 = [v3 managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ICCloudSyncingObjectCryptoStrategyV1_decryptData___block_invoke_2;
  v9[3] = &unk_278195740;
  v12 = &v13;
  v10 = *(a1 + 32);
  v5 = v3;
  v11 = v5;
  [v4 performBlockAndWait:v9];

  v6 = [objc_opt_class() decryptWithMainKeyOfObject:v5 encryptedData:v14[5] fallbackAttemptSuccessCleanupHandler:0];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  _Block_object_dispose(&v13, 8);
}

void __52__ICCloudSyncingObjectCryptoStrategyV1_decryptData___block_invoke_2(uint64_t a1)
{
  v2 = [ICEncryptedData alloc];
  v3 = *(a1 + 32);
  v8 = [*(a1 + 40) cryptoTag];
  v4 = [*(a1 + 40) cryptoInitializationVector];
  v5 = [(ICEncryptedData *)v2 initWithData:v3 tag:v8 initializationVector:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)decryptedDataFromFileURL:(id)l
{
  lCopy = l;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__65;
  v15 = __Block_byref_object_dispose__65;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__ICCloudSyncingObjectCryptoStrategyV1_decryptedDataFromFileURL___block_invoke;
  v8[3] = &unk_2781985D0;
  v10 = &v11;
  v8[4] = self;
  v5 = lCopy;
  v9 = v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __65__ICCloudSyncingObjectCryptoStrategyV1_decryptedDataFromFileURL___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ICCloudSyncingObjectCryptoStrategyV1_decryptedDataFromFileURL___block_invoke_2;
  v11[3] = &unk_278194BF0;
  v5 = a1[4];
  v6 = a1[5];
  v12 = v3;
  v13 = v5;
  v14 = v6;
  v7 = v3;
  v8 = [v4 decryptWithMainKeyOfObject:v7 encryptedDataPreparationBlock:v11 fallbackAttemptSuccessCleanupHandler:0];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

ICEncryptedData *__65__ICCloudSyncingObjectCryptoStrategyV1_decryptedDataFromFileURL___block_invoke_2(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__65;
  v38 = __Block_byref_object_dispose__65;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__65;
  v32 = __Block_byref_object_dispose__65;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__65;
  v26 = __Block_byref_object_dispose__65;
  v27 = 0;
  v2 = [*(a1 + 32) managedObjectContext];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__ICCloudSyncingObjectCryptoStrategyV1_decryptedDataFromFileURL___block_invoke_3;
  v16[3] = &unk_27819A540;
  v19 = &v34;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v17 = v3;
  v18 = v4;
  v20 = &v28;
  v21 = &v22;
  [v2 performBlockAndWait:v16];

  v5 = *(a1 + 48);
  v15 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:0 error:&v15];
  v7 = v15;
  v8 = v7;
  if (!v6 || v7)
  {

    v11 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) className];
      v14 = v35[5];
      *buf = 138412802;
      v41 = v13;
      v42 = 2112;
      v43 = v14;
      v44 = 2112;
      v45 = v8;
      _os_log_error_impl(&dword_214D51000, v11, OS_LOG_TYPE_ERROR, "Error loading encrypted file for %@ %@: %@", buf, 0x20u);
    }

    v6 = 0;
    v10 = 0;
  }

  else
  {
    v9 = [ICEncryptedData alloc];
    v10 = [(ICEncryptedData *)v9 initWithData:v6 tag:v23[5] initializationVector:v29[5]];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);

  return v10;
}

void __65__ICCloudSyncingObjectCryptoStrategyV1_decryptedDataFromFileURL___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 40) fileURLEncryptionCryptoInitialzationVector];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 40) fileURLEncryptionCryptoTag];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (id)decryptWithMainKeyOfObject:(id)object encryptedData:(id)data fallbackAttemptSuccessCleanupHandler:(id)handler
{
  dataCopy = data;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __118__ICCloudSyncingObjectCryptoStrategyV1_decryptWithMainKeyOfObject_encryptedData_fallbackAttemptSuccessCleanupHandler___block_invoke;
  v12[3] = &unk_27819A568;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = [self decryptWithMainKeyOfObject:object encryptedDataPreparationBlock:v12 fallbackAttemptSuccessCleanupHandler:handler];

  return v10;
}

+ (id)decryptWithMainKeyOfObject:(id)object encryptedDataPreparationBlock:(id)block fallbackAttemptSuccessCleanupHandler:(id)handler
{
  v122 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  blockCopy = block;
  handlerCopy = handler;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__65;
  v108 = __Block_byref_object_dispose__65;
  v109 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__65;
  v102 = __Block_byref_object_dispose__65;
  v103 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  managedObjectContext = [objectCopy managedObjectContext];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __134__ICCloudSyncingObjectCryptoStrategyV1_decryptWithMainKeyOfObject_encryptedDataPreparationBlock_fallbackAttemptSuccessCleanupHandler___block_invoke;
  v89[3] = &unk_278198478;
  v91 = &v98;
  v11 = objectCopy;
  v90 = v11;
  v92 = &v104;
  v93 = &v94;
  [managedObjectContext performBlockAndWait:v89];

  if (*(v95 + 24) == 1)
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v11 className];
      objc_claimAutoreleasedReturnValue();
      +[ICCloudSyncingObjectCryptoStrategyV1 decryptWithMainKeyOfObject:encryptedDataPreparationBlock:fallbackAttemptSuccessCleanupHandler:];
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICCloudSyncingObjectCryptoStrategyV1 decryptWithMainKeyOfObject:encryptedDataPreparationBlock:fallbackAttemptSuccessCleanupHandler:]" simulateCrash:1 showAlert:1 format:@"Attempt to decrypt a V1 unsupported object"];
    v13 = 0;
    goto LABEL_5;
  }

  if (!v99[5])
  {
    v27 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[ICCloudSyncingObjectCryptoStrategyV1 decryptWithMainKeyOfObject:encryptedDataPreparationBlock:fallbackAttemptSuccessCleanupHandler:];
    }

LABEL_37:
    v13 = 0;
    goto LABEL_38;
  }

  v13 = blockCopy[2](blockCopy);
  if (![v13 isValid])
  {
    if (v13)
    {
      if ([v13 isValid])
      {
LABEL_5:
        fallbackTag = 0;
        goto LABEL_40;
      }

      v27 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[ICCloudSyncingObjectCryptoStrategyV1 decryptWithMainKeyOfObject:encryptedDataPreparationBlock:fallbackAttemptSuccessCleanupHandler:];
      }

      goto LABEL_38;
    }

    v27 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[ICCloudSyncingObjectCryptoStrategyV1 decryptWithMainKeyOfObject:encryptedDataPreparationBlock:fallbackAttemptSuccessCleanupHandler:];
    }

    goto LABEL_37;
  }

  v15 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v81 = handlerCopy;
    v16 = v105[5];
    v17 = [v13 tag];
    v18 = [v17 hash];
    initializationVector = [v13 initializationVector];
    v20 = [initializationVector hash];
    data = [v13 data];
    v22 = [data hash];
    *buf = 138413058;
    v111 = v16;
    v112 = 2048;
    v113 = v18;
    v114 = 2048;
    v115 = v20;
    v116 = 2048;
    v117 = v22;
    _os_log_impl(&dword_214D51000, v15, OS_LOG_TYPE_INFO, "Decrypting %@ tag.hash=%lu initializationVector.hash=%lu encryptedData.hash=%lu", buf, 0x2Au);

    handlerCopy = v81;
  }

  data2 = [v13 data];
  v24 = v99[5];
  v25 = [v13 tag];
  initializationVector2 = [v13 initializationVector];
  v88 = 0;
  fallbackTag = [ICCipherV1 decryptData:data2 withKey:v24 tag:v25 initializationVector:initializationVector2 error:&v88];
  v27 = v88;

  if (fallbackTag && !v27)
  {
    v27 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = handlerCopy;
      v74 = v105[5];
      v82 = [v13 tag];
      v72 = [v82 hash];
      initializationVector3 = [v13 initializationVector];
      v29 = [initializationVector3 hash];
      data3 = [v13 data];
      v31 = [data3 length];
      v32 = [fallbackTag length];
      v33 = [fallbackTag hash];
      *buf = 138413570;
      v111 = v74;
      v112 = 2048;
      v113 = v72;
      v114 = 2048;
      v115 = v29;
      v116 = 2048;
      v117 = v31;
      v118 = 2048;
      v119 = v32;
      v120 = 2048;
      v121 = v33;
      _os_log_impl(&dword_214D51000, v27, OS_LOG_TYPE_INFO, "Decrypted %@ tag.hash=%lu initializationVector.hash=%lu. encryptedData.length=%lu decryptedData.length=%lu decryptedData.hash=%lu", buf, 0x3Eu);

      handlerCopy = v28;
    }

    goto LABEL_39;
  }

  v34 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v85 = handlerCopy;
    v60 = v105[5];
    v79 = [v13 tag];
    v61 = [v79 hash];
    initializationVector4 = [v13 initializationVector];
    v63 = [initializationVector4 hash];
    data4 = [v13 data];
    v65 = [data4 length];
    *buf = 138413314;
    v111 = v60;
    v112 = 2048;
    v113 = v61;
    v114 = 2048;
    v115 = v63;
    v116 = 2048;
    v117 = v65;
    v118 = 2112;
    v119 = v27;
    _os_log_error_impl(&dword_214D51000, v34, OS_LOG_TYPE_ERROR, "Failed to decrypt %@ with tag.hash=%lu initializationVector.hash=%lu. encryptedData.length=%lu error=%@", buf, 0x34u);

    handlerCopy = v85;
  }

  fallbackTag = [v13 fallbackTag];
  if (!fallbackTag)
  {
    goto LABEL_39;
  }

  fallbackInitializationVector = [v13 fallbackInitializationVector];
  v36 = fallbackInitializationVector == 0;

  if (v36)
  {
LABEL_38:
    fallbackTag = 0;
LABEL_39:

    goto LABEL_40;
  }

  v37 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    [ICCloudSyncingObjectCryptoStrategyV1 decryptWithMainKeyOfObject:v37 encryptedDataPreparationBlock:? fallbackAttemptSuccessCleanupHandler:?];
  }

  v38 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v83 = handlerCopy;
    v39 = v105[5];
    fallbackTag2 = [v13 fallbackTag];
    v40 = [fallbackTag2 hash];
    fallbackInitializationVector2 = [v13 fallbackInitializationVector];
    v42 = [fallbackInitializationVector2 hash];
    data5 = [v13 data];
    v44 = [data5 hash];
    *buf = 138413058;
    v111 = v39;
    v112 = 2048;
    v113 = v40;
    v114 = 2048;
    v115 = v42;
    v116 = 2048;
    v117 = v44;
    _os_log_impl(&dword_214D51000, v38, OS_LOG_TYPE_INFO, "Decrypting %@ fallbackTag.hash=%lu fallbackInitializationVector.hash=%lu encryptedData.hash=%lu", buf, 0x2Au);

    handlerCopy = v83;
  }

  data6 = [v13 data];
  v46 = v99[5];
  fallbackTag3 = [v13 fallbackTag];
  fallbackInitializationVector3 = [v13 fallbackInitializationVector];
  v87 = 0;
  fallbackTag = [ICCipherV1 decryptData:data6 withKey:v46 tag:fallbackTag3 initializationVector:fallbackInitializationVector3 error:&v87];
  v27 = v87;

  if (!fallbackTag || v27)
  {

    v59 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v86 = handlerCopy;
      v66 = v105[5];
      v80 = [v13 tag];
      v67 = [v80 hash];
      initializationVector5 = [v13 initializationVector];
      v69 = [initializationVector5 hash];
      data7 = [v13 data];
      v71 = [data7 length];
      *buf = 138413314;
      v111 = v66;
      v112 = 2048;
      v113 = v67;
      v114 = 2048;
      v115 = v69;
      v116 = 2048;
      v117 = v71;
      v118 = 2112;
      v119 = v27;
      _os_log_error_impl(&dword_214D51000, v59, OS_LOG_TYPE_ERROR, "Failed to decrypt %@ with fallbackTag.hash=%lu fallbackInitializationVector.hash=%lu. encryptedData.length=%lu error=%@", buf, 0x34u);

      handlerCopy = v86;
    }

    goto LABEL_38;
  }

  v49 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = handlerCopy;
    v75 = v105[5];
    fallbackTag4 = [v13 fallbackTag];
    v73 = [fallbackTag4 hash];
    fallbackInitializationVector4 = [v13 fallbackInitializationVector];
    v51 = [fallbackInitializationVector4 hash];
    data8 = [v13 data];
    v53 = [data8 length];
    v54 = [fallbackTag length];
    v55 = [fallbackTag hash];
    *buf = 138413570;
    v111 = v75;
    v112 = 2048;
    v113 = v73;
    v114 = 2048;
    v115 = v51;
    v116 = 2048;
    v117 = v53;
    v118 = 2048;
    v119 = v54;
    v120 = 2048;
    v121 = v55;
    _os_log_impl(&dword_214D51000, v49, OS_LOG_TYPE_INFO, "Decrypted %@ fallbackTag.hash=%lu fallbackInitializationVector.hash=%lu. encryptedData.length=%lu decryptedData.length=%lu decryptedData.hash=%lu", buf, 0x3Eu);

    handlerCopy = v50;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_40:
  v56 = v90;
  v57 = fallbackTag;

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);

  _Block_object_dispose(&v104, 8);

  return v57;
}

uint64_t __134__ICCloudSyncingObjectCryptoStrategyV1_decryptWithMainKeyOfObject_encryptedDataPreparationBlock_fallbackAttemptSuccessCleanupHandler___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) cryptoStrategy];
  v3 = ICCheckedDynamicCast();
  v4 = [v3 unwrappedKey];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) shortLoggingDescription];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  result = [*(a1 + 32) isUnsupported];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (id)encryptSidecarData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__65;
  v15 = __Block_byref_object_dispose__65;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke;
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

void __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isAuthenticated])
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke_25;
    v8[3] = &unk_278194B00;
    v9 = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke_2;
    v7[3] = &unk_27819A590;
    v7[4] = *(a1 + 48);
    [v4 encryptWithMainKeyOfObject:v9 dataToEncrypt:v5 failureHandler:v8 successHandler:v7];
    v6 = v9;
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke_cold_1();
    }
  }
}

uint64_t __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke_25()
{
  v0 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke_25_cold_1();
  }

  return [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObjectCryptoStrategyV1 encryptSidecarData:]_block_invoke" simulateCrash:1 showAlert:1 format:@"Error encrypting V1 sidecar data"];
}

void __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277CBEB28];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v14 = objc_alloc_init(v7);
  [v14 appendData:v9];

  [v14 appendData:v8];
  [v14 appendData:v10];

  v11 = [v14 copy];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (id)decryptSidecarData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__65;
  v15 = __Block_byref_object_dispose__65;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ICCloudSyncingObjectCryptoStrategyV1_decryptSidecarData___block_invoke;
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

void __59__ICCloudSyncingObjectCryptoStrategyV1_decryptSidecarData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isAuthenticated])
  {
    if ([*(a1 + 40) length] >= 0x20)
    {
      v5 = objc_opt_class();
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__ICCloudSyncingObjectCryptoStrategyV1_decryptSidecarData___block_invoke_30;
      v9[3] = &unk_27819A5B8;
      v10 = *(a1 + 40);
      v11 = 32;
      v6 = [v5 decryptWithMainKeyOfObject:v3 encryptedDataPreparationBlock:v9 fallbackAttemptSuccessCleanupHandler:0];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v4 = v10;
      goto LABEL_9;
    }

    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__ICCloudSyncingObjectCryptoStrategyV1_decryptSidecarData___block_invoke_cold_2();
    }
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __59__ICCloudSyncingObjectCryptoStrategyV1_decryptSidecarData___block_invoke_cold_1();
    }
  }

LABEL_9:
}

ICEncryptedData *__59__ICCloudSyncingObjectCryptoStrategyV1_decryptSidecarData___block_invoke_30(uint64_t a1)
{
  v2 = [*(a1 + 32) subdataWithRange:{0, 16}];
  v3 = [*(a1 + 32) subdataWithRange:{16, 16}];
  v4 = [*(a1 + 32) subdataWithRange:{32, objc_msgSend(*(a1 + 32), "length") - *(a1 + 40)}];
  v5 = [[ICEncryptedData alloc] initWithData:v4 tag:v2 initializationVector:v3];

  return v5;
}

- (BOOL)encryptSidecarFileFromURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CCA9E8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke;
  v13[3] = &unk_27819A608;
  v9 = v8;
  v14 = v9;
  v10 = lCopy;
  v15 = v10;
  selfCopy = self;
  v11 = rLCopy;
  v17 = v11;
  v18 = &v19;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v13];
  LOBYTE(self) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return self;
}

void __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_2;
  v12[3] = &unk_27819A5E0;
  v6 = a1[7];
  v12[4] = a1[6];
  v7 = v6;
  v8 = a1[8];
  v13 = v7;
  v15 = v8;
  v9 = v3;
  v14 = v9;
  [v4 coordinateReadingItemAtURL:v5 options:1 error:&v16 byAccessor:v12];
  v10 = v16;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_cold_1();
    }
  }
}

void __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a2 options:0 error:&v12];
  v4 = v12;
  if (![v3 length])
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_2_cold_3();
    }

    goto LABEL_11;
  }

  v5 = [*(a1 + 32) encryptSidecarData:v3];
  if (![v5 length])
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_2_cold_2();
    }

LABEL_11:
    v8 = v4;
    goto LABEL_15;
  }

  v6 = *(a1 + 40);
  v11 = v4;
  v7 = [v5 writeToURL:v6 options:1 error:&v11];
  v8 = v11;

  if (v7)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_2_cold_1();
    }
  }

LABEL_15:
}

- (NSData)fileURLEncryptionCryptoTag
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__65;
  v9 = __Block_byref_object_dispose__65;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__ICCloudSyncingObjectCryptoStrategyV1_fileURLEncryptionCryptoTag__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __66__ICCloudSyncingObjectCryptoStrategyV1_fileURLEncryptionCryptoTag__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cryptoTag];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSData)fileURLEncryptionCryptoInitialzationVector
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__65;
  v9 = __Block_byref_object_dispose__65;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__ICCloudSyncingObjectCryptoStrategyV1_fileURLEncryptionCryptoInitialzationVector__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __82__ICCloudSyncingObjectCryptoStrategyV1_fileURLEncryptionCryptoInitialzationVector__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cryptoInitializationVector];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)encryptWithMainKeyOfObject:(id)object dataToEncrypt:(id)encrypt failureHandler:(id)handler successHandler:(id)successHandler
{
  encryptCopy = encrypt;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __111__ICCloudSyncingObjectCryptoStrategyV1_encryptWithMainKeyOfObject_dataToEncrypt_failureHandler_successHandler___block_invoke;
  v12[3] = &unk_27819A630;
  v13 = encryptCopy;
  v11 = encryptCopy;
  [self encryptWithMainKeyOfObject:object dataPreparationBlock:v12 failureHandler:handler successHandler:successHandler];
}

+ (void)encryptWithMainKeyOfObject:(id)object dataPreparationBlock:(id)block failureHandler:(id)handler successHandler:(id)successHandler
{
  v57 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  blockCopy = block;
  handlerCopy = handler;
  successHandlerCopy = successHandler;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__65;
  v49 = __Block_byref_object_dispose__65;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__65;
  v43 = __Block_byref_object_dispose__65;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  managedObjectContext = [objectCopy managedObjectContext];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __118__ICCloudSyncingObjectCryptoStrategyV1_encryptWithMainKeyOfObject_dataPreparationBlock_failureHandler_successHandler___block_invoke;
  v30[3] = &unk_278198478;
  v32 = &v39;
  v14 = objectCopy;
  v31 = v14;
  v33 = &v45;
  v34 = &v35;
  [managedObjectContext performBlockAndWait:v30];

  if (*(v36 + 24) == 1)
  {
    v15 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v14 className];
      objc_claimAutoreleasedReturnValue();
      +[ICCloudSyncingObjectCryptoStrategyV1 encryptWithMainKeyOfObject:dataPreparationBlock:failureHandler:successHandler:];
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICCloudSyncingObjectCryptoStrategyV1 encryptWithMainKeyOfObject:dataPreparationBlock:failureHandler:successHandler:]" simulateCrash:1 showAlert:1 format:@"Attempt to encrypt a V1 unsupported object"];
    goto LABEL_22;
  }

  if (!v40[5])
  {
    v22 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v14 className];
      objc_claimAutoreleasedReturnValue();
      +[ICCloudSyncingObjectCryptoStrategyV1 encryptWithMainKeyOfObject:dataPreparationBlock:failureHandler:successHandler:];
    }

    v16 = v22;
    goto LABEL_21;
  }

  v16 = blockCopy[2](blockCopy);
  if (!v16)
  {
    v20 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [v14 className];
      objc_claimAutoreleasedReturnValue();
      +[ICCloudSyncingObjectCryptoStrategyV1 encryptWithMainKeyOfObject:dataPreparationBlock:failureHandler:successHandler:];
    }

    v22 = v20;
    goto LABEL_20;
  }

  v17 = v40[5];
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v18 = [ICCipherV1 encryptData:v16 withKey:v17 tag:&v29 initializationVector:&v28 error:&v27];
  v19 = v29;
  v20 = v28;
  v21 = v27;
  v22 = v21;
  if (!v18 || v21)
  {
    v23 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      className = [v14 className];
      v25 = v46[5];
      *buf = 138412802;
      v52 = className;
      v53 = 2112;
      v54 = v25;
      v55 = 2112;
      v56 = v22;
      v26 = className;
      _os_log_error_impl(&dword_214D51000, v23, OS_LOG_TYPE_ERROR, "Error encrypting data for %@ %@: %@", buf, 0x20u);
    }

LABEL_20:
LABEL_21:

LABEL_22:
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_25;
  }

  if (successHandlerCopy)
  {
    successHandlerCopy[2](successHandlerCopy, v18, v19, v20);
  }

LABEL_25:

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
}

uint64_t __118__ICCloudSyncingObjectCryptoStrategyV1_encryptWithMainKeyOfObject_dataPreparationBlock_failureHandler_successHandler___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) cryptoStrategy];
  v3 = ICCheckedDynamicCast();
  v4 = [v3 unwrappedKey];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) identifier];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  result = [*(a1 + 32) isUnsupported];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)mergeEncryptedDataFromRecord:(id)record
{
  recordCopy = record;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ICCloudSyncingObjectCryptoStrategyV1_mergeEncryptedDataFromRecord___block_invoke;
  v7[3] = &unk_2781959B0;
  v7[4] = self;
  v5 = recordCopy;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __69__ICCloudSyncingObjectCryptoStrategyV1_mergeEncryptedDataFromRecord___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isAuthenticated])
  {
    v4 = [*(a1 + 40) ic_inlineableDataAssetForKeyPrefix:@"EncryptedValues"];
    [*(a1 + 32) loadDecryptedValuesIfNecessary];
    [v3 mergeCryptoTagAndInitializationVectorFromRecord:*(a1 + 40)];
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3 className];
      v7 = [v3 identifier];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Merging encrypted values from cloud for %@ (%@)", &v8, 0x16u);
    }

    [*(a1 + 32) decryptAndMergeEncryptedJSON:v4];
    if ([*(a1 + 32) saveEncryptedJSON])
    {
LABEL_6:
      [v3 setUnappliedEncryptedRecord:0];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    [v3 setUnappliedEncryptedRecord:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)decryptAndMergeEncryptedJSON:(id)n
{
  nCopy = n;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ICCloudSyncingObjectCryptoStrategyV1_decryptAndMergeEncryptedJSON___block_invoke;
  v6[3] = &unk_278195A50;
  v6[4] = self;
  v7 = nCopy;
  v5 = nCopy;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v6];
}

void __69__ICCloudSyncingObjectCryptoStrategyV1_decryptAndMergeEncryptedJSON___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 className];
    v6 = [v3 identifier];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Merging encrypted JSON for %@ (%@)", &v9, 0x16u);
  }

  v7 = [*(a1 + 32) decryptData:*(a1 + 40)];
  if (v7)
  {
    [v3 deserializeAndMergeValues:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__ICCloudSyncingObjectCryptoStrategyV1_decryptAndMergeEncryptedJSON___block_invoke_cold_1(v3, v8);
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObjectCryptoStrategyV1 decryptAndMergeEncryptedJSON:]_block_invoke" simulateCrash:1 showAlert:1 format:@"Error decrypting JSON"];
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
  v7[2] = __67__ICCloudSyncingObjectCryptoStrategyV1_recordHasChangedPassphrase___block_invoke;
  v7[3] = &unk_2781959D8;
  v5 = passphraseCopy;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __67__ICCloudSyncingObjectCryptoStrategyV1_recordHasChangedPassphrase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"CryptoWrappedKey"];
  v14 = ICCheckedDynamicCast();

  v5 = [v3 cryptoWrappedKey];

  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  if (v6 == v14)
  {
    v9 = 0;
  }

  else
  {
    v9 = v14;
  }

  v10 = v9;
  v11 = v10;
  if (v8 | v10)
  {
    if (v8)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = [v8 isEqual:v10] ^ 1;
    }
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v13;
}

- (id)unwrappedKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__65;
  v9 = __Block_byref_object_dispose__65;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__ICCloudSyncingObjectCryptoStrategyV1_unwrappedKey__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __52__ICCloudSyncingObjectCryptoStrategyV1_unwrappedKey__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ICAuthenticationState sharedState];
  v5 = [v4 cachedMainKeyForObject:v3];

  if (!v5)
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v3 className];
      v14 = [v3 identifier];
      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Could not get main key to decrypt %@ (%@)", buf, 0x16u);
    }

    v9 = v12;
    goto LABEL_9;
  }

  v6 = [v3 cryptoWrappedKey];
  v7 = [v5 keyData];
  v15 = 0;
  v8 = [ICCipherV1 unwrapKey:v6 withWrapper:v7 error:&v15];
  v9 = v15;
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __52__ICCloudSyncingObjectCryptoStrategyV1_unwrappedKey__block_invoke_cold_1();
    }

LABEL_9:
  }
}

- (BOOL)mainKeyDecryptsPrimaryData:(id)data
{
  dataCopy = data;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ICCloudSyncingObjectCryptoStrategyV1_mainKeyDecryptsPrimaryData___block_invoke;
  v7[3] = &unk_2781985D0;
  v9 = &v10;
  v7[4] = self;
  v5 = dataCopy;
  v8 = v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __67__ICCloudSyncingObjectCryptoStrategyV1_mainKeyDecryptsPrimaryData___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) canMainKey:*(a1 + 40) decryptObject:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)canMainKey:(id)key decryptObject:(id)object
{
  keyCopy = key;
  objectCopy = object;
  metadata = [keyCopy metadata];
  cipherVersion = [metadata cipherVersion];

  if (cipherVersion)
  {
    v9 = 0;
  }

  else
  {
    objc_opt_class();
    v10 = ICDynamicCast();
    cryptoVerifier = [v10 cryptoVerifier];
    if (cryptoVerifier)
    {
      cryptoWrappedKey = cryptoVerifier;
    }

    else
    {
      cryptoWrappedKey = [objectCopy cryptoWrappedKey];

      if (!cryptoWrappedKey)
      {
        v9 = 1;
        goto LABEL_18;
      }
    }

    keyData = [keyCopy keyData];
    v19 = 0;
    v14 = [ICCipherV1 unwrapKey:cryptoWrappedKey withWrapper:keyData error:&v19];
    v15 = v19;

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 == 0;
    }

    v9 = !v16;
    if (v16)
    {
      v17 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudSyncingObjectCryptoStrategyV1 canMainKey:decryptObject:];
      }
    }
  }

LABEL_18:

  return v9;
}

- (void)rewrapKeyWithNewMainKey:(id)key salt:(id)salt iterationCount:(unint64_t)count hint:(id)hint
{
  keyCopy = key;
  saltCopy = salt;
  hintCopy = hint;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__ICCloudSyncingObjectCryptoStrategyV1_rewrapKeyWithNewMainKey_salt_iterationCount_hint___block_invoke;
  v16[3] = &unk_27819A658;
  v16[4] = self;
  v17 = keyCopy;
  v19 = hintCopy;
  countCopy = count;
  v18 = saltCopy;
  v13 = hintCopy;
  v14 = saltCopy;
  v15 = keyCopy;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v16];
}

void __89__ICCloudSyncingObjectCryptoStrategyV1_rewrapKeyWithNewMainKey_salt_iterationCount_hint___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) unwrappedKey];
  if (v4)
  {
    v5 = *(a1 + 40);
    v21 = 0;
    v6 = [ICCipherV1 wrapKey:v4 withWrapper:v5 error:&v21];
    v7 = v21;
    if (v6)
    {
      [v3 setCryptoIterationCount:*(a1 + 64)];
      [v3 setCryptoSalt:*(a1 + 48)];
      [v3 setCryptoWrappedKey:v6];
      [v3 setPasswordHint:*(a1 + 56)];
      [v3 updateChangeCountWithReason:@"Rewrapped object"];
      v8 = [v3 identifier];
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      v11 = [v3 passwordHint];
      v12 = [ICEncryptionMetadata makeForV1CipherWithObjectIdentifier:v8 salt:v9 iterationCount:v10 hint:v11];

      if (v12)
      {
        v13 = [[ICEncryptionKey alloc] initWithKeyData:*(a1 + 40) metadata:v12];
      }

      else
      {
        v13 = 0;
      }

      v20 = +[ICAuthenticationState sharedState];
      [v20 setCachedMainKey:v13 forObject:v3];
    }

    else
    {
      v13 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = v17;
        v19 = [v3 identifier];
        *buf = 138412802;
        v23 = v17;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_214D51000, &v13->super, OS_LOG_TYPE_INFO, "Could not re-wrap key for %@ (%@, %@)", buf, 0x20u);
      }

      v12 = v13;
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [v3 identifier];
      *buf = 138412546;
      v23 = v14;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Could not unwrap key for %@ (%@)", buf, 0x16u);
    }

    v7 = v6;
  }
}

- (id)encryptedData:(id)data rewrappedWithMainKey:(id)key
{
  dataCopy = data;
  if ([(ICCloudSyncingObjectCryptoStrategyV1 *)self isAuthenticated])
  {
    v6 = dataCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)rewrapWithMainKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObjectCryptoStrategyV1 *)self rewrapWithMainKey:v5];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__ICCloudSyncingObjectCryptoStrategyV1_rewrapWithMainKey___block_invoke;
  v13[3] = &unk_2781959B0;
  v13[4] = self;
  v6 = keyCopy;
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
    v25 = "[ICCloudSyncingObjectCryptoStrategyV1 rewrapWithMainKey:]";
    v26 = 1024;
    v27 = 939;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Rewrapped object with main key {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __58__ICCloudSyncingObjectCryptoStrategyV1_rewrapWithMainKey___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isUnsupported])
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 shortLoggingDescription];
      *buf = 138412290;
      v19 = v5;
      v6 = "Not rewrapping object because it is unsupported {object: %@}";
LABEL_7:
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, v6, buf, 0xCu);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if ([v3 needsInitialFetchFromCloud])
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 shortLoggingDescription];
      *buf = 138412290;
      v19 = v5;
      v6 = "Not rewrapping object because it needs initial fetch {object: %@}";
      goto LABEL_7;
    }

LABEL_14:
    v7 = v4;
    goto LABEL_15;
  }

  if (([v3 mergeUnappliedEncryptedRecord] & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__ICCloudSyncingObjectCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_1(v3);
    }

    goto LABEL_14;
  }

  v7 = [*(a1 + 32) unwrappedKey];
  if (v7)
  {
    v8 = [*(a1 + 40) keyData];
    v17 = 0;
    v9 = [ICCipherV1 wrapKey:v7 withWrapper:v8 error:&v17];
    v4 = v17;

    if (v9)
    {
      v10 = [*(a1 + 40) metadata];
      [v3 setCryptoIterationCount:{objc_msgSend(v10, "passphraseIterationCount")}];

      v11 = [*(a1 + 40) metadata];
      v12 = [v11 passphraseSalt];
      [v3 setCryptoSalt:v12];

      v13 = [*(a1 + 40) metadata];
      v14 = [v13 passphraseHint];
      [v3 setPasswordHint:v14];

      [v3 setCryptoWrappedKey:v9];
      [v3 updateChangeCountWithReason:@"Rewrapped object"];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v16 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __58__ICCloudSyncingObjectCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_2();
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = [v3 shortLoggingDescription];
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Not rewrapping data because unwrapped key is missing {object: %@}", buf, 0xCu);
    }

    v4 = v9;
  }

LABEL_15:
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
  v7[2] = __59__ICCloudSyncingObjectCryptoStrategyV1_hasSameKeyAsObject___block_invoke;
  v7[3] = &unk_278195960;
  v9 = &v10;
  v5 = objectCopy;
  v8 = v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __59__ICCloudSyncingObjectCryptoStrategyV1_hasSameKeyAsObject___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 cryptoSalt];
  v4 = [*(a1 + 32) cryptoSalt];
  if ([v3 isEqualToData:v4])
  {
    v5 = [v7 cryptoIterationCount];
    v6 = v5 == [*(a1 + 32) cryptoIterationCount];
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

- (void)rewrapAndDivergeKeyUsingPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__ICCloudSyncingObjectCryptoStrategyV1_rewrapAndDivergeKeyUsingPassphrase___block_invoke;
  v6[3] = &unk_278195A50;
  v7 = passphraseCopy;
  selfCopy = self;
  v5 = passphraseCopy;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v6];
}

void __75__ICCloudSyncingObjectCryptoStrategyV1_rewrapAndDivergeKeyUsingPassphrase___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 shortLoggingDescription];
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Diverging key for object: %@", buf, 0xCu);
  }

  v23 = 0;
  v6 = [MEMORY[0x277CBEA90] ic_random128BitData:&v23];
  v7 = v23;
  if (v6)
  {
    v8 = *(a1 + 32);
    v22 = v7;
    v9 = [ICCipherV1 keyForPassphrase:v8 salt:v6 iterationCount:20000 error:&v22];
    v10 = v22;

    if (v9)
    {
      v21 = v10;
      v11 = [MEMORY[0x277CBEA90] ic_random128BitData:&v21];
      v12 = v21;

      if (v11)
      {
        v20 = v12;
        v13 = [ICCipherV1 wrapKey:v11 withWrapper:v9 error:&v20];
        v10 = v20;

        if (v13)
        {
          v14 = *(a1 + 40);
          v15 = [v3 passwordHint];
          [v14 rewrapKeyWithNewMainKey:v9 salt:v6 iterationCount:20000 hint:v15];

          [v3 updateChangeCountWithReason:@"Diverged object"];
          v16 = [v3 managedObjectContext];
          v19 = 0;
          LOBYTE(v15) = [v16 save:&v19];
          v17 = v19;

          if ((v15 & 1) == 0)
          {
            v18 = os_log_create("com.apple.notes", "Crypto");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              __75__ICCloudSyncingObjectCryptoStrategyV1_rewrapAndDivergeKeyUsingPassphrase___block_invoke_cold_1();
            }
          }
        }

        else
        {
          v17 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __75__ICCloudSyncingObjectCryptoStrategyV1_rewrapAndDivergeKeyUsingPassphrase___block_invoke_cold_2();
          }
        }
      }

      else
      {
        v13 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __75__ICCloudSyncingObjectCryptoStrategyV1_rewrapAndDivergeKeyUsingPassphrase___block_invoke_cold_3();
        }

        v10 = v12;
      }
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __75__ICCloudSyncingObjectCryptoStrategyV1_rewrapAndDivergeKeyUsingPassphrase___block_invoke_cold_4();
      }
    }

    v7 = v10;
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __75__ICCloudSyncingObjectCryptoStrategyV1_rewrapAndDivergeKeyUsingPassphrase___block_invoke_cold_5();
    }
  }
}

- (BOOL)hasPassphraseSet
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__ICCloudSyncingObjectCryptoStrategyV1_hasPassphraseSet__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __56__ICCloudSyncingObjectCryptoStrategyV1_hasPassphraseSet__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 cryptoSalt];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v5 cryptoIterationCount] != 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

- (NSString)passphraseHint
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__65;
  v9 = __Block_byref_object_dispose__65;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__ICCloudSyncingObjectCryptoStrategyV1_passphraseHint__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __54__ICCloudSyncingObjectCryptoStrategyV1_passphraseHint__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = NSStringFromSelector(sel_passwordHint);
  v4 = [v3 primitiveValueForKey:v7];

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)isAuthenticated
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ICCloudSyncingObjectCryptoStrategyV1_isAuthenticated__block_invoke;
  v4[3] = &unk_278195960;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __55__ICCloudSyncingObjectCryptoStrategyV1_isAuthenticated__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) hasPassphraseSet])
  {
    v3 = +[ICAuthenticationState sharedState];
    v4 = [v3 cachedMainKeyForObject:v5];
    *(*(*(a1 + 40) + 8) + 24) = v4 != 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (id)mainKeyForPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__65;
  v15 = __Block_byref_object_dispose__65;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__ICCloudSyncingObjectCryptoStrategyV1_mainKeyForPassphrase___block_invoke;
  v8[3] = &unk_2781959D8;
  v5 = passphraseCopy;
  v9 = v5;
  v10 = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __61__ICCloudSyncingObjectCryptoStrategyV1_mainKeyForPassphrase___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 cryptoSalt];

  if (v4)
  {
    v5 = [v3 identifier];
    v6 = [v3 cryptoSalt];
    v7 = [v3 cryptoIterationCount];
    v8 = [v3 passwordHint];
    v9 = [ICEncryptionMetadata makeForV1CipherWithObjectIdentifier:v5 salt:v6 iterationCount:v7 hint:v8];

    if (!v9)
    {
      v12 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __61__ICCloudSyncingObjectCryptoStrategyV1_mainKeyForPassphrase___block_invoke_cold_3(v3);
      }

      v13 = v12;
      goto LABEL_16;
    }

    v10 = *(a1 + 32);
    v11 = [v3 cryptoSalt];
    v19 = 0;
    v12 = +[ICCipherV1 keyForPassphrase:salt:iterationCount:error:](ICCipherV1, "keyForPassphrase:salt:iterationCount:error:", v10, v11, [v3 cryptoIterationCount], &v19);
    v13 = v19;

    if (v12)
    {
      v14 = [[ICEncryptionKey alloc] initWithKeyData:v12 metadata:v9];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
LABEL_16:

        goto LABEL_17;
      }

      v17 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __61__ICCloudSyncingObjectCryptoStrategyV1_mainKeyForPassphrase___block_invoke_cold_1(v3);
      }
    }

    else
    {
      v17 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke_cold_2();
      }
    }

    goto LABEL_16;
  }

  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v18 = [v3 shortLoggingDescription];
    *buf = 138412290;
    v21 = v18;
    _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Cannot create main key for passphrase because object doesn't have crypto salt {object: %@}", buf, 0xCu);
  }

  v9 = v13;
LABEL_17:
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
  v7[2] = __67__ICCloudSyncingObjectCryptoStrategyV1_authenticateWithPassphrase___block_invoke;
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

void __67__ICCloudSyncingObjectCryptoStrategyV1_authenticateWithPassphrase___block_invoke(uint64_t a1, void *a2)
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

- (BOOL)isPassphraseCorrect:(id)correct
{
  correctCopy = correct;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ICCloudSyncingObjectCryptoStrategyV1_isPassphraseCorrect___block_invoke;
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

void __60__ICCloudSyncingObjectCryptoStrategyV1_isPassphraseCorrect___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) mainKeyForPassphrase:*(a1 + 40)];
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) canMainKey:v3 decryptObject:v4];
  }
}

void __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 shortLoggingDescription];
  v3 = [*v0 shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  v2 = [v1 shortLoggingDescription];
  v3 = [v0 cloudAccount];
  v4 = [v3 shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 shortLoggingDescription];
  v3 = [*v0 shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __77__ICCloudSyncingObjectCryptoStrategyV1_initializeCryptoPropertiesFromObject___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __55__ICCloudSyncingObjectCryptoStrategyV1_primaryMetadata__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __57__ICCloudSyncingObjectCryptoStrategyV1_primaryWrappedKey__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __57__ICCloudSyncingObjectCryptoStrategyV1_primaryWrappedKey__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV1_encryptionObjectWithData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV1_encryptionObjectWithData___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV1_encryptionObjectWithData___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)saveEncryptedJSON
{
  object = [self object];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __57__ICCloudSyncingObjectCryptoStrategyV1_saveEncryptedJSON__block_invoke_9_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__ICCloudSyncingObjectCryptoStrategyV1_encryptData___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __84__ICCloudSyncingObjectCryptoStrategyV1_encryptFileFromURL_toURL_setTagAndIVHandler___block_invoke_19_cold_1()
{
  OUTLINED_FUNCTION_1();
  v1 = [*(v0 + 40) className];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)decryptWithMainKeyOfObject:encryptedDataPreparationBlock:fallbackAttemptSuccessCleanupHandler:.cold.5()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_3_8(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_2(&dword_214D51000, "Attempting to decrypt a V1 unsupported object %@ %@", v4, v5);
}

void __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v2 = [v1 className];
  v3 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __59__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarData___block_invoke_25_cold_1()
{
  OUTLINED_FUNCTION_3();
  v2 = [*(v1 + 32) className];
  v3 = [*(v0 + 32) ic_loggingIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __59__ICCloudSyncingObjectCryptoStrategyV1_decryptSidecarData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v2 = [v1 className];
  v3 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __59__ICCloudSyncingObjectCryptoStrategyV1_decryptSidecarData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  v3 = [v2 className];
  v9 = [v1 ic_loggingIdentifier];
  [*v0 length];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  v2 = [v1 className];
  v3 = [v0 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  v2 = [*(v1 + 48) className];
  v3 = [*(v0 + 48) ic_loggingIdentifier];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  v2 = [*(v1 + 48) className];
  v3 = [*(v0 + 48) ic_loggingIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __72__ICCloudSyncingObjectCryptoStrategyV1_encryptSidecarFileFromURL_toURL___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_1();
  v2 = [*(v1 + 48) className];
  v3 = [*(v0 + 48) ic_loggingIdentifier];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

+ (void)encryptWithMainKeyOfObject:dataPreparationBlock:failureHandler:successHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_3_8(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_2(&dword_214D51000, "Error executing dataPreparationBlock for %@ (%@)", v4, v5);
}

+ (void)encryptWithMainKeyOfObject:dataPreparationBlock:failureHandler:successHandler:.cold.2()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_3_8(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_2(&dword_214D51000, "No key when encrypting data for %@ %@", v4, v5);
}

+ (void)encryptWithMainKeyOfObject:dataPreparationBlock:failureHandler:successHandler:.cold.3()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_3_8(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_2(&dword_214D51000, "Attempting to encrypt a V1 unsupported object %@ %@", v4, v5);
}

void __69__ICCloudSyncingObjectCryptoStrategyV1_decryptAndMergeEncryptedJSON___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 className];
  v5 = [a1 identifier];
  v6 = [a1 cryptoTag];
  v7 = [v6 hash];
  v8 = [a1 cryptoInitializationVector];
  v9 = 138413058;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  v13 = 2048;
  v14 = v7;
  v15 = 2048;
  v16 = [v8 hash];
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error decrypting JSON for %@ (%@) tag.hash=%lu initializationVector.hash=%lu", &v9, 0x2Au);
}

void __52__ICCloudSyncingObjectCryptoStrategyV1_unwrappedKey__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  v2 = [v1 className];
  v3 = [v0 identifier];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)canMainKey:decryptObject:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)rewrapWithMainKey:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 object];
  v4 = [v3 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  v6 = 891;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Rewrapping object with main key… {object: %@}%s:%d", v5, 0x1Cu);
}

void __58__ICCloudSyncingObjectCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __58__ICCloudSyncingObjectCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __61__ICCloudSyncingObjectCryptoStrategyV1_mainKeyForPassphrase___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __61__ICCloudSyncingObjectCryptoStrategyV1_mainKeyForPassphrase___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end