@interface HKSampleTypeDateRangeController
- (HKSampleTypeDateRangeController)initWithHealthStore:(id)store;
- (id)_dateRangeSampleTypeForSampleType:(id)type;
- (id)dateRangeForSampleType:(id)type;
- (void)_alertObserversDidUpdateDateRanges;
- (void)_applicationMovingToForeground:(id)foreground;
- (void)_beginUpdates;
- (void)_resultsDidUpdate:(id)update;
- (void)_updateHandlerDidReceiveError:(id)error;
- (void)addObserver:(id)observer;
- (void)dealloc;
@end

@implementation HKSampleTypeDateRangeController

- (void)_beginUpdates
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E696C620]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__HKSampleTypeDateRangeController__beginUpdates__block_invoke;
  v10 = &unk_1E81B80E8;
  objc_copyWeak(&v11, &location);
  v4 = [v3 initWithDateIntervalHandler:&v7];
  dateRangeQuery = self->_dateRangeQuery;
  self->_dateRangeQuery = v4;

  v6 = [(HKSampleTypeDateRangeController *)self name:v7];
  [(_HKDateRangeQuery *)self->_dateRangeQuery setDebugIdentifier:v6];

  [(HKHealthStore *)self->_healthStore executeQuery:self->_dateRangeQuery];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __48__HKSampleTypeDateRangeController__beginUpdates__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKSampleTypeDateRangeController__beginUpdates__block_invoke_2;
  block[3] = &unk_1E81B80C0;
  v11 = v7;
  v8 = v7;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __48__HKSampleTypeDateRangeController__beginUpdates__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v2)
  {
    [WeakRetained _updateHandlerDidReceiveError:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _resultsDidUpdate:*(a1 + 40)];
  }
}

- (void)_alertObserversDidUpdateDateRanges
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [*(self + 24) count];
  v5 = 134218240;
  selfCopy = self;
  v7 = 2048;
  v8 = v4;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "HKSampleTypeDateRangeController(%p): ChartDataUpdate: Alerting %ld observers of new date ranges", &v5, 0x16u);
}

- (HKSampleTypeDateRangeController)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HKSampleTypeDateRangeController;
  v6 = [(HKSampleTypeDateRangeController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    *&v7->_applicationIsInForeground = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__applicationMovingToForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__applicationMovingToBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    [(HKSampleTypeDateRangeController *)v7 _beginUpdates];
  }

  return v7;
}

- (void)dealloc
{
  [(HKHealthStore *)self->_healthStore stopQuery:self->_dateRangeQuery];
  v3.receiver = self;
  v3.super_class = HKSampleTypeDateRangeController;
  [(HKSampleTypeDateRangeController *)&v3 dealloc];
}

- (id)dateRangeForSampleType:(id)type
{
  v4 = [(HKSampleTypeDateRangeController *)self _dateRangeSampleTypeForSampleType:type];
  v5 = [(NSDictionary *)self->_dateRangesBySampleType objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(HKValueRange);
  }

  v8 = v7;

  return v8;
}

- (id)_dateRangeSampleTypeForSampleType:(id)type
{
  typeCopy = type;
  identifier = [typeCopy identifier];
  v5 = *MEMORY[0x1E696C6A8];

  if (identifier == v5 || ([typeCopy identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = *MEMORY[0x1E696C6B0], v6, v6 == v7))
  {
    v8 = [MEMORY[0x1E696BF90] categoryTypeForIdentifier:*MEMORY[0x1E696B698]];
  }

  else
  {
    v8 = typeCopy;
  }

  v9 = v8;

  return v9;
}

- (void)_applicationMovingToForeground:(id)foreground
{
  self->_applicationIsInForeground = 1;
  if (self->_lastQuerySufferedError)
  {
    [(HKSampleTypeDateRangeController *)self _beginUpdates];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  [(NSHashTable *)self->_observers addObject:observerCopy];
  if (self->_dateRangesBySampleType)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__HKSampleTypeDateRangeController_addObserver___block_invoke;
    v5[3] = &unk_1E81B5AD0;
    v5[4] = self;
    v6 = observerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_resultsDidUpdate:(id)update
{
  self->_lastQuerySufferedError = 0;
  v4 = MEMORY[0x1E695DF90];
  updateCopy = update;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__HKSampleTypeDateRangeController__resultsDidUpdate___block_invoke;
  v10[3] = &unk_1E81B8110;
  v7 = v6;
  v11 = v7;
  [updateCopy enumerateKeysAndObjectsUsingBlock:v10];

  dateRangesBySampleType = self->_dateRangesBySampleType;
  self->_dateRangesBySampleType = v7;
  v9 = v7;

  [(HKSampleTypeDateRangeController *)self _alertObserversDidUpdateDateRanges];
}

void __53__HKSampleTypeDateRangeController__resultsDidUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = [v5 startDate];
  v7 = [v5 endDate];

  v8 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v7];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

- (void)_updateHandlerDidReceiveError:(id)error
{
  errorCopy = error;
  self->_lastQuerySufferedError = 1;
  [(HKHealthStore *)self->_healthStore stopQuery:self->_dateRangeQuery];
  dateRangeQuery = self->_dateRangeQuery;
  self->_dateRangeQuery = 0;

  if (self->_applicationIsInForeground && (HKIsUnitTesting() & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HKSampleTypeDateRangeController *)self _updateHandlerDidReceiveError:errorCopy, v7];
    }

    v8 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HKSampleTypeDateRangeController__updateHandlerDidReceiveError___block_invoke;
    block[3] = &unk_1E81B55A8;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HKSampleTypeDateRangeController *)self _updateHandlerDidReceiveError:errorCopy, v6];
    }
  }
}

- (void)_updateHandlerDidReceiveError:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 138543874;
  v7 = objc_opt_class();
  v8 = 2048;
  v9 = 0x3FE0000000000000;
  v10 = 2114;
  v11 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Retrying after %lg seconds due to foreground date range error: %{public}@", &v6, 0x20u);
}

- (void)_updateHandlerDidReceiveError:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Ignoring background date range error: %{public}@", &v6, 0x16u);
}

@end