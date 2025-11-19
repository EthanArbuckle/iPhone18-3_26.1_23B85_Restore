@interface HDOntologyFeatureCoordinator
+ (BOOL)_markNotCurrentEntriesAsNotRequiredForItem:(void *)a3 transaction:(uint64_t)a4 error:;
+ (BOOL)unitTesting_processRequiredShardItemWithIdentifier:(id)a3 options:(unint64_t)a4 profile:(id)a5 error:(id *)a6;
+ (uint64_t)_processRequiredShardItems:(void *)a3 profile:(void *)a4 transaction:(uint64_t *)a5 error:;
+ (void)_logTriggeredOntologyUpdateResultsWithSuccess:(void *)a3 error:;
- (BOOL)_insertEntry:(void *)a3 transaction:(uint64_t)a4 error:;
- (BOOL)_updateDesiredStateDateForEntry:(void *)a3 transaction:(uint64_t)a4 error:;
- (BOOL)markShardsWithIdentifiers:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (HDOntologyFeatureCoordinator)init;
- (HDOntologyFeatureCoordinator)initWithOntologyUpdateCoordinator:(id)a3;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (NSDictionary)shardRequirementStatuses;
- (double)_minimumTimeToLiveForEntry:(uint64_t)a1;
- (id)_metadataKeyForFirstLauchWithEntry:(uint64_t)a1;
- (id)_observationQueue_requireShardByIdentifier;
- (uint64_t)_canMakeFeatureRequestForShardWithIdentifier:(char)a3 options:(uint64_t)a4 error:;
- (uint64_t)_createOrUpdateEntryForItem:(void *)a3 transaction:(uint64_t)a4 error:;
- (uint64_t)_hasTimeToLiveExpiredForEntry:(uint64_t)a1;
- (uint64_t)_insertNewEntryForItem:(uint64_t)a1 transaction:(void *)a2 error:(void *)a3;
- (uint64_t)_markFirstLaunchRequestForEntry:(void *)a3 transaction:(uint64_t)a4 error:;
- (uint64_t)_markShardsWithIdentifiers:(uint64_t)a3 options:(uint64_t)a4 error:;
- (uint64_t)_observationQueue_isPrimaryProfileReady;
- (uint64_t)_performOrJournalFeatureCoordinatorRequireOperationForItems:(uint64_t)a3 error:;
- (uint64_t)_persistedEntryWithIdentifier:(uint64_t)a3 entryOut:(void *)a4 transaction:(uint64_t)a5 error:;
- (uint64_t)_updateDesiredIfRequiredForEntry:(char)a3 options:(uint64_t)a4 newDesiredState:(void *)a5 transaction:(uint64_t)a6 error:;
- (uint64_t)_updateDesiredStateIfRequiredForEntry:(char)a3 options:(void *)a4 transaction:(uint64_t)a5 error:;
- (void)_callDidInsertEntryTestHookForEntry:(void *)a3 transaction:;
- (void)_featureEvaluatorForIdentifier:(void *)a1;
- (void)_loadFeatureEvaluators;
- (void)_logRequiredShardsByIdentifier:(uint64_t)a1;
- (void)_markEntriesOrLogErrorForItems:(uint64_t)a1;
- (void)_observationQueue_evaluteRequiredFeaturesWithReason:(uint64_t)a1;
- (void)_observationQueue_registerProfileReadyObservers;
- (void)_registerObserversForProfile:(uint64_t)a1;
- (void)_triggerGatedOntologyUpdate;
- (void)daemonReady:(id)a3;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)evaluteRequiredShardsForEvalulator:(id)a3 reason:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)profileListDidChange;
- (void)setShardRequirementStatuses:(uint64_t)a1;
@end

@implementation HDOntologyFeatureCoordinator

- (uint64_t)_observationQueue_isPrimaryProfileReady
{
  if (result)
  {
    v2 = result;
    dispatch_assert_queue_V2(*(result + 8));
    v3 = *(v2 + 16);
    WeakRetained = objc_loadWeakRetained((v2 + 64));
    v5 = [WeakRetained profile];
    [v5 profileIdentifier];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:v1];
    v7 = [v6 BOOLValue];

    return v7;
  }

  return result;
}

