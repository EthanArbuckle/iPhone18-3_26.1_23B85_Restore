@interface CalChangeFilteringMigrationAccountStore
+ (id)storeFilteringAllChangesInBackingAccountStore:(id)a3;
- (BOOL)removeAccount:(id)a3 error:(id *)a4;
- (BOOL)saveAccount:(id)a3 withError:(id *)a4;
- (CalChangeFilteringMigrationAccountStore)initWithBackingAccountStore:(id)a3 delegate:(id)a4;
- (CalChangeFilteringMigrationAccountStoreDelegate)delegate;
- (id)_accountWithIdentifier:(id)a3 preloadedBackingAccount:(id)a4;
- (id)_backingAccountForAccount:(id)a3;
- (id)childAccountsForAccount:(id)a3 withTypeIdentifier:(id)a4;
- (id)createAccountWithAccountTypeIdentifier:(id)a3 error:(id *)a4;
- (id)createChildAccountOfParent:(id)a3 withAccountTypeIdentifier:(id)a4 error:(id *)a5;
- (id)topLevelAccountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4;
@end

@implementation CalChangeFilteringMigrationAccountStore

- (CalChangeFilteringMigrationAccountStore)initWithBackingAccountStore:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = CalChangeFilteringMigrationAccountStore;
  v9 = [(CalChangeFilteringMigrationAccountStore *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingAccountStore, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = objc_opt_new();
    addedWrappedAccounts = v10->_addedWrappedAccounts;
    v10->_addedWrappedAccounts = v11;

    v13 = objc_opt_new();
    addedWrappedChildAccounts = v10->_addedWrappedChildAccounts;
    v10->_addedWrappedChildAccounts = v13;

    v15 = objc_opt_new();
    loadedAccounts = v10->_loadedAccounts;
    v10->_loadedAccounts = v15;

    v17 = objc_opt_new();
    removedWrappedAccountIdentifiers = v10->_removedWrappedAccountIdentifiers;
    v10->_removedWrappedAccountIdentifiers = v17;
  }

  return v10;
}

+ (id)storeFilteringAllChangesInBackingAccountStore:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [[a1 alloc] initWithBackingAccountStore:v4 delegate:v5];

  return v6;
}

