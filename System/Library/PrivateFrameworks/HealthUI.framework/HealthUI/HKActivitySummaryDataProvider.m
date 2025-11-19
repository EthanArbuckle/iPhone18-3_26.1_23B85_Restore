@interface HKActivitySummaryDataProvider
- (BOOL)_sampleDate:(id)a3 withinHourBeforeDate:(id)a4;
- (HKActivitySummary)latestActivitySummary;
- (HKActivitySummaryDataProvider)initWithHealthStore:(id)a3 dateCache:(id)a4 displayTypeController:(id)a5 unitController:(id)a6;
- (HKActivitySummaryDataProvider)initWithHealthStore:(id)a3 dateCache:(id)a4 displayTypeController:(id)a5 unitController:(id)a6 activityMoveMode:(int64_t)a7;
- (id)_averageActivitySummariesForDateRange:(id)a3 averagePeriod:(int64_t)a4;
- (id)_buildActivitySummaryFromAverages:(_WDActivitySummaryAverages *)a3 pausedAverages:(_WDActivitySummaryAverages *)a4 averagePeriod:(int64_t)a5 startDate:(id)a6 calendar:(id)a7 energyUnit:(id)a8 standHourUnit:(id)a9;
- (id)_buildHourlyActivitySummaryFromDate:(id)a3 calendar:(id)a4 moveQuantity:(id)a5 exerciseQuantity:(id)a6 standQuantity:(id)a7 moveGoal:(id)a8 exerciseGoal:(id)a9 standGoal:(id)a10;
- (id)_dayActivitySummariesForDateRange:(id)a3;
- (id)_fetchOperationForTimeScope:(int64_t)a3 withCompletion:(id)a4;
- (id)_hourActivitySummariesForDateRange:(id)a3;
- (id)_hourlySummariesFromStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 activeEnergyData:(id)a6 appleMoveTimeData:(id)a7 exerciseData:(id)a8 standData:(id)a9 dayGoalData:(id)a10;
- (id)_predicateForStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5;
- (id)_predicateForStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 activityMoveMode:(int64_t)a6;
- (id)_queriesForTimeScope:(int64_t)a3 withCompletion:(id)a4;
- (id)activitySummariesForDateRange:(id)a3 timeScope:(int64_t)a4;
- (id)activitySummariesForTimeScope:(int64_t)a3;
- (id)cachedCalendar;
- (int64_t)_weekOfYearForDateComponents:(id)a3 calendar:(id)a4;
- (void)_alertObserversDidUpdateValues;
- (void)_averageActivitySummariesForCachedData:(id)a3 averagePeriod:(int64_t)a4 handler:(id)a5;
- (void)_clearCaches;
- (void)_fetchValueWithRetryCount:(int64_t)a3;
- (void)_hourActivitySummariesForDateRange:(id)a3 pageHandler:(id)a4;
- (void)_hourlyActivityDataForStartDate:(id)a3 endDate:(id)a4 healthStore:(id)a5 calendar:(id)a6 handler:(id)a7;
- (void)_hourlyActivityPageDataArrived:(id)a3 pageNumber:(id)a4 error:(id)a5;
- (void)_hourlyPageInProgress:(id)a3;
- (void)_mainQueueFetchValueWithRetryCount:(int64_t)a3;
- (void)_partitionAndProcessActivitySummariesForAllTimeScopes:(id)a3;
- (void)_setupActivitySummaryChangeObserver;
- (void)_stopActivitySummaryChangeObserver;
- (void)_submitHourlyQueryForPageNumber:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (void)_transitionToFetchFailureForTimeScope:(int64_t)a3;
- (void)_unitPreferencesDidUpdate:(id)a3;
- (void)dateCacheDidUpdate:(id)a3 onNotification:(id)a4;
- (void)dealloc;
@end

@implementation HKActivitySummaryDataProvider

- (HKActivitySummaryDataProvider)initWithHealthStore:(id)a3 dateCache:(id)a4 displayTypeController:(id)a5 unitController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v34.receiver = self;
  v34.super_class = HKActivitySummaryDataProvider;
  v15 = [(HKActivitySummaryDataProvider *)&v34 init];
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x1E696C4F8]);
    v17 = objc_opt_class();
    NSStringFromClass(v17);
    v33 = v14;
    v18 = v13;
    v19 = v12;
    v21 = v20 = v11;
    v22 = [v16 initWithName:v21 loggingCategory:*MEMORY[0x1E696B988]];
    observers = v15->_observers;
    v15->_observers = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    activitySummaryForTimeScopeCache = v15->_activitySummaryForTimeScopeCache;
    v15->_activitySummaryForTimeScopeCache = v24;

    objc_storeStrong(&v15->_healthStore, a3);
    objc_storeStrong(&v15->_dateCache, a4);
    objc_storeStrong(&v15->_displayTypeController, a5);
    objc_storeStrong(&v15->_unitController, a6);
    v26 = [(HKActivitySummaryDataProvider *)v15 dateCache];
    [v26 registerObserver:v15];

    [(HKActivitySummaryDataProvider *)v15 _setupActivitySummaryChangeObserver];
    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v15 selector:sel__unitPreferencesDidUpdate_ name:*MEMORY[0x1E696BE70] object:0];

    v11 = v20;
    v12 = v19;
    v13 = v18;
    v14 = v33;
    v28 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    hourlyActivitySummaryCache = v15->_hourlyActivitySummaryCache;
    v15->_hourlyActivitySummaryCache = v28;

    [(NSCache *)v15->_hourlyActivitySummaryCache setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v15->_hourlyActivitySummaryCache setMinimumObjectCount:10];
    v30 = [[HKThrottleCallback alloc] initWithThrottleDelay:1.0];
    databaseChangesThrottle = v15->_databaseChangesThrottle;
    v15->_databaseChangesThrottle = v30;
  }

  return v15;
}

