@interface ICAttachmentCryptoStrategyV2
- (BOOL)writeEncryptedFallbackAssetData:(id)a3 fallbackAssetType:(int64_t)a4;
- (id)decryptedFallbackAssetDataForFallbackAssetType:(int64_t)a3;
@end

@implementation ICAttachmentCryptoStrategyV2

- (BOOL)writeEncryptedFallbackAssetData:(id)a3 fallbackAssetType:(int64_t)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke;
  v9[3] = &unk_278194D00;
  v9[4] = self;
  v12 = a4;
  v7 = v6;
  v10 = v7;
  v11 = &v13;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v9];
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

void __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 isUnsupported])
  {
    if (([v3 isPasswordProtected] & 1) == 0)
    {
      v4 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_1(v3);
      }

      goto LABEL_13;
    }

    if (([*(a1 + 32) isAuthenticated] & 1) == 0)
    {
      v4 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_2(v3);
      }

      goto LABEL_13;
    }

    v5 = NSStringFromFallbackAssetType(*(a1 + 56));
    v6 = *(a1 + 56);
    if (v6 == 1)
    {
      v7 = [v3 fallbackPDFEncryptedURL];
    }

    else
    {
      if (v6)
      {
        goto LABEL_21;
      }

      v7 = [v3 fallbackImageEncryptedURL];
    }

    v4 = v7;
    if (v7)
    {
      v8 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_3();
      }

      v9 = [*(a1 + 32) encryptData:*(a1 + 40)];
      if (v9)
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) serialize:v9 toURL:v4];
      }

      else
      {
        v10 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_4();
        }
      }

LABEL_27:

      goto LABEL_14;
    }

LABEL_21:
    v9 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_5();
    }

    v4 = v9;
    goto LABEL_27;
  }

  v4 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_6(v3);
  }

LABEL_13:
  v5 = v4;
LABEL_14:
}

- (id)decryptedFallbackAssetDataForFallbackAssetType:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke;
  v5[3] = &unk_278194D28;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isPasswordProtected] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_1(v3);
    }

    goto LABEL_10;
  }

  if (([*(a1 + 32) isAuthenticated] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_2(v3);
    }

LABEL_10:
    v4 = v7;
    goto LABEL_11;
  }

  v4 = NSStringFromFallbackAssetType(*(a1 + 48));
  v5 = *(a1 + 48);
  if (v5 == 1)
  {
    v6 = [v3 fallbackPDFEncryptedURL];
  }

  else
  {
    if (v5)
    {
LABEL_19:
      v12 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_5();
      }

      v7 = 0;
      goto LABEL_22;
    }

    v6 = [v3 fallbackImageEncryptedURL];
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_3();
  }

  v9 = [*(a1 + 32) decryptedDataFromFileURL:v7];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_4();
    }

LABEL_22:
  }

LABEL_11:
}

void __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __82__ICAttachmentCryptoStrategyV2_writeEncryptedFallbackAssetData_fallbackAssetType___block_invoke_cold_6(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __79__ICAttachmentCryptoStrategyV2_decryptedFallbackAssetDataForFallbackAssetType___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end