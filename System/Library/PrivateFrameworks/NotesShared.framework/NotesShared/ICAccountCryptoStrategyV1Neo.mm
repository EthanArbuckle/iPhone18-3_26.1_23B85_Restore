@interface ICAccountCryptoStrategyV1Neo
- (BOOL)hasPassphraseSet;
- (BOOL)setPassphrase:(id)passphrase hint:(id)hint;
- (ICEncryptionKey)primaryWrappedKey;
- (ICEncryptionMetadata)primaryMetadata;
- (void)removePassphrase;
@end

@implementation ICAccountCryptoStrategyV1Neo

- (ICEncryptionKey)primaryWrappedKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__47;
  v9 = __Block_byref_object_dispose__47;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__ICAccountCryptoStrategyV1Neo_primaryWrappedKey__block_invoke;
  v4[3] = &unk_278198620;
  v4[4] = &v5;
  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __49__ICAccountCryptoStrategyV1Neo_primaryWrappedKey__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accountData];
  v5 = [v4 cryptoPassphraseVerifier];

  if (v5)
  {
    v6 = [[ICEncryptionKey alloc] initWithSerializedData:v5];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __49__ICAccountCryptoStrategyV1Neo_primaryWrappedKey__block_invoke_cold_1(v3);
      }
    }
  }
}

- (ICEncryptionMetadata)primaryMetadata
{
  primaryWrappedKey = [(ICAccountCryptoStrategyV1Neo *)self primaryWrappedKey];
  metadata = [primaryWrappedKey metadata];

  return metadata;
}

- (BOOL)hasPassphraseSet
{
  primaryWrappedKey = [(ICAccountCryptoStrategyV1Neo *)self primaryWrappedKey];
  v3 = primaryWrappedKey != 0;

  return v3;
}

- (BOOL)setPassphrase:(id)passphrase hint:(id)hint
{
  v30 = *MEMORY[0x277D85DE8];
  passphraseCopy = passphrase;
  hintCopy = hint;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = shortLoggingDescription;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Setting v1 Neo passphrase for account… {account: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x2020000000;
  v29 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__ICAccountCryptoStrategyV1Neo_setPassphrase_hint___block_invoke;
  v19[3] = &unk_278197050;
  v11 = hintCopy;
  v20 = v11;
  v12 = passphraseCopy;
  v21 = v12;
  p_buf = &buf;
  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:v19];
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    object2 = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription2 = [object2 shortLoggingDescription];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&buf + 1) + 24)];
    *v23 = 138412546;
    v24 = shortLoggingDescription2;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Set v1 Neo passphrase for account {account: %@, success: %@}", v23, 0x16u);
  }

  v17 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  return v17 & 1;
}

void __51__ICAccountCryptoStrategyV1Neo_setPassphrase_hint___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v27 = 0;
  v4 = [MEMORY[0x277CBEA90] ic_random256BitData:&v27];
  v5 = v27;
  if (v4)
  {
    v6 = [v3 identifier];
    v7 = [ICEncryptionMetadata makeForV1NeoCipherWithObjectIdentifier:v6 salt:v4 iterationCount:20000 hint:a1[4]];

    if (v7)
    {
      v8 = a1[5];
      v9 = [v7 passphraseSalt];
      v26 = v5;
      v10 = +[ICCipherV1Neo keyForPassphrase:salt:iterationCount:error:](ICCipherV1Neo, "keyForPassphrase:salt:iterationCount:error:", v8, v9, [v7 passphraseIterationCount], &v26);
      v11 = v26;

      if (v10)
      {
        v12 = [[ICEncryptionKey alloc] initWithKeyData:v10 metadata:v7];
        if (v12)
        {
          v25 = v11;
          v13 = [MEMORY[0x277CBEA90] ic_random256BitData:&v25];
          v14 = v25;

          if (v13)
          {
            v24 = v14;
            v15 = [ICCipherV1Neo wrapKey:v13 withWrapper:v10 error:&v24];
            v11 = v24;

            if (v15)
            {
              v16 = [[ICEncryptionKey alloc] initWithKeyData:v15 metadata:v7];
              if (v16)
              {
                [v3 accountDataCreateIfNecessary];
                v17 = v23 = v11;
                [v17 setLockedNotesMode:1];
                [(ICEncryptionKey *)v16 serializedData];
                v18 = v22 = v16;
                [v17 setCryptoPassphraseVerifier:v18];

                [v17 updateChangeCountWithReason:@"Set passphrase"];
                v19 = +[ICAuthenticationState sharedState];
                [v19 setCachedMainKey:v12 forObject:v3];

                v20 = v17;
                *(*(a1[6] + 8) + 24) = 1;
                p_super = &v22->super;
                v11 = v23;
              }

              else
              {
                p_super = 0;
                v20 = os_log_create("com.apple.notes", "Crypto");
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  __51__ICAccountCryptoStrategyV1Neo_setPassphrase_hint___block_invoke_cold_1(v3);
                }
              }
            }

            else
            {
              v20 = os_log_create("com.apple.notes", "Crypto");
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_1();
              }

              p_super = v20;
            }
          }

          else
          {
            p_super = os_log_create("com.apple.notes", "Crypto");
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_2();
            }

            v15 = p_super;
            v11 = v14;
          }
        }

        else
        {
          v15 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __51__ICAccountCryptoStrategyV1Neo_setPassphrase_hint___block_invoke_cold_4(v3);
          }

          v13 = v15;
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
        __51__ICAccountCryptoStrategyV1Neo_setPassphrase_hint___block_invoke_cold_6(v3);
      }

      v10 = &v12->super;
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __48__ICAccountCryptoStrategyV1_setPassphrase_hint___block_invoke_cold_6();
    }

    v7 = v10;
  }
}

- (void)removePassphrase
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    object = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    v9 = 138412290;
    v10 = shortLoggingDescription;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_INFO, "Removing v1 Neo password for account… {account: %@}", &v9, 0xCu);
  }

  [(ICCryptoStrategyBase *)self performBlockIfAccountExists:&__block_literal_global_53];
  v6 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    object2 = [(ICCryptoStrategyBase *)self object];
    shortLoggingDescription2 = [object2 shortLoggingDescription];
    v9 = 138412290;
    v10 = shortLoggingDescription2;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Removed v1 Neo password for account {account: %@}", &v9, 0xCu);
  }
}

void __48__ICAccountCryptoStrategyV1Neo_removePassphrase__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = [v2 accountDataCreateIfNecessary];
  [v7 setCryptoPassphraseVerifier:0];
  [v7 updateChangeCountWithReason:@"Removed passphrase"];
  v3 = +[ICAuthenticationState sharedState];
  v4 = [v7 identifier];
  [v3 setCachedMainKey:0 forIdentifier:v4];

  v5 = +[ICAuthenticationState sharedState];
  v6 = [v2 accountData];

  [v5 removeMainKeyFromKeychainForObject:v6];
}

void __49__ICAccountCryptoStrategyV1Neo_primaryWrappedKey__block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __51__ICAccountCryptoStrategyV1Neo_setPassphrase_hint___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __51__ICAccountCryptoStrategyV1Neo_setPassphrase_hint___block_invoke_cold_4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __51__ICAccountCryptoStrategyV1Neo_setPassphrase_hint___block_invoke_cold_6(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end