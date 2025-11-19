@interface CardDAVDelegateManager
+ (void)finishFutures:(id)a3;
- (CardDAVDelegateManager)initWithDelegateInfoProvider:(id)a3 accountID:(id)a4 databaseHelper:(id)a5;
- (id)account;
- (id)addChildWithDelegateInfo:(id)a3;
- (id)collectDelegateInfoReturningError:(id *)a3;
- (id)existingChildAccountsWithProperty:(id)a3;
- (id)removeAccount:(id)a3;
- (id)saveAccount:(id)a3;
- (void)deleteOrphanDatabasesLackingRepresentationInDelegateInfos:(id)a3;
- (void)updateDelegates;
@end

@implementation CardDAVDelegateManager

- (CardDAVDelegateManager)initWithDelegateInfoProvider:(id)a3 accountID:(id)a4 databaseHelper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CardDAVDelegateManager;
  v12 = [(CardDAVDelegateManager *)&v17 init];
  if (v12)
  {
    v13 = sharedDAAccountStore();
    accountStore = v12->_accountStore;
    v12->_accountStore = v13;

    objc_storeStrong(&v12->_accountID, a4);
    objc_storeStrong(&v12->_delegateProvider, a3);
    objc_storeStrong(&v12->_databaseHelper, a5);
    v15 = v12;
  }

  return v12;
}

- (void)updateDelegates
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v46 = 0;
  v4 = [(CardDAVDelegateManager *)self collectDelegateInfoReturningError:&v46];
  v5 = v46;
  v6 = v5;
  if (v4)
  {
    v34 = v5;
    v36 = v3;
    v7 = [MEMORY[0x277D03970] DAAccountPrincipalPath];
    v39 = self;
    v8 = [(CardDAVDelegateManager *)self existingChildAccountsWithProperty:v7];
    v9 = [v8 mutableCopy];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v35 = v4;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    v12 = *v43;
    v13 = *MEMORY[0x277CFBD30];
    v14 = *MEMORY[0x277CFBD30] + 16;
    v15 = *(MEMORY[0x277D03988] + 3);
    type = v15;
    v37 = *MEMORY[0x277CFBD30];
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        v18 = [v17 principalPath];
        if (!(*(v13 + 16))(v13, v18))
        {
          v21 = v11;
          v22 = v14;
          v23 = v12;
          v24 = v9;
          v25 = [v9 objectForKeyedSubscript:v18];
          if (v25)
          {
            v19 = v25;
            v26 = [v25 accountProperties];
            [v17 setPropertiesOnAccount:v19];
            v27 = [v19 accountProperties];
            v28 = [v26 isEqualToDictionary:v27];

            if (v28)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v19 = [(CardDAVDelegateManager *)v39 addChildWithDelegateInfo:v17];
          }

          v29 = [(CardDAVDelegateManager *)v39 saveAccount:v19];
          [v36 addObject:v29];

LABEL_15:
          v9 = v24;
          [v24 removeObjectForKey:v18];
          v12 = v23;
          v14 = v22;
          v11 = v21;
          v13 = v37;
          goto LABEL_16;
        }

        v19 = DALoggingwithCategory();
        if (!os_log_type_enabled(v19, v15))
        {
          goto LABEL_17;
        }

        v20 = [v17 dsid];
        *buf = 138543618;
        v48 = v20;
        v49 = 2112;
        v50 = v17;
        _os_log_impl(&dword_24850D000, v19, type, "Unexpected condition updating deletes - no principal path for delegateInfo: %{public}@ %@", buf, 0x16u);

LABEL_16:
        v15 = type;
LABEL_17:
      }

      v11 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (!v11)
      {
LABEL_19:

        v30 = [v9 allValues];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __41__CardDAVDelegateManager_updateDelegates__block_invoke;
        v41[3] = &unk_278F1AD10;
        v41[4] = v39;
        v31 = [v30 _cn_map:v41];

        [(CardDAVDelegateManager *)v39 deleteOrphanDatabasesLackingRepresentationInDelegateInfos:obj];
        [objc_opt_class() finishFutures:v31];
        v3 = v36;
        [objc_opt_class() finishFutures:v36];

        v6 = v34;
        v4 = v35;
        goto LABEL_22;
      }
    }
  }

  v9 = DALoggingwithCategory();
  v32 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v9, v32))
  {
    *buf = 138412290;
    v48 = v6;
    _os_log_impl(&dword_24850D000, v9, v32, "Skipping delegate state update (including account account adds/removes) because we got an error fetching delegates from Family Circle. error:  %@", buf, 0xCu);
  }

