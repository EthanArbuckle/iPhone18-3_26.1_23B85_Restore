@interface ICAttachmentPreviewImageCryptoStrategyV1
- (BOOL)writeEncryptedImageData:(id)a3;
- (BOOL)writeEncryptedMetadata:(id)a3;
- (id)_decryptedImageData;
- (id)decryptedImageData;
- (id)decryptedMetadata;
@end

@implementation ICAttachmentPreviewImageCryptoStrategyV1

- (BOOL)writeEncryptedMetadata:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke;
  v7[3] = &unk_278197650;
  v5 = v4;
  v8 = v5;
  v9 = self;
  v10 = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPasswordProtected])
  {
    [v3 willChangeValueForKey:@"metadata"];
    if (*(a1 + 32))
    {
      v4 = objc_opt_class();
      v5 = *(a1 + 32);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke_3;
      v12[3] = &unk_278194B00;
      v13 = v3;
      v7 = MEMORY[0x277D85DD0];
      v8 = 3221225472;
      v9 = __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke_6;
      v10 = &unk_278198428;
      v11 = v13;
      [v4 encryptWithMainKeyOfObject:v11 dataToEncrypt:v5 failureHandler:v12 successHandler:&v7];
    }

    else
    {
      [v3 setEncryptedMetadata:0];
      [v3 setCryptoMetadataInitializationVector:0];
      [v3 setCryptoMetadataTag:0];
    }

    [v3 setPrimitiveValue:0 forKey:{@"metadata", v7, v8, v9, v10}];
    [v3 didChangeValueForKey:@"metadata"];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke_cold_1(v3);
    }
  }
}

void __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke_3(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke_3_cold_1(a1);
  }
}

void __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  [v7 setEncryptedMetadata:a2];
  [*(a1 + 32) setCryptoMetadataInitializationVector:v8];

  [*(a1 + 32) setCryptoMetadataTag:v9];
}

- (BOOL)writeEncryptedImageData:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke;
  v7[3] = &unk_278197650;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUnsupported])
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_cold_4(v3);
    }

LABEL_11:
    v5 = v4;
    goto LABEL_12;
  }

  if (([v3 isPasswordProtected] & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_cold_1(v3);
    }

    goto LABEL_11;
  }

  v5 = [v3 encryptedPreviewImageURL];
  v6 = os_log_create("com.apple.notes", "Crypto");
  v4 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_cold_2(v3, v5, v4);
    }

    v7 = objc_opt_class();
    v8 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_9;
    v15[3] = &unk_278194B00;
    v16 = v3;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_10;
    v11[3] = &unk_278198450;
    v5 = v5;
    v12 = v5;
    v9 = v16;
    v10 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    [v7 encryptWithMainKeyOfObject:v9 dataToEncrypt:v8 failureHandler:v15 successHandler:v11];

    v4 = v16;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_cold_3(v3);
    }
  }

LABEL_12:
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_9(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_9_cold_1(a1);
  }
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v21 = 0;
  v10 = [a2 writeToURL:v9 options:1 error:&v21];
  v11 = v21;
  if (v10)
  {
    v12 = [*(a1 + 40) managedObjectContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_11;
    v16[3] = &unk_2781960A8;
    v17 = *(a1 + 40);
    v18 = v7;
    v13 = v8;
    v14 = *(a1 + 48);
    v19 = v13;
    v20 = v14;
    [v12 performBlockAndWait:v16];

    v15 = v17;
  }

  else
  {
    v15 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_10_cold_1(a1);
    }
  }
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) setCryptoTag:*(a1 + 40)];
  [*(a1 + 32) setCryptoInitializationVector:*(a1 + 48)];
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (id)decryptedMetadata
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__42;
  v9 = __Block_byref_object_dispose__42;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__ICAttachmentPreviewImageCryptoStrategyV1_decryptedMetadata__block_invoke;
  v4[3] = &unk_278198400;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __61__ICAttachmentPreviewImageCryptoStrategyV1_decryptedMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isPasswordProtected] & 1) == 0)
  {
    v10 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __61__ICAttachmentPreviewImageCryptoStrategyV1_decryptedMetadata__block_invoke_cold_1(v3, v10);
    }

    v9 = v10;
    goto LABEL_8;
  }

  v4 = [v3 encryptedMetadata];

  if (v4)
  {
    v5 = [ICEncryptedData alloc];
    v6 = [v3 encryptedMetadata];
    v7 = [v3 cryptoMetadataTag];
    v8 = [v3 cryptoMetadataInitializationVector];
    v9 = [(ICEncryptedData *)v5 initWithData:v6 tag:v7 initializationVector:v8];

    v10 = [objc_opt_class() decryptWithMainKeyOfObject:v3 encryptedData:v9 fallbackAttemptSuccessCleanupHandler:0];
    if (v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __61__ICAttachmentPreviewImageCryptoStrategyV1_decryptedMetadata__block_invoke_cold_2(v3);
      }
    }

