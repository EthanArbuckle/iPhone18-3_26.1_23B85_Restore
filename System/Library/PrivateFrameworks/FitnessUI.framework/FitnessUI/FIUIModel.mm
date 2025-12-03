@interface FIUIModel
+ (BOOL)isWheelchairUser;
+ (id)_dailyTotalsQueryFromDate:(id)date toDate:(id)toDate dataType:(id)type predicate:(id)predicate sendUpdates:(BOOL)updates handler:(id)handler;
+ (id)dailyTotalQueryForDate:(id)date dataType:(id)type predicate:(id)predicate sendUpdates:(BOOL)updates handler:(id)handler;
- (FIUIModel)initWithHealthStore:(id)store;
- (FIUIWeeklyGoalModel)weeklyGoalModel;
- (id)_createCurrentActivitySummaryQuery;
- (id)startCurrentActivitySummaryQueryWithHandler:(id)handler;
- (void)_printStatisticsCollection:(id)collection;
- (void)_printUpdatedStatistics:(id)statistics;
- (void)_queue_restartCurrentActivitySummaryQueryAfterError;
- (void)stopCurrentActivitySummaryQueryForClientToken:(id)token;
@end

@implementation FIUIModel

+ (id)dailyTotalQueryForDate:(id)date dataType:(id)type predicate:(id)predicate sendUpdates:(BOOL)updates handler:(id)handler
{
  updatesCopy = updates;
  v12 = MEMORY[0x1E695DEE8];
  handlerCopy = handler;
  predicateCopy = predicate;
  typeCopy = type;
  dateCopy = date;
  currentCalendar = [v12 currentCalendar];
  v18 = [currentCalendar startOfDayForDate:dateCopy];

  v19 = [currentCalendar hk_startOfDateByAddingDays:1 toDate:v18];
  v20 = [self _dailyTotalsQueryFromDate:v18 toDate:v19 dataType:typeCopy predicate:predicateCopy sendUpdates:updatesCopy handler:handlerCopy];

  return v20;
}

+ (id)_dailyTotalsQueryFromDate:(id)date toDate:(id)toDate dataType:(id)type predicate:(id)predicate sendUpdates:(BOOL)updates handler:(id)handler
{
  updatesCopy = updates;
  v31[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  predicateCopy = predicate;
  handlerCopy = handler;
  v16 = MEMORY[0x1E695DF10];
  typeCopy = type;
  toDateCopy = toDate;
  v19 = objc_alloc_init(v16);
  [v19 setDay:1];
  v20 = [MEMORY[0x1E696C378] predicateForSamplesWithStartDate:dateCopy endDate:toDateCopy options:0];

  if (predicateCopy)
  {
    v21 = MEMORY[0x1E696AB28];
    v31[0] = predicateCopy;
    v31[1] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];
  }

  else
  {
    v23 = v20;
  }

  v24 = [objc_alloc(MEMORY[0x1E696C4D8]) initWithQuantityType:typeCopy quantitySamplePredicate:v23 options:16 anchorDate:dateCopy intervalComponents:v19];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __85__FIUIModel__dailyTotalsQueryFromDate_toDate_dataType_predicate_sendUpdates_handler___block_invoke;
  v29[3] = &unk_1E878BEF0;
  v25 = handlerCopy;
  v30 = v25;
  [v24 setInitialResultsHandler:v29];
  if (updatesCopy)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __85__FIUIModel__dailyTotalsQueryFromDate_toDate_dataType_predicate_sendUpdates_handler___block_invoke_3;
    v27[3] = &unk_1E878BF40;
    v28 = v25;
    [v24 setStatisticsUpdateHandler:v27];
  }

  return v24;
}

void __85__FIUIModel__dailyTotalsQueryFromDate_toDate_dataType_predicate_sendUpdates_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__FIUIModel__dailyTotalsQueryFromDate_toDate_dataType_predicate_sendUpdates_handler___block_invoke_2;
  v14[3] = &unk_1E878BEC8;
  v10 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

uint64_t __85__FIUIModel__dailyTotalsQueryFromDate_toDate_dataType_predicate_sendUpdates_handler___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], 0, a1[5], a1[6]);
  }

  return result;
}

