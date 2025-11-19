@interface ICNoteCryptoStrategyV1Neo
- (BOOL)decrypt;
- (BOOL)rewrapWithMainKey:(id)a3;
- (BOOL)writeEncryptedNoteData:(id)a3;
- (id)decryptNotePrimitiveData;
- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)a3;
- (void)decrypt;
- (void)decryptNotePrimitiveData;
- (void)mergeEncryptedData:(id)a3 mergeConflict:(id)a4;
@end

@implementation ICNoteCryptoStrategyV1Neo

- (BOOL)rewrapWithMainKey:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteCryptoStrategyV1Neo rewrapWithMainKey:?];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__ICNoteCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke;
  v13[3] = &unk_278194B50;
  v6 = v4;
  v14 = v6;
  v15 = self;
  v16 = &v17;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v13];
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(ICCryptoStrategyBase *)self object];
    v11 = [v10 shortLoggingDescription];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:*(v18 + 24)];
    *buf = 138413058;
    v22 = v11;
    v23 = 2112;
    v25 = 2080;
    v24 = v12;
    v26 = "[ICNoteCryptoStrategyV1Neo rewrapWithMainKey:]";
    v27 = 1024;
    v28 = 65;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Rewrapped note with main key {note: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v8 & 1;
}

void __47__ICNoteCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v50.receiver = *(a1 + 40);
  v50.super_class = ICNoteCryptoStrategyV1Neo;
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

- (BOOL)writeEncryptedNoteData:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteCryptoStrategyV1Neo writeEncryptedNoteData:?];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__ICNoteCryptoStrategyV1Neo_writeEncryptedNoteData___block_invoke;
  v13[3] = &unk_278194B50;
  v13[4] = self;
  v6 = v4;
  v14 = v6;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v13];
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(ICCryptoStrategyBase *)self object];
    v11 = [v10 shortLoggingDescription];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:*(v17 + 24)];
    *buf = 138413058;
    v21 = v11;
    v22 = 2112;
    v24 = 2080;
    v23 = v12;
    v25 = "[ICNoteCryptoStrategyV1Neo writeEncryptedNoteData:]";
    v26 = 1024;
    v27 = 103;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Wrote encrypted note data {note: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __52__ICNoteCryptoStrategyV1Neo_writeEncryptedNoteData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 noteData];
  v5 = [v4 data];
  v6 = [v5 length];

  v7 = [*(a1 + 32) encryptData:*(a1 + 40)];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 serialized];
    if (v9)
    {
      v10 = [v3 noteData];
      [v10 setData:v9];

      [v3 applyRandomCryptoGooIfNeeded];
      if (!v6)
      {
        [v3 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
      }

      [v3 updateArchivedAndLastViewedTimeStampsAfterSavingNoteData];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __52__ICNoteCryptoStrategyV1Neo_writeEncryptedNoteData___block_invoke_cold_1(v3);
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__ICNoteCryptoStrategyV1Neo_writeEncryptedNoteData___block_invoke_cold_2(v3);
    }
  }
}

- (BOOL)decrypt
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICNoteCryptoStrategyV1Neo *)self decrypt];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__ICNoteCryptoStrategyV1Neo_decrypt__block_invoke;
  v10[3] = &unk_278194BA0;
  v10[4] = self;
  v10[5] = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v10];
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(ICCryptoStrategyBase *)self object];
    v8 = [v7 shortLoggingDescription];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:*(v12 + 24)];
    *buf = 138413058;
    v16 = v8;
    v17 = 2112;
    v19 = 2080;
    v18 = v9;
    v20 = "[ICNoteCryptoStrategyV1Neo decrypt]";
    v21 = 1024;
    v22 = 133;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Decrypted note data {note: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v5;
}

void __36__ICNoteCryptoStrategyV1Neo_decrypt__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 noteData];
  v5 = [v4 data];

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __36__ICNoteCryptoStrategyV1Neo_decrypt__block_invoke_cold_1(a1, v3);
    }

    v7 = *(a1 + 32);
    v8 = [v3 noteData];
    v9 = [v8 data];
    v10 = [v7 decryptData:v9];

    if (v10)
    {
      [v3 setDecryptedData:v10];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __36__ICNoteCryptoStrategyV1Neo_decrypt__block_invoke_cold_2(v3);
      }
    }
  }
}

- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteCryptoStrategyV1Neo decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:?];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__ICNoteCryptoStrategyV1Neo_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke;
  v13[3] = &unk_278194B50;
  v6 = v4;
  v14 = v6;
  v15 = self;
  v16 = &v17;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v13];
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(ICCryptoStrategyBase *)self object];
    v11 = [v10 shortLoggingDescription];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v18[5] != 0];
    *buf = 138413058;
    v24 = v11;
    v25 = 2112;
    v27 = 2080;
    v26 = v12;
    v28 = "[ICNoteCryptoStrategyV1Neo decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:]";
    v29 = 1024;
    v30 = 165;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Decrypted note data or saving as unapplied record {note: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v8;
}

void __86__ICNoteCryptoStrategyV1Neo_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 primaryEncryptedDataFromRecord:*(a1 + 32)];
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __86__ICNoteCryptoStrategyV1Neo_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke_cold_1(v3, v4);
  }

  if (!v4)
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __86__ICNoteCryptoStrategyV1Neo_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke_cold_3(v3);
    }

    goto LABEL_11;
  }

  if ([v3 isAuthenticated] && (objc_msgSend(*(a1 + 40), "isRecordAuthenticated:", *(a1 + 32)) & 1) != 0)
  {
    v6 = [*(a1 + 40) decryptData:v4];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __86__ICNoteCryptoStrategyV1Neo_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke_cold_2(v3, v4);
    }

