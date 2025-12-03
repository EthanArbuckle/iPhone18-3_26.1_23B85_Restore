@interface ICCloudSyncingObjectCryptoStrategyV2
+ (NSMutableDictionary)accountKeyByIdentifier;
- (BOOL)canAuthenticate;
- (BOOL)canAuthenticateRecord:(id)record;
- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL;
- (BOOL)hasSameKeyAsObject:(id)object;
- (BOOL)isAuthenticated;
- (BOOL)isInICloudAccount;
- (BOOL)isRecordAuthenticated:(id)authenticated;
- (BOOL)loadDecryptedValuesIfNecessary;
- (BOOL)mergeEncryptedDataFromRecord:(id)record;
- (BOOL)saveEncryptedJSON;
- (BOOL)serialize:(id)serialize toURL:(id)l;
- (ICEncryptionMetadata)primaryMetadata;
- (ICEncryptionObject)primaryEncryptionObject;
- (NSString)accountDsid;
- (NSString)accountKeyIdentifier;
- (NSString)currentAccountKeyIdentifier;
- (id)accountIdentifier;
- (id)accountKeyWithIdentifier:(id)identifier createIfNotExist:(BOOL)exist;
- (id)decryptData:(id)data;
- (id)decryptObject:(id)object;
- (id)decryptSidecarData:(id)data;
- (id)decryptedDataFromFileURL:(id)l;
- (id)encryptData:(id)data;
- (id)encryptSidecarData:(id)data;
- (void)decryptAndMergeEncryptedJSON:(id)n;
- (void)fetchKeychainItemsForAccountKeyIdentifier:(id)identifier accountDsid:(id)dsid;
- (void)saveEncryptedJSON;
- (void)serializeToEncryptedValuesJSON:(id)n;
@end

@implementation ICCloudSyncingObjectCryptoStrategyV2

- (ICEncryptionMetadata)primaryMetadata
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ICCloudSyncingObjectCryptoStrategyV2_primaryMetadata__block_invoke;
  v4[3] = &unk_278195960;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __55__ICCloudSyncingObjectCryptoStrategyV2_primaryMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) currentAccountKeyIdentifier];
  v6 = [ICEncryptionMetadata makeForV2CipherWithObjectIdentifier:v4 accountKeyIdentifier:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __55__ICCloudSyncingObjectCryptoStrategyV2_primaryMetadata__block_invoke_cold_1(v3);
    }
  }
}

- (ICEncryptionObject)primaryEncryptionObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__ICCloudSyncingObjectCryptoStrategyV2_primaryEncryptionObject__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __63__ICCloudSyncingObjectCryptoStrategyV2_primaryEncryptionObject__block_invoke(uint64_t a1, void *a2)
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
      __63__ICCloudSyncingObjectCryptoStrategyV2_primaryEncryptionObject__block_invoke_cold_1(v3);
    }
  }

LABEL_8:
}

- (BOOL)hasSameKeyAsObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ICCloudSyncingObjectCryptoStrategyV2_hasSameKeyAsObject___block_invoke;
  v7[3] = &unk_2781959B0;
  v5 = objectCopy;
  v8 = v5;
  selfCopy = self;
  v10 = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __59__ICCloudSyncingObjectCryptoStrategyV2_hasSameKeyAsObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) cryptoStrategy];
  v3 = ICDynamicCast();
  v4 = [v3 v2Strategy];
  v5 = v4;
  if (v4)
  {
    v24 = v4;
  }

  else
  {
    objc_opt_class();
    v6 = [*(a1 + 32) cryptoStrategy];
    v24 = ICDynamicCast();
  }

  v7 = [*(a1 + 40) primaryMetadata];
  v8 = [v7 accountKeyIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [*(a1 + 40) currentAccountKeyIdentifier];
  }

  v11 = v10;

  v12 = [v24 primaryMetadata];
  v13 = [v12 accountKeyIdentifier];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [v24 currentAccountKeyIdentifier];
  }

  v16 = v15;

  v17 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v11)
  {
    v18 = 0;
  }

  else
  {
    v18 = v11;
  }

  v19 = v18;
  if (v17 == v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = v16;
  }

  v21 = v20;
  v22 = v21;
  if (v19 | v21)
  {
    v23 = 0;
    if (v19 && v21)
    {
      v23 = [v19 isEqual:v21];
    }
  }

  else
  {
    v23 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v23;
}

- (BOOL)saveEncryptedJSON
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObjectCryptoStrategyV2 *)self saveEncryptedJSON];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ICCloudSyncingObjectCryptoStrategyV2_saveEncryptedJSON__block_invoke;
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
    v20 = "[ICCloudSyncingObjectCryptoStrategyV2 saveEncryptedJSON]";
    v21 = 1024;
    v22 = 129;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Saved encrypted values JSON {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v5;
}

