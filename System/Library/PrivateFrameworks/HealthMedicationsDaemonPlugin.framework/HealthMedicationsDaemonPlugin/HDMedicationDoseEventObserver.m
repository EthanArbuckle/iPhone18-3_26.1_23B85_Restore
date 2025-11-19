@interface HDMedicationDoseEventObserver
- (BOOL)_rescheduleIfNecessaryWithDoseEvents:(id)a3;
- (HDMedicationDoseEventObserver)initWithProfile:(id)a3;
- (HDMedicationDoseEventObserver)initWithProfile:(id)a3 notificationSyncManager:(id)a4;
- (void)_logDoseEventSamplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
@end

@implementation HDMedicationDoseEventObserver

- (HDMedicationDoseEventObserver)initWithProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 healthMedicationsProfileExtension];
  v6 = [v5 medicationNotificationSyncManager];
  v7 = [(HDMedicationDoseEventObserver *)self initWithProfile:v4 notificationSyncManager:v6];

  return v7;
}

- (HDMedicationDoseEventObserver)initWithProfile:(id)a3 notificationSyncManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDMedicationDoseEventObserver;
  v8 = [(HDMedicationDoseEventObserver *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_notificationSyncManager, a4);
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v11 = [WeakRetained dataManager];
    v12 = [MEMORY[0x277CCD658] medicationDoseEventType];
    [v11 addObserver:v9 forDataType:v12];
  }

  return v9;
}

- (BOOL)_rescheduleIfNecessaryWithDoseEvents:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 hk_containsObjectPassingTest:&__block_literal_global_16];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v6 = [WeakRetained healthMedicationsProfileExtension];
    v7 = [v6 medicationScheduleManager];

    [v7 rescheduleMedicationsSynchronously:0];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = self;
      _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Samples added are of not schduled doses. Skipping reschedule.", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL __70__HDMedicationDoseEventObserver__rescheduleIfNecessaryWithDoseEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 logOrigin] == 2 && objc_msgSend(v2, "logStatus") != 1;

  return v3;
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogMedication();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      *buf = 138543874;
      v26 = self;
      v27 = 2114;
      v28 = v23;
      v29 = 2114;
      v30 = v7;
      _os_log_debug_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}@ new samples added. anchor: %{public}@", buf, 0x20u);
    }
  }

  [(HDMedicationDoseEventObserver *)self _logDoseEventSamplesAdded:v6 anchor:v7];
  v11 = [(HDMedicationDoseEventObserver *)self _rescheduleIfNecessaryWithDoseEvents:v6];
  samplesAddedDidRecheduleHandler = self->_samplesAddedDidRecheduleHandler;
  if (samplesAddedDidRecheduleHandler)
  {
    samplesAddedDidRecheduleHandler[2](samplesAddedDidRecheduleHandler, v11);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [WeakRetained syncIdentityManager];
  v15 = [v14 currentSyncIdentity];
  v16 = [v15 entity];
  v17 = [v16 persistentID];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__HDMedicationDoseEventObserver_samplesAdded_anchor___block_invoke;
  v24[3] = &__block_descriptor_40_e31_B16__0__HKMedicationDoseEvent_8l;
  v24[4] = v17;
  if ([v6 hk_containsObjectPassingTest:v24])
  {
    [(HDMedicationNotificationSyncManager *)self->_notificationSyncManager doseEventsAdded:v6];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ observed medication samples added", objc_opt_class()];
    v19 = objc_loadWeakRetained(&self->_profile);
    v20 = [v19 healthMedicationsProfileExtension];
    v21 = [v20 medicationSyncRequester];
    [v21 requestSyncsWithReason:v18];
  }

  v22 = *MEMORY[0x277D85DE8];
}

BOOL __53__HDMedicationDoseEventObserver_samplesAdded_anchor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hd_dataOriginProvenance];
  v5 = [v4 syncIdentity] == *(a1 + 32) && objc_msgSend(v3, "logStatus") != 1;

  return v5;
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogMedication();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      *buf = 138544130;
      v23 = self;
      v24 = 2114;
      v25 = v21;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      _os_log_debug_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}@ samples of types removed: %{public}@. anchor: %{public}@", buf, 0x2Au);
    }
  }

  v11 = [MEMORY[0x277CCD658] medicationDoseEventType];
  v12 = [v6 containsObject:v11];

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogMedication();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      v15 = HKLogMedication();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v23 = self;
        _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_INFO, "[%{public}@] dose event samples removed, requesting sync", buf, 0xCu);
      }
    }

    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ observed medication samples removed", objc_opt_class()];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v18 = [WeakRetained healthMedicationsProfileExtension];
    v19 = [v18 medicationSyncRequester];
    [v19 requestSyncsWithReason:v16];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_logDoseEventSamplesAdded:(id)a3 anchor:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v6 count] <= 9)
  {
    [v8 appendFormat:@"["];
    [v8 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v6, &__block_literal_global_343_0}];
    [v8 appendFormat:@"]"];
  }

  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138544130;
    v12 = self;
    v13 = 2048;
    v14 = [v6 count];
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] %ld dose event samples added. anchor: %{public}@ %{public}@", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __66__HDMedicationDoseEventObserver__logDoseEventSamplesAdded_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 UUID];
  v3 = [v2 hk_shortRepresentation];

  return v3;
}

@end