@interface ACAccountStore
@end

@implementation ACAccountStore

uint64_t __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke()
{
  _esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion__statusReportQueue = dispatch_queue_create("com.apple.dataaccess.statusreport", 0);

  return MEMORY[0x2821F96F8]();
}

id __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = _esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion__statusReportQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3;
  block[3] = &unk_278FC61D0;
  v2 = v0;
  v5 = v2;
  dispatch_sync(v1, block);

  return v2;
}

void __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [MEMORY[0x277D03740] sharedMonitor];
  v3 = [v2 monitoredAccounts];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 statusReport];
        if (v9)
        {
          [*(a1 + 32) addObject:v9];
        }

        [v8 resetStatusReport];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__0;
  v31[4] = __Block_byref_object_dispose__0;
  v6 = a3;
  v32 = v6;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v9)
  {
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v13 = *(a1 + 32);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_7;
        v23[3] = &unk_278FC61F8;
        v23[4] = v13;
        v26 = v31;
        v24 = v7;
        v25 = v8;
        [v13 accountWithIdentifier:v12 completion:v23];
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v9);
  }

  v14 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_2_10;
  block[3] = &unk_278FC6220;
  v15 = *(a1 + 40);
  v20 = v7;
  v21 = v15;
  v22 = v31;
  v16 = v7;
  dispatch_group_notify(v8, v14, block);

  _Block_object_dispose(v31, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 56) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    objc_storeStrong(v8, a3);
  }

  if (v11)
  {
    v10 = [ESAccount esAccountSubclassWithBackingAccountInfo:?];
    if (v10)
    {
      [*(a1 + 40) addObject:v10];
    }
  }

  objc_sync_exit(v6);

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_2_10(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v8 = *(*(a1 + 56) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a3);
  }

  objc_sync_exit(v7);

  if (v5)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4_13;
    v15[3] = &unk_278FC6270;
    v11 = *(a1 + 56);
    v14 = *(a1 + 32);
    v12 = *(&v14 + 1);
    *&v13 = *(a1 + 48);
    *(&v13 + 1) = v11;
    v16 = v14;
    v17 = v13;
    [v14 accountsWithAccountType:v5 completion:v15];
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4_13(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v8 = *(*(a1 + 56) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a3);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [ESAccount esAccountSubclassWithBackingAccountInfo:*(*(&v17 + 1) + 8 * v14), v17];
        if (v15)
        {
          [*(a1 + 40) addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  objc_sync_exit(v7);
  dispatch_group_leave(*(a1 + 48));

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_5(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

@end