LABEL_11:

    goto LABEL_12;
  }

  [v3 setUnappliedEncryptedRecord:*(a1 + 32)];
LABEL_12:
}

- (id)decryptNotePrimitiveData
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICNoteCryptoStrategyV1Neo *)self decryptNotePrimitiveData];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__ICNoteCryptoStrategyV1Neo_decryptNotePrimitiveData__block_invoke;
  v10[3] = &unk_278194BC8;
  v10[4] = self;
  v10[5] = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v10];
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(ICCryptoStrategyBase *)self object];
    v8 = [v7 shortLoggingDescription];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v12[5] != 0];
    *buf = 138413058;
    v18 = v8;
    v19 = 2112;
    v21 = 2080;
    v20 = v9;
    v22 = "[ICNoteCryptoStrategyV1Neo decryptNotePrimitiveData]";
    v23 = 1024;
    v24 = 191;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Decrypted note primitive data {note: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __53__ICNoteCryptoStrategyV1Neo_decryptNotePrimitiveData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 noteData];
  v5 = [v4 primitiveData];

  v6 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __53__ICNoteCryptoStrategyV1Neo_decryptNotePrimitiveData__block_invoke_cold_1(v3, v5);
  }

  if (v5)
  {
    v7 = [*(a1 + 32) decryptData:v5];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v10 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __53__ICNoteCryptoStrategyV1Neo_decryptNotePrimitiveData__block_invoke_cold_2(v3);
      }
    }
  }
}

- (void)mergeEncryptedData:(id)a3 mergeConflict:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteCryptoStrategyV1Neo mergeEncryptedData:? mergeConflict:?];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__ICNoteCryptoStrategyV1Neo_mergeEncryptedData_mergeConflict___block_invoke;
  v14[3] = &unk_278194B50;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v16 = &v17;
  [(ICCryptoStrategyBase *)self performBlockIfNoteExists:v14];
  v10 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(ICCryptoStrategyBase *)self object];
    v12 = [v11 shortLoggingDescription];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:*(v18 + 24)];
    *buf = 138413058;
    v22 = v12;
    v23 = 2112;
    v25 = 2080;
    v24 = v13;
    v26 = "[ICNoteCryptoStrategyV1Neo mergeEncryptedData:mergeConflict:]";
    v27 = 1024;
    v28 = 220;
    _os_log_debug_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEBUG, "Merged encrypted note data {note: %@, success: %@}%s:%d", buf, 0x26u);
  }

  _Block_object_dispose(&v17, 8);
}

void __62__ICNoteCryptoStrategyV1Neo_mergeEncryptedData_mergeConflict___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) decryptData:*(a1 + 40)];
  if (v4)
  {
    [v3 mergeWithNoteData:v4];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __36__ICNoteCryptoStrategyV1Neo_decrypt__block_invoke_cold_2(v3);
    }
  }
}

- (void)rewrapWithMainKey:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)writeEncryptedNoteData:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __52__ICNoteCryptoStrategyV1Neo_writeEncryptedNoteData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot serialize encrypted note data {note: %@}", v4, v5, v6, v7, v8);
}

void __52__ICNoteCryptoStrategyV1Neo_writeEncryptedNoteData___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt note data {note: %@}", v4, v5, v6, v7, v8);
}

- (void)decrypt
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __36__ICNoteCryptoStrategyV1Neo_decrypt__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) object];
  v4 = [v3 shortLoggingDescription];
  v5 = MEMORY[0x277CCABB0];
  v6 = [a2 noteData];
  v7 = [v6 data];
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v7, "hash")}];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x26u);
}

void __36__ICNoteCryptoStrategyV1Neo_decrypt__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt note data {note: %@}", v4, v5, v6, v7, v8);
}

- (void)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __86__ICNoteCryptoStrategyV1Neo_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke_cold_1(void *a1, void *a2)
{
  [a1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_7_0() noteData];
  v7 = [v6 primitiveData];
  v8 = [v3 numberWithUnsignedInteger:{objc_msgSend(v7, "hash")}];
  v9 = [*(v4 + 2992) numberWithUnsignedInteger:{objc_msgSend(a2, "hash")}];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x30u);
}

void __86__ICNoteCryptoStrategyV1Neo_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke_cold_2(void *a1, void *a2)
{
  [a1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_7_0() noteData];
  v7 = [v6 primitiveData];
  v8 = [v3 numberWithUnsignedInteger:{objc_msgSend(v7, "hash")}];
  v9 = [*(v4 + 2992) numberWithUnsignedInteger:{objc_msgSend(a2, "hash")}];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x30u);
}

void __86__ICNoteCryptoStrategyV1Neo_decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt note data from record {note: %@}", v4, v5, v6, v7, v8);
}

- (void)decryptNotePrimitiveData
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __53__ICNoteCryptoStrategyV1Neo_decryptNotePrimitiveData__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "hash")}];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);
}

void __53__ICNoteCryptoStrategyV1Neo_decryptNotePrimitiveData__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt primitive note data {note: %@}", v4, v5, v6, v7, v8);
}

- (void)mergeEncryptedData:(void *)a1 mergeConflict:.cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

@end