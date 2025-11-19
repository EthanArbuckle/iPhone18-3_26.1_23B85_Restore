@interface HDWorkoutBasicDataSource
- (HDWorkoutBasicDataSource)initWithConfiguration:(id)a3 client:(id)a4;
- (NSSet)sampleTypesToCollect;
- (id)_takeHeartRateCollectionAssertion;
- (id)transactionalQuantityInsertHandlerForProfile:(id)a3 journaled:(BOOL)a4 count:(int64_t)a5;
- (uint64_t)_stopCollection;
- (void)_stopObservingSampleTypes:(uint64_t)a1;
- (void)aggregator:(id)a3 didCollectSensorData:(id)a4 objectType:(id)a5 device:(id)a6;
- (void)dataCollectionObservationStateDidChangeForClient:(id)a3;
- (void)dealloc;
- (void)setSampleTypesToCollect:(id)a3;
- (void)setSessionServer:(id)a3;
- (void)stopCollectionOnConnectionInvalidation;
- (void)workoutDataDestination:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)workoutDataDestination:(id)a3 didUpdateConfiguration:(id)a4;
- (void)workoutDataDestination:(id)a3 requestsDataFrom:(id)a4 to:(id)a5;
- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6;
@end

@implementation HDWorkoutBasicDataSource

- (HDWorkoutBasicDataSource)initWithConfiguration:(id)a3 client:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = HDWorkoutBasicDataSource;
  v9 = [(HDWorkoutBasicDataSource *)&v27 init];
  if (v9)
  {
    v10 = [v8 profile];
    objc_storeWeak(&v9->_profile, v10);

    objc_storeStrong(&v9->_client, a4);
    objc_storeStrong(&v9->_workoutConfiguration, a3);
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v9->_lock;
    v9->_lock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCAD78]);
    workoutDataProcessorUUID = v9->_workoutDataProcessorUUID;
    v9->_workoutDataProcessorUUID = v13;

    _HKInitializeLogging();
    v15 = objc_alloc(MEMORY[0x277CCD2B0]);
    v16 = [v15 initWithProcessor:v9 sourceProtocol:&unk_283CBA250 destinationProtocol:&unk_283CD7C50 loggingCategory:*MEMORY[0x277CCC330]];
    workoutDataFlowLink = v9->_workoutDataFlowLink;
    v9->_workoutDataFlowLink = v16;

    v18 = [MEMORY[0x277CBEB98] set];
    sampleTypesToCollect = v9->_sampleTypesToCollect;
    v9->_sampleTypesToCollect = v18;

    v20 = [[HDClientDataCollectionObservationStateMonitor alloc] initWithClient:v8 delegate:v9];
    clientStateMonitor = v9->_clientStateMonitor;
    v9->_clientStateMonitor = v20;

    v9->_collectionStopped = 0;
    v22 = [HDWorkoutUtilities alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v24 = [(HDWorkoutUtilities *)v22 initWithProfile:WeakRetained];
    workoutUtilities = v9->_workoutUtilities;
    v9->_workoutUtilities = v24;
  }

  return v9;
}

