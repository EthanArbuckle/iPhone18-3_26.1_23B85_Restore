@interface HDAnalyticsDailyEventManager
- (HDAnalyticsDailyEventManager)initWithProfile:(id)profile eventSubmissionManager:(id)manager logCategory:(id)category eventConstructor:(id)constructor;
- (void)_submitAnalyticsEventWithCompletion:(id)completion;
- (void)_unitTest_setObservationReadyCompletion:(id)completion;
- (void)daemonReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
@end

@implementation HDAnalyticsDailyEventManager

- (HDAnalyticsDailyEventManager)initWithProfile:(id)profile eventSubmissionManager:(id)manager logCategory:(id)category eventConstructor:(id)constructor
{
  profileCopy = profile;
  managerCopy = manager;
  categoryCopy = category;
  constructorCopy = constructor;
  v23.receiver = self;
  v23.super_class = HDAnalyticsDailyEventManager;
  v14 = [(HDAnalyticsDailyEventManager *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_eventSubmissionManager, manager);
    objc_storeStrong(&v15->_logCategory, category);
    v16 = _Block_copy(constructorCopy);
    eventConstructor = v15->_eventConstructor;
    v15->_eventConstructor = v16;

    v18 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v18;

    v15->_queue_isObserving = 0;
    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v15 queue:v15->_queue];
  }

  return v15;
}

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator addObserver:self queue:self->_queue];

  observationReadyCompletion = self->_observationReadyCompletion;
  if (observationReadyCompletion)
  {
    observationReadyCompletion[2]();
    v8 = self->_observationReadyCompletion;
    self->_observationReadyCompletion = 0;
  }

  self->_queue_isObserving = 1;
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  queue = self->_queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queue);
  [(HDAnalyticsDailyEventManager *)self _submitAnalyticsEventWithCompletion:completionCopy];
}

- (void)_submitAnalyticsEventWithCompletion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  if (WeakRetained)
  {
    v6 = (*(self->_eventConstructor + 2))();
    _HKInitializeLogging();
    logCategory = self->_logCategory;
    v8 = os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (v8)
      {
        v20 = logCategory;
        *buf = 138543362;
        v36 = objc_opt_class();
        v21 = v36;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] No analytics event provided from trigger request.", buf, 0xCu);
      }

      v15 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"No analytics event provided"];
      completionCopy[2](completionCopy, 0, 1, v15);
      goto LABEL_22;
    }

    if (v8)
    {
      v9 = logCategory;
      v10 = objc_opt_class();
      v11 = v10;
      eventName = [v6 eventName];
      *buf = 138543618;
      v36 = v10;
      v37 = 2114;
      v38 = eventName;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Received daily analytics trigger, submitting.", buf, 0x16u);
    }

    eventSubmissionManager = self->_eventSubmissionManager;
    v34 = 0;
    v14 = [(HKAnalyticsEventSubmissionManager *)eventSubmissionManager submitEvent:v6 error:&v34];
    v15 = v34;
    _HKInitializeLogging();
    v16 = self->_logCategory;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v30 = v16;
        v31 = objc_opt_class();
        v32 = v31;
        eventName2 = [v6 eventName];
        *buf = 138543874;
        v36 = v31;
        v37 = 2114;
        v38 = eventName2;
        v39 = 2114;
        v40 = v15;
        _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Metric submission failed with error: %{public}@", buf, 0x20u);
      }

      completionCopy[2](completionCopy, 0, 2, v15);
      goto LABEL_22;
    }

    v22 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v22)
      {
        v23 = v16;
        v24 = objc_opt_class();
        v25 = v24;
        eventName3 = [v6 eventName];
        *buf = 138543618;
        v36 = v24;
        v37 = 2114;
        v38 = eventName3;
        v27 = "[%{public}@:%{public}@] Event submitted";
LABEL_20:
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, v27, buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = v16;
      v28 = objc_opt_class();
      v25 = v28;
      eventName3 = [v6 eventName];
      *buf = 138543618;
      v36 = v28;
      v37 = 2114;
      v38 = eventName3;
      v27 = "[%{public}@:%{public}@] Event not submitted but no error";
      goto LABEL_20;
    }

    completionCopy[2](completionCopy, 0, 0, 0);
    v15 = 0;
LABEL_22:

    goto LABEL_23;
  }

  _HKInitializeLogging();
  v17 = self->_logCategory;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    *buf = 138543362;
    v36 = objc_opt_class();
    v19 = v36;
    _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] No profile available to construct event for trigger request.", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"No profile available"];
  completionCopy[2](completionCopy, 0, 1, v6);
LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_unitTest_setObservationReadyCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HDAnalyticsDailyEventManager__unitTest_setObservationReadyCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

uint64_t __72__HDAnalyticsDailyEventManager__unitTest_setObservationReadyCompletion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 32) == 1)
  {
    v4 = v2[2];

    return v4();
  }

  else
  {
    v6 = _Block_copy(v2);
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return MEMORY[0x2821F96F8](v6, v8);
  }
}

@end