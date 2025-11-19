@interface HDConceptIndexManager
- (BOOL)_computeIsEnabled;
- (BOOL)_updateConceptIndexWithReason:(id)a3;
- (BOOL)unitTest_hasScheduledIndexing;
- (HDConceptIndexManager)init;
- (HDConceptIndexManager)initWithConceptIndexerClass:(Class)a3 batchSize:(unint64_t)a4 profile:(id)a5;
- (HDConceptIndexManager)initWithProfile:(id)a3;
- (id)_takeAssertionWithError:(uint64_t)a1;
- (uint64_t)_canAutomaticallyScheduleConceptIndexing;
- (unint64_t)currentExecutionState;
- (void)_clearHasScheduledIndexing;
- (void)_dispatchDelayedOperationWithReason:(uint64_t)a1;
- (void)_setObservationForDataManager:(uint64_t)a1;
- (void)accountExistenceNotifier:(id)a3 didChangeHealthRecordAccountExistence:(BOOL)a4;
- (void)addObserver:(id)a3;
- (void)contentDatabaseDidBecomeAvailable:(BOOL)a3;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)didImportOntologyShard;
- (void)invalidateAndWait;
- (void)profileDidBecomeReady:(id)a3;
- (void)resetWithReindex;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
- (void)unitTest_setHasScheduledIndexing:(BOOL)a3;
@end

@implementation HDConceptIndexManager

- (HDConceptIndexManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDConceptIndexManager)initWithProfile:(id)a3
{
  v4 = a3;
  v5 = [(HDConceptIndexManager *)self initWithConceptIndexerClass:objc_opt_class() batchSize:20 profile:v4];

  return v5;
}

- (HDConceptIndexManager)initWithConceptIndexerClass:(Class)a3 batchSize:(unint64_t)a4 profile:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (a4)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"HDConceptIndexManager.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"batchSize"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"HDConceptIndexManager.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"profile"}];

LABEL_3:
  v31.receiver = self;
  v31.super_class = HDConceptIndexManager;
  v11 = [(HDConceptIndexManager *)&v31 init];
  v12 = v11;
  if (v11)
  {
    atomic_store(0, &v11->_isInvalidated);
    *&v11->_hasScheduledIndexing = 0;
    v11->_stateLock._os_unfair_lock_opaque = 0;
    v13 = HKCreateSerialDispatchQueue();
    delayedOperationQueue = v12->_delayedOperationQueue;
    v12->_delayedOperationQueue = v13;

    objc_storeWeak(&v12->_profile, v10);
    v12->_conceptIndexerClass = a3;
    v12->_batchSize = a4;
    v15 = objc_alloc(MEMORY[0x277CCD738]);
    v16 = [v15 initWithName:@"concept-index-scheduler-observers" loggingCategory:*MEMORY[0x277CCC2B0]];
    observerSet = v12->_observerSet;
    v12->_observerSet = v16;

    v12->_conceptIndexUpdateDebounceIntervalOverride = 0.25;
    v18 = objc_alloc_init(MEMORY[0x277CCA940]);
    cachedReasonsForReindex = v12->_cachedReasonsForReindex;
    v12->_cachedReasonsForReindex = v18;

    objc_initWeak(&location, v12);
    v20 = objc_alloc(MEMORY[0x277CCDD98]);
    v21 = v12->_delayedOperationQueue;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __71__HDConceptIndexManager_initWithConceptIndexerClass_batchSize_profile___block_invoke;
    v28[3] = &unk_278616F38;
    objc_copyWeak(&v29, &location);
    v22 = [v20 initWithMode:1 queue:v21 delay:v28 block:2.0];
    updateIndexOperation = v12->_updateIndexOperation;
    v12->_updateIndexOperation = v22;

    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    [WeakRetained registerProfileReadyObserver:v12 queue:0];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v12;
}