- (id)_observationQueue_requireShardByIdentifier
{
  v42 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    WeakRetained = objc_loadWeakRetained(v1 + 8);
    v4 = [WeakRetained daemon];
    v5 = [v4 profileManager];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v5 allProfileIdentifiers];
    v6 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      v27 = v5;
      v28 = v1;
      v26 = *v37;
      do
      {
        v9 = 0;
        v29 = v7;
        do
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v36 + 1) + 8 * v9);
          v11 = [v5 profileForIdentifier:{v10, v26, v27, v28}];
          if (v11)
          {
            v12 = [v1[2] objectForKeyedSubscript:v10];
            v13 = [v12 BOOLValue];

            if (v13)
            {
              v31 = v9;
              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              v14 = v1[3];
              v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v33;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v33 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v32 + 1) + 8 * i);
                    v20 = [v19 featureIdentifier];
                    v21 = [v2 objectForKeyedSubscript:v20];
                    if (!v21)
                    {
                      v21 = &unk_286374658;
                      [v2 setObject:&unk_286374658 forKeyedSubscript:v20];
                    }

                    if ([v21 integerValue] != 1)
                    {
                      v22 = [OUTLINED_FUNCTION_1_3() requiresFeatureShardForProfile:v11];
                      if (v22 == 1 || (!v13 ? (v23 = v22 == 2) : (v23 = 0), v23))
                      {
                        [MEMORY[0x277CCABB0] numberWithInteger:v22];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_5() setObject:v19 forKeyedSubscript:v20];
                      }
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
                }

                while (v16);
              }

              v5 = v27;
              v1 = v28;
              v8 = v26;
              v7 = v29;
              v9 = v31;
            }
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v7);
    }

    [(HDOntologyFeatureCoordinator *)v1 setShardRequirementStatuses:v2];
  }

  else
  {
    v2 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDOntologyFeatureCoordinator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyFeatureCoordinator)initWithOntologyUpdateCoordinator:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HDOntologyFeatureCoordinator;
  v5 = [(HDOntologyFeatureCoordinator *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, v4);
    v7 = HKCreateSerialDispatchQueue();
    observationQueue = v6->_observationQueue;
    v6->_observationQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observationQueue_isProfileReady = v6->_observationQueue_isProfileReady;
    v6->_observationQueue_isProfileReady = v9;

    v6->_lock._os_unfair_lock_opaque = 0;
    lock_shardRequirementStatuses = v6->_lock_shardRequirementStatuses;
    v6->_lock_shardRequirementStatuses = MEMORY[0x277CBEC10];

    v6->_unitTesting_minimumTimeToLive = -1.0;
    WeakRetained = objc_loadWeakRetained(&v6->_updateCoordinator);
    v13 = [WeakRetained daemon];
    [v13 registerDaemonReadyObserver:v6 queue:v6->_observationQueue];
  }

  return v6;
}

- (BOOL)markShardsWithIdentifiers:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([v8 count])
  {
    v9 = [(HDOntologyFeatureCoordinator *)self _markShardsWithIdentifiers:v8 options:a4 error:a5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)evaluteRequiredShardsForEvalulator:(id)a3 reason:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", a3, a4];
  [(HDOntologyFeatureCoordinator *)self _observationQueue_evaluteRequiredFeaturesWithReason:v5];
}

- (NSDictionary)shardRequirementStatuses
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_lock_shardRequirementStatuses copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_observationQueue);
  if (v4)
  {

    [(HDOntologyFeatureCoordinator *)self _observationQueue_evaluteRequiredFeaturesWithReason:?];
  }
}

- (void)daemonReady:(id)a3
{
  dispatch_assert_queue_V2(self->_observationQueue);
  [(HDOntologyFeatureCoordinator *)self _loadFeatureEvaluators];
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);
  v5 = [WeakRetained daemon];
  v6 = [v5 profileManager];
  [v6 addProfileManagerObserver:self queue:self->_observationQueue];

  v8 = objc_loadWeakRetained(&self->_updateCoordinator);
  v7 = [v8 profile];
  [v7 registerProfileReadyObserver:self queue:self->_observationQueue];
}