- (id)_accountWithIdentifier:(id)a3 preloadedBackingAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CalChangeFilteringMigrationAccountStore *)self removedWrappedAccountIdentifiers];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
    v12 = [v11 objectForKeyedSubscript:v6];

    if (v12)
    {
      v13 = v12;
      v10 = v13;
    }

    else
    {
      v14 = [(CalChangeFilteringMigrationAccountStore *)self loadedAccounts];
      v15 = [v14 objectForKeyedSubscript:v6];

      if (v15)
      {
        v10 = v15;
        v13 = 0;
      }

      else if (v7 || (-[CalChangeFilteringMigrationAccountStore backingAccountStore](self, "backingAccountStore"), v16 = objc_claimAutoreleasedReturnValue(), [v16 accountWithIdentifier:v6], v7 = objc_claimAutoreleasedReturnValue(), v16, v7))
      {
        v17 = [v7 parentAccountIdentifier];

        if (v17 || (-[CalChangeFilteringMigrationAccountStore delegate](self, "delegate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 allowChangesToExistingTopLevelAccount:v7], v18, !v19))
        {
          v22 = [[CalChangeFilteringMigrationAccount alloc] initWithBackingAccount:v7];
          v23 = [(CalChangeFilteringMigrationAccountStore *)self loadedAccounts];
          v24 = [v7 identifier];
          [v23 setObject:v22 forKeyedSubscript:v24];

          v21 = v22;
          v13 = v21;
        }

        else
        {
          v20 = [(CalChangeFilteringMigrationAccountStore *)self loadedAccounts];
          [v20 setObject:v7 forKeyedSubscript:v6];

          v21 = v7;
          v7 = v21;
          v13 = 0;
        }

        v10 = v21;
      }

      else
      {
        v13 = 0;
        v10 = 0;
      }
    }
  }

  return v10;
}

- (id)topLevelAccountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
  v8 = [v7 topLevelAccountsWithAccountTypeIdentifier:v6 error:a4];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
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
          v17 = [(CalChangeFilteringMigrationAccountStore *)self _accountWithIdentifier:v16 preloadedBackingAccount:v15];

          if (v17)
          {
            [v9 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
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

  v28 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)childAccountsForAccount:(id)a3 withTypeIdentifier:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CalChangeFilteringMigrationAccountStore *)self removedWrappedAccountIdentifiers];
  v9 = [v6 identifier];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_opt_new();
    v13 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
    v14 = [v6 identifier];
    v15 = [v13 objectForKeyedSubscript:v14];

    v40 = v6;
    if (!v15)
    {
      v16 = [(CalChangeFilteringMigrationAccountStore *)self _backingAccountForAccount:v6];
      v17 = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
      v18 = [v17 childAccountsForAccount:v16 withTypeIdentifier:v7];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v46;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v46 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v45 + 1) + 8 * i);
            v25 = [v24 identifier];
            v26 = [(CalChangeFilteringMigrationAccountStore *)self _accountWithIdentifier:v25 preloadedBackingAccount:v24];

            if (v26)
            {
              [v12 addObject:v26];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v21);
      }

      v6 = v40;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedChildAccounts];
    v28 = [v6 identifier];
    v29 = [v27 objectForKeyedSubscript:v28];

    v30 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v42;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [(CalChangeFilteringMigrationAccountStore *)self _accountWithIdentifier:*(*(&v41 + 1) + 8 * j) preloadedBackingAccount:0];
          v35 = v34;
          if (v34)
          {
            v36 = [v34 accountTypeIdentifier];
            v37 = [v36 isEqualToString:v7];

            if (v37)
            {
              [v12 addObject:v35];
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v31);
    }

    v11 = [v12 copy];
    v6 = v40;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)createAccountWithAccountTypeIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CalChangeFilteringMigrationAccountStore *)self delegate];
  v8 = [v7 allowCreationOfTopLevelAccountWithTypeIdentifier:v6];

  if (v8)
  {
    v9 = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
    v10 = [v9 createAccountWithAccountTypeIdentifier:v6 error:a4];
  }

  else
  {
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v11 UUIDString];

    v10 = [[CalChangeFilteringMigrationAccount alloc] initWithAccountIdentifier:v9 accountTypeIdentifier:v6];
    v12 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
    [v12 setObject:v10 forKeyedSubscript:v9];
  }

  return v10;
}

- (id)createChildAccountOfParent:(id)a3 withAccountTypeIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E696AFB0];
  v9 = a4;
  v10 = [v8 UUID];
  v11 = [v10 UUIDString];

  v12 = [[CalChangeFilteringMigrationAccount alloc] initWithAccountIdentifier:v11 accountTypeIdentifier:v9];
  v13 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
  [v13 setObject:v12 forKeyedSubscript:v11];

  v14 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedChildAccounts];
  v15 = [v7 identifier];
  v16 = [v14 objectForKeyedSubscript:v15];

  if (!v16)
  {
    v16 = objc_opt_new();
    v17 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedChildAccounts];
    v18 = [v7 identifier];
    [v17 setObject:v16 forKeyedSubscript:v18];
  }

  [v16 addObject:v11];
  v19 = [v7 identifier];
  [(CalChangeFilteringMigrationAccount *)v12 setParentAccountIdentifier:v19];

  return v12;
}

- (BOOL)removeAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [(CalChangeFilteringMigrationAccountStore *)self removedWrappedAccountIdentifiers];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
    v12 = [v11 objectForKeyedSubscript:v7];

    if (v12)
    {
      v13 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
      [v13 removeObjectForKey:v7];

      v14 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedChildAccounts];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__CalChangeFilteringMigrationAccountStore_removeAccount_error___block_invoke;
      v18[3] = &unk_1E8688768;
      v19 = v7;
      [v14 enumerateKeysAndObjectsUsingBlock:v18];
    }

    else
    {
      v15 = [(CalChangeFilteringMigrationAccountStore *)self loadedAccounts];
      [v15 removeObjectForKey:v7];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [(CalChangeFilteringMigrationAccountStore *)self removedWrappedAccountIdentifiers];
      [v16 addObject:v7];
      v10 = 1;
    }

    else
    {
      v16 = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
      v10 = [v16 removeAccount:v6 error:a4];
    }
  }

  return v10;
}

- (BOOL)saveAccount:(id)a3 withError:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
    v7 = [v8 saveAccount:v6 withError:a4];
  }

  return v7;
}

- (id)_backingAccountForAccount:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 backingAccount];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (CalChangeFilteringMigrationAccountStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end