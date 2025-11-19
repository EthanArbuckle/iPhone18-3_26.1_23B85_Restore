@interface HKClinicalIngestionStore
- (HKClinicalIngestionStore)init;
- (HKClinicalIngestionStore)initWithHealthStore:(id)a3;
- (NSString)description;
- (id)_actionCompletionWithObjectOnClientQueue:(id)a3;
- (void)_establishProxyConnection;
- (void)_establishProxyConnectionIfNoObserversArePresent;
- (void)_executeCheapCallOnPluginServerProxy:(id)a3;
- (void)_reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:(id)a3;
- (void)abortIngestionWithCompletion:(id)a3;
- (void)addIngestionStateListener:(id)a3;
- (void)clientRemote_updateIngestionState:(int64_t)a3;
- (void)currentIngestionStateWithCompletion:(id)a3;
- (void)ingestHealthRecordsWithFHIRDocumentHandle:(id)a3 accountIdentifier:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)ingestHealthRecordsWithOptions:(unint64_t)a3 reason:(id)a4 accountIdentifiers:(id)a5 completion:(id)a6;
- (void)pingWithCompletion:(id)a3;
- (void)resetHealthRecordsLastExtractedRowIDWithCompletion:(id)a3;
@end

@implementation HKClinicalIngestionStore

- (HKClinicalIngestionStore)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalIngestionStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HKClinicalIngestionStore;
  v5 = [(HKClinicalStore *)&v18 initWithHealthStore:v4 exportedObject:self];
  v6 = v5;
  if (v5)
  {
    v5->_ivarLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v5);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __48__HKClinicalIngestionStore_initWithHealthStore___block_invoke;
    v15 = &unk_2796DC988;
    objc_copyWeak(&v16, &location);
    [(HKClinicalStore *)v6 setAutomaticProxyReconnectionHandler:&v12];
    v6->_lastKnownIngestionState = 0;
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = HKLogInfrastructure();
    v9 = [v7 initWithName:@"HKClinicalIngestionStore-ingestionStateChangeObservers" loggingCategory:{v8, v12, v13, v14, v15}];
    ingestionStateChangeObservers = v6->_ingestionStateChangeObservers;
    v6->_ingestionStateChangeObservers = v9;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __48__HKClinicalIngestionStore_initWithHealthStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

- (void)pingWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HKClinicalIngestionStore_pingWithCompletion___block_invoke;
  v8[3] = &unk_2796DC9B0;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HKClinicalIngestionStore_pingWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalIngestionStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)ingestHealthRecordsWithOptions:(unint64_t)a3 reason:(id)a4 accountIdentifiers:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a6];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HKClinicalIngestionStore_ingestHealthRecordsWithOptions_reason_accountIdentifiers_completion___block_invoke;
  v18[3] = &unk_2796DC9D8;
  v22 = a3;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__HKClinicalIngestionStore_ingestHealthRecordsWithOptions_reason_accountIdentifiers_completion___block_invoke_2;
  v16[3] = &unk_2796DBFF8;
  v17 = v21;
  v13 = v21;
  v14 = v11;
  v15 = v10;
  [(HKClinicalIngestionStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v18 errorHandler:v16];
}

- (void)ingestHealthRecordsWithFHIRDocumentHandle:(id)a3 accountIdentifier:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a6];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__HKClinicalIngestionStore_ingestHealthRecordsWithFHIRDocumentHandle_accountIdentifier_options_completion___block_invoke;
  v18[3] = &unk_2796DC9D8;
  v19 = v10;
  v20 = v11;
  v22 = a5;
  v21 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__HKClinicalIngestionStore_ingestHealthRecordsWithFHIRDocumentHandle_accountIdentifier_options_completion___block_invoke_2;
  v16[3] = &unk_2796DBFF8;
  v17 = v21;
  v13 = v21;
  v14 = v11;
  v15 = v10;
  [(HKClinicalIngestionStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v18 errorHandler:v16];
}

- (void)abortIngestionWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueErrorHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HKClinicalIngestionStore_abortIngestionWithCompletion___block_invoke;
  v8[3] = &unk_2796DC9B0;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HKClinicalIngestionStore_abortIngestionWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalIngestionStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)resetHealthRecordsLastExtractedRowIDWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HKClinicalIngestionStore_resetHealthRecordsLastExtractedRowIDWithCompletion___block_invoke;
  v8[3] = &unk_2796DC9B0;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HKClinicalIngestionStore_resetHealthRecordsLastExtractedRowIDWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalIngestionStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)addIngestionStateListener:(id)a3
{
  v4 = a3;
  [(HKClinicalIngestionStore *)self _establishProxyConnectionIfNoObserversArePresent];
  [(HKObserverSet *)self->_ingestionStateChangeObservers registerObserver:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HKClinicalIngestionStore_addIngestionStateListener___block_invoke;
  v6[3] = &unk_2796DCA28;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKClinicalIngestionStore *)self currentIngestionStateWithCompletion:v6];
}