uint64_t __71__HDConceptIndexManager_initWithConceptIndexerClass_batchSize_profile___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v32 = WeakRetained;
    dispatch_assert_queue_V2(WeakRetained[8]);
    v3 = *(v32 + 72);
    v4 = [v3 count];
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v6 = v5;
    if (v4 >= 2)
    {
      [v5 appendString:@"["];
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __HDStringForIndexTriggerReasons_block_invoke;
    v41 = &unk_278623460;
    v7 = v3;
    v42 = v7;
    [v6 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v7, buf}];
    if (v4 >= 2)
    {
      [v6 appendString:@"]"];
    }

    [*(v32 + 72) removeAllObjects];
    v8 = v6;
    dispatch_assert_queue_V2(*(v32 + 64));
    v9 = v32;
    if (*(v32 + 61) == 1)
    {
      _HKInitializeLogging();
      v10 = HKLogConceptIndex();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v32;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting concept index.", buf, 0xCu);
      }

      v11 = *(v32 + 48);
      v12 = objc_loadWeakRetained((v32 + 16));
      v35 = 0;
      v13 = [v11 resetIndexManagerStateForProfile:v12 withError:&v35];
      v14 = v35;

      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        v17 = HKLogConceptIndex();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset concept index with error :%{public}@", buf, 0x16u);
        }

        goto LABEL_20;
      }

      *(v32 + 61) = 0;

      v9 = v32;
    }

    if ([(HDConceptIndexManager *)v9 _computeIsEnabled])
    {
      os_unfair_lock_lock((v32 + 56));
      if (*(v32 + 60) == 1)
      {
        os_unfair_lock_unlock((v32 + 56));
        _HKInitializeLogging();
        v15 = HKLogConceptIndex();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

        if (!v16)
        {
LABEL_29:

          v2 = v32;
          goto LABEL_30;
        }

        v14 = HKLogConceptIndex();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v32;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "%{public}@: Skipping scheduling of indexing operation, we already have a scheduled operation.", buf, 0xCu);
        }
      }

      else
      {
        *(v32 + 60) = 1;
        os_unfair_lock_unlock((v32 + 56));
        [*(v32 + 32) invalidate];
        v34 = 0;
        v18 = [(HDConceptIndexManager *)v32 _takeAssertionWithError:?];
        v14 = v34;
        v19 = *(v32 + 32);
        *(v32 + 32) = v18;

        v20 = v32;
        if (!*(v32 + 32))
        {
          _HKInitializeLogging();
          v21 = HKLogConceptIndex();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v30 = [v14 localizedDescription];
            *buf = 138543618;
            *&buf[4] = v32;
            *&buf[12] = 2114;
            *&buf[14] = v30;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Was not able to take out initial acessibility assertion with error %{public}@. Proceeding to schedule indexing work, and try to take assertion later.", buf, 0x16u);
          }

          v20 = v32;
        }

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Indexing operation with reason %@", v20, v8];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __85__HDConceptIndexManager__delayedOperationQueue_scheduleConceptIndexUpdateWithReason___block_invoke;
        v41 = &unk_278623410;
        v42 = v32;
        v23 = v8;
        v43 = v23;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __85__HDConceptIndexManager__delayedOperationQueue_scheduleConceptIndexUpdateWithReason___block_invoke_2;
        v33[3] = &unk_278614DB0;
        v33[4] = v32;
        v24 = [HDMaintenanceOperation maintenanceOperationWithName:v22 asynchronousBlock:buf canceledBlock:v33];

        _HKInitializeLogging();
        v25 = HKLogConceptIndex();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v36 = 138543618;
          v37 = v32;
          v38 = 2114;
          v39 = v23;
          _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling Indexing operation on maintenance coordinator with reason: %{public}@", v36, 0x16u);
        }

        v26 = objc_loadWeakRetained((v32 + 16));
        v27 = [v26 daemon];
        v28 = [v27 maintenanceWorkCoordinator];
        [v28 enqueueMaintenanceOperation:v24];
      }

LABEL_28:

      goto LABEL_29;
    }

    v14 = _Block_copy(*(v32 + 104));
    if (!v14)
    {
      goto LABEL_28;
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:119 format:@"Concept Index manager is not enabled and wont perform any work."];
    (v14[2].isa)(v14, 0, 0, v17);
LABEL_20:

    goto LABEL_28;
  }

