@interface MFAccountStore
+ (BOOL)_shouldUpdateAccountsInPlace;
+ (id)_accountWithAccountClass:(Class)a3 persistentAccount:(id)a4 useExisting:(BOOL)a5;
+ (id)sharedAccountStore;
- (ACAccountStore)persistentStore;
- (MFAccountStore)init;
- (id)accountsWithTypeIdentifiers:(id)a3 error:(id *)a4;
- (id)existingAccountWithPersistentAccount:(id)a3;
- (id)newPersistentAccountWithAccountTypeIdentifier:(id)a3;
- (id)supportedDataclassesWithAccountTypeIdentifier:(id)a3;
- (void)_accountsStoreChanged:(id)a3;
- (void)dealloc;
- (void)removePersistentAccountWithAccount:(id)a3;
- (void)savePersistentAccountWithAccount:(id)a3;
- (void)setPersistentStore:(id)a3;
@end

@implementation MFAccountStore

- (MFAccountStore)init
{
  v7.receiver = self;
  v7.super_class = MFAccountStore;
  v2 = [(MFAccountStore *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accountStoreLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E6959A48] defaultStore];
    [(MFAccountStore *)v3 setPersistentStore:v4];

    v5 = v3;
  }

  return v3;
}

+ (BOOL)_shouldUpdateAccountsInPlace
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"MFUpdateAccountsInPlaceKey"];

  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 BOOLValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = MFUserAgent();
    v4 = [v5 isMobileMail];
  }

  return v4;
}

void __36__MFAccountStore_sharedAccountStore__block_invoke()
{
  v0 = objc_alloc_init(MFAccountStore);
  v1 = sharedAccountStore_sAccountStore;
  sharedAccountStore_sAccountStore = v0;
}

+ (id)sharedAccountStore
{
  if (sharedAccountStore_onceToken != -1)
  {
    +[MFAccountStore sharedAccountStore];
  }

  v3 = sharedAccountStore_sAccountStore;

  return v3;
}

- (void)dealloc
{
  [(MFAccountStore *)self setPersistentStore:0];
  v3.receiver = self;
  v3.super_class = MFAccountStore;
  [(MFAccountStore *)&v3 dealloc];
}

- (ACAccountStore)persistentStore
{
  os_unfair_lock_lock(&self->_accountStoreLock);
  v3 = self->_accountStore;
  os_unfair_lock_unlock(&self->_accountStoreLock);

  return v3;
}

- (void)setPersistentStore:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock(&self->_accountStoreLock);
  accountStore = self->_accountStore;
  if (accountStore != v9)
  {
    v6 = MEMORY[0x1E69597D8];
    if (accountStore)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 removeObserver:self name:*v6 object:self->_accountStore];
    }

    objc_storeStrong(&self->_accountStore, a3);
    if (v9)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:self selector:sel__accountsStoreChanged_ name:*v6 object:v9];
    }
  }

  os_unfair_lock_unlock(&self->_accountStoreLock);
}

- (id)newPersistentAccountWithAccountTypeIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:v4];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v5];
    }

    else
    {
      v7 = MFAccountsLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(MFAccountStore *)v4 newPersistentAccountWithAccountTypeIdentifier:v7];
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)supportedDataclassesWithAccountTypeIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E6959A48] defaultStore];
    v5 = [v4 accountTypeWithAccountTypeIdentifier:v3];

    v6 = [v5 supportedDataclasses];
    v7 = [v6 allObjects];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accountsWithTypeIdentifiers:(id)a3 error:(id *)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  accountStore = self->_accountStore;
  v52[1] = 0;
  v42 = v5;
  obj = [ACAccountStore accountsWithAccountTypeIdentifiers:"accountsWithAccountTypeIdentifiers:error:" error:?];
  v43 = 0;
  v7 = [v43 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E6959978]])
  {
    v8 = [v43 code] == 10002;

    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = MFAccountsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v42 componentsJoinedByString:{@", "}];
      v11 = [v43 ef_publicDescription];
      *buf = 138543618;
      v59 = v10;
      v60 = 2114;
      v61 = v11;
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "Transient account store error; re-attempting to fetch accounts for types [%{public}@]: %{public}@", buf, 0x16u);
    }

    v12 = self->_accountStore;
    v52[0] = v43;
    v13 = [(ACAccountStore *)v12 accountsWithAccountTypeIdentifiers:v42 error:v52];
    v14 = v52[0];

    v7 = obj;
    obj = v13;
    v43 = v14;
  }