void __57__ICCloudSyncingObjectCryptoStrategyV2_saveEncryptedJSON__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 supportsEncryptedValuesDictionary])
  {
    if ([*(a1 + 32) isAuthenticated])
    {
      v4 = [v3 serializedValuesToEncrypt];
      if (v4)
      {
        v5 = [*(a1 + 32) encryptData:v4];
        [*(a1 + 32) serializeToEncryptedValuesJSON:v5];
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        v6 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = [v3 shortLoggingDescription];
          v8 = 138412290;
          v9 = v7;
          _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "No encrypted values JSON to save — skipping {object: %@}", &v8, 0xCu);
        }
      }
    }

    else
    {
      v4 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __57__ICCloudSyncingObjectCryptoStrategyV2_saveEncryptedJSON__block_invoke_cold_1(v3);
      }
    }
  }
}

- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ICCloudSyncingObjectCryptoStrategyV2_encryptFileFromURL_toURL___block_invoke;
  v11[3] = &unk_278195A00;
  v8 = lCopy;
  v12 = v8;
  v9 = rLCopy;
  v13 = v9;
  selfCopy = self;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v11];
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return self;
}

void __65__ICCloudSyncingObjectCryptoStrategyV2_encryptFileFromURL_toURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudSyncingObjectCryptoStrategyV2_encryptFileFromURL_toURL___block_invoke_cold_3(v3);
    }

    goto LABEL_10;
  }

  if (!*(a1 + 40))
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudSyncingObjectCryptoStrategyV2_encryptFileFromURL_toURL___block_invoke_cold_2(v3);
    }

LABEL_10:
    v5 = v4;
    goto LABEL_15;
  }

  v7 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:? options:? error:?];
  v5 = v7;
  if (v5 || !v4)
  {
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudSyncingObjectCryptoStrategyV2_encryptFileFromURL_toURL___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = [*(a1 + 48) encryptData:v4];
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) serialize:v6 toURL:*(a1 + 40)];
  }

LABEL_15:
}

- (BOOL)loadDecryptedValuesIfNecessary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__ICCloudSyncingObjectCryptoStrategyV2_loadDecryptedValuesIfNecessary__block_invoke;
  v4[3] = &unk_2781959D8;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __70__ICCloudSyncingObjectCryptoStrategyV2_loadDecryptedValuesIfNecessary__block_invoke(uint64_t a1, void *a2)
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
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ICCloudSyncingObjectCryptoStrategyV2_decryptData___block_invoke;
  v8[3] = &unk_2781959B0;
  v5 = dataCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __52__ICCloudSyncingObjectCryptoStrategyV2_decryptData___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!*(a1 + 32))
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 shortLoggingDescription];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_214D51000, &v4->super, OS_LOG_TYPE_INFO, "input is nil when calling decryptData: for %@", &v10, 0xCu);
    }

    goto LABEL_11;
  }

  if ([*(a1 + 40) isAuthenticated])
  {
    v4 = [[ICEncryptionObject alloc] initWithSerializedData:*(a1 + 32)];
    if (v4)
    {
      v5 = [*(a1 + 40) decryptObject:v4];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __52__ICCloudSyncingObjectCryptoStrategyV2_decryptData___block_invoke_cold_1(v3);
      }
    }

LABEL_11:
  }
}

- (id)decryptedDataFromFileURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__ICCloudSyncingObjectCryptoStrategyV2_decryptedDataFromFileURL___block_invoke;
  v8[3] = &unk_278195A28;
  v5 = lCopy;
  selfCopy = self;
  v11 = &v12;
  v9 = v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __65__ICCloudSyncingObjectCryptoStrategyV2_decryptedDataFromFileURL___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v12 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __65__ICCloudSyncingObjectCryptoStrategyV2_decryptedDataFromFileURL___block_invoke_cold_1();
      }
    }

    else
    {
      v9 = [*(a1 + 40) decryptData:v5];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 shortLoggingDescription];
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "fileURL is nil when trying to decrypt for %@", buf, 0xCu);
    }

    v6 = v5;
  }
}

- (id)encryptSidecarData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ICCloudSyncingObjectCryptoStrategyV2_encryptSidecarData___block_invoke;
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

void __59__ICCloudSyncingObjectCryptoStrategyV2_encryptSidecarData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isAuthenticated] & 1) == 0)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __59__ICCloudSyncingObjectCryptoStrategyV2_encryptSidecarData___block_invoke_cold_1();
    }

    v4 = v8;
    goto LABEL_9;
  }

  v4 = [*(a1 + 32) encryptData:*(a1 + 40)];
  v5 = [v4 serialized];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__ICCloudSyncingObjectCryptoStrategyV2_encryptSidecarData___block_invoke_cold_2();
    }

LABEL_9:
  }
}

- (id)decryptSidecarData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ICCloudSyncingObjectCryptoStrategyV2_decryptSidecarData___block_invoke;
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

void __59__ICCloudSyncingObjectCryptoStrategyV2_decryptSidecarData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isAuthenticated] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __59__ICCloudSyncingObjectCryptoStrategyV2_decryptSidecarData___block_invoke_cold_1();
    }

    goto LABEL_7;
  }

  v4 = [*(a1 + 32) decryptData:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__ICCloudSyncingObjectCryptoStrategyV2_decryptSidecarData___block_invoke_cold_2();
    }

