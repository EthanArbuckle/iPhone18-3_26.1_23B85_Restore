@interface EMAccountRepository
+ (OS_os_log)log;
+ (id)remoteInterface;
- (EMAccountRepository)initWithRemoteConnection:(id)a3;
- (NSArray)allAccounts;
- (NSArray)deliveryAccounts;
- (NSArray)receivingAccounts;
- (id)_currentAccountsByObjectIDMap;
- (id)accountForAccountIdentifier:(id)a3;
- (id)accountForIdentifier:(id)a3;
- (void)_currentAccountsByObjectIDMap;
- (void)_fetchAccountsAndObserveChanges;
- (void)_postAccountChangedNotification;
- (void)accountsAdded:(id)a3;
- (void)accountsChanged:(id)a3;
- (void)accountsRemoved:(id)a3;
- (void)dealloc;
- (void)requestAccounts;
@end

@implementation EMAccountRepository

+ (id)remoteInterface
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F461E320];
  [v7 setClasses:v6 forSelector:sel_accountsAdded_ argumentIndex:0 ofReply:0];
  [v7 setClasses:v6 forSelector:sel_accountsRemoved_ argumentIndex:0 ofReply:0];
  [v7 setClasses:v6 forSelector:sel_accountsChanged_ argumentIndex:0 ofReply:0];
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4641828];
  [v8 setClasses:v6 forSelector:sel_registerObserver_completionHandler_ argumentIndex:0 ofReply:1];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F461EBF8];
  [v8 setInterface:v9 forSelector:sel_registerObserver_completionHandler_ argumentIndex:1 ofReply:1];

  [v8 setInterface:v7 forSelector:sel_registerObserver_completionHandler_ argumentIndex:0 ofReply:0];

  return v8;
}

- (void)requestAccounts
{
  recoveryHandlerScheduler = self->_recoveryHandlerScheduler;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__EMAccountRepository_requestAccounts__block_invoke;
  v3[3] = &unk_1E826C098;
  v3[4] = self;
  [(EFScheduler *)recoveryHandlerScheduler performBlock:v3];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EMAccountRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

- (id)_currentAccountsByObjectIDMap
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_accounts && self->_cancelable)
  {
    v3 = +[EMAccountRepository log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(EMAccountRepository *)self _currentAccountsByObjectIDMap];
    }
  }

  else
  {
    v4 = +[EMAccountRepository log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(EMAccountRepository *)self _currentAccountsByObjectIDMap];
    }

    [(EMAccountRepository *)self _fetchAccountsAndObserveChanges];
  }

  v5 = [(NSMutableDictionary *)self->_accounts copy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

void __26__EMAccountRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (void)_fetchAccountsAndObserveChanges
{
  v3 = [(EMRepository *)self connection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  v5 = [(EMRepository *)self observerScheduler];
  v6 = [(EMAccountRepository *)self ef_onScheduler:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_81;
  v7[3] = &unk_1E826C0E0;
  v7[4] = self;
  [v4 registerObserver:v6 completionHandler:v7];
}

void __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_81(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[EMAccountRepository log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v9 ef_publicDescription];
      __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_81_cold_1(v11, v12, &v22, v10);
    }
  }

  else
  {
    v13 = +[EMAccountRepository log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = v7;
      _os_log_impl(&dword_1C6655000, v13, OS_LOG_TYPE_DEFAULT, "Initialized with accounts: %{public}@", &v22, 0xCu);
    }

    v14 = MEMORY[0x1E695DF90];
    v15 = [v7 ef_mapSelector:sel_objectID];
    v16 = [v14 dictionaryWithObjects:v7 forKeys:v15];
    v17 = *(a1 + 32);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = *(a1 + 32);
    v20 = v8;
    v10 = *(v19 + 56);
    *(v19 + 56) = v20;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (EMAccountRepository)initWithRemoteConnection:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = EMAccountRepository;
  v5 = [(EMRepository *)&v19 initWithRemoteConnection:v4];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = MEMORY[0x1E699B978];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.recoveryHandler", objc_opt_class()];
    v9 = [v7 serialDispatchQueueSchedulerWithName:v8];
    recoveryHandlerScheduler = v6->_recoveryHandlerScheduler;
    v6->_recoveryHandlerScheduler = v9;

    v20[0] = @"name";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [EMQuery addValidSortDescriptorKeyPaths:v11 forTargetClass:objc_opt_class()];

    objc_initWeak(&location, v6);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__EMAccountRepository_initWithRemoteConnection___block_invoke;
    v16[3] = &unk_1E826C070;
    objc_copyWeak(&v17, &location);
    [v4 addResetHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__EMAccountRepository_initWithRemoteConnection___block_invoke_2;
    v14[3] = &unk_1E826C070;
    objc_copyWeak(&v15, &location);
    [v4 addRecoveryHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

void __48__EMAccountRepository_initWithRemoteConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
    WeakRetained[7] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __48__EMAccountRepository_initWithRemoteConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48__EMAccountRepository_initWithRemoteConnection___block_invoke_3;
    v4[3] = &unk_1E826C098;
    v5 = WeakRetained;
    [v3 performBlock:v4];
  }
}

void __48__EMAccountRepository_initWithRemoteConnection___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 8);
  [*(a1 + 32) _fetchAccountsAndObserveChanges];

  os_unfair_lock_unlock(v2 + 8);
}

- (void)dealloc
{
  [(EFCancelable *)self->_cancelable cancel];
  v3.receiver = self;
  v3.super_class = EMAccountRepository;
  [(EMAccountRepository *)&v3 dealloc];
}

void __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[EMAccountRepository log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_cold_1(v2, v3);
  }
}

