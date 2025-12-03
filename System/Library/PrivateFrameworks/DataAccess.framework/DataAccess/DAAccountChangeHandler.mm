@interface DAAccountChangeHandler
+ (BOOL)_handleAccountAddOrModify:(id)modify withChangeInfo:(id)info inStore:(id)store accountUpdater:(id)updater;
+ (BOOL)_handleChangeToSubscribedCalendar:(id)calendar withChangeInfo:(id)info inStore:(id)store accountUpdater:(id)updater;
+ (BOOL)_sanityCheckCalDAVAccount:(id)account accountChangeInfo:(id)info;
+ (BOOL)_sanityCheckChildAccountOfType:(id)type withParent:(id)parent accountChangeInfo:(id)info inStore:(id)store updater:(id)updater;
+ (BOOL)_sanityCheckChildDAVAccount:(id)account withParent:(id)parent accountChangeInfo:(id)info;
+ (BOOL)_sanityCheckChildSubCalAccountsWithParent:(id)parent inStore:(id)store accountUpdater:(id)updater;
+ (BOOL)_sanityCheckEnabledDataclassesOnExchangeAccountInfo:(id)info;
+ (BOOL)_updateCalendarFromAccount:(id)account;
+ (BOOL)handleAccountWillChange:(id)change withChangeInfo:(id)info store:(id)store accountUpdater:(id)updater;
+ (id)_accountTypeWithIdentifier:(id)identifier inStore:(id)store;
+ (id)_findSubscribedCalendarForAccount:(id)account inEventStore:(id)store;
+ (id)_pickAccountToKeepWithAccount:(id)account andAccount:(id)andAccount;
+ (id)_supportedChildAccountTypesForParentAccountType:(id)type;
+ (void)_cleanupStoreForDisabledAccount:(id)account inStore:(id)store;
+ (void)_handleAccountDelete:(id)delete withChangeInfo:(id)info inStore:(id)store;
+ (void)_performBlockWithGenericClientDBForAccount:(id)account block:(id)block;
+ (void)_setupStoreForNewAccount:(id)account;
+ (void)handleAccountDidChange:(id)change withChangeInfo:(id)info store:(id)store;
@end

@implementation DAAccountChangeHandler

+ (BOOL)handleAccountWillChange:(id)change withChangeInfo:(id)info store:(id)store accountUpdater:(id)updater
{
  v23 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  infoCopy = info;
  storeCopy = store;
  updaterCopy = updater;
  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v14, v15))
  {
    v21 = 138543362;
    v22 = infoCopy;
    _os_log_impl(&dword_24844D000, v14, v15, "Handling account will change %{public}@", &v21, 0xCu);
  }

  changeType = [infoCopy changeType];
  if (changeType >= 2)
  {
    if (changeType != 3)
    {
      v18 = 0;
      goto LABEL_9;
    }

    v17 = [self _handleCalDAVAccountModifiedByDataAccess:changeCopy withChangeInfo:infoCopy inStore:storeCopy accountUpdater:updaterCopy];
  }

  else
  {
    v17 = [self _handleAccountAddOrModify:changeCopy withChangeInfo:infoCopy inStore:storeCopy accountUpdater:updaterCopy];
  }

  v18 = v17;
LABEL_9:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (void)handleAccountDidChange:(id)change withChangeInfo:(id)info store:(id)store
{
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  infoCopy = info;
  storeCopy = store;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v11, v12))
  {
    v26 = 138543362;
    v27 = infoCopy;
    _os_log_impl(&dword_24844D000, v11, v12, "Handling account did change %{public}@", &v26, 0xCu);
  }

  changeType = [infoCopy changeType];
  if (changeType == 2)
  {
    [self _handleAccountDelete:changeCopy withChangeInfo:infoCopy inStore:storeCopy];
  }

  else if (changeType <= 1)
  {
    accountTypeIdentifier = [infoCopy accountTypeIdentifier];
    if ([infoCopy changeType] == 1)
    {
      leafAccountTypes = [MEMORY[0x277D03970] leafAccountTypes];
      v16 = [leafAccountTypes containsObject:accountTypeIdentifier];

      if (v16)
      {
        v17 = [DAAccount daAccountSubclassWithBackingAccountInfo:changeCopy];
        [v17 accountDidChangeWithChangeInfo:infoCopy];
      }
    }

    if ([infoCopy changeType] == 1)
    {
      modifiedDataClasses = [infoCopy modifiedDataClasses];
      v19 = *MEMORY[0x277CB8958];
      v20 = [modifiedDataClasses containsObject:*MEMORY[0x277CB8958]];

      if (v20)
      {
        enabledDataclasses = [changeCopy enabledDataclasses];
        v22 = [enabledDataclasses containsObject:v19];

        if (v22)
        {
          [self _setupStoreForNewAccount:changeCopy];
        }

        else
        {
          [self _cleanupStoreForDisabledAccount:changeCopy inStore:storeCopy];
        }
      }
    }

    if (![infoCopy changeType])
    {
      enabledDataclasses2 = [changeCopy enabledDataclasses];
      v24 = [enabledDataclasses2 containsObject:*MEMORY[0x277CB8958]];

      if (v24)
      {
        [self _setupStoreForNewAccount:changeCopy];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (id)_supportedChildAccountTypesForParentAccountType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x277CB8C60]])
  {
    v15 = *MEMORY[0x277CB8C70];
    v4 = MEMORY[0x277CBEA60];
    v5 = &v15;
LABEL_3:
    v6 = 1;
LABEL_9:
    v8 = [v4 arrayWithObjects:v5 count:{v6, v11, v12, v13, v14, v15, v16}];
    goto LABEL_10;
  }

  if (([typeCopy isEqualToString:*MEMORY[0x277CB8C40]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CB8D38]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CB8CC0]) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CB8BA0]))
  {
    v7 = *MEMORY[0x277CB8BD8];
    v12 = *MEMORY[0x277CB8BC8];
    v13 = v7;
    v14 = *MEMORY[0x277CB8C70];
    v4 = MEMORY[0x277CBEA60];
    v5 = &v12;
    v6 = 3;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x277CB8B98]])
  {
    v11 = *MEMORY[0x277CB8C70];
    v4 = MEMORY[0x277CBEA60];
    v5 = &v11;
    goto LABEL_3;
  }

  v8 = 0;
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)_handleAccountAddOrModify:(id)modify withChangeInfo:(id)info inStore:(id)store accountUpdater:(id)updater
{
  v45 = *MEMORY[0x277D85DE8];
  modifyCopy = modify;
  infoCopy = info;
  storeCopy = store;
  updaterCopy = updater;
  accountTypeIdentifier = [infoCopy accountTypeIdentifier];
  if (![accountTypeIdentifier isEqualToString:*MEMORY[0x277CB8BC8]])
  {
    if (([accountTypeIdentifier isEqualToString:*MEMORY[0x277CB8C00]] & 1) != 0 || objc_msgSend(accountTypeIdentifier, "isEqualToString:", *MEMORY[0x277CB8C50]))
    {
      v20 = DALoggingwithCategory();
      v21 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v20, v21))
      {
        *buf = 138543362;
        v44 = accountTypeIdentifier;
        _os_log_impl(&dword_24844D000, v20, v21, "Found an account of type %{public}@.  Sanity check enabled dataclasses.", buf, 0xCu);
      }

      if ([self _sanityCheckEnabledDataclassesOnExchangeAccountInfo:modifyCopy])
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (![accountTypeIdentifier isEqualToString:*MEMORY[0x277CB8D10]])
      {
        v22 = [self _supportedChildAccountTypesForParentAccountType:accountTypeIdentifier];
        if ([v22 count])
        {
          v29 = DALoggingwithCategory();
          v30 = *(MEMORY[0x277D03988] + 5);
          if (os_log_type_enabled(v29, v30))
          {
            *buf = 138543362;
            v44 = accountTypeIdentifier;
            _os_log_impl(&dword_24844D000, v29, v30, "Found a parent account of type %{public}@. Sanity checking child accounts for it.", buf, 0xCu);
          }

          v35 = accountTypeIdentifier;

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v22 = v22;
          v31 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v31)
          {
            v32 = v31;
            v17 = 0;
            v33 = *v39;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v39 != v33)
                {
                  objc_enumerationMutation(v22);
                }

                v17 |= [self _sanityCheckChildAccountOfType:*(*(&v38 + 1) + 8 * i) withParent:modifyCopy accountChangeInfo:infoCopy inStore:storeCopy updater:{updaterCopy, v35}];
              }

              v32 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
            }

            while (v32);
          }

          else
          {
            LOBYTE(v17) = 0;
          }

          accountTypeIdentifier = v35;
        }

        else
        {
          LOBYTE(v17) = 0;
        }

        goto LABEL_12;
      }

      v23 = DALoggingwithCategory();
      v24 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v23, v24))
      {
        *buf = 138543362;
        v44 = accountTypeIdentifier;
        _os_log_impl(&dword_24844D000, v23, v24, "Found an account of type %{public}@.  Sanity check account properties.", buf, 0xCu);
      }

      v25 = [self _sanityCheckSubscribedCalendarAccountInfo:modifyCopy];
      v26 = [self _handleChangeToSubscribedCalendar:modifyCopy withChangeInfo:infoCopy inStore:storeCopy accountUpdater:updaterCopy];
      if ((v25 & 1) != 0 || v26)
      {
LABEL_11:
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __90__DAAccountChangeHandler__handleAccountAddOrModify_withChangeInfo_inStore_accountUpdater___block_invoke;
        v36[3] = &unk_278F13560;
        v37 = modifyCopy;
        [updaterCopy updateAccount:v37 withCompletionHandler:v36];
        LOBYTE(v17) = 1;
        v22 = v37;
LABEL_12:

        goto LABEL_19;
      }
    }

    LOBYTE(v17) = 0;
    goto LABEL_19;
  }

  v15 = DALoggingwithCategory();
  v16 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138543362;
    v44 = accountTypeIdentifier;
    _os_log_impl(&dword_24844D000, v15, v16, "Found a parent account of type %{public}@. Sanity checking child accounts for it.", buf, 0xCu);
  }

  LOBYTE(v17) = [self _sanityCheckChildSubCalAccountsWithParent:modifyCopy inStore:storeCopy accountUpdater:updaterCopy];
  v18 = [DAAccount daAccountSubclassWithBackingAccountInfo:modifyCopy];
  v19 = [self _sanityCheckCalDAVAccount:v18 accountChangeInfo:infoCopy];

  if (v19)
  {
    goto LABEL_11;
  }

LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __90__DAAccountChangeHandler__handleAccountAddOrModify_withChangeInfo_inStore_accountUpdater___block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [*(a1 + 32) identifier];
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_24844D000, v6, v7, "_handleAccountAddOrModify: Failed to save account with identifier %{public}@: %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_handleAccountDelete:(id)delete withChangeInfo:(id)info inStore:(id)store
{
  infoCopy = info;
  storeCopy = store;
  identifier = [delete identifier];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__DAAccountChangeHandler__handleAccountDelete_withChangeInfo_inStore___block_invoke;
  v13[3] = &unk_278F13588;
  v14 = infoCopy;
  v15 = storeCopy;
  v11 = storeCopy;
  v12 = infoCopy;
  [self _performBlockWithGenericClientDBForAccount:identifier block:v13];
}

void __70__DAAccountChangeHandler__handleAccountDelete_withChangeInfo_inStore___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CF7540];
  v7 = [*(a1 + 32) accountIdentifier];
  [v6 removeStoreForDeletedAccountWithIdentifier:v7 inDatabase:a3 mainDatabase:a2 accountStore:*(a1 + 40)];
}

+ (void)_cleanupStoreForDisabledAccount:(id)account inStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  identifier = [accountCopy identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__DAAccountChangeHandler__cleanupStoreForDisabledAccount_inStore___block_invoke;
  v11[3] = &unk_278F13588;
  v12 = accountCopy;
  v13 = storeCopy;
  v9 = storeCopy;
  v10 = accountCopy;
  [self _performBlockWithGenericClientDBForAccount:identifier block:v11];
}

void __66__DAAccountChangeHandler__cleanupStoreForDisabledAccount_inStore___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CF7540];
  v7 = *(a1 + 32);
  v8 = [v7 childAccounts];
  [v6 removeStoreForAccount:v7 withChildren:v8 inDatabase:a3 mainDatabase:a2 accountStore:*(a1 + 40)];
}

+ (void)_setupStoreForNewAccount:(id)account
{
  v28 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  if ([identifier isEqualToString:*MEMORY[0x277CB8D10]])
  {
    goto LABEL_4;
  }

  accountType2 = [accountCopy accountType];
  identifier2 = [accountType2 identifier];
  if ([identifier2 isEqualToString:*MEMORY[0x277CB8C48]])
  {

LABEL_4:
    goto LABEL_5;
  }

  accountType3 = [accountCopy accountType];
  identifier3 = [accountType3 identifier];
  v14 = [identifier3 isEqualToString:*MEMORY[0x277CB8CE0]];

  if (v14)
  {
LABEL_5:
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v9, v10))
    {
      identifier4 = [accountCopy identifier];
      *buf = 138543362;
      v27 = identifier4;
      _os_log_impl(&dword_24844D000, v9, v10, "Not creating a store for account %{public}@ because it is not appropriate", buf, 0xCu);
    }

    goto LABEL_14;
  }

  parentAccount = [accountCopy parentAccount];
  v9 = parentAccount;
  if (parentAccount && (-[NSObject accountType](parentAccount, "accountType"), v16 = objc_claimAutoreleasedReturnValue(), [v16 identifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277CB8BC8]), v17, v16, v18))
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v19, v20))
    {
      identifier5 = [accountCopy identifier];
      *buf = 138543362;
      v27 = identifier5;
      _os_log_impl(&dword_24844D000, v19, v20, "Not creating a store for account %{public}@ because it is the child of a CalDAV account", buf, 0xCu);
    }
  }

  else
  {
    identifier6 = [accountCopy identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __51__DAAccountChangeHandler__setupStoreForNewAccount___block_invoke;
    v24[3] = &unk_278F135B0;
    v25 = accountCopy;
    [self _performBlockWithGenericClientDBForAccount:identifier6 block:v24];

    v19 = v25;
  }

LABEL_14:
  v23 = *MEMORY[0x277D85DE8];
}

