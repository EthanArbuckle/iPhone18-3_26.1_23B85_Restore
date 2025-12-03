@interface ICAttachmentPreviewImageCryptoStrategyV1Neo
- (BOOL)writeEncryptedImageData:(id)data;
- (BOOL)writeEncryptedMetadata:(id)metadata;
- (id)decryptedImageData;
- (id)decryptedMetadata;
- (void)decryptedImageData;
- (void)decryptedMetadata;
- (void)serializeEncryptedMetadata:(id)metadata;
@end

@implementation ICAttachmentPreviewImageCryptoStrategyV1Neo

- (BOOL)writeEncryptedMetadata:(id)metadata
{
  v29 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentPreviewImageCryptoStrategyV1Neo writeEncryptedMetadata:?];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedMetadata___block_invoke;
  v13[3] = &unk_278197650;
  v6 = metadataCopy;
  v14 = v6;
  selfCopy = self;
  v16 = &v17;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v13];
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
    v26 = "[ICAttachmentPreviewImageCryptoStrategyV1Neo writeEncryptedMetadata:]";
    v27 = 1024;
    v28 = 43;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Encrypted preview image metadata {previewImage: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v8 & 1;
}

void __70__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (!*(a1 + 32))
  {
    [v4 serializeEncryptedMetadata:?];
    goto LABEL_5;
  }

  v5 = [v4 encryptData:?];
  if (v5)
  {
    v6 = v5;
    [*(a1 + 40) serializeEncryptedMetadata:v5];

LABEL_5:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_9;
  }

  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __70__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedMetadata___block_invoke_cold_1(v3);
  }

LABEL_9:
}

- (BOOL)writeEncryptedImageData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentPreviewImageCryptoStrategyV1Neo writeEncryptedImageData:?];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke;
  v13[3] = &unk_278197650;
  v13[4] = self;
  v6 = dataCopy;
  v14 = v6;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v13];
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
    v25 = "[ICAttachmentPreviewImageCryptoStrategyV1Neo writeEncryptedImageData:]";
    v26 = 1024;
    v27 = 77;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Encrypted preview image data {previewImage: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 encryptedPreviewImageURL];
  if (v4)
  {
    v5 = [*(a1 + 32) encryptData:*(a1 + 40)];
    if (v5)
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) serialize:v5 toURL:v4];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v6 = [v3 managedObjectContext];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke_3;
        v8[3] = &unk_278194B00;
        v9 = v3;
        [v6 performBlockAndWait:v8];

        v7 = v9;
        goto LABEL_13;
      }

      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke_cold_1(v3);
      }
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke_cold_2(v3);
      }
    }

    goto LABEL_13;
  }

  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke_cold_3(v3);
  }

  v5 = v7;
LABEL_13:
}

void __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  v3 = [*(a1 + 32) attachment];
  v2 = [v3 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
}

- (void)serializeEncryptedMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__ICAttachmentPreviewImageCryptoStrategyV1Neo_serializeEncryptedMetadata___block_invoke;
  v6[3] = &unk_278197678;
  v7 = metadataCopy;
  v5 = metadataCopy;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v6];
}

void __74__ICAttachmentPreviewImageCryptoStrategyV1Neo_serializeEncryptedMetadata___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NSStringFromSelector(sel_metadata);
  [v3 willChangeValueForKey:v4];

  v5 = [*(a1 + 32) serialized];
  v6 = v5;
  if (*(a1 + 32) && !v5)
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__ICAttachmentPreviewImageCryptoStrategyV1Neo_serializeEncryptedMetadata___block_invoke_cold_1(v3);
    }

    [v3 setEncryptedMetadata:0];
LABEL_9:
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 shortLoggingDescription];
      v13 = 138412290;
      v14 = v9;
      v10 = "Set nil preview image metadata {object: %@}";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [v3 setEncryptedMetadata:v5];
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v3 shortLoggingDescription];
    v13 = 138412290;
    v14 = v9;
    v10 = "Set non-nil preview image metadata {object: %@}";
LABEL_11:
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, v10, &v13, 0xCu);
  }

LABEL_12:

  v11 = NSStringFromSelector(sel_metadata);
  [v3 setPrimitiveValue:0 forKey:v11];

  v12 = NSStringFromSelector(sel_metadata);
  [v3 didChangeValueForKey:v12];
}

