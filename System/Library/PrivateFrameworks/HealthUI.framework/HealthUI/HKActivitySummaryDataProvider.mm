@interface HKActivitySummaryDataProvider
- (BOOL)_sampleDate:(id)date withinHourBeforeDate:(id)beforeDate;
- (HKActivitySummary)latestActivitySummary;
- (HKActivitySummaryDataProvider)initWithHealthStore:(id)store dateCache:(id)cache displayTypeController:(id)controller unitController:(id)unitController;
- (HKActivitySummaryDataProvider)initWithHealthStore:(id)store dateCache:(id)cache displayTypeController:(id)controller unitController:(id)unitController activityMoveMode:(int64_t)mode;
- (id)_averageActivitySummariesForDateRange:(id)range averagePeriod:(int64_t)period;
- (id)_buildActivitySummaryFromAverages:(_WDActivitySummaryAverages *)averages pausedAverages:(_WDActivitySummaryAverages *)pausedAverages averagePeriod:(int64_t)period startDate:(id)date calendar:(id)calendar energyUnit:(id)unit standHourUnit:(id)hourUnit;
- (id)_buildHourlyActivitySummaryFromDate:(id)date calendar:(id)calendar moveQuantity:(id)quantity exerciseQuantity:(id)exerciseQuantity standQuantity:(id)standQuantity moveGoal:(id)goal exerciseGoal:(id)exerciseGoal standGoal:(id)self0;
- (id)_dayActivitySummariesForDateRange:(id)range;
- (id)_fetchOperationForTimeScope:(int64_t)scope withCompletion:(id)completion;
- (id)_hourActivitySummariesForDateRange:(id)range;
- (id)_hourlySummariesFromStartDate:(id)date endDate:(id)endDate calendar:(id)calendar activeEnergyData:(id)data appleMoveTimeData:(id)timeData exerciseData:(id)exerciseData standData:(id)standData dayGoalData:(id)self0;
- (id)_predicateForStartDate:(id)date endDate:(id)endDate calendar:(id)calendar;
- (id)_predicateForStartDate:(id)date endDate:(id)endDate calendar:(id)calendar activityMoveMode:(int64_t)mode;
- (id)_queriesForTimeScope:(int64_t)scope withCompletion:(id)completion;
- (id)activitySummariesForDateRange:(id)range timeScope:(int64_t)scope;
- (id)activitySummariesForTimeScope:(int64_t)scope;
- (id)cachedCalendar;
- (int64_t)_weekOfYearForDateComponents:(id)components calendar:(id)calendar;
- (void)_alertObserversDidUpdateValues;
- (void)_averageActivitySummariesForCachedData:(id)data averagePeriod:(int64_t)period handler:(id)handler;
- (void)_clearCaches;
- (void)_fetchValueWithRetryCount:(int64_t)count;
- (void)_hourActivitySummariesForDateRange:(id)range pageHandler:(id)handler;
- (void)_hourlyActivityDataForStartDate:(id)date endDate:(id)endDate healthStore:(id)store calendar:(id)calendar handler:(id)handler;
- (void)_hourlyActivityPageDataArrived:(id)arrived pageNumber:(id)number error:(id)error;
- (void)_hourlyPageInProgress:(id)progress;
- (void)_mainQueueFetchValueWithRetryCount:(int64_t)count;
- (void)_partitionAndProcessActivitySummariesForAllTimeScopes:(id)scopes;
- (void)_setupActivitySummaryChangeObserver;
- (void)_stopActivitySummaryChangeObserver;
- (void)_submitHourlyQueryForPageNumber:(id)number startDate:(id)date endDate:(id)endDate;
- (void)_transitionToFetchFailureForTimeScope:(int64_t)scope;
- (void)_unitPreferencesDidUpdate:(id)update;
- (void)dateCacheDidUpdate:(id)update onNotification:(id)notification;
- (void)dealloc;
@end

@implementation HKActivitySummaryDataProvider

- (HKActivitySummaryDataProvider)initWithHealthStore:(id)store dateCache:(id)cache displayTypeController:(id)controller unitController:(id)unitController
{
  storeCopy = store;
  cacheCopy = cache;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  v34.receiver = self;
  v34.super_class = HKActivitySummaryDataProvider;
  v15 = [(HKActivitySummaryDataProvider *)&v34 init];
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x1E696C4F8]);
    v17 = objc_opt_class();
    NSStringFromClass(v17);
    v33 = unitControllerCopy;
    v18 = controllerCopy;
    v19 = cacheCopy;
    v21 = v20 = storeCopy;
    v22 = [v16 initWithName:v21 loggingCategory:*MEMORY[0x1E696B988]];
    observers = v15->_observers;
    v15->_observers = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    activitySummaryForTimeScopeCache = v15->_activitySummaryForTimeScopeCache;
    v15->_activitySummaryForTimeScopeCache = v24;

    objc_storeStrong(&v15->_healthStore, store);
    objc_storeStrong(&v15->_dateCache, cache);
    objc_storeStrong(&v15->_displayTypeController, controller);
    objc_storeStrong(&v15->_unitController, unitController);
    dateCache = [(HKActivitySummaryDataProvider *)v15 dateCache];
    [dateCache registerObserver:v15];

    [(HKActivitySummaryDataProvider *)v15 _setupActivitySummaryChangeObserver];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__unitPreferencesDidUpdate_ name:*MEMORY[0x1E696BE70] object:0];

    storeCopy = v20;
    cacheCopy = v19;
    controllerCopy = v18;
    unitControllerCopy = v33;
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

