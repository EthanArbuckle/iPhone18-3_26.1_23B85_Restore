@interface HDHRBloodPressureJournalBPSampleObserver
- (BOOL)_regenerateNotificationsIfNecessaryWithJournalSamples:(id)a3;
- (HDHRBloodPressureJournalBPSampleObserver)initWithProfile:(id)a3;
- (id)_currentActiveJournal;
- (id)_samplesFromCurrentDeviceIn:(id)a3;
- (id)_samplesInCurrentActiveJournalPeriodFor:(id)a3 from:(id)a4;
- (unint64_t)_removeDeliveredNotificationsFromNotificationCenterForSamples:(id)a3 journal:(id)a4;
- (void)_currentActiveJournal;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
@end

@implementation HDHRBloodPressureJournalBPSampleObserver

- (HDHRBloodPressureJournalBPSampleObserver)initWithProfile:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDHRBloodPressureJournalBPSampleObserver;
  v5 = [(HDHRBloodPressureJournalBPSampleObserver *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, v4);
    v8 = [v4 dataManager];
    v9 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
    [v8 addObserver:v6 forDataType:v9];
  }

  return v6;
}

- (id)_currentActiveJournal
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained heartHealthProfileExtension];
  v4 = [v3 bloodPressureJournalManager];

  v9 = 0;
  v5 = [v4 latestActiveBloodPressureJournalWithError:&v9];
  v6 = v9;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HDHRBloodPressureJournalBPSampleObserver _currentActiveJournal];
    }
  }

  return v5;
}

- (id)_samplesInCurrentActiveJournalPeriodFor:(id)a3 from:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v9 = [v6 journalStartDayFor:v8];

    v10 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v11 = [v6 notificationEndDateForIncompleteJournal:v10];

    if (!v11)
    {
      _HKInitializeLogging();
      v12 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [HDHRBloodPressureJournalBPSampleObserver _samplesInCurrentActiveJournalPeriodFor:v12 from:?];
      }

      v11 = v9;
    }

    v13 = MEMORY[0x277CCAC30];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __89__HDHRBloodPressureJournalBPSampleObserver__samplesInCurrentActiveJournalPeriodFor_from___block_invoke;
    v23 = &unk_278660598;
    v24 = v9;
    v25 = v11;
    v14 = v11;
    v15 = v9;
    v16 = [v13 predicateWithBlock:&v20];
    v17 = [v7 filteredArrayUsingPredicate:{v16, v20, v21, v22, v23}];
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = self;
      _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] There is no current active journal.", buf, 0xCu);
    }

    v17 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __89__HDHRBloodPressureJournalBPSampleObserver__samplesInCurrentActiveJournalPeriodFor_from___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 endDate];
  if ([v4 hk_isAfterOrEqualToDate:*(a1 + 32)])
  {
    v5 = [v3 endDate];
    v6 = [v5 hk_isBeforeOrEqualToDate:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_samplesFromCurrentDeviceIn:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained syncIdentityManager];
  v7 = [v6 currentSyncIdentity];
  v8 = [v7 entity];
  v9 = [v8 persistentID];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HDHRBloodPressureJournalBPSampleObserver__samplesFromCurrentDeviceIn___block_invoke;
  v13[3] = &__block_descriptor_40_e35_B24__0__HKSample_8__NSDictionary_16l;
  v13[4] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithBlock:v13];
  v11 = [v4 filteredArrayUsingPredicate:v10];

  return v11;
}

BOOL __72__HDHRBloodPressureJournalBPSampleObserver__samplesFromCurrentDeviceIn___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hd_dataOriginProvenance];
  v4 = [v3 syncIdentity] == *(a1 + 32);

  return v4;
}

