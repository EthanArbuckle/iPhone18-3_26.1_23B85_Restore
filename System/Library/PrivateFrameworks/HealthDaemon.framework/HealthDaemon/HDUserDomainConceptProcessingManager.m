@interface HDUserDomainConceptProcessingManager
+ (id)_maximumSyncAnchorForUserDomainConceptsWithTransaction:(void *)a3 error:;
- (HDProfile)profile;
- (HDUserDomainConceptProcessingManager)init;
- (HDUserDomainConceptProcessingManager)initWithProfile:(id)a3;
- (uint64_t)_processUserDomainConceptsWithReason:(void *)a3 accessibilityAssertion:;
- (void)_scheduleProcessingOperationIfEnabledWithReason:(uint64_t)a1;
- (void)_scheduleProcessingOperationWithReason:(uint64_t)a1;
- (void)contentDatabaseDidBecomeAvailable:(BOOL)a3;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
- (void)setUnitTesting_userDomainConceptProcessingManagerDidFinishProcessing:(id)a3;
@end

@implementation HDUserDomainConceptProcessingManager

- (HDUserDomainConceptProcessingManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDUserDomainConceptProcessingManager)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDUserDomainConceptProcessingManager;
  v5 = [(HDUserDomainConceptProcessingManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_hasScheduledProcessing = 0;
    *&v6->_batchSize = vdupq_n_s64(0x32uLL);
    databaseAssertion = v6->_databaseAssertion;
    v6->_databaseAssertion = 0;

    atomic_store(0, &v6->_isDisabledForHealthDaemonLifetime);
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = a3;
  v5 = [v4 internalContentDatabaseManager];
  [v5 addContentDatabaseAvailabilityObserver:self];

  v6 = [v4 internalContentDatabaseManager];
  [v6 addOntologyShardImportObserver:self];

  v7 = [v4 userDomainConceptManager];
  [v7 addUserDomainConceptObserver:self queue:0];

  v8 = [v4 internalContentDatabaseManager];

  LODWORD(v4) = [v8 contentDatabaseIsAvailable];
  if (v4)
  {

    [(HDUserDomainConceptProcessingManager *)self contentDatabaseDidBecomeAvailable:1];
  }
}

- (void)contentDatabaseDidBecomeAvailable:(BOOL)a3
{
  if (a3)
  {
    [(HDUserDomainConceptProcessingManager *)self _scheduleProcessingOperationIfEnabledWithReason:?];
  }
}

- (void)_scheduleProcessingOperationIfEnabledWithReason:(uint64_t)a1
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v4 = [WeakRetained daemon];
    v5 = [v4 behavior];
    v6 = [v5 healthAppNotInstalled];

    v7 = atomic_load((a1 + 56));
    v8 = objc_loadWeakRetained((a1 + 64));
    v9 = [v8 daemon];
    v10 = [v9 behavior];
    if ([v10 performsAutomaticUserDomainConceptProcessing] && ((*(a1 + 57) | v6) & 1) == 0)
    {

      if ((v7 & 1) == 0)
      {
        [(HDUserDomainConceptProcessingManager *)a1 _scheduleProcessingOperationWithReason:v20];
        goto LABEL_8;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HKStringFromBool();
      v13 = objc_loadWeakRetained((a1 + 64));
      v14 = [v13 daemon];
      v15 = [v14 behavior];
      [v15 performsAutomaticUserDomainConceptProcessing];
      v16 = HKStringFromBool();
      v17 = HKStringFromBool();
      v18 = HKStringFromBool();
      *buf = 138544386;
      v22 = a1;
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot automatically schedule UDC processing. Health App Installed %{public}@, performsAutomaticUserDomainConceptProcessing %{public}@, ignoresAutomaticProcessingTriggers %{public}@, _isDisabledForHealthDaemonLifetime %{public}@", buf, 0x34u);
    }
  }

LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  databaseAssertion = self->_databaseAssertion;
  if (databaseAssertion)
  {
    [(HDAssertion *)databaseAssertion invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = HDUserDomainConceptProcessingManager;
  [(HDUserDomainConceptProcessingManager *)&v4 dealloc];
}

- (void)_scheduleProcessingOperationWithReason:(uint64_t)a1
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    if (*(a1 + 32) == 1)
    {
      _HKInitializeLogging();
      v4 = HKLogHealthOntology();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

      if (v5)
      {
        v6 = HKLogHealthOntology();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          CFAbsoluteTimeGetCurrent();
          v7 = *(a1 + 40);
          v8 = HKDiagnosticStringFromDuration();
          *buf = 138543618;
          v38 = a1;
          v39 = 2114;
          v40 = v8;
          _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@: Already scheduled processing %{public}@ ago", buf, 0x16u);
        }
      }

      os_unfair_lock_unlock((a1 + 8));
    }

    else
    {
      *(a1 + 32) = 1;
      *(a1 + 40) = CFAbsoluteTimeGetCurrent();
      os_unfair_lock_unlock((a1 + 8));
      os_unfair_lock_lock((a1 + 8));
      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [MEMORY[0x277CCAD78] UUID];
        v15 = [v14 UUIDString];
        v16 = [v11 stringWithFormat:@"%@-%@", v13, v15];

        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v18 = [WeakRetained database];
        v36 = 0;
        v19 = [v18 takeAccessibilityAssertionWithOwnerIdentifier:v16 timeout:&v36 error:300.0];
        v10 = v36;
        v20 = *(a1 + 48);
        *(a1 + 48) = v19;

        v9 = *(a1 + 48);
      }

      v21 = v9;
      os_unfair_lock_unlock((a1 + 8));
      if (v21)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __79__HDUserDomainConceptProcessingManager__scheduleProcessingOperationWithReason___block_invoke;
        v33[3] = &unk_27861F330;
        v33[4] = a1;
        v22 = v3;
        v34 = v22;
        v35 = v21;
        v23 = [HDMaintenanceOperation maintenanceOperationWithName:v22 asynchronousBlock:v33];
        _HKInitializeLogging();
        v24 = HKLogHealthOntology();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v38 = a1;
          v39 = 2114;
          v40 = v22;
          _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling User Domain Concept processing on maintenance coordinator with reason: %{public}@", buf, 0x16u);
        }

        v25 = objc_loadWeakRetained((a1 + 64));
        v26 = [v25 daemon];
        v27 = [v26 maintenanceWorkCoordinator];
        [v27 enqueueMaintenanceOperation:v23];
      }

      else
      {
        _HKInitializeLogging();
        v28 = HKLogHealthOntology();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);

        if (v29)
        {
          v30 = HKLogHealthOntology();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = [v10 localizedDescription];
            *buf = 138543618;
            v38 = a1;
            v39 = 2114;
            v40 = v31;
            _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_INFO, "%{public}@: unable to take accessibility assertion with error: %{public}@.", buf, 0x16u);
          }
        }

        os_unfair_lock_lock((a1 + 8));
        *(a1 + 32) = 0;
        os_unfair_lock_unlock((a1 + 8));
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __79__HDUserDomainConceptProcessingManager__scheduleProcessingOperationWithReason___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:*(a1 + 32) activityName:@"processing"];
  if (([(HDUserDomainConceptProcessingManager *)*(a1 + 32) _processUserDomainConceptsWithReason:*(a1 + 48) accessibilityAssertion:?]& 1) == 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      os_unfair_lock_lock((v4 + 8));
      *(v4 + 32) = 0;
      os_unfair_lock_unlock((v4 + 8));
    }
  }

  v7[2]();
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(a1 + 32) + 48) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [v3 invalidate];
}