- (NSArray)allAccounts
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [(EMAccountRepository *)self _currentAccountsByObjectIDMap];
  v3 = [v2 allValues];

  v4 = [EMAccount sortDescriptorForNameAscending:1];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [v3 sortedArrayUsingDescriptors:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSArray)receivingAccounts
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [(EMAccountRepository *)self allAccounts];
  v3 = [EMQuery alloc];
  v4 = objc_opt_class();
  v5 = +[EMAccount predicateForReceivingAccounts];
  v6 = [EMAccount sortDescriptorForNameAscending:1];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [(EMQuery *)v3 initWithTargetClass:v4 predicate:v5 sortDescriptors:v7];

  v9 = [(EMQuery *)v8 predicate];
  v10 = [v2 filteredArrayUsingPredicate:v9];

  v11 = [v10 ef_map:&__block_literal_global_88];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSArray)deliveryAccounts
{
  v2 = [(EMAccountRepository *)self receivingAccounts];
  v3 = [v2 ef_compactMap:&__block_literal_global_91];

  return v3;
}

id __39__EMAccountRepository_deliveryAccounts__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deliveryAccount];

  return v2;
}

- (id)accountForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(EMAccountRepository *)self _currentAccountsByObjectIDMap];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountForAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[EMObjectID alloc] initWithRepresentedObjectID:v4];
  v6 = [(EMAccountRepository *)self accountForIdentifier:v5];

  return v6;
}

- (void)accountsAdded:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EMAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Processing added accounts: %{public}@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  accounts = self->_accounts;
  v7 = MEMORY[0x1E695DF20];
  v8 = [v4 ef_mapSelector:sel_objectID];
  v9 = [v7 dictionaryWithObjects:v4 forKeys:v8];
  [(NSMutableDictionary *)accounts addEntriesFromDictionary:v9];

  os_unfair_lock_unlock(&self->_lock);
  [(EMAccountRepository *)self _postAccountChangedNotification];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)accountsRemoved:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EMAccountRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Processing removed accounts: %{public}@", &v9, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  accounts = self->_accounts;
  v7 = [v4 ef_mapSelector:sel_objectID];
  [(NSMutableDictionary *)accounts removeObjectsForKeys:v7];

  os_unfair_lock_unlock(&self->_lock);
  [(EMAccountRepository *)self _postAccountChangedNotification];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)accountsChanged:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v4 = +[EMAccountRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v13;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "Processing changed accounts: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v13;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        accounts = self->_accounts;
        v11 = [v9 objectID];
        [(NSMutableDictionary *)accounts setObject:v9 forKeyedSubscript:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(EMAccountRepository *)self _postAccountChangedNotification];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_postAccountChangedNotification
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"EMAccountsChangedNotification" object:0];
}

void __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch accounts %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __54__EMAccountRepository__fetchAccountsAndObserveChanges__block_invoke_81_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "EMAccountRepository<%p> Registering observer for account changes failed with error: %{public}@", buf, 0x16u);
}

- (void)_currentAccountsByObjectIDMap
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1C6655000, a2, OS_LOG_TYPE_DEBUG, "EMAccountRepository<%p> Registering observer for account changes", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end