LABEL_7:
  }
}

- (BOOL)isRecordAuthenticated:(id)authenticated
{
  authenticatedCopy = authenticated;
  v5 = +[ICAuthenticationState sharedState];
  if ([v5 isAuthenticatedWithDevicePassword])
  {
    v6 = [(ICCloudSyncingObjectCryptoStrategyV2 *)self canAuthenticateRecord:authenticatedCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canAuthenticateRecord:(id)record
{
  v4 = [(ICCloudSyncingObjectCryptoStrategyV2 *)self encryptedDataFromRecord:record];
  if (v4)
  {
    v5 = [[ICEncryptionObject alloc] initWithSerializedData:v4];
    p_super = &v5->super;
    if (v5)
    {
      metadata = [(ICEncryptionObject *)v5 metadata];
      accountKeyIdentifier = [metadata accountKeyIdentifier];

      if (accountKeyIdentifier)
      {

        v9 = [(ICCloudSyncingObjectCryptoStrategyV2 *)self accountKeyWithIdentifier:accountKeyIdentifier createIfNotExist:0];
        v10 = v9 != 0;

        p_super = accountKeyIdentifier;
        goto LABEL_12;
      }

      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ICCloudSyncingObjectCryptoStrategyV2 canAuthenticateRecord:];
      }
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ICCloudSyncingObjectCryptoStrategyV2 canAuthenticateRecord:];
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

  p_super = os_log_create("com.apple.notes", "Crypto");
  v10 = 1;
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_214D51000, p_super, OS_LOG_TYPE_INFO, "No encrypted data when in isRecordAuthenticated:", v13, 2u);
  }

LABEL_12:

  return v10;
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
  v7[2] = __69__ICCloudSyncingObjectCryptoStrategyV2_mergeEncryptedDataFromRecord___block_invoke;
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

void __69__ICCloudSyncingObjectCryptoStrategyV2_mergeEncryptedDataFromRecord___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isRecordAuthenticated:*(a1 + 40)])
  {
    v4 = [*(a1 + 40) ic_inlineableDataAssetForKeyPrefix:@"EncryptedValues"];
    [*(a1 + 32) loadDecryptedValuesIfNecessary];
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3 shortLoggingDescription];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Merging encrypted values from cloud for %@", &v7, 0xCu);
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
  v6[2] = __69__ICCloudSyncingObjectCryptoStrategyV2_decryptAndMergeEncryptedJSON___block_invoke;
  v6[3] = &unk_278195A50;
  v7 = nCopy;
  selfCopy = self;
  v5 = nCopy;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v6];
}

void __69__ICCloudSyncingObjectCryptoStrategyV2_decryptAndMergeEncryptedJSON___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = os_log_create("com.apple.notes", "Crypto");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = [v3 className];
      v8 = [v3 shortLoggingDescription];
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Merging encrypted JSON for %@ (%@)", &v11, 0x16u);
    }

    v5 = [*(a1 + 40) decryptData:*(a1 + 32)];
    if (v5)
    {
      [v3 deserializeAndMergeValues:v5];
    }

    else
    {
      v10 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __69__ICCloudSyncingObjectCryptoStrategyV2_decryptAndMergeEncryptedJSON___block_invoke_cold_1(v3);
      }
    }
  }

  else
  {
    if (v6)
    {
      v9 = [v3 shortLoggingDescription];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "encryptedJSON is nil when trying to decrypt for %@", &v11, 0xCu);
    }
  }
}

- (BOOL)canAuthenticate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ICCloudSyncingObjectCryptoStrategyV2_canAuthenticate__block_invoke;
  v4[3] = &unk_2781959D8;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __55__ICCloudSyncingObjectCryptoStrategyV2_canAuthenticate__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 primaryEncryptedData];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 accountKeyIdentifier];
  }

  else
  {
    [v4 currentAccountKeyIdentifier];
  }
  v5 = ;

  if (v5)
  {
    v6 = [*(a1 + 32) accountKeyWithIdentifier:v5 createIfNotExist:0];
    if (v6)
    {
      v7 = [v8 unappliedEncryptedRecord];
      if (v7)
      {
        *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) canAuthenticateRecord:v7];
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }
}

- (BOOL)isAuthenticated
{
  v3 = +[ICAuthenticationState sharedState];
  if ([v3 isAuthenticatedWithDevicePassword])
  {
    canAuthenticate = [(ICCloudSyncingObjectCryptoStrategyV2 *)self canAuthenticate];
  }

  else
  {
    canAuthenticate = 0;
  }

  return canAuthenticate;
}

- (id)accountIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__ICCloudSyncingObjectCryptoStrategyV2_accountIdentifier__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __57__ICCloudSyncingObjectCryptoStrategyV2_accountIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cloudAccount];
  v5 = [v4 identifier];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__ICCloudSyncingObjectCryptoStrategyV2_accountIdentifier__block_invoke_cold_1();
    }
  }
}