- (void)stopCollectionOnConnectionInvalidation
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@:stopping collection on connection invalidation", &v5, 0xCu);
  }

  [(HDWorkoutBasicDataSource *)self _stopCollection];
  v4 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_stopCollection
{
  if (result)
  {
    v1 = *(result + 32);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __43__HDWorkoutBasicDataSource__stopCollection__block_invoke;
    v2[3] = &unk_278613968;
    v2[4] = result;
    return [v1 hk_withLock:v2];
  }

  return result;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HDWorkoutBasicDataSource *)self workoutDataProcessorUUID];
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "Basic data source deallocated: %@.", buf, 0xCu);
  }

  [(HDWorkoutBasicDataSource *)self _stopCollection];
  v7.receiver = self;
  v7.super_class = HDWorkoutBasicDataSource;
  [(HDWorkoutBasicDataSource *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

void __43__HDWorkoutBasicDataSource__stopCollection__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 104);
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  v4 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to stop collection when it is already stopped", &v9, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Ending collection", &v9, 0xCu);
    }

    [(HDWorkoutBasicDataSource *)*(a1 + 32) _stopObservingSampleTypes:?];
    [*(*(a1 + 32) + 72) invalidate];
    [*(*(a1 + 32) + 80) invalidate];
    [*(*(a1 + 32) + 96) invalidate];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [WeakRetained removeObserver:*(a1 + 32)];

    *(*(a1 + 32) + 104) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingSampleTypes:(uint64_t)a1
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = a1;
      v26 = 2114;
      v27 = v3;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Ending observation of types: %{public}@", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            WeakRetained = objc_loadWeakRetained((a1 + 8));
            v12 = [WeakRetained dataManager];
            v13 = [v12 quantitySeriesManager];
            [v13 removeObserver:a1 forType:v10];

            v14 = objc_loadWeakRetained((a1 + 8));
            v15 = [v14 dataCollectionManager];
            v16 = [v15 aggregatorForType:v10];

            [v16 unregisterSensorDataObserver:a1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v3 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setSampleTypesToCollect:(id)a3
{
  v4 = a3;
  [HDActiveDataCollectionObserverServer launchObservingProcessesForTypes:v4];
  lock = self->_lock;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke;
  v17[3] = &unk_278613920;
  v17[4] = self;
  v18 = v4;
  v6 = v4;
  [(NSLock *)lock hk_withLock:v17];
  self->_sampleTypesContainHeartRate = 0;
  v7 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke_416;
  v14[3] = &unk_27862A630;
  v15 = v7;
  v16 = self;
  v8 = v7;
  v9 = [v6 hk_mapToDictionary:v14];
  v10 = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke_2;
  v12[3] = &unk_278613920;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [(NSLock *)v10 hk_withLock:v12];
}

void __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 104) & 1) == 0)
  {
    v2 = a1;
    if (([*(a1 + 40) isEqual:*(v1 + 64)] & 1) == 0)
    {
      _HKInitializeLogging();
      v3 = MEMORY[0x277CCC330];
      v4 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v2 + 32);
        v6 = *(v2 + 40);
        v7 = *(v5 + 64);
        *buf = 138543874;
        v40 = v5;
        v41 = 2114;
        v42 = v7;
        v43 = 2114;
        v44 = v6;
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Adjusting collected sample types: %{public}@ -> %{public}@", buf, 0x20u);
      }

      v8 = [*(v2 + 40) hk_minus:*(*(v2 + 32) + 64)];
      v9 = [*(*(v2 + 32) + 64) hk_minus:*(v2 + 40)];
      v10 = *(v2 + 32);
      v11 = v8;
      if (v10)
      {
        v32 = v9;
        v33 = v2;
        _HKInitializeLogging();
        v12 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v40 = v10;
          v41 = 2114;
          v42 = v11;
          _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning observation of types: %{public}@", buf, 0x16u);
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v35 objects:buf count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v35 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                WeakRetained = objc_loadWeakRetained((v10 + 8));
                v20 = [WeakRetained dataManager];
                v21 = [v20 quantitySeriesManager];
                [v21 addSynchronousObserver:v10 forType:v18];

                v22 = objc_loadWeakRetained((v10 + 8));
                v23 = [v22 dataCollectionManager];
                v24 = [v23 aggregatorForType:v18];

                [v24 registerSensorDataObserver:v10 queue:0];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v35 objects:buf count:16];
          }

          while (v15);
        }

        v25 = objc_loadWeakRetained((v10 + 8));
        v26 = [v25 dataCollectionManager];
        v27 = [MEMORY[0x277CBEAA8] date];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __55__HDWorkoutBasicDataSource__startObservingSampleTypes___block_invoke;
        v34[3] = &unk_2786130B0;
        v34[4] = v10;
        [v26 requestAggregationThroughDate:v27 types:v13 mode:0 options:1 completion:v34];

        v9 = v32;
        v2 = v33;
      }

      [(HDWorkoutBasicDataSource *)*(v2 + 32) _stopObservingSampleTypes:v9];
      v28 = [*(v2 + 40) copy];
      v29 = *(v2 + 32);
      v30 = *(v29 + 64);
      *(v29 + 64) = v28;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke_416(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v11 isEqual:*(a1 + 32)])
  {
    *(*(a1 + 40) + 88) = 1;
  }

  else
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v11 code];
    v8 = v7 == 179 || v7 == 75;
    v9 = 60.0;
    if (!v8)
    {
      v9 = 0.5;
    }

    v10 = [v6 numberWithDouble:v9];
    v5[2](v5, v11, v10);
  }
}

