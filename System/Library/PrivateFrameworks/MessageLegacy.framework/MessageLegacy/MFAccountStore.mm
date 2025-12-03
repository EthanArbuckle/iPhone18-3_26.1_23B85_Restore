@interface MFAccountStore
+ (BOOL)_shouldUpdateAccountsInPlace;
+ (id)_accountWithAccountClass:(Class)class persistentAccount:(id)account useExisting:(BOOL)existing;
+ (id)sharedAccountStore;
- (ACAccountStore)persistentStore;
- (MFAccountStore)init;
- (id)accountsWithTypeIdentifiers:(id)identifiers error:(id *)error;
- (id)newPersistentAccountWithAccountTypeIdentifier:(id)identifier;
- (id)supportedDataclassesWithAccountTypeIdentifier:(id)identifier;
- (void)_accountsStoreChanged:(id)changed;
- (void)dealloc;
- (void)removePersistentAccountWithAccount:(id)account;
- (void)savePersistentAccountWithAccount:(id)account;
- (void)setPersistentStore:(id)store;
@end

@implementation MFAccountStore

- (MFAccountStore)init
{
  v5.receiver = self;
  v5.super_class = MFAccountStore;
  v2 = [(MFAccountStore *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_accountStoreLock._os_unfair_lock_opaque = 0;
    [(MFAccountStore *)v2 setPersistentStore:objc_alloc_init(MEMORY[0x277CB8F48])];
  }

  return v3;
}

- (void)dealloc
{
  [(MFAccountStore *)self setPersistentStore:0];
  v3.receiver = self;
  v3.super_class = MFAccountStore;
  [(MFAccountStore *)&v3 dealloc];
}

+ (id)sharedAccountStore
{
  if (sharedAccountStore_onceToken != -1)
  {
    +[MFAccountStore sharedAccountStore];
  }

  return sharedAccountStore_sAccountStore;
}

MFAccountStore *__36__MFAccountStore_sharedAccountStore__block_invoke()
{
  result = objc_alloc_init(MFAccountStore);
  sharedAccountStore_sAccountStore = result;
  return result;
}

- (ACAccountStore)persistentStore
{
  os_unfair_lock_lock(&self->_accountStoreLock);
  v3 = self->_accountStore;
  os_unfair_lock_unlock(&self->_accountStoreLock);

  return v3;
}

- (void)setPersistentStore:(id)store
{
  os_unfair_lock_lock(&self->_accountStoreLock);
  accountStore = self->_accountStore;
  if (accountStore != store)
  {
    v6 = MEMORY[0x277CB8B78];
    if (accountStore)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      accountStore = self->_accountStore;
    }

    self->_accountStore = store;
    if (store)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    }
  }

  os_unfair_lock_unlock(&self->_accountStoreLock);
}

- (id)newPersistentAccountWithAccountTypeIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  v4 = [(ACAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:?];
  if (!v4)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MFAccountStore *)identifier newPersistentAccountWithAccountTypeIdentifier:v8];
    }

    return 0;
  }

  v5 = v4;
  v6 = objc_alloc(MEMORY[0x277CB8F30]);

  return [v6 initWithAccountType:v5];
}

- (id)supportedDataclassesWithAccountTypeIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  supportedDataclasses = [(ACAccountType *)[(ACAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:?] supportedDataclasses];

  return [supportedDataclasses allObjects];
}

- (id)accountsWithTypeIdentifiers:(id)identifiers error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v7 = [(ACAccountStore *)self->_accountStore accountsWithAccountTypeIdentifiers:identifiers error:&v22];
  if (v22)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MFAccountStore accountsWithTypeIdentifiers:identifiers error:&v22];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (!v9)
  {
    array = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = v9;
  array = 0;
  v12 = *v19;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = -[MFAccountStore _accountWithPersistentAccount:useExisting:](self, "_accountWithPersistentAccount:useExisting:", *(*(&v18 + 1) + 8 * i), [objc_opt_class() _shouldUpdateAccountsInPlace]);
      if (v14)
      {
        v15 = v14;
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        [array addObject:v15];
      }
    }

    v10 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  }

  while (v10);
  if (error)
  {
LABEL_16:
    *error = v22;
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return array;
}