- (HKActivitySummaryDataProvider)initWithHealthStore:(id)a3 dateCache:(id)a4 displayTypeController:(id)a5 unitController:(id)a6 activityMoveMode:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v36.receiver = self;
  v36.super_class = HKActivitySummaryDataProvider;
  v17 = [(HKActivitySummaryDataProvider *)&v36 init];
  if (v17)
  {
    v35 = v13;
    v18 = objc_alloc(MEMORY[0x1E696C4F8]);
    v19 = objc_opt_class();
    NSStringFromClass(v19);
    v34 = v16;
    v20 = v15;
    v22 = v21 = v14;
    v23 = [v18 initWithName:v22 loggingCategory:*MEMORY[0x1E696B988]];
    observers = v17->_observers;
    v17->_observers = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    activitySummaryForTimeScopeCache = v17->_activitySummaryForTimeScopeCache;
    v17->_activitySummaryForTimeScopeCache = v25;

    objc_storeStrong(&v17->_healthStore, a3);
    objc_storeStrong(&v17->_dateCache, a4);
    objc_storeStrong(&v17->_displayTypeController, a5);
    objc_storeStrong(&v17->_unitController, a6);
    v17->_activityMoveMode = a7;
    v27 = [(HKActivitySummaryDataProvider *)v17 dateCache];
    [v27 registerObserver:v17];

    [(HKActivitySummaryDataProvider *)v17 _setupActivitySummaryChangeObserver];
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v17 selector:sel__unitPreferencesDidUpdate_ name:*MEMORY[0x1E696BE70] object:0];

    v14 = v21;
    v15 = v20;
    v16 = v34;
    v13 = v35;
    v29 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    hourlyActivitySummaryCache = v17->_hourlyActivitySummaryCache;
    v17->_hourlyActivitySummaryCache = v29;

    [(NSCache *)v17->_hourlyActivitySummaryCache setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v17->_hourlyActivitySummaryCache setMinimumObjectCount:10];
    v31 = [[HKThrottleCallback alloc] initWithThrottleDelay:1.0];
    databaseChangesThrottle = v17->_databaseChangesThrottle;
    v17->_databaseChangesThrottle = v31;
  }

  return v17;
}

- (void)dealloc
{
  [(HKActivitySummaryDataProvider *)self _stopActivitySummaryChangeObserver];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E696BE70] object:0];

  v4.receiver = self;
  v4.super_class = HKActivitySummaryDataProvider;
  [(HKActivitySummaryDataProvider *)&v4 dealloc];
}

- (HKActivitySummary)latestActivitySummary
{
  v2 = [(HKActivitySummaryDataProvider *)self activitySummariesForTimeScope:2];
  v3 = [v2 lastObject];

  return v3;
}

- (id)activitySummariesForTimeScope:(int64_t)a3
{
  activitySummaryForTimeScopeCache = self->_activitySummaryForTimeScopeCache;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(NSCache *)activitySummaryForTimeScopeCache objectForKey:v5];

  if (v6)
  {
    v7 = v6;
  }

  else if (![(HKActivitySummaryDataProvider *)self activitySummariesAreLoading])
  {
    [(HKActivitySummaryDataProvider *)self _fetchValueWithRetryCount:3];
  }

  return v6;
}

- (id)activitySummariesForDateRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 <= 3)
  {
    if (a4 >= 3)
    {
      if (a4 != 3)
      {
        goto LABEL_10;
      }

      v8 = self;
      v9 = v6;
      v10 = 1;
    }

    else
    {
      v8 = self;
      v9 = v6;
      v10 = 0;
    }

    v11 = [(HKActivitySummaryDataProvider *)v8 _averageActivitySummariesForDateRange:v9 averagePeriod:v10];
    goto LABEL_9;
  }

  if ((a4 - 4) < 2)
  {
    v11 = [(HKActivitySummaryDataProvider *)self _dayActivitySummariesForDateRange:v6];
LABEL_9:
    v7 = v11;
    goto LABEL_10;
  }

  if (a4 == 6)
  {
    v11 = [(HKActivitySummaryDataProvider *)self _hourActivitySummariesForDateRange:v6];
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (void)_partitionAndProcessActivitySummariesForAllTimeScopes:(id)a3
{
  v4 = a3;
  v31 = [MEMORY[0x1E695DF70] array];
  v29 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(HKActivitySummaryDataProvider *)self dateCache];
  v7 = HKCalendarDateTransformNone();
  v8 = HKGenerateDateRangeForCharts(v6, 4, v7);

  v9 = [v8 minValue];
  v10 = [v8 maxValue];
  v11 = [(HKActivitySummaryDataProvider *)self dateCache];
  v12 = HKCalendarDateTransformNone();
  v13 = HKGenerateDateRangeForCharts(v11, 5, v12);

  v14 = [v13 minValue];
  v15 = [(HKActivitySummaryDataProvider *)self dateCache];
  v16 = HKCalendarDateTransformNone();
  v33 = HKGenerateDateRangeForCharts(v15, 6, v16);

  v17 = [v33 minValue];
  v18 = [(HKActivitySummaryDataProvider *)self cachedCalendar];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __87__HKActivitySummaryDataProvider__partitionAndProcessActivitySummariesForAllTimeScopes___block_invoke;
  v39[3] = &unk_1E81B9F20;
  v40 = v18;
  v41 = v10;
  v42 = v17;
  v19 = v5;
  v43 = v19;
  v44 = v14;
  v20 = v29;
  v45 = v20;
  v46 = v9;
  v21 = v31;
  v47 = v21;
  v32 = v9;
  v30 = v14;
  v22 = v17;
  v23 = v10;
  v24 = v18;
  [v4 enumerateObjectsUsingBlock:v39];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__HKActivitySummaryDataProvider__partitionAndProcessActivitySummariesForAllTimeScopes___block_invoke_2;
  block[3] = &unk_1E81B8ED8;
  block[4] = self;
  v35 = v4;
  v36 = v21;
  v37 = v20;
  v38 = v19;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __87__HKActivitySummaryDataProvider__partitionAndProcessActivitySummariesForAllTimeScopes___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v10 = v6;
  v8 = [v6 dateComponentsForCalendar:v7];
  v9 = [v7 dateFromComponents:v8];

  if (HKUIObjectIsLarger(*(a1 + 40), v9))
  {
    if (HKUIObjectIsLargerOrEqual(v9, *(a1 + 48)))
    {
      [*(a1 + 56) addObject:v10];
    }

    if (HKUIObjectIsLargerOrEqual(v9, *(a1 + 64)))
    {
      [*(a1 + 72) addObject:v10];
    }

    if (HKUIObjectIsLargerOrEqual(v9, *(a1 + 80)))
    {
      [*(a1 + 88) addObject:v10];
    }
  }

  else
  {
    *a4 = 1;
  }
}

uint64_t __87__HKActivitySummaryDataProvider__partitionAndProcessActivitySummariesForAllTimeScopes___block_invoke_2(void *a1)
{
  [*(a1[4] + 16) setObject:a1[5] forKey:&unk_1F43841B0];
  [*(a1[4] + 16) setObject:a1[5] forKey:&unk_1F43841C8];
  [*(a1[4] + 16) setObject:a1[6] forKey:&unk_1F43841E0];
  [*(a1[4] + 16) setObject:a1[7] forKey:&unk_1F43841F8];
  [*(a1[4] + 16) setObject:a1[8] forKey:&unk_1F4384210];
  v2 = a1[4];

  return [v2 _alertObserversDidUpdateValues];
}

