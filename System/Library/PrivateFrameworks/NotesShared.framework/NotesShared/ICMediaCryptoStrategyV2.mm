@interface ICMediaCryptoStrategyV2
- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL;
- (id)decryptedData;
@end

@implementation ICMediaCryptoStrategyV2

- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL
{
  v7.receiver = self;
  v7.super_class = ICMediaCryptoStrategyV2;
  v5 = [(ICCloudSyncingObjectCryptoStrategyV2 *)&v7 encryptFileFromURL:l toURL:rL];
  [(ICCryptoStrategyBase *)self performBlockIfMediaExists:&__block_literal_global_20];
  return v5;
}

- (id)decryptedData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke;
  v4[3] = &unk_278196580;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfMediaExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPasswordProtected])
  {
    if (([*(a1 + 32) isAuthenticated] & 1) == 0)
    {
      v5 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke_cold_1(v3);
      }

      goto LABEL_13;
    }

    v4 = [v3 encryptedMediaURL];

    v5 = os_log_create("com.apple.notes", "Crypto");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (!v4)
    {
      if (v6)
      {
        __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke_cold_4(v3);
      }

      goto LABEL_13;
    }

    if (v6)
    {
      __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke_cold_2(v3);
    }

    v7 = *(a1 + 32);
    v8 = [v3 encryptedMediaURL];
    v9 = [v7 decryptedDataFromFileURL:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v5 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke_cold_3(v3, v5);
      }

LABEL_13:
    }
  }
}

void __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Trying to access decrypted data while not authenticated for %@", v4, v5, v6, v7, v8);
}

void __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Decrypting %@", v4, v5, v6, v7, v8);
}

void __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke_cold_3(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Failed to decrypt %@", v4, 0xCu);
}

void __40__ICMediaCryptoStrategyV2_decryptedData__block_invoke_cold_4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Trying to decrypt a media that doesn have encrypted media url: %@", v4, v5, v6, v7, v8);
}

@end