- (id)decryptedMetadata
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentPreviewImageCryptoStrategyV1Neo *)self decryptedMetadata];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__31;
  v15 = __Block_byref_object_dispose__31;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedMetadata__block_invoke;
  v10[3] = &unk_2781976A0;
  v10[4] = self;
  v10[5] = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v10];
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v12[5] != 0];
    *buf = 138413058;
    v18 = shortLoggingDescription;
    v19 = 2112;
    v21 = 2080;
    v20 = v9;
    v22 = "[ICAttachmentPreviewImageCryptoStrategyV1Neo decryptedMetadata]";
    v23 = 1024;
    v24 = 125;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Decrypted preview image metadata {previewImage: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __64__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedMetadata__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 encryptedMetadata];
  if (!v4)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 shortLoggingDescription];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Cannot decrypt preview image metadata because it is nil {previewImage: %@}", &v10, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = [*(a1 + 32) decryptData:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedMetadata__block_invoke_cold_1(v3);
    }

LABEL_7:
  }
}

- (id)decryptedImageData
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentPreviewImageCryptoStrategyV1Neo *)self decryptedImageData];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__31;
  v15 = __Block_byref_object_dispose__31;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke;
  v10[3] = &unk_2781976C8;
  v10[4] = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfPreviewImageExists:v10];
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v12[5] != 0];
    *buf = 138413058;
    v18 = shortLoggingDescription;
    v19 = 2112;
    v21 = 2080;
    v20 = v9;
    v22 = "[ICAttachmentPreviewImageCryptoStrategyV1Neo decryptedImageData]";
    v23 = 1024;
    v24 = 161;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Decrypted preview image data {previewImage: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 workerManagedObjectContext];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 managedObjectContext];
  }

  v8 = v7;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke_2;
  v11[3] = &unk_2781961E0;
  v12 = v3;
  v13 = v8;
  v14 = *(a1 + 32);
  v9 = v8;
  v10 = v3;
  [v9 performBlockAndWait:v11];
}

void __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) objectID];
  v4 = [v2 ic_existingObjectWithID:v3 context:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) encryptedPreviewImageURL];
    if (!v5)
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke_2_cold_2(v4);
      }

      v7 = v11;
      goto LABEL_14;
    }

    objc_opt_class();
    v6 = [v4 cryptoStrategy];
    v7 = ICCheckedDynamicCast();

    v8 = [v7 decryptedDataFromFileURL:v5];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (!*(*(*(a1 + 48) + 8) + 40) && [v5 ic_isReachable])
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke_2_cold_1(v4);
      }

LABEL_14:
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke_2_cold_3();
    }

    v5 = v7;
  }
}

- (void)writeEncryptedMetadata:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Encrypting preview image metadata… {previewImage: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __70__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedMetadata___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt preview image metadata {previewImage: %@}", v4, v5, v6, v7, v8);
}

- (void)writeEncryptedImageData:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Encrypting preview image data… {previewImage: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot serialize preview image data {previewImage: %@}", v4, v5, v6, v7, v8);
}

void __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt preview image data {previewImage: %@}", v4, v5, v6, v7, v8);
}

void __71__ICAttachmentPreviewImageCryptoStrategyV1Neo_writeEncryptedImageData___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt preview image data because URL is nil {previewImage: %@}", v4, v5, v6, v7, v8);
}

void __74__ICAttachmentPreviewImageCryptoStrategyV1Neo_serializeEncryptedMetadata___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot serialize preview image metadata encryption object {previewImage: %@}", v4, v5, v6, v7, v8);
}

- (void)decryptedMetadata
{
  object = [self object];
  shortLoggingDescription = [object shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Decrypting preview image metadata… {previewImage: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __64__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedMetadata__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt preview image metadata {previewImage: %@}", v4, v5, v6, v7, v8);
}

- (void)decryptedImageData
{
  object = [self object];
  shortLoggingDescription = [object shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Decrypting preview image data… {previewImage: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt preview image for %@", v4, v5, v6, v7, v8);
}

void __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke_2_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt preview image data because URL is nil {previewImage: %@}", v4, v5, v6, v7, v8);
}

void __65__ICAttachmentPreviewImageCryptoStrategyV1Neo_decryptedImageData__block_invoke_2_cold_3()
{
  v0 = [0 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v1, v2, "Cannot encrypt preview image data because object vanished {previewImageID: %@}", v3, v4, v5, v6, v7);
}

@end