LABEL_8:
  }
}

- (id)decryptedImageData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__42;
  v9 = __Block_byref_object_dispose__42;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ICAttachmentPreviewImageCryptoStrategyV1_decryptedImageData__block_invoke;
  v4[3] = &unk_2781976C8;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __62__ICAttachmentPreviewImageCryptoStrategyV1_decryptedImageData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectID];
  v5 = +[ICNoteContext sharedContext];
  v6 = [v5 workerManagedObjectContext];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v3 managedObjectContext];
  }

  v9 = v8;

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__ICAttachmentPreviewImageCryptoStrategyV1_decryptedImageData__block_invoke_2;
  v14[3] = &unk_2781960A8;
  v15 = v3;
  v16 = v4;
  v10 = *(a1 + 32);
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v4;
  v13 = v3;
  [v11 performBlockAndWait:v14];
}

void __62__ICAttachmentPreviewImageCryptoStrategyV1_decryptedImageData__block_invoke_2(void *a1)
{
  v2 = [objc_opt_class() ic_existingObjectWithID:a1[5] context:a1[6]];
  if (v2)
  {
    v8 = v2;
    objc_opt_class();
    v3 = [v8 cryptoStrategy];
    v4 = ICDynamicCast();
    v5 = [v4 _decryptedImageData];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v2 = v8;
  }
}

- (id)_decryptedImageData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__42;
  v9 = __Block_byref_object_dispose__42;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke;
  v4[3] = &unk_2781976A0;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__42;
  v29 = __Block_byref_object_dispose__42;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__42;
  v19[4] = __Block_byref_object_dispose__42;
  v20 = 0;
  v4 = [v3 managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_2;
  v14[3] = &unk_278198478;
  v16 = v19;
  v5 = v3;
  v15 = v5;
  v17 = &v21;
  v18 = &v25;
  [v4 performBlockAndWait:v14];

  if (v22[3])
  {
    v6 = v26[5];
    if (v6)
    {
      v13 = 0;
      v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 options:0 error:&v13];
      v8 = v13;
      v9 = os_log_create("com.apple.notes", "Crypto");
      v10 = v9;
      if (!v7 || v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_cold_3();
        }
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_cold_2();
        }

        v11 = [*(a1 + 32) decryptData:v7];
        v12 = *(*(a1 + 40) + 8);
        v10 = *(v12 + 40);
        *(v12 + 40) = v11;
      }
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_cold_4();
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_cold_1();
    }
  }

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) isPasswordProtected];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v5 = [*(a1 + 32) encryptedPreviewImageURL];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __67__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedMetadata___block_invoke_3_cold_1(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = [v3 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Encrypting V1 preview image %@ to: %@", v6, 0x16u);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_cold_3(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_cold_4(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_9_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV1_writeEncryptedImageData___block_invoke_10_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __61__ICAttachmentPreviewImageCryptoStrategyV1_decryptedMetadata__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "attachment preview image is not password-protected, but decryptedMetadata is called. %@", v4, 0xCu);
}

void __61__ICAttachmentPreviewImageCryptoStrategyV1_decryptedMetadata__block_invoke_cold_2(void *a1)
{
  v2 = objc_opt_class();
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_3(&dword_214D51000, v0, v1, "Trying to decrypt non-password-protected preview image %@", v2, v3, v4, v5, v6);
}

void __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_3(&dword_214D51000, v0, v1, "Decrypting preview image %@", v2, v3, v4, v5, v6);
}

void __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_214D51000, v1, OS_LOG_TYPE_ERROR, "Error loading encrypted preview image for %@: %@", v2, 0x16u);
}

void __63__ICAttachmentPreviewImageCryptoStrategyV1__decryptedImageData__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_3(&dword_214D51000, v0, v1, "No encrypted preview image URL when decrypting %@", v2, v3, v4, v5, v6);
}

@end