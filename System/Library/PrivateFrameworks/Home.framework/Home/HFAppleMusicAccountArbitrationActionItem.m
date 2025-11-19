@interface HFAppleMusicAccountArbitrationActionItem
@end

@implementation HFAppleMusicAccountArbitrationActionItem

BOOL __91___HFAppleMusicAccountArbitrationActionItem_logoutActionItemForAccessories_desiredAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteLoginHandler];
  v3 = [v2 loggedInAccount];
  v4 = v3 != 0;

  return v4;
}

uint64_t __91___HFAppleMusicAccountArbitrationActionItem_logoutActionItemForAccessories_desiredAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 remoteLoginHandler];
  v4 = [v3 loggedInAccount];
  v5 = [v4 username];
  v6 = [*(a1 + 32) username];
  v7 = [v5 isEqual:v6];

  return v7 ^ 1u;
}

BOOL __91___HFAppleMusicAccountArbitrationActionItem_logoutActionItemForAccessories_desiredAccount___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 remoteLoginHandler];
  v3 = [v2 loggedInAccount];
  v4 = v3 != 0;

  return v4;
}

void __91___HFAppleMusicAccountArbitrationActionItem_logoutActionItemForAccessories_desiredAccount___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [HFAppleMusicAccountOperations logoutAccessories:v2];
  v4 = [v3 completionHandlerAdapter];

  v5 = [v6 addCompletionBlock:v4];
}

void __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v3 + 16);
  v7 = a2;
  v8 = v6(v3, v4, v5);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_2;
  v17 = &unk_277E012F0;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v18 = v9;
  v19 = v10;
  v11 = [v8 flatMap:&v14];
  v12 = [v7 completionHandlerAdapter];

  v13 = [v11 addCompletionBlock:v12];
}

id __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  [v2 na_safeSetObject:v4 forKey:v5];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v6;
}

void __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_4(id *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  if (a1[4])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = a1[5];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [HFAppleMusicAccountOperations executeCompanionLoginForAccessory:*(*(&v21 + 1) + 8 * v9) account:a1[4]];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }

  v11 = [MEMORY[0x277D2C900] chainFutures:v4];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_5;
  v15[3] = &unk_277DFCA60;
  v16 = a1[5];
  v17 = a1[4];
  v18 = v3;
  v19 = a1[6];
  v20 = a1[7];
  v12 = v3;
  v13 = [v11 addCompletionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_5(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_6;
  v14[3] = &unk_277DF3888;
  v2 = *(a1 + 32);
  v15 = *(a1 + 40);
  v3 = [v2 na_filter:v14];
  v4 = [v3 allObjects];

  if ([v4 count])
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Accessoring needing Proxy  = %@", buf, 0xCu);
    }

    v6 = [MEMORY[0x277D2C900] chainFutures:*(a1 + 56)];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_88;
    v9[3] = &unk_277DF5010;
    v10 = *(a1 + 48);
    v11 = v4;
    v12 = *(a1 + 64);
    v13 = *(a1 + 32);
    v7 = [v6 addCompletionBlock:v9];
  }

  else
  {
    [*(a1 + 48) finishWithNoResult];
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 remoteLoginHandler];
  v4 = [v3 loggedInAccount];
  v5 = [v4 username];
  v6 = [*(a1 + 32) username];
  v7 = [v5 isEqual:v6];

  return v7 ^ 1u;
}

void __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_88(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "contextFetchError  = [%@]", buf, 0xCu);
    }

    [*(a1 + 32) finishWithError:v4];
  }

  else
  {
    v6 = MEMORY[0x277D2C900];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_89;
    v15[3] = &unk_277DF4220;
    v7 = *(a1 + 40);
    v16 = *(a1 + 48);
    v8 = [v7 na_map:v15];
    v9 = [v6 chainFutures:v8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_94;
    v12[3] = &unk_277DF50B0;
    v13 = *(a1 + 56);
    v14 = *(a1 + 32);
    v10 = [v9 addCompletionBlock:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

id __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_89(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [HFAppleMusicAccountOperations executeProxyLoginForAccessory:v3 context:v6];
  }

  else
  {
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "AKAppleIDAuthenticationContext is invalid for accessory [%@] returning", &v12, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:16 operation:@"Fetch AKAppleIDAuthenticationContexts" options:0];
    v7 = [MEMORY[0x277D2C900] futureWithError:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

void __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HFUtilities itemIdentifierForAccessories:*(a1 + 32)];
  v8 = HFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Completed all HFAppleMusicAccountOperations with result %@, error %@. Now calling HFAppleMusicAccountEndManualLoginNotification with identifier %@", buf, 0x20u);
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = @"symptomItemIdentifier";
  v13 = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v9 postNotificationName:@"HFAppleMusicAccountEndManualLoginNotification" object:0 userInfo:v10];

  [*(a1 + 40) finishWithResult:v5 error:v6];
  v11 = *MEMORY[0x277D85DE8];
}

@end