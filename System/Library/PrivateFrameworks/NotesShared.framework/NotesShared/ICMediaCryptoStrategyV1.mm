@interface ICMediaCryptoStrategyV1
- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL;
- (id)decryptedData;
- (id)fileURLEncryptionCryptoInitialzationVector;
- (id)fileURLEncryptionCryptoTag;
@end

@implementation ICMediaCryptoStrategyV1

- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__ICMediaCryptoStrategyV1_encryptFileFromURL_toURL___block_invoke;
  v11[3] = &unk_278199A90;
  v14 = &v15;
  v11[4] = self;
  v8 = lCopy;
  v12 = v8;
  v9 = rLCopy;
  v13 = v9;
  [(ICCryptoStrategyBase *)self performBlockIfMediaExists:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __52__ICMediaCryptoStrategyV1_encryptFileFromURL_toURL___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ICMediaCryptoStrategyV1_encryptFileFromURL_toURL___block_invoke_2;
  v8[3] = &unk_278199A68;
  v9 = v3;
  v7 = v3;
  *(*(a1[7] + 8) + 24) = [v4 encryptFileFromURL:v5 toURL:v6 setTagAndIVHandler:v8];
}

void __52__ICMediaCryptoStrategyV1_encryptFileFromURL_toURL___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setAssetCryptoTag:a2];
  [*(a1 + 32) setAssetCryptoInitializationVector:v6];
}

- (id)decryptedData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__53;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke;
  v4[3] = &unk_278196580;
  v4[4] = self;
  v4[5] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfMediaExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__53;
  v46 = __Block_byref_object_dispose__53;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__53;
  v36 = __Block_byref_object_dispose__53;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v4 = [v3 managedObjectContext];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke_2;
  v21 = &unk_278199AB8;
  v24 = &v42;
  v5 = v3;
  v25 = &v38;
  v26 = &v32;
  v27 = &v28;
  v6 = *(a1 + 32);
  v22 = v5;
  v23 = v6;
  [v4 performBlockAndWait:&v18];

  if (*(v39 + 24) == 1)
  {
    v7 = *(v29 + 24);
    v8 = os_log_create("com.apple.notes", "Crypto");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v9)
      {
        objc_opt_class();
        __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke_cold_2();
      }

      v10 = [*(a1 + 32) decryptedDataFromFileURL:{v33[5], v18, v19, v20, v21}];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = *(*(*(a1 + 40) + 8) + 40) == 0;
      v14 = os_log_create("com.apple.notes", "Crypto");
      v8 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          objc_opt_class();
          __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke_cold_3();
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = v43[5];
        *buf = 138412546;
        v49 = v15;
        v50 = 2112;
        v51 = v16;
        v17 = v15;
        _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Decrypted %@ %@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      objc_opt_class();
      __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke_cold_1();
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
}

void __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) isPasswordProtected];
  v5 = [*(a1 + 32) encryptedMediaURL];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) isAuthenticated];
  }
}

- (id)fileURLEncryptionCryptoTag
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__53;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__ICMediaCryptoStrategyV1_fileURLEncryptionCryptoTag__block_invoke;
  v4[3] = &unk_278199AE0;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfMediaExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __53__ICMediaCryptoStrategyV1_fileURLEncryptionCryptoTag__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetCryptoTag];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)fileURLEncryptionCryptoInitialzationVector
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__53;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__ICMediaCryptoStrategyV1_fileURLEncryptionCryptoInitialzationVector__block_invoke;
  v4[3] = &unk_278199AE0;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfMediaExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __69__ICMediaCryptoStrategyV1_fileURLEncryptionCryptoInitialzationVector__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetCryptoInitializationVector];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_17();
  v3 = OUTLINED_FUNCTION_1_10(v0, v1, v2, 5.778e-34);
  OUTLINED_FUNCTION_2_5(&dword_214D51000, v4, v5, "Trying to access decrypted data while not authenticated for %@ (%@)");
}

void __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_17();
  v3 = OUTLINED_FUNCTION_1_10(v0, v1, v2, 5.778e-34);
  OUTLINED_FUNCTION_2_5(&dword_214D51000, v4, v5, "Decrypting %@ %@");
}

void __40__ICMediaCryptoStrategyV1_decryptedData__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0_17();
  v5 = OUTLINED_FUNCTION_1_10(v2, v3, v4, 5.778e-34);
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Failed to decrypt %@ %@", v1, 0x16u);
}

@end