+ (uint64_t)_processRequiredShardItems:(void *)a3 profile:(void *)a4 transaction:(uint64_t *)a5 error:
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_self();
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v12 = [v9 daemon];
  v13 = [v12 ontologyUpdateCoordinator];

  v14 = [v13 featureCoordinator];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__HDOntologyFeatureCoordinator__processRequiredShardItems_profile_transaction_error___block_invoke;
  v26[3] = &unk_2796B95A8;
  v15 = v8;
  v27 = v15;
  v30 = v11;
  v16 = v14;
  v28 = v16;
  v29 = &v31;
  v17 = [v13 performOntologyTransactionForWrite:1 databaseTransaction:v10 error:a5 transactionHandler:v26];
  _HKInitializeLogging();
  v18 = HKLogHealthOntology();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v32 + 24);
    v20 = HKStringFromBool();
    *buf = 138543618;
    v36 = v11;
    v37 = 2114;
    v38 = v20;
    _os_log_impl(&dword_2514A1000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: has new required shards %{public}@", buf, 0x16u);
  }

  if (*(v32 + 24) == 1)
  {
    [(HDOntologyFeatureCoordinator *)v16 _triggerGatedOntologyUpdate];
  }

  _HKInitializeLogging();
  v21 = HKLogHealthOntology();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = HKStringFromBool();
    v23 = *a5;
    *buf = 138543874;
    v36 = v11;
    v37 = 2112;
    v38 = v22;
    v39 = 2112;
    v40 = v23;
    _os_log_impl(&dword_2514A1000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: _processRequiredShardItems success %@: %@", buf, 0x20u);
  }

  _Block_object_dispose(&v31, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __85__HDOntologyFeatureCoordinator__processRequiredShardItems_profile_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  v8 = 1;
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if (v12)
        {
          v13 = v12[1];
        }

        if (HKIsKnownOntologyShardIdentifier())
        {
          v15 = [(HDOntologyFeatureCoordinator *)*(a1 + 40) _createOrUpdateEntryForItem:v12 transaction:v5 error:a3];
          if (v15 == 1)
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
          }

          else if (!v15)
          {
            v8 = 0;
            goto LABEL_24;
          }
        }

        else
        {
          _HKInitializeLogging();
          v14 = HKLogHealthOntology();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            if (v12)
            {
              v16 = v12[1];
            }

            else
            {
              v16 = 0;
            }

            v17 = *(a1 + 56);
            *buf = 138543618;
            v26 = v17;
            v27 = 2114;
            v28 = v16;
            _os_log_fault_impl(&dword_2514A1000, v14, OS_LOG_TYPE_FAULT, "[%{public}@] Processed an unknown shard identifier: %{public}@", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v18 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
      v9 = v18;
    }

    while (v18);
    v8 = 1;
  }

LABEL_24:

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __54__HDOntologyFeatureCoordinator__loadFeatureEvaluators__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 featureIdentifier];
  v5 = [v3 featureIdentifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __93__HDOntologyFeatureCoordinator__markNotCurrentEntriesAsNotRequiredForItem_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x253077AD0](a2, @"desired_state", 1);
  CFAbsoluteTimeGetCurrent();

  JUMPOUT(0x253077AB0);
}

void __82__HDOntologyFeatureCoordinator__updateDesiredStateDateForEntry_transaction_error___block_invoke()
{
  CFAbsoluteTimeGetCurrent();

  JUMPOUT(0x253077AB0);
}

