@interface ICNoteCryptoStrategyV1
- (BOOL)decrypt;
- (BOOL)mainKeyDecryptsPrimaryData:(id)data;
- (BOOL)rewrapWithMainKey:(id)key;
- (BOOL)writeEncryptedNoteData:(id)data;
- (id)decryptNotePrimitiveData;
- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)authenticated;
- (id)unwrappedKey;
- (void)mergeEncryptedData:(id)data mergeConflict:(id)conflict;
- (void)recoverMissingCryptoWrappedKeyIfNeededWithMainKey:(id)key;
@end

@implementation ICNoteCryptoStrategyV1

- (BOOL)writeEncryptedNoteData:(id)data
{
  dataCopy = data;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke;
  v7[3] = &unk_278194B50;
  v7[4] = self;
  v5 = dataCopy;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPasswordProtected])
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_2;
    v12[3] = &unk_278194B00;
    v13 = v3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_5;
    v9[3] = &unk_278194B28;
    v6 = v13;
    v7 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    [v4 encryptWithMainKeyOfObject:v6 dataToEncrypt:v5 failureHandler:v12 successHandler:v9];

    v8 = v13;
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_cold_1(v3);
    }
  }
}

void __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_2_cold_1(a1);
  }
}

void __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = os_log_create("com.apple.notes", "CoreData");
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_5_cold_1(a1, v7);
    }

    v12 = [*(a1 + 32) noteData];
    [v12 setData:v7];

    v13 = [*(a1 + 32) noteData];
    [v13 setCryptoTag:v8];

    v14 = [*(a1 + 32) noteData];
    [v14 setCryptoInitializationVector:v9];

    [*(a1 + 32) setCryptoTag:v8];
    [*(a1 + 32) setCryptoInitializationVector:v9];
    [*(a1 + 32) updateArchivedAndLastViewedTimeStampsAfterSavingNoteData];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = [*(a1 + 32) identifier];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_INFO, "Trying to save note data for %@, but we don't have any data", &v16, 0xCu);
    }
  }
}

- (BOOL)decrypt
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__ICNoteCryptoStrategyV1_decrypt__block_invoke;
  v4[3] = &unk_278194BA0;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __33__ICNoteCryptoStrategyV1_decrypt__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy_;
  v15[4] = __Block_byref_object_dispose_;
  v16 = 0;
  v4 = [v3 managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__ICNoteCryptoStrategyV1_decrypt__block_invoke_8;
  v8[3] = &unk_278194B78;
  v11 = v17;
  v5 = v3;
  v12 = v19;
  v13 = v15;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v14 = v7;
  [v4 performBlockAndWait:v8];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void __33__ICNoteCryptoStrategyV1_decrypt__block_invoke_8(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) isPasswordProtected];
  v3 = [*v2 noteData];
  v4 = [v3 data];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*v2 identifier];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v24 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [*v2 shortLoggingDescription];
      *buf = 138412290;
      v34 = v25;
      v26 = "note is not password-protected, but decrypt is called. %@";
LABEL_10:
      _os_log_impl(&dword_214D51000, v24, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
    }

LABEL_11:
    v22 = v24;
    goto LABEL_12;
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v24 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [*v2 shortLoggingDescription];
      *buf = 138412290;
      v34 = v25;
      v26 = "note doesn't have textDataFromDatabase, but decrypt is called. %@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __33__ICNoteCryptoStrategyV1_decrypt__block_invoke_8_cold_1(v2, a1 + 56);
  }

  v11 = [ICEncryptedData alloc];
  v12 = *(*(*(a1 + 56) + 8) + 40);
  v13 = [*(a1 + 32) cryptoTag];
  v14 = [*(a1 + 32) cryptoInitializationVector];
  v15 = [*(a1 + 32) noteData];
  v16 = [v15 cryptoTag];
  v17 = [*(a1 + 32) noteData];
  v18 = [v17 cryptoInitializationVector];
  v19 = [(ICEncryptedData *)v11 initWithData:v12 tag:v13 initializationVector:v14 fallbackTag:v16 fallbackInitializationVector:v18];

  v20 = objc_opt_class();
  v21 = *(a1 + 32);
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __33__ICNoteCryptoStrategyV1_decrypt__block_invoke_9;
  v30 = &unk_278194AD8;
  v31 = v21;
  v32 = v19;
  v22 = v19;
  v23 = [v20 decryptWithMainKeyOfObject:v31 encryptedData:v22 fallbackAttemptSuccessCleanupHandler:&v27];
  [*(a1 + 32) setDecryptedData:{v23, v27, v28, v29, v30}];
  *(*(*(a1 + 72) + 8) + 24) = 1;

  v24 = v31;
