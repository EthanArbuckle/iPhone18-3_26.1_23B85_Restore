@interface DNDSModeAssertionManager
- (BOOL)_saveDataToBackingStoreWithError:(id *)a3;
- (DNDSModeAssertionManager)initWithBackingStore:(id)a3 clientDetailsProvider:(id)a4;
- (DNDSModeAssertionManager)initWithBackingStoreURL:(id)a3 clientDetailsProvider:(id)a4;
- (id)modeAssertionInvalidationsMatchingPredicate:(id)a3;
- (id)modeAssertionsMatchingPredicate:(id)a3;
- (id)updateModeAssertionsWithContextHandler:(id)a3 error:(id *)a4;
- (void)_loadDataFromBackingStore;
- (void)_resolveTransactionForModeAssertionStore;
- (void)dealloc;
@end

@implementation DNDSModeAssertionManager

- (DNDSModeAssertionManager)initWithBackingStoreURL:(id)a3 clientDetailsProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[DNDSJSONBackingStore alloc] initWithRecordClass:objc_opt_class() fileURL:v7 versionNumber:8];

  v9 = [(DNDSModeAssertionManager *)self initWithBackingStore:v8 clientDetailsProvider:v6];
  return v9;
}

- (DNDSModeAssertionManager)initWithBackingStore:(id)a3 clientDetailsProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DNDSModeAssertionManager;
  v9 = [(DNDSModeAssertionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingStore, a3);
    [(DNDSBackingStore *)v10->_backingStore setDelegate:v10];
    objc_storeStrong(&v10->_clientDetailsProvider, a4);
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

- (id)modeAssertionsMatchingPredicate:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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

- (id)modeAssertionInvalidationsMatchingPredicate:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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

- (id)updateModeAssertionsWithContextHandler:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_24912E000, "com.apple.donotdisturb.ModeAssertionManager.updateModeAssertions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);
  os_unfair_lock_lock(&self->_storeLock);
  v8 = objc_autoreleasePoolPush();
  v9 = [[DNDSModeAssertionManagerUpdateContext alloc] initWithStore:self->_store clientDetailsProvider:self->_clientDetailsProvider];
  v10 = v6[2](v6, v9);
  v11 = DNDSLogAssertionManager;
  if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v10;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Executed handler; return=%{BOOL}d", buf, 8u);
  }

  if (v10)
  {
    v12 = [(DNDSModeAssertionManagerUpdateContext *)v9 store];
    if ([(DNDSModeAssertionStore *)self->_store isEqual:v12])
    {
      v13 = 0;
    }

    else
    {
      v15 = [v12 copy];
      store = self->_store;
      self->_store = v15;

      v20 = 0;
      [(DNDSModeAssertionManager *)self _saveDataToBackingStoreWithError:&v20];
      v13 = v20;
      [(DNDSModeAssertionManager *)self _resolveTransactionForModeAssertionStore];
    }

    v14 = [(DNDSModeAssertionManagerUpdateContext *)v9 updateResult];
  }

  else
  {
    v14 = +[DNDSModeAssertionUpdateResult emptyResult];
    v13 = 0;
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_unlock(&self->_storeLock);
  if (a4 && v13)
  {
    v17 = v13;
    *a4 = v13;
  }

  os_activity_scope_leave(&state);

  v18 = *MEMORY[0x277D85DE8];

  return v14;
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
  v3 = [(DNDSModeAssertionStore *)self->_store assertions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__DNDSModeAssertionManager__resolveTransactionForModeAssertionStore__block_invoke;
  v10[3] = &unk_278F8A0B0;
  v10[4] = self;
  v4 = [v3 bs_filter:v10];

  v5 = [(DNDSModeAssertionStore *)self->_store invalidations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__DNDSModeAssertionManager__resolveTransactionForModeAssertionStore__block_invoke_2;
  v9[3] = &unk_278F8A950;
  v9[4] = self;
  v6 = [v5 bs_filter:v9];

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

- (BOOL)_saveDataToBackingStoreWithError:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(DNDSModeAssertionStore *)self->_store mutableCopy];
  v6 = [v5 assertions];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__DNDSModeAssertionManager__saveDataToBackingStoreWithError___block_invoke;
  v26[3] = &unk_278F8A0B0;
  v26[4] = self;
  v7 = [v6 bs_filter:v26];

  [v5 setAssertions:v7];
  v8 = [v5 invalidations];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__DNDSModeAssertionManager__saveDataToBackingStoreWithError___block_invoke_2;
  v25[3] = &unk_278F8A950;
  v25[4] = self;
  v9 = [v8 bs_filter:v25];

  [v5 setInvalidations:v9];
  v10 = [v5 invalidationRequests];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__DNDSModeAssertionManager__saveDataToBackingStoreWithError___block_invoke_3;
  v24[3] = &unk_278F8A9B8;
  v24[4] = self;
  v11 = [v10 bs_filter:v24];

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
        if (!a3)
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
  if (a3)
  {
LABEL_10:
    if (v14)
    {
      v20 = v14;
      *a3 = v14;
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