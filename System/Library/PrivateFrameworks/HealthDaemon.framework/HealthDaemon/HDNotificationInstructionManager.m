@interface HDNotificationInstructionManager
- (BOOL)enumerateValidNotificationInstructionsForClientIdentifier:(id)a3 action:(int64_t)a4 error:(id *)a5 enumerationBlock:(id)a6;
- (BOOL)invalidateNotificationInstructionsWithMessageIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)obliterateNotificationInstructionsWithError:(id *)a3;
- (HDNotificationInstructionManager)initWithProfile:(id)a3 unitTest_nowDate:(id)a4 unitTest_didEvaluateIfMaintenanceWorkIsNeeded:(id)a5;
- (id)diagnosticDescription;
- (void)_lock_unregisterObserver:(void *)a3 clientIdentifier:;
- (void)_queue_enqueueMaintenanceInvalidationIfNeeded;
- (void)_unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:(void *)a1;
- (void)currentDate;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)insertNotificationInstruction:(id)a3 completion:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)registerObserver:(id)a3 forClientIdentifier:(id)a4 queue:(id)a5;
- (void)unregisterObserver:(id)a3;
- (void)unregisterObserver:(id)a3 forClientIdentifier:(id)a4;
@end

@implementation HDNotificationInstructionManager

- (HDNotificationInstructionManager)initWithProfile:(id)a3 unitTest_nowDate:(id)a4 unitTest_didEvaluateIfMaintenanceWorkIsNeeded:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = HDNotificationInstructionManager;
  v11 = [(HDNotificationInstructionManager *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    v13 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v13;

    v12->_lock._os_unfair_lock_opaque = 0;
    if (v9)
    {
      objc_storeStrong(&v12->_unitTest_nowDate, a4);
    }

    if (v10)
    {
      [(HDNotificationInstructionManager *)v12 setUnitTest_didEvaluateIfMaintenanceWorkIsNeeded:v10];
    }

    v12->_queue_hasEnqueuedMaintenanceWork = 0;
    v15 = [v8 daemon];
    v16 = [v15 behavior];
    v12->_queue_hasInstructionsToInvalidate = [v16 invalidatesNotificationInstructionsOnLaunch];

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_observersByClientIdentifier = v12->_lock_observersByClientIdentifier;
    v12->_lock_observersByClientIdentifier = v17;

    [v8 registerProfileReadyObserver:v12 queue:v12->_queue];
    v19 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v19 addObject:v12];
  }

  return v12;
}

- (id)diagnosticDescription
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_283CAFB80];
  queue = self->_queue;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __57__HDNotificationInstructionManager_diagnosticDescription__block_invoke;
  v11 = &unk_278613920;
  v12 = v3;
  v13 = self;
  v5 = v3;
  dispatch_async_and_wait(queue, &v8);
  v6 = [v5 componentsJoinedByString:{@"\n", v8, v9, v10, v11}];

  return v6;
}

void __57__HDNotificationInstructionManager_diagnosticDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t- hasEnqueuedMaintenanceWork: %d", *(*(a1 + 40) + 25)];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t- hasInstructionsToInvalidate: %d", *(*(a1 + 40) + 24)];
  [v4 addObject:v5];
}

- (void)_unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:(void *)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a1 unitTest_didEvaluateIfMaintenanceWorkIsNeeded];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v10 = 138543874;
      v11 = objc_opt_class();
      v12 = 2048;
      v13 = a1;
      v14 = 1024;
      v15 = a2;
      v8 = v11;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Did evaluate for maintenance work: %d", &v10, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)currentDate
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = [MEMORY[0x277CBEAA8] date];
    }

    v1 = vars8;
  }

  return a1;
}

- (void)profileDidBecomeReady:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [v5 database];
  [v6 addProtectedDataObserver:self queue:self->_queue];

  v7 = [v5 database];

  LODWORD(v5) = [v7 isProtectedDataAvailable];
  if (v5)
  {

    [(HDNotificationInstructionManager *)self _queue_enqueueMaintenanceInvalidationIfNeeded];
  }
}

