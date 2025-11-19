@interface CalPlistSavingMigrationAccountStore
- (BOOL)_trySaveWithError:(id *)a3;
- (BOOL)removeAccount:(id)a3 error:(id *)a4;
- (BOOL)saveAccount:(id)a3 withError:(id *)a4;
- (CalPlistSavingMigrationAccountStore)initWithPlistURL:(id)a3 backingAccountStore:(id)a4;
- (id)_accountWithIdentifier:(id)a3 preloadedBackingAccount:(id)a4;
- (id)childAccountsForAccount:(id)a3 withTypeIdentifier:(id)a4;
- (id)createAccountWithAccountTypeIdentifier:(id)a3 error:(id *)a4;
- (id)createChildAccountOfParent:(id)a3 withAccountTypeIdentifier:(id)a4 error:(id *)a5;
- (id)topLevelAccountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4;
- (void)_registerAddedChildAccountWithIdentifier:(id)a3 parentAccountIdentifier:(id)a4;
@end

@implementation CalPlistSavingMigrationAccountStore

- (CalPlistSavingMigrationAccountStore)initWithPlistURL:(id)a3 backingAccountStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = CalPlistSavingMigrationAccountStore;
  v9 = [(CalPlistSavingMigrationAccountStore *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_plistURL, a3);
    objc_storeStrong(&v10->_backingAccountStore, a4);
    v11 = [MEMORY[0x277CBEB38] dictionary];
    addedAccounts = v10->_addedAccounts;
    v10->_addedAccounts = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    modifiedAccounts = v10->_modifiedAccounts;
    v10->_modifiedAccounts = v13;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    loadedAccounts = v10->_loadedAccounts;
    v10->_loadedAccounts = v15;

    v17 = [MEMORY[0x277CBEB38] dictionary];
    addedChildAccounts = v10->_addedChildAccounts;
    v10->_addedChildAccounts = v17;

    v19 = [MEMORY[0x277CBEB58] set];
    deletedAccountIdentifiers = v10->_deletedAccountIdentifiers;
    v10->_deletedAccountIdentifiers = v19;
  }

  return v10;
}

- (id)_accountWithIdentifier:(id)a3 preloadedBackingAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    goto LABEL_2;
  }

  v11 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  v10 = [v11 objectForKeyedSubscript:v6];

  if (!v10)
  {
    v12 = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
    v10 = [v12 objectForKeyedSubscript:v6];

    if (!v10)
    {
      v13 = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
      v10 = [v13 objectForKeyedSubscript:v6];

      if (!v10)
      {
        if (!v7)
        {
          v14 = [(CalPlistSavingMigrationAccountStore *)self backingAccountStore];
          v7 = [v14 accountWithIdentifier:v6];

          if (!v7)
          {
LABEL_2:
            v10 = 0;
            goto LABEL_9;
          }
        }

        v15 = [CalPlistSavingMigrationAccount alloc];
        v16 = [v7 accountTypeIdentifier];
        v10 = [(CalPlistSavingMigrationAccount *)v15 initWithIdentifier:v6 accountTypeIdentifier:v16 backingAccount:v7 initialProperties:0];

        v17 = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
        [v17 setObject:v10 forKeyedSubscript:v6];
      }
    }
  }

LABEL_9:

  return v10;
}

