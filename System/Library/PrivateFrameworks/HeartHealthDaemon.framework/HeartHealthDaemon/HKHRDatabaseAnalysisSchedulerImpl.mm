@interface HKHRDatabaseAnalysisSchedulerImpl
- (BOOL)_enterStateIfPossible:(unint64_t)a3;
- (HKHRDatabaseAnalysisSchedulerDelegate)delegate;
- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)a3 identifier:(id)a4 loggingCategory:(id)a5 maximumDelay:(double)a6 retryDelay:(double)a7 breadcrumbManager:(id)a8;
- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)a3 identifier:(id)a4 loggingCategory:(id)a5 maximumDelay:(double)a6 retryDelay:(double)a7 breadcrumbManager:(id)a8 gatedActivityFactory:(id)a9 persistentStateDefaults:(id)a10 operation:(id)a11;
- (id)_activityCompletion;
- (id)_gatedActivity;
- (void)_maybeRetryLater;
- (void)_requestGatedActivityRunWithDelay:(double)a3;
- (void)_resetRetryCounter;
- (void)_runActivity:(id)a3 withCompletion:(id)a4;
- (void)_setActivityCompletion:(id)a3;
- (void)daemonReady:(id)a3;
- (void)forceAnalysis;
- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6;
- (void)scheduleAnalysis;
@end

@implementation HKHRDatabaseAnalysisSchedulerImpl

- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)a3 identifier:(id)a4 loggingCategory:(id)a5 maximumDelay:(double)a6 retryDelay:(double)a7 breadcrumbManager:(id)a8
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[HKHRDatabaseAnalysisSchedulerGatedActivityFactoryImpl alloc] initWithIdentifier:v16 loggingCategory:v15];
  v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v20 = [objc_alloc(MEMORY[0x277D10800]) initWithProfile:v17 debugIdentifier:@"HKHRDatabaseAnalysisSchedulerOperation" delegate:self];
  v21 = [(HKHRDatabaseAnalysisSchedulerImpl *)self initWithProfile:v17 identifier:v16 loggingCategory:v15 maximumDelay:v14 retryDelay:v18 breadcrumbManager:v19 gatedActivityFactory:a6 persistentStateDefaults:a7 operation:v20];

  return v21;
}

- (HKHRDatabaseAnalysisSchedulerImpl)initWithProfile:(id)a3 identifier:(id)a4 loggingCategory:(id)a5 maximumDelay:(double)a6 retryDelay:(double)a7 breadcrumbManager:(id)a8 gatedActivityFactory:(id)a9 persistentStateDefaults:(id)a10 operation:(id)a11
{
  v19 = a3;
  v20 = a4;
  v32 = a5;
  v31 = a8;
  v30 = a9;
  v21 = a10;
  v22 = a11;
  v33.receiver = self;
  v33.super_class = HKHRDatabaseAnalysisSchedulerImpl;
  v23 = [(HKHRDatabaseAnalysisSchedulerImpl *)&v33 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_profile, v19);
    v25 = [v20 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    objc_storeStrong(&v24->_loggingCategory, a5);
    v24->_maximumDelay = a6;
    v24->_retryDelay = a7;
    objc_storeStrong(&v24->_breadcrumbManager, a8);
    objc_storeStrong(&v24->_gatedActivityFactory, a9);
    v24->_lock._os_unfair_lock_opaque = 0;
    v24->_state = 0;
    objc_storeStrong(&v24->_persistentStateDefaults, a10);
    objc_storeStrong(&v24->_operation, a11);
    WeakRetained = objc_loadWeakRetained(&v24->_profile);
    v28 = [WeakRetained daemon];
    [v28 registerDaemonReadyObserver:v24 queue:0];
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
    v7 = self;
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
    v9 = self;
    v10 = 2114;
    v11 = identifier;
    _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Told to force analysis", buf, 0x16u);
  }

  v5 = [(HKHRDatabaseAnalysisSchedulerImpl *)self _gatedActivity];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HKHRDatabaseAnalysisSchedulerImpl_forceAnalysis__block_invoke;
  v7[3] = &unk_27865FFB8;
  v7[4] = self;
  [v5 runUngatedWithCompletion:v7];

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

- (void)_setActivityCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x22AACDB50](v4);

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

- (void)daemonReady:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138543618;
    v14 = self;
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