- (void)_fetchValueWithRetryCount:(int64_t)a3
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(HKActivitySummaryDataProvider *)self _mainQueueFetchValueWithRetryCount:a3];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__HKActivitySummaryDataProvider__fetchValueWithRetryCount___block_invoke;
    v5[3] = &unk_1E81B99F8;
    v5[4] = self;
    v5[5] = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_mainQueueFetchValueWithRetryCount:(int64_t)a3
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (a3)
    {
LABEL_3:
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __68__HKActivitySummaryDataProvider__mainQueueFetchValueWithRetryCount___block_invoke;
      v9[3] = &unk_1E81B7500;
      v9[4] = self;
      v9[5] = a3;
      v6 = [(HKActivitySummaryDataProvider *)self _fetchOperationForTimeScope:2 withCompletion:v9];
      outstandingFetchOperation = self->_outstandingFetchOperation;
      self->_outstandingFetchOperation = v6;

      [(HKFetchOperation *)self->_outstandingFetchOperation setHighPriority:1];
      v8 = +[HKOutstandingFetchOperationManager sharedOperationManager];
      [v8 addFetchOperation:self->_outstandingFetchOperation];

      return;
    }
  }

  else
  {
    [(HKActivitySummaryDataProvider *)a2 _mainQueueFetchValueWithRetryCount:?];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [(HKActivitySummaryDataProvider *)self _transitionToFetchFailureForTimeScope:2];
}

void __68__HKActivitySummaryDataProvider__mainQueueFetchValueWithRetryCount___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__HKActivitySummaryDataProvider__mainQueueFetchValueWithRetryCount___block_invoke_2;
  block[3] = &unk_1E81B55A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__HKActivitySummaryDataProvider__mainQueueFetchValueWithRetryCount___block_invoke_cold_1((a1 + 32), v7, v8);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__HKActivitySummaryDataProvider__mainQueueFetchValueWithRetryCount___block_invoke_343;
    v11[3] = &unk_1E81B99F8;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v11[5] = v9;
    v10 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  else
  {
    [*(a1 + 32) _partitionAndProcessActivitySummariesForAllTimeScopes:v6];
  }
}

void __68__HKActivitySummaryDataProvider__mainQueueFetchValueWithRetryCount___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (void)_transitionToFetchFailureForTimeScope:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _HKInitializeLogging();
  v4 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Reached max retry count for Activity Summary. Aborting", &v6, 0xCu);
  }

  outstandingFetchOperation = self->_outstandingFetchOperation;
  self->_outstandingFetchOperation = 0;
}

- (id)_fetchOperationForTimeScope:(int64_t)a3 withCompletion:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HKActivitySummaryDataProvider *)self healthStore];
  v8 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:v7 operationDescription:@"ActivitySummaryQuery" completion:v6];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__HKActivitySummaryDataProvider__fetchOperationForTimeScope_withCompletion___block_invoke;
  v14[3] = &unk_1E81B9F48;
  v9 = v8;
  v15 = v9;
  v10 = [(HKActivitySummaryDataProvider *)self _queriesForTimeScope:a3 withCompletion:v14];
  v16[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [(HKHealthQueryFetchOperation *)v9 setQueries:v11];

  v12 = v9;
  return v9;
}

- (id)_queriesForTimeScope:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(HKActivitySummaryDataProvider *)self cachedCalendar];
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [v7 dateByAddingUnit:4 value:-5 toDate:v8 options:0];
  v10 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v8];
  v11 = +[HKGraphZoomLevelConfiguration chartDataRangeForTimeScope:dataRange:firstWeekday:calendar:cadence:alignment:](HKGraphZoomLevelConfiguration, "chartDataRangeForTimeScope:dataRange:firstWeekday:calendar:cadence:alignment:", a3, v10, [v7 firstWeekday], v7, 0, 3);
  v12 = [v11 startDate];
  v13 = [v11 endDate];
  v14 = [(HKActivitySummaryDataProvider *)self _predicateForStartDate:v12 endDate:v13 calendar:v7 activityMoveMode:self->_activityMoveMode];
  v15 = objc_alloc(MEMORY[0x1E696BED0]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__HKActivitySummaryDataProvider__queriesForTimeScope_withCompletion___block_invoke;
  v19[3] = &unk_1E81B9F70;
  v20 = v6;
  v16 = v6;
  v17 = [v15 initWithPredicate:v14 resultsHandler:v19];

  return v17;
}

- (void)_setupActivitySummaryChangeObserver
{
  [(HKActivitySummaryDataProvider *)self _stopActivitySummaryChangeObserver];
  v3 = [(HKActivitySummaryDataProvider *)self healthStore];
  v4 = [(HKActivitySummaryDataProvider *)self dateCache];
  v5 = HKCalendarDateTransformNone();
  v6 = HKGenerateDateRangeForCharts(v4, 2, v5);

  v7 = [v6 minValue];
  v8 = [v6 maxValue];
  v9 = [(HKActivitySummaryDataProvider *)self cachedCalendar];
  v10 = [(HKActivitySummaryDataProvider *)self _predicateForStartDate:v7 endDate:v8 calendar:v9 activityMoveMode:self->_activityMoveMode];
  v11 = [objc_alloc(MEMORY[0x1E696BED0]) initWithPredicate:v10 resultsHandler:&__block_literal_global_68];
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __68__HKActivitySummaryDataProvider__setupActivitySummaryChangeObserver__block_invoke_2;
  v15 = &unk_1E81B9FB8;
  objc_copyWeak(&v16, &location);
  [v11 setUpdateHandler:&v12];
  objc_storeStrong(&self->_observerQuery, v11);
  [v3 executeQuery:{self->_observerQuery, v12, v13, v14, v15}];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __68__HKActivitySummaryDataProvider__setupActivitySummaryChangeObserver__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 7);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __68__HKActivitySummaryDataProvider__setupActivitySummaryChangeObserver__block_invoke_3;
    v4[3] = &unk_1E81B55A8;
    v4[4] = v2;
    [v3 executeWithThrottle:v4];
  }
}

void __68__HKActivitySummaryDataProvider__setupActivitySummaryChangeObserver__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__HKActivitySummaryDataProvider__setupActivitySummaryChangeObserver__block_invoke_4;
  block[3] = &unk_1E81B55A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __68__HKActivitySummaryDataProvider__setupActivitySummaryChangeObserver__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _clearCaches];
  v2 = *(a1 + 32);

  return [v2 _alertObserversDidUpdateValues];
}

- (void)_stopActivitySummaryChangeObserver
{
  if (self->_observerQuery)
  {
    v3 = [(HKActivitySummaryDataProvider *)self healthStore];
    [v3 stopQuery:self->_observerQuery];

    observerQuery = self->_observerQuery;
    self->_observerQuery = 0;
  }
}

