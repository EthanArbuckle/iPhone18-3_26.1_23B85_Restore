@interface HDHRCardioFitnessAnalyticsDailyEventActivity
- (HDHRCardioFitnessAnalyticsDailyEventActivity)initWithProfile:(id)a3;
- (HDProfile)profile;
- (void)_queue_submitAnalyticsWithActivityCompletion:(id)a3;
- (void)daemonReady:(id)a3;
- (void)dealloc;
- (void)performPeriodicActivity:(id)a3 completion:(id)a4;
- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4;
@end

@implementation HDHRCardioFitnessAnalyticsDailyEventActivity

- (HDHRCardioFitnessAnalyticsDailyEventActivity)initWithProfile:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HDHRCardioFitnessAnalyticsDailyEventActivity;
  v5 = [(HDHRCardioFitnessAnalyticsDailyEventActivity *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = *MEMORY[0x277D862A0];
    v6->_calculationPeriod = *MEMORY[0x277D86298];
    v6->_retryPeriod = v7;
    v8 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = [[HDHRCardioFitnessAnalyticsSignalSource alloc] initWithProfile:v4];
    v11 = [objc_alloc(MEMORY[0x277D12F98]) initWithSignalSource:v10];
    analyticsManager = v6->_analyticsManager;
    v6->_analyticsManager = v11;

    v13 = [[HDHRCardioFitnessAnalyticsDailyEventDataSource alloc] initWithProfile:v4];
    dataSource = v6->_dataSource;
    v6->_dataSource = v13;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v16 = [WeakRetained daemon];
    [v16 registerDaemonReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)dealloc
{
  [(HDAssertion *)self->_preparedDatabaseAccessibilityAssertion invalidate];
  v3.receiver = self;
  v3.super_class = HDHRCardioFitnessAnalyticsDailyEventActivity;
  [(HDHRCardioFitnessAnalyticsDailyEventActivity *)&v3 dealloc];
}

- (void)daemonReady:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D107E8]);
  v7 = [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self profile];
  [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self calculationPeriod];
  v5 = [v4 initWithProfile:v7 name:@"com.apple.healthd.cardiofitness.HDHRCardioFitnessAnalyticsDailyEventActivity" interval:self delegate:*MEMORY[0x277CCC2D0] loggingCategory:?];
  periodicActivity = self->_periodicActivity;
  self->_periodicActivity = v5;
}

- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4
{
  v4 = *MEMORY[0x277D86230];
  xdict = a4;
  xpc_dictionary_set_BOOL(xdict, v4, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86378], 1);
}

- (void)performPeriodicActivity:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

  if (v7)
  {
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v34 = objc_opt_class();
      v9 = v34;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Received periodic activity trigger.", buf, 0xCu);
    }
  }

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke;
  block[3] = &unk_27865FD90;
  block[4] = self;
  dispatch_sync(queue, block);
  _HKInitializeLogging();
  v11 = HKLogHeartRateCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

  if (v12)
  {
    v13 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v34 = self;
      _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_INFO, "[%{public}@] maintenance operation enqueued", buf, 0xCu);
    }
  }

  v14 = MEMORY[0x277D10748];
  v25 = self;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_311;
  v29 = &unk_278660DC0;
  v30 = self;
  v31 = v5;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_315;
  v24 = &unk_278660738;
  v15 = v5;
  v16 = [v14 maintenanceOperationWithName:@"HDHRCardioFitnessAnalyticsDailyEventActivity" asynchronousBlock:&v26 canceledBlock:&v21];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v18 = [WeakRetained daemon];
  v19 = [v18 maintenanceWorkCoordinator];
  [v19 enqueueMaintenanceOperation:v16];

  v20 = *MEMORY[0x277D85DE8];
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) invalidate];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained database];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v14 = 0;
  v7 = [v3 takeAccessibilityAssertionWithOwnerIdentifier:v6 timeout:&v14 error:300.0];
  v8 = v14;
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  *(v9 + 8) = v7;

  if (!*(*(a1 + 32) + 8))
  {
    _HKInitializeLogging();
    v11 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_229486000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] unable to get accessibilityAssertion before enqueing maintenance operation: %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_311(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_INFO, "[%{public}@] maintenance operation running", buf, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_312;
  block[3] = &unk_278660D98;
  block[4] = v9;
  v14 = v3;
  v15 = v8;
  v11 = v3;
  dispatch_sync(v10, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_312(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_2;
  v4[3] = &unk_278660D70;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 _queue_submitAnalyticsWithActivityCompletion:v4];
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_2(void *a1, double a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a1[5];
  v7 = *(v6 + 16);
  v8 = a4;
  v7(v6);
  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

  if (v10)
  {
    v11 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = a1[4];
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229486000, v11, OS_LOG_TYPE_INFO, "[%{public}@] maintenance operation finished", &v16, 0xCu);
    }
  }

  [*(a1[4] + 8) invalidate];
  v13 = a1[4];
  v14 = *(v13 + 8);
  *(v13 + 8) = 0;

  (*(a1[6] + 16))(a2);
  v15 = *MEMORY[0x277D85DE8];
}

void __83__HDHRCardioFitnessAnalyticsDailyEventActivity_performPeriodicActivity_completion___block_invoke_315(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  [v2 invalidate];
  v3[2]();
}

- (void)_queue_submitAnalyticsWithActivityCompletion:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v36 = objc_opt_class();
      v8 = v36;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Attempting to send daily event.", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [WeakRetained deviceContextManager];
  v34 = 0;
  v11 = [v10 numberOfDeviceContextsPerDeviceType:&v34];
  v12 = v34;

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543618;
      v36 = v14;
      v37 = 2112;
      v38 = v12;
      v15 = v14;
      _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device contexts found with error %@", buf, 0x16u);
    }

    v16 = [objc_alloc(MEMORY[0x277D12FA0]) initWithStatus:1 error:v12];
  }

  else
  {
    v16 = [(HKHRCardioFitnessAnalyticsManager *)self->_analyticsManager submitDailyEventWithSource:self->_dataSource deviceContextsDict:v11];
  }

  v17 = v16;
  v18 = [v16 status];
  switch(v18)
  {
    case 2:
      _HKInitializeLogging();
      v28 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        *buf = 138543362;
        v36 = v29;
        v30 = v29;
        _os_log_impl(&dword_229486000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Should not send daily event, will ignore.", buf, 0xCu);
      }

      [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self retryPeriod];
      v32 = v31;
      v27 = [v17 error];
      v4[2](v4, 1, v27, v32);
      goto LABEL_22;
    case 1:
      _HKInitializeLogging();
      v22 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v36 = v23;
        v24 = v23;
        _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unsuccessfully sent daily event will request retry.", buf, 0xCu);
      }

      [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self retryPeriod];
      v26 = v25;
      v27 = [v17 error];
      v4[2](v4, 2, v27, v26);
LABEL_22:

      break;
    case 0:
      _HKInitializeLogging();
      v19 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *buf = 138543362;
        v36 = v20;
        v21 = v20;
        _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully sent daily event.", buf, 0xCu);
      }

      [(HDHRCardioFitnessAnalyticsDailyEventActivity *)self retryPeriod];
      (v4[2])(v4, 0, 0);
      break;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end