@interface HDHRBloodPressureJournalPeriodicScheduler
- (HDHRBloodPressureJournalPeriodicScheduler)initWithDaemon:(id)daemon;
- (void)_enqueueSchedulingOnMaintenanceOperationWithCompletion:(id)completion;
- (void)_resetActivityInterval;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDHRBloodPressureJournalPeriodicScheduler

- (HDHRBloodPressureJournalPeriodicScheduler)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v11.receiver = self;
  v11.super_class = HDHRBloodPressureJournalPeriodicScheduler;
  v5 = [(HDHRBloodPressureJournalPeriodicScheduler *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_daemon, daemonCopy);
    primaryProfile = [daemonCopy primaryProfile];
    [primaryProfile registerProfileReadyObserver:v6 queue:0];

    primaryProfile2 = [daemonCopy primaryProfile];
    objc_storeWeak(&v6->_profile, primaryProfile2);
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  v4 = *MEMORY[0x277D86298];
  v5 = MEMORY[0x277D107E8];
  readyCopy = ready;
  v7 = [v5 alloc];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];
  v10 = HKLogBloodPressureJournal();
  v11 = [v7 initWithProfile:primaryProfile name:@"com.apple.healthd.bloodPressureJournal.scheduler" interval:self delegate:v10 loggingCategory:v4];
  periodicActivity = self->_periodicActivity;
  self->_periodicActivity = v11;

  database = [readyCopy database];

  [database addProtectedDataObserver:self];
}

- (void)_resetActivityInterval
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resetting periodic activity", &v5, 0xCu);
  }

  [(HDPeriodicActivity *)self->_periodicActivity resetInterval];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  v14 = *MEMORY[0x277D85DE8];
  if (available)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    [database removeProtectedDataObserver:self];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__HDHRBloodPressureJournalPeriodicScheduler_database_protectedDataDidBecomeAvailable___block_invoke;
    v9[3] = &unk_2786602B8;
    v9[4] = self;
    [(HDHRBloodPressureJournalPeriodicScheduler *)self _enqueueSchedulingOnMaintenanceOperationWithCompletion:v9];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = @"com.apple.healthd.bloodPressureJournal.scheduler";
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: periodic activity %{public}@ - protectedData not available - skipping trigger on healthd launch", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __86__HDHRBloodPressureJournalPeriodicScheduler_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _resetActivityInterval];
  }

  return result;
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v18 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  criteriaCopy = criteria;
  name = [activityCopy name];
  v9 = [name isEqualToString:@"com.apple.healthd.bloodPressureJournal.scheduler"];

  _HKInitializeLogging();
  v10 = HKLogBloodPressureJournal();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [activityCopy name];
      v14 = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = name2;
      _os_log_impl(&dword_229486000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: configuring periodic activity %{public}@", &v14, 0x16u);
    }

    xpc_dictionary_set_string(criteriaCopy, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86378], 1);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HDHRBloodPressureJournalPeriodicScheduler *)self periodicActivity:activityCopy configureXPCActivityCriteria:v11];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  name = [activity name];
  if ([name isEqualToString:@"com.apple.healthd.bloodPressureJournal.scheduler"])
  {
    [(HDHRBloodPressureJournalPeriodicScheduler *)self _enqueueSchedulingOnMaintenanceOperationWithCompletion:completionCopy];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HDHRBloodPressureJournalPeriodicScheduler *)self performPeriodicActivity:name completion:v8];
    }

    completionCopy[2](completionCopy, 1, 0, 0.0);
  }
}

- (void)_enqueueSchedulingOnMaintenanceOperationWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v10 = [v5 stringWithFormat:@"%@-%@", v7, uUIDString];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v32 = 0;
  v13 = [database takeAccessibilityAssertionWithOwnerIdentifier:v10 timeout:&v32 error:300.0];
  v14 = v32;

  if (!v13)
  {
    _HKInitializeLogging();
    v15 = HKLogBloodPressureJournal();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

    if (v16)
    {
      v17 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        selfCopy = self;
        v35 = 2114;
        v36 = v14;
        _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_INFO, "[%{public}@]: unable to take accessibility assertion: %{public}@", buf, 0x16u);
      }
    }
  }

  v18 = MEMORY[0x277D10748];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __100__HDHRBloodPressureJournalPeriodicScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke;
  v29[3] = &unk_278660B80;
  v29[4] = self;
  v30 = v13;
  v31 = completionCopy;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __100__HDHRBloodPressureJournalPeriodicScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke_2;
  v27[3] = &unk_278660738;
  v28 = v30;
  v21 = v30;
  v22 = completionCopy;
  v23 = [v18 maintenanceOperationWithName:v20 asynchronousBlock:v29 canceledBlock:v27];

  v24 = objc_loadWeakRetained(&self->_daemon);
  maintenanceWorkCoordinator = [v24 maintenanceWorkCoordinator];
  [maintenanceWorkCoordinator enqueueMaintenanceOperation:v23];

  v26 = *MEMORY[0x277D85DE8];
}

void __100__HDHRBloodPressureJournalPeriodicScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = @"com.apple.healthd.bloodPressureJournal.scheduler";
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: performing periodic activity %{public}@", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277D10788]);
  [v6 setCacheScope:1];
  if (*(a1 + 40))
  {
    [v6 addAccessibilityAssertion:?];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v8 = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__HDHRBloodPressureJournalPeriodicScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke_306;
  v13[3] = &unk_278660B58;
  v13[4] = *(a1 + 32);
  v14 = 0;
  v9 = [v8 performWithTransactionContext:v6 error:&v14 block:v13];
  v10 = v14;

  [*(a1 + 40) invalidate];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v11, v10, 0.0);
  v3[2](v3);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __100__HDHRBloodPressureJournalPeriodicScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke_306(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v5 = [WeakRetained heartHealthProfileExtension];
  v6 = [v5 bloodPressureJournalManager];

  v7 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v8 = [v7 heartHealthProfileExtension];
  v9 = [v8 bloodPressureJournalNotificationManager];

  v10 = [MEMORY[0x277CBEAA8] date];
  if ([v6 closeAllExpiredJournalsBy:v10 error:a2])
  {
    v11 = [v9 scheduleNotificationsWithReason:3 error:a2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __100__HDHRBloodPressureJournalPeriodicScheduler__enqueueSchedulingOnMaintenanceOperationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 invalidate];
  v3[2]();
}

- (void)periodicActivity:(NSObject *)a3 configureXPCActivityCriteria:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 name];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: periodic activity %{public}@ is not an expected activity, not configuring", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)performPeriodicActivity:(os_log_t)log completion:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@]: periodic activity %{public}@ is not the expected activity, not performing", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end