@interface ICCryptoStrategyBase
- (BOOL)encryptFileFromURL:(id)a3 toURL:(id)a4;
- (BOOL)encryptSidecarFileFromURL:(id)a3 toURL:(id)a4;
- (BOOL)rewrapDataAtURL:(id)a3 withMainKey:(id)a4;
- (BOOL)rewrapFile:(id)a3 withMainKey:(id)a4 generationManager:(id)a5;
- (BOOL)rewrapWithMainKey:(id)a3;
- (BOOL)serialize:(id)a3 toURL:(id)a4;
- (ICCloudSyncingObject)object;
- (ICCryptoStrategyBase)initWithCloudSyncingObject:(id)a3;
- (id)decryptedDataFromFileURL:(id)a3;
- (id)decryptedSidecarDataFromFileURL:(id)a3;
- (void)performBlockIfAccountExists:(id)a3;
- (void)performBlockIfAttachmentExists:(id)a3;
- (void)performBlockIfMediaExists:(id)a3;
- (void)performBlockIfNoteExists:(id)a3;
- (void)performBlockIfObjectExists:(id)a3;
- (void)performBlockIfPreviewImageExists:(id)a3;
@end

@implementation ICCryptoStrategyBase

- (ICCryptoStrategyBase)initWithCloudSyncingObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICCryptoStrategyBase;
  v5 = [(ICCryptoStrategyBase *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, v4);
  }

  return v6;
}

- (void)performBlockIfObjectExists:(id)a3
{
  v9 = a3;
  v4 = [(ICCryptoStrategyBase *)self object];
  v5 = [v4 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 identifier];
    v8 = [v7 length];

    if (v9)
    {
      if (v8)
      {
        v9[2](v9, v4);
      }
    }
  }
}

- (void)performBlockIfAccountExists:(id)a3
{
  v10 = a3;
  v4 = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = [v5 managedObjectContext];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 identifier];
    v9 = [v8 length];

    if (v10)
    {
      if (v9)
      {
        v10[2](v10, v5);
      }
    }
  }
}

- (void)performBlockIfNoteExists:(id)a3
{
  v10 = a3;
  v4 = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = [v5 managedObjectContext];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 identifier];
    v9 = [v8 length];

    if (v10)
    {
      if (v9)
      {
        v10[2](v10, v5);
      }
    }
  }
}

- (void)performBlockIfAttachmentExists:(id)a3
{
  v10 = a3;
  v4 = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = [v5 managedObjectContext];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 identifier];
    v9 = [v8 length];

    if (v10)
    {
      if (v9)
      {
        v10[2](v10, v5);
      }
    }
  }
}

- (void)performBlockIfPreviewImageExists:(id)a3
{
  v10 = a3;
  v4 = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = [v5 managedObjectContext];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 identifier];
    v9 = [v8 length];

    if (v10)
    {
      if (v9)
      {
        v10[2](v10, v5);
      }
    }
  }
}

- (void)performBlockIfMediaExists:(id)a3
{
  v10 = a3;
  v4 = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = [v5 managedObjectContext];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 identifier];
    v9 = [v8 length];

    if (v10)
    {
      if (v9)
      {
        v10[2](v10, v5);
      }
    }
  }
}

- (BOOL)rewrapDataAtURL:(id)a3 withMainKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke;
  v11[3] = &unk_278195A00;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v11];
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return self;
}

void __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:*(a1 + 32)];
  if (v4)
  {
    v5 = [*(a1 + 40) encryptedData:v4 rewrappedWithMainKey:*(a1 + 48)];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 32);
      v12 = 0;
      v8 = [v5 writeToURL:v7 options:1 error:&v12];
      v9 = v12;
      *(*(*(a1 + 56) + 8) + 24) = v8;
      v10 = *(*(a1 + 56) + 8);
      if (*(v10 + 24))
      {
        *(v10 + 24) = 1;
      }

      else
      {
        v11 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke_cold_1();
        }
      }
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke_cold_2(v3);
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke_cold_3(v3);
    }

    v6 = v9;
  }
}

- (BOOL)rewrapFile:(id)a3 withMainKey:(id)a4 generationManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke;
  v15[3] = &unk_2781985A8;
  v11 = v8;
  v18 = v11;
  v15[4] = self;
  v12 = v9;
  v16 = v12;
  v13 = v10;
  v17 = v13;
  v19 = &v20;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v15];
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

