@interface HKHRDatabaseAnalysisSchedulerImpl
- (BOOL)_enterStateIfPossible:(unint64_t)possible;
- (HKHRDatabaseAnalysisSchedulerDelegate)delegate;
- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)profile identifier:(id)identifier loggingCategory:(id)category maximumDelay:(double)delay retryDelay:(double)retryDelay breadcrumbManager:(id)manager;
- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)profile identifier:(id)identifier loggingCategory:(id)category maximumDelay:(double)delay retryDelay:(double)retryDelay breadcrumbManager:(id)manager gatedActivityFactory:(id)factory persistentStateDefaults:(id)self0 operation:(id)self1;
- (id)_activityCompletion;
- (id)_gatedActivity;
- (void)_maybeRetryLater;
- (void)_requestGatedActivityRunWithDelay:(double)delay;
- (void)_resetRetryCounter;
- (void)_runActivity:(id)activity withCompletion:(id)completion;
- (void)_setActivityCompletion:(id)completion;
- (void)daemonReady:(id)ready;
- (void)forceAnalysis;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)scheduleAnalysis;
@end

@implementation HKHRDatabaseAnalysisSchedulerImpl

- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)profile identifier:(id)identifier loggingCategory:(id)category maximumDelay:(double)delay retryDelay:(double)retryDelay breadcrumbManager:(id)manager
{
  managerCopy = manager;
  categoryCopy = category;
  identifierCopy = identifier;
  profileCopy = profile;
  v18 = [[HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl alloc] initWithIdentifier:identifierCopy loggingCategory:categoryCopy];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v20 = [objc_alloc(MEMORY[0x277D10800]) initWithProfile:profileCopy debugIdentifier:@"HKHRDatabaseAnalysisSchedulerOperation" delegate:self];
  v21 = [(HKHRDatabaseAnalysisSchedulerImpl *)self initWithProfile:profileCopy identifier:identifierCopy loggingCategory:categoryCopy maximumDelay:managerCopy retryDelay:v18 breadcrumbManager:standardUserDefaults gatedActivityFactory:delay persistentStateDefaults:retryDelay operation:v20];

  return v21;
}

- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)profile identifier:(id)identifier loggingCategory:(id)category maximumDelay:(double)delay retryDelay:(double)retryDelay breadcrumbManager:(id)manager gatedActivityFactory:(id)factory persistentStateDefaults:(id)self0 operation:(id)self1
{
  profileCopy = profile;
  identifierCopy = identifier;
  categoryCopy = category;
  managerCopy = manager;
  factoryCopy = factory;
  defaultsCopy = defaults;
  operationCopy = operation;
  v33.receiver = self;
  v33.super_class = HKHRDatabaseAnalysisSchedulerImpl;
  v23 = [(HKHRDatabaseAnalysisSchedulerImpl *)&v33 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_profile, profileCopy);
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    objc_storeStrong(&v24->_loggingCategory, category);
    v24->_maximumDelay = delay;
    v24->_retryDelay = retryDelay;
    objc_storeStrong(&v24->_breadcrumbManager, manager);
    objc_storeStrong(&v24->_gatedActivityFactory, factory);
    v24->_lock._os_unfair_lock_opaque = 0;
    v24->_state = 0;
    objc_storeStrong(&v24->_persistentStateDefaults, defaults);
    objc_storeStrong(&v24->_operation, operation);
    WeakRetained = objc_loadWeakRetained(&v24->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v24 queue:0];
  }

  return v24;
}

- (void)scheduleAnalysis
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = identifier;
    _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Told to schedule analysis", &v6, 0x16u);
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _requestGatedActivityRunWithDelay:self->_maximumDelay];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)forceAnalysis
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = identifier;
    _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Told to force analysis", buf, 0x16u);
  }

  _gatedActivity = [(HKHRDatabaseAnalysisSchedulerImpl *)self _gatedActivity];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HKHRDatabaseAnalysisSchedulerImpl_forceAnalysis__block_invoke;
  v7[3] = &unk_27865FFB8;
  v7[4] = self;
  [_gatedActivity runUngatedWithCompletion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __50__HKHRDatabaseAnalysisSchedulerImpl_forceAnalysis__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v10 = 138544130;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2050;
    v15 = a2;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity completed with result %{public}ld and error %{public}@", &v10, 0x2Au);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_gatedActivity
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_gatedActivity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setActivityCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x22AACDB50](completionCopy);

  lock_activityCompletion = self->_lock_activityCompletion;
  self->_lock_activityCompletion = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_activityCompletion
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x22AACDB50](self->_lock_activityCompletion);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x22AACDB50](v3);

  return v4;
}

