@interface ICNoteCryptoStrategyV2
- (BOOL)decrypt;
- (BOOL)writeEncryptedNoteData:(id)a3;
- (id)decryptNotePrimitiveData;
- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)a3;
- (void)mergeEncryptedData:(id)a3 mergeConflict:(id)a4;
- (void)serializeToNoteDataAndUpdateArchivedAndLastViewedTimeStamps:(id)a3;
@end

@implementation ICNoteCryptoStrategyV2

- (BOOL)writeEncryptedNoteData:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ICNoteCryptoStrategyV2_writeEncryptedNoteData___block_invoke;
  v7[3] = &unk_278194B50;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __49__ICNoteCryptoStrategyV2_writeEncryptedNoteData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUnsupported])
  {
    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__ICNoteCryptoStrategyV2_writeEncryptedNoteData___block_invoke_cold_3(v3);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (([v3 isPasswordProtected] & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__ICNoteCryptoStrategyV1_writeEncryptedNoteData___block_invoke_cold_1(v3);
    }

    goto LABEL_9;
  }

  v4 = [*(a1 + 32) encryptData:*(a1 + 40)];
  if (v4)
  {
    [*(a1 + 32) serializeToNoteDataAndUpdateArchivedAndLastViewedTimeStamps:v4];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__ICNoteCryptoStrategyV2_writeEncryptedNoteData___block_invoke_cold_2(v3);
    }
  }

LABEL_10:
}

- (BOOL)decrypt
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__ICNoteCryptoStrategyV2_decrypt__block_invoke;
  v4[3] = &unk_278194BA0;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __33__ICNoteCryptoStrategyV2_decrypt__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__ICNoteCryptoStrategyV2_decrypt__block_invoke_2;
  v6[3] = &unk_2781961E0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  [v4 performBlockAndWait:v6];
}

void __33__ICNoteCryptoStrategyV2_decrypt__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (([*(a1 + 32) isPasswordProtected] & 1) == 0)
  {
    v9 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*v2 shortLoggingDescription];
      v13 = 138412290;
      v14 = v10;
      v11 = "note is not password-protected, but decrypt is called. %@";
LABEL_11:
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, v11, &v13, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  v3 = [*v2 noteData];
  v4 = [v3 data];

  if (!v4)
  {
    v9 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*v2 shortLoggingDescription];
      v13 = 138412290;
      v14 = v10;
      v11 = "note doesn't have textDataFromDatabase, but decrypt is called. %@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __33__ICNoteCryptoStrategyV2_decrypt__block_invoke_2_cold_1(v2, v5);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) noteData];
  v8 = [v7 data];
  v9 = [v6 decryptData:v8];

  if (v9)
  {
    [*(a1 + 32) setDecryptedData:v9];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __33__ICNoteCryptoStrategyV2_decrypt__block_invoke_2_cold_2(v2);
    }
  }

LABEL_13:
}

- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__45;
  v16 = __Block_byref_object_dispose__45;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__ICNoteCryptoStrategyV2_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke;
  v8[3] = &unk_278194B50;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __83__ICNoteCryptoStrategyV2_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isPasswordProtected])
  {
    v4 = [*(a1 + 32) ic_encryptedInlineableDataAssetForKeyPrefix:@"TextData"];
    if (v4)
    {
      if ([*(a1 + 40) isRecordAuthenticated:*(a1 + 32)])
      {
        v5 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = objc_opt_class();
          v7 = v6;
          v8 = [v3 identifier];
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject hash](v4, "hash")}];
          v16 = 138412802;
          v17 = v6;
          v18 = 2112;
          v19 = v8;
          v20 = 2112;
          v21 = v9;
          _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "About to decrypt text data from cloud for merging %@ (%@): %@", &v16, 0x20u);
        }

        v10 = [*(a1 + 40) decryptData:v4];
        v11 = *(*(a1 + 48) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }

      else
      {
        [v3 setUnappliedEncryptedRecord:*(a1 + 32)];
      }
    }

    else
    {
      v14 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v3 shortLoggingDescription];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "topoTextDataFromRecord is nil, but decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated: is called. %@", &v16, 0xCu);
      }
    }
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v13 = [v3 shortLoggingDescription];
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "note is not password-protected, but decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated: is called. %@", &v16, 0xCu);
    }
  }
}