LABEL_22:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)deleteOrphanDatabasesLackingRepresentationInDelegateInfos:(id)a3
{
  v5 = [a3 _cn_map:&__block_literal_global_0];
  v4 = [(CardDAVDelegateManager *)self databaseHelper];
  [v4 removeDelegateDatabasesNotMatchingAltDSIDs:v5];
}

+ (void)finishFutures:(id)a3
{
  v5 = a3;
  if (((*(*MEMORY[0x277CFBCF8] + 16))() & 1) == 0)
  {
    v3 = [MEMORY[0x277CFBE28] sequence:v5];
    v4 = [v3 result:0];
  }
}

- (id)account
{
  v3 = [(CardDAVDelegateManager *)self accountStore];
  v4 = [(CardDAVDelegateManager *)self accountID];
  v5 = [v3 accountWithIdentifier:v4];

  return v5;
}

- (id)collectDelegateInfoReturningError:(id *)a3
{
  v5 = [(CardDAVDelegateManager *)self delegateProvider];
  v6 = [(CardDAVDelegateManager *)self account];
  v7 = [v5 collectDelegatesForAccount:v6 error:a3];

  return v7;
}

- (id)existingChildAccountsWithProperty:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(CardDAVDelegateManager *)self account];
  v7 = [v6 childAccounts];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 accountPropertyForKey:{v4, v18}];
        [v5 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [v5 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)addChildWithDelegateInfo:(id)a3
{
  v4 = MEMORY[0x277CB8F30];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(CardDAVDelegateManager *)self accountStore];
  v8 = [v7 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BD8]];
  v9 = [v6 initWithAccountType:v8];

  [v5 setPropertiesOnAccount:v9];
  v10 = [(CardDAVDelegateManager *)self account];
  [v9 setParentAccount:v10];

  [v9 setAuthenticationType:@"parent"];

  return v9;
}

- (id)saveAccount:(id)a3
{
  v4 = a3;
  v5 = [(CardDAVDelegateManager *)self accountStore];
  v6 = [v5 _cn_canSaveAccount:v4];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke;
  v16[3] = &unk_278F1AD58;
  v7 = v4;
  v17 = v7;
  [v6 addFailureBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke_8;
  v14[3] = &unk_278F1AD80;
  v8 = v7;
  v15 = v8;
  [v6 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke_10;
  v12[3] = &unk_278F1ADA8;
  v12[4] = self;
  v13 = v8;
  v9 = v8;
  v10 = [v6 flatMap:v12];

  return v10;
}

void __38__CardDAVDelegateManager_saveAccount___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_24850D000, v4, v5, "Delegate with account ID %@ cannot be saved, error %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __38__CardDAVDelegateManager_saveAccount___block_invoke_8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) identifier];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24850D000, v2, v3, "Delegate with account ID %@ can be saved", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

id __38__CardDAVDelegateManager_saveAccount___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 _cn_saveVerifiedAccount:*(a1 + 40)];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke_2;
  v7[3] = &unk_278F1AD58;
  v8 = *(a1 + 40);
  [v3 addFailureBlock:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke_11;
  v5[3] = &unk_278F1AD80;
  v6 = *(a1 + 40);
  [v3 addSuccessBlock:v5];

  return v3;
}

void __38__CardDAVDelegateManager_saveAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_24850D000, v4, v5, "Delegate with account ID %@ save failed, error %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __38__CardDAVDelegateManager_saveAccount___block_invoke_11(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) identifier];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24850D000, v2, v3, "Delegate with account ID %@ saved", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)removeAccount:(id)a3
{
  v4 = a3;
  v5 = [(CardDAVDelegateManager *)self accountStore];
  v6 = [v5 _cn_removeAccount:v4];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__CardDAVDelegateManager_removeAccount___block_invoke;
  v12[3] = &unk_278F1AD58;
  v7 = v4;
  v13 = v7;
  [v6 addFailureBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__CardDAVDelegateManager_removeAccount___block_invoke_13;
  v10[3] = &unk_278F1AD80;
  v11 = v7;
  v8 = v7;
  [v6 addSuccessBlock:v10];

  return v6;
}

void __40__CardDAVDelegateManager_removeAccount___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_24850D000, v4, v5, "Delegate with account ID %@ failed to be removed, error %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__CardDAVDelegateManager_removeAccount___block_invoke_13(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) identifier];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_24850D000, v2, v3, "Delegate with account ID %@ was successfully removed", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end