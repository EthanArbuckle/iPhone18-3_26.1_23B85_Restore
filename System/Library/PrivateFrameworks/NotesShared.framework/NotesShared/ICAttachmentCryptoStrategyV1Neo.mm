@interface ICAttachmentCryptoStrategyV1Neo
- (BOOL)rewrapWithMainKey:(id)key;
- (BOOL)writeEncryptedFallbackImageData:(id)data;
- (BOOL)writeEncryptedFallbackPDFData:(id)data;
- (id)decryptedFallbackImageData;
- (id)decryptedFallbackPDFData;
- (void)decryptedFallbackImageData;
- (void)decryptedFallbackPDFData;
@end

@implementation ICAttachmentCryptoStrategyV1Neo

- (BOOL)rewrapWithMainKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentCryptoStrategyV1Neo rewrapWithMainKey:?];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke;
  v13[3] = &unk_27819A138;
  v13[4] = self;
  v6 = keyCopy;
  v14 = v6;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v13];
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
    v25 = "[ICAttachmentCryptoStrategyV1Neo rewrapWithMainKey:]";
    v26 = 1024;
    v27 = 77;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Rewrapped attachment with main key {attachment: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2;
  [v4 removeTemporaryPaperBundle];
  if ([v4 hasFallbackImage])
  {
    v5 = [v4 fallbackImageGenerationManager];
    if (v5)
    {
      v6 = *(a1 + 32);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_2;
      v39[3] = &unk_278196140;
      v2 = &v40;
      v40 = v4;
      if ([v6 rewrapFile:v39 withMainKey:*(a1 + 40) generationManager:v5])
      {
        goto LABEL_7;
      }
    }

    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_1(v4);
    }

    if (v5)
    {
LABEL_7:
    }
  }

  if ([v4 hasFallbackPDF])
  {
    v8 = [v4 fallbackPDFGenerationManager];
    if (v8)
    {
      v9 = *(a1 + 32);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_3;
      v37[3] = &unk_278196140;
      v2 = &v38;
      v38 = v4;
      if ([v9 rewrapFile:v37 withMainKey:*(a1 + 40) generationManager:v8])
      {
        goto LABEL_15;
      }
    }

    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_2(v4);
    }

    if (v8)
    {
LABEL_15:
    }
  }

  v11 = *(a1 + 40);
  v36.receiver = *(a1 + 32);
  v36.super_class = ICAttachmentCryptoStrategyV1Neo;
  if ((objc_msgSendSuper2(&v36, sel_rewrapWithMainKey_, v11) & 1) == 0)
  {
    v18 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_3(v4);
    }

    goto LABEL_36;
  }

  v12 = [v4 media];
  if (v12)
  {
    v13 = v12;
    v14 = [v4 media];
    v15 = [v14 cryptoStrategy];
    v16 = [v15 rewrapWithMainKey:*(a1 + 40)];

    if ((v16 & 1) == 0)
    {
      v18 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_4(v4);
      }

LABEL_36:

      goto LABEL_37;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = [v4 previewImages];
  v18 = [v17 copy];

  v19 = [v18 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v19)
  {
    v21 = v19;
    v31 = v4;
    v22 = *v33;
    *&v20 = 138412546;
    v30 = v20;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        v25 = [v24 cryptoStrategy];
        v26 = [v25 rewrapWithMainKey:*(a1 + 40)];

        if ((v26 & 1) == 0)
        {
          v27 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = [v31 shortLoggingDescription];
            v29 = [v24 shortLoggingDescription];
            *buf = v30;
            v42 = v28;
            v43 = 2112;
            v44 = v29;
            _os_log_error_impl(&dword_214D51000, v27, OS_LOG_TYPE_ERROR, "Cannot rewrap attachment preview image {attachment: %@, previewImage: %@}", buf, 0x16u);
          }
        }
      }

      v21 = [v18 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v21);
    v4 = v31;
  }

LABEL_37:
}

- (BOOL)writeEncryptedFallbackImageData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentCryptoStrategyV1Neo writeEncryptedFallbackImageData:?];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackImageData___block_invoke;
  v13[3] = &unk_27819A138;
  v13[4] = self;
  v6 = dataCopy;
  v14 = v6;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v13];
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
    v25 = "[ICAttachmentCryptoStrategyV1Neo writeEncryptedFallbackImageData:]";
    v26 = 1024;
    v27 = 110;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Encrypted fallback image data {attachment: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __67__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackImageData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fallbackImageEncryptedURL];
  if (v4)
  {
    v5 = [v3 note];
    v6 = [v5 account];

    if (v6)
    {
      v7 = [*(a1 + 32) encryptData:*(a1 + 40)];
      if (v7)
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) serialize:v7 toURL:v4];
      }

      else
      {
        v8 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __67__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackImageData___block_invoke_cold_1(v3);
        }
      }
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __67__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackImageData___block_invoke_cold_2(v3);
      }
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackImageData___block_invoke_cold_3(v3);
    }

    v6 = v7;
  }
}