LABEL_12:
}

void __33__ICNoteCryptoStrategyV1_decrypt__block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 40) fallbackTag];
  [*(a1 + 32) setCryptoTag:v2];

  v3 = [*(a1 + 40) fallbackInitializationVector];
  [*(a1 + 32) setCryptoInitializationVector:v3];

  v5 = [*(a1 + 32) managedObjectContext];
  v4 = [*(a1 + 32) shortLoggingDescription];
  [v5 ic_saveWithLogDescription:{@"Set fallback crypto goo {note: %@}", v4}];
}

- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)authenticated
{
  authenticatedCopy = authenticated;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__ICNoteCryptoStrategyV1_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke;
  v8[3] = &unk_278194B50;
  v5 = authenticatedCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __83__ICNoteCryptoStrategyV1_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isPasswordProtected])
  {
    v4 = [*(a1 + 32) ic_encryptedInlineableDataAssetForKeyPrefix:@"TextData"];
    if (v4)
    {
      if ([*(a1 + 40) isAuthenticated])
      {
        v5 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = objc_opt_class();
          v7 = v6;
          v8 = [v3 identifier];
          v19 = 138412802;
          v20 = v6;
          v21 = 2112;
          v22 = v8;
          v23 = 2048;
          v24 = [v4 hash];
          _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "About to decrypt text data from cloud for merging %@ (%@): %lu", &v19, 0x20u);
        }

        v9 = [ICEncryptedData alloc];
        v10 = [*(a1 + 32) objectForKeyedSubscript:@"CryptoTag"];
        v11 = [*(a1 + 32) objectForKeyedSubscript:@"CryptoInitializationVector"];
        v12 = [(ICEncryptedData *)v9 initWithData:v4 tag:v10 initializationVector:v11];

        v13 = [objc_opt_class() decryptWithMainKeyOfObject:v3 encryptedData:v12 fallbackAttemptSuccessCleanupHandler:0];
        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      else
      {
        [v3 setUnappliedEncryptedRecord:*(a1 + 32)];
      }
    }

    else
    {
      v17 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v3 shortLoggingDescription];
        v19 = 138412290;
        v20 = v18;
        _os_log_impl(&dword_214D51000, v17, OS_LOG_TYPE_INFO, "topoTextDataFromRecord is nil, but decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated: is called. %@", &v19, 0xCu);
      }
    }
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v16 = [v3 shortLoggingDescription];
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "note is not password-protected, but decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated: is called. %@", &v19, 0xCu);
    }
  }
}

- (id)decryptNotePrimitiveData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ICNoteCryptoStrategyV1_decryptNotePrimitiveData__block_invoke;
  v4[3] = &unk_278194BC8;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __50__ICNoteCryptoStrategyV1_decryptNotePrimitiveData__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isPasswordProtected])
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __50__ICNoteCryptoStrategyV1_decryptNotePrimitiveData__block_invoke_cold_1(v3);
    }

    v5 = [ICEncryptedData alloc];
    v6 = [v3 noteData];
    v7 = [v6 primitiveData];
    v8 = [v3 noteData];
    v9 = [v8 cryptoTag];
    v10 = [v3 noteData];
    v11 = [v10 cryptoInitializationVector];
    v12 = [(ICEncryptedData *)v5 initWithData:v7 tag:v9 initializationVector:v11];

    v13 = [objc_opt_class() decryptWithMainKeyOfObject:v3 encryptedData:v12 fallbackAttemptSuccessCleanupHandler:0];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      [*(a1 + 32) correctCryptoTagAndIVIfNecessary];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = [v3 shortLoggingDescription];
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "note is not password-protected, but decryptNotePrimitiveData is called. %@", &v17, 0xCu);
    }
  }
}

