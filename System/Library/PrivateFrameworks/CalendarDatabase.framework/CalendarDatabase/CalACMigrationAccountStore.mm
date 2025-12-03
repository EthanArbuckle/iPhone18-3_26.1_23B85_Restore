@interface CalACMigrationAccountStore
+ (id)sharedInstance;
- (BOOL)removeAccount:(id)account error:(id *)error;
- (BOOL)saveAccount:(id)account withError:(id *)error;
- (id)accountWithIdentifier:(id)identifier;
- (id)childAccountsForAccount:(id)account withTypeIdentifier:(id)identifier;
- (id)createAccountWithAccountTypeIdentifier:(id)identifier error:(id *)error;
- (id)createChildAccountOfParent:(id)parent withAccountTypeIdentifier:(id)identifier error:(id *)error;
- (id)topLevelAccountsWithAccountTypeIdentifier:(id)identifier error:(id *)error;
@end

@implementation CalACMigrationAccountStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CalACMigrationAccountStore sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __44__CalACMigrationAccountStore_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CalACMigrationAccountStore);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)accountWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E6992F00];
  identifierCopy = identifier;
  defaultProvider = [v3 defaultProvider];
  v6 = [defaultProvider accountWithIdentifier:identifierCopy];

  if (v6)
  {
    v7 = [[CalACMigrationAccount alloc] initWithACAccount:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)topLevelAccountsWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  defaultProvider = [MEMORY[0x1E6992F00] defaultProvider];
  v7 = [defaultProvider accountsWithAccountTypeIdentifier:identifierCopy error:error];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          parentAccount = [v14 parentAccount];

          if (!parentAccount)
          {
            v16 = [[CalACMigrationAccount alloc] initWithACAccount:v14];
            [v8 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v17 = [v8 copy];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)childAccountsForAccount:(id)account withTypeIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    account = [accountCopy account];
    accountStore = [account accountStore];
    v9 = [accountStore childAccountsForAccount:account withTypeIdentifier:identifierCopy];

    if (v9)
    {
      v20 = account;
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [[CalACMigrationAccount alloc] initWithACAccount:*(*(&v21 + 1) + 8 * i)];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      v17 = [v10 copy];
      account = v20;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)createAccountWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  v4 = MEMORY[0x1E6992F00];
  identifierCopy = identifier;
  defaultProvider = [v4 defaultProvider];
  v7 = [defaultProvider accountTypeWithIdentifier:identifierCopy];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v7];
    [v8 setActive:1];
    v9 = [[CalACMigrationAccount alloc] initWithACAccount:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createChildAccountOfParent:(id)parent withAccountTypeIdentifier:(id)identifier error:(id *)error
{
  parentCopy = parent;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    account = [parentCopy account];
    v11 = [(CalACMigrationAccountStore *)self createAccountWithAccountTypeIdentifier:identifierCopy error:error];
    v12 = v11;
    if (v11)
    {
      account2 = [v11 account];
      [account2 setParentAccount:account];

      v14 = v12;
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.calendar.ACMigrationAccountStoreErrors" code:1 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)removeAccount:(id)account error:(id *)error
{
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = accountCopy;
    account = [v6 account];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v8 = dispatch_semaphore_create(0);
    accountStore = [account accountStore];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__CalACMigrationAccountStore_removeAccount_error___block_invoke;
    v13[3] = &unk_1E8692208;
    v15 = &v21;
    v16 = &v17;
    v10 = v8;
    v14 = v10;
    [accountStore removeAccount:account withDeleteSync:0 completion:v13];

    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      *error = v22[5];
    }

    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.calendar.ACMigrationAccountStoreErrors" code:1 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __50__CalACMigrationAccountStore_removeAccount_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)saveAccount:(id)account withError:(id *)error
{
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    account = [accountCopy account];
    defaultProvider = [MEMORY[0x1E6992F00] defaultProvider];
    v8 = [defaultProvider saveAccount:account verify:0 withError:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.calendar.ACMigrationAccountStoreErrors" code:1 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end