void __51__DAAccountChangeHandler__setupStoreForNewAccount___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277CF7540];
  v5 = *(a1 + 32);
  v6 = [v5 childAccounts];
  [v4 setUpCalStoreForParentAccount:v5 withChildren:v6 inDatabase:a3];
}

+ (void)_performBlockWithGenericClientDBForAccount:(id)account block:(id)block
{
  blockCopy = block;
  accountCopy = account;
  v7 = [DALocalDBHelper sharedInstanceForAccountType:@"GenericDataAccessAccount" creatingClass:0];
  [v7 calOpenDatabaseAsGenericClientForAccountID:0];
  [v7 calOpenDatabaseAsGenericClientForAccountID:accountCopy];
  blockCopy[2](blockCopy, [v7 calDatabaseForAccountID:0], objc_msgSend(v7, "calDatabaseForAccountID:", accountCopy));

  [v7 calCloseDatabaseForAccountID:accountCopy save:0];
  [v7 calCloseDatabaseForAccountID:0 save:0];
}

+ (id)_accountTypeWithIdentifier:(id)identifier inStore:(id)store
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v12 = 0;
  v6 = [store accountTypeWithAccountTypeIdentifier:identifierCopy error:&v12];
  v7 = v12;
  if (!v6)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138543618;
      v14 = identifierCopy;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_24844D000, v8, v9, "Couldn't find an account type with identifier %{public}@, error = %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)_sanityCheckChildSubCalAccountsWithParent:(id)parent inStore:(id)store accountUpdater:(id)updater
{
  v151 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  storeCopy = store;
  updaterCopy = updater;
  calDAVSubscribedCalendarsKey = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
  v95 = parentCopy;
  v9 = [parentCopy objectForKeyedSubscript:calDAVSubscribedCalendarsKey];

  v103 = v9;
  allKeys = [v9 allKeys];
  v90 = allKeys;
  if ([allKeys count])
  {
    v112 = [MEMORY[0x277CBEB98] setWithArray:{allKeys, allKeys}];
  }

  else
  {
    v112 = 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  childAccounts = [parentCopy childAccounts];
  v12 = [childAccounts countByEnumeratingWithState:&v141 objects:v150 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v142;
    v15 = *MEMORY[0x277CB8D10];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v142 != v14)
        {
          objc_enumerationMutation(childAccounts);
        }

        v17 = *(*(&v141 + 1) + 8 * i);
        accountType = [v17 accountType];
        identifier = [accountType identifier];
        v20 = [identifier isEqualToString:v15];

        if (v20)
        {
          v21 = [DAAccount daAccountSubclassWithBackingAccountInfo:v17];
          calDAVURLPath = [v21 calDAVURLPath];
          if ([calDAVURLPath length])
          {
            [dictionary setObject:v17 forKeyedSubscript:calDAVURLPath];
          }

          else
          {
            identifier2 = [v17 identifier];
            [dictionary setObject:v17 forKeyedSubscript:identifier2];
          }
        }
      }

      v13 = [childAccounts countByEnumeratingWithState:&v141 objects:v150 count:16];
    }

    while (v13);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v25 = v112;
  v26 = [v25 countByEnumeratingWithState:&v137 objects:v149 count:16];
  v27 = updaterCopy;
  v28 = dictionary;
  if (v26)
  {
    v29 = v26;
    v30 = *v138;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v138 != v30)
        {
          objc_enumerationMutation(v25);
        }

        v32 = *(*(&v137 + 1) + 8 * j);
        v33 = [dictionary objectForKeyedSubscript:v32];

        if (!v33)
        {
          v34 = [v103 objectForKeyedSubscript:v32];
          [dictionary2 setObject:v34 forKeyedSubscript:v32];
        }
      }

      v29 = [v25 countByEnumeratingWithState:&v137 objects:v149 count:16];
    }

    while (v29);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  allKeys2 = [dictionary allKeys];
  v36 = [allKeys2 countByEnumeratingWithState:&v133 objects:v148 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v134;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v134 != v38)
        {
          objc_enumerationMutation(allKeys2);
        }

        v40 = *(*(&v133 + 1) + 8 * k);
        if (([v25 containsObject:v40] & 1) == 0)
        {
          v41 = [dictionary objectForKeyedSubscript:v40];
          [array addObject:v41];
        }
      }

      v37 = [allKeys2 countByEnumeratingWithState:&v133 objects:v148 count:16];
    }

    while (v37);
  }

  v99 = v25;

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = array;
  v42 = [obj countByEnumeratingWithState:&v129 objects:v147 count:16];
  v96 = v42 != 0;
  if (v42)
  {
    v43 = v42;
    v44 = *v130;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v130 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v129 + 1) + 8 * m);
        v124 = MEMORY[0x277D85DD0];
        v125 = 3221225472;
        v126 = __91__DAAccountChangeHandler__sanityCheckChildSubCalAccountsWithParent_inStore_accountUpdater___block_invoke;
        v127 = &unk_278F13560;
        v128 = v46;
        [updaterCopy removeAccount:? completion:?];
      }

      v43 = [obj countByEnumeratingWithState:&v129 objects:v147 count:16];
    }

    while (v43);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  allKeys3 = [v103 allKeys];
  v104 = [allKeys3 countByEnumeratingWithState:&v120 objects:v146 count:16];
  if (v104)
  {
    v101 = *v121;
    v92 = *MEMORY[0x277CB8D10];
    v47 = 0x277D03000uLL;
    v48 = v99;
    while (1)
    {
      for (n = 0; n != v104; ++n)
      {
        if (*v121 != v101)
        {
          objc_enumerationMutation(allKeys3);
        }

        v50 = *(*(&v120 + 1) + 8 * n);
        v51 = [v28 objectForKeyedSubscript:v50];
        v113 = v51;
        if (!v51)
        {
          v52 = [self _accountTypeWithIdentifier:v92 inStore:storeCopy];
          v51 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v52];
          [v51 setParentAccount:v95];
          [v51 setAuthenticated:1];
        }

        v53 = [DAAccount daAccountSubclassWithBackingAccountInfo:v51];
        v54 = v53;
        if (v53)
        {
          calDAVURLPath2 = [v53 calDAVURLPath];
          v111 = n;
          v109 = calDAVURLPath2;
          if (calDAVURLPath2 == v50 || ([calDAVURLPath2 isEqualToString:v50] & 1) != 0)
          {
            v56 = 0;
          }

          else
          {
            [v54 setCalDAVURLPath:v50];
            v56 = 1;
          }

          v57 = [v103 objectForKeyedSubscript:v50];
          shouldRemoveAlarms = [v54 shouldRemoveAlarms];
          subCalFilterAlarmsKey = [*(v47 + 2416) SubCalFilterAlarmsKey];
          v60 = [v57 objectForKeyedSubscript:subCalFilterAlarmsKey];
          bOOLValue = [v60 BOOLValue];

          if (shouldRemoveAlarms != bOOLValue)
          {
            subCalFilterAlarmsKey2 = [*(v47 + 2416) SubCalFilterAlarmsKey];
            v63 = [v57 objectForKeyedSubscript:subCalFilterAlarmsKey2];
            [v54 setShouldRemoveAlarms:{objc_msgSend(v63, "BOOLValue")}];

            v56 = 1;
          }

          subscriptionURL = [v54 subscriptionURL];
          absoluteString = [subscriptionURL absoluteString];

          subCalSubscriptionURLKey = [*(v47 + 2416) SubCalSubscriptionURLKey];
          v67 = [v57 objectForKeyedSubscript:subCalSubscriptionURLKey];

          if ([v67 hasPrefix:@"webcal://"])
          {
            v68 = [v67 substringFromIndex:6];
            v69 = [@"http" stringByAppendingString:v68];

            v67 = v69;
          }

          if (v67 && absoluteString != v67 && ([absoluteString isEqualToString:v67] & 1) == 0)
          {
            [v54 setHost:v67];
            v56 = 1;
          }

          v110 = v51;
          subCalTitleKey = [*(v47 + 2416) SubCalTitleKey];
          v71 = [v57 objectForKeyedSubscript:subCalTitleKey];

          accountDescription = [v54 accountDescription];
          v73 = accountDescription;
          if (accountDescription == v71)
          {
          }

          else
          {
            accountDescription2 = [v54 accountDescription];
            v75 = [accountDescription2 isEqualToString:v71];

            if ((v75 & 1) == 0)
            {
              [v54 setAccountDescription:v71];
              v56 = 1;
            }
          }

          v106 = v71;
          v107 = v67;
          v108 = absoluteString;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v76 = v57;
          v77 = [v76 countByEnumeratingWithState:&v116 objects:v145 count:16];
          if (v77)
          {
            v78 = v77;
            v79 = *v117;
            do
            {
              for (ii = 0; ii != v78; ++ii)
              {
                if (*v117 != v79)
                {
                  objc_enumerationMutation(v76);
                }

                v81 = *(*(&v116 + 1) + 8 * ii);
                v82 = [v76 objectForKeyedSubscript:v81];
                v83 = [v54 objectForKeyedSubscript:v81];
                v84 = [v83 isEqual:v82];

                if ((v84 & 1) == 0)
                {
                  [v54 setObject:v82 forKeyedSubscript:v81];
                  v56 = 1;
                }
              }

              v78 = [v76 countByEnumeratingWithState:&v116 objects:v145 count:16];
            }

            while (v78);
          }

          v51 = v110;
          v85 = [self _updateSubscribedCalendarAccountProperties:v110];
          if (v113)
          {
            v86 = v85 | v56;
            v48 = v99;
            v27 = updaterCopy;
            v47 = 0x277D03000;
            v28 = dictionary;
            n = v111;
            if ((v86 & 1) == 0)
            {
LABEL_82:

              goto LABEL_83;
            }
          }

          else
          {
            [v54 setVersionForNewAccount];
            v48 = v99;
            v27 = updaterCopy;
            v47 = 0x277D03000;
            v28 = dictionary;
            n = v111;
          }

          v114[0] = MEMORY[0x277D85DD0];
          v114[1] = 3221225472;
          v114[2] = __91__DAAccountChangeHandler__sanityCheckChildSubCalAccountsWithParent_inStore_accountUpdater___block_invoke_72;
          v114[3] = &__block_descriptor_33_e20_v20__0B8__NSError_12l;
          v115 = v113 == 0;
          v87 = MEMORY[0x24C1CE570](v114);
          if (v113)
          {
            [v27 updateAccount:v110 withCompletionHandler:v87];
          }

          else
          {
            [v27 addAccount:v110 withCompletionHandler:v87];
          }

          v96 = 1;
          goto LABEL_82;
        }

LABEL_83:
      }

      v104 = [allKeys3 countByEnumeratingWithState:&v120 objects:v146 count:16];
      if (!v104)
      {
        goto LABEL_87;
      }
    }
  }

  v48 = v99;