+ (id)_accountWithAccountClass:(Class)class persistentAccount:(id)account useExisting:(BOOL)existing
{
  if (existing && (v7 = -[objc_class existingAccountForUniqueID:](class, "existingAccountForUniqueID:", [account identifier])) != 0)
  {
    v8 = v7;
    if (objc_opt_class() == class)
    {
      [v8 setPersistentAccount:account];
    }

    return v8;
  }

  else
  {
    v10 = [[class alloc] initWithPersistentAccount:account];

    return v10;
  }
}

+ (BOOL)_shouldUpdateAccountsInPlace
{
  v2 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (v2)
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {

      return [v3 BOOLValue];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = MFUserAgent();

    return [v5 isMobileMail];
  }
}

- (void)savePersistentAccountWithAccount:(id)account
{
  v17 = *MEMORY[0x277D85DE8];
  persistentAccount = [account persistentAccount];
  if (persistentAccount)
  {
    v5 = persistentAccount;
    accountDescription = [persistentAccount accountDescription];
    identifier = [v5 identifier];
    if ([v5 isDirty])
    {
      v8 = dispatch_semaphore_create(0);
      accountStore = self->_accountStore;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke;
      v12[3] = &unk_2798B6D68;
      v12[4] = accountDescription;
      v12[5] = identifier;
      v12[6] = v8;
      [(ACAccountStore *)accountStore saveVerifiedAccount:v5 withCompletionHandler:v12];
      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v8);
    }

    else
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v14 = accountDescription;
        v15 = 2112;
        v16 = identifier;
        _os_log_impl(&dword_258BDA000, v10, OS_LOG_TYPE_INFO, "Nothing to save for account %@ (%@)", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

intptr_t __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MFLogGeneral();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_INFO, "Saved account %@ (%@)", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke_cold_1(a1, a3);
  }

  result = dispatch_semaphore_signal(*(a1 + 48));
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removePersistentAccountWithAccount:(id)account
{
  persistentAccount = [account persistentAccount];
  if (persistentAccount)
  {
    v5 = persistentAccount;
    accountDescription = [persistentAccount accountDescription];
    identifier = [v5 identifier];
    v8 = dispatch_semaphore_create(0);
    accountStore = self->_accountStore;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke;
    v10[3] = &unk_2798B6D68;
    v10[4] = accountDescription;
    v10[5] = identifier;
    v10[6] = v8;
    [(ACAccountStore *)accountStore removeAccount:v5 withCompletionHandler:v10];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v8);
  }
}

intptr_t __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MFLogGeneral();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_INFO, "Removed account %@ (%@)", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke_cold_1(a1, a3);
  }

  result = dispatch_semaphore_signal(*(a1 + 48));
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_accountsStoreChanged:(id)changed
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(MFAccountStore *)changed _accountsStoreChanged:v4];
  }
}

- (void)newPersistentAccountWithAccountTypeIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "Missing account type for identifier %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)accountsWithTypeIdentifiers:(void *)a1 error:(id *)a2 .cold.1(void *a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 componentsJoinedByString:{@", "}];
  [*a2 ef_publicDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_accountWithPersistentAccount:(void *)a1 useExisting:(id *)a2 .cold.1(void *a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 identifier];
  [*a2 ef_publicDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __51__MFAccountStore_savePersistentAccountWithAccount___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [a2 ef_publicDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

void __53__MFAccountStore_removePersistentAccountWithAccount___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [a2 ef_publicDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_accountsStoreChanged:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = [a1 name];
  _os_log_debug_impl(&dword_258BDA000, a2, OS_LOG_TYPE_DEBUG, "Received %@ notification", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end