void __52__HDWorkoutBasicDataSource_setSampleTypesToCollect___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 104) == 1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v26 = v4;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to take assertions and collection already ended", buf, 0xCu);
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [*(v2 + 24) process];
    v8 = [v7 applicationIdentifier];
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v24 = [v6 stringWithFormat:@"%@-%@", v8, v11];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v13 = [WeakRetained dataCollectionManager];
    v14 = *(a1 + 40);
    v15 = [*(*(a1 + 32) + 96) currentObserverState];
    v16 = [v13 takeCollectionAssertionWithOwnerIdentifier:v24 collectionIntervalsByType:v14 observerState:v15];

    v17 = [(HDWorkoutBasicDataSource *)*(a1 + 32) _takeHeartRateCollectionAssertion];
    [*(*(a1 + 32) + 72) invalidate];
    v18 = *(a1 + 32);
    v19 = *(v18 + 72);
    *(v18 + 72) = v16;
    v20 = v16;

    [*(*(a1 + 32) + 80) invalidate];
    v21 = *(a1 + 32);
    v22 = *(v21 + 80);
    *(v21 + 80) = v17;

    v23 = *MEMORY[0x277D85DE8];
  }
}

- (id)_takeHeartRateCollectionAssertion
{
  v1 = a1;
  v21[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    if (*(v1 + 88) == 1)
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = [v1[3] process];
      v5 = [v4 applicationIdentifier];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v3 stringWithFormat:@"%@-%@", v5, v7];

      WeakRetained = objc_loadWeakRetained(v1 + 1);
      v10 = [WeakRetained dataCollectionManager];
      v20 = v2;
      v11 = MEMORY[0x277CCABB0];
      v12 = [v2 code];
      v13 = v12 == 179 || v12 == 75;
      v14 = 60.0;
      if (!v13)
      {
        v14 = 0.5;
      }

      v15 = [v11 numberWithDouble:v14];
      v21[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v17 = [v1[12] currentObserverState];
      v1 = [v10 takeCollectionAssertionWithOwnerIdentifier:v8 collectionIntervalsByType:v16 observerState:v17];
    }

    else
    {
      v1 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v1;
}

- (NSSet)sampleTypesToCollect
{
  [(NSLock *)self->_lock lock];
  v3 = self->_sampleTypesToCollect;
  [(NSLock *)self->_lock unlock];

  return v3;
}

void __55__HDWorkoutBasicDataSource__startObservingSampleTypes___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  v7 = *MEMORY[0x277CCC330];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@: Completed initial aggregation request for newly observed types.", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Initial aggregation upon observation start failed: %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __86__HDWorkoutBasicDataSource__enumerateSamplesOfType_from_to_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  return 1;
}

void __94__HDWorkoutBasicDataSource__workoutDataDestination_requestsSamplesOfType_from_to_transaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addOtherSamples:v3 dataSource:*(a1 + 40)];
  }
}

uint64_t __94__HDWorkoutBasicDataSource__workoutDataDestination_requestsSamplesOfType_from_to_transaction___block_invoke_435(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = v3;
  if (*(a1 + 56))
  {
    goto LABEL_5;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v17;
  }

  v7 = [v3 startDate];
  v8 = [v7 hk_isAfterDate:*(*(*(a1 + 40) + 8) + 40)];

  v10 = v17;
  if ((v8 & 1) == 0)
  {
LABEL_5:
    [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
    v9 = [*(*(*(a1 + 48) + 8) + 40) count];
    v10 = v17;
    if (v9 >= 0x190)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(*(*(a1 + 48) + 8) + 40);
      (*(*(a1 + 32) + 16))();
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:400];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      objc_autoreleasePoolPop(v11);
      v10 = v17;
    }
  }

  return MEMORY[0x2821F96F8](v9, v10);
}

void __97__HDWorkoutBasicDataSource__workoutDataDestination_requestsQuantitiesOfType_from_to_transaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addQuantities:v3 dataSource:*(a1 + 40)];
  }
}