LABEL_87:

  v88 = *MEMORY[0x277D85DE8];
  return v96;
}

void __91__DAAccountChangeHandler__sanityCheckChildSubCalAccountsWithParent_inStore_accountUpdater___block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [*(a1 + 32) identifier];
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_24844D000, v6, v7, "Failed to remove orphaned subscribed calendar account %{public}@: error = %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __91__DAAccountChangeHandler__sanityCheckChildSubCalAccountsWithParent_inStore_accountUpdater___block_invoke_72(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = @"modified";
      if (*(a1 + 32))
      {
        v8 = @"added";
      }

      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_24844D000, v6, v7, "Failed to save %{public}@ subscribed calendar child account: error = %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_handleChangeToSubscribedCalendar:(id)calendar withChangeInfo:(id)info inStore:(id)store accountUpdater:(id)updater
{
  updater = [DAAccount daAccountSubclassWithBackingAccountInfo:calendar, info, store, updater];
  if ([updater conformsToProtocol:&unk_285ABF1A0])
  {
    v8 = [self _updateCalendarFromAccount:updater];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_updateCalendarFromAccount:(id)account
{
  v39 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];
  v6 = [self _findSubscribedCalendarForAccount:accountCopy inEventStore:v5];
  if (v6)
  {
    subscriptionURL = [accountCopy subscriptionURL];
    absoluteString = [subscriptionURL absoluteString];

    if (absoluteString && ([v6 subcalURL], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", absoluteString), v9, (v10 & 1) == 0))
    {
      [v6 setSubcalURL:absoluteString];
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    shouldRemoveAlarms = [accountCopy shouldRemoveAlarms];
    if (shouldRemoveAlarms != [v6 stripAlarms])
    {
      [v6 setStripAlarms:{objc_msgSend(accountCopy, "shouldRemoveAlarms")}];
      v11 = 1;
    }

    shouldRemoveAttachments = [accountCopy shouldRemoveAttachments];
    if (shouldRemoveAttachments != [v6 stripAttachments])
    {
      [v6 setStripAttachments:{objc_msgSend(accountCopy, "shouldRemoveAttachments")}];
      v11 = 1;
    }

    [accountCopy refreshInterval];
    if ([v6 refreshInterval] != v16)
    {
      [accountCopy refreshInterval];
      [v6 setRefreshInterval:v17];
      v11 = 1;
    }

    calendarExternalId = [accountCopy calendarExternalId];
    externalID = [v6 externalID];
    v20 = [externalID isEqualToString:calendarExternalId];

    if (v20)
    {
      if (!v11)
      {
        v21 = DALoggingwithCategory();
        v22 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v21, v22))
        {
          accountID = [accountCopy accountID];
          accountDescription = [accountCopy accountDescription];
          *buf = 138543618;
          v34 = accountID;
          v35 = 2112;
          v36 = accountDescription;
          _os_log_impl(&dword_24844D000, v21, v22, "No calendar updates needed for changes to account %{public}@ (%@)", buf, 0x16u);
        }

LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      [v6 setExternalID:calendarExternalId];
    }

    v32 = 0;
    v25 = [v5 saveCalendar:v6 commit:1 error:&v32];
    v21 = v32;
    if ((v25 & 1) == 0)
    {
      v26 = DALoggingwithCategory();
      v27 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v26, v27))
      {
        accountID2 = [accountCopy accountID];
        accountDescription2 = [accountCopy accountDescription];
        *buf = 138543874;
        v34 = accountID2;
        v35 = 2112;
        v36 = accountDescription2;
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&dword_24844D000, v26, v27, "Couldn't save calendar with updated properties for change to account %{public}@ (%@): %@", buf, 0x20u);
      }
    }

    goto LABEL_23;
  }

  absoluteString = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(absoluteString, v12))
  {
    accountID3 = [accountCopy accountID];
    *buf = 138543362;
    v34 = accountID3;
    _os_log_impl(&dword_24844D000, absoluteString, v12, "No calendar for account %{public}@, so we can't update it.", buf, 0xCu);
  }

