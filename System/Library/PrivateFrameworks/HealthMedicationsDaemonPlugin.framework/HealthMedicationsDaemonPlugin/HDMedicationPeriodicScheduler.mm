@interface HDMedicationPeriodicScheduler
- (HDMedicationPeriodicScheduler)init;
- (HDMedicationPeriodicScheduler)initWithDaemon:(id)a3;
- (void)performPeriodicActivity:(id)a3 completion:(id)a4;
- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDMedicationPeriodicScheduler

- (HDMedicationPeriodicScheduler)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationPeriodicScheduler)initWithDaemon:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDMedicationPeriodicScheduler;
  v5 = [(HDMedicationPeriodicScheduler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_daemon, v4);
    v8 = [v4 primaryProfile];
    [v8 registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = *MEMORY[0x277D86298];
  v5 = objc_alloc(MEMORY[0x277D107E8]);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v6 = [WeakRetained primaryProfile];
  v7 = HKLogMedication();
  v8 = [v5 initWithProfile:v6 name:@"com.apple.healthd.medications.scheduler" interval:self delegate:v7 loggingCategory:v4];
  periodicActivity = self->_periodicActivity;
  self->_periodicActivity = v8;
}

- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];
  v9 = [v8 isEqualToString:@"com.apple.healthd.medications.scheduler"];

  _HKInitializeLogging();
  v10 = HKLogMedication();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 name];
      v14 = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_25181C000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: configuring periodic activity %{public}@", &v14, 0x16u);
    }

    xpc_dictionary_set_string(v7, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D863A0], 1);
    xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D86378], 1);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HDMedicationPeriodicScheduler *)self periodicActivity:v6 configureXPCActivityCriteria:v11];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)performPeriodicActivity:(id)a3 completion:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 name];
  if ([v7 isEqualToString:@"com.apple.healthd.medications.scheduler"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    v9 = [WeakRetained primaryProfile];

    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];
    v15 = [v10 stringWithFormat:@"%@-%@", v12, v14];

    v16 = [v9 database];
    v39 = 0;
    v17 = [v16 takeAccessibilityAssertionWithOwnerIdentifier:v15 timeout:&v39 error:300.0];
    v18 = v39;

    if (!v17)
    {
      _HKInitializeLogging();
      v19 = HKLogMedication();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);

      if (v20)
      {
        v21 = HKLogMedication();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v41 = self;
          v42 = 2114;
          v43 = v18;
          _os_log_impl(&dword_25181C000, v21, OS_LOG_TYPE_INFO, "[%{public}@]: unable to take accessibility assertion: %{public}@", buf, 0x16u);
        }
      }
    }

    v22 = MEMORY[0x277D10748];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke;
    v34[3] = &unk_2796CE4D8;
    v34[4] = self;
    v35 = v7;
    v36 = v17;
    v37 = v9;
    v38 = v6;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke_2;
    v32[3] = &unk_2796CE500;
    v33 = v36;
    v25 = v36;
    v26 = v9;
    v27 = [v22 maintenanceOperationWithName:v24 asynchronousBlock:v34 canceledBlock:v32];

    v28 = objc_loadWeakRetained(&self->_daemon);
    v29 = [v28 maintenanceWorkCoordinator];
    [v29 enqueueMaintenanceOperation:v27];
  }

  else
  {
    _HKInitializeLogging();
    v30 = HKLogMedication();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(HDMedicationPeriodicScheduler *)self performPeriodicActivity:v7 completion:v30];
    }

    (*(v6 + 2))(v6, 1, 0, 0.0);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_25181C000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: performing periodic activity %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D10788]);
  [v7 setCacheScope:1];
  if (*(a1 + 48))
  {
    [v7 addAccessibilityAssertion:?];
  }

  v8 = [*(a1 + 56) database];
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke_339;
  v16 = &unk_2796CD798;
  v17 = *(a1 + 56);
  v9 = [v8 performWithTransactionContext:v7 error:&v18 block:&v13];
  v10 = v18;

  [*(a1 + 48) invalidate];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v11, v10, 0.0);
  v3[2](v3);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke_339(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) healthMedicationsProfileExtension];
  v4 = [v3 medicationScheduleManager];

  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 startOfDayForDate:v6];

  if ([v4 rescheduleMedicationsWithError:a2])
  {
    v8 = [v4 pruneAllScheduleItemsBeforeDate:v7 createDoseEvents:1 error:a2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __68__HDMedicationPeriodicScheduler_performPeriodicActivity_completion___block_invoke_2(uint64_t a1, void *a2)
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
  _os_log_error_impl(&dword_25181C000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: periodic activity %{public}@ is not an expected activity, not configuring", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)performPeriodicActivity:(os_log_t)log completion:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_25181C000, log, OS_LOG_TYPE_ERROR, "[%{public}@]: periodic activity %{public}@ is not an expected activity, not performing", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end