- (NSString)accountDsid
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__ICCloudSyncingObjectCryptoStrategyV2_accountDsid__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __51__ICCloudSyncingObjectCryptoStrategyV2_accountDsid__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cloudAccount];
  if ([v4 accountType] == 1)
  {
    v5 = [v4 dsid];
  }

  else
  {
    v5 = @"local";
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __51__ICCloudSyncingObjectCryptoStrategyV2_accountDsid__block_invoke_cold_1();
    }
  }
}

- (BOOL)isInICloudAccount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__ICCloudSyncingObjectCryptoStrategyV2_isInICloudAccount__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __57__ICCloudSyncingObjectCryptoStrategyV2_isInICloudAccount__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cloudAccount];
  *(*(*(a1 + 32) + 8) + 24) = [v3 accountType] == 1;
}

- (NSString)accountKeyIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__ICCloudSyncingObjectCryptoStrategyV2_accountKeyIdentifier__block_invoke;
  v4[3] = &unk_278195988;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __60__ICCloudSyncingObjectCryptoStrategyV2_accountKeyIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 primaryEncryptedData];
  if (v4)
  {
    v5 = [[ICEncryptionObject alloc] initWithSerializedData:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [(ICEncryptionObject *)v5 metadata];
      v8 = [v7 accountKeyIdentifier];
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __60__ICCloudSyncingObjectCryptoStrategyV2_accountKeyIdentifier__block_invoke_cold_1(v3);
      }
    }
  }
}

- (NSString)currentAccountKeyIdentifier
{
  if ([(ICCloudSyncingObjectCryptoStrategyV2 *)self shouldSpoofAccountKey])
  {
    v3 = @"e76073b6-5080-49e8-bee4-876f4c63a95f";
  }

  else
  {
    accountIdentifier = [(ICCloudSyncingObjectCryptoStrategyV2 *)self accountIdentifier];
    accountDsid = [(ICCloudSyncingObjectCryptoStrategyV2 *)self accountDsid];
    v6 = accountDsid;
    if (accountDsid)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__9;
      v18 = __Block_byref_object_dispose__9;
      v19 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __67__ICCloudSyncingObjectCryptoStrategyV2_currentAccountKeyIdentifier__block_invoke;
      v9[3] = &unk_278195A78;
      v10 = accountDsid;
      v13 = &v14;
      v11 = accountIdentifier;
      selfCopy = self;
      [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v9];
      v3 = v15[5];

      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ICCloudSyncingObjectCryptoStrategyV2 currentAccountKeyIdentifier];
      }

      v3 = 0;
    }
  }

  return v3;
}

void __67__ICCloudSyncingObjectCryptoStrategyV2_currentAccountKeyIdentifier__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"currentAccountKeyIdentifierCipherV2", *(a1 + 32)];
  v3 = [ICKeychain stringForIdentifier:v2 account:*(a1 + 32) isSynced:1];
  v4 = a1 + 56;
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v27 = v8;
      _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "currentAccountKeyIdentifier for account identifier %@ doesn't exist, generating a new one.", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = *(*v4 + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __67__ICCloudSyncingObjectCryptoStrategyV2_currentAccountKeyIdentifier__block_invoke_cold_1();
    }

    v14 = [*(a1 + 48) accountKeyWithIdentifier:*(*(*(a1 + 56) + 8) + 40) createIfNotExist:1];
    v15 = os_log_create("com.apple.notes", "Crypto");
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __67__ICCloudSyncingObjectCryptoStrategyV2_currentAccountKeyIdentifier__block_invoke_cold_2();
      }

      v17 = *(*(*(a1 + 56) + 8) + 40);
      v18 = *(a1 + 32);
      v25 = 0;
      v19 = [ICKeychain setString:v17 forIdentifier:v2 account:v18 shouldSync:1 error:&v25];
      v20 = v25;
      if (v20 || !v19)
      {
        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __67__ICCloudSyncingObjectCryptoStrategyV2_currentAccountKeyIdentifier__block_invoke_cold_3();
        }

        v22 = *(*v4 + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __67__ICCloudSyncingObjectCryptoStrategyV2_currentAccountKeyIdentifier__block_invoke_cold_4();
      }

      v24 = *(*v4 + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = 0;
    }
  }
}