- (uint64_t)_processUserDomainConceptsWithReason:(void *)a3 accessibilityAssertion:
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = atomic_load((a1 + 56));
    if (v7)
    {
      _HKInitializeLogging();
      v8 = HKLogHealthOntology();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v47 = a1;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: User Domain Concept Processing has been disabled for the reamining lifecycle of healthd, since we detected a non-terminating condition while processing in a previous run.", buf, 0xCu);
      }

      v9 = _Block_copy(*(a1 + 72));
      v10 = v9;
      if (v9)
      {
        (v9->super._cacheScope)(v9, 1, 0, 0);
      }

      v11 = 1;
    }

    else
    {
      v10 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      [(HDMutableDatabaseTransactionContext *)v10 setCacheScope:1];
      if (v6)
      {
        [(HDMutableDatabaseTransactionContext *)v10 addAccessibilityAssertion:v6];
      }

      _HKInitializeLogging();
      v12 = HKLogHealthOntology();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v47 = a1;
        v48 = 2114;
        v49 = v5;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning processing of user domain concepts with reason: %{public}@.", buf, 0x16u);
      }

      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      Current = CFAbsoluteTimeGetCurrent();
      v14 = [a1 profile];
      v15 = [v14 userDomainConceptManager];
      [v15 openObserverTransaction];

      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v17 = [WeakRetained database];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __100__HDUserDomainConceptProcessingManager__processUserDomainConceptsWithReason_accessibilityAssertion___block_invoke;
      v36[3] = &unk_27861F358;
      v36[4] = a1;
      v36[5] = &v42;
      v36[6] = &v38;
      v37 = 0;
      v11 = [v17 performWithTransactionContext:v10 error:&v37 block:v36];
      v18 = v37;

      if (*(v39 + 24) == 1)
      {
        _HKInitializeLogging();
        v19 = HKLogHealthOntology();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v47 = a1;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: While performing UDC procesing, detected an infinite processing loop. Disabling UDC Processing for the remainder of healthd's lifecycle.", buf, 0xCu);
        }

        atomic_store(1u, (a1 + 56));
      }

      v20 = v43[3];
      v21 = *(a1 + 16);
      if (v20 % v21 <= 0)
      {
        v22 = v20 / v21;
      }

      else
      {
        v22 = v20 / v21 + 1;
      }

      _HKInitializeLogging();
      v23 = HKLogHealthOntology();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v6;
        v24 = v5;
        if (v11)
        {
          v25 = @"Success";
        }

        else
        {
          v25 = @"Failure";
        }

        v26 = v43[3];
        v27 = CFAbsoluteTimeGetCurrent();
        v28 = [v18 localizedDescription];
        *buf = 138544898;
        v47 = a1;
        v48 = 2114;
        v49 = v25;
        v50 = 2048;
        v51 = v26;
        v52 = 2048;
        v53 = v22;
        v54 = 2114;
        v5 = v24;
        v55 = v24;
        v56 = 2048;
        v57 = v27 - Current;
        v58 = 2114;
        v59 = v28;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ processing %ld user domain concepts in %ld batches with reason %{public}@, duration: %.3f seconds, Error: %{public}@", buf, 0x48u);

        v6 = v35;
      }

      v29 = [a1 profile];
      v30 = [v29 userDomainConceptManager];
      [v30 closeObserverTransaction];

      v31 = _Block_copy(*(a1 + 72));
      v32 = v31;
      if (v31)
      {
        (*(v31 + 2))(v31, v11, v43[3], v18);
      }

      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v42, 8);
    }
  }

  else
  {
    v11 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL __100__HDUserDomainConceptProcessingManager__processUserDomainConceptsWithReason_accessibilityAssertion___block_invoke(void *a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v28 = *(a1[6] + 8);
  v29 = *(a1[5] + 8);
  v6 = objc_loadWeakRetained((v3 + 64));
  v32 = objc_opt_self();
  v33 = v6;
  v7 = [v6 userDomainConceptManager];
  v31 = [v7 keyValueDomain];

  v8 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = -1;
  while (1)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v10 = [v33 database];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __169__HDUserDomainConceptProcessingManager__performUserDomainConceptProcessingOperationWithBatchSize_batchLimit_outNumberOfConceptsProcessed_outDidDetectLoop_profile_error___block_invoke;
    v34[3] = &unk_27861F380;
    v37 = &v47;
    v11 = v31;
    v40 = v32;
    v35 = v11;
    v38 = v46;
    v12 = v33;
    v41 = v5;
    v36 = v12;
    v39 = &v42;
    v13 = [(HDHealthEntity *)HDUserDomainConceptEntity performWriteTransactionWithHealthDatabase:v10 error:a2 block:v34];

    if (!v13)
    {
      *(v29 + 24) = v8;

      _Block_object_dispose(&v42, 8);
      goto LABEL_13;
    }

    v14 = v43[3];
    _HKInitializeLogging();
    v15 = HKLogHealthOntology();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v8;
      v16 = v13;
      v17 = v11;
      v18 = v12;
      v19 = v4;
      v20 = a2;
      v21 = v48[3];
      v22 = v43[3];
      v23 = CFAbsoluteTimeGetCurrent();
      *buf = 138544386;
      v52 = v32;
      v53 = 2048;
      v54 = v21;
      v55 = 2048;
      v56 = v22;
      v57 = 2048;
      v58 = v5;
      v59 = 2048;
      v60 = v23 - Current;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished batch %ld of size %ld / %lld. Duration: %.3f seconds", buf, 0x34u);
      a2 = v20;
      v4 = v19;
      v12 = v18;
      v11 = v17;
      v13 = v16;
      v8 = v30;
    }

    v8 += v14;
    v24 = v48[3] >= v4 && v14 >= v5;
    if (v24)
    {
      break;
    }

    _Block_object_dispose(&v42, 8);
    if (v14 < v5)
    {
      goto LABEL_12;
    }
  }

  _HKInitializeLogging();
  v25 = HKLogHealthOntology();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v52 = v32;
    _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "%{public}@: Reached batch limit during UDC Processing. This usually happens during an infinite processing loop.", buf, 0xCu);
  }

  _Block_object_dispose(&v42, 8);
