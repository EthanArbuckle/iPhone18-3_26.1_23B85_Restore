@interface CalPlistSavingMigrationAccountStore
- (BOOL)_trySaveWithError:(id *)error;
- (BOOL)removeAccount:(id)account error:(id *)error;
- (BOOL)saveAccount:(id)account withError:(id *)error;
- (CalPlistSavingMigrationAccountStore)initWithPlistURL:(id)l backingAccountStore:(id)store;
- (id)_accountWithIdentifier:(id)identifier preloadedBackingAccount:(id)account;
- (id)childAccountsForAccount:(id)account withTypeIdentifier:(id)identifier;
- (id)createAccountWithAccountTypeIdentifier:(id)identifier error:(id *)error;
- (id)createChildAccountOfParent:(id)parent withAccountTypeIdentifier:(id)identifier error:(id *)error;
- (id)topLevelAccountsWithAccountTypeIdentifier:(id)identifier error:(id *)error;
- (void)_registerAddedChildAccountWithIdentifier:(id)identifier parentAccountIdentifier:(id)accountIdentifier;
@end

@implementation CalPlistSavingMigrationAccountStore

- (CalPlistSavingMigrationAccountStore)initWithPlistURL:(id)l backingAccountStore:(id)store
{
  lCopy = l;
  storeCopy = store;
  v22.receiver = self;
  v22.super_class = CalPlistSavingMigrationAccountStore;
  v9 = [(CalPlistSavingMigrationAccountStore *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_plistURL, l);
    objc_storeStrong(&v10->_backingAccountStore, store);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    addedAccounts = v10->_addedAccounts;
    v10->_addedAccounts = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    modifiedAccounts = v10->_modifiedAccounts;
    v10->_modifiedAccounts = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    loadedAccounts = v10->_loadedAccounts;
    v10->_loadedAccounts = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    addedChildAccounts = v10->_addedChildAccounts;
    v10->_addedChildAccounts = dictionary4;

    v19 = [MEMORY[0x277CBEB58] set];
    deletedAccountIdentifiers = v10->_deletedAccountIdentifiers;
    v10->_deletedAccountIdentifiers = v19;
  }

  return v10;
}

- (id)_accountWithIdentifier:(id)identifier preloadedBackingAccount:(id)account
{
  identifierCopy = identifier;
  accountCopy = account;
  deletedAccountIdentifiers = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
  v9 = [deletedAccountIdentifiers containsObject:identifierCopy];

  if (v9)
  {
    goto LABEL_2;
  }

  addedAccounts = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  v10 = [addedAccounts objectForKeyedSubscript:identifierCopy];

  if (!v10)
  {
    modifiedAccounts = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
    v10 = [modifiedAccounts objectForKeyedSubscript:identifierCopy];

    if (!v10)
    {
      loadedAccounts = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
      v10 = [loadedAccounts objectForKeyedSubscript:identifierCopy];

      if (!v10)
      {
        if (!accountCopy)
        {
          backingAccountStore = [(CalPlistSavingMigrationAccountStore *)self backingAccountStore];
          accountCopy = [backingAccountStore accountWithIdentifier:identifierCopy];

          if (!accountCopy)
          {
LABEL_2:
            v10 = 0;
            goto LABEL_9;
          }
        }

        v15 = [CalPlistSavingMigrationAccount alloc];
        accountTypeIdentifier = [accountCopy accountTypeIdentifier];
        v10 = [(CalPlistSavingMigrationAccount *)v15 initWithIdentifier:identifierCopy accountTypeIdentifier:accountTypeIdentifier backingAccount:accountCopy initialProperties:0];

        loadedAccounts2 = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
        [loadedAccounts2 setObject:v10 forKeyedSubscript:identifierCopy];
      }
    }
  }

LABEL_9:

  return v10;
}