uint64_t __54__HKClinicalIngestionStore_addIngestionStateListener___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(result + 32);
    v2 = *(result + 40);
    v4 = *(v3 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__HKClinicalIngestionStore_addIngestionStateListener___block_invoke_2;
    v5[3] = &unk_2796DCA00;
    v5[4] = v3;
    v5[5] = a2;
    return [v4 notifyObserver:v2 handler:v5];
  }

  return result;
}

- (void)currentIngestionStateWithCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  lastKnownIngestionState = self->_lastKnownIngestionState;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (lastKnownIngestionState)
  {
    v4[2](v4, lastKnownIngestionState);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__HKClinicalIngestionStore_currentIngestionStateWithCompletion___block_invoke;
    v8[3] = &unk_2796DC9B0;
    v9 = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__HKClinicalIngestionStore_currentIngestionStateWithCompletion___block_invoke_2;
    v6[3] = &unk_2796DC830;
    v6[4] = self;
    v7 = v9;
    [(HKClinicalIngestionStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
  }
}

void __64__HKClinicalIngestionStore_currentIngestionStateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __64__HKClinicalIngestionStore_currentIngestionStateWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)clientRemote_updateIngestionState:(int64_t)a3
{
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_lastKnownIngestionState == a3)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    self->_lastKnownIngestionState = a3;
    os_unfair_lock_unlock(&self->_ivarLock);
    ingestionStateChangeObservers = self->_ingestionStateChangeObservers;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__HKClinicalIngestionStore_clientRemote_updateIngestionState___block_invoke;
    v6[3] = &unk_2796DCA00;
    v6[4] = self;
    v6[5] = a3;
    [(HKObserverSet *)ingestionStateChangeObservers notifyObservers:v6];
  }
}

- (id)_actionCompletionWithObjectOnClientQueue:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__HKClinicalIngestionStore__actionCompletionWithObjectOnClientQueue___block_invoke;
  v8[3] = &unk_2796DCA78;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [v8 copy];

  return v6;
}

void __69__HKClinicalIngestionStore__actionCompletionWithObjectOnClientQueue___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) healthStore];
  v10 = [v9 clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HKClinicalIngestionStore__actionCompletionWithObjectOnClientQueue___block_invoke_2;
  v14[3] = &unk_2796DCA50;
  v11 = *(a1 + 40);
  v16 = v8;
  v17 = v11;
  v18 = a2;
  v15 = v7;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, v14);
}

uint64_t __69__HKClinicalIngestionStore__actionCompletionWithObjectOnClientQueue___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32), *(a1 + 40));
  }

  return result;
}

- (void)_establishProxyConnectionIfNoObserversArePresent
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = [(HKObserverSet *)self->_ingestionStateChangeObservers count];
  os_unfair_lock_unlock(&self->_ivarLock);
  if (!v3)
  {

    [(HKClinicalIngestionStore *)self _establishProxyConnection];
  }
}

- (void)_reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  v4 = [(HKObserverSet *)self->_ingestionStateChangeObservers count];
  os_unfair_lock_unlock(&self->_ivarLock);
  if (v4)
  {
    [(HKClinicalIngestionStore *)self _executeCheapCallOnPluginServerProxy:v5];
  }
}

- (void)_establishProxyConnection
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__HKClinicalIngestionStore__establishProxyConnection__block_invoke;
  v3[3] = &unk_2796DCAA0;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__HKClinicalIngestionStore__establishProxyConnection__block_invoke_2;
  v2[3] = &unk_2796DC138;
  v2[4] = self;
  [(HKClinicalIngestionStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v3 errorHandler:v2];
}

void __53__HKClinicalIngestionStore__establishProxyConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __53__HKClinicalIngestionStore__establishProxyConnection__block_invoke_2_cold_1(a1);
  }
}

- (void)_executeCheapCallOnPluginServerProxy:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
  {
    [HKClinicalIngestionStore _executeCheapCallOnPluginServerProxy:?];
  }

  [v4 remote_pingWithCompletion:&__block_literal_global_5];
}

void __64__HKClinicalIngestionStore_currentIngestionStateWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_2519FE000, v1, v2, "%{public}@ failed to get current ingestion state: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __53__HKClinicalIngestionStore__establishProxyConnection__block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_2519FE000, v1, v2, "%{public}@: error establishing proxy connection: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_executeCheapCallOnPluginServerProxy:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_2519FE000, v1, OS_LOG_TYPE_DEBUG, "%{public}@: making cheap XCP call to establish connection on %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end