LABEL_30:
  v29 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (void)resetWithReindex
{
  delayedOperationQueue = self->_delayedOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HDConceptIndexManager_resetWithReindex__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(delayedOperationQueue, block);
  if ([(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {
    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

uint64_t __41__HDConceptIndexManager_resetWithReindex__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 61) & 1) == 0)
  {
    *(v1 + 61) = 1;
  }

  return result;
}

- (uint64_t)_canAutomaticallyScheduleConceptIndexing
{
  v27 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 16));
    v3 = [WeakRetained daemon];
    v4 = [v3 behavior];
    v5 = [v4 healthAppNotInstalled];

    v6 = objc_loadWeakRetained((v1 + 16));
    v7 = [v6 daemon];
    v8 = [v7 behavior];
    if ([v8 performsAutomaticConceptIndexing])
    {
      v9 = *(v1 + 96) | v5;

      if ((v9 & 1) == 0)
      {
        result = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v10 = HKLogConceptIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HKStringFromBool();
      v12 = objc_loadWeakRetained((v1 + 16));
      v13 = [v12 daemon];
      v14 = [v13 behavior];
      [v14 performsAutomaticConceptIndexing];
      v15 = HKStringFromBool();
      v16 = *(v1 + 96);
      v17 = HKStringFromBool();
      v19 = 138544130;
      v20 = v1;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v15;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot automatically schedule concept indexing. Health App Installed %{public}@, performsAutomaticConceptIndexing %{public}@, ignoresAutomaticProcessingTriggers %{public}@", &v19, 0x2Au);
    }

    result = 0;
  }

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_dispatchDelayedOperationWithReason:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 64);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__HDConceptIndexManager__dispatchDelayedOperationWithReason___block_invoke;
    v6[3] = &unk_278613920;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)invalidateAndWait
{
  atomic_store(1u, &self->_isInvalidated);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained internalContentDatabaseManager];
  [v4 removeOntologyShardImportObserver:self];

  v6 = objc_loadWeakRetained(&self->_profile);
  v5 = [v6 internalContentDatabaseManager];
  [v5 removeContentDatabaseAvailabilityObserver:self];
}

- (unint64_t)currentExecutionState
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_hasScheduledIndexing)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (void)dealloc
{
  [(HDConceptIndexManager *)self _setObservationForDataManager:?];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained database];
  [v4 removeProtectedDataObserver:self];

  [(_HKDelayedOperation *)self->_updateIndexOperation invalidate];
  [(HDAssertion *)self->_preparedDatabaseAccessibilityAssertion invalidate];
  v5.receiver = self;
  v5.super_class = HDConceptIndexManager;
  [(HDConceptIndexManager *)&v5 dealloc];
}

- (void)_setObservationForDataManager:(uint64_t)a1
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v5 = [WeakRetained daemon];
    v6 = [v5 behavior];
    if ([v6 futureMigrationsEnabled])
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [MEMORY[0x277CCD8D8] medicalRecordTypesWithOptions:{v7, 0}];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = objc_loadWeakRetained((a1 + 16));
          v15 = [v14 dataManager];
          v16 = v15;
          if (a2)
          {
            [v15 addObserver:a1 forDataType:v13];
          }

          else
          {
            [v15 removeObserver:a1 forDataType:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  observerSet = self->_observerSet;
  v5 = a3;
  [(HKObserverSet *)observerSet registerObserver:v5];
  v6 = self->_observerSet;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HDConceptIndexManager_addObserver___block_invoke;
  v7[3] = &unk_2786233C8;
  v7[4] = self;
  [(HKObserverSet *)v6 notifyObserver:v5 handler:v7];
}

void __37__HDConceptIndexManager_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 conceptIndexManagerDidChangeExecutionState:{objc_msgSend(v2, "currentExecutionState")}];
}

- (BOOL)_computeIsEnabled
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  v2 = atomic_load((a1 + 40));
  if ((v2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v7 = [WeakRetained daemon];
    v8 = [v7 behavior];
    v9 = [v8 supportsOntology];

    if (v9)
    {
      v10 = [WeakRetained daemon];
      v11 = [v10 behavior];
      v12 = [v11 ontologyIndexingEnabled];

      _HKInitializeLogging();
      if (v12)
      {
        v13 = HKLogHealthOntology();
        v6 = 1;
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

        if (v14)
        {
          v15 = HKLogHealthOntology();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v21 = 138543362;
            v22 = a1;
            _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "%{public}@: Concept Indexing Is Enabled", &v21, 0xCu);
          }

          goto LABEL_21;
        }

LABEL_22:

        goto LABEL_23;
      }

      v18 = HKLogConceptIndex();
      v6 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

      if (!v6)
      {
        goto LABEL_22;
      }

      v15 = HKLogConceptIndex();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v21 = 138543362;
        v22 = a1;
        v17 = "%{public}@: Indexing not enabled: behavior for indexing disabled";
        goto LABEL_19;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = HKLogConceptIndex();
      v6 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

      if (!v6)
      {
        goto LABEL_22;
      }

      v15 = HKLogConceptIndex();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v21 = 138543362;
        v22 = a1;
        v17 = "%{public}@: Indexing not enabled: behavior does not support ontology";
LABEL_19:
        _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, v17, &v21, 0xCu);
      }
    }

    v6 = 0;