LABEL_7:
  if (v43)
  {
    v15 = MFAccountsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v42 componentsJoinedByString:{@", "}];
      v17 = [v43 ef_publicDescription];
      [(MFAccountStore *)v16 accountsWithTypeIdentifiers:v17 error:buf, v15];
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = obj;
  v18 = [obja countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    v47 = *v49;
    v46 = *MEMORY[0x1E698B760];
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v49 != v47)
        {
          objc_enumerationMutation(obja);
        }

        v22 = *(*(&v48 + 1) + 8 * i);
        v23 = -[MFAccountStore _accountWithPersistentAccount:useExisting:](self, "_accountWithPersistentAccount:useExisting:", v22, [objc_opt_class() _shouldUpdateAccountsInPlace]);
        if (v23)
        {
          if (!v20)
          {
            v20 = [MEMORY[0x1E695DF70] array];
          }

          v24 = [v22 parentAccount];
          v25 = [v24 aa_isAccountClass:v46];

          if (v25)
          {
            if (v19)
            {
              v26 = MFAccountsLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v35 = [v22 identifier];
                v36 = [v22 parentAccount];
                v37 = [v36 identifier];
                *v53 = 138543618;
                v54 = v35;
                v55 = 2114;
                v56 = v37;
                _os_log_error_impl(&dword_1B0389000, v26, OS_LOG_TYPE_ERROR, "Duplicate Primary iCloud IMAPMail account %{public}@ found for parent iCloud account %{public}@", v53, 0x16u);
              }
            }

            else
            {
              v31 = MFAccountsLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [v22 identifier];
                v33 = [v22 parentAccount];
                v34 = [v33 identifier];
                *v53 = 138543618;
                v54 = v32;
                v55 = 2114;
                v56 = v34;
                _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_DEFAULT, "Primary iCloud IMAPMail account %{public}@ found for parent iCloud account %{public}@", v53, 0x16u);
              }

              [v20 addObject:v23];
            }

            v19 = 1;
          }

          else
          {
            v27 = MFAccountsLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v22 identifier];
              v29 = [v22 parentAccount];
              v30 = [v29 identifier];
              *v53 = 138543618;
              v54 = v28;
              v55 = 2114;
              v56 = v30;
              _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "Mail account %{public}@ found for parent account %{public}@", v53, 0x16u);
            }

            [v20 addObject:v23];
          }
        }
      }

      v18 = [obja countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v18);
  }

  else
  {
    v20 = 0;
  }

  if (a4)
  {
    v38 = v43;
    *a4 = v43;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)existingAccountWithPersistentAccount:(id)a3
{
  v3 = [(MFAccountStore *)self _accountWithPersistentAccount:a3 useExisting:1];

  return v3;
}

+ (id)_accountWithAccountClass:(Class)a3 persistentAccount:(id)a4 useExisting:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = v7;
  if (v5 && ([v7 identifier], v9 = objc_claimAutoreleasedReturnValue(), -[objc_class existingAccountForUniqueID:](a3, "existingAccountForUniqueID:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    if (objc_opt_class() == a3)
    {
      [v10 setPersistentAccount:v8];
    }
  }

  else
  {
    v10 = [[a3 alloc] initWithPersistentAccount:v8];
  }

  return v10;
}

- (void)savePersistentAccountWithAccount:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 persistentAccount];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 accountDescription];
    v8 = [v6 identifier];
    v9 = [v6 accountType];
    v10 = [v9 identifier];
    if ([v10 isEqualToString:*MEMORY[0x1E6959890]])
    {
      v11 = [v6 username];
      v12 = [v11 dataUsingEncoding:1];

      if (!v12)
      {
        v13 = MFAccountsLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v24 = v7;
          v25 = 2114;
          v26 = v8;
          _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "%@ has Non-ASCII username - Disabling Notes for account (%{public}@)", buf, 0x16u);
        }

        v14 = *MEMORY[0x1E6959B40];
        [v6 setProvisioned:0 forDataclass:*MEMORY[0x1E6959B40]];
        [v6 setEnabled:0 forDataclass:v14];
      }
    }

    else
    {
    }

    if ([v6 isDirty])
    {
      v15 = dispatch_semaphore_create(0);
      accountStore = self->_accountStore;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke;
      v19[3] = &unk_1E7AA4AA8;
      v20 = v7;
      v21 = v8;
      v22 = v15;
      v17 = v15;
      [(ACAccountStore *)accountStore saveVerifiedAccount:v6 withCompletionHandler:v19];
      dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v17 = MFAccountsLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = v7;
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Nothing to save for account %@ (%{public}@)", buf, 0x16u);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = MFAccountsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v13 = 138412546;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Saved account %@ (%{public}@)", &v13, 0x16u);
    }
  }

  else
  {
    v6 = MFAccountsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = [v5 ef_publicDescription];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      v17 = 2114;
      v18 = v12;
      _os_log_error_impl(&dword_1B0389000, v6, OS_LOG_TYPE_ERROR, "Failed to save account %@ (%@) error: %{public}@", &v13, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v9 = *MEMORY[0x1E69E9840];
}

- (void)removePersistentAccountWithAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 persistentAccount];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 accountDescription];
    v8 = [v6 identifier];
    v9 = dispatch_semaphore_create(0);
    accountStore = self->_accountStore;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke;
    v14[3] = &unk_1E7AA4AA8;
    v11 = v7;
    v15 = v11;
    v16 = v8;
    v17 = v9;
    v12 = v9;
    v13 = v8;
    [(ACAccountStore *)accountStore removeAccount:v6 withCompletionHandler:v14];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = MFAccountsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v13 = 138412546;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Removed account %@ (%{public}@)", &v13, 0x16u);
    }
  }

  else
  {
    v6 = MFAccountsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = [v5 ef_publicDescription];
      v13 = 138412802;
      v14 = v11;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v12;
      _os_log_error_impl(&dword_1B0389000, v6, OS_LOG_TYPE_ERROR, "Failed to remove account %@ (%{public}@) error: %{public}@", &v13, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_accountsStoreChanged:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MFAccountsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 name];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Received %@ notification", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)newPersistentAccountWithAccountTypeIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Missing account type for identifier %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)accountsWithTypeIdentifiers:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Failed to fetch accounts for types [%{public}@]: %{public}@", buf, 0x16u);
}

@end