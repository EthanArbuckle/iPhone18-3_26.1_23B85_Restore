@interface ICAccountCryptoStrategyV1
- (BOOL)mergeEncryptedDataFromRecord:(id)a3;
- (BOOL)setPassphrase:(id)a3 hint:(id)a4;
- (void)removePassphrase;
@end

@implementation ICAccountCryptoStrategyV1

- (BOOL)setPassphrase:(id)a3 hint:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(ICCryptoStrategyBase *)self object];
    v10 = [v9 shortLoggingDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Setting v1 passphrase for account… {account: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x2020000000;
  v29 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke;
  v19[3] = &unk_278197050;
  v11 = v7;
  v20 = v11;
  v12 = v6;
  v21 = v12;
  p_buf = &buf;
  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:v19];
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(ICCryptoStrategyBase *)self object];
    v15 = [v14 shortLoggingDescription];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&buf + 1) + 24)];
    *v23 = 138412546;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Set v1 passphrase for account {account: %@, success: %@}", v23, 0x16u);
  }

  v17 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  return v17 & 1;
}

void __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v25 = 0;
  v4 = [MEMORY[0x277CBEA90] ic_random128BitData:&v25];
  v5 = v25;
  if (v4)
  {
    v6 = [v3 identifier];
    v7 = [ICEncryptionMetadata makeForV1CipherWithObjectIdentifier:v6 salt:v4 iterationCount:20000 hint:a1[4]];

    if (v7)
    {
      v8 = a1[5];
      v9 = [v7 passphraseSalt];
      v24 = v5;
      p_super = +[ICCipherV1 keyForPassphrase:salt:iterationCount:error:](ICCipherV1, "keyForPassphrase:salt:iterationCount:error:", v8, v9, [v7 passphraseIterationCount], &v24);
      v11 = v24;

      if (p_super)
      {
        v12 = [[ICEncryptionKey alloc] initWithKeyData:p_super metadata:v7];
        if (v12)
        {
          v23 = v11;
          v13 = [MEMORY[0x277CBEA90] ic_random128BitData:&v23];
          v14 = v23;

          if (v13)
          {
            v22 = v14;
            v15 = [ICCipherV1 wrapKey:v13 withWrapper:p_super error:&v22];
            v11 = v22;

            v21 = v15;
            if (v15)
            {
              [v3 setCryptoIterationCount:{objc_msgSend(v7, "passphraseIterationCount")}];
              v16 = [v7 passphraseSalt];
              [v3 setCryptoSalt:v16];

              [v3 setCryptoVerifier:v15];
              v17 = [v7 passphraseHint];
              [v3 setPasswordHint:v17];

              [v3 setUnappliedEncryptedRecordData:0];
              [v3 updateChangeCountWithReason:@"Set passphrase"];
              v18 = [v3 accountDataCreateIfNecessary];
              [v18 setLockedNotesMode:1];
              [v18 updateChangeCountWithReason:@"Set passphrase"];
              v19 = +[ICAuthenticationState sharedState];
              [v19 setCachedMainKey:v12 forObject:v3];

              *(*(a1[6] + 8) + 24) = 1;
            }

            else
            {
              v18 = os_log_create("com.apple.notes", "Crypto");
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_1();
              }
            }
          }

          else
          {
            v18 = os_log_create("com.apple.notes", "Crypto");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_2();
            }

            v21 = v18;
            v11 = v14;
          }

          v20 = v21;
        }

        else
        {
          v20 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_3(v3);
          }

          v13 = v20;
        }
      }

      else
      {
        v13 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __64__ICCloudSyncingObjectCryptoStrategyV1Neo_mainKeyForPassphrase___block_invoke_cold_2();
        }

        v12 = v13;
      }

      v5 = v11;
    }

    else
    {
      v12 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
      {
        __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_5(v3);
      }

      p_super = &v12->super;
    }
  }

  else
  {
    p_super = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_6();
    }

    v7 = p_super;
  }
}

- (void)removePassphrase
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(ICCryptoStrategyBase *)self object];
    v5 = [v4 shortLoggingDescription];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_INFO, "Removing v1 passphrase for account… {account: %@}", &v9, 0xCu);
  }

  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:&__block_literal_global_47];
  v6 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(ICCryptoStrategyBase *)self object];
    v8 = [v7 shortLoggingDescription];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Removed v1 passphrase for account {account: %@}", &v9, 0xCu);
  }
}

void __45__ICAccountCryptoStrategyV1_removePassphrase__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setCryptoSalt:0];
  [v2 setCryptoVerifier:0];
  [v2 setCryptoIterationCount:0];
  [v2 setPasswordHint:0];
  [v2 setUnappliedEncryptedRecordData:0];
  [v2 updateChangeCountWithReason:@"Removed passphrase"];
  v3 = +[ICAuthenticationState sharedState];
  [v3 setCachedMainKey:0 forObject:v2];

  v4 = +[ICAuthenticationState sharedState];
  [v4 removeMainKeysFromKeychainForAccount:v2];
}

- (BOOL)mergeEncryptedDataFromRecord:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ICAccountCryptoStrategyV1_mergeEncryptedDataFromRecord___block_invoke;
  v7[3] = &unk_278198090;
  v8 = v4;
  v5 = v4;
  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:v7];

  return 1;
}

void __58__ICAccountCryptoStrategyV1_mergeEncryptedDataFromRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 mergeCryptoFieldsFromRecord:v3];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"CryptoVerifier"];
  [v4 setCryptoVerifier:v5];
}

void __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_3(void *a1)
{
  v6 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_5(void *a1)
{
  v6 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end