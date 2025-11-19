@interface HKMCViewModelProviderDataSource
- (HKMCViewModelProviderDataSource)initWithHealthStore:(id)a3 calendarCache:(id)a4 queue:(id)a5;
- (HKMCViewModelProviderDataSourceDelegate)delegate;
- (void)_handleDaySummaryObserverUpdateWithError:(id)a3;
- (void)_startObservingDaySummaryUpdates;
- (void)cancelFetchForDaySummariesInDayIndexRange:(id)a3;
- (void)dealloc;
- (void)fetchDaySummariesInDayIndexRange:(id)a3;
@end

@implementation HKMCViewModelProviderDataSource

- (HKMCViewModelProviderDataSource)initWithHealthStore:(id)a3 calendarCache:(id)a4 queue:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = HKMCViewModelProviderDataSource;
  v12 = [(HKMCViewModelProviderDataSource *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, a3);
    objc_storeStrong(&v13->_queue, a5);
    v14 = [MEMORY[0x277CBEB58] set];
    summaryQueries = v13->_summaryQueries;
    v13->_summaryQueries = v14;

    v16 = [MEMORY[0x277CCAB58] indexSet];
    canceledDayIndexes = v13->_canceledDayIndexes;
    v13->_canceledDayIndexes = v16;

    objc_storeStrong(&v13->_calendarCache, a4);
    [(HKMCViewModelProviderDataSource *)v13 _startObservingDaySummaryUpdates];
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = objc_opt_class();
    *buf = 138543618;
    v26 = v20;
    v27 = 2048;
    v28 = v13;
    v21 = v20;
    _os_log_impl(&dword_2518FC000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Initializing", buf, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)fetchDaySummariesInDayIndexRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKDayIndexRange();
    *buf = 138543874;
    v18 = v8;
    v19 = 2048;
    v20 = self;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_2518FC000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Fetching summaries in range %{public}@", buf, 0x20u);
  }

  v11 = [HKMCDaySummaryQuery alloc];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HKMCViewModelProviderDataSource_fetchDaySummariesInDayIndexRange___block_invoke;
  v16[3] = &unk_2796D4C98;
  v16[4] = self;
  v16[5] = var0;
  v16[6] = var1;
  v12 = [(HKMCDaySummaryQuery *)v11 initWithDayIndexRange:var0 ascending:var1 limit:1 resultsHandler:0, v16];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  [(HKQuery *)v12 setDebugIdentifier:v13];

  canceledDayIndexes = self->_canceledDayIndexes;
  if (var0 < 0)
  {
    [HKMCViewModelProviderDataSource fetchDaySummariesInDayIndexRange:];
  }

  [(NSMutableIndexSet *)canceledDayIndexes removeIndexesInRange:var0, var1];
  [(NSMutableSet *)self->_summaryQueries addObject:v12];
  [(HKHealthStore *)self->_healthStore executeQuery:v12];

  v15 = *MEMORY[0x277D85DE8];
}

void __68__HKMCViewModelProviderDataSource_fetchDaySummariesInDayIndexRange___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = *(v13 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HKMCViewModelProviderDataSource_fetchDaySummariesInDayIndexRange___block_invoke_2;
  block[3] = &unk_2796D4C70;
  v20 = v10;
  v21 = v13;
  v25 = *(a1 + 40);
  v22 = v11;
  v23 = v12;
  v24 = v9;
  v15 = v9;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

uint64_t __68__HKMCViewModelProviderDataSource_fetchDaySummariesInDayIndexRange___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained((a1[5] + 16));
    [WeakRetained viewModelProviderDataSource:a1[5] didFetchDaySummaries:a1[4] forDayIndexRange:a1[9] daySummaryAnchor:{a1[10], a1[6]}];
  }

  else
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __68__HKMCViewModelProviderDataSource_fetchDaySummariesInDayIndexRange___block_invoke_2_cold_1(a1, v3);
    }
  }

  return [*(a1[5] + 32) removeObject:a1[8]];
}