- (void)_queue_enqueueMaintenanceInvalidationIfNeeded
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (*(a1 + 24) == 1 && (*(a1 + 25) & 1) == 0)
    {
      v2 = [a1 maintenanceOperationName];
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v4 = [WeakRetained database];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __81__HDNotificationInstructionManager__queue_enqueueMaintenanceInvalidationIfNeeded__block_invoke;
      v9[3] = &unk_278625D40;
      v9[4] = a1;
      v5 = [HDMaintenanceOperation maintenanceOperationWithName:v2 database:v4 asynchronousBlock:v9];

      v6 = objc_loadWeakRetained((a1 + 8));
      v7 = [v6 daemon];
      v8 = [v7 maintenanceWorkCoordinator];
      [v8 enqueueMaintenanceOperation:v5];

      *(a1 + 25) = 1;
      [(HDNotificationInstructionManager *)a1 _unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:?];
    }

    else
    {

      [(HDNotificationInstructionManager *)a1 _unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:?];
    }
  }
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {

    [(HDNotificationInstructionManager *)self _queue_enqueueMaintenanceInvalidationIfNeeded];
  }
}

void __81__HDNotificationInstructionManager__queue_enqueueMaintenanceInvalidationIfNeeded__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__HDNotificationInstructionManager__queue_enqueueMaintenanceInvalidationIfNeeded__block_invoke_2;
  v9[3] = &unk_278614E28;
  v9[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async_and_wait(v7, v9);
}

uint64_t __81__HDNotificationInstructionManager__queue_enqueueMaintenanceInvalidationIfNeeded__block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 16));
    v27 = 0;
    dispatch_assert_queue_V2(*(v2 + 16));
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__135;
    v36 = __Block_byref_object_dispose__135;
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    v4 = [WeakRetained database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __101__HDNotificationInstructionManager__queue_readInvalidInstructionsAndCheckForValidInstructions_error___block_invoke;
    v39 = &unk_278625D90;
    v40 = v2;
    v41 = &v28;
    v42 = &v32;
    v43 = 50;
    v5 = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v4 error:&v27 block:buf];

    if (v5)
    {
      v6 = v29;
      if (v29[3])
      {
        v7 = 1;
      }

      else
      {
        v7 = [v33[5] count] == 50;
        v6 = v29;
      }

      *(v6 + 24) = v7;
      v8 = [v33[5] copy];
    }

    else
    {
      v8 = 0;
      v7 = 1;
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);

    v9 = v27;
    if (v8)
    {
      if (![v8 count])
      {
        goto LABEL_11;
      }

      v10 = [v8 copy];
      v32 = 0;
      v11 = v10;
      dispatch_assert_queue_V2(*(v2 + 16));
      v12 = objc_loadWeakRetained((v2 + 8));
      v13 = [v12 database];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __72__HDNotificationInstructionManager__queue_invalidateInstructions_error___block_invoke;
      v39 = &unk_278613218;
      v14 = v11;
      v40 = v14;
      v41 = v2;
      v15 = [(HDHealthEntity *)HDNotificationInstructionEntity performWriteTransactionWithHealthDatabase:v13 error:&v32 block:buf];

      v9 = v32;
      if (!v15)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC300];
        if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
        {
          v24 = v20;
          v25 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 2114;
          *&buf[14] = v9;
          v26 = v25;
          _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Error invalidating instructions: %{public}@", buf, 0x16u);
        }
      }

      else
      {
LABEL_11:
        *(v2 + 24) = v7;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC300];
      if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        v19 = v18;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Error checking for invalid instructions: %{public}@", buf, 0x16u);
      }
    }

    *(v2 + 25) = 0;
  }

  v21 = *(*(a1 + 40) + 16);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

BOOL __101__HDNotificationInstructionManager__queue_readInvalidInstructionsAndCheckForValidInstructions_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [(HDNotificationInstructionManager *)*(a1 + 32) currentDate];
  v7 = *(a1 + 56);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __101__HDNotificationInstructionManager__queue_readInvalidInstructionsAndCheckForValidInstructions_error___block_invoke_2;
  v11[3] = &unk_278625D68;
  v12 = v5;
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = [HDNotificationInstructionEntity enumerateNotificationInstructionsWithSetCriteriaNotExpiredBeforeDate:v6 transaction:v8 limit:v7 error:a3 enumerationHandler:v11];

  return v9;
}

