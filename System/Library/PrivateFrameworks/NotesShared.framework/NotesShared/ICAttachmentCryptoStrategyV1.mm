@interface ICAttachmentCryptoStrategyV1
- (BOOL)rewrapWithMainKey:(id)key;
- (BOOL)writeEncryptedFallbackAssetData:(id)data fallbackAssetType:(int64_t)type;
- (id)decryptedFallbackAssetDataForFallbackAssetType:(int64_t)type;
@end

@implementation ICAttachmentCryptoStrategyV1

- (BOOL)rewrapWithMainKey:(id)key
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentCryptoStrategyV1 *)self rewrapWithMainKey:v5];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__ICAttachmentCryptoStrategyV1_rewrapWithMainKey___block_invoke;
  v13[3] = &unk_27819A138;
  v6 = keyCopy;
  v14 = v6;
  selfCopy = self;
  v16 = &v17;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v13];
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
    v26 = "[ICAttachmentCryptoStrategyV1 rewrapWithMainKey:]";
    v27 = 1024;
    v28 = 54;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Rewrapped attachment with main key {attachment: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v8 & 1;
}

void __50__ICAttachmentCryptoStrategyV1_rewrapWithMainKey___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 removeTemporaryPaperBundle];
  v4 = *(a1 + 32);
  v29.receiver = *(a1 + 40);
  v29.super_class = ICAttachmentCryptoStrategyV1;
  if ((objc_msgSendSuper2(&v29, sel_rewrapWithMainKey_, v4) & 1) == 0)
  {
    v11 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __50__ICAttachmentCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_1(v3);
    }

    goto LABEL_20;
  }

  v5 = [v3 media];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 media];
    v8 = [v7 cryptoStrategy];
    v9 = [v8 rewrapWithMainKey:*(a1 + 32)];

    if ((v9 & 1) == 0)
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __50__ICAttachmentCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_2(v3);
      }

LABEL_20:

      goto LABEL_21;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v3 previewImages];
  v11 = [v10 copy];

  v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v14 = v12;
    v24 = v3;
    v15 = *v26;
    *&v13 = 138412546;
    v23 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 cryptoStrategy];
        v19 = [v18 rewrapWithMainKey:*(a1 + 32)];

        if ((v19 & 1) == 0)
        {
          v20 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [v24 shortLoggingDescription];
            v22 = [v17 shortLoggingDescription];
            *buf = v23;
            v31 = v21;
            v32 = 2112;
            v33 = v22;
            _os_log_error_impl(&dword_214D51000, v20, OS_LOG_TYPE_ERROR, "Cannot rewrap preview image {attachment: %@, previewImage: %@}", buf, 0x16u);
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v14);
    v3 = v24;
  }

LABEL_21:
}

- (BOOL)writeEncryptedFallbackAssetData:(id)data fallbackAssetType:(int64_t)type
{
  dataCopy = data;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke;
  v9[3] = &unk_278194D00;
  v9[4] = self;
  typeCopy = type;
  v7 = dataCopy;
  v10 = v7;
  v11 = &v13;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v9];
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

void __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPasswordProtected])
  {
    if ([*(a1 + 32) isAuthenticated])
    {
      v4 = NSStringFromFallbackAssetType(*(a1 + 56));
      v5 = *(a1 + 56);
      if (v5 == 1)
      {
        v6 = [v3 fallbackPDFEncryptedURL];
      }

      else
      {
        if (v5)
        {
          goto LABEL_16;
        }

        v6 = [v3 fallbackImageEncryptedURL];
      }

      v8 = v6;
      if (v6)
      {
        v9 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_3();
        }

        v10 = objc_opt_class();
        v11 = *(a1 + 40);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_4;
        v22[3] = &unk_278194AD8;
        v23 = v4;
        v24 = v3;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_6;
        v16[3] = &unk_27819A160;
        v17 = v8;
        v18 = v23;
        v12 = v24;
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v19 = v12;
        v20 = v13;
        v21 = v14;
        v7 = v8;
        [v10 encryptWithMainKeyOfObject:v12 dataToEncrypt:v11 failureHandler:v22 successHandler:v16];

        v15 = v23;
LABEL_19:

        goto LABEL_20;
      }

LABEL_16:
      v15 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_5();
      }

      v7 = v15;
      goto LABEL_19;
    }

    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_2(v3);
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_1(v3);
    }
  }

  v4 = v7;