- (BOOL)writeEncryptedFallbackPDFData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentCryptoStrategyV1Neo writeEncryptedFallbackPDFData:?];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackPDFData___block_invoke;
  v13[3] = &unk_27819A138;
  v13[4] = self;
  v6 = dataCopy;
  v14 = v6;
  v15 = &v16;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v13];
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
    v25 = "[ICAttachmentCryptoStrategyV1Neo writeEncryptedFallbackPDFData:]";
    v26 = 1024;
    v27 = 141;
    _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Encrypted fallback PDF data {attachment: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __65__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackPDFData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fallbackPDFEncryptedURL];
  if (v4)
  {
    v5 = [v3 note];
    v6 = [v5 account];

    if (v6)
    {
      v7 = [*(a1 + 32) encryptData:*(a1 + 40)];
      if (v7)
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) serialize:v7 toURL:v4];
      }

      else
      {
        v8 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __65__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackPDFData___block_invoke_cold_1(v3);
        }
      }
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __65__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackPDFData___block_invoke_cold_2(v3);
      }
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackPDFData___block_invoke_cold_3(v3);
    }

    v6 = v7;
  }
}

- (id)decryptedFallbackImageData
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentCryptoStrategyV1Neo *)self decryptedFallbackImageData];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__63;
  v15 = __Block_byref_object_dispose__63;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackImageData__block_invoke;
  v10[3] = &unk_27819A380;
  v10[4] = self;
  v10[5] = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v10];
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
    v22 = "[ICAttachmentCryptoStrategyV1Neo decryptedFallbackImageData]";
    v23 = 1024;
    v24 = 166;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Decrypted fallback image data {attachment: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __61__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackImageData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fallbackImageEncryptedURL];
  if (!v4)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackImageData__block_invoke_cold_2(v3);
    }

    goto LABEL_7;
  }

  v5 = [*(a1 + 32) decryptedDataFromFileURL:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackImageData__block_invoke_cold_1(v3);
    }

LABEL_7:
  }
}

- (id)decryptedFallbackPDFData
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentCryptoStrategyV1Neo *)self decryptedFallbackPDFData];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__63;
  v15 = __Block_byref_object_dispose__63;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackPDFData__block_invoke;
  v10[3] = &unk_27819A380;
  v10[4] = self;
  v10[5] = &v11;
  [(ICCryptoStrategyBase *)self performBlockIfAttachmentExists:v10];
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
    v22 = "[ICAttachmentCryptoStrategyV1Neo decryptedFallbackPDFData]";
    v23 = 1024;
    v24 = 189;
    _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Decrypted fallback PDF data {attachment: %@, success: %@}%s:%d", buf, 0x26u);
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __59__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackPDFData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fallbackPDFEncryptedURL];
  if (!v4)
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackPDFData__block_invoke_cold_2(v3);
    }

    goto LABEL_7;
  }

  v5 = [*(a1 + 32) decryptedDataFromFileURL:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackPDFData__block_invoke_cold_1(v3);
    }

LABEL_7:
  }
}

- (void)rewrapWithMainKey:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Rewrapping attachment with main key… {attachment: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot rewrap attachment fallback image {attachment: %@}", v4, v5, v6, v7, v8);
}

void __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot rewrap attachment fallback PDF {attachment: %@}", v4, v5, v6, v7, v8);
}

void __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Not rewrapping media and preview images because attachment couldn't be rewrapped {attachment: %@}", v4, v5, v6, v7, v8);
}

void __53__ICAttachmentCryptoStrategyV1Neo_rewrapWithMainKey___block_invoke_cold_4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Not rewrapping preview images because media couldn't be rewrapped {attachment: %@}", v4, v5, v6, v7, v8);
}

- (void)writeEncryptedFallbackImageData:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Encrypting fallback image data… {attachment: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __67__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackImageData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt fallback image data {attachment: %@}", v4, v5, v6, v7, v8);
}

void __67__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackImageData___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt fallback image data because attachment doesn't have account {attachment: %@}", v4, v5, v6, v7, v8);
}

void __67__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackImageData___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt fallback image data because fallback URL is nil {attachment: %@}", v4, v5, v6, v7, v8);
}

- (void)writeEncryptedFallbackPDFData:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 object];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Encrypting fallback PDF data… {attachment: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __65__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackPDFData___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt fallback PDF data {attachment: %@}", v4, v5, v6, v7, v8);
}

void __65__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackPDFData___block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt fallback PDF data because attachment doesn't have account {attachment: %@}", v4, v5, v6, v7, v8);
}

void __65__ICAttachmentCryptoStrategyV1Neo_writeEncryptedFallbackPDFData___block_invoke_cold_3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot encrypt fallback PDF data because fallback URL is nil {attachment: %@}", v4, v5, v6, v7, v8);
}

- (void)decryptedFallbackImageData
{
  object = [self object];
  shortLoggingDescription = [object shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Decrypting fallback image data… {attachment: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __61__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackImageData__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt fallback image data {attachment: %@}", v4, v5, v6, v7, v8);
}

void __61__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackImageData__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt fallback image data because attachment doesn't have fallback image URL {attachment: %@}", v4, v5, v6, v7, v8);
}

- (void)decryptedFallbackPDFData
{
  object = [self object];
  shortLoggingDescription = [object shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_6(&dword_214D51000, v3, v4, "Decrypting fallback PDF data… {attachment: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __59__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackPDFData__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt fallback PDF data {attachment: %@}", v4, v5, v6, v7, v8);
}

void __59__ICAttachmentCryptoStrategyV1Neo_decryptedFallbackPDFData__block_invoke_cold_2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Cannot decrypt fallback PDF data because attachment doesn't have fallback PDF URL {attachment: %@}", v4, v5, v6, v7, v8);
}

@end