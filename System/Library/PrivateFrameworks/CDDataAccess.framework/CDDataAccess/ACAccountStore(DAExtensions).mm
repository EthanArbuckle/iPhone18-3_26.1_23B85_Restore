@interface ACAccountStore(DAExtensions)
- (id)da_accounts;
- (id)da_accountsEnabledForDADataclasses:()DAExtensions;
- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions;
- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions enabledForDADataclasses:;
- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions outError:;
- (void)_daAccountsWithAccountTypeIdentifiers:()DAExtensions enabledForDADataclasses:filterOnDataclasses:withCompletion:;
- (void)da_loadDAAccountsEnabledForDADataclasses:()DAExtensions withCompletion:;
- (void)da_loadDAAccountsWithCompletion:()DAExtensions;
@end

@implementation ACAccountStore(DAExtensions)

- (void)_daAccountsWithAccountTypeIdentifiers:()DAExtensions enabledForDADataclasses:filterOnDataclasses:withCompletion:
{
  v44 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v24 = a6;
  if ((_daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___haveRegisteredForInterrogation & 1) == 0)
  {
    _daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___haveRegisteredForInterrogation = 1;
    if ((_sDAIsRunningInDataAccessD & 1) == 0)
    {
      if (_daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion__onceToken != -1)
      {
        [ACAccountStore(DAExtensions) _daAccountsWithAccountTypeIdentifiers:enabledForDADataclasses:filterOnDataclasses:withCompletion:];
      }

      v10 = [MEMORY[0x277CF3AC0] sharedConnection];
      [v10 registerForInterrogationWithBlock:&__block_literal_global_31];
    }
  }

  if (a5)
  {
    v11 = acDataclassesForDADataclasses(a4);
    v12 = [v11 allObjects];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4;
    v41[3] = &unk_278D4C780;
    v41[4] = a1;
    v42 = v24;
    v13 = v24;
    [a1 accountIdentifiersEnabledForDataclasses:v12 withAccountTypeIdentifiers:v25 completion:v41];
  }

  else
  {
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__1;
    v39[4] = __Block_byref_object_dispose__1;
    v40 = 0;
    v14 = [MEMORY[0x277CBEB18] array];
    v15 = dispatch_group_create();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v25;
    v16 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v16)
    {
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          dispatch_group_enter(v15);
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3_39;
          v31[3] = &unk_278D4C7D0;
          v31[4] = a1;
          v34 = v39;
          v32 = v14;
          v33 = v15;
          [a1 accountTypeWithIdentifier:v19 completion:v31];
        }

        v16 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v16);
    }

    v20 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __129__ACAccountStore_DAExtensions___daAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_5;
    block[3] = &unk_278D4C758;
    v28 = v14;
    v29 = v24;
    v30 = v39;
    v21 = v14;
    v22 = v24;
    dispatch_group_notify(v15, v20, block);

    _Block_object_dispose(v39, 8);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)da_loadDAAccountsWithCompletion:()DAExtensions
{
  v4 = a3;
  v6 = +[DAAccount _leafAccountTypes];
  v5 = [v6 allObjects];
  [a1 _daAccountsWithAccountTypeIdentifiers:v5 enabledForDADataclasses:0 filterOnDataclasses:0 withCompletion:v4];
}

- (void)da_loadDAAccountsEnabledForDADataclasses:()DAExtensions withCompletion:
{
  v6 = a4;
  v8 = +[DAAccount _leafAccountTypes];
  v7 = [v8 allObjects];
  [a1 _daAccountsWithAccountTypeIdentifiers:v7 enabledForDADataclasses:a3 filterOnDataclasses:1 withCompletion:v6];
}

- (id)da_accounts
{
  v2 = dispatch_semaphore_create(0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__ACAccountStore_DAExtensions__da_accounts__block_invoke;
  v6[3] = &unk_278D4C7F8;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [a1 da_loadDAAccountsWithCompletion:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)da_accountsEnabledForDADataclasses:()DAExtensions
{
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__ACAccountStore_DAExtensions__da_accountsEnabledForDADataclasses___block_invoke;
  v9[3] = &unk_278D4C7F8;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [a1 da_loadDAAccountsEnabledForDADataclasses:a3 withCompletion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__ACAccountStore_DAExtensions__da_accountsWithAccountTypeIdentifiers___block_invoke;
  v9[3] = &unk_278D4C7F8;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [a1 da_loadDAAccountsWithAccountTypeIdentifiers:v4 withCompletion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions outError:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [a1 accountsWithAccountTypeIdentifiers:? error:?];
  if (v5)
  {
    v6 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v20 = v5;
      v10 = *v22;
      v11 = *(MEMORY[0x277CF3AF0] + 3);
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [DAAccount daAccountSubclassWithBackingAccountInfo:v13];
          if (v14)
          {
            [v6 addObject:v14];
          }

          else
          {
            v15 = DALoggingwithCategory();
            if (os_log_type_enabled(v15, v11))
            {
              *buf = 138412290;
              v26 = v13;
              _os_log_impl(&dword_24244C000, v15, v11, "Could not convert ACAccount (%@) to DAAccount", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v9);
      v5 = v20;
    }
  }

  else
  {
    v7 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v7, v16))
    {
      v17 = *a4;
      *buf = 138412290;
      v26 = v17;
      _os_log_impl(&dword_24244C000, v7, v16, "Could not load ACAccounts due to Account Error %@", buf, 0xCu);
    }

    v6 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)da_accountsWithAccountTypeIdentifiers:()DAExtensions enabledForDADataclasses:
{
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__ACAccountStore_DAExtensions__da_accountsWithAccountTypeIdentifiers_enabledForDADataclasses___block_invoke;
  v11[3] = &unk_278D4C7F8;
  v13 = &v14;
  v8 = v7;
  v12 = v8;
  [a1 da_loadDAAccountsWithAccountTypeIdentifiers:v6 enabledForDADataclasses:a4 withCompletion:v11];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

@end