- (void)cancelFetchForDaySummariesInDayIndexRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v48 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromHKDayIndexRange();
    *buf = 138543874;
    v43 = v9;
    v44 = 2048;
    v45 = self;
    v46 = 2114;
    v47 = v11;
    _os_log_impl(&dword_2518FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Cancelling fetch for summaries in range %{public}@", buf, 0x20u);

    v6 = MEMORY[0x277CCC2E8];
  }

  canceledDayIndexes = self->_canceledDayIndexes;
  if (var0 < 0)
  {
    [HKMCViewModelProviderDataSource fetchDaySummariesInDayIndexRange:];
  }

  [(NSMutableIndexSet *)canceledDayIndexes addIndexesInRange:var0, var1];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_summaryQueries;
  v13 = [(NSMutableSet *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = 0;
    v17 = *v38;
    *&v14 = 138543874;
    v35 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v20 = [v19 dayIndexRange];
        v22 = v21;
        if (v20 < 0)
        {
          [HKMCViewModelProviderDataSource fetchDaySummariesInDayIndexRange:];
        }

        v23 = [(NSMutableIndexSet *)self->_canceledDayIndexes containsIndexesInRange:v20, v22];
        _HKInitializeLogging();
        v24 = *v6;
        v25 = *v6;
        if (v23)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v24;
            v27 = objc_opt_class();
            v28 = v27;
            [v19 dayIndexRange];
            v29 = NSStringFromHKDayIndexRange();
            *buf = v35;
            v43 = v27;
            v44 = 2048;
            v45 = self;
            v46 = 2114;
            v47 = v29;
            _os_log_impl(&dword_2518FC000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Cancelling query for summaries in range %{public}@", buf, 0x20u);

            v6 = MEMORY[0x277CCC2E8];
          }

          [(HKHealthStore *)self->_healthStore stopQuery:v19];
          if (!v16)
          {
            v16 = [MEMORY[0x277CBEB58] set];
          }

          [v16 addObject:v19];
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v30 = v24;
          v31 = objc_opt_class();
          v32 = v31;
          [v19 dayIndexRange];
          v33 = NSStringFromHKDayIndexRange();
          *buf = v35;
          v43 = v31;
          v6 = MEMORY[0x277CCC2E8];
          v44 = 2048;
          v45 = self;
          v46 = 2114;
          v47 = v33;
          _os_log_debug_impl(&dword_2518FC000, v30, OS_LOG_TYPE_DEBUG, "[%{public}@:%p] Not cancelling query for summaries in range %{public}@", buf, 0x20u);
        }
      }

      v15 = [(NSMutableSet *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  [(NSMutableSet *)self->_summaryQueries minusSet:v16];
  v34 = *MEMORY[0x277D85DE8];
}

- (void)_startObservingDaySummaryUpdates
{
  objc_initWeak(&location, self);
  v3 = [HKMCDaySummaryObserverQuery alloc];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __67__HKMCViewModelProviderDataSource__startObservingDaySummaryUpdates__block_invoke;
  v10 = &unk_2796D4CC0;
  objc_copyWeak(&v11, &location);
  v4 = [(HKMCDaySummaryObserverQuery *)v3 initWithUpdateHandler:&v7];
  summaryObserverQuery = self->_summaryObserverQuery;
  self->_summaryObserverQuery = v4;

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p>", objc_opt_class(), self, v7, v8, v9, v10];
  [(HKQuery *)self->_summaryObserverQuery setDebugIdentifier:v6];

  [(HKHealthStore *)self->_healthStore executeQuery:self->_summaryObserverQuery];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __67__HKMCViewModelProviderDataSource__startObservingDaySummaryUpdates__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDaySummaryObserverUpdateWithError:v4];
}

- (void)_handleDaySummaryObserverUpdateWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HKMCViewModelProviderDataSource *)v5 _handleDaySummaryObserverUpdateWithError:v4];
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__HKMCViewModelProviderDataSource__handleDaySummaryObserverUpdateWithError___block_invoke;
    block[3] = &unk_2796D4CE8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __76__HKMCViewModelProviderDataSource__handleDaySummaryObserverUpdateWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 viewModelProviderDataSourceDidUpdateDaySummaries:*(a1 + 32)];
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2048;
    v21 = self;
    v5 = v19;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Dealloc", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_summaryQueries;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HKHealthStore *)self->_healthStore stopQuery:*(*(&v13 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(HKHealthStore *)self->_healthStore stopQuery:self->_summaryObserverQuery];
  v12.receiver = self;
  v12.super_class = HKMCViewModelProviderDataSource;
  [(HKMCViewModelProviderDataSource *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (HKMCViewModelProviderDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchDaySummariesInDayIndexRange:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSRange NSRangeFromHKDayIndexRange(HKDayIndexRange)"];
  OUTLINED_FUNCTION_0(v1, v2, v3, @"HKDayIndexRange.h");
}

void __68__HKMCViewModelProviderDataSource_fetchDaySummariesInDayIndexRange___block_invoke_2_cold_1(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v4 = a2;
  v5 = objc_opt_class();
  v6 = a1[9];
  v7 = a1[10];
  v8 = v5;
  v9 = NSStringFromHKDayIndexRange();
  v10 = a1[7];
  v12 = 138543874;
  v13 = v5;
  v14 = 2114;
  v15 = v9;
  v16 = 2114;
  v17 = v10;
  _os_log_error_impl(&dword_2518FC000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error querying for summaries in range %{public}@: %{public}@", &v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleDaySummaryObserverUpdateWithError:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_2518FC000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error in day summary observer query: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end