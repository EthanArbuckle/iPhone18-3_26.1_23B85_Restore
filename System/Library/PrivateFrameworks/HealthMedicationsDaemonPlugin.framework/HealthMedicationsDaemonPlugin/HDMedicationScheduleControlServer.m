@interface HDMedicationScheduleControlServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (BOOL)insertMedicationScheduleItems:(id)a3 error:(id *)a4;
- (HDMedicationScheduleControlServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)medicationSchedulesForMedicationIdentifiers:(id)a3 error:(id *)a4;
- (void)remote_deleteSchedule:(id)a3 completion:(id)a4;
- (void)remote_fetchAllSchedulesWithCompletion:(id)a3;
- (void)remote_fetchScheduleWithMedicationIdentifier:(id)a3 completion:(id)a4;
- (void)remote_fetchSchedulesWithMedicationIdentifiers:(id)a3 completion:(id)a4;
- (void)remote_logUnloggedMedicationsWithScheduledItemIdentifier:(id)a3 status:(int64_t)a4 logDate:(id)a5 completion:(id)a6;
- (void)remote_observeMedicationScheduleChanges:(BOOL)a3 completion:(id)a4;
- (void)remote_rescheduleMedicationsWithCompletion:(id)a3;
- (void)remote_saveSchedule:(id)a3 completion:(id)a4;
- (void)remote_saveScheduleItems:(id)a3 completion:(id)a4;
- (void)remote_setTimeZoneTipAsDismissedWithCompletion:(id)a3;
- (void)scheduleManager:(id)a3 didAddOrModifySchedules:(id)a4;
- (void)scheduleManager:(id)a3 didPruneScheduleItems:(id)a4;
- (void)scheduleManagerDidRescheduleMedications:(id)a3;
@end

@implementation HDMedicationScheduleControlServer

- (void)remote_saveSchedule:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 healthMedicationsProfileExtension];
  v10 = [v9 medicationScheduleManager];

  v13 = 0;
  v11 = [v10 insertMedicationSchedule:v7 error:&v13];

  v12 = v13;
  v6[2](v6, v11, v12);
}

- (void)remote_setTimeZoneTipAsDismissedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 healthMedicationsProfileExtension];
  v7 = [v6 medicationScheduleManager];

  v10 = 0;
  v8 = [v7 updateTimeZoneExperienceAsDismissedWithError:&v10];
  v9 = v10;
  v4[2](v4, v8, v9);
}

- (void)remote_fetchScheduleWithMedicationIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 healthMedicationsProfileExtension];
  v10 = [v9 medicationScheduleManager];

  v14 = 0;
  v15 = 0;
  LODWORD(v8) = [v10 medicationSchedule:&v15 medicationIdentifier:v7 error:&v14];

  v11 = v15;
  v12 = v14;
  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  (v6)[2](v6, v13, v12);
}

- (void)remote_fetchSchedulesWithMedicationIdentifiers:(id)a3 completion:(id)a4
{
  v9 = 0;
  v6 = a4;
  v7 = [(HDMedicationScheduleControlServer *)self medicationSchedulesForMedicationIdentifiers:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)remote_fetchAllSchedulesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 healthMedicationsProfileExtension];
  v7 = [v6 medicationScheduleManager];

  v10 = 0;
  v8 = [v7 medicationSchedulesWithError:&v10];
  v9 = v10;
  v4[2](v4, v8, v9);
}

- (void)remote_deleteSchedule:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 healthMedicationsProfileExtension];
  v10 = [v9 medicationScheduleManager];

  v13 = 0;
  v11 = [v10 deleteMedicationSchedule:v7 error:&v13];

  v12 = v13;
  v6[2](v6, v11, v12);
}

- (void)remote_rescheduleMedicationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 healthMedicationsProfileExtension];
  v7 = [v6 medicationScheduleManager];

  v10 = 0;
  v8 = [v7 rescheduleMedicationsWithError:&v10];
  v9 = v10;
  v4[2](v4, v8, v9);
}

- (void)remote_observeMedicationScheduleChanges:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  self->_shouldObserveChanges = a3;
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 healthMedicationsProfileExtension];
  v9 = [v8 medicationScheduleManager];

  if (self->_shouldObserveChanges)
  {
    [v9 registerObserver:self queue:0];
  }

  else
  {
    [v9 unregisterObserver:self];
  }

  os_unfair_lock_unlock(&self->_lock);
  v6[2](v6, 1, 0);
}

- (id)medicationSchedulesForMedicationIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 healthMedicationsProfileExtension];
  v9 = [v8 medicationScheduleManager];

  v10 = HDMedicationSchedulePredicateForMedicationIdentifiers(v6);

  v11 = [v9 medicationSchedulesWithPredicate:v10 error:a4];

  return v11;
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[HDMedicationScheduleControlServer alloc] initWithUUID:v13 configuration:v12 client:v11 delegate:v10];

  return v14;
}

- (HDMedicationScheduleControlServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v7.receiver = self;
  v7.super_class = HDMedicationScheduleControlServer;
  result = [(HDStandardTaskServer *)&v7 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_shouldObserveChanges = 0;
  }

  return result;
}

- (void)scheduleManagerDidRescheduleMedications:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  shouldObserveChanges = self->_shouldObserveChanges;
  os_unfair_lock_unlock(&self->_lock);
  if (shouldObserveChanges)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__HDMedicationScheduleControlServer_scheduleManagerDidRescheduleMedications___block_invoke;
    v10[3] = &unk_2796CD9C0;
    v10[4] = self;
    v5 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v10];
    _HKInitializeLogging();
    v6 = HKLogMedication();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

    if (v7)
    {
      v8 = HKLogMedication();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v12 = self;
        _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_INFO, "%{public}@: Notify client for did reschedule medications", buf, 0xCu);
      }
    }

    [v5 client_notifyForDidRescheduleMedications];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __77__HDMedicationScheduleControlServer_scheduleManagerDidRescheduleMedications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__HDMedicationScheduleControlServer_scheduleManagerDidRescheduleMedications___block_invoke_cold_1(a1);
  }
}

- (void)scheduleManager:(id)a3 didPruneScheduleItems:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  shouldObserveChanges = self->_shouldObserveChanges;
  os_unfair_lock_unlock(&self->_lock);
  if (shouldObserveChanges)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__HDMedicationScheduleControlServer_scheduleManager_didPruneScheduleItems___block_invoke;
    v12[3] = &unk_2796CD9C0;
    v12[4] = self;
    v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v12];
    _HKInitializeLogging();
    v8 = HKLogMedication();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = self;
        _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for didPruneScheduleItems", buf, 0xCu);
      }
    }

    [v7 client_notifyForDidPruneSchduleItems:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __75__HDMedicationScheduleControlServer_scheduleManager_didPruneScheduleItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__HDMedicationScheduleControlServer_scheduleManager_didPruneScheduleItems___block_invoke_cold_1(a1);
  }
}

- (void)scheduleManager:(id)a3 didAddOrModifySchedules:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  shouldObserveChanges = self->_shouldObserveChanges;
  os_unfair_lock_unlock(&self->_lock);
  if (shouldObserveChanges)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__HDMedicationScheduleControlServer_scheduleManager_didAddOrModifySchedules___block_invoke;
    v13[3] = &unk_2796CD9C0;
    v13[4] = self;
    v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v13];
    _HKInitializeLogging();
    v8 = HKLogMedication();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v5 count];
        *buf = 138543618;
        v15 = self;
        v16 = 2048;
        v17 = v11;
        _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for didAddOrModifySchedules %ld", buf, 0x16u);
      }
    }

    [v7 client_notifyForAddOrModifySchedules:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __77__HDMedicationScheduleControlServer_scheduleManager_didAddOrModifySchedules___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__HDMedicationScheduleControlServer_scheduleManager_didAddOrModifySchedules___block_invoke_cold_1(a1);
  }
}

- (void)remote_saveScheduleItems:(id)a3 completion:(id)a4
{
  v9 = 0;
  v6 = a4;
  v7 = [(HDMedicationScheduleControlServer *)self insertMedicationScheduleItems:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (BOOL)insertMedicationScheduleItems:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HDMedicationScheduleControlServer_insertMedicationScheduleItems_error___block_invoke;
  v11[3] = &unk_2796CD388;
  v12 = v6;
  v9 = v6;
  LOBYTE(a4) = [(HDHealthEntity *)HDMedicationScheduleItemEntity performWriteTransactionWithHealthDatabase:v8 error:a4 block:v11];

  return a4;
}

uint64_t __73__HDMedicationScheduleControlServer_insertMedicationScheduleItems_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [HDMedicationScheduleItemEntity insertMedicationScheduleItem:*(*(&v15 + 1) + 8 * v10) transaction:v5 error:a3, v15];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)remote_logUnloggedMedicationsWithScheduledItemIdentifier:(id)a3 status:(int64_t)a4 logDate:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(HDStandardTaskServer *)self profile];
  v14 = [v13 healthMedicationsProfileExtension];
  v15 = [v14 medicationScheduleManager];

  v18 = 0;
  v16 = [v15 logUnloggedDoseEventsForScheduledItemIdentifier:v12 status:a4 logDate:v11 error:&v18];

  v17 = v18;
  v10[2](v10, v16, v17);
}

void __77__HDMedicationScheduleControlServer_scheduleManagerDidRescheduleMedications___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1(&dword_25181C000, v2, v3, "%{public}@: Unable to notify client for did reschedule medications: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __75__HDMedicationScheduleControlServer_scheduleManager_didPruneScheduleItems___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1(&dword_25181C000, v2, v3, "%{public}@: Unable to notify client for didPruneScheduleItems: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __77__HDMedicationScheduleControlServer_scheduleManager_didAddOrModifySchedules___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1(&dword_25181C000, v2, v3, "%{public}@: Unable to notify client for didAddOrModifySchedules: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

@end