LABEL_21:

    goto LABEL_22;
  }

  _HKInitializeLogging();
  v3 = HKLogConceptIndex();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

  if (v4)
  {
    WeakRetained = HKLogConceptIndex();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = a1;
      _os_log_impl(&dword_228986000, WeakRetained, OS_LOG_TYPE_INFO, "%{public}@: Indexing is not enabled: either ontology is currently updating, or the index manager has been invalidated.", &v21, 0xCu);
    }

    v6 = 0;
    goto LABEL_22;
  }

LABEL_12:
  v6 = 0;
LABEL_23:
  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_takeAssertionWithError:(uint64_t)a1
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    v9 = [v4 stringWithFormat:@"%@-%@", v6, v8];

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v11 = [WeakRetained database];
    v21 = 0;
    v12 = [v11 takeAccessibilityAssertionWithOwnerIdentifier:v9 timeout:&v21 error:300.0];
    v13 = v21;

    if (!v12)
    {
      _HKInitializeLogging();
      v14 = HKLogHealthOntology();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

      if (v15)
      {
        v16 = HKLogHealthOntology();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v13 localizedDescription];
          *buf = 138543618;
          v23 = a1;
          v24 = 2114;
          v25 = v17;
          _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "%{public}@: unable to take accessibility assertion with error: %{public}@.", buf, 0x16u);
        }
      }
    }

    if (a2)
    {
      v18 = v13;
      *a2 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

void __85__HDConceptIndexManager__delayedOperationQueue_scheduleConceptIndexUpdateWithReason___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:*(a1 + 32) activityName:@"indexing"];
  if (([*(a1 + 32) _updateConceptIndexWithReason:*(a1 + 40)] & 1) == 0)
  {
    [(HDConceptIndexManager *)*(a1 + 32) _clearHasScheduledIndexing];
    v4 = _Block_copy(*(*(a1 + 32) + 112));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4);
    }
  }

  v6[2]();
  [*(*(a1 + 32) + 32) invalidate];
  [v3 invalidate];
}

- (void)_clearHasScheduledIndexing
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 56));
    *(a1 + 60) = 0;

    os_unfair_lock_unlock((a1 + 56));
  }
}

void __85__HDConceptIndexManager__delayedOperationQueue_scheduleConceptIndexUpdateWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = a2;
  [v2 invalidate];
  v3[2]();
}

