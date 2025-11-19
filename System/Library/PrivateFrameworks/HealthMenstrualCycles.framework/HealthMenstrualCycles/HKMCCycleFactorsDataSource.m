@interface HKMCCycleFactorsDataSource
- (HKMCCycleFactorsDataSource)initWithHealthStore:(id)a3 pregnancyModelProvider:(id)a4 queue:(id)a5;
- (HKMCCycleFactorsDataSourceDelegate)delegate;
- (void)_handleCycleFactorsAdded:(void *)a3 deletedObjects:;
- (void)_startPregnancyModelObservationIfNeeded;
- (void)dealloc;
- (void)pregnancyModelDidUpdate:(id)a3;
- (void)startObservingCycleFactorsInDayIndexRange:(id)a3;
- (void)stopObserving;
@end

@implementation HKMCCycleFactorsDataSource

- (HKMCCycleFactorsDataSource)initWithHealthStore:(id)a3 pregnancyModelProvider:(id)a4 queue:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = HKMCCycleFactorsDataSource;
  v12 = [(HKMCCycleFactorsDataSource *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, a3);
    objc_storeStrong(&v13->_queue, a5);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    cycleFactors = v13->_cycleFactors;
    v13->_cycleFactors = v14;

    if (v10)
    {
      v16 = v10;
      pregnancyModelProvider = v13->_pregnancyModelProvider;
      v13->_pregnancyModelProvider = v16;
      v18 = 1;
    }

    else
    {
      v19 = [[HKMCPregnancyModelProvider alloc] initWithHealthStore:v9 startQueryImmediately:0];
      v18 = 0;
      pregnancyModelProvider = v13->_pregnancyModelProvider;
      v13->_pregnancyModelProvider = v19;
    }

    v13->_pregnancyQueryHasStarted = v18;
    v13->_isRegisteredForPregnancyModelUpdates = 0;
  }

  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = objc_opt_class();
    *buf = 138543618;
    v28 = v22;
    v29 = 2048;
    v30 = v13;
    v23 = v22;
    _os_log_impl(&dword_2518FC000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Initializing", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)startObservingCycleFactorsInDayIndexRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v52 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCC2E8];
  if (!self->_observerQuery)
  {
LABEL_19:
    self->_currentDayIndexRange.start = var0 - 150;
    self->_currentDayIndexRange.duration = var1 + 150;
    _HKInitializeLogging();
    v24 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = objc_opt_class();
      start = self->_currentDayIndexRange.start;
      duration = self->_currentDayIndexRange.duration;
      v29 = v26;
      v30 = NSStringFromHKDayIndexRange();
      *buf = 138543874;
      v47 = v26;
      v48 = 2048;
      v49 = self;
      v50 = 2112;
      v51 = v30;
      _os_log_impl(&dword_2518FC000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Starting cycle factors fetch for range: %@", buf, 0x20u);
    }

    [(HKMCCycleFactorsDataSource *)self _startPregnancyModelObservationIfNeeded];
    v31 = [MEMORY[0x277CCAC30] hk_predicateForSamplesInDayIndexRange:{self->_currentDayIndexRange.start, self->_currentDayIndexRange.duration}];
    v32 = MEMORY[0x277CCD848];
    v33 = HKMCCycleFactorsTypes();
    v34 = [v32 hkmc_descriptorsForTypes:v33 predicate:v31];

    objc_initWeak(buf, self);
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke;
    v43 = &unk_2796D52E8;
    v44 = self;
    objc_copyWeak(&v45, buf);
    v35 = MEMORY[0x253087260](&v40);
    v36 = [objc_alloc(MEMORY[0x277CCCFF0]) initWithQueryDescriptors:v34 anchor:0 limit:0 resultsHandler:v35];
    observerQuery = self->_observerQuery;
    self->_observerQuery = v36;

    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p Cycle Factors Query>", objc_opt_class(), self, v40, v41, v42, v43, v44];
    [(HKAnchoredObjectQuery *)self->_observerQuery setDebugIdentifier:v38];

    [(HKAnchoredObjectQuery *)self->_observerQuery setUpdateHandler:v35];
    [(HKHealthStore *)self->_healthStore executeQuery:self->_observerQuery];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);

    goto LABEL_22;
  }

  _HKInitializeLogging();
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 138543618;
    v47 = objc_opt_class();
    v48 = 2048;
    v49 = self;
    v9 = v47;
    _os_log_impl(&dword_2518FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] We're already running a cycle factors query", buf, 0x16u);
  }

  v11 = self->_currentDayIndexRange.start;
  v10 = self->_currentDayIndexRange.duration;
  if (var0 != v11 || v10 != var1)
  {
    if (var0 >= v11 && var0 - v11 < v10)
    {
      v13 = var1 + var0 - 1;
      if (var1 <= 0)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v14 = __OFSUB__(v13, v11);
      v15 = v13 - v11;
      if (v15 < 0 == v14 && v15 < v10)
      {
        _HKInitializeLogging();
        v16 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = objc_opt_class();
          *buf = 138543618;
          v47 = v18;
          v48 = 2048;
          v49 = self;
          v19 = v18;
          _os_log_impl(&dword_2518FC000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Skipping restarting query, new dayIndexRange is already covered", buf, 0x16u);
        }

        goto LABEL_22;
      }
    }

    [(HKMCCycleFactorsDataSource *)self stopObserving];
    goto LABEL_19;
  }

  _HKInitializeLogging();
  v20 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = objc_opt_class();
    *buf = 138543618;
    v47 = v22;
    v48 = 2048;
    v49 = self;
    v23 = v22;
    _os_log_impl(&dword_2518FC000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Skipping restarting query, due to identical day index ranges", buf, 0x16u);
  }