LABEL_12:
  *(v28 + 24) = v24;
  *(v29 + 24) = v8;
LABEL_13:
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&v47, 8);

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __169__HDUserDomainConceptProcessingManager__performUserDomainConceptProcessingOperationWithBatchSize_batchLimit_outNumberOfConceptsProcessed_outDidDetectLoop_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v8 = [HDUserDomainConceptProcessingState fetchFromKeyValueDomain:*(a1 + 32) error:a3];
  if (v8)
  {
    v9 = v8;
    _HKInitializeLogging();
    v10 = HKLogHealthOntology();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 72);
      v12 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 138543874;
      *&buf[4] = v11;
      v38 = 2048;
      v39 = v12;
      v40 = 2114;
      v41 = v9;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Start batch %ld, current state %{public}@", buf, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = [v9 anchor];
    v13 = [*(a1 + 40) internalContentDatabaseManager];
    v14 = [v13 ontologyContentVersionWithError:a3];

    if (!v14)
    {
      v18 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v15 = [(HDUserDomainConceptProcessingManager *)*(a1 + 72) _maximumSyncAnchorForUserDomainConceptsWithTransaction:v7 error:a3];
    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = [v9 ontologyVersion];
    if (v14 != v16)
    {
      v17 = [v9 ontologyVersion];
      if (!v17)
      {
        goto LABEL_16;
      }

      v3 = v17;
      v4 = [v9 ontologyVersion];
      if (![v14 isEqual:v4])
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (*(*(*(a1 + 56) + 8) + 24) != -1 && [v9 maximumPropertyType] >= 184000)
    {
      v34 = [v15 longLongValue];
      v35 = *(*(*(a1 + 56) + 8) + 24);
      v36 = v34;
      if (v14 != v16)
      {
      }

      if (v36 >= v35)
      {
LABEL_18:
        v20 = *(a1 + 64);
        *buf = *(*(*(a1 + 56) + 8) + 24);
        v21 = *(a1 + 80);
        v22 = *(v20 + 8);
        v23 = *(a1 + 40);
        if ([HDUserDomainConceptProcessor processUserDomainConceptsAfter:"processUserDomainConceptsAfter:transactionLimit:outAnchor:outProcessedConceptsCount:profile:transaction:error:" transactionLimit:a3 outAnchor:? outProcessedConceptsCount:? profile:? transaction:? error:?])
        {
          if (*(*(*(a1 + 64) + 8) + 24) >= *(a1 + 80))
          {
            v33 = [v9 copyByUpdatingAnchor:*buf];

            v18 = [v33 persistInKeyValueDomain:*(a1 + 32) error:a3];
            v9 = v33;
          }

          else
          {
            v24 = [*(a1 + 40) userDomainConceptManager];
            v25 = [v24 processingManager];
            v26 = *(a1 + 32);
            v9 = v9;
            v27 = v26;
            if (v25)
            {
              v28 = v7;
              os_unfair_lock_lock((v25 + 8));
              *(v25 + 32) = 0;
              os_unfair_lock_unlock((v25 + 8));
              v29 = [HDUserDomainConceptProcessingManager _maximumSyncAnchorForUserDomainConceptsWithTransaction:v28 error:a3];

              if (v29)
              {
                v30 = [v9 copyByUpdatingAnchor:{objc_msgSend(v29, "longLongValue")}];
                v18 = [v30 persistInKeyValueDomain:v27 error:a3];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          goto LABEL_24;
        }

LABEL_23:
        v18 = 0;
LABEL_24:

        goto LABEL_25;
      }

LABEL_17:
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v19 = [[HDUserDomainConceptProcessingState alloc] initWithAnchor:0 ontologyVersion:v14 maximumPropertyType:184000];

      v9 = v19;
      goto LABEL_18;
    }

    if (v14 != v16)
    {
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_17;
  }

  v18 = 0;
LABEL_26:

  v31 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)_maximumSyncAnchorForUserDomainConceptsWithTransaction:(void *)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 protectedDatabase];

  v10 = 0;
  v6 = [(HDSQLiteEntity *)HDUserDomainConceptEntity maxValueForProperty:@"sync_anchor" predicate:0 database:v5 error:&v10];
  v7 = v10;

  if (!v6)
  {
    if (v7)
    {
      if (a3)
      {
        v9 = v7;
        v6 = 0;
        *a3 = v7;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = &unk_283CB1FE0;
    }
  }

  return v6;
}

- (void)setUnitTesting_userDomainConceptProcessingManagerDidFinishProcessing:(id)a3
{
  v4 = [a3 copy];
  unitTesting_userDomainConceptProcessingManagerDidFinishProcessing = self->_unitTesting_userDomainConceptProcessingManagerDidFinishProcessing;
  self->_unitTesting_userDomainConceptProcessingManagerDidFinishProcessing = v4;

  MEMORY[0x2821F96F8]();
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end