- (id)topLevelAccountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CalPlistSavingMigrationAccountStore *)self backingAccountStore];
  v8 = [v7 topLevelAccountsWithAccountTypeIdentifier:v6 error:a4];

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
          v16 = [v15 identifier];
          v17 = [(CalPlistSavingMigrationAccountStore *)self _accountWithIdentifier:v16 preloadedBackingAccount:v15];
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
    v18 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
    v19 = [v18 allValues];

    v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * j);
          v25 = [v24 parentAccountIdentifier];
          if (v25)
          {
          }

          else
          {
            v26 = [v24 accountTypeIdentifier];
            v27 = [v26 isEqualToString:v6];

            if (v27)
            {
              [v9 addObject:v24];
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
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

- (id)childAccountsForAccount:(id)a3 withTypeIdentifier:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

  v8 = v6;
  v9 = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
  v10 = [v8 identifier];
  v11 = [v9 containsObject:v10];

  if (v11)
  {
LABEL_26:
    v38 = 0;
    goto LABEL_32;
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  v14 = [v8 identifier];
  v15 = [v13 objectForKeyedSubscript:v14];

  v44 = v7;
  if (v15)
  {
LABEL_15:
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = [(CalPlistSavingMigrationAccountStore *)self addedChildAccounts];
    v29 = [v8 identifier];
    v30 = [v28 objectForKeyedSubscript:v29];

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
          [v12 addObject:v36];
        }

        v32 = [v30 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v38 = [v12 copy];
LABEL_30:
    v7 = v44;
    goto LABEL_31;
  }

  v16 = [v8 backingAccount];
  if (v16)
  {
    v17 = v16;
    v18 = [(CalPlistSavingMigrationAccountStore *)self backingAccountStore];
    v43 = v17;
    v19 = [v18 childAccountsForAccount:v17 withTypeIdentifier:v7];

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
          v26 = [v25 identifier];
          v27 = [(CalPlistSavingMigrationAccountStore *)self _accountWithIdentifier:v26 preloadedBackingAccount:v25];

          if (v27)
          {
            [v12 addObject:v27];
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

- (id)createAccountWithAccountTypeIdentifier:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAD78];
  v6 = a3;
  v7 = [v5 UUID];
  v8 = [v7 UUIDString];

  v9 = [[CalPlistSavingMigrationAccount alloc] initWithIdentifier:v8 accountTypeIdentifier:v6 backingAccount:0 initialProperties:0];
  v10 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  [v10 setObject:v9 forKeyedSubscript:v8];

  return v9;
}

- (id)createChildAccountOfParent:(id)a3 withAccountTypeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CalPlistSavingMigrationAccountStore *)self createAccountWithAccountTypeIdentifier:a4 error:a5];
  if (v9)
  {
    v10 = [v8 identifier];
    [v9 setParentAccountIdentifier:v10];

    v11 = [v9 identifier];
    v12 = [v8 identifier];
    [(CalPlistSavingMigrationAccountStore *)self _registerAddedChildAccountWithIdentifier:v11 parentAccountIdentifier:v12];

    v13 = v9;
  }

  return v9;
}

- (void)_registerAddedChildAccountWithIdentifier:(id)a3 parentAccountIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CalPlistSavingMigrationAccountStore *)self addedChildAccounts];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    v9 = [(CalPlistSavingMigrationAccountStore *)self addedChildAccounts];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  [v8 addObject:v10];
}

