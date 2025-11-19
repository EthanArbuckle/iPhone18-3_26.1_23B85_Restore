@interface EDAccountRepository
+ (OS_os_log)log;
- (EDAccountRepository)initWithAccountsProvider:(id)a3 hookRegistry:(id)a4;
- (EDPersistenceHookRegistry)hookRegistry;
- (id)allAccounts;
- (id)transformAccounts:(id)a3;
- (void)accountsAdded:(id)a3;
- (void)accountsChanged:(id)a3;
- (void)accountsRemoved:(id)a3;
- (void)allAccountsWithCompletionHandler:(id)a3;
- (void)registerObserver:(id)a3 completionHandler:(id)a4;
@end

@implementation EDAccountRepository

- (id)allAccounts
{
  v3 = [(EDAccountRepository *)self accountsProvider];
  v4 = [v3 mailAccounts];

  v5 = [(EDAccountRepository *)self transformAccounts:v4];

  return v5;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EDAccountRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __26__EDAccountRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

- (EDAccountRepository)initWithAccountsProvider:(id)a3 hookRegistry:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = EDAccountRepository;
  v9 = [(EDAccountRepository *)&v21 init];
  if (v9)
  {
    v10 = objc_alloc_init(EDAccountECAccountTransformer);
    transformer = v9->_transformer;
    v9->_transformer = v10;

    objc_storeStrong(&v9->_accountsProvider, a3);
    objc_storeWeak(&v9->_hookRegistry, v8);
    v9->_lock._os_unfair_lock_opaque = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    observers = v9->_observers;
    v9->_observers = v12;

    WeakRetained = objc_loadWeakRetained(&v9->_hookRegistry);
    [WeakRetained registerAccountChangeHookResponder:v9];

    v15 = MEMORY[0x1E699AE28];
    v22[0] = *MEMORY[0x1E699AB00];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v15 addValidSortDescriptorKeyPaths:v16 forTargetClass:objc_opt_class()];

    v17 = [[EDBiomeBlackPearlLogger alloc] initWithStreamType:0];
    receiveBiomeCollector = v9->_receiveBiomeCollector;
    v9->_receiveBiomeCollector = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)registerObserver:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_observers addObject:v6];
  os_unfair_lock_unlock(&self->_lock);
  v8 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__EDAccountRepository_registerObserver_completionHandler___block_invoke;
  v14[3] = &unk_1E8250098;
  objc_copyWeak(&v16, &location);
  v9 = v6;
  v15 = v9;
  [v8 addCancelationBlock:v14];
  v10 = [(EDAccountRepository *)self allAccounts];
  v11 = +[EDAccountRepository log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 count];
    *buf = 134218498;
    v19 = v9;
    v20 = 2048;
    v21 = v12;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_INFO, "Registered EMAccountRepositoryObserver<%p> - Current observing accounts: Count: %lu\n %@ ", buf, 0x20u);
  }

  v7[2](v7, v10, v8, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x1E69E9840];
}

void __58__EDAccountRepository_registerObserver_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 4);
    [*&v3[2]._os_unfair_lock_opaque removeObject:*(a1 + 32)];
    os_unfair_lock_unlock(v3 + 4);
    WeakRetained = v3;
  }
}

- (void)allAccountsWithCompletionHandler:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDAccountRepository *)self allAccounts];
  v6 = +[EDAccountRepository log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "Returning %lu accounts", &v8, 0xCu);
  }

  v4[2](v4, v5, 0);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)transformAccounts:(id)a3
{
  v4 = a3;
  v5 = [v4 ef_filter:&__block_literal_global_0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__EDAccountRepository_transformAccounts___block_invoke_2;
  v8[3] = &unk_1E82500E0;
  v8[4] = self;
  v6 = [v5 ef_map:v8];

  return v6;
}

uint64_t __41__EDAccountRepository_transformAccounts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F4628C10])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isLocalAccount] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id __41__EDAccountRepository_transformAccounts___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transformer];
  v5 = [v4 transformAccount:v3];

  return v5;
}

- (void)accountsAdded:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EDAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Handling accounts added: %@", buf, 0xCu);
  }

  v6 = [(EDAccountRepository *)self transformAccounts:v4];
  if ([v6 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(NSMutableSet *)self->_observers copy];
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v11++) accountsAdded:{v6, v13}];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)accountsRemoved:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EDAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Handling accounts removed: %@", buf, 0xCu);
  }

  v6 = [(EDAccountRepository *)self transformAccounts:v4];
  if ([v6 count])
  {
    if (_os_feature_enabled_impl())
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = [v4 ef_map:&__block_literal_global_141];
      v9 = [v7 setWithArray:v8];

      v10 = [(EDAccountRepository *)self receiveBiomeCollector];
      [v10 deleteEventsForAccountIDs:v9];
    }

    os_unfair_lock_lock(&self->_lock);
    v11 = [(NSMutableSet *)self->_observers copy];
    os_unfair_lock_unlock(&self->_lock);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * v15++) accountsRemoved:{v6, v17}];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

id __39__EDAccountRepository_accountsRemoved___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];

  return v2;
}

- (void)accountsChanged:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EDAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Handling accounts changed: %@", buf, 0xCu);
  }

  v6 = [(EDAccountRepository *)self transformAccounts:v4];
  if ([v6 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(NSMutableSet *)self->_observers copy];
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v11++) accountsChanged:{v6, v13}];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (EDPersistenceHookRegistry)hookRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_hookRegistry);

  return WeakRetained;
}

@end