+ (NSMutableDictionary)accountKeyByIdentifier
{
  if (accountKeyByIdentifier)
  {
    dictionary = accountKeyByIdentifier;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v3 = accountKeyByIdentifier;
  accountKeyByIdentifier = dictionary;

  v4 = accountKeyByIdentifier;

  return v4;
}

- (id)accountKeyWithIdentifier:(id)identifier createIfNotExist:(BOOL)exist
{
  identifierCopy = identifier;
  if ([(ICCloudSyncingObjectCryptoStrategyV2 *)self shouldSpoofAccountKey])
  {
    v7 = [MEMORY[0x277CBEA90] ic_dataFromHexString:@"5bc7dbbe cf8be96a aa12f008 4324368a bc99a2b2 35753242 b096322d 743799dc"];
  }

  else if (identifierCopy)
  {
    accountKeyByIdentifier = [objc_opt_class() accountKeyByIdentifier];
    objc_sync_enter(accountKeyByIdentifier);
    accountKeyByIdentifier2 = [objc_opt_class() accountKeyByIdentifier];
    v10 = [accountKeyByIdentifier2 objectForKeyedSubscript:identifierCopy];

    if (v10)
    {
      accountKeyByIdentifier3 = [objc_opt_class() accountKeyByIdentifier];
      v7 = [accountKeyByIdentifier3 objectForKeyedSubscript:identifierCopy];

      objc_sync_exit(accountKeyByIdentifier);
    }

    else
    {
      objc_sync_exit(accountKeyByIdentifier);

      accountKeyByIdentifier = [(ICCloudSyncingObjectCryptoStrategyV2 *)self accountIdentifier];
      accountDsid = [(ICCloudSyncingObjectCryptoStrategyV2 *)self accountDsid];
      if (accountDsid)
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x3032000000;
        v33 = __Block_byref_object_copy__9;
        v34 = __Block_byref_object_dispose__9;
        v35 = 0;
        v20 = MEMORY[0x277D85DD0];
        v21 = 3221225472;
        v22 = __82__ICCloudSyncingObjectCryptoStrategyV2_accountKeyWithIdentifier_createIfNotExist___block_invoke;
        v23 = &unk_278195AA0;
        v28 = &v30;
        v14 = identifierCopy;
        v24 = v14;
        v25 = accountDsid;
        existCopy = exist;
        v26 = accountKeyByIdentifier;
        selfCopy = self;
        [(ICCryptoStrategyBase *)self performBlockIfObjectExists:&v20];
        accountKeyByIdentifier4 = [objc_opt_class() accountKeyByIdentifier];
        objc_sync_enter(accountKeyByIdentifier4);
        v16 = v31[5];
        accountKeyByIdentifier5 = [objc_opt_class() accountKeyByIdentifier];
        [accountKeyByIdentifier5 setObject:v16 forKeyedSubscript:v14];

        objc_sync_exit(accountKeyByIdentifier4);
        v7 = v31[5];

        _Block_object_dispose(&v30, 8);
      }

      else
      {
        v18 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [ICCloudSyncingObjectCryptoStrategyV2 currentAccountKeyIdentifier];
        }

        v7 = 0;
      }
    }
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObjectCryptoStrategyV2 accountKeyWithIdentifier:createIfNotExist:];
    }

    v7 = 0;
  }

  return v7;
}

void __82__ICCloudSyncingObjectCryptoStrategyV2_accountKeyWithIdentifier_createIfNotExist___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [ICKeychain dataForIdentifier:*(a1 + 32) account:*(a1 + 40) isSynced:1 authenticationContext:0];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if ([*(*(*(a1 + 64) + 8) + 40) length])
  {
    [v3 setHasMissingKeychainItem:0];
    goto LABEL_18;
  }

  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    *buf = 138412546;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "accountKey for identifier %@ under account identifier %@ doesn't exist", buf, 0x16u);
  }

  v10 = [v3 cloudAccount];
  v11 = [ICKeychain isSyncAvailableForAccount:v10];

  if (*(a1 + 72) == 1)
  {
    v12 = [v3 cloudAccount];
    if ([v12 accountType] != 3 && !v11)
    {
      v23 = *(*(a1 + 64) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = 0;

      v17 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __82__ICCloudSyncingObjectCryptoStrategyV2_accountKeyWithIdentifier_createIfNotExist___block_invoke_cold_1((a1 + 32), a1, v17);
      }

      goto LABEL_16;
    }

    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      *buf = 138412546;
      v38 = v14;
      v39 = 2112;
      v40 = v15;
      _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "creating accountKey for identifier %@ under account identifier %@", buf, 0x16u);
    }

    v36 = 0;
    v16 = [MEMORY[0x277CBEA90] ic_random256BitData:&v36];
    v17 = v36;
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v16;

    v20 = *(*(a1 + 64) + 8);
    v21 = *(v20 + 40);
    if (v17 || !v21)
    {
      *(v20 + 40) = 0;

      v22 = os_log_create("com.apple.notes", "Crypto");
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

LABEL_16:
LABEL_17:

        goto LABEL_18;
      }

      v33 = *(a1 + 32);
      v34 = *(a1 + 48);
      *buf = 138412802;
      v38 = v33;
      v39 = 2112;
      v40 = v34;
      v41 = 2112;
      v42 = v17;
      v32 = "Error generating account key for identifier %@ under account identifier %@, error = %@";
    }

    else
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v35 = 0;
      v27 = [ICKeychain setData:v21 forIdentifier:v25 account:v26 shouldSync:1 error:&v35];
      v17 = v35;
      if (!v17 && v27)
      {
        goto LABEL_17;
      }

      v28 = *(*(a1 + 64) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = 0;

      v22 = os_log_create("com.apple.notes", "Crypto");
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v30 = *(a1 + 32);
      v31 = *(a1 + 48);
      *buf = 138412802;
      v38 = v30;
      v39 = 2112;
      v40 = v31;
      v41 = 2112;
      v42 = v17;
      v32 = "Error saving account key for identifier %@ under account identifier %@, error = %@";
    }

    _os_log_error_impl(&dword_214D51000, v22, OS_LOG_TYPE_ERROR, v32, buf, 0x20u);
    goto LABEL_11;
  }

  if (v11)
  {
    [MEMORY[0x277D36278] postBasicEvent:21];
    [*(a1 + 56) fetchKeychainItemsForAccountKeyIdentifier:*(a1 + 32) accountDsid:*(a1 + 40)];
  }