- (void)_clearCaches
{
  [(NSCache *)self->_activitySummaryForTimeScopeCache removeAllObjects];
  hourlyActivitySummaryCache = self->_hourlyActivitySummaryCache;

  [(NSCache *)hourlyActivitySummaryCache removeAllObjects];
}

- (void)_alertObserversDidUpdateValues
{
  observers = self->_observers;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__HKActivitySummaryDataProvider__alertObserversDidUpdateValues__block_invoke;
  v3[3] = &unk_1E81B9FE0;
  v3[4] = self;
  [(HKSynchronousObserverSet *)observers notifyObservers:v3];
}

- (void)_unitPreferencesDidUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__HKActivitySummaryDataProvider__unitPreferencesDidUpdate___block_invoke;
  v6[3] = &unk_1E81B5AD0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __59__HKActivitySummaryDataProvider__unitPreferencesDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696BE68]];

  v3 = [MEMORY[0x1E696C3D0] quantityTypeForIdentifier:*MEMORY[0x1E696BC38]];
  if ([v4 containsObject:v3])
  {
    [*(a1 + 40) _clearCaches];
    [*(a1 + 40) _alertObserversDidUpdateValues];
  }
}

- (void)dateCacheDidUpdate:(id)a3 onNotification:(id)a4
{
  [(HKActivitySummaryDataProvider *)self _clearCaches:a3];
  cachedCalendar = self->_cachedCalendar;
  self->_cachedCalendar = 0;

  [(HKActivitySummaryDataProvider *)self _setupActivitySummaryChangeObserver];

  [(HKActivitySummaryDataProvider *)self _alertObserversDidUpdateValues];
}

- (id)cachedCalendar
{
  cachedCalendar = self->_cachedCalendar;
  if (!cachedCalendar)
  {
    v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v5 = self->_cachedCalendar;
    self->_cachedCalendar = v4;

    cachedCalendar = self->_cachedCalendar;
  }

  return cachedCalendar;
}

- (id)_dayActivitySummariesForDateRange:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKActivitySummaryDataProvider *)self activitySummariesForTimeScope:2];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [(HKActivitySummaryDataProvider *)self cachedCalendar];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v5;
    v8 = v5;
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
          v14 = [v13 dateComponentsForCalendar:v7];
          v15 = [v7 dateFromComponents:v14];
          if ([v4 containsValue:v15 exclusiveStart:0 exclusiveEnd:1])
          {
            [v6 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v5 = v17;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_averageActivitySummariesForDateRange:(id)a3 averagePeriod:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKActivitySummaryDataProvider *)self activitySummariesForTimeScope:2];
  if (v7)
  {
    v8 = [v6 minValue];
    v9 = [v6 maxValue];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__HKActivitySummaryDataProvider__averageActivitySummariesForDateRange_averagePeriod___block_invoke;
    v17[3] = &unk_1E81BA008;
    v18 = v8;
    v19 = v9;
    v11 = v10;
    v20 = v11;
    v12 = v9;
    v13 = v8;
    [(HKActivitySummaryDataProvider *)self _averageActivitySummariesForCachedData:v7 averagePeriod:a4 handler:v17];
    v14 = v20;
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __85__HKActivitySummaryDataProvider__averageActivitySummariesForDateRange_averagePeriod___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = [v5 minValue];
  v7 = [v5 maxValue];

  v8 = [v7 compare:*(a1 + 32)];
  v9 = [*(a1 + 40) compare:v6];
  if (v8 != -1 && v9 != -1)
  {
    [*(a1 + 48) addObject:v11];
  }
}

- (int64_t)_weekOfYearForDateComponents:(id)a3 calendar:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v6 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 dateFromComponents:v6];

    v8 = [v5 component:0x2000 fromDate:v7];
    v6 = v7;
  }

  else
  {
    v8 = [v6 weekOfYear];
  }

  return v8;
}

- (void)_averageActivitySummariesForCachedData:(id)a3 averagePeriod:(int64_t)a4 handler:(id)a5
{
  v115 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(HKActivitySummaryDataProvider *)self cachedCalendar];
  v11 = [(HKActivitySummaryDataProvider *)self displayTypeController];
  v12 = [v11 displayTypeWithIdentifier:&unk_1F4384228];

  v77 = self;
  v13 = [(HKActivitySummaryDataProvider *)self unitController];
  v71 = v12;
  v14 = [v13 unitForDisplayType:v12];

  v15 = [MEMORY[0x1E696C510] countUnit];
  v16 = [MEMORY[0x1E696C510] minuteUnit];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v8;
  v72 = v9;
  v79 = [obj countByEnumeratingWithState:&v110 objects:v114 count:16];
  if (!v79)
  {
    v80 = 0;
    v17 = 0;
    v84 = 0;
    v85 = 0;
    v18 = 0.0;
    v19 = 0.0;
    v82 = 0;
    v83 = 0;
    v90 = 0.0;
    v91 = 0.0;
    v88 = 0.0;
    v89 = 0.0;
    v87 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    goto LABEL_28;
  }

  v17 = 0;
  v84 = 0;
  v85 = 0;
  v18 = 0.0;
  v78 = *v111;
  v19 = 0.0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = -1;
  v90 = 0.0;
  v91 = 0.0;
  v88 = 0.0;
  v89 = 0.0;
  v87 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v74 = v16;
  v75 = v15;
  v73 = a4;
  while (2)
  {
    v23 = 0;
    v24 = v17;
    do
    {
      if (*v111 != v78)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v110 + 1) + 8 * v23);
      v26 = [v25 dateComponentsForCalendar:v10];

      if (a4 == 1)
      {
        v17 = v26;
        v27 = [(HKActivitySummaryDataProvider *)v77 _weekOfYearForDateComponents:v26 calendar:v10];
        goto LABEL_10;
      }

      if (!a4)
      {
        v17 = v26;
        v27 = [v26 month];
LABEL_10:
        v28 = v27;
        goto LABEL_12;
      }

      v17 = v26;
      v28 = 0;