- (BOOL)_updateConceptIndexWithReason:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_preparedDatabaseAccessibilityAssertion;
  preparedDatabaseAccessibilityAssertion = self->_preparedDatabaseAccessibilityAssertion;
  self->_preparedDatabaseAccessibilityAssertion = 0;

  if (v5)
  {
    v7 = 0;
LABEL_4:
    observerSet = self->_observerSet;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __60__HDConceptIndexManager__notifyObserversWithExecutionState___block_invoke;
    v47 = &__block_descriptor_40_e41_v16__0___HDConceptIndexManagerObserver__8l;
    *v48 = 2;
    [(HKObserverSet *)observerSet notifyObservers:buf];
    v9 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v9 setCacheScope:1];
    [(HDMutableDatabaseTransactionContext *)v9 addAccessibilityAssertion:v5];
    _HKInitializeLogging();
    v10 = HKLogConceptIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning concept indexing with reason: %{public}@.", buf, 0x16u);
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v13 = [WeakRetained database];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __55__HDConceptIndexManager__updateConceptIndexWithReason___block_invoke;
    v38[3] = &unk_27861A148;
    v38[4] = self;
    v38[5] = &v40;
    v39 = v7;
    v14 = [v13 performWithTransactionContext:v9 error:&v39 block:v38];
    v15 = v39;

    v16 = v41[3];
    batchSize = self->_batchSize;
    if (v16 % batchSize)
    {
      v18 = v16 / batchSize + 1;
    }

    else
    {
      v18 = v16 / batchSize;
    }

    _HKInitializeLogging();
    v19 = HKLogConceptIndex();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v5;
      v20 = v9;
      v21 = v14;
      v22 = v4;
      v23 = v21;
      if (v21)
      {
        v24 = @"Success";
      }

      else
      {
        v24 = @"Failure";
      }

      v25 = v41[3];
      v26 = CFAbsoluteTimeGetCurrent();
      v27 = [v15 localizedDescription];
      *buf = 138544898;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      *&buf[22] = 2048;
      v47 = v25;
      *v48 = 2048;
      *&v48[2] = v18;
      *&v48[10] = 2114;
      v4 = v22;
      *&v48[12] = v22;
      v49 = 2048;
      v50 = v26 - Current;
      v51 = 2114;
      v52 = v27;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ indexing %ld records in %ld batches with reason %{public}@, duration: %.3f seconds, Error: %{public}@", buf, 0x48u);

      v14 = v23;
      v9 = v20;
      v5 = v37;
    }

    v28 = v41[3];
    v7 = v15;
    v29 = _Block_copy(self->_unitTesting_conceptIndexManagerDidFinish);
    v30 = v29;
    if (v29)
    {
      (*(v29 + 2))(v29, v14, v28, v7);
    }

    v31 = self->_observerSet;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __90__HDConceptIndexManager__notifyObserversBecameIdleWithSampleProcessedCount_success_error___block_invoke;
    v47 = &unk_278623438;
    *v48 = self;
    *&v48[8] = v28;
    [(HKObserverSet *)v31 notifyObservers:buf, v37];
    v32 = self->_observerSet;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __60__HDConceptIndexManager__notifyObserversWithExecutionState___block_invoke;
    v45[3] = &__block_descriptor_40_e41_v16__0___HDConceptIndexManagerObserver__8l;
    v45[4] = 1;
    [(HKObserverSet *)v32 notifyObservers:v45];

    [(HDAssertion *)v5 invalidate];
    _Block_object_dispose(&v40, 8);
    goto LABEL_17;
  }

  v44 = 0;
  v5 = [(HDConceptIndexManager *)self _takeAssertionWithError:?];
  v7 = v44;
  if (v5)
  {
    goto LABEL_4;
  }

  v35 = _Block_copy(self->_unitTesting_conceptIndexManagerDidFinish);
  v5 = v35;
  if (v35)
  {
    (v35->_state)(v35, 0, 0, v7);
  }

  _HKInitializeLogging();
  v9 = HKLogConceptIndex();
  if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
  {
    v36 = [v7 localizedDescription];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v36;
    _os_log_error_impl(&dword_228986000, &v9->super.super, OS_LOG_TYPE_ERROR, "%{public}@: Was not able to take out inner acessibility assertion with error %{public}@. Cannot perform concept index work.", buf, 0x16u);
  }

  LOBYTE(v14) = 0;