uint64_t __101__HDNotificationInstructionManager__queue_readInvalidInstructionsAndCheckForValidInstructions_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 criteria];
  v7 = a1[4];
  v14 = 0;
  v8 = [v6 isValidWithDatabaseTransaction:v7 error:&v14];
  v9 = v14;

  if (v8)
  {
    if (v8 == 2)
    {
      [*(*(a1[6] + 8) + 40) addObject:v5];
    }

    else if (v8 == 1)
    {
      v10 = 1;
      *(*(a1[5] + 8) + 24) = 1;
      goto LABEL_12;
    }

    v10 = 1;
    goto LABEL_12;
  }

  v11 = v9;
  if (v11)
  {
    if (a3)
    {
      v12 = v11;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

uint64_t __72__HDNotificationInstructionManager__queue_invalidateInstructions_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v17 + 1) + 8 * v9) messageIdentifier];
        v11 = [(HDNotificationInstructionManager *)*(a1 + 40) currentDate];
        v12 = [HDNotificationInstructionEntity invalidateNotificationInstructionWithMessageIdentifier:v10 modificationDate:v11 transaction:v5 error:a3];

        if (!v12)
        {
          v13 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)enumerateValidNotificationInstructionsForClientIdentifier:(id)a3 action:(int64_t)a4 error:(id *)a5 enumerationBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(HDNotificationInstructionManager *)self currentDate];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [WeakRetained database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __124__HDNotificationInstructionManager_enumerateValidNotificationInstructionsForClientIdentifier_action_error_enumerationBlock___block_invoke;
  v19[3] = &unk_27861F2A0;
  v20 = v10;
  v21 = v12;
  v22 = v11;
  v23 = a4;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  LOBYTE(a5) = [HDNotificationInstructionEntity attemptProtectedReadTransactionWithUnprotectedFallbackWithHealthDatabase:v14 error:a5 block:v19];

  return a5;
}

BOOL __124__HDNotificationInstructionManager_enumerateValidNotificationInstructionsForClientIdentifier_action_error_enumerationBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 56);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __124__HDNotificationInstructionManager_enumerateValidNotificationInstructionsForClientIdentifier_action_error_enumerationBlock___block_invoke_2;
  v12[3] = &unk_278625DB8;
  v13 = v5;
  v14 = v7;
  v15 = *(a1 + 48);
  v9 = v5;
  v10 = [HDNotificationInstructionEntity enumerateNotificationInstructionsWithClientIdentifier:v8 action:v6 notExpiredBeforeDate:v14 transaction:v9 error:a3 enumerationHandler:v12];

  return v10;
}

uint64_t __124__HDNotificationInstructionManager_enumerateValidNotificationInstructionsForClientIdentifier_action_error_enumerationBlock___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = a1[5];
  v15 = 0;
  v8 = [v5 isValidWithDatabaseTransaction:v6 date:v7 error:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    if (v8 != 1)
    {
      v11 = 1;
      goto LABEL_11;
    }

LABEL_5:
    v11 = (*(a1[6] + 16))();
    goto LABEL_11;
  }

  if ([v9 hk_isDatabaseAccessibilityError])
  {
    goto LABEL_5;
  }

  v12 = v10;
  if (v12)
  {
    if (a3)
    {
      v13 = v12;
      *a3 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)insertNotificationInstruction:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HDNotificationInstructionManager_insertNotificationInstruction_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __77__HDNotificationInstructionManager_insertNotificationInstruction_completion___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v11 = 0;
  v4 = v2;
  if (v3)
  {
    dispatch_assert_queue_V2(*(v3 + 16));
    WeakRetained = objc_loadWeakRetained((v3 + 8));
    v6 = [WeakRetained database];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__HDNotificationInstructionManager__queue_insertOrIgnoreNotificationInstruction_error___block_invoke;
    v12[3] = &unk_278613218;
    v7 = v4;
    v13 = v7;
    v14 = v3;
    v8 = [(HDHealthEntity *)HDNotificationInstructionEntity performWriteTransactionWithHealthDatabase:v6 error:&v11 block:v12];

    if (v8)
    {
      v9 = [v7 criteria];

      if (v9)
      {
        *(v3 + 24) = 1;
      }
    }
  }

  v10 = v11;
  (*(a1[6] + 16))();
}

