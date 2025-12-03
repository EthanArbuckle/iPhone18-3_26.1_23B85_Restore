@interface CalChangeFilteringMigrationAccountStore
+ (id)storeFilteringAllChangesInBackingAccountStore:(id)store;
- (BOOL)removeAccount:(id)account error:(id *)error;
- (BOOL)saveAccount:(id)account withError:(id *)error;
- (CalChangeFilteringMigrationAccountStore)initWithBackingAccountStore:(id)store delegate:(id)delegate;
- (CalChangeFilteringMigrationAccountStoreDelegate)delegate;
- (id)_accountWithIdentifier:(id)identifier preloadedBackingAccount:(id)account;
- (id)_backingAccountForAccount:(id)account;
- (id)childAccountsForAccount:(id)account withTypeIdentifier:(id)identifier;
- (id)createAccountWithAccountTypeIdentifier:(id)identifier error:(id *)error;
- (id)createChildAccountOfParent:(id)parent withAccountTypeIdentifier:(id)identifier error:(id *)error;
- (id)topLevelAccountsWithAccountTypeIdentifier:(id)identifier error:(id *)error;
@end

@implementation CalChangeFilteringMigrationAccountStore

- (CalChangeFilteringMigrationAccountStore)initWithBackingAccountStore:(id)store delegate:(id)delegate
{
  storeCopy = store;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = CalChangeFilteringMigrationAccountStore;
  v9 = [(CalChangeFilteringMigrationAccountStore *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingAccountStore, store);
    objc_storeWeak(&v10->_delegate, delegateCopy);
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

+ (id)storeFilteringAllChangesInBackingAccountStore:(id)store
{
  storeCopy = store;
  v5 = objc_opt_new();
  v6 = [[self alloc] initWithBackingAccountStore:storeCopy delegate:v5];

  return v6;
}

- (id)_accountWithIdentifier:(id)identifier preloadedBackingAccount:(id)account
{
  identifierCopy = identifier;
  accountCopy = account;
  removedWrappedAccountIdentifiers = [(CalChangeFilteringMigrationAccountStore *)self removedWrappedAccountIdentifiers];
  v9 = [removedWrappedAccountIdentifiers containsObject:identifierCopy];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    addedWrappedAccounts = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
    v12 = [addedWrappedAccounts objectForKeyedSubscript:identifierCopy];

    if (v12)
    {
      v13 = v12;
      v10 = v13;
    }

    else
    {
      loadedAccounts = [(CalChangeFilteringMigrationAccountStore *)self loadedAccounts];
      v15 = [loadedAccounts objectForKeyedSubscript:identifierCopy];

      if (v15)
      {
        v10 = v15;
        v13 = 0;
      }

      else if (accountCopy || (-[CalChangeFilteringMigrationAccountStore backingAccountStore](self, "backingAccountStore"), v16 = objc_claimAutoreleasedReturnValue(), [v16 accountWithIdentifier:identifierCopy], accountCopy = objc_claimAutoreleasedReturnValue(), v16, accountCopy))
      {
        parentAccountIdentifier = [accountCopy parentAccountIdentifier];

        if (parentAccountIdentifier || (-[CalChangeFilteringMigrationAccountStore delegate](self, "delegate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 allowChangesToExistingTopLevelAccount:accountCopy], v18, !v19))
        {
          v22 = [[CalChangeFilteringMigrationAccount alloc] initWithBackingAccount:accountCopy];
          loadedAccounts2 = [(CalChangeFilteringMigrationAccountStore *)self loadedAccounts];
          identifier = [accountCopy identifier];
          [loadedAccounts2 setObject:v22 forKeyedSubscript:identifier];

          v21 = v22;
          v13 = v21;
        }

        else
        {
          loadedAccounts3 = [(CalChangeFilteringMigrationAccountStore *)self loadedAccounts];
          [loadedAccounts3 setObject:accountCopy forKeyedSubscript:identifierCopy];

          v21 = accountCopy;
          accountCopy = v21;
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

- (id)topLevelAccountsWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  backingAccountStore = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
  v8 = [backingAccountStore topLevelAccountsWithAccountTypeIdentifier:identifierCopy error:error];

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
          identifier = [v15 identifier];
          v17 = [(CalChangeFilteringMigrationAccountStore *)self _accountWithIdentifier:identifier preloadedBackingAccount:v15];

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
    addedWrappedAccounts = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
    allValues = [addedWrappedAccounts allValues];

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

  v28 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)childAccountsForAccount:(id)account withTypeIdentifier:(id)identifier
{
  v51 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  identifierCopy = identifier;
  removedWrappedAccountIdentifiers = [(CalChangeFilteringMigrationAccountStore *)self removedWrappedAccountIdentifiers];
  identifier = [accountCopy identifier];
  v10 = [removedWrappedAccountIdentifiers containsObject:identifier];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_opt_new();
    addedWrappedAccounts = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
    identifier2 = [accountCopy identifier];
    v15 = [addedWrappedAccounts objectForKeyedSubscript:identifier2];

    v40 = accountCopy;
    if (!v15)
    {
      v16 = [(CalChangeFilteringMigrationAccountStore *)self _backingAccountForAccount:accountCopy];
      backingAccountStore = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
      v18 = [backingAccountStore childAccountsForAccount:v16 withTypeIdentifier:identifierCopy];

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
            identifier3 = [v24 identifier];
            v26 = [(CalChangeFilteringMigrationAccountStore *)self _accountWithIdentifier:identifier3 preloadedBackingAccount:v24];

            if (v26)
            {
              [v12 addObject:v26];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v21);
      }

      accountCopy = v40;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    addedWrappedChildAccounts = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedChildAccounts];
    identifier4 = [accountCopy identifier];
    v29 = [addedWrappedChildAccounts objectForKeyedSubscript:identifier4];

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
            accountTypeIdentifier = [v34 accountTypeIdentifier];
            v37 = [accountTypeIdentifier isEqualToString:identifierCopy];

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
    accountCopy = v40;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)createAccountWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  delegate = [(CalChangeFilteringMigrationAccountStore *)self delegate];
  v8 = [delegate allowCreationOfTopLevelAccountWithTypeIdentifier:identifierCopy];

  if (v8)
  {
    backingAccountStore = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
    v10 = [backingAccountStore createAccountWithAccountTypeIdentifier:identifierCopy error:error];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    backingAccountStore = [uUID UUIDString];

    v10 = [[CalChangeFilteringMigrationAccount alloc] initWithAccountIdentifier:backingAccountStore accountTypeIdentifier:identifierCopy];
    addedWrappedAccounts = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
    [addedWrappedAccounts setObject:v10 forKeyedSubscript:backingAccountStore];
  }

  return v10;
}

- (id)createChildAccountOfParent:(id)parent withAccountTypeIdentifier:(id)identifier error:(id *)error
{
  parentCopy = parent;
  v8 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];

  v12 = [[CalChangeFilteringMigrationAccount alloc] initWithAccountIdentifier:uUIDString accountTypeIdentifier:identifierCopy];
  addedWrappedAccounts = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
  [addedWrappedAccounts setObject:v12 forKeyedSubscript:uUIDString];

  addedWrappedChildAccounts = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedChildAccounts];
  identifier = [parentCopy identifier];
  v16 = [addedWrappedChildAccounts objectForKeyedSubscript:identifier];

  if (!v16)
  {
    v16 = objc_opt_new();
    addedWrappedChildAccounts2 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedChildAccounts];
    identifier2 = [parentCopy identifier];
    [addedWrappedChildAccounts2 setObject:v16 forKeyedSubscript:identifier2];
  }

  [v16 addObject:uUIDString];
  identifier3 = [parentCopy identifier];
  [(CalChangeFilteringMigrationAccount *)v12 setParentAccountIdentifier:identifier3];

  return v12;
}

- (BOOL)removeAccount:(id)account error:(id *)error
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  removedWrappedAccountIdentifiers = [(CalChangeFilteringMigrationAccountStore *)self removedWrappedAccountIdentifiers];
  v9 = [removedWrappedAccountIdentifiers containsObject:identifier];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    addedWrappedAccounts = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
    v12 = [addedWrappedAccounts objectForKeyedSubscript:identifier];

    if (v12)
    {
      addedWrappedAccounts2 = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedAccounts];
      [addedWrappedAccounts2 removeObjectForKey:identifier];

      addedWrappedChildAccounts = [(CalChangeFilteringMigrationAccountStore *)self addedWrappedChildAccounts];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__CalChangeFilteringMigrationAccountStore_removeAccount_error___block_invoke;
      v18[3] = &unk_1E8688768;
      v19 = identifier;
      [addedWrappedChildAccounts enumerateKeysAndObjectsUsingBlock:v18];
    }

    else
    {
      loadedAccounts = [(CalChangeFilteringMigrationAccountStore *)self loadedAccounts];
      [loadedAccounts removeObjectForKey:identifier];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      removedWrappedAccountIdentifiers2 = [(CalChangeFilteringMigrationAccountStore *)self removedWrappedAccountIdentifiers];
      [removedWrappedAccountIdentifiers2 addObject:identifier];
      v10 = 1;
    }

    else
    {
      removedWrappedAccountIdentifiers2 = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
      v10 = [removedWrappedAccountIdentifiers2 removeAccount:accountCopy error:error];
    }
  }

  return v10;
}

- (BOOL)saveAccount:(id)account withError:(id *)error
{
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 1;
  }

  else
  {
    backingAccountStore = [(CalChangeFilteringMigrationAccountStore *)self backingAccountStore];
    v7 = [backingAccountStore saveAccount:accountCopy withError:error];
  }

  return v7;
}

- (id)_backingAccountForAccount:(id)account
{
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    backingAccount = [accountCopy backingAccount];
  }

  else
  {
    backingAccount = accountCopy;
  }

  v5 = backingAccount;

  return v5;
}

- (CalChangeFilteringMigrationAccountStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end