LABEL_18:
}

- (void)fetchKeychainItemsForAccountKeyIdentifier:(id)identifier accountDsid:(id)dsid
{
  identifierCopy = identifier;
  dsidCopy = dsid;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__ICCloudSyncingObjectCryptoStrategyV2_fetchKeychainItemsForAccountKeyIdentifier_accountDsid___block_invoke;
  v10[3] = &unk_278195B18;
  v11 = identifierCopy;
  v12 = dsidCopy;
  selfCopy = self;
  v8 = dsidCopy;
  v9 = identifierCopy;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v10];
}

void __94__ICCloudSyncingObjectCryptoStrategyV2_fetchKeychainItemsForAccountKeyIdentifier_accountDsid___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__ICCloudSyncingObjectCryptoStrategyV2_fetchKeychainItemsForAccountKeyIdentifier_accountDsid___block_invoke_2;
  v7[3] = &unk_278195AF0;
  v8 = v3;
  v9 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v6 = v3;
  [ICKeychain fetchItemsWithCompletionHandler:v7];
}

void __94__ICCloudSyncingObjectCryptoStrategyV2_fetchKeychainItemsForAccountKeyIdentifier_accountDsid___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v13 = v2;
    v14 = v3;
    v5 = [*(a1 + 32) managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__ICCloudSyncingObjectCryptoStrategyV2_fetchKeychainItemsForAccountKeyIdentifier_accountDsid___block_invoke_3;
    v10[3] = &unk_278195AC8;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *&v8 = *(a1 + 32);
    *(&v8 + 1) = *(a1 + 56);
    *&v9 = v6;
    *(&v9 + 1) = v7;
    v11 = v9;
    v12 = v8;
    [v5 performBlock:v10];
  }
}

void __94__ICCloudSyncingObjectCryptoStrategyV2_fetchKeychainItemsForAccountKeyIdentifier_accountDsid___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [ICKeychain dataForIdentifier:*(a1 + 32) account:*(a1 + 40) isSynced:1 authenticationContext:0];
  v3 = [v2 length] == 0;
  v4 = os_log_create("com.apple.notes", "Crypto");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v10 = [*(a1 + 48) shortLoggingDescription];
      v11 = *(a1 + 32);
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Account key doesn't exist after fetching Keychain items {object: %@, accountKeyIdentifier: %@}", &v15, 0x16u);
    }

    v12 = [*(a1 + 48) creationDate];
    v13 = +[ICCloudConfiguration sharedConfiguration];
    [v13 keychainMaximumSyncInterval];
    v8 = [v12 dateByAddingTimeInterval:?];

    v14 = [MEMORY[0x277CBEAA8] now];
    LODWORD(v13) = [v8 ic_isEarlierThanDate:v14];

    if (v13)
    {
      [MEMORY[0x277D36278] postBasicEvent:23];
      [*(a1 + 48) setHasMissingKeychainItem:1];
    }
  }

  else
  {
    if (v5)
    {
      v6 = [*(a1 + 48) shortLoggingDescription];
      v7 = *(a1 + 32);
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Account key exists after fetching Keychain items {object: %@, accountKeyIdentifier: %@}", &v15, 0x16u);
    }

    [*(a1 + 48) setHasMissingKeychainItem:0];
    v8 = [objc_opt_class() accountKeyByIdentifier];
    objc_sync_enter(v8);
    v9 = [objc_opt_class() accountKeyByIdentifier];
    [v9 setObject:v2 forKeyedSubscript:*(a1 + 32)];

    objc_sync_exit(v8);
  }
}