- (HKActivitySummaryDataProvider)initWithHealthStore:(id)store dateCache:(id)cache displayTypeController:(id)controller unitController:(id)unitController activityMoveMode:(int64_t)mode
{
  storeCopy = store;
  cacheCopy = cache;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  v36.receiver = self;
  v36.super_class = HKActivitySummaryDataProvider;
  v17 = [(HKActivitySummaryDataProvider *)&v36 init];
  if (v17)
  {
    v35 = storeCopy;
    v18 = objc_alloc(MEMORY[0x1E696C4F8]);
    v19 = objc_opt_class();
    NSStringFromClass(v19);
    v34 = unitControllerCopy;
    v20 = controllerCopy;
    v22 = v21 = cacheCopy;
    v23 = [v18 initWithName:v22 loggingCategory:*MEMORY[0x1E696B988]];
    observers = v17->_observers;
    v17->_observers = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    activitySummaryForTimeScopeCache = v17->_activitySummaryForTimeScopeCache;
    v17->_activitySummaryForTimeScopeCache = v25;

    objc_storeStrong(&v17->_healthStore, store);
    objc_storeStrong(&v17->_dateCache, cache);
    objc_storeStrong(&v17->_displayTypeController, controller);
    objc_storeStrong(&v17->_unitController, unitController);
    v17->_activityMoveMode = mode;
    dateCache = [(HKActivitySummaryDataProvider *)v17 dateCache];
    [dateCache registerObserver:v17];

    [(HKActivitySummaryDataProvider *)v17 _setupActivitySummaryChangeObserver];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v17 selector:sel__unitPreferencesDidUpdate_ name:*MEMORY[0x1E696BE70] object:0];

    cacheCopy = v21;
    controllerCopy = v20;
    unitControllerCopy = v34;
    storeCopy = v35;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696BE70] object:0];

  v4.receiver = self;
  v4.super_class = HKActivitySummaryDataProvider;
  [(HKActivitySummaryDataProvider *)&v4 dealloc];
}

