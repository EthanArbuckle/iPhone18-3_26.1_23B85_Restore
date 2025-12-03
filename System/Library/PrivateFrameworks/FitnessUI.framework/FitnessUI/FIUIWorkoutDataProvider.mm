@interface FIUIWorkoutDataProvider
- (BOOL)hasWorkouts;
- (FIUIWorkoutDataProvider)initWithHealthStore:(id)store shouldSortAscending:(BOOL)ascending;
- (id)allWorkouts;
- (id)workoutsForDay:(id)day;
- (void)_commonInit;
- (void)_fetchAllWorkoutsFromDate:(id)date;
- (void)_handleAddedSamples:(id)samples;
- (void)_handleRemovedObjects:(id)objects;
- (void)_retryQuery:(id)query;
- (void)_retryQueryOnDidBecomeActiveWithDate:(id)date;
- (void)_runUpdateHandlers;
- (void)_timeZoneDidChange:(id)change;
- (void)addUpdateHandler:(id)handler;
- (void)dealloc;
- (void)startFetchingFromDate:(id)date;
- (void)stopFetching;
@end

@implementation FIUIWorkoutDataProvider

- (FIUIWorkoutDataProvider)initWithHealthStore:(id)store shouldSortAscending:(BOOL)ascending
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = FIUIWorkoutDataProvider;
  v8 = [(FIUIWorkoutDataProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, store);
    v9->_shouldSortAscending = ascending;
    [(FIUIWorkoutDataProvider *)v9 _commonInit];
  }

  return v9;
}

- (void)_commonInit
{
  if (!self->_healthStore)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696C1C0]);
    healthStore = self->_healthStore;
    self->_healthStore = v3;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  updateHandlers = self->_updateHandlers;
  self->_updateHandlers = v5;

  v7 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  gregorianCalendar = self->_gregorianCalendar;
  self->_gregorianCalendar = v7;

  v9 = self->_gregorianCalendar;
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [(NSCalendar *)v9 setTimeZone:systemTimeZone];

  autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  currentCalendar = self->_currentCalendar;
  self->_currentCalendar = autoupdatingCurrentCalendar;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__timeZoneDidChange_ name:*MEMORY[0x1E695DA68] object:0];

  self->_lock._os_unfair_lock_opaque = 0;
}

- (void)_timeZoneDidChange:(id)change
{
  gregorianCalendar = self->_gregorianCalendar;
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [(NSCalendar *)gregorianCalendar setTimeZone:systemTimeZone];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FIUIWorkoutDataProvider;
  [(FIUIWorkoutDataProvider *)&v4 dealloc];
}

- (BOOL)hasWorkouts
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_workoutsByDay count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)workoutsForDay:(id)day
{
  v4 = _HKCacheIndexFromDateComponents();
  os_unfair_lock_lock(&self->_lock);
  workoutsByDay = self->_workoutsByDay;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  v7 = [(NSMutableDictionary *)workoutsByDay objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);
  allSamples = [v7 allSamples];

  return allSamples;
}

- (id)allWorkouts
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_workoutsByDay, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)self->_workoutsByDay allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_workoutsByDay objectForKeyedSubscript:v9];
        allSamples = [v10 allSamples];
        [v3 setObject:allSamples forKey:v9];
      }

      v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = [v3 copy];

  return v12;
}

- (void)startFetchingFromDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  workoutsByDay = self->_workoutsByDay;
  self->_workoutsByDay = v4;

  os_unfair_lock_unlock(&self->_lock);
  [(FIUIWorkoutDataProvider *)self stopFetching];
  [(FIUIWorkoutDataProvider *)self _fetchAllWorkoutsFromDate:dateCopy];
}

- (void)stopFetching
{
  if (self->_currentWorkoutAnchoredObjectQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
  }
}

- (void)_fetchAllWorkoutsFromDate:(id)date
{
  dateCopy = date;
  date = [MEMORY[0x1E695DF00] date];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke;
  aBlock[3] = &unk_1E878C8F8;
  objc_copyWeak(&v22, &location);
  v6 = dateCopy;
  v20 = v6;
  v7 = date;
  v21 = v7;
  v8 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_305;
  v16[3] = &unk_1E878C920;
  objc_copyWeak(&v18, &location);
  v9 = v6;
  v17 = v9;
  v10 = _Block_copy(v16);
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"endDate >= %@", v9];
  v12 = objc_alloc(MEMORY[0x1E696BF08]);
  workoutType = [MEMORY[0x1E696C2E0] workoutType];
  v14 = [v12 initWithType:workoutType predicate:v11 anchor:0 limit:0 resultsHandler:v8];
  currentWorkoutAnchoredObjectQuery = self->_currentWorkoutAnchoredObjectQuery;
  self->_currentWorkoutAnchoredObjectQuery = v14;

  [(HKAnchoredObjectQuery *)self->_currentWorkoutAnchoredObjectQuery setUpdateHandler:v10];
  [(HKHealthStore *)self->_healthStore executeQuery:self->_currentWorkoutAnchoredObjectQuery];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke(id *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_2;
  block[3] = &unk_1E878C8D0;
  objc_copyWeak(&v17, a1 + 6);
  v13 = v9;
  v14 = a1[4];
  v15 = v8;
  v16 = a1[5];
  v10 = v8;
  v11 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v17);
}

