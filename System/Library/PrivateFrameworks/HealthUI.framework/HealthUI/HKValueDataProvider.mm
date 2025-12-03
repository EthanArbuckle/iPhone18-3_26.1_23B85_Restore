@interface HKValueDataProvider
- (BOOL)_requiresValueFetch;
- (BOOL)hasLoadedData;
- (HKValueDataProvider)initWithHealthStore:(id)store updateController:(id)controller dateCache:(id)cache displayType:(id)type;
- (id)fetchOperationWithCompletion:(id)completion;
- (id)value;
- (void)_alertObserversDidUpdateValues;
- (void)_fetchValueWithRetryCount:(int64_t)count;
- (void)_handleUnitPreferencesDidChangeNotification:(id)notification;
- (void)_refreshValueIfNecessary;
- (void)_transitionToFetchFailure;
- (void)_updateValueWithValue:(id)value;
- (void)dealloc;
- (void)invalidateValue;
- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error;
@end

@implementation HKValueDataProvider

- (HKValueDataProvider)initWithHealthStore:(id)store updateController:(id)controller dateCache:(id)cache displayType:(id)type
{
  storeCopy = store;
  controllerCopy = controller;
  cacheCopy = cache;
  typeCopy = type;
  v22.receiver = self;
  v22.super_class = HKValueDataProvider;
  v15 = [(HKValueDataProvider *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_healthStore, store);
    objc_storeStrong(&v16->_dateCache, cache);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v16->_observers;
    v16->_observers = weakObjectsHashTable;

    if (([typeCopy isActivitySummary] & 1) == 0)
    {
      sampleType = [typeCopy sampleType];
      [controllerCopy addObserver:v16 forType:sampleType];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__handleUnitPreferencesDidChangeNotification_ name:*MEMORY[0x1E696BE70] object:0];

    objc_storeStrong(&v16->_displayType, type);
    v16->_resultsLoaded = 0;
    [(HKDateCache *)v16->_dateCache registerObserver:v16];
  }

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696BE70] object:0];

  v4.receiver = self;
  v4.super_class = HKValueDataProvider;
  [(HKValueDataProvider *)&v4 dealloc];
}

- (id)value
{
  [(HKValueDataProvider *)self _refreshValueIfNecessary];
  value = self->_value;

  return value;
}

- (BOOL)hasLoadedData
{
  value = [(HKValueDataProvider *)self value];
  if (value)
  {
    resultsLoaded = 1;
  }

  else
  {
    resultsLoaded = self->_resultsLoaded;
  }

  return resultsLoaded;
}

- (void)invalidateValue
{
  self->_resultsLoaded = 0;
  if ([(HKValueDataProvider *)self _currentlyFetchingValue])
  {
    [(HKValueDataProvider *)self _setNeedsReFetchValue];
  }

  [(HKValueDataProvider *)self _alertObserversDidUpdateValues];
}

- (BOOL)_requiresValueFetch
{
  if (self->_resultsLoaded)
  {
    return 0;
  }

  else
  {
    return ![(HKValueDataProvider *)self _currentlyFetchingValue:v2];
  }
}

- (void)_refreshValueIfNecessary
{
  if ([(HKValueDataProvider *)self _requiresValueFetch])
  {

    [(HKValueDataProvider *)self _fetchValueWithRetryCount:3];
  }
}

- (void)_fetchValueWithRetryCount:(int64_t)count
{
  if (count)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__HKValueDataProvider__fetchValueWithRetryCount___block_invoke;
    v7[3] = &unk_1E81B7500;
    v7[4] = self;
    v7[5] = count;
    v4 = [(HKValueDataProvider *)self fetchOperationWithCompletion:v7];
    outstandingFetchOperation = self->_outstandingFetchOperation;
    self->_outstandingFetchOperation = v4;

    [(HKFetchOperation *)self->_outstandingFetchOperation setHighPriority:1];
    v6 = +[HKOutstandingFetchOperationManager sharedOperationManager];
    [v6 addFetchOperation:self->_outstandingFetchOperation];
  }

  else
  {

    [(HKValueDataProvider *)self _transitionToFetchFailure];
  }
}

void __49__HKValueDataProvider__fetchValueWithRetryCount___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__HKValueDataProvider__fetchValueWithRetryCount___block_invoke_2;
  v11[3] = &unk_1E81B74D8;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v7;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __49__HKValueDataProvider__fetchValueWithRetryCount___block_invoke_2(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(v2 + 24);
  *(v2 + 24) = 0;

  if (*(a1 + 40))
  {
    _HKInitializeLogging();
    v5 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__HKValueDataProvider__fetchValueWithRetryCount___block_invoke_2_cold_1(v3, (a1 + 40), v5);
    }

    return [*(a1 + 32) _fetchValueWithRetryCount:*(a1 + 56) - 1];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);

    return [v7 _updateValueWithValue:v8];
  }
}

- (void)_transitionToFetchFailure
{
  v10 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    displayType = [(HKValueDataProvider *)self displayType];
    v6 = 138543618;
    selfCopy = self;
    v8 = 2112;
    v9 = displayType;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Reached max retry count for %@. Aborting", &v6, 0x16u);
  }

  outstandingFetchOperation = self->_outstandingFetchOperation;
  self->_outstandingFetchOperation = 0;

  self->_resultsLoaded = 0;
}

- (void)_updateValueWithValue:(id)value
{
  objc_storeStrong(&self->_value, value);
  self->_resultsLoaded = 1;
  if (self->_needsToReFetchValue)
  {
    *&self->_resultsLoaded = 0;
    [(HKValueDataProvider *)self _fetchValueWithRetryCount:3];
  }

  [(HKValueDataProvider *)self didUpdateValue];

  [(HKValueDataProvider *)self _alertObserversDidUpdateValues];
}

- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error
{
  errorCopy = error;
  removedCopy = removed;
  if ([added count] || objc_msgSend(removedCopy, "count") || errorCopy)
  {
    [(HKValueDataProvider *)self invalidateValue];
  }
}

- (void)_alertObserversDidUpdateValues
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) dataProviderDidUpdateValues:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_handleUnitPreferencesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__HKValueDataProvider__handleUnitPreferencesDidChangeNotification___block_invoke;
  v6[3] = &unk_1E81B5AD0;
  v7 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __67__HKValueDataProvider__handleUnitPreferencesDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v7 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696BE68]];

  v3 = [*(a1 + 40) displayType];
  v4 = [v3 sampleType];

  if (v4)
  {
    v5 = [v7 containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  if ([v7 count])
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    [*(a1 + 40) unitPreferencesDidUpdate];
  }
}

- (id)fetchOperationWithCompletion:(id)completion
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

void __49__HKValueDataProvider__fetchValueWithRetryCount___block_invoke_2_cold_1(id *a1, uint64_t *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = [*a1 displayType];
  v7 = *a2;
  v8 = 138543874;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Received error fetching data for %{public}@: %{public}@", &v8, 0x20u);
}

@end