void __85__FIUIModel__dailyTotalsQueryFromDate_toDate_dataType_predicate_sendUpdates_handler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__FIUIModel__dailyTotalsQueryFromDate_toDate_dataType_predicate_sendUpdates_handler___block_invoke_4;
  block[3] = &unk_1E878BF18;
  v13 = *(a1 + 32);
  v22 = v12;
  v23 = v13;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__FIUIModel__dailyTotalsQueryFromDate_toDate_dataType_predicate_sendUpdates_handler___block_invoke_4(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6], a1[7]);
  }

  return result;
}

- (FIUIModel)initWithHealthStore:(id)store
{
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = FIUIModel;
  v6 = [(FIUIModel *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    if (!v7->_healthStore)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696C1C0]);
      healthStore = v7->_healthStore;
      v7->_healthStore = v8;
    }

    currentActivitySummaryQueryCollectionIntervalOverrides = v7->_currentActivitySummaryQueryCollectionIntervalOverrides;
    v7->_currentActivitySummaryQueryCollectionIntervalOverrides = 0;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    currentActivitySummaryQueryClients = v7->_currentActivitySummaryQueryClients;
    v7->_currentActivitySummaryQueryClients = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    currentActivityCacheQueryClients = v7->_currentActivityCacheQueryClients;
    v7->_currentActivityCacheQueryClients = dictionary2;

    v17 = HKCreateSerialDispatchQueue();
    activityQueryClientQueue = v7->_activityQueryClientQueue;
    v7->_activityQueryClientQueue = v17;
  }

  return v7;
}

- (FIUIWeeklyGoalModel)weeklyGoalModel
{
  weeklyGoalModel = self->_weeklyGoalModel;
  if (!weeklyGoalModel)
  {
    v4 = [[FIUIWeeklyGoalModel alloc] initWithHealthStore:self->_healthStore];
    v5 = self->_weeklyGoalModel;
    self->_weeklyGoalModel = v4;

    weeklyGoalModel = self->_weeklyGoalModel;
  }

  return weeklyGoalModel;
}

- (void)_printStatisticsCollection:(id)collection
{
  v28 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  _HKInitializeLogging();
  v5 = MEMORY[0x1E696B928];
  v6 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEBUG))
  {
    [(FIUIModel *)v6 _printStatisticsCollection:a2];
  }

  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = collectionCopy;
    statistics = [collectionCopy statistics];
    v8 = [statistics countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(statistics);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          _HKInitializeLogging();
          v13 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            v14 = v13;
            startDate = [v12 startDate];
            sumQuantity = [v12 sumQuantity];
            *buf = 138412546;
            v24 = startDate;
            v25 = 2112;
            v26 = sumQuantity;
            _os_log_debug_impl(&dword_1E5D0F000, v14, OS_LOG_TYPE_DEBUG, "Date:%@ %@", buf, 0x16u);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [statistics countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v9);
    }

    collectionCopy = v18;
  }

  _HKInitializeLogging();
  v17 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    [FIUIModel _printStatisticsCollection:v17];
  }
}

- (void)_printUpdatedStatistics:(id)statistics
{
  statisticsCopy = statistics;
  _HKInitializeLogging();
  v5 = MEMORY[0x1E696B928];
  v6 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEBUG))
  {
    [(FIUIModel *)v6 _printStatisticsCollection:a2];
  }

  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      [(FIUIModel *)v7 _printUpdatedStatistics:statisticsCopy];
    }
  }

  _HKInitializeLogging();
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    [FIUIModel _printStatisticsCollection:v8];
  }
}

+ (BOOL)isWheelchairUser
{
  v2 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  v3 = [v2 wheelchairUseWithError:0];
  v4 = FIUIIsWheelchairUserForWheelchairUse([v3 wheelchairUse]);

  return v4;
}

- (id)startCurrentActivitySummaryQueryWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(FIUIClientToken);
  activityQueryClientQueue = self->_activityQueryClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FIUIModel_startCurrentActivitySummaryQueryWithHandler___block_invoke;
  block[3] = &unk_1E878BF90;
  block[4] = self;
  v14 = handlerCopy;
  v7 = v5;
  v13 = v7;
  v8 = handlerCopy;
  dispatch_sync(activityQueryClientQueue, block);
  v9 = v13;
  v10 = v7;

  return v7;
}

