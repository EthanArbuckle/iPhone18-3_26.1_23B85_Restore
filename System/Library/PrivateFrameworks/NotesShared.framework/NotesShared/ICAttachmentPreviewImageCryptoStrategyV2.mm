@interface ICAttachmentPreviewImageCryptoStrategyV2
- (BOOL)serializeToEncryptedMetadata:(id)a3;
- (BOOL)writeEncryptedImageData:(id)a3;
- (BOOL)writeEncryptedMetadata:(id)a3;
- (id)_decryptedImageData;
- (id)decryptedImageData;
- (id)decryptedMetadata;
@end

@implementation ICAttachmentPreviewImageCryptoStrategyV2

- (BOOL)writeEncryptedMetadata:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedMetadata___block_invoke;
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

void __67__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUnsupported])
  {
    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedMetadata___block_invoke_cold_3(v3);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (([v3 isPasswordProtected] & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedMetadata___block_invoke_cold_1(v3);
    }

    goto LABEL_10;
  }

  v5 = *(a1 + 40);
  if (!*(a1 + 32))
  {
    [v5 serializeToEncryptedMetadata:?];
    goto LABEL_12;
  }

  v4 = [v5 encryptData:?];
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) serializeToEncryptedMetadata:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedMetadata___block_invoke_cold_2(v3);
    }
  }

LABEL_11:

LABEL_12:
}

- (BOOL)writeEncryptedImageData:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke;
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

void __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 isUnsupported])
  {
    if (([v3 isPasswordProtected] & 1) == 0)
    {
      v4 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_1(v3);
      }

      goto LABEL_13;
    }

    v5 = [v3 encryptedPreviewImageURL];
    v6 = os_log_create("com.apple.notes", "Crypto");
    v7 = v6;
    if (!v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_4(v3);
      }

      v4 = v7;
      goto LABEL_22;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v3 ic_loggingIdentifier];
      v10 = [*(a1 + 32) length];
      *buf = 138412802;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Encrypting V2 preview image (%@) with size (%lu) to: %@", buf, 0x20u);
    }

    v4 = [*(a1 + 40) encryptData:*(a1 + 32)];
    if (v4)
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) serialize:v4 toURL:v5];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v8 = [v3 managedObjectContext];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_4;
        v11[3] = &unk_278194B00;
        v12 = v3;
        [v8 performBlockAndWait:v11];

        v7 = v12;
LABEL_22:

        goto LABEL_23;
      }

      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_2(v3);
      }
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_3(v3);
      }
    }

    goto LABEL_22;
  }

  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_5(v3);
  }

LABEL_13:
  v5 = v4;
LABEL_23:
}

void __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  v3 = [*(a1 + 32) attachment];
  v2 = [v3 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
}

- (id)decryptedMetadata
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__41;
  v9 = __Block_byref_object_dispose__41;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__ICAttachmentPreviewImageCryptoStrategyV2_decryptedMetadata__block_invoke;
  v4[3] = &unk_2781976A0;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __61__ICAttachmentPreviewImageCryptoStrategyV2_decryptedMetadata__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isPasswordProtected] & 1) == 0)
  {
    v10 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __61__ICAttachmentPreviewImageCryptoStrategyV2_decryptedMetadata__block_invoke_cold_1(v3);
    }

    goto LABEL_8;
  }

  v4 = [v3 encryptedMetadata];

  if (!v4)
  {
    v10 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v3 shortLoggingDescription];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_INFO, "No encrypted metadata for %@", &v12, 0xCu);
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 32);
  v6 = [v3 encryptedMetadata];
  v7 = [v5 decryptData:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __61__ICAttachmentPreviewImageCryptoStrategyV2_decryptedMetadata__block_invoke_cold_2(v3);
    }

LABEL_8:
  }
}

- (id)decryptedImageData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__41;
  v9 = __Block_byref_object_dispose__41;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ICAttachmentPreviewImageCryptoStrategyV2_decryptedImageData__block_invoke;
  v4[3] = &unk_2781976C8;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __62__ICAttachmentPreviewImageCryptoStrategyV2_decryptedImageData__block_invoke(uint64_t a1, void *a2)
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
  v14[2] = __62__ICAttachmentPreviewImageCryptoStrategyV2_decryptedImageData__block_invoke_2;
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