- (void)_requestGatedActivityRunWithDelay:(double)a3
{
  v5 = [(HKHRDatabaseAnalysisSchedulerImpl *)self _gatedActivity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HKHRDatabaseAnalysisSchedulerImpl__requestGatedActivityRunWithDelay___block_invoke;
  v6[3] = &unk_278660008;
  v6[4] = self;
  *&v6[5] = a3;
  [v5 requestRunWithMaximumDelay:v6 completion:a3];
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
  v3 = [(HKHRDatabaseAnalysisSchedulerImpl *)self retryCountKey];
  v4 = [(NSUserDefaults *)self->_persistentStateDefaults hk_keyExists:v3];
  persistentStateDefaults = self->_persistentStateDefaults;
  if (v4)
  {
    v6 = [(NSUserDefaults *)persistentStateDefaults integerForKey:v3];
    v7 = v6 + 1;
    [(NSUserDefaults *)self->_persistentStateDefaults setInteger:v6 + 1 forKey:v3];
    if (v6 >= 4)
    {
      [(NSUserDefaults *)self->_persistentStateDefaults removeObjectForKey:v3];
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        v15 = 138543874;
        v16 = self;
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
    [(NSUserDefaults *)persistentStateDefaults setInteger:1 forKey:v3];
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _retryDelayGivenRetryCount:v7];
  v11 = v10;
  _HKInitializeLogging();
  v12 = self->_loggingCategory;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_identifier;
    v15 = 138544130;
    v16 = self;
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

- (BOOL)_enterStateIfPossible:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  v6 = state - 1;
  if (state > 1)
  {
    if (state != 2)
    {
      if (state == 3 && a3 != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    if (((a3 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
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
      if (a3 - 1 > 2)
      {
        v20 = @"WaitingForDaemonReady";
      }

      else
      {
        v20 = off_278660050[a3 - 1];
      }

      v22 = 138544130;
      v23 = self;
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
    if (a3 == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (state == 1 && a3 != 2)
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
    if (a3 - 1 > 2)
    {
      v14 = @"WaitingForDaemonReady";
    }

    else
    {
      v14 = off_278660050[a3 - 1];
    }

    v22 = 138544130;
    v23 = self;
    v24 = 2114;
    v25 = v13;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v14;
    v15 = v9;
    _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] State will change from %{public}@ to %{public}@", &v22, 0x2Au);
  }

  self->_state = a3;
  v12 = 1;
LABEL_28:
  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_resetRetryCounter
{
  persistentStateDefaults = self->_persistentStateDefaults;
  v3 = [(HKHRDatabaseAnalysisSchedulerImpl *)self retryCountKey];
  [(NSUserDefaults *)persistentStateDefaults removeObjectForKey:v3];
}

- (void)_runActivity:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  breadcrumbManager = self->_breadcrumbManager;
  v8 = a3;
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)breadcrumbManager dropBreadcrumb:1];
  LODWORD(breadcrumbManager) = [v8 shouldDefer];

  if (breadcrumbManager)
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      *buf = 138543618;
      v17 = self;
      v18 = 2114;
      v19 = identifier;
      _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but immediately deferred, deferring", buf, 0x16u);
    }

    [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"XPC activity deferred before maintenance"];
    v6[2](v6, 2, 0);
  }

  else if ([(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:2])
  {
    [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:v6];
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
      (v6)[2](v6, 1, v13);
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
    v6[2](v6, 1, 0);
    [(HKHRDatabaseAnalysisSchedulerImpl *)self _maybeRetryLater];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a6;
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropBreadcrumb:2];
  v10 = [(HKHRDatabaseAnalysisSchedulerImpl *)self _activityCompletion];

  if (v10)
  {
    v11 = [(HKHRDatabaseAnalysisSchedulerImpl *)self _activityCompletion];
    v12 = [(HKHRDatabaseAnalysisSchedulerImpl *)self _gatedActivity];
    v13 = [v12 shouldDefer];

    if (v13)
    {
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        *buf = 138543618;
        v30 = self;
        v31 = 2114;
        v32 = identifier;
        _os_log_impl(&dword_229486000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but deferred after maintenance operation, deferring", buf, 0x16u);
      }

      [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
      [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"XPC activity deferred after maintenance"];
      v11[2](v11, 2, 0);
      [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:0];
    }

    else
    {
      if (v8)
      {
        if ([v8 state] == 3)
        {
          _HKInitializeLogging();
          v18 = self->_loggingCategory;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = self->_identifier;
            *buf = 138543618;
            v30 = self;
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
            v27 = v11;
            v28 = v9;
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
          v30 = self;
          v31 = 2114;
          v32 = v23;
          _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity run but assertion returned nil, attempting retry later", buf, 0x16u);
        }

        [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
        breadcrumbManager = self->_breadcrumbManager;
        v21 = @"Unable to take assertion after maintenance";
      }

      [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)breadcrumbManager dropAnalysisResultBreadcrumbWithContext:v21];
      v11[2](v11, 1, 0);
      [(HKHRDatabaseAnalysisSchedulerImpl *)self _setActivityCompletion:0];
      [(HKHRDatabaseAnalysisSchedulerImpl *)self _maybeRetryLater];
    }

    v9[2](v9);
    goto LABEL_24;
  }

  _HKInitializeLogging();
  v16 = self->_loggingCategory;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_identifier;
    *buf = 138543618;
    v30 = self;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Activity closure missing, attempting retry later", buf, 0x16u);
  }

  [(HKHRDatabaseAnalysisSchedulerImpl *)self _enterStateIfPossible:1];
  [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Activity closure found nil. Fail to return activity result state"];
  [(HKHRDatabaseAnalysisSchedulerImpl *)self _maybeRetryLater];
  v9[2](v9);
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