- (void)mergeEncryptedData:(id)data mergeConflict:(id)conflict
{
  dataCopy = data;
  conflictCopy = conflict;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__ICNoteCryptoStrategyV1_mergeEncryptedData_mergeConflict___block_invoke;
  v10[3] = &unk_278194C18;
  v10[4] = self;
  v11 = conflictCopy;
  v12 = dataCopy;
  v8 = dataCopy;
  v9 = conflictCopy;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v10];
}

void __59__ICNoteCryptoStrategyV1_mergeEncryptedData_mergeConflict___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 shortLoggingDescription];
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Decrypting %@ for merging encrypted data", buf, 0xCu);
  }

  v6 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__ICNoteCryptoStrategyV1_mergeEncryptedData_mergeConflict___block_invoke_11;
  v9[3] = &unk_278194BF0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v3;
  v12 = v7;
  v8 = [v6 decryptWithMainKeyOfObject:v7 encryptedDataPreparationBlock:v9 fallbackAttemptSuccessCleanupHandler:0];
  if (v8)
  {
    [v7 mergeWithNoteData:v8];
  }
}

ICEncryptedData *__59__ICNoteCryptoStrategyV1_mergeEncryptedData_mergeConflict___block_invoke_11(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistedSnapshot];
  v3 = [v2 objectForKeyedSubscript:@"cryptoTag"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [*(a1 + 32) cachedSnapshot];
    v5 = [v6 objectForKeyedSubscript:@"cryptoTag"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
  }

  v7 = [*(a1 + 32) persistedSnapshot];
  v8 = [v7 objectForKeyedSubscript:@"cryptoInitializationVector"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [*(a1 + 32) cachedSnapshot];
    v10 = [v11 objectForKeyedSubscript:@"cryptoInitializationVector"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v5 && v10)
    {
      v12 = [[ICEncryptedData alloc] initWithData:*(a1 + 40) tag:v5 initializationVector:v10];
      goto LABEL_17;
    }
  }

  else
  {

    v10 = 0;
  }

  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [*(a1 + 48) shortLoggingDescription];
    v16 = 138412290;
    v17 = v14;
    _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "No tag or initialization vector for encrypted text data save conflict %@", &v16, 0xCu);
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)unwrappedKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ICNoteCryptoStrategyV1_unwrappedKey__block_invoke;
  v4[3] = &unk_278194BA0;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __38__ICNoteCryptoStrategyV1_unwrappedKey__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICAuthenticationState sharedState];
  v5 = [v4 cachedMainKeyForObject:v3];

  if (v5)
  {
    [*(a1 + 32) recoverMissingCryptoWrappedKeyIfNeededWithMainKey:v5];
  }

  v9.receiver = *(a1 + 32);
  v9.super_class = ICNoteCryptoStrategyV1;
  v6 = objc_msgSendSuper2(&v9, sel_unwrappedKey);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
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
  v7[2] = __53__ICNoteCryptoStrategyV1_mainKeyDecryptsPrimaryData___block_invoke;
  v7[3] = &unk_278194B50;
  v7[4] = self;
  v5 = dataCopy;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

id __53__ICNoteCryptoStrategyV1_mainKeyDecryptsPrimaryData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) recoverMissingCryptoWrappedKeyIfNeededWithMainKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = ICNoteCryptoStrategyV1;
  result = objc_msgSendSuper2(&v4, sel_mainKeyDecryptsPrimaryData_, v2);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)rewrapWithMainKey:(id)key
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICNoteCryptoStrategyV1 *)self rewrapWithMainKey:v5];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__ICNoteCryptoStrategyV1_rewrapWithMainKey___block_invoke;
  v13[3] = &unk_278194B50;
  v6 = keyCopy;
  v14 = v6;
  selfCopy = self;
  v16 = &v17;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v13];
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:*(v18 + 24)];
    *buf = 138413058;
    v22 = shortLoggingDescription;
    v23 = 2112;
    v25 = 2080;
    v24 = v12;
    v26 = "[ICNoteCryptoStrategyV1 rewrapWithMainKey:]";
    v27 = 1024;
    v28 = 288;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Rewrapped note with main key {note: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v8 & 1;
}