void __62__ICAttachmentPreviewImageCryptoStrategyV2_decryptedImageData__block_invoke_2(void *a1)
{
  v2 = [objc_opt_class() ic_existingObjectWithID:a1[5] context:a1[6]];
  if (v2)
  {
    v8 = v2;
    objc_opt_class();
    v3 = [v8 cryptoStrategy];
    v4 = ICCheckedDynamicCast();

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
  v8 = __Block_byref_object_copy__41;
  v9 = __Block_byref_object_dispose__41;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__ICAttachmentPreviewImageCryptoStrategyV2__decryptedImageData__block_invoke;
  v4[3] = &unk_2781976A0;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __63__ICAttachmentPreviewImageCryptoStrategyV2__decryptedImageData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isPasswordProtected] & 1) == 0)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __63__ICAttachmentPreviewImageCryptoStrategyV2__decryptedImageData__block_invoke_cold_1(v3);
    }

    v4 = v8;
    goto LABEL_13;
  }

  v4 = [v3 encryptedPreviewImageURL];
  if (!v4)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __63__ICAttachmentPreviewImageCryptoStrategyV2__decryptedImageData__block_invoke_cold_3(v3);
    }

    goto LABEL_12;
  }

  v5 = [*(a1 + 32) decryptedDataFromFileURL:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40) && [v4 ic_isReachable])
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke_2_cold_1(v3);
    }

LABEL_12:

LABEL_13:
  }
}

- (BOOL)serializeToEncryptedMetadata:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__ICAttachmentPreviewImageCryptoStrategyV2_serializeToEncryptedMetadata___block_invoke;
  v7[3] = &unk_278198400;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __73__ICAttachmentPreviewImageCryptoStrategyV2_serializeToEncryptedMetadata___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 willChangeValueForKey:@"metadata"];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 serialized];
    if (v5)
    {
      v6 = v5;
      [v3 setEncryptedMetadata:v5];
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v3 shortLoggingDescription];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Successfully encrypted data for %@", &v11, 0xCu);
      }

      goto LABEL_12;
    }

    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __73__ICAttachmentPreviewImageCryptoStrategyV2_serializeToEncryptedMetadata___block_invoke_cold_1(v3);
    }
  }

  [v3 setEncryptedMetadata:0];
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = [v3 shortLoggingDescription];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Setting nil to encrypted data for %@", &v11, 0xCu);
  }

  v6 = v7;
LABEL_12:

  [v3 setPrimitiveValue:0 forKey:@"metadata"];
  [v3 didChangeValueForKey:@"metadata"];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __67__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedMetadata___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "attachment preview image is not password-protected, but writeEncryptedMetadata is called. %@", v4, v5, v6, v7, v8);
}

void __67__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedMetadata___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Failed to encrypt preview image: %@", v4, v5, v6, v7, v8);
}

void __67__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedMetadata___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "attachment preview image is not supported, but writeEncryptedMetadata is called. %@", v4, v5, v6, v7, v8);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Attachment preview image is not password-protected, but writeEncryptedImageData is called. %@", v4, v5, v6, v7, v8);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_2(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Error writing encrypted preview image for %@", v4, v5, v6, v7, v8);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_3(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Failed to encrypt data for %@", v4, v5, v6, v7, v8);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_4(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "No encrypted preview image URL when encrypting %@", v4, v5, v6, v7, v8);
}

void __68__ICAttachmentPreviewImageCryptoStrategyV2_writeEncryptedImageData___block_invoke_cold_5(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Attachment preview image is not supported, but writeEncryptedImageData is called. %@", v4, v5, v6, v7, v8);
}

void __61__ICAttachmentPreviewImageCryptoStrategyV2_decryptedMetadata__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "attachment preview image is not password-protected, but decryptedMetadata is called. %@", v4, v5, v6, v7, v8);
}

void __61__ICAttachmentPreviewImageCryptoStrategyV2_decryptedMetadata__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Error decrypting metadata for %@", v4, v5, v6, v7, v8);
}

void __63__ICAttachmentPreviewImageCryptoStrategyV2__decryptedImageData__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Trying to decrypt non-password-protected preview image %@", v4, v5, v6, v7, v8);
}

void __63__ICAttachmentPreviewImageCryptoStrategyV2__decryptedImageData__block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "No encrypted preview image URL when decrypting %@", v4, v5, v6, v7, v8);
}

void __73__ICAttachmentPreviewImageCryptoStrategyV2_serializeToEncryptedMetadata___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Failed to encode encrypted object for %@", v4, v5, v6, v7, v8);
}

@end