- (void)daemonReady:(id)ready
{
  v17 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = identifier;
    _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Daemon ready", buf, 0x16u);
  }

  if ([(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1])
  {
    os_unfair_lock_lock(&self->_lock);
    objc_initWeak(buf, self);
    gatedActivityFactory = self->_gatedActivityFactory;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__HKHRDatabaseAnalysisSchedulerImpl_daemonReady___block_invoke;
    v11[3] = &unk_27865FFE0;
    objc_copyWeak(&v12, buf);
    v8 = [(HKHRDatabaseAnalysisSchedulerGatedActivityFactory *)gatedActivityFactory makeGatedActivityWithHandler:v11];
    lock_gatedActivity = self->_lock_gatedActivity;
    self->_lock_gatedActivity = v8;

    os_unfair_lock_unlock(&self->_lock);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(self->_loggingCategory, OS_LOG_TYPE_FAULT))
    {
      [HKHRDatabaseAnalysisSchedulerImpl daemonReady:?];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __49__HKHRDatabaseAnalysisSchedulerImpl_daemonReady___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runActivity:v7 withCompletion:v6];
}

- (void)_requestGatedActivityRunWithDelay:(double)delay
{
  _gatedActivity = [(HKHRDatabaseAnalysisSchedulerImpl *)self _gatedActivity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HKHRDatabaseAnalysisSchedulerImpl__requestGatedActivityRunWithDelay___block_invoke;
  v6[3] = &unk_278660008;
  v6[4] = self;
  *&v6[5] = delay;
  [_gatedActivity requestRunWithMaximumDelay:v6 completion:delay];
}

void __71__HKHRDatabaseAnalysisSchedulerImpl__requestGatedActivityRunWithDelay___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(v7 + 16);
    v11 = 138544386;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2050;
    v16 = v8;
    v17 = 2050;
    v18 = a2;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity (with %{public}f delay) completed with result %{public}ld and error %{public}@", &v11, 0x34u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_maybeRetryLater
{
  v23 = *MEMORY[0x277D85DE8];
  retryCountKey = [(HKHRDatabaseAnalysisSchedulerImpl *)self retryCountKey];
  v4 = [(NSUserDefaults *)self->_persistentStateDefaults hk_keyExists:retryCountKey];
  persistentStateDefaults = self->_persistentStateDefaults;
  if (v4)
  {
    v6 = [(NSUserDefaults *)persistentStateDefaults integerForKey:retryCountKey];
    v7 = v6 + 1;
    [(NSUserDefaults *)self->_persistentStateDefaults setInteger:v6 + 1 forKey:retryCountKey];
    if (v6 >= 4)
    {
      [(NSUserDefaults *)self->_persistentStateDefaults removeObjectForKey:retryCountKey];
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        v15 = 138543874;
        selfCopy2 = self;
        v17 = 2114;
        v18 = identifier;
        v19 = 2050;
        v20 = 4;
        _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Reached maximum number of retries (%{public}ld), giving up", &v15, 0x20u);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = 1;
    [(NSUserDefaults *)persistentStateDefaults setInteger:1 forKey:retryCountKey];
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _retryDelayGivenRetryCount:v7];
  v11 = v10;
  _HKInitializeLogging();
  v12 = self->_loggingCategory;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_identifier;
    v15 = 138544130;
    selfCopy2 = self;
    v17 = 2114;
    v18 = v13;
    v19 = 2050;
    v20 = v7;
    v21 = 2050;
    v22 = v11;
    _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Retry attempt %{public}ld, retrying in %{public}f seconds", &v15, 0x2Au);
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _retryDelayGivenRetryCount:v7];
  [(HKHRDatabaseAnalysisSchedulerImpl *)self _requestGatedActivityRunWithDelay:?];
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_enterStateIfPossible:(unint64_t)possible
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  v6 = state - 1;
  if (state > 1)
  {
    if (state != 2)
    {
      if (state == 3 && possible != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    if (((possible - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
    {
      if (v6 > 2)
      {
        v18 = @"WaitingForDaemonReady";
      }

      else
      {
        v18 = off_278660050[v6];
      }

      identifier = self->_identifier;
      if (possible - 1 > 2)
      {
        v20 = @"WaitingForDaemonReady";
      }

      else
      {
        v20 = off_278660050[possible - 1];
      }

      v22 = 138544130;
      selfCopy2 = self;
      v24 = 2114;
      v25 = identifier;
      v26 = 2114;
      v27 = v18;
      v28 = 2114;
      v29 = v20;
      v21 = loggingCategory;
      _os_log_error_impl(&dword_229486000, v21, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Invalid attempt to change state from %{public}@ to %{public}@", &v22, 0x2Au);
    }

    v12 = 0;
    goto LABEL_28;
  }

  if (!state)
  {
    if (possible == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (state == 1 && possible != 2)
  {
    goto LABEL_20;
  }

LABEL_14:
  _HKInitializeLogging();
  v9 = self->_loggingCategory;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v6 > 2)
    {
      v10 = @"WaitingForDaemonReady";
    }

    else
    {
      v10 = off_278660050[v6];
    }

    v13 = self->_identifier;
    if (possible - 1 > 2)
    {
      v14 = @"WaitingForDaemonReady";
    }

    else
    {
      v14 = off_278660050[possible - 1];
    }

    v22 = 138544130;
    selfCopy2 = self;
    v24 = 2114;
    v25 = v13;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v14;
    v15 = v9;
    _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] State will change from %{public}@ to %{public}@", &v22, 0x2Au);
  }

  self->_state = possible;
  v12 = 1;
LABEL_28:
  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_resetRetryCounter
{
  persistentStateDefaults = self->_persistentStateDefaults;
  retryCountKey = [(HKHRDatabaseAnalysisSchedulerImpl *)self retryCountKey];
  [(NSUserDefaults *)persistentStateDefaults removeObjectForKey:retryCountKey];
}

- (void)_runActivity:(id)activity withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  breadcrumbManager = self->_breadcrumbManager;
  activityCopy = activity;
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)breadcrumbManager dropBreadcrumb:1];
  LODWORD(breadcrumbManager) = [activityCopy shouldDefer];

  if (breadcrumbManager)
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = identifier;
      _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but immediately deferred, deferring", buf, 0x16u);
    }

    [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"XPC activity deferred before maintenance"];
    completionCopy[2](completionCopy, 2, 0);
  }

  else if ([(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:2])
  {
    [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:completionCopy];
    operation = self->_operation;
    v15 = 0;
    v12 = [(HDProtectedDataOperation *)operation requestWorkWithPriority:2 error:&v15];
    v13 = v15;
    if ((v12 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(self->_loggingCategory, OS_LOG_TYPE_ERROR))
      {
        [HKHRDatabaseAnalysisSchedulerImpl _runActivity:? withCompletion:?];
      }

      [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:0];
      (completionCopy)[2](completionCopy, 1, v13);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(self->_loggingCategory, OS_LOG_TYPE_FAULT))
    {
      [HKHRDatabaseAnalysisSchedulerImpl _runActivity:? withCompletion:?];
    }

    [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Unable to transition to waiting for maintenance operation"];
    completionCopy[2](completionCopy, 1, 0);
    [(HKHRDatabaseAnalysisSchedulerImpl *)self _maybeRetryLater];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  completionCopy = completion;
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropBreadcrumb:2];
  _activityCompletion = [(HKHRDatabaseAnalysisSchedulerImpl *)self _activityCompletion];

  if (_activityCompletion)
  {
    _activityCompletion2 = [(HKHRDatabaseAnalysisSchedulerImpl *)self _activityCompletion];
    _gatedActivity = [(HKHRDatabaseAnalysisSchedulerImpl *)self _gatedActivity];
    shouldDefer = [_gatedActivity shouldDefer];

    if (shouldDefer)
    {
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        *buf = 138543618;
        selfCopy4 = self;
        v31 = 2114;
        v32 = identifier;
        _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but deferred after maintenance operation, deferring", buf, 0x16u);
      }

      [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
      [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"XPC activity deferred after maintenance"];
      _activityCompletion2[2](_activityCompletion2, 2, 0);
      [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:0];
    }

    else
    {
      if (assertionCopy)
      {
        if ([assertionCopy state] == 3)
        {
          _HKInitializeLogging();
          v18 = self->_loggingCategory;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = self->_identifier;
            *buf = 138543618;
            selfCopy4 = self;
            v31 = 2114;
            v32 = v19;
            _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but assertion invalidated, attempting retry later", buf, 0x16u);
          }

          [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
          breadcrumbManager = self->_breadcrumbManager;
          v21 = @"Assertion expired after maintenance";
        }

        else
        {
          if ([(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:3])
          {
            WeakRetained = objc_loadWeakRetained(&self->delegate);
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __111__HKHRDatabaseAnalysisSchedulerImpl_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke;
            v26[3] = &unk_278660030;
            v26[4] = self;
            v27 = _activityCompletion2;
            v28 = completionCopy;
            [WeakRetained analysisSchedulerDidFire:self completion:v26];

LABEL_24:
            goto LABEL_25;
          }

          _HKInitializeLogging();
          if (os_log_type_enabled(self->_loggingCategory, OS_LOG_TYPE_FAULT))
          {
            [HKHRDatabaseAnalysisSchedulerImpl performWorkForOperation:? profile:? databaseAccessibilityAssertion:? completion:?];
          }

          [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
          breadcrumbManager = self->_breadcrumbManager;
          v21 = @"Unable to transition to waiting for activity";
        }
      }

      else
      {
        _HKInitializeLogging();
        v22 = self->_loggingCategory;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = self->_identifier;
          *buf = 138543618;
          selfCopy4 = self;
          v31 = 2114;
          v32 = v23;
          _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but assertion returned nil, attempting retry later", buf, 0x16u);
        }

        [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
        breadcrumbManager = self->_breadcrumbManager;
        v21 = @"Unable to take assertion after maintenance";
      }

      [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)breadcrumbManager dropAnalysisResultBreadcrumbWithContext:v21];
      _activityCompletion2[2](_activityCompletion2, 1, 0);
      [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:0];
      [(HKHRDatabaseAnalysisSchedulerImpl *)self _maybeRetryLater];
    }

    completionCopy[2](completionCopy);
    goto LABEL_24;
  }

  _HKInitializeLogging();
  v16 = self->_loggingCategory;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_identifier;
    *buf = 138543618;
    selfCopy4 = self;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity closure missing, attempting retry later", buf, 0x16u);
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Activity closure found nil. Fail to return activity result state"];
  [(HKHRDatabaseAnalysisSchedulerImpl *)self _maybeRetryLater];
  completionCopy[2](completionCopy);
LABEL_25:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __111__HKHRDatabaseAnalysisSchedulerImpl_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _enterStateIfPossible:1];
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      (*(*(a1 + 40) + 16))();
      [*(*(a1 + 32) + 48) dropBreadcrumb:6];
      [*(a1 + 32) _maybeRetryLater];
      goto LABEL_7;
    }

    if (a2)
    {
      goto LABEL_7;
    }
  }

  [*(a1 + 32) _resetRetryCounter];
  (*(*(a1 + 40) + 16))();
LABEL_7:
  [*(a1 + 32) _setActivityCompletion:0];
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (HKHRDatabaseAnalysisSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)daemonReady:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_229486000, v1, v2, "[%{public}@:%{public}@] Unable to transition to waiting for activity.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_runActivity:(uint64_t)a1 withCompletion:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_229486000, v1, v2, "[%{public}@:%{public}@] Unable to transition to waiting for maintenance operation state, attempting retry later", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_runActivity:(uint64_t)a1 withCompletion:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_229486000, v3, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Unable to request work with error: %{public}@.", v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)performWorkForOperation:(uint64_t)a1 profile:databaseAccessibilityAssertion:completion:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_229486000, v1, v2, "[%{public}@:%{public}@] Unable to transition to triggered state, attempting retry later", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end