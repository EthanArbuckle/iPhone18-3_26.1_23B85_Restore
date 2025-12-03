@interface CardDAVDelegateManager
+ (void)finishFutures:(id)futures;
- (CardDAVDelegateManager)initWithDelegateInfoProvider:(id)provider accountID:(id)d databaseHelper:(id)helper;
- (id)account;
- (id)addChildWithDelegateInfo:(id)info;
- (id)collectDelegateInfoReturningError:(id *)error;
- (id)existingChildAccountsWithProperty:(id)property;
- (id)removeAccount:(id)account;
- (id)saveAccount:(id)account;
- (void)deleteOrphanDatabasesLackingRepresentationInDelegateInfos:(id)infos;
- (void)updateDelegates;
@end

@implementation CardDAVDelegateManager

- (CardDAVDelegateManager)initWithDelegateInfoProvider:(id)provider accountID:(id)d databaseHelper:(id)helper
{
  providerCopy = provider;
  dCopy = d;
  helperCopy = helper;
  v17.receiver = self;
  v17.super_class = CardDAVDelegateManager;
  v12 = [(CardDAVDelegateManager *)&v17 init];
  if (v12)
  {
    v13 = sharedDAAccountStore();
    accountStore = v12->_accountStore;
    v12->_accountStore = v13;

    objc_storeStrong(&v12->_accountID, d);
    objc_storeStrong(&v12->_delegateProvider, provider);
    objc_storeStrong(&v12->_databaseHelper, helper);
    v15 = v12;
  }

  return v12;
}

- (void)updateDelegates
{
  v52 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v46 = 0;
  v4 = [(CardDAVDelegateManager *)self collectDelegateInfoReturningError:&v46];
  v5 = v46;
  v6 = v5;
  if (v4)
  {
    v34 = v5;
    v36 = array;
    dAAccountPrincipalPath = [MEMORY[0x277D03970] DAAccountPrincipalPath];
    selfCopy = self;
    v8 = [(CardDAVDelegateManager *)self existingChildAccountsWithProperty:dAAccountPrincipalPath];
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
        principalPath = [v17 principalPath];
        if (!(*(v13 + 16))(v13, principalPath))
        {
          v21 = v11;
          v22 = v14;
          v23 = v12;
          v24 = v9;
          v25 = [v9 objectForKeyedSubscript:principalPath];
          if (v25)
          {
            v19 = v25;
            accountProperties = [v25 accountProperties];
            [v17 setPropertiesOnAccount:v19];
            accountProperties2 = [v19 accountProperties];
            v28 = [accountProperties isEqualToDictionary:accountProperties2];

            if (v28)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v19 = [(CardDAVDelegateManager *)selfCopy addChildWithDelegateInfo:v17];
          }

          v29 = [(CardDAVDelegateManager *)selfCopy saveAccount:v19];
          [v36 addObject:v29];

LABEL_15:
          v9 = v24;
          [v24 removeObjectForKey:principalPath];
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

        dsid = [v17 dsid];
        *buf = 138543618;
        v48 = dsid;
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

        allValues = [v9 allValues];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __41__CardDAVDelegateManager_updateDelegates__block_invoke;
        v41[3] = &unk_278F1AD10;
        v41[4] = selfCopy;
        v31 = [allValues _cn_map:v41];

        [(CardDAVDelegateManager *)selfCopy deleteOrphanDatabasesLackingRepresentationInDelegateInfos:obj];
        [objc_opt_class() finishFutures:v31];
        array = v36;
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

- (void)deleteOrphanDatabasesLackingRepresentationInDelegateInfos:(id)infos
{
  v5 = [infos _cn_map:&__block_literal_global_0];
  databaseHelper = [(CardDAVDelegateManager *)self databaseHelper];
  [databaseHelper removeDelegateDatabasesNotMatchingAltDSIDs:v5];
}

+ (void)finishFutures:(id)futures
{
  futuresCopy = futures;
  if (((*(*MEMORY[0x277CFBCF8] + 16))() & 1) == 0)
  {
    v3 = [MEMORY[0x277CFBE28] sequence:futuresCopy];
    v4 = [v3 result:0];
  }
}

- (id)account
{
  accountStore = [(CardDAVDelegateManager *)self accountStore];
  accountID = [(CardDAVDelegateManager *)self accountID];
  v5 = [accountStore accountWithIdentifier:accountID];

  return v5;
}

- (id)collectDelegateInfoReturningError:(id *)error
{
  delegateProvider = [(CardDAVDelegateManager *)self delegateProvider];
  account = [(CardDAVDelegateManager *)self account];
  v7 = [delegateProvider collectDelegatesForAccount:account error:error];

  return v7;
}

- (id)existingChildAccountsWithProperty:(id)property
{
  v23 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  account = [(CardDAVDelegateManager *)self account];
  childAccounts = [account childAccounts];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = childAccounts;
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
        v14 = [v13 accountPropertyForKey:{propertyCopy, v18}];
        [dictionary setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [dictionary copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)addChildWithDelegateInfo:(id)info
{
  v4 = MEMORY[0x277CB8F30];
  infoCopy = info;
  v6 = [v4 alloc];
  accountStore = [(CardDAVDelegateManager *)self accountStore];
  v8 = [accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BD8]];
  v9 = [v6 initWithAccountType:v8];

  [infoCopy setPropertiesOnAccount:v9];
  account = [(CardDAVDelegateManager *)self account];
  [v9 setParentAccount:account];

  [v9 setAuthenticationType:@"parent"];

  return v9;
}

- (id)saveAccount:(id)account
{
  accountCopy = account;
  accountStore = [(CardDAVDelegateManager *)self accountStore];
  v6 = [accountStore _cn_canSaveAccount:accountCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__CardDAVDelegateManager_saveAccount___block_invoke;
  v16[3] = &unk_278F1AD58;
  v7 = accountCopy;
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

- (id)removeAccount:(id)account
{
  accountCopy = account;
  accountStore = [(CardDAVDelegateManager *)self accountStore];
  v6 = [accountStore _cn_removeAccount:accountCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__CardDAVDelegateManager_removeAccount___block_invoke;
  v12[3] = &unk_278F1AD58;
  v7 = accountCopy;
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