LABEL_24:

  v30 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)_findSubscribedCalendarForAccount:(id)account inEventStore:(id)store
{
  v22 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v6 = [store calendarsForEntityType:0];
  accountID = [accountCopy accountID];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        subcalAccountID = [v12 subcalAccountID];
        v14 = [subcalAccountID isEqualToString:accountID];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)_sanityCheckCalDAVAccount:(id)account accountChangeInfo:(id)info
{
  v34 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  infoCopy = info;
  v7 = accountCopy;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v8, v9))
  {
    accountDescription = [v7 accountDescription];
    publicDescription = [v7 publicDescription];
    mobileCalDAVAccount = [v7 mobileCalDAVAccount];
    if ([mobileCalDAVAccount shouldUseCalendarHomeSyncReport])
    {
      v13 = &stru_285AA6518;
    }

    else
    {
      v13 = @" NOT";
    }

    modifiedDataClasses = [infoCopy modifiedDataClasses];
    v26 = 138413058;
    v27 = accountDescription;
    v28 = 2114;
    v29 = publicDescription;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = modifiedDataClasses;
    _os_log_impl(&dword_24844D000, v8, v9, "Sanity checking CalDAV account %@ (%{public}@). This account does %@ use the calendar home sync report. Modified dataclasses are %@.", &v26, 0x2Au);
  }

  modifiedDataClasses2 = [infoCopy modifiedDataClasses];
  v16 = [modifiedDataClasses2 containsObject:*MEMORY[0x277CB8958]];

  if (v16)
  {
    [v7 calendarsDataclassModified];
  }

  backingAccountInfo = [v7 backingAccountInfo];
  if ([infoCopy changeType])
  {
    goto LABEL_13;
  }

  parentAccount = [backingAccountInfo parentAccount];
  if (parentAccount || ![backingAccountInfo supportsAuthentication] || objc_msgSend(backingAccountInfo, "isAuthenticated"))
  {

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  credential = [backingAccountInfo credential];

  if (!credential)
  {
    goto LABEL_13;
  }

  v23 = DALoggingwithCategory();
  if (os_log_type_enabled(v23, v9))
  {
    accountDescription2 = [v7 accountDescription];
    publicDescription2 = [v7 publicDescription];
    v26 = 138412546;
    v27 = accountDescription2;
    v28 = 2114;
    v29 = publicDescription2;
    _os_log_impl(&dword_24844D000, v23, v9, "Account %@ (%{public}@) is being added with credentials but is not set as authenticated. Marking it to ignore the authenticated property on next sync.", &v26, 0x16u);
  }

  [backingAccountInfo setAccountProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CF7930]];
  v19 = 1;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)_sanityCheckChildDAVAccount:(id)account withParent:(id)parent accountChangeInfo:(id)info
{
  v76 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  parentCopy = parent;
  infoCopy = info;
  accountType = [parentCopy accountType];
  identifier = [accountType identifier];
  v12 = *MEMORY[0x277CB8C40];
  if ([identifier isEqualToString:*MEMORY[0x277CB8C40]])
  {
    goto LABEL_6;
  }

  selfCopy = self;
  accountType2 = [parentCopy accountType];
  identifier2 = [accountType2 identifier];
  if ([identifier2 isEqualToString:*MEMORY[0x277CB8D38]])
  {
LABEL_5:

    self = selfCopy;
LABEL_6:

    goto LABEL_7;
  }

  v69 = accountCopy;
  accountType3 = [parentCopy accountType];
  identifier3 = [accountType3 identifier];
  if ([identifier3 isEqualToString:*MEMORY[0x277CB8B98]])
  {

    accountCopy = v69;
    goto LABEL_5;
  }

  accountType4 = [parentCopy accountType];
  identifier4 = [accountType4 identifier];
  v68 = [identifier4 isEqualToString:*MEMORY[0x277CB8CC0]];

  accountCopy = v69;
  self = selfCopy;
  if ((v68 & 1) == 0)
  {
    accountType5 = [parentCopy accountType];
    identifier5 = [accountType5 identifier];
    v32 = [identifier5 isEqualToString:*MEMORY[0x277CB8BA0]];

    if (v32)
    {
      if ([v69 isCalDAVAccount])
      {
        v33 = MEMORY[0x277CB8958];
      }

      else
      {
        if (![v69 isCardDAVAccount])
        {
          goto LABEL_40;
        }

        v33 = MEMORY[0x277CB8968];
      }

      v46 = *v33;
      if (v46)
      {
        v47 = v46;
        v48 = [parentCopy propertiesForDataclass:v46];
        v49 = [v48 objectForKeyedSubscript:@"url"];
        if ([v49 length])
        {
          v50 = [MEMORY[0x277CBEBC0] URLWithString:v49];
          if (v50)
          {
            principalURL = [v69 principalURL];
            host = [principalURL host];
            host2 = [v50 host];
            v54 = [host isEqualToString:host2];

            if ((v54 & 1) == 0)
            {
              host3 = [v50 host];
              [v69 setHost:host3];
            }

            port = [v69 port];
            port2 = [v50 port];
            integerValue = [port2 integerValue];

            if (port == integerValue)
            {
              v59 = v54 ^ 1;
            }

            else
            {
              port3 = [v50 port];
              [v69 setPort:{objc_msgSend(port3, "integerValue")}];

              v59 = 1;
            }

            scheme = [v50 scheme];
            if ([scheme length])
            {
              scheme2 = [v50 scheme];
              v63 = [scheme2 isEqualToString:@"https"];
            }

            else
            {
              v63 = 1;
            }

            if (v63 != [v69 useSSL])
            {
              [v69 setUseSSL:v63];
LABEL_49:
              v64 = DALoggingwithCategory();
              v65 = *(MEMORY[0x277D03988] + 5);
              if (os_log_type_enabled(v64, v65))
              {
                principalURL2 = [v69 principalURL];
                absoluteString = [principalURL2 absoluteString];
                *buf = 138412546;
                v73 = absoluteString;
                v74 = 2112;
                v75 = v49;
                _os_log_impl(&dword_24844D000, v64, v65, "BagURL has changed from %@ to %@, updated account", buf, 0x16u);
              }

              v43 = 1;
              goto LABEL_53;
            }

            if (v59)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          v50 = 0;
        }

        v43 = 0;
LABEL_53:

        self = selfCopy;
        goto LABEL_28;
      }
    }

LABEL_40:
    v43 = 0;
    goto LABEL_28;
  }

LABEL_7:
  accountType6 = [parentCopy accountType];
  identifier6 = [accountType6 identifier];
  v19 = [identifier6 isEqualToString:v12];

  if ((v19 & 1) == 0)
  {
    accountType7 = [parentCopy accountType];
    identifier7 = [accountType7 identifier];
    v24 = [identifier7 isEqualToString:*MEMORY[0x277CB8D38]];

    if (v24)
    {
      bOOLValue = 1;
      v21 = @"yahoo.com";
      goto LABEL_25;
    }

    accountType8 = [parentCopy accountType];
    identifier8 = [accountType8 identifier];
    v27 = [identifier8 isEqualToString:*MEMORY[0x277CB8B98]];

    if (v27)
    {
      bOOLValue = 1;
      v21 = @"aol.com";
      goto LABEL_25;
    }

    accountType9 = [parentCopy accountType];
    identifier9 = [accountType9 identifier];
    v36 = [identifier9 isEqualToString:*MEMORY[0x277CB8CC0]];

    if (v36)
    {
      if ([accountCopy isCalDAVAccount])
      {
        v37 = MEMORY[0x277CB8958];
      }

      else
      {
        if (![accountCopy isCardDAVAccount])
        {
          goto LABEL_24;
        }

        v37 = MEMORY[0x277CB8968];
      }

      v38 = *v37;
      if (v38)
      {
        v39 = v38;
        v40 = [parentCopy propertiesForDataclass:v38];
        v21 = [v40 objectForKeyedSubscript:*MEMORY[0x277CB8AC8]];
        v41 = [v40 objectForKeyedSubscript:*MEMORY[0x277CB8B48]];
        bOOLValue = [v41 BOOLValue];

        goto LABEL_25;
      }
    }

LABEL_24:
    v21 = 0;
    bOOLValue = 1;
    goto LABEL_25;
  }

  bOOLValue = 1;
  v21 = @"google.com";
LABEL_25:
  host4 = [accountCopy host];
  v43 = host4 == 0;

  if (!host4)
  {
    [accountCopy setHost:v21];
    [accountCopy setUseSSL:bOOLValue];
  }

LABEL_28:
  if ([accountCopy isCalDAVAccount])
  {
    v43 |= [self _sanityCheckCalDAVAccount:accountCopy accountChangeInfo:infoCopy];
  }

  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

+ (BOOL)_sanityCheckChildAccountOfType:(id)type withParent:(id)parent accountChangeInfo:(id)info inStore:(id)store updater:(id)updater
{
  v182 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  parentCopy = parent;
  infoCopy = info;
  storeCopy = store;
  updaterCopy = updater;
  v158 = infoCopy;
  v156 = parentCopy;
  v157 = storeCopy;
  if (![infoCopy changeType] || (objc_msgSend(infoCopy, "oldAccountProperties"), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    v155 = 1;
    goto LABEL_71;
  }

  username = [parentCopy username];
  v154 = [username length];
  if (v154 || ([infoCopy username], v142 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v142, "length")))
  {
    username2 = [parentCopy username];
    username3 = [infoCopy username];
    v141 = username2;
    v17 = 1;
    if (![username2 isEqualToString:?])
    {
      v153 = 1;
      v147 = 0;
      v152 = 0;
      v151 = 0;
      v144 = 0;
      v145 = 0;
      v150 = 0;
      v149 = 0;
      v143 = 0;
      v148 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v146 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
LABEL_14:
      v155 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  v139 = [parentCopy objectForKeyedSubscript:@"DAAccountHost"];
  v27 = [v139 length];
  v152 = v27 == 0;
  v153 = v17;
  if (v27 || ([infoCopy oldAccountProperties], v131 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v131, "objectForKeyedSubscript:", @"DAAccountHost"), v130 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v130, "length")))
  {
    v28 = [parentCopy objectForKeyedSubscript:@"DAAccountHost"];
    oldAccountProperties = [infoCopy oldAccountProperties];
    [oldAccountProperties objectForKeyedSubscript:@"DAAccountHost"];
    v136 = v138 = v28;
    if (![v28 isEqualToString:?])
    {
      v147 = 1;
      v144 = 0;
      v145 = 0;
      v151 = 0x100000000;
      v150 = 0;
      v149 = 0;
      v143 = 0;
      v148 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v146 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      goto LABEL_14;
    }

    HIDWORD(v151) = 1;
  }

  else
  {
    HIDWORD(v151) = 0;
  }

  v59 = [parentCopy objectForKeyedSubscript:@"DAAccountPort"];
  LODWORD(v151) = v59 == 0;
  v135 = v59;
  if (!v59)
  {
    oldAccountProperties2 = [infoCopy oldAccountProperties];
    v60 = [oldAccountProperties2 objectForKeyedSubscript:@"DAAccountPort"];
    if (!v60)
    {
      v124 = 0;
      HIDWORD(v150) = 0;
      goto LABEL_129;
    }

    v124 = v60;
  }

  v61 = [parentCopy objectForKeyedSubscript:@"DAAccountPort"];
  oldAccountProperties3 = [infoCopy oldAccountProperties];
  [oldAccountProperties3 objectForKeyedSubscript:@"DAAccountPort"];
  v132 = v134 = v61;
  if (![v61 isEqual:?])
  {
    v147 = 1;
    v144 = 0x100000000;
    v150 = 0x100000000;
    v149 = 0;
    v143 = 0;
    v148 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v145 = 0;
    v146 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  HIDWORD(v150) = 1;
LABEL_129:
  v62 = [parentCopy objectForKeyedSubscript:@"DAAccountUseSSL"];
  LODWORD(v150) = v62 == 0;
  v129 = v62;
  if (!v62)
  {
    oldAccountProperties4 = [infoCopy oldAccountProperties];
    v63 = [oldAccountProperties4 objectForKeyedSubscript:@"DAAccountUseSSL"];
    if (!v63)
    {
      v115 = 0;
      HIDWORD(v149) = 0;
      goto LABEL_136;
    }

    v115 = v63;
  }

  v64 = [parentCopy objectForKeyedSubscript:@"DAAccountUseSSL"];
  oldAccountProperties5 = [infoCopy oldAccountProperties];
  [oldAccountProperties5 objectForKeyedSubscript:@"DAAccountUseSSL"];
  v126 = v128 = v64;
  if (![v64 isEqual:?])
  {
    v147 = 1;
    v143 = 0;
    v149 = 0x100000000;
    v148 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v145 = 0;
    v146 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v144 = 0x100000001;
    goto LABEL_14;
  }

  HIDWORD(v149) = 1;
LABEL_136:
  dAAccountPrincipalPath = [MEMORY[0x277D03970] DAAccountPrincipalPath];
  v122 = [parentCopy objectForKeyedSubscript:?];
  v65 = [v122 length];
  LODWORD(v149) = v65 == 0;
  if (v65 || ([infoCopy oldAccountProperties], v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D03970], "DAAccountPrincipalPath"), v109 = objc_claimAutoreleasedReturnValue(), v110 = v66, objc_msgSend(v66, "objectForKeyedSubscript:"), v108 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v108, "length")))
  {
    dAAccountPrincipalPath2 = [MEMORY[0x277D03970] DAAccountPrincipalPath];
    v67 = [parentCopy objectForKeyedSubscript:?];
    oldAccountProperties6 = [infoCopy oldAccountProperties];
    dAAccountPrincipalPath3 = [MEMORY[0x277D03970] DAAccountPrincipalPath];
    v119 = oldAccountProperties6;
    [oldAccountProperties6 objectForKeyedSubscript:?];
    v117 = v120 = v67;
    if (![v67 isEqualToString:?])
    {
      v147 = 1;
      v18 = 0;
      v148 = 0x100000000;
      v19 = 0;
      v20 = 0;
      v145 = 0;
      v146 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v144 = 0x100000001;
      v143 = 1;
      goto LABEL_14;
    }

    v69 = 1;
  }

  else
  {
    v69 = 0;
  }

  v114 = [parentCopy objectForKeyedSubscript:@"DAAccountEmailAddress"];
  v70 = [v114 length];
  LODWORD(v148) = v70 == 0;
  HIDWORD(v148) = v69;
  if (v70 || ([infoCopy oldAccountProperties], v103 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v103, "objectForKeyedSubscript:", @"DAAccountEmailAddress"), v102 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v102, "length")))
  {
    v71 = [parentCopy objectForKeyedSubscript:@"DAAccountEmailAddress"];
    oldAccountProperties7 = [infoCopy oldAccountProperties];
    [oldAccountProperties7 objectForKeyedSubscript:@"DAAccountEmailAddress"];
    v111 = v113 = v71;
    if (![v71 isEqualToString:?])
    {
      v147 = 1;
      v20 = 0;
      v145 = 0;
      v146 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v144 = 0x100000001;
      v143 = 1;
      v18 = 1;
      v19 = 1;
      goto LABEL_14;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v107 = [parentCopy objectForKeyedSubscript:@"Username"];
  v72 = [v107 length];
  HIDWORD(v147) = v72 == 0;
  if (v72 || ([infoCopy oldAccountProperties], v96 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v96, "objectForKeyedSubscript:", @"Username"), v95 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v95, "length")))
  {
    v73 = [parentCopy objectForKeyedSubscript:@"Username"];
    oldAccountProperties8 = [infoCopy oldAccountProperties];
    [oldAccountProperties8 objectForKeyedSubscript:@"Username"];
    v104 = v106 = v73;
    if (![v73 isEqualToString:?])
    {
      LODWORD(v147) = 1;
      v21 = 0;
      v145 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v144 = 0x100000001;
      v143 = 1;
      v18 = 1;
      v20 = 1;
      v146 = 1;
      goto LABEL_14;
    }

    LODWORD(v146) = 1;
  }

  else
  {
    LODWORD(v146) = 0;
  }

  v101 = [parentCopy objectForKeyedSubscript:@"Hostname"];
  v74 = [v101 length];
  HIDWORD(v146) = v74 == 0;
  if (v74 || ([infoCopy oldAccountProperties], v90 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v90, "objectForKeyedSubscript:", @"Hostname"), v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v89, "length")))
  {
    v75 = [parentCopy objectForKeyedSubscript:@"Hostname"];
    oldAccountProperties9 = [infoCopy oldAccountProperties];
    [oldAccountProperties9 objectForKeyedSubscript:@"Hostname"];
    v98 = v100 = v75;
    if (![v75 isEqualToString:?])
    {
      LODWORD(v147) = 1;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v144 = 0x100000001;
      v143 = 1;
      v18 = 1;
      v20 = 1;
      v21 = 1;
      v145 = 1;
      goto LABEL_14;
    }

    LODWORD(v145) = 1;
  }

  else
  {
    LODWORD(v145) = 0;
  }

  v76 = [parentCopy objectForKeyedSubscript:@"PortNumber"];
  HIDWORD(v145) = v76 == 0;
  v94 = v76;
  if (!v76)
  {
    oldAccountProperties10 = [infoCopy oldAccountProperties];
    v78 = [oldAccountProperties10 objectForKeyedSubscript:@"PortNumber"];
    if (!v78)
    {
      v85 = 0;
      v23 = 0;
      goto LABEL_167;
    }

    v85 = v78;
    v97 = oldAccountProperties10;
  }

  v79 = [parentCopy objectForKeyedSubscript:@"PortNumber"];
  oldAccountProperties11 = [infoCopy oldAccountProperties];
  [oldAccountProperties11 objectForKeyedSubscript:@"PortNumber"];
  v91 = v93 = v79;
  if (![v79 isEqual:?])
  {
    LODWORD(v147) = 1;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v144 = 0x100000001;
    v143 = 1;
    v18 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    goto LABEL_14;
  }

  v23 = 1;
  oldAccountProperties10 = v97;