uint64_t __63__HDOntologyFeatureCoordinator__featureEvaluatorForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 featureIdentifier];
  if (v4 == v5)
  {
    v9 = 1;
  }

  else
  {
    v6 = [v3 featureIdentifier];
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [v3 featureIdentifier];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (void)_logTriggeredOntologyUpdateResultsWithSuccess:(void *)a3 error:
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_self();
  _HKInitializeLogging();
  v6 = HKLogHealthOntology();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v12 = 138543362;
      v13 = v5;
      v8 = "%{public}@: Success triggered ontology update";
      v9 = v6;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_2514A1000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

  else if (v7)
  {
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v4;
    v8 = "%{public}@: Failure triggered ontology update: %{public}@";
    v9 = v6;
    v10 = 22;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

id __63__HDOntologyFeatureCoordinator__logRequiredShardsByIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [v5 integerValue];
  v6 = HKStringFromOptionalBooleanResult();
  v7 = [v2 stringWithFormat:@"(%@, %@)", v4, v6];

  return v7;
}

uint64_t __105__HDOntologyFeatureCoordinator_unitTesting_processRequiredShardItemWithIdentifier_options_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v12[0] = *(a1 + 32);
  v6 = MEMORY[0x277CBEA60];
  v7 = a2;
  v8 = [v6 arrayWithObjects:v12 count:1];
  v9 = [(HDOntologyFeatureCoordinator *)v5 _processRequiredShardItems:v8 profile:*(a1 + 40) transaction:v7 error:a3];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

- (uint64_t)_markShardsWithIdentifiers:(uint64_t)a3 options:(uint64_t)a4 error:
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a1)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 componentsJoinedByString:{@", "}];
      v10 = HKStringFromOntologyFeatureRequestOptions();
      *buf = 138543874;
      v24 = a1;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: mark shards with identifiers %{public}@ with options %{public}@", buf, 0x20u);
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = v7;
    OUTLINED_FUNCTION_3_1();
    v14 = [v13 countByEnumeratingWithState:0 objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (MEMORY[0] != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(8 * i);
          if (![(HDOntologyFeatureCoordinator *)a1 _canMakeFeatureRequestForShardWithIdentifier:v18 options:a3 error:a4])
          {

            v20 = 0;
            goto LABEL_14;
          }

          v19 = [[_HDRequiredShardItem alloc] initWithShardIdentfier:v18 options:a3];
          [v11 addObject:v19];
        }

        OUTLINED_FUNCTION_3_1();
        v15 = [v12 countByEnumeratingWithState:? objects:? count:?];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = [(HDOntologyFeatureCoordinator *)a1 _performOrJournalFeatureCoordinatorRequireOperationForItems:v11 error:a4];
LABEL_14:
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)_observationQueue_evaluteRequiredFeaturesWithReason:(uint64_t)a1
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v5 = [WeakRetained daemon];
    v6 = [v5 behavior];
    v7 = [v6 supportsOntologyFeatureEvaluation];

    if (v7)
    {
      if ([(HDOntologyFeatureCoordinator *)a1 _observationQueue_isPrimaryProfileReady])
      {
        _HKInitializeLogging();
        v9 = HKLogHealthOntology();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v28 = a1;
          v29 = 2114;
          v30 = v3;
          _os_log_impl(&dword_2514A1000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Re-evaluate required features due to %{public}@", buf, 0x16u);
        }

        v20 = v3;

        [(HDOntologyFeatureCoordinator *)a1 _observationQueue_requireShardByIdentifier];
        objc_claimAutoreleasedReturnValue();
        v10 = OUTLINED_FUNCTION_4_1();
        [(HDOntologyFeatureCoordinator *)v10 _logRequiredShardsByIdentifier:v9];
        v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * i);
              if (HKIsKnownOntologyShardIdentifier())
              {
                v17 = [v11 objectForKeyedSubscript:v16];
                v18 = [v17 integerValue];

                if (v18 == 2)
                {
                  continue;
                }

                v19 = [[_HDRequiredShardItem alloc] initWithShardIdentfier:v16 options:v18 == 1];
                [v21 addObject:v19];
              }

              else
              {
                _HKInitializeLogging();
                v19 = HKLogHealthOntology();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v28 = a1;
                  v29 = 2112;
                  v30 = v16;
                  _os_log_impl(&dword_2514A1000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot mark shard with identifier %@ because it's unknown", buf, 0x16u);
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v13);
        }

        [(HDOntologyFeatureCoordinator *)a1 _markEntriesOrLogErrorForItems:v21];
        v3 = v20;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setShardRequirementStatuses:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    objc_storeStrong((a1 + 40), a2);
    os_unfair_lock_unlock((a1 + 32));
  }
}

- (void)_loadFeatureEvaluators
{
  v48[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    v4 = [HDOntologyCHRFeatureEvaluator alloc];
    objc_loadWeakRetained((a1 + 64));
    v5 = [OUTLINED_FUNCTION_1_3() initWithOntologyUpdateCoordinator:v1];
    v48[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    v7 = [v3 initWithArray:v6];

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v9 = [WeakRetained daemon];

    v10 = [v9 pluginManager];
    v11 = [v10 pluginsConformingToProtocol:&unk_286387828];
    v12 = [v11 allValues];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v12;
    v30 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v30)
    {
      v29 = *v39;
      do
      {
        v13 = 0;
        do
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v38 + 1) + 8 * v13);
          v32 = v13;
          v14 = [v31 ontologyFeatureEvaluatorsForDaemon:v9];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v35;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v35 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v34 + 1) + 8 * i);
                v33[0] = MEMORY[0x277D85DD0];
                v33[1] = 3221225472;
                v33[2] = __54__HDOntologyFeatureCoordinator__loadFeatureEvaluators__block_invoke;
                v33[3] = &unk_2796B95D0;
                v33[4] = v19;
                v20 = [v7 hk_firstObjectPassingTest:v33];
                if (v20)
                {
                  v28 = [MEMORY[0x277CCA890] currentHandler];
                  v27 = [v19 featureIdentifier];
                  [v28 handleFailureInMethod:sel__loadFeatureEvaluators object:a1 file:@"HDOntologyFeatureCoordinator.m" lineNumber:234 description:{@"%@ is attemping to register as evaluator for %@, but %@ is already registered.", v31, v27, v20}];
                }

                [v7 addObject:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
            }

            while (v16);
          }

          v13 = v32 + 1;
        }

        while (v32 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v30);
    }

    _HKInitializeLogging();
    v21 = HKLogHealthOntology();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v7 hk_map:&__block_literal_global_4];
      *buf = 138543618;
      v43 = a1;
      v44 = 2112;
      v45 = v22;
      _os_log_impl(&dword_2514A1000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: loaded feature evaluators: %@", buf, 0x16u);
    }

    v23 = [v7 copy];
    v24 = *(a1 + 24);
    *(a1 + 24) = v23;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)profileListDidChange
{
  dispatch_assert_queue_V2(self->_observationQueue);
  [(HDOntologyFeatureCoordinator *)self _observationQueue_registerProfileReadyObservers];

  [(HDOntologyFeatureCoordinator *)self _observationQueue_evaluteRequiredFeaturesWithReason:?];
}