void __44__ICNoteCryptoStrategyV1_rewrapWithMainKey___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v50.receiver = *(a1 + 40);
  v50.super_class = ICNoteCryptoStrategyV1;
  if (objc_msgSendSuper2(&v50, sel_rewrapWithMainKey_, v4))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v41 = v3;
    v5 = [v3 attachments];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v47;
      *&v8 = 138412546;
      v39 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v47 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v46 + 1) + 8 * i);
          v13 = [v12 cryptoStrategy];
          v14 = [v13 rewrapWithMainKey:*(a1 + 32)];

          if ((v14 & 1) == 0)
          {
            v15 = [v12 isUsed];
            v16 = os_log_create("com.apple.notes", "Crypto");
            v17 = v16;
            if (v15)
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v20 = [v41 shortLoggingDescription];
                v21 = [v12 shortLoggingDescription];
                *buf = v39;
                v53 = v20;
                v54 = 2112;
                v55 = v21;
                _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "Cannot rewrap attachment {note: %@, attachment: %@}", buf, 0x16u);
              }

              *(*(*(a1 + 48) + 8) + 24) = 0;
            }

            else
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                v18 = [v41 shortLoggingDescription];
                v19 = [v12 shortLoggingDescription];
                *buf = v39;
                v53 = v18;
                v54 = 2112;
                v55 = v19;
                _os_log_impl(&dword_214D51000, v17, OS_LOG_TYPE_INFO, "Cannot rewrap unused attachment {note: %@, attachment: %@}", buf, 0x16u);
              }
            }
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v9);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v3 = v41;
    v22 = [v41 inlineAttachments];
    v23 = [v22 copy];

    v24 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v24)
    {
      v26 = v24;
      v27 = *v43;
      *&v25 = 138412546;
      v40 = v25;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v42 + 1) + 8 * j);
          v30 = [v29 cryptoStrategy];
          v31 = [v30 rewrapWithMainKey:*(a1 + 32)];

          if ((v31 & 1) == 0)
          {
            v32 = [v29 isUsed];
            v33 = os_log_create("com.apple.notes", "Crypto");
            v34 = v33;
            if (v32)
            {
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v37 = [v41 shortLoggingDescription];
                v38 = [v29 shortLoggingDescription];
                *buf = v40;
                v53 = v37;
                v54 = 2112;
                v55 = v38;
                _os_log_error_impl(&dword_214D51000, v34, OS_LOG_TYPE_ERROR, "Cannot rewrap inline attachment {note: %@, inlineAttachment: %@}", buf, 0x16u);
              }

              *(*(*(a1 + 48) + 8) + 24) = 0;
            }

            else
            {
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v35 = [v41 shortLoggingDescription];
                v36 = [v29 shortLoggingDescription];
                *buf = v40;
                v53 = v35;
                v54 = 2112;
                v55 = v36;
                _os_log_impl(&dword_214D51000, v34, OS_LOG_TYPE_INFO, "Cannot rewrap unused inline attachment {note: %@, inlineAttachment: %@}", buf, 0x16u);
              }
            }
          }
        }

        v26 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v26);
      v3 = v41;
    }
  }

  else
  {
    v23 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __44__ICNoteCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_1(v3);
    }
  }
}

- (void)recoverMissingCryptoWrappedKeyIfNeededWithMainKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__ICNoteCryptoStrategyV1_recoverMissingCryptoWrappedKeyIfNeededWithMainKey___block_invoke;
  v6[3] = &unk_278194C90;
  v7 = keyCopy;
  v5 = keyCopy;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v6];
}

