@interface CalACMigrationAccountStore
+ (id)sharedInstance;
- (BOOL)removeAccount:(id)a3 error:(id *)a4;
- (BOOL)saveAccount:(id)a3 withError:(id *)a4;
- (id)accountWithIdentifier:(id)a3;
- (id)childAccountsForAccount:(id)a3 withTypeIdentifier:(id)a4;
- (id)createAccountWithAccountTypeIdentifier:(id)a3 error:(id *)a4;
- (id)createChildAccountOfParent:(id)a3 withAccountTypeIdentifier:(id)a4 error:(id *)a5;
- (id)topLevelAccountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4;
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

- (id)accountWithIdentifier:(id)a3
{
  v3 = MEMORY[0x1E6992F00];
  v4 = a3;
  v5 = [v3 defaultProvider];
  v6 = [v5 accountWithIdentifier:v4];

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

- (id)topLevelAccountsWithAccountTypeIdentifier:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6992F00] defaultProvider];
  v7 = [v6 accountsWithAccountTypeIdentifier:v5 error:a4];

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
          v15 = [v14 parentAccount];

          if (!v15)
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

- (id)childAccountsForAccount:(id)a3 withTypeIdentifier:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 account];
    v8 = [v7 accountStore];
    v9 = [v8 childAccountsForAccount:v7 withTypeIdentifier:v6];

    if (v9)
    {
      v20 = v7;
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
      v7 = v20;
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

- (id)createAccountWithAccountTypeIdentifier:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x1E6992F00];
  v5 = a3;
  v6 = [v4 defaultProvider];
  v7 = [v6 accountTypeWithIdentifier:v5];

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

- (id)createChildAccountOfParent:(id)a3 withAccountTypeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 account];
    v11 = [(CalACMigrationAccountStore *)self createAccountWithAccountTypeIdentifier:v9 error:a5];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 account];
      [v13 setParentAccount:v10];

      v14 = v12;
    }
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.calendar.ACMigrationAccountStoreErrors" code:1 userInfo:0];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)removeAccount:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 account];
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
    v9 = [v7 accountStore];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__CalACMigrationAccountStore_removeAccount_error___block_invoke;
    v13[3] = &unk_1E8692208;
    v15 = &v21;
    v16 = &v17;
    v10 = v8;
    v14 = v10;
    [v9 removeAccount:v7 withDeleteSync:0 completion:v13];

    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (a4)
    {
      *a4 = v22[5];
    }

    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.calendar.ACMigrationAccountStoreErrors" code:1 userInfo:0];
    *a4 = v11 = 0;
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

- (BOOL)saveAccount:(id)a3 withError:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 account];
    v7 = [MEMORY[0x1E6992F00] defaultProvider];
    v8 = [v7 saveAccount:v6 verify:0 withError:a4];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.calendar.ACMigrationAccountStoreErrors" code:1 userInfo:0];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end