LABEL_22:
  v39 = *MEMORY[0x277D85DE8];
}

void __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v9 && v10)
  {
    if ([v9 count] || objc_msgSend(v10, "count"))
    {
      v12 = *(*(a1 + 32) + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke_2;
      block[3] = &unk_2796D52C0;
      objc_copyWeak(&v18, (a1 + 40));
      v16 = v9;
      v17 = v10;
      dispatch_async(v12, block);

      objc_destroyWeak(&v18);
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke_cold_1(a1, v13, v11);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained stopObserving];
  }
}

void __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke_2(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(HKMCCycleFactorsDataSource *)WeakRetained _handleCycleFactorsAdded:a1[5] deletedObjects:?];
}

uint64_t __70__HKMCCycleFactorsDataSource__handleCycleFactorsAdded_deletedObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUID];
  v5 = [v3 UUID];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)pregnancyModelDidUpdate:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2048;
      v21 = self;
      v7 = v19;
      _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Received pregnancy model update", buf, 0x16u);
    }
  }

  if (self->_pregnancyModel == v4)
  {
    if (HKShowSensitiveLogItems())
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = objc_opt_class();
        *buf = 138543618;
        v19 = v11;
        v20 = 2048;
        v21 = self;
        v12 = v11;
        _os_log_impl(&dword_2518FC000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Skipping notifying delegate due to identical pregnancy model", buf, 0x16u);
      }
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HKMCCycleFactorsDataSource_pregnancyModelDidUpdate___block_invoke;
    block[3] = &unk_2796D4BD0;
    block[4] = self;
    v17 = v4;
    dispatch_async(queue, block);
  }

  v13 = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HKMCCycleFactorsDataSource_pregnancyModelDidUpdate___block_invoke_305;
  v15[3] = &unk_2796D4CE8;
  v15[4] = self;
  dispatch_async(v13, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __54__HKMCCycleFactorsDataSource_pregnancyModelDidUpdate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = objc_opt_class();
      v6 = *(a1 + 32);
      v10 = 138543618;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      v7 = v5;
      _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Notifying delegate of pregnancy model update", &v10, 0x16u);
    }
  }

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained cycleFactorsDataSource:*(a1 + 32) didUpdatePregnancyModel:*(a1 + 40)];

  v9 = *MEMORY[0x277D85DE8];
}

void *__54__HKMCCycleFactorsDataSource_pregnancyModelDidUpdate___block_invoke_305(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[4])
  {
    return [result startObservingCycleFactorsInDayIndexRange:{result[7], result[8]}];
  }

  return result;
}