- (id)decryptNotePrimitiveData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__45;
  v9 = __Block_byref_object_dispose__45;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ICNoteCryptoStrategyV2_decryptNotePrimitiveData__block_invoke;
  v4[3] = &unk_278194BC8;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __50__ICNoteCryptoStrategyV2_decryptNotePrimitiveData__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isPasswordProtected] & 1) == 0)
  {
    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v3 shortLoggingDescription];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_INFO, "note is not password-protected, but decryptNotePrimitiveData is called. %@", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __50__ICNoteCryptoStrategyV2_decryptNotePrimitiveData__block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  v6 = [v3 noteData];
  v7 = [v6 primitiveData];
  v8 = [v5 decryptData:v7];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __50__ICNoteCryptoStrategyV2_decryptNotePrimitiveData__block_invoke_cold_2(v3);
    }

LABEL_9:
  }
}

- (void)mergeEncryptedData:(id)a3 mergeConflict:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ICNoteCryptoStrategyV2_mergeEncryptedData_mergeConflict___block_invoke;
  v7[3] = &unk_278198540;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v7];
}

void __59__ICNoteCryptoStrategyV2_mergeEncryptedData_mergeConflict___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) decryptData:*(a1 + 40)];
  if (v4)
  {
    [v3 mergeWithNoteData:v4];
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ICNoteCryptoStrategyV2_mergeEncryptedData_mergeConflict___block_invoke_cold_1(v3);
    }
  }
}

- (void)serializeToNoteDataAndUpdateArchivedAndLastViewedTimeStamps:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__ICNoteCryptoStrategyV2_serializeToNoteDataAndUpdateArchivedAndLastViewedTimeStamps___block_invoke;
  v6[3] = &unk_278194C90;
  v7 = v4;
  v5 = v4;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v6];
}

void __86__ICNoteCryptoStrategyV2_serializeToNoteDataAndUpdateArchivedAndLastViewedTimeStamps___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) serialized];
  if (v4)
  {
    v5 = [v3 noteData];
    v6 = [v5 data];
    v7 = [v6 length];

    v8 = [v3 noteData];
    [v8 setData:v4];

    [v3 applyRandomCryptoGooIfNeeded];
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v3 shortLoggingDescription];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Successfully encrypted data for %@", &v12, 0xCu);
    }

    if (!v7)
    {
      [v3 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
    }

    [v3 updateArchivedAndLastViewedTimeStampsAfterSavingNoteData];
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __86__ICNoteCryptoStrategyV2_serializeToNoteDataAndUpdateArchivedAndLastViewedTimeStamps___block_invoke_cold_1(v3);
    }
  }
}

void __49__ICNoteCryptoStrategyV2_writeEncryptedNoteData___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Failed to encrypt data for note %@", v4, v5, v6, v7, v8);
}

void __49__ICNoteCryptoStrategyV2_writeEncryptedNoteData___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "note is not suported, but writeEncryptedNoteData is called. %@", v4, v5, v6, v7, v8);
}

void __33__ICNoteCryptoStrategyV2_decrypt__block_invoke_2_cold_1(id *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [*a1 shortLoggingDescription];
  v5 = MEMORY[0x277CCABB0];
  v6 = [*a1 noteData];
  v7 = [v6 data];
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v7, "hash")}];
  v9 = 138412546;
  v10 = v4;
  v11 = 2112;
  v12 = v8;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "About to decrypt text data for %@, hash = %@", &v9, 0x16u);
}

void __33__ICNoteCryptoStrategyV2_decrypt__block_invoke_2_cold_2(id *a1)
{
  v1 = [*a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Failed to decrypt note data for %@", v4, v5, v6, v7, v8);
}

void __50__ICNoteCryptoStrategyV2_decryptNotePrimitiveData__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Decrypting note primitive data of %@", v4, 0xCu);
}

void __50__ICNoteCryptoStrategyV2_decryptNotePrimitiveData__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Failed to decrypt note primitive data for %@", v4, v5, v6, v7, v8);
}

void __59__ICNoteCryptoStrategyV2_mergeEncryptedData_mergeConflict___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "cannot decrypt data when processing NSMergeConflict: %@", v4, v5, v6, v7, v8);
}

void __86__ICNoteCryptoStrategyV2_serializeToNoteDataAndUpdateArchivedAndLastViewedTimeStamps___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Failed to serialize encrypted object for %@", v4, v5, v6, v7, v8);
}

@end