void __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 56) + 16))();
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4];
    if (!v5)
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke_cold_3(v3);
      }

      v6 = v9;
      goto LABEL_28;
    }

    v6 = [*(a1 + 32) encryptedData:v5 rewrappedWithMainKey:*(a1 + 40)];
    if (v6)
    {
      if ([*(a1 + 48) beginGeneration])
      {
        v7 = (*(*(a1 + 56) + 16))();
        if (!v7)
        {
          v11 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke_cold_4(v3);
          }

          v9 = 0;
          goto LABEL_26;
        }

        v12 = 0;
        v8 = [v6 writeToURL:v7 options:1 error:&v12];
        v9 = v12;
        *(*(*(a1 + 64) + 8) + 24) = v8;
        v10 = *(a1 + 48);
        if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
        {
          [v10 rollbackGeneration];
          v11 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke_cold_1();
          }

          goto LABEL_26;
        }

        if (([v10 commitGeneration] & 1) == 0)
        {
          *(*(*(a1 + 64) + 8) + 24) = 0;
          v11 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke_cold_3(v3);
          }

LABEL_26:
        }

LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke_cold_1(v3);
      }
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke_cold_2(v3);
      }
    }

    v9 = v7;
    goto LABEL_27;
  }

  v6 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke_cold_7(v3);
  }

  v5 = v6;
LABEL_29:
}

- (BOOL)rewrapWithMainKey:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoStrategyBase rewrapWithMainKey:?];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__ICCryptoStrategyBase_rewrapWithMainKey___block_invoke;
  v13[3] = &unk_2781985D0;
  v15 = &v16;
  v13[4] = self;
  v6 = v4;
  v14 = v6;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v13];
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
    v25 = "[ICCryptoStrategyBase rewrapWithMainKey:]";
    v26 = 1024;
    v27 = 324;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Rewrapped object with main key {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __42__ICCryptoStrategyBase_rewrapWithMainKey___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isUnsupported])
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 shortLoggingDescription];
      v9 = 138412290;
      v10 = v5;
      v6 = "Not rewrapping object because it is unsupported {object: %@}";
LABEL_7:
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, v6, &v9, 0xCu);

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
      v9 = 138412290;
      v10 = v5;
      v6 = "Not rewrapping object because it needs initial fetch {object: %@}";
      goto LABEL_7;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (([v3 mergeUnappliedEncryptedRecord] & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__ICCryptoStrategyBase_rewrapWithMainKey___block_invoke_cold_1(v3);
    }

    goto LABEL_14;
  }

  v4 = [v3 primaryEncryptedData];
  if (v4)
  {
    v7 = [*(a1 + 32) encryptedData:v4 rewrappedWithMainKey:*(a1 + 40)];
    if (v7)
    {
      [v3 setPrimaryEncryptedData:v7];
      [v3 updateChangeCountWithReason:@"Rewrapped object"];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __42__ICCryptoStrategyBase_rewrapWithMainKey___block_invoke_cold_2(v3);
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_15:
}

- (BOOL)encryptFileFromURL:(id)a3 toURL:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(ICCryptoStrategyBase *)self object];
    v15 = [v14 shortLoggingDescription];
    *buf = 138413314;
    v32 = v15;
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v37 = 2080;
    v36 = v7;
    v38 = "[ICCryptoStrategyBase encryptFileFromURL:toURL:]";
    v39 = 1024;
    v40 = 343;
    _os_log_debug_impl(&dword_214D51000, v8, OS_LOG_TYPE_DEBUG, "Encrypting file… {object: %@, sourceURL: %@, destinationURL: %@}%s:%d", buf, 0x30u);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __49__ICCryptoStrategyBase_encryptFileFromURL_toURL___block_invoke;
  v22 = &unk_2781985F8;
  v9 = v6;
  v23 = v9;
  v24 = self;
  v26 = &v27;
  v10 = v7;
  v25 = v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:&v19];
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(ICCryptoStrategyBase *)self object:v19];
    v17 = [v16 shortLoggingDescription];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v28 + 24)];
    *buf = 138413058;
    v32 = v17;
    v33 = 2112;
    v35 = 2080;
    v34 = v18;
    v36 = "[ICCryptoStrategyBase encryptFileFromURL:toURL:]";
    v37 = 1024;
    LODWORD(v38) = 371;
    _os_log_debug_impl(&dword_214D51000, v11, OS_LOG_TYPE_DEBUG, "Encrypted file {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v12 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v12 & 1;
}

