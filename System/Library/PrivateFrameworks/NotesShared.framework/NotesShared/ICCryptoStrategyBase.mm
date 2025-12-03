@interface ICCryptoStrategyBase
- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL;
- (BOOL)encryptSidecarFileFromURL:(id)l toURL:(id)rL;
- (BOOL)rewrapDataAtURL:(id)l withMainKey:(id)key;
- (BOOL)rewrapFile:(id)file withMainKey:(id)key generationManager:(id)manager;
- (BOOL)rewrapWithMainKey:(id)key;
- (BOOL)serialize:(id)serialize toURL:(id)l;
- (ICCloudSyncingObject)object;
- (ICCryptoStrategyBase)initWithCloudSyncingObject:(id)object;
- (id)decryptedDataFromFileURL:(id)l;
- (id)decryptedSidecarDataFromFileURL:(id)l;
- (void)performBlockIfAccountExists:(id)exists;
- (void)performBlockIfAttachmentExists:(id)exists;
- (void)performBlockIfMediaExists:(id)exists;
- (void)performBlockIfNoteExists:(id)exists;
- (void)performBlockIfObjectExists:(id)exists;
- (void)performBlockIfPreviewImageExists:(id)exists;
@end

@implementation ICCryptoStrategyBase

- (ICCryptoStrategyBase)initWithCloudSyncingObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = ICCryptoStrategyBase;
  v5 = [(ICCryptoStrategyBase *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
  }

  return v6;
}

- (void)performBlockIfObjectExists:(id)exists
{
  existsCopy = exists;
  object = [(ICCryptoStrategyBase *)self object];
  managedObjectContext = [object managedObjectContext];
  if (managedObjectContext)
  {
    v6 = managedObjectContext;
    identifier = [object identifier];
    v8 = [identifier length];

    if (existsCopy)
    {
      if (v8)
      {
        existsCopy[2](existsCopy, object);
      }
    }
  }
}

- (void)performBlockIfAccountExists:(id)exists
{
  existsCopy = exists;
  object = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  managedObjectContext = [v5 managedObjectContext];
  if (managedObjectContext)
  {
    v7 = managedObjectContext;
    identifier = [v5 identifier];
    v9 = [identifier length];

    if (existsCopy)
    {
      if (v9)
      {
        existsCopy[2](existsCopy, v5);
      }
    }
  }
}

- (void)performBlockIfNoteExists:(id)exists
{
  existsCopy = exists;
  object = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  managedObjectContext = [v5 managedObjectContext];
  if (managedObjectContext)
  {
    v7 = managedObjectContext;
    identifier = [v5 identifier];
    v9 = [identifier length];

    if (existsCopy)
    {
      if (v9)
      {
        existsCopy[2](existsCopy, v5);
      }
    }
  }
}

- (void)performBlockIfAttachmentExists:(id)exists
{
  existsCopy = exists;
  object = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  managedObjectContext = [v5 managedObjectContext];
  if (managedObjectContext)
  {
    v7 = managedObjectContext;
    identifier = [v5 identifier];
    v9 = [identifier length];

    if (existsCopy)
    {
      if (v9)
      {
        existsCopy[2](existsCopy, v5);
      }
    }
  }
}

- (void)performBlockIfPreviewImageExists:(id)exists
{
  existsCopy = exists;
  object = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  managedObjectContext = [v5 managedObjectContext];
  if (managedObjectContext)
  {
    v7 = managedObjectContext;
    identifier = [v5 identifier];
    v9 = [identifier length];

    if (existsCopy)
    {
      if (v9)
      {
        existsCopy[2](existsCopy, v5);
      }
    }
  }
}

- (void)performBlockIfMediaExists:(id)exists
{
  existsCopy = exists;
  object = [(ICCryptoStrategyBase *)self object];
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  managedObjectContext = [v5 managedObjectContext];
  if (managedObjectContext)
  {
    v7 = managedObjectContext;
    identifier = [v5 identifier];
    v9 = [identifier length];

    if (existsCopy)
    {
      if (v9)
      {
        existsCopy[2](existsCopy, v5);
      }
    }
  }
}

- (BOOL)rewrapDataAtURL:(id)l withMainKey:(id)key
{
  lCopy = l;
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__ICCryptoStrategyBase_rewrapDataAtURL_withMainKey___block_invoke;
  v11[3] = &unk_278195A00;
  v8 = lCopy;
  v12 = v8;
  selfCopy = self;
  v9 = keyCopy;
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

- (BOOL)rewrapFile:(id)file withMainKey:(id)key generationManager:(id)manager
{
  fileCopy = file;
  keyCopy = key;
  managerCopy = manager;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ICCryptoStrategyBase_rewrapFile_withMainKey_generationManager___block_invoke;
  v15[3] = &unk_2781985A8;
  v11 = fileCopy;
  v18 = v11;
  v15[4] = self;
  v12 = keyCopy;
  v16 = v12;
  v13 = managerCopy;
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

- (BOOL)rewrapWithMainKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
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
  v6 = keyCopy;
  v14 = v6;
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

- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL
{
  v41 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    *buf = 138413314;
    v32 = shortLoggingDescription;
    v33 = 2112;
    v34 = lCopy;
    v35 = 2112;
    v37 = 2080;
    v36 = rLCopy;
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
  v9 = lCopy;
  v23 = v9;
  selfCopy = self;
  v26 = &v27;
  v10 = rLCopy;
  v25 = v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:&v19];
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(ICCryptoStrategyBase *)self object:v19];
    shortLoggingDescription2 = [v16 shortLoggingDescription];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v28 + 24)];
    *buf = 138413058;
    v32 = shortLoggingDescription2;
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

- (BOOL)encryptSidecarFileFromURL:(id)l toURL:(id)rL
{
  v41 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    *buf = 138413314;
    v32 = shortLoggingDescription;
    v33 = 2112;
    v34 = lCopy;
    v35 = 2112;
    v37 = 2080;
    v36 = rLCopy;
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
  v9 = lCopy;
  v23 = v9;
  selfCopy = self;
  v26 = &v27;
  v10 = rLCopy;
  v25 = v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:&v19];
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(ICCryptoStrategyBase *)self object:v19];
    shortLoggingDescription2 = [v16 shortLoggingDescription];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v28 + 24)];
    *buf = 138413058;
    v32 = shortLoggingDescription2;
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

- (BOOL)serialize:(id)serialize toURL:(id)l
{
  v37 = *MEMORY[0x277D85DE8];
  serializeCopy = serialize;
  lCopy = l;
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
  v9 = lCopy;
  v21 = v9;
  v10 = serializeCopy;
  selfCopy = self;
  v24 = &v25;
  v22 = v10;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:&v17];
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(ICCryptoStrategyBase *)self object:v17];
    shortLoggingDescription = [v14 shortLoggingDescription];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:*(v26 + 24)];
    *buf = 138413058;
    v30 = shortLoggingDescription;
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

- (id)decryptedDataFromFileURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
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
  v6 = lCopy;
  selfCopy = self;
  v16 = &v17;
  v14 = v6;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v13];
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v18[5] != 0];
    *buf = 138413058;
    v24 = shortLoggingDescription;
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

- (id)decryptedSidecarDataFromFileURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
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
  v6 = lCopy;
  selfCopy = self;
  v16 = &v17;
  v14 = v6;
  [(ICCryptoStrategyBase *)self performBlockIfObjectExists:v13];
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v18[5] != 0];
    *buf = 138413058;
    v24 = shortLoggingDescription;
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