- (void)stopObserving
{
  if (self->_observerQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    observerQuery = self->_observerQuery;
    self->_observerQuery = 0;

    pregnancyModelProvider = self->_pregnancyModelProvider;

    [(HKMCPregnancyModelProviding *)pregnancyModelProvider unregisterObserver:self];
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543618;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v5 = v9;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Dealloc", buf, 0x16u);
  }

  [(HKMCCycleFactorsDataSource *)self stopObserving];
  v7.receiver = self;
  v7.super_class = HKMCCycleFactorsDataSource;
  [(HKMCCycleFactorsDataSource *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (HKMCCycleFactorsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_startPregnancyModelObservationIfNeeded
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 72) != 1)
  {
    v23 = [MEMORY[0x277CCDD30] sharedBehavior];
    v24 = [v23 showSensitiveLogItems];

    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC2E8];
    v26 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v26)
      {
        v27 = v25;
        v28 = OUTLINED_FUNCTION_3_1();
        v35 = OUTLINED_FUNCTION_0_4(v28);
        v36 = "[%{public}@:%p] Starting pregnancy model query";
LABEL_14:
        OUTLINED_FUNCTION_1_3(&dword_2518FC000, v29, v30, v36, v31, v32, v33, v34, v41);
      }
    }

    else if (v26)
    {
      v37 = v25;
      v38 = OUTLINED_FUNCTION_3_1();
      v35 = OUTLINED_FUNCTION_0_4(v38);
      v36 = "[%{public}@:%p] Starting model query";
      goto LABEL_14;
    }

    v39 = *(a1 + 80);
    [v39 startQuery];
    [*(a1 + 80) registerObserver:a1 isUserInitiated:1];
    *(a1 + 72) = 257;

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC2E8];
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_3_1();
    v6 = OUTLINED_FUNCTION_0_4(v5);
    OUTLINED_FUNCTION_1_3(&dword_2518FC000, v7, v8, "[%{public}@:%p] Skipping starting query", v9, v10, v11, v12, v41);
  }

  if ((*(a1 + 73) & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = OUTLINED_FUNCTION_3_1();
      v16 = OUTLINED_FUNCTION_0_4(v15);
      OUTLINED_FUNCTION_1_3(&dword_2518FC000, v17, v18, "[%{public}@:%p] Registering for updates", v19, v20, v21, v22, v41);
    }

    [*(a1 + 80) registerObserver:a1 isUserInitiated:1];
    *(a1 + 73) = 1;
  }

LABEL_16:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)_handleCycleFactorsAdded:(void *)a3 deletedObjects:
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v35 = a3;
  if (a1)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      log = v6;
      v7 = objc_opt_class();
      v8 = MEMORY[0x277CCABB0];
      v34 = v7;
      v9 = [v8 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v10 = HKSensitiveLogItem();
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v35, "count")}];
      v12 = v11 = v5;
      v13 = HKSensitiveLogItem();
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
      v15 = HKSensitiveLogItem();
      *buf = 138544386;
      v48 = v7;
      v49 = 2048;
      v50 = a1;
      v51 = 2112;
      v52 = v10;
      v53 = 2112;
      v54 = v13;
      v55 = 2112;
      v56 = v15;
      _os_log_impl(&dword_2518FC000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Factors did update, added: %@ | deleted: %@ | currently cached: %@", buf, 0x34u);

      v5 = v11;
    }

    v16 = v5;
    if ([*(a1 + 40) count])
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v42;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(a1 + 40) addObject:{*(*(&v41 + 1) + 8 * i), log}];
          }

          v19 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v16];
      v17 = *(a1 + 40);
      *(a1 + 40) = v22;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = v35;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v37 + 1) + 8 * j);
          v29 = *(a1 + 40);
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __70__HKMCCycleFactorsDataSource__handleCycleFactorsAdded_deletedObjects___block_invoke;
          v36[3] = &unk_2796D5310;
          v36[4] = v28;
          [v29 hk_removeObjectsPassingTest:{v36, log}];
        }

        v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v25);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v31 = [*(a1 + 40) allObjects];
    [WeakRetained cycleFactorsDataSource:a1 didFetchCycleFactors:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __72__HKMCCycleFactorsDataSource_startObservingCycleFactorsInDayIndexRange___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = objc_opt_class();
  v8 = *(a1 + 32);
  v11 = 138543874;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  v15 = 2114;
  v16 = a3;
  v9 = v7;
  _os_log_error_impl(&dword_2518FC000, v6, OS_LOG_TYPE_ERROR, "[%{public}@:%p] Factors query failed with error: %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end