void __49__ICCryptoStrategyBase_encryptFileFromURL_toURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__ICCryptoStrategyBase_encryptFileFromURL_toURL___block_invoke_cold_3();
    }

    v7 = v8;
    goto LABEL_12;
  }

  v7 = [*(a1 + 40) encryptData:v5];
  if (!v7)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__ICCryptoStrategyBase_encryptFileFromURL_toURL___block_invoke_cold_2(v3);
    }

    goto LABEL_11;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) serialize:v7 toURL:*(a1 + 48)];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__ICCryptoStrategyBase_encryptFileFromURL_toURL___block_invoke_cold_1(v3);
    }

LABEL_11:

LABEL_12:
  }
}

- (BOOL)encryptSidecarFileFromURL:(id)a3 toURL:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(ICCryptoStrategyBase *)self object];
    v15 = [v14 shortLoggingDescription];
    *buf = 138413314;
    v32 = v15;
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v37 = 2080;
    v36 = v7;
    v38 = "[ICCryptoStrategyBase encryptSidecarFileFromURL:toURL:]";
    v39 = 1024;
    v40 = 383;
    _os_log_debug_impl(&dword_214D51000, v8, OS_LOG_TYPE_DEBUG, "Encrypting sidecar file… {object: %@, sourceURL: %@, destinationURL: %@}%s:%d", buf, 0x30u);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __56__ICCryptoStrategyBase_encryptSidecarFileFromURL_toURL___block_invoke;
  v22 = &unk_2781985F8;
  v9 = v6;
  v23 = v9;
  v24 = self;
  v26 = &v27;
  v10 = v7;
  v25 = v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:&v19];
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(ICCryptoStrategyBase *)self object:v19];
    v17 = [v16 shortLoggingDescription];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v28 + 24)];
    *buf = 138413058;
    v32 = v17;
    v33 = 2112;
    v35 = 2080;
    v34 = v18;
    v36 = "[ICCryptoStrategyBase encryptSidecarFileFromURL:toURL:]";
    v37 = 1024;
    LODWORD(v38) = 411;
    _os_log_debug_impl(&dword_214D51000, v11, OS_LOG_TYPE_DEBUG, "Encrypted sidecar file {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v12 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v12 & 1;
}

void __56__ICCryptoStrategyBase_encryptSidecarFileFromURL_toURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v14];
  v6 = v14;
  if (!v5)
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __56__ICCryptoStrategyBase_encryptSidecarFileFromURL_toURL___block_invoke_cold_3();
    }

    v8 = v12;
    goto LABEL_13;
  }

  v7 = [*(a1 + 40) encryptSidecarData:v5];
  v8 = v7;
  if (!v7)
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __56__ICCryptoStrategyBase_encryptSidecarFileFromURL_toURL___block_invoke_cold_2(v3);
    }

    goto LABEL_12;
  }

  v9 = *(a1 + 48);
  v13 = v6;
  v10 = [v7 writeToURL:v9 options:1 error:&v13];
  v11 = v13;

  *(*(*(a1 + 56) + 8) + 24) = v10;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __56__ICCryptoStrategyBase_encryptSidecarFileFromURL_toURL___block_invoke_cold_1();
    }

    v6 = v11;
LABEL_12:

LABEL_13:
    v11 = v6;
  }
}

- (BOOL)serialize:(id)a3 toURL:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoStrategyBase serialize:? toURL:?];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __40__ICCryptoStrategyBase_serialize_toURL___block_invoke;
  v20 = &unk_2781985F8;
  v9 = v7;
  v21 = v9;
  v10 = v6;
  v23 = self;
  v24 = &v25;
  v22 = v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:&v17];
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(ICCryptoStrategyBase *)self object:v17];
    v15 = [v14 shortLoggingDescription];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:*(v26 + 24)];
    *buf = 138413058;
    v30 = v15;
    v31 = 2112;
    v33 = 2080;
    v32 = v16;
    v34 = "[ICCryptoStrategyBase serialize:toURL:]";
    v35 = 1024;
    v36 = 445;
    _os_log_debug_impl(&dword_214D51000, v11, OS_LOG_TYPE_DEBUG, "Serialized encryption object {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v12 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  return v12 & 1;
}