void __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    _HKInitializeLogging();
    v4 = *MEMORY[0x1E696B928];
    v5 = *MEMORY[0x1E696B928];
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_2_cold_1((a1 + 32), v4);
      }

      [WeakRetained _retryQueryOnDidBecomeActiveWithDate:*(a1 + 40)];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = MEMORY[0x1E696AD98];
        v7 = *(a1 + 48);
        v8 = v4;
        v9 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
        v10 = MEMORY[0x1E696AD98];
        v11 = [MEMORY[0x1E695DF00] date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        v12 = [v10 numberWithDouble:?];
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_1E5D0F000, v8, OS_LOG_TYPE_DEFAULT, "FIUIWorkoutDataProvider - fetched %@ workouts in %@ seconds", &v13, 0x16u);
      }

      if ([*(a1 + 48) count])
      {
        [WeakRetained _handleAddedSamples:*(a1 + 48)];
        [WeakRetained _runUpdateHandlers];
      }
    }
  }
}

void __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_305(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  _HKInitializeLogging();
  v13 = *MEMORY[0x1E696B928];
  v14 = *MEMORY[0x1E696B928];
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_305_cold_1(v11, v13);
    }

    [WeakRetained _retryQueryOnDidBecomeActiveWithDate:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = v13;
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_1E5D0F000, v16, OS_LOG_TYPE_DEFAULT, "FIUIWorkoutDataProvider - fetched %@ updated workouts", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_306;
    block[3] = &unk_1E878C008;
    block[4] = WeakRetained;
    v19 = v10;
    v20 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_306(uint64_t result)
{
  if (!*(result + 32))
  {
    return result;
  }

  v1 = result;
  if ([*(result + 40) count])
  {
    [*(v1 + 32) _handleRemovedObjects:*(v1 + 40)];
    if (![*(v1 + 48) count])
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = [*(v1 + 48) count];
    if (!result)
    {
      return result;
    }
  }

  [*(v1 + 32) _handleAddedSamples:*(v1 + 48)];
LABEL_7:
  _HKInitializeLogging();
  v2 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1E5D0F000, v2, OS_LOG_TYPE_DEFAULT, "FIUIWorkoutDataProvider - workouts did update. Running update handlers", v3, 2u);
  }

  return [*(v1 + 32) _runUpdateHandlers];
}

- (void)addUpdateHandler:(id)handler
{
  updateHandlers = self->_updateHandlers;
  v4 = _Block_copy(handler);
  [(NSMutableArray *)updateHandlers addObject:v4];
}

- (void)_runUpdateHandlers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_updateHandlers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_handleAddedSamples:(id)samples
{
  v30 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  os_unfair_lock_lock(&self->_lock);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = samplesCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        sourceRevision = [v9 sourceRevision];
        productType = [sourceRevision productType];
        [v9 _setIsWatchWorkout:{objc_msgSend(productType, "containsString:", @"Watch"}];

        gregorianCalendar = self->_gregorianCalendar;
        endDate = [v9 endDate];
        v14 = [(NSCalendar *)gregorianCalendar hk_activitySummaryDateComponentsFromDate:endDate];

        v15 = _HKCacheIndexFromDateComponents();
        workoutsByDay = self->_workoutsByDay;
        v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v15];
        v18 = [(NSMutableDictionary *)workoutsByDay objectForKeyedSubscript:v17];

        if (!v18)
        {
          v18 = objc_alloc_init(MEMORY[0x1E696C498]);
          v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:self->_shouldSortAscending];
          [v18 setSortDescriptor:v19];

          v20 = self->_workoutsByDay;
          v21 = [MEMORY[0x1E696AD98] numberWithLongLong:v15];
          [(NSMutableDictionary *)v20 setObject:v18 forKey:v21];
        }

        v28 = v9;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
        [v18 insertSamples:v22];
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleRemovedObjects:(id)objects
{
  v27 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        uUID = [*(*(&v21 + 1) + 8 * v10) UUID];
        [v5 addObject:uUID];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_workoutsByDay allValues];
  v13 = [allValues countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v17 + 1) + 8 * v16++) removeSamplesWithUUIDs:v5];
      }

      while (v14 != v16);
      v14 = [allValues countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_retryQueryOnDidBecomeActiveWithDate:(id)date
{
  dateCopy = date;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E5D0F000, v5, OS_LOG_TYPE_DEFAULT, "FIUIWorkoutDataProvider - will retry query on did become active", v9, 2u);
  }

  retryDate = self->_retryDate;
  self->_retryDate = dateCopy;
  v7 = dateCopy;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__retryQuery_ name:*MEMORY[0x1E69DDAB0] object:0];
}

- (void)_retryQuery:(id)query
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E5D0F000, v4, OS_LOG_TYPE_DEFAULT, "FIUIWorkoutDataProvider - did become active; retrying query", v6, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAB0] object:0];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_workoutsByDay removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  [(FIUIWorkoutDataProvider *)self _fetchAllWorkoutsFromDate:self->_retryDate];
}

void __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1E5D0F000, a2, OS_LOG_TYPE_ERROR, "Error fetching workouts: %@", &v3, 0xCu);
}

void __53__FIUIWorkoutDataProvider__fetchAllWorkoutsFromDate___block_invoke_305_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E5D0F000, a2, OS_LOG_TYPE_ERROR, "Error updating workouts: %@", &v2, 0xCu);
}

@end