- (id)encryptData:(id)data
{
  dataCopy = data;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke;
  v8[3] = &unk_2781959B0;
  v5 = dataCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!*(a1 + 32))
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_6();
    }

    goto LABEL_34;
  }

  if ([*(a1 + 40) isAuthenticated])
  {
    v4 = [*(a1 + 40) currentAccountKeyIdentifier];
    v5 = [*(a1 + 40) accountKeyWithIdentifier:v4 createIfNotExist:0];
    if (!v5)
    {
      v6 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_5();
      }

      goto LABEL_33;
    }

    v21 = 0;
    v6 = [MEMORY[0x277CBEA90] ic_random256BitData:&v21];
    v7 = v21;
    if (v7 || !v6)
    {
      v10 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_1();
      }

      v8 = v10;
      goto LABEL_32;
    }

    v20 = 0;
    v8 = [ICCipherV2 wrapKey:v6 withWrapper:v5 error:&v20];
    v7 = v20;
    if (v7 || !v8)
    {
      v10 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = [v3 shortLoggingDescription];
        *buf = 138412802;
        v23 = v18;
        v24 = 2112;
        v25 = v4;
        v26 = 2112;
        v27 = v7;
        _os_log_error_impl(&dword_214D51000, v10, OS_LOG_TYPE_ERROR, "Cannot wrap encryption key for %@, accountKeyIdentifier = %@, error = %@", buf, 0x20u);
      }

      goto LABEL_32;
    }

    v9 = [v3 identifier];
    v10 = [ICEncryptionMetadata makeForV2CipherWithObjectIdentifier:v9 accountKeyIdentifier:v4];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [v10 authenticatedData];
      v19 = 0;
      v13 = [ICCipherV2 encryptData:v11 withKey:v6 additionalAuthenticatedData:v12 error:&v19];
      v7 = v19;

      if (v7 || !v13)
      {
        v17 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_2();
        }
      }

      else
      {
        v14 = [[ICEncryptionObject alloc] initWithMetadata:v10 wrappedEncryptionKey:v8 encryptedData:v13];
        v15 = *(*(a1 + 48) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        if (*(*(*(a1 + 48) + 8) + 40))
        {
LABEL_31:

LABEL_32:
LABEL_33:

LABEL_34:
          goto LABEL_35;
        }

        v17 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_3(v3);
        }
      }
    }

    else
    {
      v17 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_4(v3);
      }

      v7 = 0;
      v13 = v17;
    }

    goto LABEL_31;
  }

LABEL_35:
}

- (id)decryptObject:(id)object
{
  objectCopy = object;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__ICCloudSyncingObjectCryptoStrategyV2_decryptObject___block_invoke;
  v8[3] = &unk_2781959B0;
  v5 = objectCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __54__ICCloudSyncingObjectCryptoStrategyV2_decryptObject___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = [v4 metadata];
    v7 = [v6 accountKeyIdentifier];

    v8 = [*(a1 + 40) accountKeyWithIdentifier:v7 createIfNotExist:0];
    if (!v8)
    {
      v18 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_5();
      }

      goto LABEL_23;
    }

    v9 = [*v5 metadata];
    v10 = [v9 objectIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = [*v5 metadata];
      v13 = [v12 objectIdentifier];
      [v3 identifier];
      v14 = v8;
      v15 = v7;
      v17 = v16 = v3;
      v29 = [v13 isEqual:v17];

      v3 = v16;
      v7 = v15;
      v8 = v14;

      if ((v29 & 1) == 0)
      {
        v18 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __54__ICCloudSyncingObjectCryptoStrategyV2_decryptObject___block_invoke_cold_1();
        }

        goto LABEL_23;
      }
    }

    else
    {
    }

    v18 = [*v5 wrappedEncryptionKey];
    v32 = 0;
    v20 = [ICCipherV2 unwrapKey:v18 withWrapper:v8 error:&v32];
    v21 = v32;
    if (v21 || !v20)
    {
      v28 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __54__ICCloudSyncingObjectCryptoStrategyV2_decryptObject___block_invoke_cold_2();
      }
    }

    else
    {
      v22 = [*(a1 + 32) encryptedData];
      v23 = [*(a1 + 32) metadata];
      [v23 authenticatedData];
      v30 = v3;
      v24 = v31 = 0;
      v25 = [ICCipherV2 decryptData:v22 withKey:v20 additionalAuthenticatedData:v24 error:&v31];
      v21 = v31;
      v26 = *(*(a1 + 48) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v3 = v30;
      if (!v21 && *(*(*(a1 + 48) + 8) + 40))
      {
        goto LABEL_22;
      }

      v28 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __54__ICCloudSyncingObjectCryptoStrategyV2_decryptObject___block_invoke_cold_3();
      }
    }

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v19 = [v3 shortLoggingDescription];
    *buf = 138412290;
    v34 = v19;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "encryptionObject is nil when calling decryptObject: for %@", buf, 0xCu);
  }

  v7 = v8;
LABEL_24:
}

- (void)serializeToEncryptedValuesJSON:(id)n
{
  nCopy = n;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__ICCloudSyncingObjectCryptoStrategyV2_serializeToEncryptedValuesJSON___block_invoke;
  v6[3] = &unk_278195B40;
  v7 = nCopy;
  v5 = nCopy;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v6];
}

void __71__ICCloudSyncingObjectCryptoStrategyV2_serializeToEncryptedValuesJSON___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) serialized];
  if (v4)
  {
    v5 = [v3 encryptedValuesJSON];

    [v3 setEncryptedValuesJSON:v4];
    [v3 applyRandomCryptoGooIfNeeded];
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 shortLoggingDescription];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Successfully encrypted data for %@", &v9, 0xCu);
    }

    if (!v5)
    {
      [v3 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71__ICCloudSyncingObjectCryptoStrategyV2_serializeToEncryptedValuesJSON___block_invoke_cold_1(v3);
    }
  }
}