LABEL_167:
  v80 = [parentCopy objectForKeyedSubscript:@"SSLEnabled"];
  v25 = v80 == 0;
  v88 = v80;
  v97 = oldAccountProperties10;
  if (v80)
  {
LABEL_170:
    v82 = [parentCopy objectForKeyedSubscript:@"SSLEnabled"];
    oldAccountProperties12 = [infoCopy oldAccountProperties];
    infoCopy = [oldAccountProperties12 objectForKeyedSubscript:@"SSLEnabled"];
    v87 = v82;
    v155 = [v82 isEqual:infoCopy] ^ 1;
    v26 = 1;
    LODWORD(v147) = 1;
    v144 = 0x100000001;
    v143 = 1;
    v18 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v24 = 1;
    goto LABEL_15;
  }

  oldAccountProperties13 = [infoCopy oldAccountProperties];
  v81 = [oldAccountProperties13 objectForKeyedSubscript:@"SSLEnabled"];
  if (v81)
  {
    v83 = v81;
    goto LABEL_170;
  }

  v88 = 0;
  v83 = 0;
  v26 = 0;
  v155 = 0;
  LODWORD(v147) = 1;
  v144 = 0x100000001;
  v143 = 1;
  v18 = 1;
  v20 = 1;
  v21 = 1;
  v22 = 1;
  v24 = 1;
  v25 = 1;
