@interface HDMedicationTimeZoneManager
- (BOOL)_isAuthorizedToFireTimeZoneNotificationWithProfile:(id)a3;
- (BOOL)_updateTimeZoneOffsetOffset:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDMedicationTimeZoneManager)initWithProfile:(id)a3;
- (id)_mostRecentTimeZoneOffsetWithProfile:(id)a3;
- (void)_performTimeZoneDetectionOperationOrJournalWithProfile:(uint64_t)a3 motive:;
- (void)handleTimeZoneChange;
- (void)profileDidBecomeReady:(id)a3;
- (void)scheduleManager:(id)a3 didAddOrModifySchedules:(id)a4;
@end

@implementation HDMedicationTimeZoneManager

- (HDMedicationTimeZoneManager)initWithProfile:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDMedicationTimeZoneManager;
  v5 = [(HDMedicationTimeZoneManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [v4 daemon];
    v8 = [v7 behavior];
    v9 = [v8 hkmd_supportsTimeZone];

    if (v9)
    {
      v10 = HKCreateSerialDispatchQueue();
      queue = v6->_queue;
      v6->_queue = v10;

      WeakRetained = objc_loadWeakRetained(&v6->_profile);
      [WeakRetained registerProfileReadyObserver:v6 queue:v6->_queue];
    }
  }

  return v6;
}

- (void)handleTimeZoneChange
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogMedication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_25181C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Time zone changed", &v6, 0xCu);
  }

  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  [(HDMedicationTimeZoneManager *)self _performTimeZoneDetectionOperationOrJournalWithProfile:1 motive:?];

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isAuthorizedToFireTimeZoneNotificationWithProfile:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x253084B70](self->_unitTestingAuthorizedToFireTimeZoneNotificationHandler);
  v6 = v5;
  if (!v5)
  {
    v10 = [v4 healthMedicationsProfileExtension];
    v8 = [v10 medicationUserDefaults];

    v11 = [v8 objectForKey:*MEMORY[0x277D114A0]];
    v9 = v11;
    if (v11 && ([v11 BOOLValue] & 1) == 0)
    {
      _HKInitializeLogging();
      v14 = HKLogMedication();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = self;
        v15 = "[%{public}@]: Should not fire timezone alert. Setting toggle off";
        goto LABEL_12;
      }
    }

    else
    {
      v12 = [v4 notificationManager];
      v13 = [v12 areHealthNotificationsAuthorized];

      if (v13)
      {
        v7 = 1;
        goto LABEL_14;
      }

      _HKInitializeLogging();
      v14 = HKLogMedication();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = self;
        v15 = "[%{public}@]: Should not fire timezone alert. Health notifications not authorized.";
LABEL_12:
        _os_log_impl(&dword_25181C000, v14, OS_LOG_TYPE_DEFAULT, v15, &v18, 0xCu);
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  v7 = (*(v5 + 16))(v5);
  _HKInitializeLogging();
  v8 = HKLogMedication();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HKStringFromBool();
    v18 = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Unit testing. Handler returned value: '%{public}@'", &v18, 0x16u);
LABEL_14:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_updateTimeZoneOffsetOffset:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D10718];
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [v7 hdmd_timeZoneDomainWithProfile:WeakRetained];

  [v10 setNumber:v8 forKey:*MEMORY[0x277D114B8] error:a5];
  v11 = [MEMORY[0x277CBEAA8] date];
  LOBYTE(a5) = [v10 setDate:v11 forKey:*MEMORY[0x277D114B0] error:a5];

  return a5;
}

void __84__HDMedicationTimeZoneManager__updateTimeZoneExperienceAsEnabled_transaction_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogMedication();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_25181C000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Did successfully post timezone changed notification", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __84__HDMedicationTimeZoneManager__updateTimeZoneExperienceAsEnabled_transaction_error___block_invoke_cold_1(a1, v5, v7);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_mostRecentTimeZoneOffsetWithProfile:(id)a3
{
  v3 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [v3 hdmd_timeZoneDomainWithProfile:WeakRetained];

  v6 = [v5 numberForKey:*MEMORY[0x277D114B8] error:0];

  return v6;
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained healthMedicationsProfileExtension];
  v5 = [v4 medicationScheduleManager];
  [v5 registerObserver:self queue:self->_queue];
}

- (void)_performTimeZoneDetectionOperationOrJournalWithProfile:(uint64_t)a3 motive:
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = a2;
    v6 = [[HDMedicationTimeZoneDetectionOperation alloc] initWithMotive:a3];
    v15 = 0;
    v7 = [(HDJournalableOperation *)v6 performOrJournalWithProfile:v5 error:&v15];

    v8 = v15;
    v9 = MEMORY[0x253084B70](*(a1 + 32));
    if (v9)
    {
      (v9)[2](v9, v7, [(HDJournalableOperation *)v6 didJournal], a3, v8);
    }

    _HKInitializeLogging();
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 == 2)
      {
        v11 = @"Schedule Change";
      }

      else if (a3 == 1)
      {
        v11 = @"TimeZone Change";
      }

      else
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", a3];
      }

      v12 = v11;
      v13 = HKStringFromBool();

      *buf = 138544130;
      v17 = a1;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: TimeZone operation ran with motive: '%{public}@' and returned result: '%{public}@ error: '%{public}@'", buf, 0x2Au);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)scheduleManager:(id)a3 didAddOrModifySchedules:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: schedules modified re-evaluating our timezone tile status.", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  [(HDMedicationTimeZoneManager *)self _performTimeZoneDetectionOperationOrJournalWithProfile:2 motive:?];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateTimeZoneExperienceAsEnabled:transaction:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = *MEMORY[0x277D85DE8];
}

void __84__HDMedicationTimeZoneManager__updateTimeZoneExperienceAsEnabled_transaction_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_25181C000, a2, a3, "[%{public}@]: Failed to post timezone changed notification request error:%{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end