uint64_t __97__HDWorkoutBasicDataSource__workoutDataDestination_requestsQuantitiesOfType_from_to_transaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = v3;
  if (*(a1 + 56))
  {
    goto LABEL_5;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v18;
  }

  v7 = [v3 hdw_dateInterval];
  v8 = [v7 startDate];
  v9 = [v8 hk_isAfterDate:*(*(*(a1 + 40) + 8) + 40)];

  v11 = v18;
  if ((v9 & 1) == 0)
  {
LABEL_5:
    [*(*(*(a1 + 48) + 8) + 40) addObject:v18];
    v10 = [*(*(*(a1 + 48) + 8) + 40) count];
    v11 = v18;
    if (v10 >= 0x190)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(*(*(a1 + 48) + 8) + 40);
      (*(*(a1 + 32) + 16))();
      v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:400];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      objc_autoreleasePoolPop(v12);
      v11 = v18;
    }
  }

  return MEMORY[0x2821F96F8](v10, v11);
}

- (void)setSessionServer:(id)a3
{
  v5 = a3;
  v4 = objc_storeWeak(&self->_sessionServer, v5);
  [v5 addObserver:self queue:0];
}

- (void)workoutDataDestination:(id)a3 requestsDataFrom:(id)a4 to:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = v10;
  v13 = v11;
  v42 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    v13 = [v14 dateByAddingTimeInterval:-86400.0];

    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v52 = self;
      v53 = 2114;
      v54 = v13;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Start date is nil. Updating start date to %{public}@", buf, 0x16u);
    }
  }

  v16 = v12;
  v17 = MEMORY[0x277CCC330];
  if (!v12)
  {
    v16 = [(HDWorkoutBasicDataSource *)v13 dateByAddingTimeInterval:3600.0];
    _HKInitializeLogging();
    v18 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v52 = self;
      v53 = 2114;
      v54 = v16;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: End date is nil. Updating end date to %{public}@", buf, 0x16u);
    }
  }

  v41 = v12;
  _HKInitializeLogging();
  v19 = *v17;
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v52 = self;
    v53 = 2114;
    v54 = v13;
    v55 = 2114;
    v56 = v16;
    _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching data from %{public}@ -> %{public}@", buf, 0x20u);
  }

  [(NSLock *)self->_lock lock];
  v20 = [(NSSet *)self->_sampleTypesToCollect copy];
  [(NSLock *)self->_lock unlock];
  v21 = *v17;
  v22 = _HKLogSignpostIDGenerate();
  _HKInitializeLogging();
  v23 = *v17;
  if (os_signpost_enabled(*v17))
  {
    v24 = v23;
    v25 = v24;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 138543618;
      v52 = v13;
      v53 = 2114;
      v54 = v16;
      _os_signpost_emit_with_name_impl(&dword_228986000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v22, "workout-basic-data-source", "request data from startDate=%{public}@ to endDate=%{public}@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v27 = [WeakRetained database];
  v50 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __71__HDWorkoutBasicDataSource_workoutDataDestination_requestsDataFrom_to___block_invoke;
  v43[3] = &unk_278625F78;
  v28 = v20;
  v49 = v22;
  v44 = v28;
  v45 = self;
  v29 = v8;
  v46 = v29;
  v30 = v13;
  v47 = v30;
  v31 = v16;
  v48 = v31;
  v32 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:v27 error:&v50 block:v43];
  v33 = v50;

  _HKInitializeLogging();
  v34 = MEMORY[0x277CCC330];
  v35 = *MEMORY[0x277CCC330];
  if (os_signpost_enabled(*MEMORY[0x277CCC330]))
  {
    v36 = v35;
    v37 = v36;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_228986000, v37, OS_SIGNPOST_INTERVAL_END, v22, "workout-basic-data-source", "", buf, 2u);
    }
  }

  _HKInitializeLogging();
  v38 = *v34;
  if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v52 = self;
    v53 = 2114;
    v54 = v30;
    v55 = 2114;
    v56 = v31;
    _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished fetching data for range %{public}@ -> %{public}@", buf, 0x20u);
  }

  if (!v32)
  {
    _HKInitializeLogging();
    v39 = *v34;
    if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v52 = self;
      v53 = 2114;
      v54 = v33;
      _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "%{public}@: Read transaction handling data request failed: %{public}@", buf, 0x16u);
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __71__HDWorkoutBasicDataSource_workoutDataDestination_requestsDataFrom_to___block_invoke(uint64_t a1, void *a2)
{
  v108[2] = *MEMORY[0x277D85DE8];
  v59 = a2;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v70 = a1;
  obj = *(a1 + 32);
  v60 = [obj countByEnumeratingWithState:&v72 objects:v96 count:16];
  if (v60)
  {
    v58 = *v73;
    do
    {
      v3 = 0;
      do
      {
        if (*v73 != v58)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v66 = v3;
        v5 = *(*(&v72 + 1) + 8 * v3);
        context = objc_autoreleasePoolPush();
        _HKInitializeLogging();
        v6 = *MEMORY[0x277CCC330];
        if (os_signpost_enabled(*MEMORY[0x277CCC330]))
        {
          v7 = v6;
          v8 = v7;
          v9 = v70[9];
          if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v5;
            _os_signpost_emit_with_name_impl(&dword_228986000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "workout-basic-data-source-enumeration", "beginning enumeration of %{public}@", &buf, 0xCu);
          }
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v12 = v70[5];
        v11 = v70[6];
        v14 = v70[7];
        v13 = v70[8];
        v71 = v12;
        if (isKindOfClass)
        {
          v68 = v11;
          v15 = v5;
          v16 = v14;
          v17 = v13;
          v18 = v59;
          if (v12)
          {
            aBlock = MEMORY[0x277D85DD0];
            v90 = 3221225472;
            v91 = __97__HDWorkoutBasicDataSource__workoutDataDestination_requestsQuantitiesOfType_from_to_transaction___block_invoke;
            v92 = &unk_27862A658;
            v93 = v68;
            v94 = v12;
            v19 = _Block_copy(&aBlock);
            v83 = 0;
            v84 = &v83;
            v85 = 0x3032000000;
            v86 = __Block_byref_object_copy__169;
            v87 = __Block_byref_object_dispose__169;
            v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:400];
            v77 = 0;
            v78 = &v77;
            v79 = 0x3032000000;
            v80 = __Block_byref_object_copy__169;
            v81 = __Block_byref_object_dispose__169;
            v82 = 0;
            WeakRetained = objc_loadWeakRetained((v12 + 8));
            v108[0] = 0;
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v98 = __97__HDWorkoutBasicDataSource__workoutDataDestination_requestsQuantitiesOfType_from_to_transaction___block_invoke_2;
            v99 = &unk_27862A6A8;
            v103 = v17 != 0;
            v101 = &v77;
            v102 = &v83;
            v21 = v19;
            v100 = v21;
            v22 = [HDWorkoutUtilities enumerateQuantitiesOfType:v15 from:v16 to:v17 transaction:v18 profile:WeakRetained error:v108 handler:&buf];
            v23 = v108[0];

            if (!v22)
            {
              _HKInitializeLogging();
              v24 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                *v104 = 138543874;
                *&v104[4] = v12;
                *&v104[12] = 2114;
                *&v104[14] = v15;
                *&v104[22] = 2114;
                v105 = v23;
                _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate samples of type %{public}@: %{public}@", v104, 0x20u);
              }
            }

            (*(v21 + 2))(v21, v84[5]);

            _Block_object_dispose(&v77, 8);
            _Block_object_dispose(&v83, 8);
          }
        }

        else
        {
          v63 = v11;
          v61 = v5;
          v62 = v14;
          v69 = v13;
          v64 = v59;
          if (v12)
          {
            aBlock = MEMORY[0x277D85DD0];
            v90 = 3221225472;
            v91 = __94__HDWorkoutBasicDataSource__workoutDataDestination_requestsSamplesOfType_from_to_transaction___block_invoke;
            v92 = &unk_27862A658;
            v93 = v63;
            v94 = v12;
            v25 = _Block_copy(&aBlock);
            v83 = 0;
            v84 = &v83;
            v85 = 0x3032000000;
            v86 = __Block_byref_object_copy__169;
            v87 = __Block_byref_object_dispose__169;
            v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:400];
            v77 = 0;
            v78 = &v77;
            v79 = 0x3032000000;
            v80 = __Block_byref_object_copy__169;
            v81 = __Block_byref_object_dispose__169;
            v82 = 0;
            v76 = 0;
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v98 = __94__HDWorkoutBasicDataSource__workoutDataDestination_requestsSamplesOfType_from_to_transaction___block_invoke_435;
            v99 = &unk_27862A680;
            v103 = v69 != 0;
            v101 = &v77;
            v102 = &v83;
            v26 = v25;
            v100 = v26;
            v27 = v62;
            v28 = v69;
            v29 = &buf;
            v30 = v64;
            v65 = v61;
            v31 = objc_loadWeakRetained((v71 + 8));
            v32 = [HDSampleEntity entityEnumeratorWithType:v65 profile:v31];

            if (v28)
            {
              v33 = [MEMORY[0x277D10B18] predicateWithProperty:@"start_date" lessThanOrEqualToValue:v28];
              v34 = v33;
              if (v27)
              {
                v35 = MEMORY[0x277D10B18];
                v36 = [v27 dateByAddingTimeInterval:-86400.0];
                v37 = [v35 predicateWithProperty:@"start_date" greaterThanOrEqualToValue:v36];

                v38 = MEMORY[0x277D10B20];
                v108[0] = v34;
                v108[1] = v37;
                v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
                v40 = [v38 predicateMatchingAllPredicates:v39];
              }

              else
              {
                v40 = v33;
              }
            }

            else
            {
              v40 = 0;
            }

            if (v27)
            {
              v41 = [MEMORY[0x277D10B18] predicateWithProperty:@"end_date" greaterThanOrEqualToValue:v27];
              v42 = v41;
              if (v40)
              {
                v43 = MEMORY[0x277D10B20];
                v107[0] = v40;
                v107[1] = v41;
                v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:2];
                v45 = [v43 predicateMatchingAllPredicates:v44];

                v40 = v45;
              }

              else
              {
                v40 = v41;
              }
            }

            [v32 setPredicate:v40];
            *v104 = MEMORY[0x277D85DD0];
            *&v104[8] = 3221225472;
            *&v104[16] = __86__HDWorkoutBasicDataSource__enumerateSamplesOfType_from_to_transaction_error_handler___block_invoke;
            v105 = &unk_278621698;
            v46 = v29;
            v106 = v46;
            v47 = [v32 enumerateInTransaction:v30 error:&v76 handler:v104];

            v95 = v47;
            v48 = v95;

            v49 = v76;
            if ((v48 & 1) == 0)
            {
              _HKInitializeLogging();
              v50 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                *v104 = 138543874;
                *&v104[4] = v71;
                *&v104[12] = 2114;
                *&v104[14] = v65;
                *&v104[22] = 2114;
                v105 = v49;
                _os_log_error_impl(&dword_228986000, v50, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate samples of type %{public}@: %{public}@", v104, 0x20u);
              }
            }

            (*(v26 + 2))(v26, v84[5]);

            _Block_object_dispose(&v77, 8);
            _Block_object_dispose(&v83, 8);
          }
        }

        _HKInitializeLogging();
        v51 = *MEMORY[0x277CCC330];
        if (os_signpost_enabled(*MEMORY[0x277CCC330]))
        {
          v52 = v51;
          v53 = v52;
          v54 = v70[9];
          if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_228986000, v53, OS_SIGNPOST_INTERVAL_END, v54, "workout-basic-data-source-enumeration", "", &buf, 2u);
          }
        }

        objc_autoreleasePoolPop(context);
        v3 = v66 + 1;
      }

      while (v60 != v66 + 1);
      v60 = [obj countByEnumeratingWithState:&v72 objects:v96 count:16];
    }

    while (v60);
  }

  v55 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)workoutDataDestination:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (a5 == 4 || a5 == 2)
  {
    [(HDWorkoutBasicDataSource *)self _stopCollection];
  }
}