void __76__ICNoteCryptoStrategyV1_recoverMissingCryptoWrappedKeyIfNeededWithMainKey___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isRecoveringCryptoWrappedKey] & 1) == 0 && objc_msgSend(v3, "isPasswordProtected"))
  {
    v4 = [v3 cryptoWrappedKey];
    if (v4)
    {

      goto LABEL_20;
    }

    if ([v3 needsInitialFetchFromCloud])
    {
      goto LABEL_20;
    }

    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __76__ICNoteCryptoStrategyV1_recoverMissingCryptoWrappedKeyIfNeededWithMainKey___block_invoke_cold_1(v3);
    }

    [v3 setIsRecoveringCryptoWrappedKey:1];
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = [v3 attachments];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __76__ICNoteCryptoStrategyV1_recoverMissingCryptoWrappedKeyIfNeededWithMainKey___block_invoke_27;
    v26[3] = &unk_278194C40;
    v8 = v6;
    v27 = v8;
    [v7 enumerateObjectsUsingBlock:v26];

    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 count];
      v11 = [v3 attachments];
      v12 = [v11 count];
      *buf = 134218240;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Found %lu possible wrapped keys from %lu attachments", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __76__ICNoteCryptoStrategyV1_recoverMissingCryptoWrappedKeyIfNeededWithMainKey___block_invoke_29;
    v22 = &unk_278194C68;
    v23 = *(a1 + 32);
    v13 = v3;
    v24 = v13;
    v25 = buf;
    [v8 enumerateObjectsUsingBlock:&v19];
    if (*(*&buf[8] + 40))
    {
      v14 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v13 shortLoggingDescription];
        *v28 = 138412290;
        v29 = v15;
        _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Successfully recovered crypto wrapped key for %@", v28, 0xCu);
      }

      [v13 setCryptoWrappedKey:*(*&buf[8] + 40)];
      v16 = [v13 managedObjectContext];
      [v16 ic_save];
    }

    else
    {
      if (![v13 isInCloud])
      {
LABEL_19:
        [v13 setIsRecoveringCryptoWrappedKey:{0, v19, v20, v21, v22}];

        _Block_object_dispose(buf, 8);
        goto LABEL_20;
      }

      v17 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v13 shortLoggingDescription];
        *v28 = 138412290;
        v29 = v18;
        _os_log_impl(&dword_214D51000, v17, OS_LOG_TYPE_INFO, "Unable to recover crypto wrapped key from attachments, trying to fetch the record %@", v28, 0xCu);
      }

      [v13 setNeedsToBeFetchedFromCloud:1];
      v16 = [v13 managedObjectContext];
      [v16 ic_save];
    }

    goto LABEL_19;
  }

LABEL_20:
}

void __76__ICNoteCryptoStrategyV1_recoverMissingCryptoWrappedKeyIfNeededWithMainKey___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = [a2 cryptoWrappedKey];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __76__ICNoteCryptoStrategyV1_recoverMissingCryptoWrappedKeyIfNeededWithMainKey___block_invoke_29(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = [*(a1 + 32) keyData];
  v17 = 0;
  v8 = [ICCipherV1 unwrapKey:v6 withWrapper:v7 error:&v17];
  v9 = v17;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = [*(a1 + 40) noteData];
    v12 = [v11 data];

    v13 = [*(a1 + 40) cryptoTag];
    v14 = [*(a1 + 40) cryptoInitializationVector];
    v16 = 0;
    v15 = [ICCipherV1 decryptData:v12 withKey:v8 tag:v13 initializationVector:v14 error:&v16];
    v9 = v16;

    if (v15 && !v9)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

void __58__ICNoteCryptoStrategyV1_correctCryptoTagAndIVIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 isPasswordProtected])
  {
    goto LABEL_14;
  }

  if ([v2 needsInitialFetchFromCloud])
  {
    goto LABEL_14;
  }

  v3 = [v2 cryptoTag];
  v4 = [v2 noteData];
  v5 = [v4 cryptoTag];
  v6 = [v3 isEqualToData:v5];

  v7 = [v2 cryptoInitializationVector];
  v8 = [v2 noteData];
  v9 = [v8 cryptoInitializationVector];
  v10 = [v7 isEqualToData:v9];

  if (v6)
  {
    if (v10)
    {
      goto LABEL_14;
    }
  }

  v11 = [v2 noteData];
  v12 = [v11 cryptoTag];
  if (v12)
  {
    v13 = v12;
    v14 = [v2 noteData];
    v15 = [v14 cryptoInitializationVector];

    if (v15)
    {
      v16 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __58__ICNoteCryptoStrategyV1_correctCryptoTagAndIVIfNecessary__block_invoke_cold_1(v2, v16);
      }

      v17 = [v2 noteData];
      v18 = [v17 cryptoTag];
      [v2 setCryptoTag:v18];

      v19 = [v2 noteData];
      v20 = [v19 cryptoInitializationVector];
      [v2 setCryptoInitializationVector:v20];

      v21 = [v2 managedObjectContext];
      [v21 ic_save];

      goto LABEL_14;
    }
  }

  else
  {
  }

  v22 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    __58__ICNoteCryptoStrategyV1_correctCryptoTagAndIVIfNecessary__block_invoke_cold_2(v2, v22);
  }

  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNoteCryptoStrategyV1 correctCryptoTagAndIVIfNecessary]_block_invoke" simulateCrash:1 showAlert:1 format:@"Error correcting note crypto tag/IV using note data"];
