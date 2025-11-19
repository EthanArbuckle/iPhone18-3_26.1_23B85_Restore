@interface ACAccountStore(ESExtensions)
- (id)es_accountsWithAccountTypeIdentifiers:()ESExtensions outError:;
- (void)_esAccountsWithAccountTypeIdentifiers:()ESExtensions enabledForDADataclasses:filterOnDataclasses:withCompletion:;
- (void)es_loadESAccountsEnabledForDADataclasses:()ESExtensions withCompletion:;
- (void)es_loadESAccountsWithCompletion:()ESExtensions;
@end

@implementation ACAccountStore(ESExtensions)

- (void)_esAccountsWithAccountTypeIdentifiers:()ESExtensions enabledForDADataclasses:filterOnDataclasses:withCompletion:
{
  v43 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v23 = a6;
  if ((_esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___haveRegisteredForInterrogation & 1) == 0)
  {
    _esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___haveRegisteredForInterrogation = 1;
    if ((_sESIsRunningInExchangeSyncD & 1) == 0)
    {
      if (_esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion__onceToken != -1)
      {
        [ACAccountStore(ESExtensions) _esAccountsWithAccountTypeIdentifiers:enabledForDADataclasses:filterOnDataclasses:withCompletion:];
      }

      v9 = [MEMORY[0x277D07AF0] sharedConnection];
      [v9 registerForInterrogationWithBlock:&__block_literal_global_4];
    }
  }

  if (a5)
  {
    v10 = acDataclassesForDADataclasses();
    v11 = [v10 allObjects];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_4;
    v40[3] = &unk_278FC6248;
    v40[4] = a1;
    v41 = v23;
    v12 = v23;
    [a1 accountIdentifiersEnabledForDataclasses:v11 withAccountTypeIdentifiers:v24 completion:v40];
  }

  else
  {
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__0;
    v38[4] = __Block_byref_object_dispose__0;
    v39 = 0;
    v13 = [MEMORY[0x277CBEB18] array];
    v14 = dispatch_group_create();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v24;
    v15 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v15)
    {
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          dispatch_group_enter(v14);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_3_12;
          v30[3] = &unk_278FC6298;
          v30[4] = a1;
          v33 = v38;
          v31 = v13;
          v32 = v14;
          [a1 accountTypeWithIdentifier:v18 completion:v30];
        }

        v15 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v15);
    }

    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __129__ACAccountStore_ESExtensions___esAccountsWithAccountTypeIdentifiers_enabledForDADataclasses_filterOnDataclasses_withCompletion___block_invoke_5;
    block[3] = &unk_278FC6220;
    v27 = v13;
    v28 = v23;
    v29 = v38;
    v20 = v13;
    v21 = v23;
    dispatch_group_notify(v14, v19, block);

    _Block_object_dispose(v38, 8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)es_loadESAccountsWithCompletion:()ESExtensions
{
  v4 = MEMORY[0x277D03720];
  v5 = a3;
  v7 = [v4 _leafAccountTypes];
  v6 = [v7 allObjects];
  [a1 _esAccountsWithAccountTypeIdentifiers:v6 enabledForDADataclasses:0 filterOnDataclasses:0 withCompletion:v5];
}

- (void)es_loadESAccountsEnabledForDADataclasses:()ESExtensions withCompletion:
{
  v6 = MEMORY[0x277D03720];
  v7 = a4;
  v9 = [v6 _leafAccountTypes];
  v8 = [v9 allObjects];
  [a1 _esAccountsWithAccountTypeIdentifiers:v8 enabledForDADataclasses:a3 filterOnDataclasses:1 withCompletion:v7];
}

- (id)es_accountsWithAccountTypeIdentifiers:()ESExtensions outError:
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
      v11 = *(MEMORY[0x277D03988] + 3);
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [ESAccount esAccountSubclassWithBackingAccountInfo:v13];
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
              _os_log_impl(&dword_24A097000, v15, v11, "Could not convert ACAccount (%@) to DAAccount", buf, 0xCu);
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
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v16))
    {
      v17 = *a4;
      *buf = 138412290;
      v26 = v17;
      _os_log_impl(&dword_24A097000, v7, v16, "Could not load ACAccounts due to Account Error %@", buf, 0xCu);
    }

    v6 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

@end