LABEL_17:

  v33 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __55__HDConceptIndexManager__updateConceptIndexWithReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v5 = [WeakRetained database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__HDConceptIndexManager__updateConceptIndexWithReason___block_invoke_2;
  v31[3] = &unk_278614110;
  v31[4] = *(a1 + 32);
  v31[5] = &v32;
  v6 = [(HDHealthEntity *)HDMedicalRecordEntity performReadTransactionWithHealthDatabase:v5 error:a2 block:v31];

  if (v6)
  {
    if (v33[3])
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 48);
      v9 = *(v7 + 8);
      v10 = objc_loadWeakRetained((v7 + 16));
      v29 = *(*(a1 + 40) + 8);
      v11 = v10;
      v30 = objc_opt_self();
      v12 = 0;
      for (i = 0; ; i = (i + 1))
      {
        v36 = 0;
        Current = CFAbsoluteTimeGetCurrent();
        _HKInitializeLogging();
        v15 = HKLogConceptIndex();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

        if (v16)
        {
          v17 = HKLogConceptIndex();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v38 = v30;
            v39 = 2048;
            v40 = i;
            _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, "%{public}@: Start concept indexing batch %ld", buf, 0x16u);
          }
        }

        v18 = [v8 indexSamplesForProfile:v11 limit:v9 outIndexedSamplesCount:&v36 error:a2];
        v19 = v36;
        _HKInitializeLogging();
        v20 = HKLogConceptIndex();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

        if (v21)
        {
          v22 = HKLogConceptIndex();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = v36;
            v24 = CFAbsoluteTimeGetCurrent();
            v25 = @"Failure";
            if (v18)
            {
              v25 = @"Success";
            }

            *buf = 138544386;
            v38 = v30;
            v39 = 2112;
            v40 = v25;
            v41 = 2048;
            v42 = i;
            v43 = 2048;
            v44 = v23;
            v45 = 2048;
            v46 = v24 - Current;
            _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_INFO, "%{public}@: %@ concept indexing batch %ld (%ld) in %0.3f", buf, 0x34u);
          }
        }

        v12 += v19;
        if ((v18 & 1) == 0)
        {
          break;
        }

        if (v36 < v9)
        {
          v26 = [v11 conceptIndexManager];
          [(HDConceptIndexManager *)v26 _clearHasScheduledIndexing];

          break;
        }
      }

      *(v29 + 24) = v12;
    }

    else
    {
      [(HDConceptIndexManager *)*(a1 + 32) _clearHasScheduledIndexing];
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v32, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL __55__HDConceptIndexManager__updateConceptIndexWithReason___block_invoke_2(uint64_t a1, void *a2, NSObject **a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 16));
  v8 = v6;
  v9 = WeakRetained;
  v10 = objc_opt_self();
  v11 = [v9 conceptIndexManager];

  v12 = [(HDConceptIndexManager *)v11 _computeIsEnabled];
  if (v12)
  {
    v13 = [v8 protectedDatabase];
    v23 = 0;
    v14 = [(HDDataEntity *)HDMedicalRecordEntity anyInDatabase:v13 predicate:0 error:&v23];
    v15 = v23;

    if (v14)
    {
      v16 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v19 = HKLogConceptIndex();
      v20 = v19;
      if (v15)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v22 = [v15 localizedDescription];
          *buf = 138543618;
          v25 = v10;
          v26 = 2112;
          v27 = v22;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Error when determining if concept index manager should schedule work: %@", buf, 0x16u);
        }

        if (a3)
        {
          v21 = v15;
          v16 = 0;
          *a3 = v15;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v25 = v10;
          _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Should not proceed with updating concept index because there are no medical records in the database", buf, 0xCu);
        }

        v16 = 2;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogConceptIndex();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v10;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Should not proceed with updating concept index because index manager is not enabled", buf, 0xCu);
    }

    v16 = 2;
  }

  if (v16 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  result = v16 != 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __61__HDConceptIndexManager__dispatchDelayedOperationWithReason___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (_HDIsUnitTesting)
  {
    v4 = *(v2 + 88);
  }

  else
  {
    v4 = 2.0;
  }

  return [v3 executeWithDelay:v4];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  if ([(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  if ([(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  if (a4 && [(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)accountExistenceNotifier:(id)a3 didChangeHealthRecordAccountExistence:(BOOL)a4
{
  if (a4 && [(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  [v5 addProtectedDataObserver:self];

  v6 = objc_loadWeakRetained(&self->_profile);
  v7 = [v6 internalContentDatabaseManager];
  [v7 addContentDatabaseAvailabilityObserver:self];

  v8 = objc_loadWeakRetained(&self->_profile);
  v9 = [v8 internalContentDatabaseManager];
  [v9 addContentDatabaseAvailabilityObserver:self];

  v10 = objc_loadWeakRetained(&self->_profile);
  v11 = [v10 healthRecordsAccountExistenceNotifier];
  [v11 addAccountExistenceObserver:self];

  [(HDConceptIndexManager *)self _setObservationForDataManager:?];
  if ([(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)contentDatabaseDidBecomeAvailable:(BOOL)a3
{
  if (a3 && [(HDConceptIndexManager *)self _canAutomaticallyScheduleConceptIndexing])
  {

    [(HDConceptIndexManager *)self _dispatchDelayedOperationWithReason:?];
  }
}

- (void)didImportOntologyShard
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogConceptIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Request reset concept index due to importing a new ontology shard", &v5, 0xCu);
  }

  [(HDConceptIndexManager *)self resetWithReindex];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)unitTest_setHasScheduledIndexing:(BOOL)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_hasScheduledIndexing = a3;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)unitTest_hasScheduledIndexing
{
  os_unfair_lock_lock(&self->_stateLock);
  hasScheduledIndexing = self->_hasScheduledIndexing;
  os_unfair_lock_unlock(&self->_stateLock);
  return hasScheduledIndexing;
}

@end