- (id)topLevelAccountsWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  backingAccountStore = [(CalPlistSavingMigrationAccountStore *)self backingAccountStore];
  v8 = [backingAccountStore topLevelAccountsWithAccountTypeIdentifier:identifierCopy error:error];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          identifier = [v15 identifier];
          v17 = [(CalPlistSavingMigrationAccountStore *)self _accountWithIdentifier:identifier preloadedBackingAccount:v15];
          [v9 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    addedAccounts = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
    allValues = [addedAccounts allValues];

    v20 = [allValues countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(allValues);
          }

          v24 = *(*(&v30 + 1) + 8 * j);
          parentAccountIdentifier = [v24 parentAccountIdentifier];
          if (parentAccountIdentifier)
          {
          }

          else
          {
            accountTypeIdentifier = [v24 accountTypeIdentifier];
            v27 = [accountTypeIdentifier isEqualToString:identifierCopy];

            if (v27)
            {
              [v9 addObject:v24];
            }
          }
        }

        v21 = [allValues countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v9 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)childAccountsForAccount:(id)account withTypeIdentifier:(id)identifier
{
  v55 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identifierCopy = identifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [CalPlistSavingMigrationAccountStore childAccountsForAccount:withTypeIdentifier:];
    }

    goto LABEL_26;
  }

  v8 = accountCopy;
  deletedAccountIdentifiers = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
  identifier = [v8 identifier];
  v11 = [deletedAccountIdentifiers containsObject:identifier];

  if (v11)
  {
LABEL_26:
    v38 = 0;
    goto LABEL_32;
  }

  array = [MEMORY[0x277CBEB18] array];
  addedAccounts = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  identifier2 = [v8 identifier];
  v15 = [addedAccounts objectForKeyedSubscript:identifier2];

  v44 = identifierCopy;
  if (v15)
  {
LABEL_15:
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    addedChildAccounts = [(CalPlistSavingMigrationAccountStore *)self addedChildAccounts];
    identifier3 = [v8 identifier];
    v30 = [addedChildAccounts objectForKeyedSubscript:identifier3];

    v31 = [v30 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v46;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v46 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v45 + 1) + 8 * i);
          v36 = [(CalPlistSavingMigrationAccountStore *)self _accountWithIdentifier:v35 preloadedBackingAccount:0];
          if (!v36)
          {
            v39 = +[CalMigrationLog defaultCategory];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
            {
              [CalPlistSavingMigrationAccountStore childAccountsForAccount:v35 withTypeIdentifier:v8];
            }

            v38 = 0;
            goto LABEL_30;
          }

          v37 = v36;
          [array addObject:v36];
        }

        v32 = [v30 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v38 = [array copy];
LABEL_30:
    identifierCopy = v44;
    goto LABEL_31;
  }

  backingAccount = [v8 backingAccount];
  if (backingAccount)
  {
    v17 = backingAccount;
    backingAccountStore = [(CalPlistSavingMigrationAccountStore *)self backingAccountStore];
    v43 = v17;
    v19 = [backingAccountStore childAccountsForAccount:v17 withTypeIdentifier:identifierCopy];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v49 + 1) + 8 * j);
          identifier4 = [v25 identifier];
          v27 = [(CalPlistSavingMigrationAccountStore *)self _accountWithIdentifier:identifier4 preloadedBackingAccount:v25];

          if (v27)
          {
            [array addObject:v27];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v22);
    }

    goto LABEL_15;
  }

  v42 = +[CalMigrationLog defaultCategory];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
  {
    [CalPlistSavingMigrationAccountStore childAccountsForAccount:withTypeIdentifier:];
  }

  v38 = 0;
LABEL_31:

LABEL_32:
  v40 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)createAccountWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  v5 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  uUID = [v5 UUID];
  uUIDString = [uUID UUIDString];

  v9 = [[CalPlistSavingMigrationAccount alloc] initWithIdentifier:uUIDString accountTypeIdentifier:identifierCopy backingAccount:0 initialProperties:0];
  addedAccounts = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  [addedAccounts setObject:v9 forKeyedSubscript:uUIDString];

  return v9;
}