- (HKActivitySummary)latestActivitySummary
{
  v2 = [(HKActivitySummaryDataProvider *)self activitySummariesForTimeScope:2];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (id)activitySummariesForTimeScope:(int64_t)scope
{
  activitySummaryForTimeScopeCache = self->_activitySummaryForTimeScopeCache;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
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

- (id)activitySummariesForDateRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  v7 = 0;
  if (scope <= 3)
  {
    if (scope >= 3)
    {
      if (scope != 3)
      {
        goto LABEL_10;
      }

      selfCopy2 = self;
      v9 = rangeCopy;
      v10 = 1;
    }

    else
    {
      selfCopy2 = self;
      v9 = rangeCopy;
      v10 = 0;
    }

    v11 = [(HKActivitySummaryDataProvider *)selfCopy2 _averageActivitySummariesForDateRange:v9 averagePeriod:v10];
    goto LABEL_9;
  }

  if ((scope - 4) < 2)
  {
    v11 = [(HKActivitySummaryDataProvider *)self _dayActivitySummariesForDateRange:rangeCopy];
LABEL_9:
    v7 = v11;
    goto LABEL_10;
  }

  if (scope == 6)
  {
    v11 = [(HKActivitySummaryDataProvider *)self _hourActivitySummariesForDateRange:rangeCopy];
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (void)_partitionAndProcessActivitySummariesForAllTimeScopes:(id)scopes
{
  scopesCopy = scopes;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  dateCache = [(HKActivitySummaryDataProvider *)self dateCache];
  v7 = HKCalendarDateTransformNone();
  v8 = HKGenerateDateRangeForCharts(dateCache, 4, v7);

  minValue = [v8 minValue];
  maxValue = [v8 maxValue];
  dateCache2 = [(HKActivitySummaryDataProvider *)self dateCache];
  v12 = HKCalendarDateTransformNone();
  v13 = HKGenerateDateRangeForCharts(dateCache2, 5, v12);

  minValue2 = [v13 minValue];
  dateCache3 = [(HKActivitySummaryDataProvider *)self dateCache];
  v16 = HKCalendarDateTransformNone();
  v33 = HKGenerateDateRangeForCharts(dateCache3, 6, v16);

  minValue3 = [v33 minValue];
  cachedCalendar = [(HKActivitySummaryDataProvider *)self cachedCalendar];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __87__HKActivitySummaryDataProvider__partitionAndProcessActivitySummariesForAllTimeScopes___block_invoke;
  v39[3] = &unk_1E81B9F20;
  v40 = cachedCalendar;
  v41 = maxValue;
  v42 = minValue3;
  v19 = array3;
  v43 = v19;
  v44 = minValue2;
  v20 = array2;
  v45 = v20;
  v46 = minValue;
  v21 = array;
  v47 = v21;
  v32 = minValue;
  v30 = minValue2;
  v22 = minValue3;
  v23 = maxValue;
  v24 = cachedCalendar;
  [scopesCopy enumerateObjectsUsingBlock:v39];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__HKActivitySummaryDataProvider__partitionAndProcessActivitySummariesForAllTimeScopes___block_invoke_2;
  block[3] = &unk_1E81B8ED8;
  block[4] = self;
  v35 = scopesCopy;
  v36 = v21;
  v37 = v20;
  v38 = v19;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = scopesCopy;
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

- (void)_fetchValueWithRetryCount:(int64_t)count
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(HKActivitySummaryDataProvider *)self _mainQueueFetchValueWithRetryCount:count];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__HKActivitySummaryDataProvider__fetchValueWithRetryCount___block_invoke;
    v5[3] = &unk_1E81B99F8;
    v5[4] = self;
    v5[5] = count;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_mainQueueFetchValueWithRetryCount:(int64_t)count
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (count)
    {
LABEL_3:
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __68__HKActivitySummaryDataProvider__mainQueueFetchValueWithRetryCount___block_invoke;
      v9[3] = &unk_1E81B7500;
      v9[4] = self;
      v9[5] = count;
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
    if (count)
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

- (void)_transitionToFetchFailureForTimeScope:(int64_t)scope
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _HKInitializeLogging();
  v4 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Reached max retry count for Activity Summary. Aborting", &v6, 0xCu);
  }

  outstandingFetchOperation = self->_outstandingFetchOperation;
  self->_outstandingFetchOperation = 0;
}

- (id)_fetchOperationForTimeScope:(int64_t)scope withCompletion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  healthStore = [(HKActivitySummaryDataProvider *)self healthStore];
  v8 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:healthStore operationDescription:@"ActivitySummaryQuery" completion:completionCopy];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__HKActivitySummaryDataProvider__fetchOperationForTimeScope_withCompletion___block_invoke;
  v14[3] = &unk_1E81B9F48;
  v9 = v8;
  v15 = v9;
  v10 = [(HKActivitySummaryDataProvider *)self _queriesForTimeScope:scope withCompletion:v14];
  v16[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [(HKHealthQueryFetchOperation *)v9 setQueries:v11];

  v12 = v9;
  return v9;
}

- (id)_queriesForTimeScope:(int64_t)scope withCompletion:(id)completion
{
  completionCopy = completion;
  cachedCalendar = [(HKActivitySummaryDataProvider *)self cachedCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v9 = [cachedCalendar dateByAddingUnit:4 value:-5 toDate:date options:0];
  v10 = [HKValueRange valueRangeWithMinValue:v9 maxValue:date];
  v11 = +[HKGraphZoomLevelConfiguration chartDataRangeForTimeScope:dataRange:firstWeekday:calendar:cadence:alignment:](HKGraphZoomLevelConfiguration, "chartDataRangeForTimeScope:dataRange:firstWeekday:calendar:cadence:alignment:", scope, v10, [cachedCalendar firstWeekday], cachedCalendar, 0, 3);
  startDate = [v11 startDate];
  endDate = [v11 endDate];
  v14 = [(HKActivitySummaryDataProvider *)self _predicateForStartDate:startDate endDate:endDate calendar:cachedCalendar activityMoveMode:self->_activityMoveMode];
  v15 = objc_alloc(MEMORY[0x1E696BED0]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__HKActivitySummaryDataProvider__queriesForTimeScope_withCompletion___block_invoke;
  v19[3] = &unk_1E81B9F70;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = [v15 initWithPredicate:v14 resultsHandler:v19];

  return v17;
}

- (void)_setupActivitySummaryChangeObserver
{
  [(HKActivitySummaryDataProvider *)self _stopActivitySummaryChangeObserver];
  healthStore = [(HKActivitySummaryDataProvider *)self healthStore];
  dateCache = [(HKActivitySummaryDataProvider *)self dateCache];
  v5 = HKCalendarDateTransformNone();
  v6 = HKGenerateDateRangeForCharts(dateCache, 2, v5);

  minValue = [v6 minValue];
  maxValue = [v6 maxValue];
  cachedCalendar = [(HKActivitySummaryDataProvider *)self cachedCalendar];
  v10 = [(HKActivitySummaryDataProvider *)self _predicateForStartDate:minValue endDate:maxValue calendar:cachedCalendar activityMoveMode:self->_activityMoveMode];
  v11 = [objc_alloc(MEMORY[0x1E696BED0]) initWithPredicate:v10 resultsHandler:&__block_literal_global_68];
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __68__HKActivitySummaryDataProvider__setupActivitySummaryChangeObserver__block_invoke_2;
  v15 = &unk_1E81B9FB8;
  objc_copyWeak(&v16, &location);
  [v11 setUpdateHandler:&v12];
  objc_storeStrong(&self->_observerQuery, v11);
  [healthStore executeQuery:{self->_observerQuery, v12, v13, v14, v15}];
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
    healthStore = [(HKActivitySummaryDataProvider *)self healthStore];
    [healthStore stopQuery:self->_observerQuery];

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

- (void)_unitPreferencesDidUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__HKActivitySummaryDataProvider__unitPreferencesDidUpdate___block_invoke;
  v6[3] = &unk_1E81B5AD0;
  v7 = updateCopy;
  selfCopy = self;
  v5 = updateCopy;
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

- (void)dateCacheDidUpdate:(id)update onNotification:(id)notification
{
  [(HKActivitySummaryDataProvider *)self _clearCaches:update];
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

- (id)_dayActivitySummariesForDateRange:(id)range
{
  v23 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = [(HKActivitySummaryDataProvider *)self activitySummariesForTimeScope:2];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cachedCalendar = [(HKActivitySummaryDataProvider *)self cachedCalendar];
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
          v14 = [v13 dateComponentsForCalendar:cachedCalendar];
          v15 = [cachedCalendar dateFromComponents:v14];
          if ([rangeCopy containsValue:v15 exclusiveStart:0 exclusiveEnd:1])
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

- (id)_averageActivitySummariesForDateRange:(id)range averagePeriod:(int64_t)period
{
  rangeCopy = range;
  v7 = [(HKActivitySummaryDataProvider *)self activitySummariesForTimeScope:2];
  if (v7)
  {
    minValue = [rangeCopy minValue];
    maxValue = [rangeCopy maxValue];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__HKActivitySummaryDataProvider__averageActivitySummariesForDateRange_averagePeriod___block_invoke;
    v17[3] = &unk_1E81BA008;
    v18 = minValue;
    v19 = maxValue;
    v11 = v10;
    v20 = v11;
    v12 = maxValue;
    v13 = minValue;
    [(HKActivitySummaryDataProvider *)self _averageActivitySummariesForCachedData:v7 averagePeriod:period handler:v17];
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

- (int64_t)_weekOfYearForDateComponents:(id)components calendar:(id)calendar
{
  calendarCopy = calendar;
  componentsCopy = components;
  if ([componentsCopy weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [calendarCopy dateFromComponents:componentsCopy];

    weekOfYear = [calendarCopy component:0x2000 fromDate:v7];
    componentsCopy = v7;
  }

  else
  {
    weekOfYear = [componentsCopy weekOfYear];
  }

  return weekOfYear;
}

- (void)_averageActivitySummariesForCachedData:(id)data averagePeriod:(int64_t)period handler:(id)handler
{
  v115 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  cachedCalendar = [(HKActivitySummaryDataProvider *)self cachedCalendar];
  displayTypeController = [(HKActivitySummaryDataProvider *)self displayTypeController];
  v12 = [displayTypeController displayTypeWithIdentifier:&unk_1F4384228];

  selfCopy = self;
  unitController = [(HKActivitySummaryDataProvider *)self unitController];
  v71 = v12;
  v14 = [unitController unitForDisplayType:v12];

  countUnit = [MEMORY[0x1E696C510] countUnit];
  minuteUnit = [MEMORY[0x1E696C510] minuteUnit];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = dataCopy;
  v72 = handlerCopy;
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
  v74 = minuteUnit;
  v75 = countUnit;
  periodCopy = period;
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
      v26 = [v25 dateComponentsForCalendar:cachedCalendar];

      if (period == 1)
      {
        v17 = v26;
        month = [(HKActivitySummaryDataProvider *)selfCopy _weekOfYearForDateComponents:v26 calendar:cachedCalendar];
        goto LABEL_10;
      }

      if (!period)
      {
        v17 = v26;
        month = [v26 month];
LABEL_10:
        v28 = month;
        goto LABEL_12;
      }

      v17 = v26;
      v28 = 0;
LABEL_12:
      if (v28 != v81)
      {
        v29 = [cachedCalendar dateFromComponents:v17];
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
        v70 = countUnit;
        periodCopy2 = period;
        v31 = v80;
        v32 = cachedCalendar;
        v33 = [(HKActivitySummaryDataProvider *)selfCopy _buildActivitySummaryFromAverages:&v101 pausedAverages:&v92 averagePeriod:periodCopy2 startDate:v80 calendar:cachedCalendar energyUnit:v14 standHourUnit:v70];
        if (v33)
        {
          v34 = [HKValueRange valueRangeWithMinValue:v80 maxValue:v29];
          LOBYTE(v101) = 0;
          (v72)[2](v72, v34, v33, &v101);
          v35 = LOBYTE(v101);

          v31 = v80;
          if (v35)
          {

            cachedCalendar = v32;
            minuteUnit = v74;
            countUnit = v75;
            period = periodCopy;
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
        cachedCalendar = v32;
        minuteUnit = v74;
        countUnit = v75;
        period = periodCopy;
      }

      appleMoveTime = [v25 appleMoveTime];
      [appleMoveTime doubleValueForUnit:minuteUnit];
      v86 = v37;

      appleMoveTimeGoal = [v25 appleMoveTimeGoal];
      [appleMoveTimeGoal doubleValueForUnit:minuteUnit];
      v83 = v39;

      activeEnergyBurned = [v25 activeEnergyBurned];
      [activeEnergyBurned doubleValueForUnit:v14];
      v42 = v41;

      activeEnergyBurnedGoal = [v25 activeEnergyBurnedGoal];
      [activeEnergyBurnedGoal doubleValueForUnit:v14];
      v82 = v44;

      appleExerciseTime = [v25 appleExerciseTime];
      [appleExerciseTime doubleValueForUnit:minuteUnit];
      v47 = v46;

      exerciseTimeGoal = [v25 exerciseTimeGoal];

      if (exerciseTimeGoal)
      {
        exerciseTimeGoal2 = [v25 exerciseTimeGoal];
        [exerciseTimeGoal2 doubleValueForUnit:minuteUnit];
        v85 = v50;
      }

      appleStandHours = [v25 appleStandHours];
      [appleStandHours doubleValueForUnit:countUnit];
      v53 = v52;

      standHoursGoal = [v25 standHoursGoal];

      if (standHoursGoal)
      {
        standHoursGoal2 = [v25 standHoursGoal];
        [standHoursGoal2 doubleValueForUnit:countUnit];
        v84 = v56;
      }

      if ([v25 isPaused])
      {
        appleMoveTime2 = [v25 appleMoveTime];
        [appleMoveTime2 doubleValueForUnit:minuteUnit];
        v87 = v87 + v58;

        activeEnergyBurned2 = [v25 activeEnergyBurned];
        [activeEnergyBurned2 doubleValueForUnit:v14];
        v90 = v90 + v60;

        appleExerciseTime2 = [v25 appleExerciseTime];
        [appleExerciseTime2 doubleValueForUnit:minuteUnit];
        v89 = v89 + v62;

        appleStandHours2 = [v25 appleStandHours];
        [appleStandHours2 doubleValueForUnit:countUnit];
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
  v67 = [(HKActivitySummaryDataProvider *)selfCopy _buildActivitySummaryFromAverages:&v101 pausedAverages:&v92 averagePeriod:period startDate:v80 calendar:cachedCalendar energyUnit:v14 standHourUnit:countUnit];
  if (v67 && v17)
  {
    v68 = [cachedCalendar dateFromComponents:v17];
    v69 = [HKValueRange valueRangeWithMinValue:v80 maxValue:v68];
    LOBYTE(v101) = 0;
    (v72)[2](v72, v69, v67, &v101);

    v66 = v80;
  }
}

- (id)_buildActivitySummaryFromAverages:(_WDActivitySummaryAverages *)averages pausedAverages:(_WDActivitySummaryAverages *)pausedAverages averagePeriod:(int64_t)period startDate:(id)date calendar:(id)calendar energyUnit:(id)unit standHourUnit:(id)hourUnit
{
  dateCopy = date;
  calendarCopy = calendar;
  unitCopy = unit;
  hourUnitCopy = hourUnit;
  v20 = 0;
  if (dateCopy && averages->var0 > 0.0)
  {
    v20 = objc_alloc_init(MEMORY[0x1E696BEC8]);
    v47 = calendarCopy;
    if (period == 1)
    {
      v23 = [dateCopy hk_dateBeforeDateForCalendar:calendarCopy rangeUnit:0x2000];
      v24 = [calendarCopy components:30 fromDate:v23];
      v25 = calendarCopy;
      v22 = v24;
      [v24 setCalendar:v25];
    }

    else if (period)
    {
      v22 = 0;
    }

    else
    {
      v21 = [calendarCopy components:14 fromDate:dateCopy];
      [v21 setCalendar:calendarCopy];
      v22 = v21;
      [v21 setDay:1];
    }

    var0 = averages->var0;
    v27 = pausedAverages->var0;
    v28 = averages->var0 == pausedAverages->var0;
    if (pausedAverages->var0 == 0.0 || var0 == v27)
    {
      [v20 _setGregorianDateComponents:{v22, var0, v47}];
      minuteUnit = [MEMORY[0x1E696C510] minuteUnit];
      v39 = [MEMORY[0x1E696C348] quantityWithUnit:minuteUnit doubleValue:averages->var7 / averages->var0];
      [v20 setAppleMoveTime:v39];

      v40 = [MEMORY[0x1E696C348] quantityWithUnit:minuteUnit doubleValue:averages->var8];
      [v20 setAppleMoveTimeGoal:v40];

      v41 = [MEMORY[0x1E696C348] quantityWithUnit:unitCopy doubleValue:averages->var1 / averages->var0];
      [v20 setActiveEnergyBurned:v41];

      v42 = [MEMORY[0x1E696C348] quantityWithUnit:unitCopy doubleValue:averages->var2];
      [v20 setActiveEnergyBurnedGoal:v42];

      v43 = [MEMORY[0x1E696C348] quantityWithUnit:minuteUnit doubleValue:averages->var3 / averages->var0];
      [v20 setAppleExerciseTime:v43];

      v44 = [MEMORY[0x1E696C348] quantityWithUnit:minuteUnit doubleValue:averages->var4];
      [v20 setExerciseTimeGoal:v44];

      v38 = [MEMORY[0x1E696C348] quantityWithUnit:hourUnitCopy doubleValue:averages->var5 / averages->var0];
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
      minuteUnit = [MEMORY[0x1E696C510] minuteUnit];
      v32 = [MEMORY[0x1E696C348] quantityWithUnit:minuteUnit doubleValue:(averages->var7 - pausedAverages->var7) / v29];
      [v20 setAppleMoveTime:v32];

      v33 = [MEMORY[0x1E696C348] quantityWithUnit:minuteUnit doubleValue:averages->var8];
      [v20 setAppleMoveTimeGoal:v33];

      v34 = [MEMORY[0x1E696C348] quantityWithUnit:unitCopy doubleValue:(averages->var1 - pausedAverages->var1) / v29];
      [v20 setActiveEnergyBurned:v34];

      v35 = [MEMORY[0x1E696C348] quantityWithUnit:unitCopy doubleValue:averages->var2];
      [v20 setActiveEnergyBurnedGoal:v35];

      v36 = [MEMORY[0x1E696C348] quantityWithUnit:minuteUnit doubleValue:(averages->var3 - pausedAverages->var3) / v29];
      [v20 setAppleExerciseTime:v36];

      v37 = [MEMORY[0x1E696C348] quantityWithUnit:minuteUnit doubleValue:averages->var4];
      [v20 setExerciseTimeGoal:v37];

      v38 = [MEMORY[0x1E696C348] quantityWithUnit:hourUnitCopy doubleValue:(averages->var5 - pausedAverages->var5) / v29];
      v28 = 0;
    }

    [v20 setAppleStandHours:v38];

    v45 = [MEMORY[0x1E696C348] quantityWithUnit:hourUnitCopy doubleValue:averages->var6];
    [v20 setStandHoursGoal:v45];

    [v20 setActivityMoveMode:self->_activityMoveMode];
    [v20 setPaused:v28];

    calendarCopy = v48;
  }

  return v20;
}

- (id)_hourActivitySummariesForDateRange:(id)range
{
  rangeCopy = range;
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
  v5 = rangeCopy;
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

- (void)_submitHourlyQueryForPageNumber:(id)number startDate:(id)date endDate:(id)endDate
{
  numberCopy = number;
  dateCopy = date;
  endDateCopy = endDate;
  v11 = [(NSCache *)self->_hourlyActivitySummaryCache objectForKey:numberCopy];
  if (!v11)
  {
    healthStore = [(HKActivitySummaryDataProvider *)self healthStore];
    cachedCalendar = [(HKActivitySummaryDataProvider *)self cachedCalendar];
    [(HKActivitySummaryDataProvider *)self _hourlyPageInProgress:numberCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__HKActivitySummaryDataProvider__submitHourlyQueryForPageNumber_startDate_endDate___block_invoke;
    v14[3] = &unk_1E81BA080;
    v14[4] = self;
    v15 = numberCopy;
    [(HKActivitySummaryDataProvider *)self _hourlyActivityDataForStartDate:dateCopy endDate:endDateCopy healthStore:healthStore calendar:cachedCalendar handler:v14];
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

- (void)_hourlyPageInProgress:(id)progress
{
  progressCopy = progress;
  v5 = objc_alloc_init(WDHourlyActivitySummaryPage);
  [(WDHourlyActivitySummaryPage *)v5 setActivitySummaryItems:0];
  [(NSCache *)self->_hourlyActivitySummaryCache setObject:v5 forKey:progressCopy];
}

- (void)_hourlyActivityPageDataArrived:(id)arrived pageNumber:(id)number error:(id)error
{
  arrivedCopy = arrived;
  errorCopy = error;
  numberCopy = number;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (arrivedCopy)
  {
    v11 = objc_alloc_init(WDHourlyActivitySummaryPage);
    [(WDHourlyActivitySummaryPage *)v11 setActivitySummaryItems:arrivedCopy];
    [(NSCache *)self->_hourlyActivitySummaryCache setObject:v11 forKey:numberCopy];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HKActivitySummaryDataProvider _hourlyActivityPageDataArrived:errorCopy pageNumber:v12 error:?];
    }

    [(NSCache *)self->_hourlyActivitySummaryCache removeObjectForKey:numberCopy];
  }

  [(HKActivitySummaryDataProvider *)self _alertObserversDidUpdateValues];
}

- (void)_hourActivitySummariesForDateRange:(id)range pageHandler:(id)handler
{
  rangeCopy = range;
  handlerCopy = handler;
  minValue = [rangeCopy minValue];
  v25 = rangeCopy;
  maxValue = [rangeCopy maxValue];
  v24 = minValue;
  [minValue timeIntervalSinceReferenceDate];
  v10 = vcvtmd_s64_f64(v9);
  v23 = maxValue;
  [maxValue timeIntervalSinceReferenceDate];
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
    handlerCopy[2](handlerCopy, v21, v18, v20, v14, &v28);
    v22 = v28;
  }

  while (v22 != 1);
}

- (id)_buildHourlyActivitySummaryFromDate:(id)date calendar:(id)calendar moveQuantity:(id)quantity exerciseQuantity:(id)exerciseQuantity standQuantity:(id)standQuantity moveGoal:(id)goal exerciseGoal:(id)exerciseGoal standGoal:(id)self0
{
  selfCopy = self;
  quantityCopy = quantity;
  exerciseQuantityCopy = exerciseQuantity;
  standQuantityCopy = standQuantity;
  goalCopy = goal;
  exerciseGoalCopy = exerciseGoal;
  standGoalCopy = standGoal;
  calendarCopy = calendar;
  dateCopy = date;
  v22 = objc_alloc_init(HKHourlyActivitySummary);
  v23 = [calendarCopy components:62 fromDate:dateCopy];

  v24 = exerciseGoalCopy;
  v25 = exerciseQuantityCopy;
  [v23 setCalendar:calendarCopy];

  [(HKHourlyActivitySummary *)v22 setHourlyDateComponents:v23];
  if (exerciseQuantityCopy)
  {
    [(HKHourlyActivitySummary *)v22 setAppleExerciseTime:exerciseQuantityCopy];
    if (v24)
    {
      [(HKHourlyActivitySummary *)v22 setExerciseTimeGoal:v24];
    }
  }

  v26 = selfCopy;
  v27 = standGoalCopy;
  v28 = quantityCopy;
  if (quantityCopy)
  {
    if (selfCopy->_activityMoveMode != 2)
    {
      [(HKHourlyActivitySummary *)v22 setActiveEnergyBurned:quantityCopy];
      if (!goalCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    [(HKHourlyActivitySummary *)v22 setAppleMoveTime:quantityCopy];
  }

  if (!goalCopy)
  {
LABEL_12:
    if (!standQuantityCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_10:
  if (selfCopy->_activityMoveMode == 2)
  {
    [(HKHourlyActivitySummary *)v22 setAppleMoveTimeGoal:goalCopy];
    goto LABEL_12;
  }

  [(HKHourlyActivitySummary *)v22 setActiveEnergyBurnedGoal:goalCopy];
  if (!standQuantityCopy)
  {
    goto LABEL_18;
  }

LABEL_15:
  [(HKHourlyActivitySummary *)v22 setAppleStandHours:standQuantityCopy, selfCopy];
  if (standGoalCopy)
  {
    [(HKHourlyActivitySummary *)v22 setStandHoursGoal:standGoalCopy];
  }

  else
  {
    v29 = v25;
    v30 = v24;
    v31 = MEMORY[0x1E696C348];
    countUnit = [MEMORY[0x1E696C510] countUnit];
    v33 = [v31 quantityWithUnit:countUnit doubleValue:1.0];
    [(HKHourlyActivitySummary *)v22 setStandHoursGoal:v33];

    v24 = v30;
    v25 = v29;

    v27 = 0;
  }

LABEL_18:
  [(HKHourlyActivitySummary *)v22 setActivityMoveMode:v26->_activityMoveMode, selfCopy];

  return v22;
}

- (BOOL)_sampleDate:(id)date withinHourBeforeDate:(id)beforeDate
{
  dateCopy = date;
  [beforeDate timeIntervalSinceReferenceDate];
  v7 = v6;
  [dateCopy timeIntervalSinceReferenceDate];
  v9 = v8;

  return v7 - v9 < *MEMORY[0x1E696B518] && v7 - v9 >= 0.0;
}

- (id)_hourlySummariesFromStartDate:(id)date endDate:(id)endDate calendar:(id)calendar activeEnergyData:(id)data appleMoveTimeData:(id)timeData exerciseData:(id)exerciseData standData:(id)standData dayGoalData:(id)self0
{
  dateCopy = date;
  endDateCopy = endDate;
  calendarCopy = calendar;
  dataCopy = data;
  timeDataCopy = timeData;
  exerciseDataCopy = exerciseData;
  standDataCopy = standData;
  goalDataCopy = goalData;
  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v67 setHour:1];
  v21 = dateCopy;
  countUnit = [MEMORY[0x1E696C510] countUnit];
  v72 = calendarCopy;
  v73 = goalDataCopy;
  if ([goalDataCopy count] < 2)
  {
    v75 = 0;
  }

  else
  {
    v22 = [goalDataCopy objectAtIndexedSubscript:1];
    v23 = [v22 dateComponentsForCalendar:calendarCopy];

    v75 = [calendarCopy dateFromComponents:v23];
  }

  v60 = timeDataCopy;
  v61 = dataCopy;
  if (self->_activityMoveMode == 2)
  {
    v24 = timeDataCopy;
  }

  else
  {
    v24 = dataCopy;
  }

  v25 = v24;
  v26 = standDataCopy;
  v59 = v21;
  if ([v21 hk_isBeforeOrEqualToDate:endDateCopy])
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
          quantityValue = [v34 quantityValue];

          v76 = v31 + 1;
          goto LABEL_15;
        }

        v76 = v31;
      }

      quantityValue = 0;
LABEL_15:
      if (v70 >= [exerciseDataCopy count])
      {
        quantityValue2 = 0;
      }

      else
      {
        v36 = [exerciseDataCopy objectAtIndexedSubscript:v70];
        startDate = [v36 startDate];
        v38 = [startDate isEqual:v29];

        if (v38)
        {
          v39 = [exerciseDataCopy objectAtIndexedSubscript:v70];
          quantityValue2 = [v39 quantityValue];

          ++v70;
        }

        else
        {
          quantityValue2 = 0;
        }

        v26 = standDataCopy;
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

          v46 = [MEMORY[0x1E696C348] quantityWithUnit:countUnit doubleValue:v45];
          ++v69;
        }

        else
        {
          v46 = 0;
        }
      }

      v47 = exerciseDataCopy;
      if (v28 >= [v73 count])
      {
        v48 = 0;
        if (quantityValue)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v48 = [v73 objectAtIndexedSubscript:v28];
        if (quantityValue)
        {
          goto LABEL_36;
        }
      }

      if (quantityValue2 || v46)
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
            exerciseTimeGoal = [v48 exerciseTimeGoal];
            standHoursGoal = [v48 standHoursGoal];
            v50 = v62;
          }

          else
          {
            standHoursGoal = 0;
            v50 = 0;
            exerciseTimeGoal = 0;
            v52 = v72;
          }

          v53 = [(HKActivitySummaryDataProvider *)self _buildHourlyActivitySummaryFromDate:v29 calendar:v52 moveQuantity:quantityValue exerciseQuantity:quantityValue2 standQuantity:v46 moveGoal:v50 exerciseGoal:exerciseTimeGoal standGoal:standHoursGoal];
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

      exerciseDataCopy = v47;
      v26 = standDataCopy;
      v25 = v66;
      v27 = v76;
    }

    while (([v21 hk_isBeforeOrEqualToDate:endDateCopy] & 1) != 0);
  }

  v57 = v64;

  return v64;
}

- (void)_hourlyActivityDataForStartDate:(id)date endDate:(id)endDate healthStore:(id)store calendar:(id)calendar handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  storeCopy = store;
  calendarCopy = calendar;
  handlerCopy = handler;
  v17 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v17 setHour:1];
  objc_initWeak(&location, self);
  v18 = objc_alloc(MEMORY[0x1E696C5E0]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __102__HKActivitySummaryDataProvider__hourlyActivityDataForStartDate_endDate_healthStore_calendar_handler___block_invoke;
  v25[3] = &unk_1E81BA0D0;
  v19 = calendarCopy;
  v26 = v19;
  v20 = dateCopy;
  v27 = v20;
  v21 = endDateCopy;
  v28 = v21;
  objc_copyWeak(&v31, &location);
  v22 = handlerCopy;
  v30 = v22;
  v23 = storeCopy;
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

- (id)_predicateForStartDate:(id)date endDate:(id)endDate calendar:(id)calendar
{
  calendarCopy = calendar;
  endDateCopy = endDate;
  v9 = [calendarCopy hk_activitySummaryDateComponentsFromDate:date];
  v10 = [calendarCopy hk_activitySummaryDateComponentsFromDate:endDateCopy];

  v11 = [MEMORY[0x1E696C378] predicateForActivitySummariesBetweenStartDateComponents:v9 endDateComponents:v10];

  return v11;
}

- (id)_predicateForStartDate:(id)date endDate:(id)endDate calendar:(id)calendar activityMoveMode:(int64_t)mode
{
  v26[2] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  endDateCopy = endDate;
  v11 = [calendarCopy hk_activitySummaryDateComponentsFromDate:date];
  v12 = [calendarCopy hk_activitySummaryDateComponentsFromDate:endDateCopy];

  v13 = [MEMORY[0x1E696C378] predicateForActivitySummariesBetweenStartDateComponents:v11 endDateComponents:v12];
  if (mode == 2)
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