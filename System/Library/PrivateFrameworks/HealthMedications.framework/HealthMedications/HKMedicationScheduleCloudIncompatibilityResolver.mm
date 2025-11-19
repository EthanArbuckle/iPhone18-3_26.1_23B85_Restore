@interface HKMedicationScheduleCloudIncompatibilityResolver
- (HKMedicationScheduleCloudIncompatibilityResolver)init;
- (HKMedicationScheduleCloudIncompatibilityResolver)initWithHealthStore:(id)a3 accountStore:(id)a4 deviceRequest:(id)a5;
- (void)checkIncompatibilityForSchedule:(id)a3 completion:(id)a4;
- (void)resolveIncompatibleSchedulesWithCompletion:(id)a3;
@end

@implementation HKMedicationScheduleCloudIncompatibilityResolver

- (HKMedicationScheduleCloudIncompatibilityResolver)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationScheduleCloudIncompatibilityResolver)initWithHealthStore:(id)a3 accountStore:(id)a4 deviceRequest:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HKMedicationScheduleCloudIncompatibilityResolver;
  v12 = [(HKMedicationScheduleBaseIncompatibilityResolver *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, a3);
    v14 = [[HKACAccountDeviceStore alloc] initWithAccountStore:v10];
    accountDeviceStore = v13->_accountDeviceStore;
    v13->_accountDeviceStore = v14;

    objc_storeStrong(&v13->_deviceRequest, a5);
    v16 = [[HKMedicationScheduleControl alloc] initWithHealthStore:v13->_healthStore];
    scheduleControl = v13->_scheduleControl;
    v13->_scheduleControl = v16;
  }

  return v13;
}

- (void)resolveIncompatibleSchedulesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy_;
  v33[4] = __Block_byref_object_dispose_;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy_;
  v31[4] = __Block_byref_object_dispose_;
  v32 = 0;
  dispatch_group_enter(v5);
  v6 = [(HKMedicationScheduleCloudIncompatibilityResolver *)self accountDeviceStore];
  v7 = [(HKMedicationScheduleCloudIncompatibilityResolver *)self deviceRequest];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __95__HKMedicationScheduleCloudIncompatibilityResolver_resolveIncompatibleSchedulesWithCompletion___block_invoke;
  v27[3] = &unk_2796C9F50;
  v29 = v31;
  v30 = v33;
  v27[4] = self;
  v8 = v5;
  v28 = v8;
  [v6 fetchDevicesWithRequest:v7 completion:v27];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy_;
  v25[4] = __Block_byref_object_dispose_;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy_;
  v23[4] = __Block_byref_object_dispose_;
  v24 = 0;
  dispatch_group_enter(v8);
  v9 = [(HKMedicationScheduleCloudIncompatibilityResolver *)self scheduleControl];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __95__HKMedicationScheduleCloudIncompatibilityResolver_resolveIncompatibleSchedulesWithCompletion___block_invoke_328;
  v19[3] = &unk_2796C9F50;
  v21 = v23;
  v22 = v25;
  v19[4] = self;
  v10 = v8;
  v20 = v10;
  [v9 fetchAllSchedulesWithCompletion:v19];

  v11 = [(HKHealthStore *)self->_healthStore clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__HKMedicationScheduleCloudIncompatibilityResolver_resolveIncompatibleSchedulesWithCompletion___block_invoke_329;
  v13[3] = &unk_2796C9F78;
  v15 = v25;
  v16 = v23;
  v17 = v33;
  v18 = v31;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  dispatch_group_notify(v10, v11, v13);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
}

void __95__HKMedicationScheduleCloudIncompatibilityResolver_resolveIncompatibleSchedulesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  _HKInitializeLogging();
  v8 = HKLogMedication();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = v10;
    v14 = 138543618;
    v15 = v10;
    v16 = 2048;
    v17 = [v11 count];
    _os_log_impl(&dword_2517E7000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found %ld cloud devices to evaluate", &v14, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
  v13 = *MEMORY[0x277D85DE8];
}

void __95__HKMedicationScheduleCloudIncompatibilityResolver_resolveIncompatibleSchedulesWithCompletion___block_invoke_328(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  _HKInitializeLogging();
  v8 = HKLogMedication();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = v10;
    v14 = 138543618;
    v15 = v10;
    v16 = 2048;
    v17 = [v11 count];
    _os_log_impl(&dword_2517E7000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found %ld schedules to evaluate", &v14, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
  v13 = *MEMORY[0x277D85DE8];
}

- (void)checkIncompatibilityForSchedule:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKMedicationScheduleCloudIncompatibilityResolver *)self accountDeviceStore];
  v9 = [(HKMedicationScheduleCloudIncompatibilityResolver *)self deviceRequest];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HKMedicationScheduleCloudIncompatibilityResolver_checkIncompatibilityForSchedule_completion___block_invoke;
  v12[3] = &unk_2796C9FC8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v8 fetchDevicesWithRequest:v9 completion:v12];
}

void __95__HKMedicationScheduleCloudIncompatibilityResolver_checkIncompatibilityForSchedule_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v13[0] = *(a1 + 40);
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = a2;
  v9 = [v6 arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__HKMedicationScheduleCloudIncompatibilityResolver_checkIncompatibilityForSchedule_completion___block_invoke_2;
  v11[3] = &unk_2796C9FA0;
  v12 = *(a1 + 48);
  [v5 _resolveIncompatibleScheduleResultsFromSchedules:v9 scheduleError:0 devices:v8 deviceError:v7 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __95__HKMedicationScheduleCloudIncompatibilityResolver_checkIncompatibilityForSchedule_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

@end