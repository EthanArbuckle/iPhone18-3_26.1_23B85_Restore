@interface HDHeartRateWidgetDataManager
- (BOOL)_isFirstSampleHeartRate:(id)rate;
- (BOOL)_isFirstSampleWorkout:(id)workout;
- (BOOL)_isSampleFromWatch:(id)watch;
- (HDHeartRateWidgetDataManager)initWithProfile:(id)profile;
- (HDHeartRateWidgetDataManager)initWithProfile:(id)profile latestWorkoutFetchOperation:(id)operation;
- (id)_latestWorkoutSample;
- (id)_watchSamplesFrom:(id)from;
- (id)latestWorkoutFrom:(id)from;
- (void)_latestWorkoutSample;
- (void)_reloadWidgetsWithReason:(int64_t)reason;
- (void)_reloadWorkoutRelevanceAndWidgetWithReason:(int64_t)reason for:(id)for;
- (void)_startObservingHeartRateSamples;
- (void)_startObservingWorkoutSamples;
- (void)_stopObservingHeartRateSamples;
- (void)_stopObservingWorkoutSamples;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation HDHeartRateWidgetDataManager

- (HDHeartRateWidgetDataManager)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277D10800];
  profileCopy = profile;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithProfile:profileCopy debugIdentifier:v8 delegate:self];

  v10 = [(HDHeartRateWidgetDataManager *)self initWithProfile:profileCopy latestWorkoutFetchOperation:v9];
  return v10;
}

- (HDHeartRateWidgetDataManager)initWithProfile:(id)profile latestWorkoutFetchOperation:(id)operation
{
  profileCopy = profile;
  operationCopy = operation;
  v27.receiver = self;
  v27.super_class = HDHeartRateWidgetDataManager;
  v8 = [(HDHeartRateWidgetDataManager *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    workoutType = [MEMORY[0x277CCD8D8] workoutType];
    workoutType = v9->_workoutType;
    v9->_workoutType = workoutType;

    v12 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v12;

    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v9 queue:v9->_queue];

    objc_initWeak(&location, v9);
    v16 = objc_alloc(MEMORY[0x277CCDD98]);
    v17 = v9->_queue;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __76__HDHeartRateWidgetDataManager_initWithProfile_latestWorkoutFetchOperation___block_invoke;
    v24 = &unk_2786609E0;
    objc_copyWeak(&v25, &location);
    v18 = [v16 initWithMode:0 clock:1 queue:v17 delay:&v21 block:30.0];
    reloadOperation = v9->_reloadOperation;
    v9->_reloadOperation = v18;

    objc_storeStrong(&v9->_latestWorkoutFetchOperation, operation);
    [(HDProtectedDataOperation *)v9->_latestWorkoutFetchOperation setDelegate:v9, v21, v22, v23, v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __76__HDHeartRateWidgetDataManager_initWithProfile_latestWorkoutFetchOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_reloadHRWidgets];
}

- (void)dealloc
{
  [(HDHeartRateWidgetDataManager *)self _stopObservingHeartRateSamples];
  [(HDHeartRateWidgetDataManager *)self _stopObservingWorkoutSamples];
  v3.receiver = self;
  v3.super_class = HDHeartRateWidgetDataManager;
  [(HDHeartRateWidgetDataManager *)&v3 dealloc];
}

- (void)_startObservingHeartRateSamples
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  v4 = [MEMORY[0x277CCD8D8] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  [dataManager addObserver:self forDataType:v4];
}

- (void)_stopObservingHeartRateSamples
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  v4 = [MEMORY[0x277CCD8D8] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  [dataManager removeObserver:self forDataType:v4];
}

- (void)_startObservingWorkoutSamples
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  [dataManager addObserver:self forDataType:self->_workoutType];
}

- (void)_stopObservingWorkoutSamples
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  [dataManager removeObserver:self forDataType:self->_workoutType];
}

- (void)daemonReady:(id)ready
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v5 = v12;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] daemonReady", buf, 0xCu);
  }

  [(HDHeartRateWidgetDataManager *)self _startObservingHeartRateSamples];
  [(HDHeartRateWidgetDataManager *)self _startObservingWorkoutSamples];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HDHeartRateWidgetDataManager_daemonReady___block_invoke;
  v10[3] = &unk_27865FD90;
  v10[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __44__HDHeartRateWidgetDataManager_daemonReady___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v14 = objc_opt_class();
    v4 = v14;
    _os_log_impl(&dword_229486000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] first unlock occurred", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  [v6 _reloadWidgetsWithReason:0];
  v7 = *(*v5 + 40);
  v12 = 0;
  v8 = [v7 requestWorkWithPriority:2 error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__HDHeartRateWidgetDataManager_daemonReady___block_invoke_cold_1(v5, v9, v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_latestWorkoutSample
{
  workoutType = [MEMORY[0x277CCD720] workoutType];
  v4 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [autoupdatingCurrentCalendar startOfDayForDate:date];

  v8 = objc_alloc(MEMORY[0x277CCA970]);
  date2 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 initWithStartDate:v7 endDate:date2];

  v11 = HDSampleEntityPredicateForDateInterval();
  v12 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v4 otherPredicate:v11];
  v13 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v20 = 0;
  v15 = [v13 mostRecentSampleWithType:workoutType profile:WeakRetained encodingOptions:0 predicate:v12 anchor:0 error:&v20];
  v16 = v20;

  if (v15 || !v16)
  {
    v18 = v15;
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(HDHeartRateWidgetDataManager *)v16 _latestWorkoutSample];
    }

    v18 = 0;
  }

  return v18;
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  completionCopy = completion;
  _latestWorkoutSample = [(HDHeartRateWidgetDataManager *)self _latestWorkoutSample];
  if (_latestWorkoutSample)
  {
    [(HDHeartRateWidgetDataManager *)self _reloadWorkoutRelevanceAndWidgetWithReason:0 for:_latestWorkoutSample];
  }

  completionCopy[2]();
}