- (void)workoutDataDestination:(id)a3 didUpdateConfiguration:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(HDWorkoutBasicDataSource *)self setWorkoutConfiguration:v5];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@: Updated workout configuration : %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)transactionalQuantityInsertHandlerForProfile:(id)a3 journaled:(BOOL)a4 count:(int64_t)a5
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__HDWorkoutBasicDataSource_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke;
  aBlock[3] = &unk_27862A6D0;
  v13 = a4;
  aBlock[4] = self;
  v12 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);

  return v9;
}

void __89__HDWorkoutBasicDataSource_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v22 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (*(a1 + 48) != 1 || [*(*(a1 + 32) + 112) shouldAllowWorkoutDatabaseAccessWhileLocked])
  {
    v17 = [[HDWorkoutSeriesQuantity alloc] initWithQuantity:v22 dateInterval:v14 series:v15];
    [*(a1 + 40) addObject:v17];
    if (a7)
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = v19;
      if (v18)
      {
        v21 = *(v18 + 40);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __47__HDWorkoutBasicDataSource__forwardQuantities___block_invoke;
        v23[3] = &unk_278613880;
        v24 = v19;
        v25 = v18;
        [v21 sendToDestinationProcessors:v23];
      }
    }
  }
}

- (void)dataCollectionObservationStateDidChangeForClient:(id)a3
{
  v4 = [(HDClientDataCollectionObservationStateMonitor *)self->_clientStateMonitor currentObserverState];
  [(HDDataCollectionAssertion *)self->_collectionAssertion setObserverState:v4];

  v5 = [(HDClientDataCollectionObservationStateMonitor *)self->_clientStateMonitor currentObserverState];
  [(HDDataCollectionAssertion *)self->_heartRateDataCollectionAssertion setObserverState:v5];
}