- (void)_observationQueue_registerProfileReadyObservers
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v3 = [WeakRetained daemon];
    v4 = [v3 profileManager];

    v5 = [v4 allProfileIdentifiers];
    OUTLINED_FUNCTION_3_1();
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [v4 profileForIdentifier:*(8 * i)];
          v12 = v11;
          if (v11)
          {
            v13 = *(a1 + 16);
            v14 = [v11 profileIdentifier];
            v15 = [v13 objectForKeyedSubscript:v14];
            v16 = [v15 BOOLValue];

            if ((v16 & 1) == 0)
            {
              [v12 registerProfileReadyObserver:a1 queue:*(a1 + 8)];
            }
          }
        }

        OUTLINED_FUNCTION_3_1();
        v8 = [v5 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)profileDidBecomeReady:(id)a3
{
  observationQueue = self->_observationQueue;
  v6 = a3;
  v7 = OUTLINED_FUNCTION_1_3();
  dispatch_assert_queue_V2(v7);
  observationQueue_isProfileReady = self->_observationQueue_isProfileReady;
  v9 = [v3 profileIdentifier];
  [(NSMutableDictionary *)observationQueue_isProfileReady setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v9];

  [(HDOntologyFeatureCoordinator *)self _registerObserversForProfile:v3];

  [(HDOntologyFeatureCoordinator *)self _observationQueue_evaluteRequiredFeaturesWithReason:?];
}

