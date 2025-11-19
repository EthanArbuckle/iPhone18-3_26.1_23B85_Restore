@interface HKMedicationScheduleLocalIncompatibilityResolver
- (HKMedicationScheduleLocalIncompatibilityResolver)init;
- (void)checkIncompatibilityForSchedule:(id)a3 completion:(id)a4;
- (void)checkIncompatibilityForSchedule:(id)a3 pairedDevice:(id)a4 completion:(id)a5;
@end

@implementation HKMedicationScheduleLocalIncompatibilityResolver

- (HKMedicationScheduleLocalIncompatibilityResolver)init
{
  v6.receiver = self;
  v6.super_class = HKMedicationScheduleLocalIncompatibilityResolver;
  v2 = [(HKMedicationScheduleBaseIncompatibilityResolver *)&v6 init];
  v3 = v2;
  if (v2)
  {
    unitTestPairedDevice = v2->_unitTestPairedDevice;
    v2->_unitTestPairedDevice = 0;
  }

  return v3;
}

- (void)checkIncompatibilityForSchedule:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_unitTestPairedDevice;
  if (v8)
  {
    v9 = v8;
LABEL_4:
    [(HKMedicationScheduleLocalIncompatibilityResolver *)self checkIncompatibilityForSchedule:v6 pairedDevice:v9 completion:v7];

    goto LABEL_5;
  }

  v10 = [MEMORY[0x277D2BCF8] sharedInstance];
  v9 = [v10 getActivePairedDevice];

  if (v9)
  {
    goto LABEL_4;
  }

  _HKInitializeLogging();
  v12 = HKLogMedication();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    v13 = v15;
    _os_log_impl(&dword_2517E7000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping incompatibility check, no active paired device found.", &v14, 0xCu);
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_5:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)checkIncompatibilityForSchedule:(id)a3 pairedDevice:(id)a4 completion:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[HKACAccountDevice alloc] initWithPairedDevice:v9];

  v19[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v18 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __108__HKMedicationScheduleLocalIncompatibilityResolver_checkIncompatibilityForSchedule_pairedDevice_completion___block_invoke;
  v16[3] = &unk_2796C9FA0;
  v17 = v8;
  v14 = v8;
  [(HKMedicationScheduleBaseIncompatibilityResolver *)self _resolveIncompatibleScheduleResultsFromSchedules:v12 scheduleError:0 devices:v13 deviceError:0 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __108__HKMedicationScheduleLocalIncompatibilityResolver_checkIncompatibilityForSchedule_pairedDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

@end