LABEL_14:
}

void __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "note is not password-protected, but writeEncryptedNoteData is called. %@", v4, v5, v6, v7, v8);
}

void __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Error encrypting data for note %@", v4, v5, v6, v7, v8);
}

void __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_5_cold_1(uint64_t a1, void *a2)
{
  v8 = [*(a1 + 32) shortLoggingDescription];
  [a2 hash];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __33__ICNoteCryptoStrategyV1_decrypt__block_invoke_8_cold_1(id *a1, uint64_t a2)
{
  objc_opt_class();
  v9 = [*a1 identifier];
  [*(*(*a2 + 8) + 40) hash];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __50__ICNoteCryptoStrategyV1_decryptNotePrimitiveData__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)rewrapWithMainKey:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 object];
  v4 = [v3 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  v6 = 2080;
  v7 = "[ICNoteCryptoStrategyV1 rewrapWithMainKey:]";
  v8 = 1024;
  v9 = 251;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Rewrapping note with main key… {note: %@}%s:%d", v5, 0x1Cu);
}

void __44__ICNoteCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Not rewrapping attachments because note text couldn't be rewrapped {note: %@}", v4, v5, v6, v7, v8);
}

void __76__ICNoteCryptoStrategyV1_recoverMissingCryptoWrappedKeyIfNeededWithMainKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __58__ICNoteCryptoStrategyV1_correctCryptoTagAndIVIfNecessary__block_invoke_cold_1(void *a1, os_log_t log)
{
  v3 = [a1 shortLoggingDescription];
  v17 = [a1 cryptoTag];
  [v17 hash];
  v4 = [a1 noteData];
  v5 = [v4 cryptoTag];
  [v5 hash];
  v6 = [a1 noteData];
  v7 = [v6 cryptoTag];
  [v7 hash];
  v8 = [a1 noteData];
  v9 = [v8 cryptoInitializationVector];
  [v9 hash];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_4_3(&dword_214D51000, v10, v11, "Correcting note crypto tag/IV using note data {note: %@, note.cryptoTag: %lu, noteData.cryptoTag: %lu, note.cryptoInitializationVector: %lu, noteData.cryptoInitializationVector: %lu}", v12, v13, v14, v15, log, v17, v19);
}

void __58__ICNoteCryptoStrategyV1_correctCryptoTagAndIVIfNecessary__block_invoke_cold_2(void *a1, os_log_t log)
{
  v3 = [a1 shortLoggingDescription];
  v17 = [a1 cryptoTag];
  [v17 hash];
  v4 = [a1 noteData];
  v5 = [v4 cryptoTag];
  [v5 hash];
  v6 = [a1 noteData];
  v7 = [v6 cryptoTag];
  [v7 hash];
  v8 = [a1 noteData];
  v9 = [v8 cryptoInitializationVector];
  [v9 hash];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_4_3(&dword_214D51000, v10, v11, "Error correcting note crypto tag/IV using note data {note: %@, note.cryptoTag: %lu, noteData.cryptoTag: %lu, note.cryptoInitializationVector: %lu, noteData.cryptoInitializationVector: %lu}", v12, v13, v14, v15, log, v17, v19);
}

@end