- (void)_registerObserversForProfile:(uint64_t)a1
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 database];
    [v5 addProtectedDataObserver:a1 queue:*(a1 + 8)];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = *(a1 + 24);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) registerRequiredObserversForProfile:v4 queue:{*(a1 + 8), v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_createOrUpdateEntryForItem:(void *)a3 transaction:(uint64_t)a4 error:
{
  v7 = a2;
  v8 = a3;
  if (a1 && (OUTLINED_FUNCTION_2_2(), [(HDOntologyFeatureCoordinator *)v9 _markNotCurrentEntriesAsNotRequiredForItem:v10 transaction:v11 error:v12]))
  {
    if (v7)
    {
      v15 = v7[1];
    }

    else
    {
      v15 = 0;
    }

    v24 = 0;
    v16 = v15;
    v17 = [(HDOntologyFeatureCoordinator *)a1 _persistedEntryWithIdentifier:v16 entryOut:&v24 transaction:v8 error:a4];
    v18 = v24;

    v13 = 0;
    if (v17)
    {
      if (v18)
      {
        if (v7)
        {
          v23 = v7[2];
        }

        else
        {
          LOBYTE(v23) = 0;
        }

        v22 = [(HDOntologyFeatureCoordinator *)a1 _updateDesiredStateIfRequiredForEntry:v18 options:v23 transaction:v8 error:a4];
      }

      else
      {
        OUTLINED_FUNCTION_2_2();
        v22 = [HDOntologyFeatureCoordinator _insertNewEntryForItem:v19 transaction:v20 error:v21];
      }

      v13 = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_triggerGatedOntologyUpdate
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    _HKInitializeLogging();
    v2 = HKLogHealthOntology();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = a1;
      _os_log_impl(&dword_2514A1000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Trigger gated ontology update", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained triggerGatedUpdateWithMaximumDelay:&__block_literal_global_366 completion:5.0];
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_markNotCurrentEntriesAsNotRequiredForItem:(void *)a3 transaction:(uint64_t)a4 error:
{
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_self();
  if (v5)
  {
    v7 = v5[1];
  }

  v8 = HKOntologyShardSchemaTypeForShardIdentifier();
  if (v5)
  {
    v9 = v5[1];
  }

  v10 = HKCurrentSchemaVersionForShardIdentifier();
  if (v5)
  {
    v11 = v5[1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"identifier" equalToValue:v11];
  v13 = MEMORY[0x277D10B20];
  v14 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" notEqualToValue:v8];
  v29[0] = v14;
  v15 = MEMORY[0x277D10B18];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v17 = [v15 predicateWithProperty:@"schema_version" notEqualToValue:v16];
  v29[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v19 = [v13 predicateMatchingAnyPredicates:v18];

  v20 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v12 otherPredicate:v19];
  v28[0] = @"desired_state";
  v28[1] = @"desired_state_date";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v22 = [v6 graphDatabase];

  v23 = [v22 underlyingDatabase];
  v24 = [(HDSQLiteEntity *)HDOntologyShardRegistryEntity updateProperties:v21 predicate:v20 database:v23 error:a4 bindingHandler:&__block_literal_global_340_0];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (uint64_t)_persistedEntryWithIdentifier:(uint64_t)a3 entryOut:(void *)a4 transaction:(uint64_t)a5 error:
{
  if (result)
  {
    v8 = result;
    v9 = a4;
    v10 = a2;
    v11 = HKOntologyShardSchemaTypeForShardIdentifier();
    v12 = HKCurrentSchemaVersionForShardIdentifier();
    WeakRetained = objc_loadWeakRetained((v8 + 64));
    v14 = [WeakRetained shardRegistry];
    v15 = [v14 entryWithIdentifier:v10 schemaType:v11 schemaVersion:v12 entryOut:a3 transaction:v9 error:a5];

    return v15;
  }

  return result;
}

- (uint64_t)_updateDesiredStateIfRequiredForEntry:(char)a3 options:(void *)a4 transaction:(uint64_t)a5 error:
{
  v9 = a2;
  v10 = a4;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if ([v9 desiredState] != v11)
  {
    v12 = [(HDOntologyFeatureCoordinator *)a1 _updateDesiredIfRequiredForEntry:v9 options:a3 newDesiredState:v11 transaction:v10 error:a5];
    goto LABEL_8;
  }

  if ((~a3 & 5) != 0)
  {
    v12 = 2;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_2();
  if (![(HDOntologyFeatureCoordinator *)v14 _updateDesiredStateDateForEntry:v15 transaction:v16 error:v17])
  {
LABEL_14:
    v12 = 0;
    goto LABEL_8;
  }

  if ([v9 currentVersion] < 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

LABEL_8:

  return v12;
}

- (uint64_t)_insertNewEntryForItem:(uint64_t)a1 transaction:(void *)a2 error:(void *)a3
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v23 = 0;
    goto LABEL_23;
  }

  if (v5)
  {
    v7 = v5[1];
  }

  v8 = HKOntologyShardSchemaTypeForShardIdentifier();
  if (v5)
  {
    v9 = v5[1];
  }

  v10 = HKCurrentSchemaVersionForShardIdentifier();
  if (v5)
  {
    v11 = v5[2];
    v12 = objc_alloc(MEMORY[0x277CCD760]);
    v13 = (v11 & 1) == 0;
    if (v11)
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    v15 = v5[1];
    v16 = (v11 & 2) == 0;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CCD760]);
    v15 = 0;
    v14 = 1;
    v13 = 1;
    v16 = 1;
  }

  v17 = [v12 initWithIdentifier:v15 schemaType:v8 schemaVersion:v10 desiredState:v14];
  if (v13)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (v13 || v16)
  {
    goto LABEL_19;
  }

  v19 = OUTLINED_FUNCTION_6_1();
  if ([(HDOntologyFeatureCoordinator *)v19 _markFirstLaunchRequestForEntry:v20 transaction:v21 error:v22])
  {
    v18 = 1;
LABEL_19:
    v24 = OUTLINED_FUNCTION_6_1();
    if ([(HDOntologyFeatureCoordinator *)v24 _insertEntry:v25 transaction:v26 error:v27])
    {
      v23 = v18;
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_22;
  }

  v23 = 0;
LABEL_22:

LABEL_23:
  return v23;
}

- (uint64_t)_markFirstLaunchRequestForEntry:(void *)a3 transaction:(uint64_t)a4 error:
{
  v7 = a3;
  if (a1)
  {
    [(HDOntologyFeatureCoordinator *)a1 _metadataKeyForFirstLauchWithEntry:a2];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_5() graphDatabase];
    v16 = 0;
    v9 = [v8 metadataValueForKey:a2 valueOut:&v16 error:a4];
    v10 = v16;

    a1 = 0;
    if (v9)
    {
      if (v10)
      {
        a1 = 2;
      }

      else
      {
        v11 = [v7 graphDatabase];
        v12 = [MEMORY[0x277CBEAA8] date];
        v13 = HKDiagnosticStringFromDate();
        v14 = [v11 setMetadataValue:v13 forKey:a2 error:a4];

        a1 = v14;
      }
    }
  }

  return a1;
}

- (BOOL)_insertEntry:(void *)a3 transaction:(uint64_t)a4 error:
{
  if (result)
  {
    v6 = a3;
    v7 = a2;
    v8 = OUTLINED_FUNCTION_1_3();
    [(HDOntologyFeatureCoordinator *)v8 _callDidInsertEntryTestHookForEntry:a2 transaction:v6];
    v9 = [HDOntologyShardRegistry insertEntry:a2 transaction:v6 error:a4];

    return v9;
  }

  return result;
}

- (uint64_t)_updateDesiredIfRequiredForEntry:(char)a3 options:(uint64_t)a4 newDesiredState:(void *)a5 transaction:(uint64_t)a6 error:
{
  v11 = a2;
  v12 = a5;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_14;
  }

  if ((~a3 & 3) != 0)
  {
    if ((a3 & 5) == 0 && ![(HDOntologyFeatureCoordinator *)a1 _hasTimeToLiveExpiredForEntry:v11])
    {
      v14 = 2;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = [(HDOntologyFeatureCoordinator *)a1 _markFirstLaunchRequestForEntry:v11 transaction:v12 error:a6];
    if (v13 != 1)
    {
      v14 = v13;
      goto LABEL_14;
    }
  }

  v15 = [v11 copyWithDesiredState:a4];

  v16 = [(HDOntologyFeatureCoordinator *)a1 _insertEntry:v15 transaction:v12 error:a6];
  v17 = 1;
  if ((a3 & 1) == 0)
  {
    v17 = 2;
  }

  if (v16)
  {
    v14 = v17;
  }

  else
  {
    v14 = 0;
  }

  v11 = v15;
LABEL_14:

  return v14;
}

- (BOOL)_updateDesiredStateDateForEntry:(void *)a3 transaction:(uint64_t)a4 error:
{
  v28[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v25 = MEMORY[0x277D10B20];
    v5 = MEMORY[0x277D10B18];
    v6 = a3;
    v7 = a2;
    v8 = [v7 identifier];
    v9 = [v5 predicateWithProperty:@"identifier" equalToValue:v8];
    v28[0] = v9;
    v10 = MEMORY[0x277D10B18];
    v11 = [v7 schemaType];
    v12 = [v10 predicateWithProperty:@"schema_type" equalToValue:v11];
    v28[1] = v12;
    v13 = MEMORY[0x277D10B18];
    v14 = MEMORY[0x277CCABB0];
    v15 = [v7 schemaVersion];

    v16 = [v14 numberWithInteger:v15];
    v17 = [v13 predicateWithProperty:@"schema_version" equalToValue:v16];
    v28[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    v19 = [v25 predicateMatchingAllPredicates:v18];

    v27 = @"desired_state_date";
    [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    objc_claimAutoreleasedReturnValue();
    v20 = [OUTLINED_FUNCTION_1_3() graphDatabase];

    v21 = [v20 underlyingDatabase];
    v22 = [(HDSQLiteEntity *)HDOntologyShardRegistryEntity updateProperties:v8 predicate:v19 database:v21 error:a4 bindingHandler:&__block_literal_global_350];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (uint64_t)_hasTimeToLiveExpiredForEntry:(uint64_t)a1
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [(HDOntologyFeatureCoordinator *)a1 _minimumTimeToLiveForEntry:v3];
    Current = CFAbsoluteTimeGetCurrent();
    v6 = [v3 desiredStateDate];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v4 + v7;

    if (Current <= v8)
    {
      a1 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogHealthOntology();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 desiredStateDate];
        v11 = HKDiagnosticStringFromDate();
        v12 = HKDiagnosticStringFromDuration();
        v15 = 138544130;
        v16 = a1;
        v17 = 2114;
        v18 = v3;
        v19 = 2114;
        v20 = v11;
        v21 = 2114;
        v22 = v12;
        _os_log_impl(&dword_2514A1000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ TTL has expired because %{public}@ is more than %{public}@ before now", &v15, 0x2Au);
      }

      a1 = 1;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

- (id)_metadataKeyForFirstLauchWithEntry:(uint64_t)a1
{
  if (a1)
  {
    v5 = a2;
    v6 = objc_alloc(OUTLINED_FUNCTION_5());
    [v2 identifier];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_3() schemaType];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_4_1() schemaVersion];

    v8 = [v6 initWithFormat:@"firstLaunch-%@:%@:%ld", v3, v4, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)_minimumTimeToLiveForEntry:(uint64_t)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = *(a1 + 56);
    if (v6 < 0.0)
    {
      [v4 identifier];
      objc_claimAutoreleasedReturnValue();
      v8 = OUTLINED_FUNCTION_1_3();
      v9 = [(HDOntologyFeatureCoordinator *)v8 _featureEvaluatorForIdentifier:v2];

      if (v9 && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
      {
        [objc_opt_class() minimumTimeToLive];
        v6 = v10;
      }

      else if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
      {
        v6 = 604800.0;
      }

      else
      {
        v6 = 2592000.0;
      }
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)_featureEvaluatorForIdentifier:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[3];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6_0();
    v7 = __63__HDOntologyFeatureCoordinator__featureEvaluatorForIdentifier___block_invoke;
    v8 = &unk_2796B95D0;
    v9 = v3;
    a1 = [v4 hk_firstObjectPassingTest:v6];
  }

  return a1;
}

- (void)_callDidInsertEntryTestHookForEntry:(void *)a3 transaction:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = MEMORY[0x253078050](*(a1 + 48));
    if (v7)
    {
      v8 = [v6 graphDatabase];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6_0();
      v10 = __80__HDOntologyFeatureCoordinator__callDidInsertEntryTestHookForEntry_transaction___block_invoke;
      v11 = &unk_2796B96A0;
      v14 = v7;
      v12 = a1;
      v13 = v5;
      [v8 onCommit:v9 orRollback:0];
    }
  }
}

- (void)_logRequiredShardsByIdentifier:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"["];
    v5 = [OUTLINED_FUNCTION_5() allKeys];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6_0();
    v9 = __63__HDOntologyFeatureCoordinator__logRequiredShardsByIdentifier___block_invoke;
    v10 = &unk_2796B9678;
    v11 = v4;
    [v2 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v5, v8}];

    [v2 appendFormat:@"]"];
    _HKInitializeLogging();
    v6 = HKLogHealthOntology();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = a1;
      v14 = 2112;
      v15 = v2;
      _os_log_impl(&dword_2514A1000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: underlying conditions require shards: %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_markEntriesOrLogErrorForItems:(uint64_t)a1
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v10 = 0;
    v4 = [(HDOntologyFeatureCoordinator *)a1 _performOrJournalFeatureCoordinatorRequireOperationForItems:v3 error:&v10];
    v5 = v10;
    if ((v4 & 1) == 0)
    {
      v6 = [v3 hk_map:&__block_literal_global_355];
      _HKInitializeLogging();
      v7 = HKLogHealthOntology();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        v12 = a1;
        v13 = 2114;
        v14 = v5;
        v15 = 2114;
        v16 = v9;
        _os_log_error_impl(&dword_2514A1000, v7, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ Unable to mark [%{public}@]", buf, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_performOrJournalFeatureCoordinatorRequireOperationForItems:(uint64_t)a3 error:
{
  if (result)
  {
    v5 = result;
    v6 = a2;
    v7 = objc_alloc(OUTLINED_FUNCTION_4_1());
    v8 = [(_HDOntologyFeatureCoordinatorRequireOperation *)v7 initWithItems:v3];

    WeakRetained = objc_loadWeakRetained((v5 + 64));
    [WeakRetained lockUpdateLock];

    v10 = objc_loadWeakRetained((v5 + 64));
    v11 = [v10 profile];
    v12 = [v8 performOrJournalWithProfile:v11 error:a3];

    v13 = objc_loadWeakRetained((v5 + 64));
    [v13 unlockUpdateLock];

    return v12;
  }

  return result;
}

- (uint64_t)_canMakeFeatureRequestForShardWithIdentifier:(char)a3 options:(uint64_t)a4 error:
{
  v7 = a2;
  if (!a1)
  {
    goto LABEL_6;
  }

  if ((HKIsKnownOntologyShardIdentifier() & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"%@ is not a known shard identifier", v7}];
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (a3)
  {
    v10 = [(HDOntologyFeatureCoordinator *)a1 _featureEvaluatorForIdentifier:v7];
    v11 = v10;
    if (v10)
    {
      v8 = [v10 canRequireShardWithError:a4];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_7:

  return v8;
}

+ (BOOL)unitTesting_processRequiredShardItemWithIdentifier:(id)a3 options:(unint64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [[_HDRequiredShardItem alloc] initWithShardIdentfier:v11 options:a4];

  v13 = [MEMORY[0x277D10788] contextForReadingProtectedData];
  v14 = [v10 database];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  v19 = __105__HDOntologyFeatureCoordinator_unitTesting_processRequiredShardItemWithIdentifier_options_profile_error___block_invoke;
  v20 = &unk_2796B96C8;
  v22 = v10;
  v23 = a1;
  v21 = v12;
  v15 = v10;
  v16 = v12;
  LOBYTE(a6) = [v14 performTransactionWithContext:v13 error:a6 block:v18 inaccessibilityHandler:0];

  return a6;
}

@end