void __57__FIUIModel_startCurrentActivitySummaryQueryWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = _Block_copy(*(a1 + 48));
  [v2 setObject:v3 forKey:*(a1 + 40)];

  v4 = [*(*(a1 + 32) + 24) count];
  v5 = *(a1 + 32);
  if (v4 && !v5[5])
  {
    v8 = [v5 _createCurrentActivitySummaryQuery];
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(a1 + 32);
    v12 = *(v11 + 96);
    v13 = *(v11 + 40);

    [v12 executeQuery:v13];
  }

  else
  {
    v6 = v5[11];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__FIUIModel_startCurrentActivitySummaryQueryWithHandler___block_invoke_2;
    v14[3] = &unk_1E878BF68;
    v7 = *(a1 + 48);
    v14[4] = *(a1 + 32);
    v15 = v7;
    dispatch_async(v6, v14);
  }
}

- (void)stopCurrentActivitySummaryQueryForClientToken:(id)token
{
  tokenCopy = token;
  activityQueryClientQueue = self->_activityQueryClientQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__FIUIModel_stopCurrentActivitySummaryQueryForClientToken___block_invoke;
  v7[3] = &unk_1E878BFB8;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_sync(activityQueryClientQueue, v7);
}

void __59__FIUIModel_stopCurrentActivitySummaryQueryForClientToken___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  if (![*(*(a1 + 32) + 24) count])
  {
    [*(*(a1 + 32) + 96) stopQuery:*(*(a1 + 32) + 40)];
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;

    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = 0;

    *(*(a1 + 32) + 56) = 0;
  }
}

- (void)_queue_restartCurrentActivitySummaryQueryAfterError
{
  [(HKHealthStore *)self->_healthStore stopQuery:self->_queue_currentActivitySummaryQuery];
  queue_activitySummaryQueryRetries = self->_queue_activitySummaryQueryRetries;
  self->_queue_activitySummaryQueryRetries = queue_activitySummaryQueryRetries + 1;
  if (queue_activitySummaryQueryRetries >= 5)
  {
    queue_activitySummaryQueryRetries = 5;
  }

  v4 = dispatch_time(0, 1000000000 * queue_activitySummaryQueryRetries);
  activityQueryClientQueue = self->_activityQueryClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__FIUIModel__queue_restartCurrentActivitySummaryQueryAfterError__block_invoke;
  block[3] = &unk_1E878BFE0;
  block[4] = self;
  dispatch_after(v4, activityQueryClientQueue, block);
}

uint64_t __64__FIUIModel__queue_restartCurrentActivitySummaryQueryAfterError__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 56);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_1E5D0F000, v2, OS_LOG_TYPE_DEFAULT, "[FM] Restarting current activity summary query for clients. Retry attempt: %ld", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) _createCurrentActivitySummaryQuery];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return [*(*(a1 + 32) + 96) executeQuery:*(*(a1 + 32) + 40)];
}

- (id)_createCurrentActivitySummaryQuery
{
  v3 = objc_alloc(MEMORY[0x1E696C610]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__FIUIModel__createCurrentActivitySummaryQuery__block_invoke;
  v6[3] = &unk_1E878C030;
  v6[4] = self;
  v4 = [v3 initWithUpdateHandler:v6];
  [v4 _setCollectionIntervals:self->_currentActivitySummaryQueryCollectionIntervalOverrides];

  return v4;
}

void __47__FIUIModel__createCurrentActivitySummaryQuery__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__FIUIModel__createCurrentActivitySummaryQuery__block_invoke_2;
  block[3] = &unk_1E878C008;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(v9, block);
}

void __47__FIUIModel__createCurrentActivitySummaryQuery__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_ERROR))
    {
      __47__FIUIModel__createCurrentActivitySummaryQuery__block_invoke_2_cold_1(v2, v3);
    }

    [*(a1 + 40) _queue_restartCurrentActivitySummaryQueryAfterError];
  }

  else
  {
    *(*(a1 + 40) + 56) = 0;
    objc_storeStrong((*(a1 + 40) + 72), *(a1 + 48));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [*(*(a1 + 40) + 24) allValues];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_printStatisticsCollection:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v3 = a1;
  v9 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_printUpdatedStatistics:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 startDate];
  v10 = [a2 sumQuantity];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __47__FIUIModel__createCurrentActivitySummaryQuery__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1E5D0F000, a2, OS_LOG_TYPE_ERROR, "[FM] Error For Current Activity Summary Query: %{public}@", &v3, 0xCu);
}

@end