- (BOOL)serialize:(id)serialize toURL:(id)l
{
  serializeCopy = serialize;
  lCopy = l;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ICCloudSyncingObjectCryptoStrategyV2_serialize_toURL___block_invoke;
  v11[3] = &unk_2781959B0;
  v8 = serializeCopy;
  v12 = v8;
  v9 = lCopy;
  v13 = v9;
  v14 = &v15;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __56__ICCloudSyncingObjectCryptoStrategyV2_serialize_toURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v4 = [MEMORY[0x277CCAA00] defaultManager];
      v5 = [*(a1 + 40) path];
      v6 = [v4 fileExistsAtPath:v5];

      v7 = [*(a1 + 32) serialized];
      v8 = v7;
      if (v7)
      {
        v9 = *(a1 + 40);
        v14 = 0;
        v10 = [v7 writeToURL:v9 options:1 error:&v14];
        v11 = v14;
        *(*(*(a1 + 48) + 8) + 24) = v10;
        if (v11 || (v12 = *(*(a1 + 48) + 8), (*(v12 + 24) & 1) == 0))
        {
          v13 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __56__ICCloudSyncingObjectCryptoStrategyV2_serialize_toURL___block_invoke_cold_1();
          }
        }

        else
        {
          if ((v6 & 1) == 0)
          {
            [v3 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
            v12 = *(*(a1 + 48) + 8);
          }

          *(v12 + 24) = 1;
        }
      }

      else
      {
        v11 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __56__ICCloudSyncingObjectCryptoStrategyV2_serialize_toURL___block_invoke_cold_2(v3);
        }
      }
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __56__ICCloudSyncingObjectCryptoStrategyV2_serialize_toURL___block_invoke_cold_3();
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__ICCloudSyncingObjectCryptoStrategyV2_serialize_toURL___block_invoke_cold_4();
    }
  }
}

void __55__ICCloudSyncingObjectCryptoStrategyV2_primaryMetadata__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __63__ICCloudSyncingObjectCryptoStrategyV2_primaryEncryptionObject__block_invoke_cold_1(void *a1)
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
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void __57__ICCloudSyncingObjectCryptoStrategyV2_saveEncryptedJSON__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV2_encryptFileFromURL_toURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __65__ICCloudSyncingObjectCryptoStrategyV2_encryptFileFromURL_toURL___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV2_encryptFileFromURL_toURL___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__ICCloudSyncingObjectCryptoStrategyV2_decryptData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudSyncingObjectCryptoStrategyV2_decryptedDataFromFileURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __59__ICCloudSyncingObjectCryptoStrategyV2_encryptSidecarData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  [v1 className];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __59__ICCloudSyncingObjectCryptoStrategyV2_encryptSidecarData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  [v1 className];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __59__ICCloudSyncingObjectCryptoStrategyV2_decryptSidecarData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  [v1 className];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __59__ICCloudSyncingObjectCryptoStrategyV2_decryptSidecarData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  [v1 className];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() ic_loggingIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __69__ICCloudSyncingObjectCryptoStrategyV2_decryptAndMergeEncryptedJSON___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __57__ICCloudSyncingObjectCryptoStrategyV2_accountIdentifier__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() cloudAccount];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __51__ICCloudSyncingObjectCryptoStrategyV2_accountDsid__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __60__ICCloudSyncingObjectCryptoStrategyV2_accountKeyIdentifier__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __67__ICCloudSyncingObjectCryptoStrategyV2_currentAccountKeyIdentifier__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x277D85DE8]);
  v2 = 138412290;
  v3 = v0;
  _os_log_debug_impl(&dword_214D51000, v1, OS_LOG_TYPE_DEBUG, "Generated new currentAccountKeyIdentifier: %@", &v2, 0xCu);
}

void __67__ICCloudSyncingObjectCryptoStrategyV2_currentAccountKeyIdentifier__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x277D85DE8]);
  v2 = 138412290;
  v3 = v0;
  _os_log_debug_impl(&dword_214D51000, v1, OS_LOG_TYPE_DEBUG, "New account key is generated for currentAccountKeyIdentifier: %@", &v2, 0xCu);
}

void __82__ICCloudSyncingObjectCryptoStrategyV2_accountKeyWithIdentifier_createIfNotExist___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a2 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Cannot generate account key for identifier (%@) under account (%@) because iCloud keychain is not enabled", &v5, 0x16u);
}

void __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__ICCloudSyncingObjectCryptoStrategyV2_encryptData___block_invoke_cold_4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __54__ICCloudSyncingObjectCryptoStrategyV2_decryptObject___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 shortLoggingDescription];
  v3 = [*v0 metadata];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __54__ICCloudSyncingObjectCryptoStrategyV2_decryptObject___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __54__ICCloudSyncingObjectCryptoStrategyV2_decryptObject___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __71__ICCloudSyncingObjectCryptoStrategyV2_serializeToEncryptedValuesJSON___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __56__ICCloudSyncingObjectCryptoStrategyV2_serialize_toURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __56__ICCloudSyncingObjectCryptoStrategyV2_serialize_toURL___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end