LABEL_12:
      if (v28 != v81)
      {
        v29 = [v10 dateFromComponents:v17];
        v101 = v22;
        v102 = v21;
        v103 = v82;
        v104 = v20;
        v105 = v85;
        v106 = v18;
        v107 = v84;
        v108 = v19;
        v109 = v83;
        v92 = v91;
        v93 = v90;
        v94 = 0;
        v95 = v89;
        v96 = 0;
        v97 = v88;
        v98 = 0;
        v99 = v87;
        v100 = 0;
        v70 = v15;
        v30 = a4;
        v31 = v80;
        v32 = v10;
        v33 = [(HKActivitySummaryDataProvider *)v77 _buildActivitySummaryFromAverages:&v101 pausedAverages:&v92 averagePeriod:v30 startDate:v80 calendar:v10 energyUnit:v14 standHourUnit:v70];
        if (v33)
        {
          v34 = [HKValueRange valueRangeWithMinValue:v80 maxValue:v29];
          LOBYTE(v101) = 0;
          (v72)[2](v72, v34, v33, &v101);
          v35 = LOBYTE(v101);

          v31 = v80;
          if (v35)
          {

            v10 = v32;
            v16 = v74;
            v15 = v75;
            a4 = v73;
            goto LABEL_28;
          }
        }

        v84 = 0;
        v85 = 0;
        v18 = 0.0;
        v19 = 0.0;
        v90 = 0.0;
        v91 = 0.0;
        v88 = 0.0;
        v89 = 0.0;
        v87 = 0.0;
        v20 = 0.0;
        v21 = 0.0;
        v80 = v29;
        v81 = v28;
        v22 = 0.0;
        v10 = v32;
        v16 = v74;
        v15 = v75;
        a4 = v73;
      }

      v36 = [v25 appleMoveTime];
      [v36 doubleValueForUnit:v16];
      v86 = v37;

      v38 = [v25 appleMoveTimeGoal];
      [v38 doubleValueForUnit:v16];
      v83 = v39;

      v40 = [v25 activeEnergyBurned];
      [v40 doubleValueForUnit:v14];
      v42 = v41;

      v43 = [v25 activeEnergyBurnedGoal];
      [v43 doubleValueForUnit:v14];
      v82 = v44;

      v45 = [v25 appleExerciseTime];
      [v45 doubleValueForUnit:v16];
      v47 = v46;

      v48 = [v25 exerciseTimeGoal];

      if (v48)
      {
        v49 = [v25 exerciseTimeGoal];
        [v49 doubleValueForUnit:v16];
        v85 = v50;
      }

      v51 = [v25 appleStandHours];
      [v51 doubleValueForUnit:v15];
      v53 = v52;

      v54 = [v25 standHoursGoal];

      if (v54)
      {
        v55 = [v25 standHoursGoal];
        [v55 doubleValueForUnit:v15];
        v84 = v56;
      }

      if ([v25 isPaused])
      {
        v57 = [v25 appleMoveTime];
        [v57 doubleValueForUnit:v16];
        v87 = v87 + v58;

        v59 = [v25 activeEnergyBurned];
        [v59 doubleValueForUnit:v14];
        v90 = v90 + v60;

        v61 = [v25 appleExerciseTime];
        [v61 doubleValueForUnit:v16];
        v89 = v89 + v62;

        v63 = [v25 appleStandHours];
        [v63 doubleValueForUnit:v15];
        v88 = v88 + v64;

        v65 = 1.0;
        v91 = v91 + 1.0;
      }

      else
      {
        v65 = 1.0;
      }

      v19 = v19 + v86;
      v21 = v21 + v42;
      v20 = v20 + v47;
      v18 = v18 + v53;
      v22 = v22 + v65;
      ++v23;
      v24 = v17;
    }

    while (v79 != v23);
    v79 = [obj countByEnumeratingWithState:&v110 objects:v114 count:16];
    if (v79)
    {
      continue;
    }

    break;
  }

LABEL_28:

  v101 = v22;
  v102 = v21;
  v103 = v82;
  v104 = v20;
  v105 = v85;
  v106 = v18;
  v107 = v84;
  v108 = v19;
  v109 = v83;
  v92 = v91;
  v93 = v90;
  v94 = 0;
  v95 = v89;
  v96 = 0;
  v97 = v88;
  v98 = 0;
  v99 = v87;
  v100 = 0;
  v66 = v80;
  v67 = [(HKActivitySummaryDataProvider *)v77 _buildActivitySummaryFromAverages:&v101 pausedAverages:&v92 averagePeriod:a4 startDate:v80 calendar:v10 energyUnit:v14 standHourUnit:v15];
  if (v67 && v17)
  {
    v68 = [v10 dateFromComponents:v17];
    v69 = [HKValueRange valueRangeWithMinValue:v80 maxValue:v68];
    LOBYTE(v101) = 0;
    (v72)[2](v72, v69, v67, &v101);

    v66 = v80;
  }
}

- (id)_buildActivitySummaryFromAverages:(_WDActivitySummaryAverages *)a3 pausedAverages:(_WDActivitySummaryAverages *)a4 averagePeriod:(int64_t)a5 startDate:(id)a6 calendar:(id)a7 energyUnit:(id)a8 standHourUnit:(id)a9
{
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = 0;
  if (v16 && a3->var0 > 0.0)
  {
    v20 = objc_alloc_init(MEMORY[0x1E696BEC8]);
    v47 = v17;
    if (a5 == 1)
    {
      v23 = [v16 hk_dateBeforeDateForCalendar:v17 rangeUnit:0x2000];
      v24 = [v17 components:30 fromDate:v23];
      v25 = v17;
      v22 = v24;
      [v24 setCalendar:v25];
    }

    else if (a5)
    {
      v22 = 0;
    }

    else
    {
      v21 = [v17 components:14 fromDate:v16];
      [v21 setCalendar:v17];
      v22 = v21;
      [v21 setDay:1];
    }

    var0 = a3->var0;
    v27 = a4->var0;
    v28 = a3->var0 == a4->var0;
    if (a4->var0 == 0.0 || var0 == v27)
    {
      [v20 _setGregorianDateComponents:{v22, var0, v47}];
      v31 = [MEMORY[0x1E696C510] minuteUnit];
      v39 = [MEMORY[0x1E696C348] quantityWithUnit:v31 doubleValue:a3->var7 / a3->var0];
      [v20 setAppleMoveTime:v39];

      v40 = [MEMORY[0x1E696C348] quantityWithUnit:v31 doubleValue:a3->var8];
      [v20 setAppleMoveTimeGoal:v40];

      v41 = [MEMORY[0x1E696C348] quantityWithUnit:v18 doubleValue:a3->var1 / a3->var0];
      [v20 setActiveEnergyBurned:v41];

      v42 = [MEMORY[0x1E696C348] quantityWithUnit:v18 doubleValue:a3->var2];
      [v20 setActiveEnergyBurnedGoal:v42];

      v43 = [MEMORY[0x1E696C348] quantityWithUnit:v31 doubleValue:a3->var3 / a3->var0];
      [v20 setAppleExerciseTime:v43];

      v44 = [MEMORY[0x1E696C348] quantityWithUnit:v31 doubleValue:a3->var4];
      [v20 setExerciseTimeGoal:v44];

      v38 = [MEMORY[0x1E696C348] quantityWithUnit:v19 doubleValue:a3->var5 / a3->var0];
    }

    else
    {
      v29 = var0 - v27;
      v30 = v22;
      if (var0 - v27 <= 0.0)
      {
        [HKActivitySummaryDataProvider _buildActivitySummaryFromAverages:a2 pausedAverages:self averagePeriod:? startDate:? calendar:? energyUnit:? standHourUnit:?];
        v30 = v22;
      }

      v22 = v30;
      [v20 _setGregorianDateComponents:{v30, v47}];
      v31 = [MEMORY[0x1E696C510] minuteUnit];
      v32 = [MEMORY[0x1E696C348] quantityWithUnit:v31 doubleValue:(a3->var7 - a4->var7) / v29];
      [v20 setAppleMoveTime:v32];

      v33 = [MEMORY[0x1E696C348] quantityWithUnit:v31 doubleValue:a3->var8];
      [v20 setAppleMoveTimeGoal:v33];

      v34 = [MEMORY[0x1E696C348] quantityWithUnit:v18 doubleValue:(a3->var1 - a4->var1) / v29];
      [v20 setActiveEnergyBurned:v34];

      v35 = [MEMORY[0x1E696C348] quantityWithUnit:v18 doubleValue:a3->var2];
      [v20 setActiveEnergyBurnedGoal:v35];

      v36 = [MEMORY[0x1E696C348] quantityWithUnit:v31 doubleValue:(a3->var3 - a4->var3) / v29];
      [v20 setAppleExerciseTime:v36];

      v37 = [MEMORY[0x1E696C348] quantityWithUnit:v31 doubleValue:a3->var4];
      [v20 setExerciseTimeGoal:v37];

      v38 = [MEMORY[0x1E696C348] quantityWithUnit:v19 doubleValue:(a3->var5 - a4->var5) / v29];
      v28 = 0;
    }

    [v20 setAppleStandHours:v38];

    v45 = [MEMORY[0x1E696C348] quantityWithUnit:v19 doubleValue:a3->var6];
    [v20 setStandHoursGoal:v45];

    [v20 setActivityMoveMode:self->_activityMoveMode];
    [v20 setPaused:v28];

    v17 = v48;
  }

  return v20;
}