LABEL_15:
  if (v26)
  {
  }

  if (v25)
  {
  }

  if (v24)
  {
  }

  if (v23)
  {
  }

  if (HIDWORD(v145))
  {
  }

  if (v22)
  {
  }

  if (v145)
  {
  }

  parentCopy = v156;
  if (HIDWORD(v146))
  {
  }

  if (v21)
  {
  }

  if (v146)
  {

    if (!HIDWORD(v147))
    {
LABEL_35:
      if (!v20)
      {
        goto LABEL_36;
      }

LABEL_118:

      if (!v19)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else if (!HIDWORD(v147))
  {
    goto LABEL_35;
  }

  if (v20)
  {
    goto LABEL_118;
  }

LABEL_36:
  if (v19)
  {
LABEL_37:
  }

LABEL_38:
  if (v148)
  {
  }

  if (v18)
  {
  }

  if (HIDWORD(v148))
  {
  }

  if (v149)
  {
  }

  if (v143)
  {
  }

  if (HIDWORD(v149))
  {
  }

  if (v150)
  {
  }

  if (v144)
  {
  }

  if (HIDWORD(v150))
  {
  }

  if (v151)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (HIDWORD(v151))
  {
  }

  if (v152)
  {
  }

  if (v147)
  {
  }

  if (v153)
  {
  }

  if (!v154)
  {
  }

LABEL_71:
  v29 = objc_opt_new();
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  childAccounts = [parentCopy childAccounts];
  v31 = [childAccounts countByEnumeratingWithState:&v168 objects:v181 count:16];
  if (!v31)
  {

LABEL_98:
    v43 = v157;
    v47 = [self _accountTypeWithIdentifier:typeCopy inStore:v157];
    v33 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v47];
    [v33 setParentAccount:parentCopy];
    [v33 setAuthenticationType:*MEMORY[0x277CB90B8]];
    v52 = 1;
    v42 = v158;
    goto LABEL_99;
  }

  v32 = v31;
  v160 = updaterCopy;
  v33 = 0;
  v34 = *v169;
  do
  {
    for (i = 0; i != v32; ++i)
    {
      if (*v169 != v34)
      {
        objc_enumerationMutation(childAccounts);
      }

      v36 = *(*(&v168 + 1) + 8 * i);
      accountType = [v36 accountType];
      identifier = [accountType identifier];
      v39 = [identifier isEqualToString:typeCopy];

      if (v39)
      {
        if (v33)
        {
          v40 = [self _pickAccountToKeepWithAccount:v33 andAccount:v36];
          if (v40 == v33)
          {
            [v29 addObject:v36];
          }

          else
          {
            [v29 addObject:v33];
            v41 = v40;

            v33 = v41;
          }
        }

        else
        {
          v33 = v36;
        }
      }
    }

    v32 = [childAccounts countByEnumeratingWithState:&v168 objects:v181 count:16];
  }

  while (v32);

  parentCopy = v156;
  updaterCopy = v160;
  if (!v33)
  {
    goto LABEL_98;
  }

  v42 = v158;
  v43 = v157;
  if (![v29 count])
  {
    v52 = 0;
    goto LABEL_100;
  }

  v44 = DALoggingwithCategory();
  v45 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v44, v45))
  {
    identifier2 = [v33 identifier];
    *buf = 138413058;
    v174 = typeCopy;
    v175 = 2112;
    v176 = v156;
    v177 = 2112;
    v178 = identifier2;
    v179 = 2112;
    v180 = v29;
    _os_log_impl(&dword_24844D000, v44, v45, "Found > 1 child accounts of type %@ under account %@.  Keeping %@ and removing %@", buf, 0x2Au);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v47 = v29;
  v48 = [v47 countByEnumeratingWithState:&v164 objects:v172 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v165;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v165 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v163 = *(*(&v164 + 1) + 8 * j);
        [v160 removeAccount:? completion:?];
      }

      v49 = [v47 countByEnumeratingWithState:&v164 objects:v172 count:16];
    }

    while (v49);
  }

  v52 = 0;
  v42 = v158;
  v43 = v157;
  parentCopy = v156;
  updaterCopy = v160;