- (void)aggregator:(id)a3 didCollectSensorData:(id)a4 objectType:(id)a5 device:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a5 identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCCB68]];

  if (v10)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      v14 = *MEMORY[0x277CCE110];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v14;
            v17 = v16;
            v18 = [v17 quantity];
            v32 = v18;
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

            workoutDataFlowLink = self->_workoutDataFlowLink;
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __78__HDWorkoutBasicDataSource_aggregator_didCollectSensorData_objectType_device___block_invoke;
            v24[3] = &unk_2786138A8;
            v24[4] = self;
            v25 = v19;
            v26 = v17;
            v21 = v19;
            [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v24];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v12);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __78__HDWorkoutBasicDataSource_aggregator_didCollectSensorData_objectType_device___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(*(a1 + 32) + 56) activityType] == 82)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 48) dateInterval];
      v5 = [v4 startDate];
      [v6 addMetadataToWorkoutActivity:v3 withSampleStartDate:v5 dataSource:*(a1 + 32)];
    }
  }

  else
  {
    [v6 addMetadata:*(a1 + 40) dataSource:*(a1 + 32)];
  }
}

- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (a4 == 10)
  {
    lock = self->_lock;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__HDWorkoutBasicDataSource_workoutSession_didChangeToState_fromState_date___block_invoke_2;
    v19[3] = &unk_278613968;
    v19[4] = self;
    [(NSLock *)lock hk_withLock:v19];
  }

  else if (a4 == 7 && a5 == 10)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v12 = self->_lock;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __75__HDWorkoutBasicDataSource_workoutSession_didChangeToState_fromState_date___block_invoke;
    v22[3] = &unk_278613990;
    v22[4] = self;
    v22[5] = &v23;
    [(NSLock *)v12 hk_withLock:v22];
    if (*(v24 + 24) == 1)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = self;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Entering running state and collection stopped. Will not take assertion.", buf, 0xCu);
      }
    }

    else
    {
      v15 = [(HDWorkoutBasicDataSource *)&self->super.isa _takeHeartRateCollectionAssertion];
      v16 = self->_lock;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __75__HDWorkoutBasicDataSource_workoutSession_didChangeToState_fromState_date___block_invoke_443;
      v20[3] = &unk_278613920;
      v20[4] = self;
      v17 = v15;
      v21 = v17;
      [(NSLock *)v16 hk_withLock:v20];
    }

    _Block_object_dispose(&v23, 8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __75__HDWorkoutBasicDataSource_workoutSession_didChangeToState_fromState_date___block_invoke_443(uint64_t a1)
{
  [*(*(a1 + 32) + 80) invalidate];
  v2 = *(a1 + 40);
  v3 = (*(a1 + 32) + 80);

  objc_storeStrong(v3, v2);
}

@end