- (void)_reloadWidgetsWithReason:(int64_t)reason
{
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HDHeartRateWidgetDataManager__reloadWidgetsWithReason___block_invoke;
  v7[3] = &unk_278660A08;
  v7[4] = self;
  v7[5] = reason;
  dispatch_async(queue, v7);
  didRequestHRWidgetReloadHandler = self->_didRequestHRWidgetReloadHandler;
  if (didRequestHRWidgetReloadHandler)
  {
    didRequestHRWidgetReloadHandler[2](didRequestHRWidgetReloadHandler, reason);
  }
}

- (void)_reloadWorkoutRelevanceAndWidgetWithReason:(int64_t)reason for:(id)for
{
  v31 = *MEMORY[0x277D85DE8];
  forCopy = for;
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = HDStringFromHeartRateWidgetDataManagerReloadReason(reason);
    *buf = 138543874;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = *&forCopy;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] _reloadWorkoutRelevanceAndWidgetWithReason reason %@ for %@", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  endDate = [forCopy endDate];
  [date timeIntervalSinceDate:endDate];
  v14 = v13;

  if (v14 >= *MEMORY[0x277D12F20])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = *MEMORY[0x277D12F20] - v14;
  }

  _HKInitializeLogging();
  v16 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = v17;
    v19 = HDStringFromHeartRateWidgetDataManagerReloadReason(reason);
    *buf = 138543874;
    v26 = v17;
    v27 = 2112;
    v28 = v19;
    v29 = 2048;
    v30 = v15;
    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] _reloadWorkoutRelevanceAndWidgetWithReason reason %@ delayInSeconds %lf", buf, 0x20u);
  }

  v20 = dispatch_time(0, (v15 * 1000000000.0));
  queue = self->_queue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__HDHeartRateWidgetDataManager__reloadWorkoutRelevanceAndWidgetWithReason_for___block_invoke;
  v24[3] = &unk_278660A08;
  v24[4] = self;
  v24[5] = reason;
  dispatch_after(v20, queue, v24);
  didRequestWorkoutWidgetReloadHandler = self->_didRequestWorkoutWidgetReloadHandler;
  if (didRequestWorkoutWidgetReloadHandler)
  {
    didRequestWorkoutWidgetReloadHandler[2](didRequestWorkoutWidgetReloadHandler, reason, forCopy, v15);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __79__HDHeartRateWidgetDataManager__reloadWorkoutRelevanceAndWidgetWithReason_for___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 24) = *(a1 + 40);
  _HKInitializeLogging();
  v2 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_229486000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] _reloadWorkoutRelevanceAndWidgetWithReason", &v7, 0xCu);
  }

  [*(a1 + 32) _queue_reloadRelevances];
  result = [*(a1 + 32) _queue_reloadWorkoutHRWidgets];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v13 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v7 = v12;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] samplesAdded", &v11, 0xCu);
  }

  v8 = [(HDHeartRateWidgetDataManager *)self _watchSamplesFrom:addedCopy];
  if ([v8 count])
  {
    if ([(HDHeartRateWidgetDataManager *)self _isFirstSampleHeartRate:v8])
    {
      [(HDHeartRateWidgetDataManager *)self _reloadWidgetsWithReason:1];
    }

    else
    {
      v9 = [(HDHeartRateWidgetDataManager *)self latestWorkoutFrom:addedCopy];
      [(HDHeartRateWidgetDataManager *)self _reloadWorkoutRelevanceAndWidgetWithReason:2 for:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)latestWorkoutFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = fromCopy;
    v5 = v14;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] latestWorkoutFrom in samples %@", &v13, 0x16u);
  }

  v6 = [fromCopy sortedArrayUsingComparator:&__block_literal_global_10];
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v6;
    v9 = v8;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] latestWorkoutFrom sortedSamples %@", &v13, 0x16u);
  }

  lastObject = [v6 lastObject];

  v11 = *MEMORY[0x277D85DE8];

  return lastObject;
}

uint64_t __50__HDHeartRateWidgetDataManager_latestWorkoutFrom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endDate];
  v6 = [v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_watchSamplesFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = fromCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(HDHeartRateWidgetDataManager *)self _isSampleFromWatch:v11, v14])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_isSampleFromWatch:(id)watch
{
  _source = [watch _source];
  _isAppleWatch = [_source _isAppleWatch];

  return _isAppleWatch;
}

- (BOOL)_isFirstSampleHeartRate:(id)rate
{
  firstObject = [rate firstObject];
  sampleType = [firstObject sampleType];
  identifier = [sampleType identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x277CCCB90]];

  return v6;
}

- (BOOL)_isFirstSampleWorkout:(id)workout
{
  firstObject = [workout firstObject];
  sampleType = [firstObject sampleType];
  identifier = [sampleType identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x277CCCF78]];

  return v6;
}

void __44__HDHeartRateWidgetDataManager_daemonReady___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = objc_opt_class();
  v7 = v6;
  v8 = [a2 description];
  v10 = 138543618;
  v11 = v6;
  v12 = 2112;
  v13 = v8;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] error requesting maintenance work for fetching latest workout on healthd ready: %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_latestWorkoutSample
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "Error retrieving most recent workout : %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end