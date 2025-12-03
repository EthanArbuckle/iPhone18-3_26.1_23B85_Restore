@interface ICMediaCryptoStrategyV1Neo
- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL;
- (BOOL)rewrapWithMainKey:(id)key;
- (id)decryptedData;
- (void)decryptedData;
@end

@implementation ICMediaCryptoStrategyV1Neo

- (BOOL)rewrapWithMainKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICMediaCryptoStrategyV1Neo rewrapWithMainKey:?];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__ICMediaCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke;
  v13[3] = &unk_278196168;
  v13[4] = self;
  v6 = keyCopy;
  v14 = v6;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfMediaExists:v13];
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
    v25 = "[ICMediaCryptoStrategyV1Neo rewrapWithMainKey:]";
    v26 = 1024;
    v27 = 52;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Rewrapped media with main key {note: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __48__ICMediaCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 encryptedMediaURL];
  if (v5)
  {
    v6 = [v4 generationManager];
    if (v6)
    {
      v7 = *(a1 + 32);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __48__ICMediaCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_2;
      v13[3] = &unk_278196140;
      v8 = v4;
      v14 = v8;
      if ([v7 rewrapFile:v13 withMainKey:*(a1 + 40) generationManager:v6])
      {

        v9 = *(a1 + 40);
        v12.receiver = *(a1 + 32);
        v12.super_class = ICMediaCryptoStrategyV1Neo;
        if (objc_msgSendSuper2(&v12, sel_rewrapWithMainKey_, v9))
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        else
        {
          v11 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __48__ICMediaCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_1(v8);
          }
        }

        goto LABEL_18;
      }

      v2 = &v14;
    }

    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __48__ICMediaCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_2(v4);
    }

    if (v6)
    {
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__ICMediaCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_3(v4);
    }
  }

LABEL_18:
}

- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL
{
  v7.receiver = self;
  v7.super_class = ICMediaCryptoStrategyV1Neo;
  v5 = [(ICCryptoStrategyBase *)&v7 encryptFileFromURL:l toURL:rL];
  [(ICCryptoStrategyBase *)self performBlockIfMediaExists:&__block_literal_global_17];
  return v5;
}

- (id)decryptedData
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICMediaCryptoStrategyV1Neo *)self decryptedData];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__ICMediaCryptoStrategyV1Neo_decryptedData__block_invoke;
  v10[3] = &unk_2781961B0;
  v10[4] = self;
  v10[5] = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfMediaExists:v10];
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
    v22 = "[ICMediaCryptoStrategyV1Neo decryptedData]";
    v23 = 1024;
    v24 = 88;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Decrypted data {media: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __43__ICMediaCryptoStrategyV1Neo_decryptedData__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 encryptedMediaURL];
  if (!v4)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 shortLoggingDescription];
      v11 = 138412290;
      v12 = v9;
      v10 = "Cannot decrypt media because encrypted media URL is nil {media: %@}";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v5 = [*(a1 + 32) decryptedDataFromFileURL:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 shortLoggingDescription];
      v11 = 138412290;
      v12 = v9;
      v10 = "Cannot decrypt media {media: %@}";
LABEL_7:
      _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, v10, &v11, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)rewrapWithMainKey:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Rewrapping media with main key… {note: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __48__ICMediaCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot rewrap media's encrypted values {media: %@}", v4, v5, v6, v7, v8);
}

void __48__ICMediaCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Not rewrapping media's encrypted values because couldn't rewrap media data {media: %@}", v4, v5, v6, v7, v8);
}

void __48__ICMediaCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Not rewrapping media because encrypted media URL is nil {media: %@}", v4, v5, v6, v7, v8);
}

- (void)decryptedData
{
  object = [self object];
  shortLoggingDescription = [object shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Decrypting data… {media: %@}%s:%d", v5, v6, v7, v8, v9);
}

@end