- (BOOL)_regenerateNotificationsIfNecessaryWithJournalSamples:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if ([a3 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v5 = [WeakRetained heartHealthProfileExtension];
    v6 = [v5 bloodPressureJournalNotificationManager];

    v12 = 0;
    v7 = [v6 scheduleNotificationsWithReason:2 error:&v12];
    v8 = v12;
    if (v8)
    {
      _HKInitializeLogging();
      v9 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [HDHRBloodPressureJournalBPSampleObserver _regenerateNotificationsIfNecessaryWithJournalSamples:];
      }

      v7 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Samples do not belong to current active journal.", buf, 0xCu);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)_removeDeliveredNotificationsFromNotificationCenterForSamples:(id)a3 journal:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v9 = [WeakRetained heartHealthProfileExtension];
    v10 = [v9 bloodPressureJournalNotificationManager];

    v11 = [v10 removeDeliveredNotificationsForSamples:v6 journal:v7];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = self;
      _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Samples do not belong to current active journal.", &v15, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543618;
    v26 = self;
    v27 = 2048;
    v28 = [v5 count];
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Blood Pressure samples added. Number of samples added %lu", &v25, 0x16u);
  }

  v7 = [(HDHRBloodPressureJournalBPSampleObserver *)self _currentActiveJournal];
  v8 = [(HDHRBloodPressureJournalBPSampleObserver *)self _samplesInCurrentActiveJournalPeriodFor:v7 from:v5];
  v9 = [(HDHRBloodPressureJournalBPSampleObserver *)self _regenerateNotificationsIfNecessaryWithJournalSamples:v8];
  _HKInitializeLogging();
  v10 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543618;
    v26 = self;
    v27 = 1024;
    LODWORD(v28) = v9;
    _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Blood Pressure samples added. Regeneration success state  %{BOOL}d", &v25, 0x12u);
  }

  didRegenerateNotificationsHandler = self->_didRegenerateNotificationsHandler;
  if (didRegenerateNotificationsHandler)
  {
    didRegenerateNotificationsHandler[2](didRegenerateNotificationsHandler, v9);
  }

  v12 = [(HDHRBloodPressureJournalBPSampleObserver *)self _removeDeliveredNotificationsFromNotificationCenterForSamples:v8 journal:v7];
  _HKInitializeLogging();
  v13 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543618;
    v26 = self;
    v27 = 2048;
    v28 = v12;
    _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Blood Pressure samples added. Request sent to remove delivered notifications, requested notification identifier count %lu", &v25, 0x16u);
  }

  didRequestNotificationsRemovalHandler = self->_didRequestNotificationsRemovalHandler;
  if (didRequestNotificationsRemovalHandler)
  {
    didRequestNotificationsRemovalHandler[2](didRequestNotificationsRemovalHandler, v12);
  }

  v15 = [(HDHRBloodPressureJournalBPSampleObserver *)self _samplesFromCurrentDeviceIn:v8];
  v16 = [v15 count];
  if (v16)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v18 = [WeakRetained heartHealthProfileExtension];
    v19 = [v18 bloodPressureJournalNotificationSyncManager];

    [v19 bloodPressureSamplesAdded:v15 forJournal:v7];
    v20 = objc_loadWeakRetained(&self->_profile);
    v21 = [v20 heartHealthProfileExtension];
    v22 = [v21 bloodPressureJournalSyncRequester];
    [v22 requestStateSyncWithReason:@"Blood Pressure samples added"];
  }

  didTriggerSyncHandler = self->_didTriggerSyncHandler;
  if (didTriggerSyncHandler)
  {
    didTriggerSyncHandler[2](didTriggerSyncHandler, v16 != 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogBloodPressureJournal();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      v18 = 138544130;
      v19 = self;
      v20 = 2114;
      v21 = v17;
      v22 = 2114;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      _os_log_debug_impl(&dword_229486000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}@ samples of types removed: %{public}@. anchor: %{public}@", &v18, 0x2Au);
    }
  }

  v11 = [MEMORY[0x277CCD8D8] bloodPressureType];
  v12 = [v6 containsObject:v11];

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [WeakRetained heartHealthProfileExtension];
    v15 = [v14 bloodPressureJournalSyncRequester];
    [v15 requestStateSyncWithReason:@"Blood Pressure samples removed"];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_currentActiveJournal
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Failed to fetch latest active journal: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_samplesInCurrentActiveJournalPeriodFor:(uint64_t)a1 from:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to calculate journal end day. Got nil for journal End day.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_regenerateNotificationsIfNecessaryWithJournalSamples:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Failed to schedule notifications: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end