- (BOOL)removeAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 identifier];
    v8 = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
    v9 = [v8 containsObject:v7];

    if (v9)
    {
      v10 = +[CalMigrationLog defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [CalPlistSavingMigrationAccountStore removeAccount:error:];
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"kCalPlistSavingMigrationAccountStoreErrorDomain" code:0 userInfo:0];
        *a4 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_19;
    }

    v12 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
    v13 = [v12 objectForKeyedSubscript:v7];

    if (v13)
    {
      v14 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
      [v14 removeObjectForKey:v7];

      v15 = [(CalPlistSavingMigrationAccountStore *)self addedChildAccounts];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __59__CalPlistSavingMigrationAccountStore_removeAccount_error___block_invoke;
      v24[3] = &unk_278D6D408;
      v25 = v7;
      [v15 enumerateKeysAndObjectsUsingBlock:v24];

LABEL_18:
      v22 = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
      [v22 addObject:v7];

      v11 = [(CalPlistSavingMigrationAccountStore *)self _trySaveWithError:a4];
LABEL_19:

      goto LABEL_20;
    }

    v16 = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
    v17 = [v16 objectForKeyedSubscript:v7];

    if (v17)
    {
      v18 = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
    }

    else
    {
      v19 = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
      v20 = [v19 objectForKeyedSubscript:v7];

      if (!v20)
      {
        goto LABEL_18;
      }

      v18 = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
    }

    v21 = v18;
    [v18 removeObjectForKey:v7];

    goto LABEL_18;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.calendar.MigrationErrors" code:3 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (BOOL)saveAccount:(id)a3 withError:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 identifier];
    v8 = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
    v9 = [v8 containsObject:v7];

    if (v9)
    {
      v10 = +[CalMigrationLog defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [CalPlistSavingMigrationAccountStore saveAccount:withError:];
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"kCalPlistSavingMigrationAccountStoreErrorDomain" code:0 userInfo:0];
        *a4 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v12 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
      v13 = [v12 objectForKeyedSubscript:v7];

      if (v13 || [v6 dirty])
      {
        v14 = v6;
        if ([v14 dirty])
        {
          [v14 save];
          if (!v13)
          {
            v15 = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
            v16 = [v15 objectForKeyedSubscript:v7];

            if (!v16)
            {
              v17 = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
              [v17 setObject:v14 forKeyedSubscript:v7];

              v18 = [(CalPlistSavingMigrationAccountStore *)self loadedAccounts];
              [v18 removeObjectForKey:v7];
            }
          }

          v11 = [(CalPlistSavingMigrationAccountStore *)self _trySaveWithError:a4];
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

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.calendar.MigrationErrors" code:3 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_trySaveWithError:(id *)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = +[CalMigrationLog defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CalPlistSavingMigrationAccountStore *)self plistURL];
    *buf = 138412290;
    v43 = v6;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to save account changes to file %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __57__CalPlistSavingMigrationAccountStore__trySaveWithError___block_invoke;
  v40[3] = &unk_278D6D430;
  v10 = v8;
  v41 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v40];

  if ([v10 count])
  {
    [v7 setObject:v10 forKeyedSubscript:@"AddedAccounts"];
  }

  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = [(CalPlistSavingMigrationAccountStore *)self addedAccounts];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __57__CalPlistSavingMigrationAccountStore__trySaveWithError___block_invoke_2;
  v38[3] = &unk_278D6D430;
  v13 = v11;
  v39 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:v38];

  v14 = [(CalPlistSavingMigrationAccountStore *)self modifiedAccounts];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __57__CalPlistSavingMigrationAccountStore__trySaveWithError___block_invoke_3;
  v36[3] = &unk_278D6D430;
  v15 = v13;
  v37 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:v36];

  if ([v15 count])
  {
    [v7 setObject:v15 forKeyedSubscript:@"AccountProperties"];
  }

  v16 = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];

  if (v16)
  {
    v17 = [(CalPlistSavingMigrationAccountStore *)self deletedAccountIdentifiers];
    v18 = [v17 allObjects];
    [v7 setObject:v18 forKeyedSubscript:@"DeletedAccounts"];
  }

  v35 = 0;
  v19 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:100 options:0 error:&v35];
  v20 = v35;
  if (v19)
  {
    v33 = v7;
    v21 = a3;
    v22 = [(CalPlistSavingMigrationAccountStore *)self plistURL];
    v34 = 0;
    v23 = [v19 writeToURL:v22 options:0 error:&v34];
    v24 = v34;

    v25 = +[CalMigrationLog defaultCategory];
    v26 = v25;
    if (v23)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(CalPlistSavingMigrationAccountStore *)self plistURL];
        *buf = 138412290;
        v43 = v27;
        _os_log_impl(&dword_2428EA000, v26, OS_LOG_TYPE_DEFAULT, "Successfully saved account changes to file %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(CalPlistSavingMigrationAccountStore *)v24 _trySaveWithError:v26];
      }

      if (v21)
      {
        v30 = v24;
        *v21 = v24;
      }
    }

    v7 = v33;
  }

  else
  {
    v28 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(CalPlistSavingMigrationAccountStore *)v20 _trySaveWithError:v28];
    }

    if (a3)
    {
      v29 = v20;
      v23 = 0;
      *a3 = v20;
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