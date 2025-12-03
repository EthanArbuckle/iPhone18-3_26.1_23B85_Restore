@interface DNDSModeAssertionManager
- (BOOL)_saveDataToBackingStoreWithError:(id *)error;
- (DNDSModeAssertionManager)initWithBackingStore:(id)store clientDetailsProvider:(id)provider;
- (DNDSModeAssertionManager)initWithBackingStoreURL:(id)l clientDetailsProvider:(id)provider;
- (id)modeAssertionInvalidationsMatchingPredicate:(id)predicate;
- (id)modeAssertionsMatchingPredicate:(id)predicate;
- (id)updateModeAssertionsWithContextHandler:(id)handler error:(id *)error;
- (void)_loadDataFromBackingStore;
- (void)_resolveTransactionForModeAssertionStore;
- (void)dealloc;
@end

@implementation DNDSModeAssertionManager

- (DNDSModeAssertionManager)initWithBackingStoreURL:(id)l clientDetailsProvider:(id)provider
{
  providerCopy = provider;
  lCopy = l;
  v8 = [[DNDSJSONBackingStore alloc] initWithRecordClass:objc_opt_class() fileURL:lCopy versionNumber:8];

  v9 = [(DNDSModeAssertionManager *)self initWithBackingStore:v8 clientDetailsProvider:providerCopy];
  return v9;
}

- (DNDSModeAssertionManager)initWithBackingStore:(id)store clientDetailsProvider:(id)provider
{
  storeCopy = store;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = DNDSModeAssertionManager;
  v9 = [(DNDSModeAssertionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingStore, store);
    [(DNDSBackingStore *)v10->_backingStore setDelegate:v10];
    objc_storeStrong(&v10->_clientDetailsProvider, provider);
    v10->_storeLock._os_unfair_lock_opaque = 0;
    [(DNDSModeAssertionManager *)v10 _loadDataFromBackingStore];
    DNDSRegisterSysdiagnoseDataProvider(v10);
  }

  return v10;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSModeAssertionManager;
  [(DNDSModeAssertionManager *)&v3 dealloc];
}

- (id)modeAssertionsMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__DNDSModeAssertionManager_modeAssertionsMatchingPredicate___block_invoke;
  v12[3] = &unk_278F8AD90;
  v14 = &v15;
  v5 = predicateCopy;
  v13 = v5;
  v11 = 0;
  v6 = [(DNDSModeAssertionManager *)self updateModeAssertionsWithContextHandler:v12 error:&v11];
  v7 = v11;
  if (!v6)
  {
    if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeAssertionManager modeAssertionsMatchingPredicate:];
    }

    v8 = v16[5];
    v16[5] = MEMORY[0x277CBEBF8];
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __60__DNDSModeAssertionManager_modeAssertionsMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 modeAssertionsMatchingPredicate:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (id)modeAssertionInvalidationsMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__DNDSModeAssertionManager_modeAssertionInvalidationsMatchingPredicate___block_invoke;
  v12[3] = &unk_278F8AD90;
  v14 = &v15;
  v5 = predicateCopy;
  v13 = v5;
  v11 = 0;
  v6 = [(DNDSModeAssertionManager *)self updateModeAssertionsWithContextHandler:v12 error:&v11];
  v7 = v11;
  if (!v6)
  {
    if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeAssertionManager modeAssertionInvalidationsMatchingPredicate:];
    }

    v8 = v16[5];
    v16[5] = MEMORY[0x277CBEBF8];
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __72__DNDSModeAssertionManager_modeAssertionInvalidationsMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 modeAssertionInvalidationsMatchingPredicate:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (id)updateModeAssertionsWithContextHandler:(id)handler error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_24912E000, "com.apple.donotdisturb.ModeAssertionManager.updateModeAssertions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);
  os_unfair_lock_lock(&self->_storeLock);
  v8 = objc_autoreleasePoolPush();
  v9 = [[DNDSModeAssertionManagerUpdateContext alloc] initWithStore:self->_store clientDetailsProvider:self->_clientDetailsProvider];
  v10 = handlerCopy[2](handlerCopy, v9);
  v11 = DNDSLogAssertionManager;
  if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v10;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Executed handler; return=%{BOOL}d", buf, 8u);
  }

  if (v10)
  {
    store = [(DNDSModeAssertionManagerUpdateContext *)v9 store];
    if ([(DNDSModeAssertionStore *)self->_store isEqual:store])
    {
      v13 = 0;
    }

    else
    {
      v15 = [store copy];
      store = self->_store;
      self->_store = v15;

      v20 = 0;
      [(DNDSModeAssertionManager *)self _saveDataToBackingStoreWithError:&v20];
      v13 = v20;
      [(DNDSModeAssertionManager *)self _resolveTransactionForModeAssertionStore];
    }

    updateResult = [(DNDSModeAssertionManagerUpdateContext *)v9 updateResult];
  }

  else
  {
    updateResult = +[DNDSModeAssertionUpdateResult emptyResult];
    v13 = 0;
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_unlock(&self->_storeLock);
  if (error && v13)
  {
    v17 = v13;
    *error = v13;
  }

  os_activity_scope_leave(&state);

  v18 = *MEMORY[0x277D85DE8];

  return updateResult;
}

- (void)_loadDataFromBackingStore
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to load assertion database, will request a radar; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

BOOL __53__DNDSModeAssertionManager__loadDataFromBackingStore__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 invalidationDate];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4 > 3024000.0;

  return v5;
}