BOOL __87__HDNotificationInstructionManager__queue_insertOrIgnoreNotificationInstruction_error___block_invoke(int8x16_t *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDNotificationInstructionEntity insertOrIgnoreNotificationInstruction:a1[2].i64[0] transaction:v5 error:a3];
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__HDNotificationInstructionManager__queue_insertOrIgnoreNotificationInstruction_error___block_invoke_2;
    v10[3] = &unk_278613920;
    v9 = a1[2];
    v7 = v9.i64[0];
    v11 = vextq_s8(v9, v9, 8uLL);
    [v5 onCommit:v10 orRollback:0];
  }

  return v6;
}

void __87__HDNotificationInstructionManager__queue_insertOrIgnoreNotificationInstruction_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    os_unfair_lock_lock((v1 + 28));
    v3 = *(v1 + 32);
    v4 = [v2 clientIdentifier];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __88__HDNotificationInstructionManager__notifyObserversForDidInsertNotificationInstruction___block_invoke;
    v6[3] = &unk_278625DE0;
    v6[4] = v1;
    v7 = v2;
    [v5 notifyObservers:v6];

    os_unfair_lock_unlock((v1 + 28));
  }
}

- (BOOL)invalidateNotificationInstructionsWithMessageIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__HDNotificationInstructionManager_invalidateNotificationInstructionsWithMessageIdentifiers_error___block_invoke;
  v11[3] = &unk_278613218;
  v12 = v6;
  v13 = self;
  v9 = v6;
  LOBYTE(a4) = [(HDHealthEntity *)HDNotificationInstructionEntity performWriteTransactionWithHealthDatabase:v8 error:a4 block:v11];

  return a4;
}

uint64_t __99__HDNotificationInstructionManager_invalidateNotificationInstructionsWithMessageIdentifiers_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [(HDNotificationInstructionManager *)*(a1 + 40) currentDate];
        LODWORD(v10) = [HDNotificationInstructionEntity invalidateNotificationInstructionWithMessageIdentifier:v10 modificationDate:v11 transaction:v5 error:a3];

        if (!v10)
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)obliterateNotificationInstructionsWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  LOBYTE(a3) = [(HDHealthEntity *)HDNotificationInstructionEntity performWriteTransactionWithHealthDatabase:v5 error:a3 block:&__block_literal_global_169];

  return a3;
}

- (void)registerObserver:(id)a3 forClientIdentifier:(id)a4 queue:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_lock_observersByClientIdentifier objectForKeyedSubscript:v8];
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = HKLogInfrastructure();
    v10 = [v11 initWithName:v8 loggingCategory:v12];

    [(NSMutableDictionary *)self->_lock_observersByClientIdentifier setObject:v10 forKeyedSubscript:v8];
  }

  [v10 registerObserver:v13 queue:v9];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)a3 forClientIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HDNotificationInstructionManager *)self _lock_unregisterObserver:v7 clientIdentifier:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_unregisterObserver:(void *)a3 clientIdentifier:
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    os_unfair_lock_assert_owner((a1 + 28));
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__HDNotificationInstructionManager__lock_unregisterObserver_clientIdentifier___block_invoke;
    v8[3] = &unk_278613920;
    v8[4] = a1;
    v9 = v5;
    [v7 unregisterObserver:v6 runIfLastObserver:v8];
  }
}

- (void)unregisterObserver:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMutableDictionary *)self->_lock_observersByClientIdentifier allKeys];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDNotificationInstructionManager *)self _lock_unregisterObserver:v4 clientIdentifier:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

@end