LABEL_99:

LABEL_100:
  v53 = [DAAccount daAccountSubclassWithBackingAccountInfo:v33];
  if (([v53 isCalDAVAccount] & 1) != 0 || objc_msgSend(v53, "isCardDAVAccount"))
  {
    v54 = [self _sanityCheckChildDAVAccount:v53 withParent:parentCopy accountChangeInfo:v42];
  }

  else
  {
    v54 = 0;
  }

  if (v155 && ![v53 shouldDoInitialAutodiscovery])
  {
    [v53 setShouldDoInitialAutodiscovery:1];
    if ((v52 & 1) == 0)
    {
      goto LABEL_111;
    }

LABEL_110:
    [updaterCopy addAccount:v33 withCompletionHandler:&__block_literal_global_2];
    [v29 count];
    v56 = 1;
    goto LABEL_115;
  }

  if (v52)
  {
    goto LABEL_110;
  }

  if (!v54)
  {
    v55 = 0;
    goto LABEL_112;
  }

LABEL_111:
  [updaterCopy updateAccount:v33 withCompletionHandler:&__block_literal_global_144];
  v55 = 1;
LABEL_112:
  if ([v29 count])
  {
    v56 = 1;
  }

  else
  {
    v56 = v55;
  }

LABEL_115:

  v57 = *MEMORY[0x277D85DE8];
  return v56;
}

void __102__DAAccountChangeHandler__sanityCheckChildAccountOfType_withParent_accountChangeInfo_inStore_updater___block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [*(a1 + 32) identifier];
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_24844D000, v6, v7, "Failed to remove duplicate child account %{public}@: error = %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __102__DAAccountChangeHandler__sanityCheckChildAccountOfType_withParent_accountChangeInfo_inStore_updater___block_invoke_141(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_24844D000, v5, v6, "Failed to add child account: error = %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __102__DAAccountChangeHandler__sanityCheckChildAccountOfType_withParent_accountChangeInfo_inStore_updater___block_invoke_142(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_24844D000, v5, v6, "Failed to save child account: error = %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)_pickAccountToKeepWithAccount:(id)account andAccount:(id)andAccount
{
  accountCopy = account;
  andAccountCopy = andAccount;
  creationDate = [accountCopy creationDate];
  creationDate2 = [andAccountCopy creationDate];
  v9 = [creationDate compare:creationDate2];

  v10 = andAccountCopy;
  if (v9 != -1)
  {
    v10 = accountCopy;
    if (v9 != 1)
    {
      identifier = [accountCopy identifier];
      identifier2 = [andAccountCopy identifier];
      v13 = [identifier compare:identifier2];

      if (v13 == -1)
      {
        v10 = accountCopy;
      }

      else
      {
        v10 = andAccountCopy;
      }
    }
  }

  v14 = v10;

  return v10;
}

+ (BOOL)_sanityCheckEnabledDataclassesOnExchangeAccountInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  enabledDataclasses = [infoCopy enabledDataclasses];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [enabledDataclasses countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v17;
  v10 = *MEMORY[0x277CB8970];
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(enabledDataclasses);
      }

      v12 = [*(*(&v16 + 1) + 8 * i) isEqualToString:v10];
      v7 |= v12;
      v8 |= v12 ^ 1;
    }

    v6 = [enabledDataclasses countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v6);
  if ((v7 & 1) == (v8 & 1))
  {
LABEL_10:
    v13 = 0;
  }

  else
  {
    [infoCopy setEnabled:? forDataclass:?];
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end