LABEL_20:
}

void __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_4(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_4_cold_1(a1);
  }
}

void __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v15 = 0;
  v10 = [a2 writeToURL:v9 options:1 error:&v15];
  v11 = v15;
  v12 = os_log_create("com.apple.notes", "Crypto");
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_6_cold_2(a1);
    }

    v14 = *(a1 + 64);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if (v14 == 1)
    {
      [*(a1 + 48) setFallbackPDFCryptoTag:v7];
      [*(a1 + 48) setFallbackPDFCryptoInitializationVector:v8];
    }

    else if (!v14)
    {
      [*(a1 + 48) setFallbackImageCryptoTag:v7];
      [*(a1 + 48) setFallbackImageCryptoInitializationVector:v8];
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_6_cold_1(a1);
    }
  }
}

- (id)decryptedFallbackAssetDataForFallbackAssetType:(int64_t)type
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__59;
  v10 = __Block_byref_object_dispose__59;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke;
  v5[3] = &unk_278194D28;
  v5[5] = &v6;
  v5[6] = type;
  v5[4] = self;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPasswordProtected])
  {
    if ([*(a1 + 32) isAuthenticated])
    {
      v4 = NSStringFromFallbackAssetType(*(a1 + 48));
      v5 = *(a1 + 48);
      if (v5 == 1)
      {
        v6 = [v3 fallbackPDFEncryptedURL];
        v7 = [v3 fallbackPDFCryptoTag];
        v8 = [v3 fallbackPDFCryptoInitializationVector];
      }

      else
      {
        if (v5)
        {
          v7 = 0;
          v9 = 0;
          goto LABEL_19;
        }

        v6 = [v3 fallbackImageEncryptedURL];
        v7 = [v3 fallbackImageCryptoTag];
        v8 = [v3 fallbackImageCryptoInitializationVector];
      }

      v9 = v8;
      if (v6)
      {
        v10 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_3(v3);
        }

        v11 = [ICEncryptedData alloc];
        v12 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6];
        v13 = [(ICEncryptedData *)v11 initWithData:v12 tag:v7 initializationVector:v9];

        v14 = [objc_opt_class() decryptWithMainKeyOfObject:v3 encryptedData:v13 fallbackAttemptSuccessCleanupHandler:0];
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        v17 = *(*(*(a1 + 40) + 8) + 40);
        v18 = os_log_create("com.apple.notes", "Crypto");
        v19 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_4();
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_5();
        }

LABEL_25:
        goto LABEL_26;
      }

LABEL_19:
      v13 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_5();
      }

      v6 = v13;
      goto LABEL_25;
    }

    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_2(v3);
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_1(v3);
    }
  }

  v4 = v7;
LABEL_26:
}

- (void)rewrapWithMainKey:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 object];
  v4 = [v3 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  v6 = 2080;
  v7 = "[ICAttachmentCryptoStrategyV1 rewrapWithMainKey:]";
  v8 = 1024;
  v9 = 25;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Rewrapping attachment with main key… {attachment: %@}%s:%d", v5, 0x1Cu);
}

void __50__ICAttachmentCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __50__ICAttachmentCryptoStrategyV1_rewrapWithMainKey___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_4_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) shortLoggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_6_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 48) shortLoggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __82__ICAttachmentCryptoStrategyV1_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_6_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 48) shortLoggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __79__ICAttachmentCryptoStrategyV1_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end