- (id)createChildAccountOfParent:(id)parent withAccountTypeIdentifier:(id)identifier error:(id *)error
{
  parentCopy = parent;
  v9 = [(CalPlistSavingMigrationAccountStore *)self createAccountWithAccountTypeIdentifier:identifier error:error];
  if (v9)
  {
    identifier = [parentCopy identifier];
    [v9 setParentAccountIdentifier:identifier];

    identifier2 = [v9 identifier];
    identifier3 = [parentCopy identifier];
    [(CalPlistSavingMigrationAccountStore *)self _registerAddedChildAccountWithIdentifier:identifier2 parentAccountIdentifier:identifier3];

    v13 = v9;
  }

  return v9;
}

- (void)_registerAddedChildAccountWithIdentifier:(id)identifier parentAccountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  addedChildAccounts = [(CalPlistSavingMigrationAccountStore *)self addedChildAccounts];
  v8 = [addedChildAccounts objectForKeyedSubscript:accountIdentifierCopy];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    addedChildAccounts2 = [(CalPlistSavingMigrationAccountStore *)self addedChildAccounts];
    [addedChildAccounts2 setObject:v8 forKeyedSubscript:accountIdentifierCopy];
  }

  [v8 addObject:identifierCopy];
}

- (BOOL)removeAccount:(id)account error:(id *)error
{
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [accountCopy identifier];
    deletedAccountIdentifiers = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
    v9 = [deletedAccountIdentifiers containsObject:identifier];

    if (v9)
    {
      v10 = +[CalMigrationLog defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [CalPlistSavingMigrationAccountStore removeAccount:error:];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"kCalPlistSavingMigrationAccountStoreErrorDomain" code:0 userInfo:0];
        *error = v11 = 0;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_19;
    }

    addedAccounts = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
    v13 = [addedAccounts objectForKeyedSubscript:identifier];

    if (v13)
    {
      addedAccounts2 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
      [addedAccounts2 removeObjectForKey:identifier];

      addedChildAccounts = [(CalPlistSavingMigrationAccountStore *)self addedChildAccounts];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __59__CalPlistSavingMigrationAccountStore_removeAccount_error___block_invoke;
      v24[3] = &unk_278D6D408;
      v25 = identifier;
      [addedChildAccounts enumerateKeysAndObjectsUsingBlock:v24];

LABEL_18:
      deletedAccountIdentifiers2 = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
      [deletedAccountIdentifiers2 addObject:identifier];

      v11 = [(CalPlistSavingMigrationAccountStore *)self _trySaveWithError:error];
LABEL_19:

      goto LABEL_20;
    }

    modifiedAccounts = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
    v17 = [modifiedAccounts objectForKeyedSubscript:identifier];

    if (v17)
    {
      modifiedAccounts2 = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
    }

    else
    {
      loadedAccounts = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
      v20 = [loadedAccounts objectForKeyedSubscript:identifier];

      if (!v20)
      {
        goto LABEL_18;
      }

      modifiedAccounts2 = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
    }

    v21 = modifiedAccounts2;
    [modifiedAccounts2 removeObjectForKey:identifier];

    goto LABEL_18;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.calendar.MigrationErrors" code:3 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (BOOL)saveAccount:(id)account withError:(id *)error
{
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [accountCopy identifier];
    deletedAccountIdentifiers = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
    v9 = [deletedAccountIdentifiers containsObject:identifier];

    if (v9)
    {
      v10 = +[CalMigrationLog defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [CalPlistSavingMigrationAccountStore saveAccount:withError:];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"kCalPlistSavingMigrationAccountStoreErrorDomain" code:0 userInfo:0];
        *error = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      addedAccounts = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
      v13 = [addedAccounts objectForKeyedSubscript:identifier];

      if (v13 || [accountCopy dirty])
      {
        v14 = accountCopy;
        if ([v14 dirty])
        {
          [v14 save];
          if (!v13)
          {
            modifiedAccounts = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
            v16 = [modifiedAccounts objectForKeyedSubscript:identifier];

            if (!v16)
            {
              modifiedAccounts2 = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
              [modifiedAccounts2 setObject:v14 forKeyedSubscript:identifier];

              loadedAccounts = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
              [loadedAccounts removeObjectForKey:identifier];
            }
          }

          v11 = [(CalPlistSavingMigrationAccountStore *)self _trySaveWithError:error];
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.calendar.MigrationErrors" code:3 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_trySaveWithError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = +[CalMigrationLog defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    plistURL = [(CalPlistSavingMigrationAccountStore *)self plistURL];
    *buf = 138412290;
    v43 = plistURL;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to save account changes to file %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  addedAccounts = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __57__CalPlistSavingMigrationAccountStore__trySaveWithError___block_invoke;
  v40[3] = &unk_278D6D430;
  v10 = dictionary2;
  v41 = v10;
  [addedAccounts enumerateKeysAndObjectsUsingBlock:v40];

  if ([v10 count])
  {
    [dictionary setObject:v10 forKeyedSubscript:@"AddedAccounts"];
  }

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  addedAccounts2 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __57__CalPlistSavingMigrationAccountStore__trySaveWithError___block_invoke_2;
  v38[3] = &unk_278D6D430;
  v13 = dictionary3;
  v39 = v13;
  [addedAccounts2 enumerateKeysAndObjectsUsingBlock:v38];

  modifiedAccounts = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __57__CalPlistSavingMigrationAccountStore__trySaveWithError___block_invoke_3;
  v36[3] = &unk_278D6D430;
  v15 = v13;
  v37 = v15;
  [modifiedAccounts enumerateKeysAndObjectsUsingBlock:v36];

  if ([v15 count])
  {
    [dictionary setObject:v15 forKeyedSubscript:@"AccountProperties"];
  }

  deletedAccountIdentifiers = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];

  if (deletedAccountIdentifiers)
  {
    deletedAccountIdentifiers2 = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
    allObjects = [deletedAccountIdentifiers2 allObjects];
    [dictionary setObject:allObjects forKeyedSubscript:@"DeletedAccounts"];
  }

  v35 = 0;
  v19 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:100 options:0 error:&v35];
  v20 = v35;
  if (v19)
  {
    v33 = dictionary;
    errorCopy = error;
    plistURL2 = [(CalPlistSavingMigrationAccountStore *)self plistURL];
    v34 = 0;
    v23 = [v19 writeToURL:plistURL2 options:0 error:&v34];
    v24 = v34;

    v25 = +[CalMigrationLog defaultCategory];
    v26 = v25;
    if (v23)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        plistURL3 = [(CalPlistSavingMigrationAccountStore *)self plistURL];
        *buf = 138412290;
        v43 = plistURL3;
        _os_log_impl(&dword_2428EA000, v26, OS_LOG_TYPE_DEFAULT, "Successfully saved account changes to file %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(CalPlistSavingMigrationAccountStore *)v24 _trySaveWithError:v26];
      }

      if (errorCopy)
      {
        v30 = v24;
        *errorCopy = v24;
      }
    }

    dictionary = v33;
  }

  else
  {
    v28 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(CalPlistSavingMigrationAccountStore *)v20 _trySaveWithError:v28];
    }

    if (error)
    {
      v29 = v20;
      v23 = 0;
      *error = v20;
    }

    else
    {
      v23 = 0;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v23;
}

void __57__CalPlistSavingMigrationAccountStore__trySaveWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = a2;
  v10 = [v5 dictionary];
  v8 = [v6 accountTypeIdentifier];
  [v10 setObject:v8 forKeyedSubscript:@"AccountTypeIdentifier"];

  v9 = [v6 parentAccountIdentifier];

  [v10 setObject:v9 forKeyedSubscript:@"ParentIdentifier"];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
}

void __57__CalPlistSavingMigrationAccountStore__trySaveWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 savedProperties];
  v6 = [v7 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __57__CalPlistSavingMigrationAccountStore__trySaveWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 savedProperties];
  v6 = [v7 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)childAccountsForAccount:withTypeIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)childAccountsForAccount:(uint64_t)a1 withTypeIdentifier:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)childAccountsForAccount:withTypeIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeAccount:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveAccount:withError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_trySaveWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2428EA000, a2, OS_LOG_TYPE_ERROR, "Failed to write plist data to file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_trySaveWithError:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2428EA000, a2, OS_LOG_TYPE_ERROR, "Failed to serialize account changes: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end