void __40__ICCryptoStrategyBase_serialize_toURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [*(a1 + 32) path];
  v6 = [v4 fileExistsAtPath:v5];

  v7 = [*(a1 + 40) serialized];
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v15 = 0;
    v10 = [v7 writeToURL:v9 options:1 error:&v15];
    v11 = v15;
    *(*(*(a1 + 56) + 8) + 24) = v10;
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if ((v6 & 1) == 0)
      {
        v12 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __40__ICCryptoStrategyBase_serialize_toURL___block_invoke_cold_2(a1);
        }

        [v3 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
      }
    }

    else
    {
      v14 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __40__ICCryptoStrategyBase_serialize_toURL___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __40__ICCryptoStrategyBase_serialize_toURL___block_invoke_cold_3(v3);
    }

    v11 = 0;
  }
}

- (id)decryptedDataFromFileURL:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoStrategyBase decryptedDataFromFileURL:?];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__46;
  v21 = __Block_byref_object_dispose__46;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__ICCryptoStrategyBase_decryptedDataFromFileURL___block_invoke;
  v13[3] = &unk_278195A28;
  v6 = v4;
  v15 = self;
  v16 = &v17;
  v14 = v6;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v13];
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
    v28 = "[ICCryptoStrategyBase decryptedDataFromFileURL:]";
    v29 = 1024;
    v30 = 491;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Decrypted file {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v8;
}

void __49__ICCryptoStrategyBase_decryptedDataFromFileURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v11];
  v6 = v11;
  if (!v5)
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __49__ICCryptoStrategyBase_decryptedDataFromFileURL___block_invoke_cold_2();
    }

    goto LABEL_7;
  }

  v7 = [*(a1 + 40) decryptData:v5];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __49__ICCryptoStrategyBase_decryptedDataFromFileURL___block_invoke_cold_1();
    }

LABEL_7:
  }
}

- (id)decryptedSidecarDataFromFileURL:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoStrategyBase decryptedSidecarDataFromFileURL:?];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__46;
  v21 = __Block_byref_object_dispose__46;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__ICCryptoStrategyBase_decryptedSidecarDataFromFileURL___block_invoke;
  v13[3] = &unk_278195A28;
  v6 = v4;
  v15 = self;
  v16 = &v17;
  v14 = v6;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v13];
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
    v28 = "[ICCryptoStrategyBase decryptedSidecarDataFromFileURL:]";
    v29 = 1024;
    v30 = 524;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Decrypted sidecar file {object: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v8;
}

void __56__ICCryptoStrategyBase_decryptedSidecarDataFromFileURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v11];
  v6 = v11;
  if (!v5)
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __56__ICCryptoStrategyBase_decryptedSidecarDataFromFileURL___block_invoke_cold_2();
    }

    goto LABEL_7;
  }

  v7 = [*(a1 + 40) decryptSidecarData:v5];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __56__ICCryptoStrategyBase_decryptedSidecarDataFromFileURL___block_invoke_cold_1();
    }

LABEL_7:
  }
}

- (ICCloudSyncingObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

void __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke_cold_4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke_cold_7(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)rewrapWithMainKey:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __42__ICCryptoStrategyBase_rewrapWithMainKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __42__ICCryptoStrategyBase_rewrapWithMainKey___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __49__ICCryptoStrategyBase_encryptFileFromURL_toURL___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __49__ICCryptoStrategyBase_encryptFileFromURL_toURL___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __49__ICCryptoStrategyBase_encryptFileFromURL_toURL___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __56__ICCryptoStrategyBase_encryptSidecarFileFromURL_toURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __56__ICCryptoStrategyBase_encryptSidecarFileFromURL_toURL___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __56__ICCryptoStrategyBase_encryptSidecarFileFromURL_toURL___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)serialize:(void *)a1 toURL:.cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

void __40__ICCryptoStrategyBase_serialize_toURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __40__ICCryptoStrategyBase_serialize_toURL___block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 48) object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __40__ICCryptoStrategyBase_serialize_toURL___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)decryptedDataFromFileURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

void __49__ICCryptoStrategyBase_decryptedDataFromFileURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __49__ICCryptoStrategyBase_decryptedDataFromFileURL___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)decryptedSidecarDataFromFileURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

void __56__ICCryptoStrategyBase_decryptedSidecarDataFromFileURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __56__ICCryptoStrategyBase_decryptedSidecarDataFromFileURL___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end