- (id)_hourActivitySummariesForDateRange:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__18;
  v15 = __Block_byref_object_dispose__18;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__HKActivitySummaryDataProvider__hourActivitySummariesForDateRange___block_invoke;
  v8[3] = &unk_1E81BA030;
  v8[4] = self;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(HKActivitySummaryDataProvider *)self _hourActivitySummariesForDateRange:v5 pageHandler:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __68__HKActivitySummaryDataProvider__hourActivitySummariesForDateRange___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, _BYTE *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v11)
  {
    [*(a1 + 32) _submitHourlyQueryForPageNumber:v14 startDate:v12 endDate:v13];
    goto LABEL_14;
  }

  v15 = [v11 activitySummaryItems];

  if (!v15)
  {
LABEL_14:
    *a6 = 1;
    v25 = *(*(a1 + 48) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = 0;

    goto LABEL_15;
  }

  v27 = v14;
  v28 = v13;
  v29 = v12;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [v11 activitySummaryItems];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * v20);
        v22 = [*(a1 + 32) cachedCalendar];
        v23 = [v21 dateComponentsForCalendar:v22];
        v24 = [v22 dateFromComponents:v23];
        if ([*(a1 + 40) containsValue:v24 exclusiveStart:0 exclusiveEnd:1])
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  v13 = v28;
  v12 = v29;
  v14 = v27;
LABEL_15:
}

- (void)_submitHourlyQueryForPageNumber:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSCache *)self->_hourlyActivitySummaryCache objectForKey:v8];
  if (!v11)
  {
    v12 = [(HKActivitySummaryDataProvider *)self healthStore];
    v13 = [(HKActivitySummaryDataProvider *)self cachedCalendar];
    [(HKActivitySummaryDataProvider *)self _hourlyPageInProgress:v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__HKActivitySummaryDataProvider__submitHourlyQueryForPageNumber_startDate_endDate___block_invoke;
    v14[3] = &unk_1E81BA080;
    v14[4] = self;
    v15 = v8;
    [(HKActivitySummaryDataProvider *)self _hourlyActivityDataForStartDate:v9 endDate:v10 healthStore:v12 calendar:v13 handler:v14];
  }
}

void __83__HKActivitySummaryDataProvider__submitHourlyQueryForPageNumber_startDate_endDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__HKActivitySummaryDataProvider__submitHourlyQueryForPageNumber_startDate_endDate___block_invoke_2;
  v10[3] = &unk_1E81BA058;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (void)_hourlyPageInProgress:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WDHourlyActivitySummaryPage);
  [(WDHourlyActivitySummaryPage *)v5 setActivitySummaryItems:0];
  [(NSCache *)self->_hourlyActivitySummaryCache setObject:v5 forKey:v4];
}

- (void)_hourlyActivityPageDataArrived:(id)a3 pageNumber:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v8)
  {
    v11 = objc_alloc_init(WDHourlyActivitySummaryPage);
    [(WDHourlyActivitySummaryPage *)v11 setActivitySummaryItems:v8];
    [(NSCache *)self->_hourlyActivitySummaryCache setObject:v11 forKey:v10];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HKActivitySummaryDataProvider _hourlyActivityPageDataArrived:v9 pageNumber:v12 error:?];
    }

    [(NSCache *)self->_hourlyActivitySummaryCache removeObjectForKey:v10];
  }

  [(HKActivitySummaryDataProvider *)self _alertObserversDidUpdateValues];
}

- (void)_hourActivitySummariesForDateRange:(id)a3 pageHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 minValue];
  v25 = v5;
  v8 = [v5 maxValue];
  v24 = v7;
  [v7 timeIntervalSinceReferenceDate];
  v10 = vcvtmd_s64_f64(v9);
  v23 = v8;
  [v8 timeIntervalSinceReferenceDate];
  v12 = v10 / 432000;
  v27 = vcvtmd_s64_f64(v11) / 432000;
  v13 = 432000 * (v10 / 432000);
  do
  {
    if (v12 > v27)
    {
      break;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v13];
    ++v12;
    v13 += 432000;
    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v13];
    v17 = +[HKGraphZoomLevelConfiguration defaultCalendar];
    v18 = [v15 hk_dateBeforeDateForCalendar:v17 rangeUnit:32];

    v19 = +[HKGraphZoomLevelConfiguration defaultCalendar];
    v20 = [v16 hk_dateBeforeDateForCalendar:v19 rangeUnit:32];

    v21 = [(NSCache *)self->_hourlyActivitySummaryCache objectForKey:v14];
    v28 = 0;
    v6[2](v6, v21, v18, v20, v14, &v28);
    v22 = v28;
  }

  while (v22 != 1);
}

