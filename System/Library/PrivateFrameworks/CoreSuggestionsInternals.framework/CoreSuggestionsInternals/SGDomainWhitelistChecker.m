@interface SGDomainWhitelistChecker
+ ($30CD494556BCE78BE9FDF48ACEFE6DD0)payloadForDomain:(id)a3;
+ ($30CD494556BCE78BE9FDF48ACEFE6DD0)payloadWithStartChar:(const char *)a3 andSize:(unint64_t)a4;
+ (BOOL)isStructuredEventCandidateForEmailDomain:(id)a3;
+ (BOOL)isStructuredEventCandidateForURL:(id)a3 title:(id)a4;
+ (id)lock;
+ (void)_setTrieFromPath:(id)a3 guardedData:(id)a4;
+ (void)setTrieFromPath:(id)a3;
@end

@implementation SGDomainWhitelistChecker

+ (BOOL)isStructuredEventCandidateForEmailDomain:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:&stru_284703F00] & 1) == 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = [a1 lock];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__SGDomainWhitelistChecker_isStructuredEventCandidateForEmailDomain___block_invoke;
    v9[3] = &unk_27894E1B0;
    v12 = a1;
    v10 = v5;
    v11 = &v13;
    [v7 runWithLockAcquired:v9];

    v6 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __69__SGDomainWhitelistChecker_isStructuredEventCandidateForEmailDomain___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 48) payloadForDomain:*(a1 + 32)] & 1;
  }

  else
  {
    v2 = sgEventsLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "SGDomainWhitelistChecker isStructuredEventCandidateForEmailDomain: trie is nil.", v3, 2u);
    }
  }
}

+ (BOOL)isStructuredEventCandidateForURL:(id)a3 title:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [a3 host];
    if ([v5 length] <= 0x64)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      v7 = v14;
      LOBYTE(v6) = 0;
      if ([v5 getCString:v14 maxLength:100 encoding:1])
      {
        v8 = strnlen(v14, 0x64uLL);
        v9 = v14 + v8;
        if (v8 >= 4)
        {
          v7 = (v14 | (4 * (LODWORD(v14[0]) == 779581303)));
        }

        for (i = v9 - v7; v9 >= v7; --v9)
        {
          v11 = *v9;
          if ((v11 - 65) <= 0x19)
          {
            *v9 = v11 | 0x20;
          }
        }

        v6 = ([a1 payloadWithStartChar:v7 andSize:i] >> 2) & 1;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

+ ($30CD494556BCE78BE9FDF48ACEFE6DD0)payloadWithStartChar:(const char *)a3 andSize:(unint64_t)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2410000000;
  v12 = "";
  v13 = 0;
  v6 = [a1 lock];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SGDomainWhitelistChecker_payloadWithStartChar_andSize___block_invoke;
  v8[3] = &unk_27894E188;
  v8[5] = a3;
  v8[6] = a4;
  v8[4] = &v9;
  [v6 runWithLockAcquired:v8];

  LODWORD(a3) = *(v10 + 8);
  _Block_object_dispose(&v9, 8);
  return a3;
}

uint64_t __57__SGDomainWhitelistChecker_payloadWithStartChar_andSize___block_invoke(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    result = [v3 payloadForUTF8String:a1[5] length:a1[6]];
  }

  else
  {
    v5 = sgEventsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDomainWhitelistChecker payloadWithStartChar: trie is nil.", v6, 2u);
    }

    result = 0;
  }

  *(*(a1[4] + 8) + 32) = result;
  return result;
}

+ ($30CD494556BCE78BE9FDF48ACEFE6DD0)payloadForDomain:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2410000000;
  v14 = "";
  v15 = 0;
  v5 = [a1 lock];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SGDomainWhitelistChecker_payloadForDomain___block_invoke;
  v8[3] = &unk_27894E160;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 runWithLockAcquired:v8];

  LODWORD(v5) = *(v12 + 8);
  _Block_object_dispose(&v11, 8);

  return v5;
}

uint64_t __45__SGDomainWhitelistChecker_payloadForDomain___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    result = [v3 payloadForString:*(a1 + 32)];
  }

  else
  {
    v5 = sgEventsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDomainWhitelistChecker payloadForDomain: trie is nil.", v6, 2u);
    }

    result = 0;
  }

  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

+ (void)setTrieFromPath:(id)a3
{
  v4 = a3;
  v5 = [a1 lock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SGDomainWhitelistChecker_setTrieFromPath___block_invoke;
  v7[3] = &unk_27894E138;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 runWithLockAcquired:v7];
}

+ (void)_setTrieFromPath:(id)a3 guardedData:(id)a4
{
  if (a3)
  {
    v5 = MEMORY[0x277D42558];
    v6 = a4;
    v7 = a3;
    v8 = [[v5 alloc] initWithPath:v7];

    v9 = v6[1];
    v6[1] = v8;
  }
}

+ (id)lock
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SGDomainWhitelistChecker_lock__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (lock_onceToken != -1)
  {
    dispatch_once(&lock_onceToken, block);
  }

  v2 = lock_lock;

  return v2;
}

void __32__SGDomainWhitelistChecker_lock__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = +[SGAsset asset];
  v4 = [v3 filesystemPathForAssetDataRelativePath:@"master_whitelist.trie"];

  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    out_token = 138412290;
    v14 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Loading master domains whitelist from path = %@", &out_token, 0xCu);
  }

  [*(a1 + 32) _setTrieFromPath:v4 guardedData:v2];
  out_token = 0;
  if (kSqlEventFired_block_invoke__pasOnceToken3 != -1)
  {
    dispatch_once(&kSqlEventFired_block_invoke__pasOnceToken3, &__block_literal_global_15419);
  }

  v6 = *MEMORY[0x277D024D8];
  v7 = kSqlEventFired_block_invoke__pasExprOnceResult_15420;
  v8 = [v6 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__SGDomainWhitelistChecker_lock__block_invoke_2;
  handler[3] = &__block_descriptor_40_e8_v12__0i8l;
  handler[4] = *(a1 + 32);
  notify_register_dispatch(v8, &out_token, v7, handler);
  v9 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v2];
  v10 = lock_lock;
  lock_lock = v9;

  v11 = *MEMORY[0x277D85DE8];
}

void __32__SGDomainWhitelistChecker_lock__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[SGAsset asset];
  v3 = [v2 filesystemPathForAssetDataRelativePath:@"master_whitelist.trie"];

  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "Received asset update notification. Now loading master domains whitelist from path = %@", &v6, 0xCu);
  }

  [*(a1 + 32) setTrieFromPath:v3];
  v5 = *MEMORY[0x277D85DE8];
}

void __32__SGDomainWhitelistChecker_lock__block_invoke_12()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.suggestions.masterwhitelist" qosClass:9];
  v2 = kSqlEventFired_block_invoke__pasExprOnceResult_15420;
  kSqlEventFired_block_invoke__pasExprOnceResult_15420 = v1;

  objc_autoreleasePoolPop(v0);
}

@end