BOOL __53__DNDSModeAssertionManager__loadDataFromBackingStore__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 requestDate];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4 > 3024000.0;

  return v5;
}

- (void)_resolveTransactionForModeAssertionStore
{
  assertions = [(DNDSModeAssertionStore *)self->_store assertions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__DNDSModeAssertionManager__resolveTransactionForModeAssertionStore__block_invoke;
  v10[3] = &unk_278F8A0B0;
  v10[4] = self;
  v4 = [assertions bs_filter:v10];

  invalidations = [(DNDSModeAssertionStore *)self->_store invalidations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__DNDSModeAssertionManager__resolveTransactionForModeAssertionStore__block_invoke_2;
  v9[3] = &unk_278F8A950;
  v9[4] = self;
  v6 = [invalidations bs_filter:v9];

  if (![v4 count] && !objc_msgSend(v6, "count"))
  {
    nonPersistentAssertionTransaction = self->_nonPersistentAssertionTransaction;
    self->_nonPersistentAssertionTransaction = 0;
    goto LABEL_6;
  }

  if (!self->_nonPersistentAssertionTransaction)
  {
    v7 = os_transaction_create();
    nonPersistentAssertionTransaction = self->_nonPersistentAssertionTransaction;
    self->_nonPersistentAssertionTransaction = v7;
LABEL_6:
  }
}

uint64_t __68__DNDSModeAssertionManager__resolveTransactionForModeAssertionStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 source];
  v4 = [v3 clientIdentifier];

  v5 = [*(*(a1 + 32) + 24) clientDetailsForIdentifier:v4];
  if ([v5 isPersistentAssertionClient])
  {
    v6 = 0;
  }

  else if ([v5 isUserInteractionClient])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 hasPrefix:@"com.apple.private.dndtool"];
  }

  return v6;
}

uint64_t __68__DNDSModeAssertionManager__resolveTransactionForModeAssertionStore__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 assertion];
  v4 = [v3 source];
  v5 = [v4 clientIdentifier];

  v6 = [*(*(a1 + 32) + 24) clientDetailsForIdentifier:v5];
  if ([v6 isPersistentAssertionClient])
  {
    v7 = 0;
  }

  else if ([v6 isUserInteractionClient])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 hasPrefix:@"com.apple.private.dndtool"];
  }

  return v7;
}

- (BOOL)_saveDataToBackingStoreWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(DNDSModeAssertionStore *)self->_store mutableCopy];
  assertions = [v5 assertions];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__DNDSModeAssertionManager__saveDataToBackingStoreWithError___block_invoke;
  v26[3] = &unk_278F8A0B0;
  v26[4] = self;
  v7 = [assertions bs_filter:v26];

  [v5 setAssertions:v7];
  invalidations = [v5 invalidations];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__DNDSModeAssertionManager__saveDataToBackingStoreWithError___block_invoke_2;
  v25[3] = &unk_278F8A950;
  v25[4] = self;
  v9 = [invalidations bs_filter:v25];

  [v5 setInvalidations:v9];
  invalidationRequests = [v5 invalidationRequests];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__DNDSModeAssertionManager__saveDataToBackingStoreWithError___block_invoke_3;
  v24[3] = &unk_278F8A9B8;
  v24[4] = self;
  v11 = [invalidationRequests bs_filter:v24];

  [v5 setInvalidationRequests:v11];
  backingStore = self->_backingStore;
  v23 = 0;
  v13 = [(DNDSBackingStore *)backingStore writeRecord:v5 error:&v23];
  v14 = v23;
  if (v13)
  {
    if (v13 == 1)
    {
      v19 = DNDSLogAssertionManager;
      if (!os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 138543362;
      v28 = v14;
      v16 = "Failed to write store, but error can be ignored; error=%{public}@";
      v17 = v19;
      v18 = 12;
    }

    else
    {
      if (v13 != 2 || (v15 = DNDSLogAssertionManager, !os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT)))
      {
LABEL_9:
        if (!error)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }

      *buf = 0;
      v16 = "Wrote out store to file";
      v17 = v15;
      v18 = 2;
    }

    _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    goto LABEL_9;
  }

  if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeAssertionManager _saveDataToBackingStoreWithError:];
  }

  _DNDSRequestRadar(@"Failed to write store", v14, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSModeAssertionManager.m", 290);
  if (error)
  {
LABEL_10:
    if (v14)
    {
      v20 = v14;
      *error = v14;
    }
  }

LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
  return v13 == 2;
}

uint64_t __61__DNDSModeAssertionManager__saveDataToBackingStoreWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [a2 source];
  v4 = [v3 clientIdentifier];
  v5 = [v2 clientDetailsForIdentifier:v4];

  v6 = [v5 isPersistentAssertionClient];
  return v6;
}

uint64_t __61__DNDSModeAssertionManager__saveDataToBackingStoreWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [a2 assertion];
  v4 = [v3 source];
  v5 = [v4 clientIdentifier];
  v6 = [v2 clientDetailsForIdentifier:v5];

  v7 = [v6 isPersistentAssertionClient];
  return v7;
}

uint64_t __61__DNDSModeAssertionManager__saveDataToBackingStoreWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 source];
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 24);
    v6 = [v3 clientIdentifier];
    v7 = [v5 clientDetailsForIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 isPersistentAssertionClient];

  return v8;
}

- (void)modeAssertionsMatchingPredicate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Unable to find assertions, will return default: error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)modeAssertionInvalidationsMatchingPredicate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Unable to find assertion invalidations, will return default: error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveDataToBackingStoreWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to write store, will request radar; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end