- (id)_buildHourlyActivitySummaryFromDate:(id)a3 calendar:(id)a4 moveQuantity:(id)a5 exerciseQuantity:(id)a6 standQuantity:(id)a7 moveGoal:(id)a8 exerciseGoal:(id)a9 standGoal:(id)a10
{
  v35 = self;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v36 = a10;
  v20 = a4;
  v21 = a3;
  v22 = objc_alloc_init(HKHourlyActivitySummary);
  v23 = [v20 components:62 fromDate:v21];

  v24 = v19;
  v25 = v16;
  [v23 setCalendar:v20];

  [(HKHourlyActivitySummary *)v22 setHourlyDateComponents:v23];
  if (v16)
  {
    [(HKHourlyActivitySummary *)v22 setAppleExerciseTime:v16];
    if (v24)
    {
      [(HKHourlyActivitySummary *)v22 setExerciseTimeGoal:v24];
    }
  }

  v26 = v35;
  v27 = v36;
  v28 = v15;
  if (v15)
  {
    if (v35->_activityMoveMode != 2)
    {
      [(HKHourlyActivitySummary *)v22 setActiveEnergyBurned:v15];
      if (!v18)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    [(HKHourlyActivitySummary *)v22 setAppleMoveTime:v15];
  }

  if (!v18)
  {
LABEL_12:
    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_10:
  if (v35->_activityMoveMode == 2)
  {
    [(HKHourlyActivitySummary *)v22 setAppleMoveTimeGoal:v18];
    goto LABEL_12;
  }

  [(HKHourlyActivitySummary *)v22 setActiveEnergyBurnedGoal:v18];
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_15:
  [(HKHourlyActivitySummary *)v22 setAppleStandHours:v17, v35];
  if (v36)
  {
    [(HKHourlyActivitySummary *)v22 setStandHoursGoal:v36];
  }

  else
  {
    v29 = v25;
    v30 = v24;
    v31 = MEMORY[0x1E696C348];
    v32 = [MEMORY[0x1E696C510] countUnit];
    v33 = [v31 quantityWithUnit:v32 doubleValue:1.0];
    [(HKHourlyActivitySummary *)v22 setStandHoursGoal:v33];

    v24 = v30;
    v25 = v29;

    v27 = 0;
  }

LABEL_18:
  [(HKHourlyActivitySummary *)v22 setActivityMoveMode:v26->_activityMoveMode, v35];

  return v22;
}

- (BOOL)_sampleDate:(id)a3 withinHourBeforeDate:(id)a4
{
  v5 = a3;
  [a4 timeIntervalSinceReferenceDate];
  v7 = v6;
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;

  return v7 - v9 < *MEMORY[0x1E696B518] && v7 - v9 >= 0.0;
}

- (id)_hourlySummariesFromStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 activeEnergyData:(id)a6 appleMoveTimeData:(id)a7 exerciseData:(id)a8 standData:(id)a9 dayGoalData:(id)a10
{
  v15 = a3;
  v68 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v74 = a9;
  v20 = a10;
  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v67 setHour:1];
  v21 = v15;
  v65 = [MEMORY[0x1E696C510] countUnit];
  v72 = v16;
  v73 = v20;
  if ([v20 count] < 2)
  {
    v75 = 0;
  }

  else
  {
    v22 = [v20 objectAtIndexedSubscript:1];
    v23 = [v22 dateComponentsForCalendar:v16];

    v75 = [v16 dateFromComponents:v23];
  }

  v60 = v18;
  v61 = v17;
  if (self->_activityMoveMode == 2)
  {
    v24 = v18;
  }

  else
  {
    v24 = v17;
  }

  v25 = v24;
  v26 = v74;
  v59 = v21;
  if ([v21 hk_isBeforeOrEqualToDate:v68])
  {
    v27 = 0;
    v69 = 0;
    v70 = 0;
    v28 = 0;
    v66 = v25;
    do
    {
      v29 = v21;
      if (v27 >= [v25 count])
      {
        v76 = v27;
      }

      else
      {
        v30 = [v25 objectAtIndexedSubscript:v27];
        [v30 startDate];
        v32 = v31 = v27;
        v33 = [v32 isEqual:v29];

        if (v33)
        {
          v34 = [v25 objectAtIndexedSubscript:v31];
          v35 = [v34 quantityValue];

          v76 = v31 + 1;
          goto LABEL_15;
        }

        v76 = v31;
      }

      v35 = 0;
LABEL_15:
      if (v70 >= [v19 count])
      {
        v40 = 0;
      }

      else
      {
        v36 = [v19 objectAtIndexedSubscript:v70];
        v37 = [v36 startDate];
        v38 = [v37 isEqual:v29];

        if (v38)
        {
          v39 = [v19 objectAtIndexedSubscript:v70];
          v40 = [v39 quantityValue];

          ++v70;
        }

        else
        {
          v40 = 0;
        }

        v26 = v74;
      }

      if (v69 >= [v26 count])
      {
        v46 = 0;
      }

      else
      {
        v41 = MEMORY[0x1E695DF00];
        v42 = [v26 objectAtIndexedSubscript:v69];
        [v42 timeStamp];
        v43 = [v41 dateWithTimeIntervalSinceReferenceDate:?];

        if ([(HKActivitySummaryDataProvider *)self _sampleDate:v43 withinHourBeforeDate:v29])
        {
          v44 = [v26 objectAtIndexedSubscript:v69];
          if ([v44 state])
          {
            v45 = 0.0;
          }

          else
          {
            v45 = 1.0;
          }

          v46 = [MEMORY[0x1E696C348] quantityWithUnit:v65 doubleValue:v45];
          ++v69;
        }

        else
        {
          v46 = 0;
        }
      }

      v47 = v19;
      if (v28 >= [v73 count])
      {
        v48 = 0;
        if (v35)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v48 = [v73 objectAtIndexedSubscript:v28];
        if (v35)
        {
          goto LABEL_36;
        }
      }

      if (v40 || v46)
      {
LABEL_36:
        if ([v48 activityMoveMode] == self->_activityMoveMode && (objc_msgSend(v48, "isPaused") & 1) == 0)
        {
          v63 = v28;
          if (v48)
          {
            if (self->_activityMoveMode == 2)
            {
              [v48 appleMoveTimeGoal];
            }

            else
            {
              [v48 activeEnergyBurnedGoal];
            }
            v62 = ;
            v52 = v72;
            v51 = [v48 exerciseTimeGoal];
            v49 = [v48 standHoursGoal];
            v50 = v62;
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = v72;
          }

          v53 = [(HKActivitySummaryDataProvider *)self _buildHourlyActivitySummaryFromDate:v29 calendar:v52 moveQuantity:v35 exerciseQuantity:v40 standQuantity:v46 moveGoal:v50 exerciseGoal:v51 standGoal:v49];
          [v64 addObject:v53];

          v28 = v63;
        }
      }

      v21 = [v72 dateByAddingComponents:v67 toDate:v29 options:0];

      if (v75)
      {
        if ([v21 hk_isAfterOrEqualToDate:?] && v28 < objc_msgSend(v73, "count") - 1)
        {
          if (v28 + 2 < [v73 count])
          {
            v54 = [v73 objectAtIndexedSubscript:v28 + 2];
            v55 = [v54 dateComponentsForCalendar:v72];

            v56 = [v72 dateFromComponents:v55];

            v75 = v56;
          }

          ++v28;
        }
      }

      else
      {
        v75 = 0;
      }

      v19 = v47;
      v26 = v74;
      v25 = v66;
      v27 = v76;
    }

    while (([v21 hk_isBeforeOrEqualToDate:v68] & 1) != 0);
  }

  v57 = v64;

  return v64;
}

- (void)_hourlyActivityDataForStartDate:(id)a3 endDate:(id)a4 healthStore:(id)a5 calendar:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v17 setHour:1];
  objc_initWeak(&location, self);
  v18 = objc_alloc(MEMORY[0x1E696C5E0]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __102__HKActivitySummaryDataProvider__hourlyActivityDataForStartDate_endDate_healthStore_calendar_handler___block_invoke;
  v25[3] = &unk_1E81BA0D0;
  v19 = v15;
  v26 = v19;
  v20 = v12;
  v27 = v20;
  v21 = v13;
  v28 = v21;
  objc_copyWeak(&v31, &location);
  v22 = v16;
  v30 = v22;
  v23 = v14;
  v29 = v23;
  v24 = [v18 initWithStartDate:v20 endDate:v21 moveIntervalComponents:v17 exerciseIntervalComponents:v17 initialQueryResultsHandler:v25];
  [v23 executeQuery:v24];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __102__HKActivitySummaryDataProvider__hourlyActivityDataForStartDate_endDate_healthStore_calendar_handler___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v9 activeEnergyResults];
  if (!v11)
  {
    v4 = [v9 appleMoveTimeResults];
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v12 = [v9 appleExerciseTimeResults];
  if (!v12)
  {

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v4;
    }

    goto LABEL_11;
  }

  v13 = [v9 appleStandHourResults];

  if (v11)
  {

    if (!v13)
    {
      goto LABEL_11;
    }

LABEL_13:
    v15 = [a1[4] hk_activitySummaryDateComponentsFromDate:a1[5]];
    v16 = [a1[4] hk_activitySummaryDateComponentsFromDate:a1[6]];
    v17 = [MEMORY[0x1E696C378] predicateForActivitySummariesBetweenStartDateComponents:v15 endDateComponents:v16];
    v18 = objc_alloc(MEMORY[0x1E696BED0]);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __102__HKActivitySummaryDataProvider__hourlyActivityDataForStartDate_endDate_healthStore_calendar_handler___block_invoke_2;
    v23 = &unk_1E81BA0A8;
    objc_copyWeak(&v29, a1 + 9);
    v24 = a1[5];
    v25 = a1[6];
    v26 = a1[4];
    v27 = v9;
    v28 = a1[8];
    v19 = [v18 initWithPredicate:v17 resultsHandler:&v20];
    [a1[7] executeQuery:{v19, v20, v21, v22, v23}];

    objc_destroyWeak(&v29);
    goto LABEL_14;
  }

  if (v13)
  {
    goto LABEL_13;
  }

