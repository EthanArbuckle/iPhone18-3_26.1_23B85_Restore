@interface FIMindfulnessSessionDataProvider
- (FIMindfulnessSessionDataProvider)initWithHealthStore:(id)a3;
- (id)_createMindfulnessSessionsQueryWithRetryCount:(int64_t)a3;
- (void)_queue_retryMindfulSessionQueryWithRetryCount:(int64_t)a3;
- (void)_queue_startMindfulnessSessionQueryWithRetryCount:(int64_t)a3;
- (void)_queue_stopMindfulSessionQuery;
- (void)allMindfulnessSessionsWithCompletion:(id)a3;
- (void)dealloc;
- (void)startMindfulnessSessionQueryIfNeeded;
@end

@implementation FIMindfulnessSessionDataProvider

- (void)startMindfulnessSessionQueryIfNeeded
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__FIMindfulnessSessionDataProvider_startMindfulnessSessionQueryIfNeeded__block_invoke;
  block[3] = &unk_279004B60;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void *__72__FIMindfulnessSessionDataProvider_startMindfulnessSessionQueryIfNeeded__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[4])
  {
    return [result _queue_startMindfulnessSessionQueryWithRetryCount:0];
  }

  return result;
}

- (FIMindfulnessSessionDataProvider)initWithHealthStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FIMindfulnessSessionDataProvider;
  v6 = [(FIMindfulnessSessionDataProvider *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = HKCreateSerialDispatchQueue();
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCD9F8]);
    mindfulnessSessions = v7->_mindfulnessSessions;
    v7->_mindfulnessSessions = v10;

    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:0];
    [(HKSortedSampleArray *)v7->_mindfulnessSessions setSortDescriptor:v12];

    [(FIMindfulnessSessionDataProvider *)v7 startMindfulnessSessionQueryIfNeeded];
  }

  return v7;
}

- (void)dealloc
{
  [(HKHealthStore *)self->_healthStore stopQuery:self->_mindfulnessSessionsQuery];
  v3.receiver = self;
  v3.super_class = FIMindfulnessSessionDataProvider;
  [(FIMindfulnessSessionDataProvider *)&v3 dealloc];
}

- (id)_createMindfulnessSessionsQueryWithRetryCount:(int64_t)a3
{
  v5 = [MEMORY[0x277CCD8D8] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __82__FIMindfulnessSessionDataProvider__createMindfulnessSessionsQueryWithRetryCount___block_invoke;
  v13 = &unk_279004B10;
  objc_copyWeak(v15, &location);
  v14 = self;
  v15[1] = a3;
  v6 = _Block_copy(&v10);
  v7 = objc_alloc(MEMORY[0x277CCCFF0]);
  v8 = [v7 initWithType:v5 predicate:0 anchor:0 limit:0 resultsHandler:{v6, v10, v11, v12, v13}];
  [v8 setUpdateHandler:v6];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v8;
}

void __82__FIMindfulnessSessionDataProvider__createMindfulnessSessionsQueryWithRetryCount___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = WeakRetained[2];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__FIMindfulnessSessionDataProvider__createMindfulnessSessionsQueryWithRetryCount___block_invoke_2;
    v17[3] = &unk_279004AE8;
    v15 = v11;
    v16 = *(a1 + 32);
    v18 = v15;
    v19 = v16;
    v23 = *(a1 + 48);
    v20 = v13;
    v21 = v10;
    v22 = v9;
    dispatch_async(v14, v17);
  }
}

void __82__FIMindfulnessSessionDataProvider__createMindfulnessSessionsQueryWithRetryCount___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      __82__FIMindfulnessSessionDataProvider__createMindfulnessSessionsQueryWithRetryCount___block_invoke_2_cold_1(a1, v3, v2);
    }

    [*(a1 + 48) _queue_retryMindfulSessionQueryWithRetryCount:*(a1 + 72) + 1];
  }

  else
  {
    v5 = [*(a1 + 56) hk_mapToSet:&__block_literal_global_2];
    [*(*(a1 + 48) + 24) removeSamplesWithUUIDs:v5];
    [*(*(a1 + 48) + 24) insertSamples:*(a1 + 64)];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"FIMindfulnessSessionDataProviderDidUpdate" object:0];
  }
}

- (void)_queue_startMindfulnessSessionQueryWithRetryCount:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v12 = 138412546;
    v13 = v8;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_24B35E000, v6, OS_LOG_TYPE_DEFAULT, "%@ starting mindfulness sessions query (retry count: %lu)", &v12, 0x16u);
  }

  v9 = [(FIMindfulnessSessionDataProvider *)self _createMindfulnessSessionsQueryWithRetryCount:a3];
  mindfulnessSessionsQuery = self->_mindfulnessSessionsQuery;
  self->_mindfulnessSessionsQuery = v9;

  [(HKHealthStore *)self->_healthStore executeQuery:self->_mindfulnessSessionsQuery];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_stopMindfulSessionQuery
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_24B35E000, v4, OS_LOG_TYPE_DEFAULT, "%@ stopping mindfulness sessions query", &v9, 0xCu);
  }

  [(HKHealthStore *)self->_healthStore stopQuery:self->_mindfulnessSessionsQuery];
  mindfulnessSessionsQuery = self->_mindfulnessSessionsQuery;
  self->_mindfulnessSessionsQuery = 0;

  [(HKSortedSampleArray *)self->_mindfulnessSessions removeAllSamples];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_retryMindfulSessionQueryWithRetryCount:(int64_t)a3
{
  [(FIMindfulnessSessionDataProvider *)self _queue_stopMindfulSessionQuery];
  if (a3 < 6)
  {
    v6 = dispatch_time(0, 1000000000 * a3);
    serialQueue = self->_serialQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__FIMindfulnessSessionDataProvider__queue_retryMindfulSessionQueryWithRetryCount___block_invoke;
    v8[3] = &unk_279004B38;
    v8[4] = self;
    v8[5] = a3;
    dispatch_after(v6, serialQueue, v8);
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      [(FIMindfulnessSessionDataProvider *)v5 _queue_retryMindfulSessionQueryWithRetryCount:a3];
    }
  }
}

- (void)allMindfulnessSessionsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__FIMindfulnessSessionDataProvider_allMindfulnessSessionsWithCompletion___block_invoke;
  block[3] = &unk_279004B88;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __73__FIMindfulnessSessionDataProvider_allMindfulnessSessionsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained[3] allSamples];
    (*(*(a1 + 32) + 16))();

    WeakRetained = v4;
  }
}

void __82__FIMindfulnessSessionDataProvider__createMindfulnessSessionsQueryWithRetryCount___block_invoke_2_cold_1(uint64_t a1, void *a2, id *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [*a3 localizedDescription];
  v10 = 138412546;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  _os_log_error_impl(&dword_24B35E000, v5, OS_LOG_TYPE_ERROR, "%@ failed to query mindfulness sessions: %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_retryMindfulSessionQueryWithRetryCount:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412802;
  v9 = v6;
  v10 = 2048;
  v11 = a3;
  v12 = 2048;
  v13 = 5;
  _os_log_error_impl(&dword_24B35E000, v4, OS_LOG_TYPE_ERROR, "%@ reached max retry count %lu (max: %lu); not restarting query", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end