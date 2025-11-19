@interface HDProtectedDataOperationScheduler
- (HDProtectedDataOperationScheduler)initWithProfile:(id)a3;
- (id)diagnosticDescription;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)registerObserver:(id)a3;
- (void)registerProtectedDataAvailableObserver:(id)a3;
- (void)startEnqueuedWorkWithName:(id)a3;
- (void)startWorkNow:(BOOL)a3 name:(id)a4 asynchronousBlock:(id)a5;
- (void)unregisterObserver:(id)a3;
@end

@implementation HDProtectedDataOperationScheduler

- (HDProtectedDataOperationScheduler)initWithProfile:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HDProtectedDataOperationScheduler;
  v5 = [(HDProtectedDataOperationScheduler *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v7;

    v6->_queue_hasNotifiedForProfileReady = 0;
    v9 = objc_alloc(MEMORY[0x277CCDA88]);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-all", objc_opt_class()];
    v11 = HKLogInfrastructure();
    v12 = [v9 initWithName:v10 loggingCategory:v11];
    clientQueue_allClients = v6->_clientQueue_allClients;
    v6->_clientQueue_allClients = v12;

    v14 = objc_alloc(MEMORY[0x277CCDA88]);
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-awaiting-protected-data-available", objc_opt_class()];
    v16 = HKLogInfrastructure();
    v17 = [v14 initWithName:v15 loggingCategory:v16];
    clientQueue_clientsAwaitingProtectedDataAvailable = v6->_clientQueue_clientsAwaitingProtectedDataAvailable;
    v6->_clientQueue_clientsAwaitingProtectedDataAvailable = v17;

    v19 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v19 addObject:v6];
  }

  return v6;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDProtectedDataOperationScheduler_registerObserver___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(clientQueue, v7);
}

void __54__HDProtectedDataOperationScheduler_registerObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) registerObserver:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 1)
  {
    v3 = *(a1 + 40);

    [v3 protectedDataOperationSchedulerProfileIsReady:?];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    [WeakRetained registerProfileReadyObserver:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HDProtectedDataOperationScheduler_unregisterObserver___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(clientQueue, v7);
}

uint64_t __56__HDProtectedDataOperationScheduler_unregisterObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) unregisterObserver:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);

  return [v3 unregisterObserver:v2];
}

- (void)registerProtectedDataAvailableObserver:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HDProtectedDataOperationScheduler_registerProtectedDataAvailableObserver___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(clientQueue, v7);
}

uint64_t __76__HDProtectedDataOperationScheduler_registerProtectedDataAvailableObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained database];
  [v3 addProtectedDataObserver:*(a1 + 32) queue:*(*(a1 + 32) + 16)];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [v4 database];
  v6 = [v5 isProtectedDataAvailable];

  if (v6)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v7 protectedDataOperationSchedulerProtectedDataIsAvailable:v8];
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 32);

    return [v11 registerObserver:v10];
  }
}

- (void)startWorkNow:(BOOL)a3 name:(id)a4 asynchronousBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v16 = [HDMaintenanceOperation maintenanceOperationWithName:v9 database:v11 asynchronousBlock:v8];

  v12 = objc_loadWeakRetained(&self->_profile);
  v13 = [v12 daemon];
  v14 = [v13 maintenanceWorkCoordinator];
  v15 = v14;
  if (v6)
  {
    [v14 startOperationImmediately:v16];
  }

  else
  {
    [v14 enqueueMaintenanceOperation:v16];
  }
}

- (void)startEnqueuedWorkWithName:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained daemon];
  v7 = [v6 maintenanceWorkCoordinator];
  v8 = [v7 startNextOperationWithNameImmediately:v4];

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = HKLogInfrastructure();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v4;
      v10 = v13;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did not find a pending operation with name: %{public}@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)profileDidBecomeReady:(id)a3
{
  dispatch_assert_queue_V2(self->_clientQueue);
  self->_queue_hasNotifiedForProfileReady = 1;
  clientQueue_allClients = self->_clientQueue_allClients;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HDProtectedDataOperationScheduler_profileDidBecomeReady___block_invoke;
  v5[3] = &unk_27861FD78;
  v5[4] = self;
  [(HKSynchronousObserverSet *)clientQueue_allClients notifyObservers:v5];
}

- (id)diagnosticDescription
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_283CAEC38];
  clientQueue = self->_clientQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __58__HDProtectedDataOperationScheduler_diagnosticDescription__block_invoke;
  v11 = &unk_278613920;
  v12 = self;
  v13 = v3;
  v5 = v3;
  dispatch_async_and_wait(clientQueue, &v8);
  v6 = [v5 componentsJoinedByString:{@"\n", v8, v9, v10, v11, v12}];

  return v6;
}

void __58__HDProtectedDataOperationScheduler_diagnosticDescription__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__HDProtectedDataOperationScheduler_diagnosticDescription__block_invoke_2;
  v2[3] = &unk_27861FD78;
  v3 = *(a1 + 40);
  [v1 notifyObservers:v2];
}

void __58__HDProtectedDataOperationScheduler_diagnosticDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 addObject:v3];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_clientQueue);
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    clientQueue_clientsAwaitingProtectedDataAvailable = self->_clientQueue_clientsAwaitingProtectedDataAvailable;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__HDProtectedDataOperationScheduler_database_protectedDataDidBecomeAvailable___block_invoke;
    v21[3] = &unk_27861FDA0;
    v21[4] = self;
    v8 = v6;
    v22 = v8;
    [(HKSynchronousObserverSet *)clientQueue_clientsAwaitingProtectedDataAvailable notifyObservers:v21];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(HKSynchronousObserverSet *)self->_clientQueue_clientsAwaitingProtectedDataAvailable unregisterObserver:*(*(&v17 + 1) + 8 * v13++), v17];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v15 = [WeakRetained database];
    [v15 removeProtectedDataObserver:self];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __78__HDProtectedDataOperationScheduler_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 protectedDataOperationSchedulerProtectedDataIsAvailable:v3];
  [*(a1 + 40) addObject:v4];
}

@end