LABEL_11:
  (*(a1[8] + 2))();
LABEL_14:
}

void __102__HKActivitySummaryDataProvider__hourlyActivityDataForStartDate_endDate_healthStore_calendar_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (v16 && WeakRetained)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [*(a1 + 56) activeEnergyResults];
    v12 = [*(a1 + 56) appleMoveTimeResults];
    v13 = [*(a1 + 56) appleExerciseTimeResults];
    v14 = [*(a1 + 56) appleStandHourResults];
    v15 = [WeakRetained _hourlySummariesFromStartDate:v8 endDate:v9 calendar:v10 activeEnergyData:v11 appleMoveTimeData:v12 exerciseData:v13 standData:v14 dayGoalData:v16];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (id)_predicateForStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v7 hk_activitySummaryDateComponentsFromDate:a3];
  v10 = [v7 hk_activitySummaryDateComponentsFromDate:v8];

  v11 = [MEMORY[0x1E696C378] predicateForActivitySummariesBetweenStartDateComponents:v9 endDateComponents:v10];

  return v11;
}

- (id)_predicateForStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 activityMoveMode:(int64_t)a6
{
  v26[2] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  v11 = [v9 hk_activitySummaryDateComponentsFromDate:a3];
  v12 = [v9 hk_activitySummaryDateComponentsFromDate:v10];

  v13 = [MEMORY[0x1E696C378] predicateForActivitySummariesBetweenStartDateComponents:v11 endDateComponents:v12];
  if (a6 == 2)
  {
    v14 = [MEMORY[0x1E696C378] predicateForActivitySummariesWithActivityMoveMode:2];
    v15 = MEMORY[0x1E696AB28];
    v26[0] = v13;
    v26[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];
  }

  else
  {
    v14 = [MEMORY[0x1E696C378] predicateForActivitySummariesWithActivityMoveMode:1];
    v16 = [MEMORY[0x1E696C378] predicateForActivitySummariesWithActivityMoveMode:0];
    v18 = MEMORY[0x1E696AB28];
    v25[0] = v14;
    v25[1] = v16;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v20 = [v18 orPredicateWithSubpredicates:v19];

    v21 = MEMORY[0x1E696AB28];
    v24[0] = v20;
    v24[1] = v13;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v17 = [v21 andPredicateWithSubpredicates:v22];
  }

  return v17;
}

- (void)_mainQueueFetchValueWithRetryCount:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKActivitySummaryDataProvider.m" lineNumber:354 description:@"_mainQueueFetchValueWithRetryCount must be run on the main queue"];
}

void __68__HKActivitySummaryDataProvider__mainQueueFetchValueWithRetryCount___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_1C3942000, a2, a3, "%{public}@: Received error fetching activity summaries %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_buildActivitySummaryFromAverages:(uint64_t)a1 pausedAverages:(uint64_t)a2 averagePeriod:startDate:calendar:energyUnit:standHourUnit:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKActivitySummaryDataProvider.m" lineNumber:692 description:@"_buildActivitySummaryFromAverages: Detected zero unpaused days"];
}

- (void)_hourlyActivityPageDataArrived:(uint64_t)a1 pageNumber:(uint64_t)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_1C3942000, a2, a3, "%{public}@: Received error fetching hourly activity summaries %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end