@interface HDMedicationDoseEventObserver
- (BOOL)_rescheduleIfNecessaryWithDoseEvents:(id)events;
- (HDMedicationDoseEventObserver)initWithProfile:(id)profile;
- (HDMedicationDoseEventObserver)initWithProfile:(id)profile notificationSyncManager:(id)manager;
- (void)_logDoseEventSamplesAdded:(id)added anchor:(id)anchor;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
@end

@implementation HDMedicationDoseEventObserver

- (HDMedicationDoseEventObserver)initWithProfile:(id)profile
{
  profileCopy = profile;
  healthMedicationsProfileExtension = [profileCopy healthMedicationsProfileExtension];
  medicationNotificationSyncManager = [healthMedicationsProfileExtension medicationNotificationSyncManager];
  v7 = [(HDMedicationDoseEventObserver *)self initWithProfile:profileCopy notificationSyncManager:medicationNotificationSyncManager];

  return v7;
}

- (HDMedicationDoseEventObserver)initWithProfile:(id)profile notificationSyncManager:(id)manager
{
  profileCopy = profile;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = HDMedicationDoseEventObserver;
  v8 = [(HDMedicationDoseEventObserver *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_notificationSyncManager, manager);
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    dataManager = [WeakRetained dataManager];
    medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
    [dataManager addObserver:v9 forDataType:medicationDoseEventType];
  }

  return v9;
}

- (BOOL)_rescheduleIfNecessaryWithDoseEvents:(id)events
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [events hk_containsObjectPassingTest:&__block_literal_global_16];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    healthMedicationsProfileExtension = [WeakRetained healthMedicationsProfileExtension];
    medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

    [medicationScheduleManager rescheduleMedicationsSynchronously:0];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy = self;
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

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v31 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  anchorCopy = anchor;
  _HKInitializeLogging();
  v8 = HKLogMedication();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(addedCopy, "count")}];
      *buf = 138543874;
      selfCopy = self;
      v27 = 2114;
      v28 = v23;
      v29 = 2114;
      v30 = anchorCopy;
      _os_log_debug_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}@ new samples added. anchor: %{public}@", buf, 0x20u);
    }
  }

  [(HDMedicationDoseEventObserver *)self _logDoseEventSamplesAdded:addedCopy anchor:anchorCopy];
  v11 = [(HDMedicationDoseEventObserver *)self _rescheduleIfNecessaryWithDoseEvents:addedCopy];
  samplesAddedDidRecheduleHandler = self->_samplesAddedDidRecheduleHandler;
  if (samplesAddedDidRecheduleHandler)
  {
    samplesAddedDidRecheduleHandler[2](samplesAddedDidRecheduleHandler, v11);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  syncIdentityManager = [WeakRetained syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
  entity = [currentSyncIdentity entity];
  persistentID = [entity persistentID];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__HDMedicationDoseEventObserver_samplesAdded_anchor___block_invoke;
  v24[3] = &__block_descriptor_40_e31_B16__0__HKMedicationDoseEvent_8l;
  v24[4] = persistentID;
  if ([addedCopy hk_containsObjectPassingTest:v24])
  {
    [(HDMedicationNotificationSyncManager *)self->_notificationSyncManager doseEventsAdded:addedCopy];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ observed medication samples added", objc_opt_class()];
    v19 = objc_loadWeakRetained(&self->_profile);
    healthMedicationsProfileExtension = [v19 healthMedicationsProfileExtension];
    medicationSyncRequester = [healthMedicationsProfileExtension medicationSyncRequester];
    [medicationSyncRequester requestSyncsWithReason:v18];
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

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  v30 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  anchorCopy = anchor;
  _HKInitializeLogging();
  v8 = HKLogMedication();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(removedCopy, "count")}];
      *buf = 138544130;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v21;
      v26 = 2114;
      v27 = removedCopy;
      v28 = 2114;
      v29 = anchorCopy;
      _os_log_debug_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}@ samples of types removed: %{public}@. anchor: %{public}@", buf, 0x2Au);
    }
  }

  medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
  v12 = [removedCopy containsObject:medicationDoseEventType];

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
        selfCopy2 = self;
        _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_INFO, "[%{public}@] dose event samples removed, requesting sync", buf, 0xCu);
      }
    }

    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ observed medication samples removed", objc_opt_class()];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    healthMedicationsProfileExtension = [WeakRetained healthMedicationsProfileExtension];
    medicationSyncRequester = [healthMedicationsProfileExtension medicationSyncRequester];
    [medicationSyncRequester requestSyncsWithReason:v16];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_logDoseEventSamplesAdded:(id)added anchor:(id)anchor
{
  v19 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  anchorCopy = anchor;
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([addedCopy count] <= 9)
  {
    [v8 appendFormat:@"["];
    [v8 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{addedCopy, &__block_literal_global_343_0}];
    [v8 appendFormat:@"]"];
  }

  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138544130;
    selfCopy = self;
    v13 = 2048;
    v14 = [addedCopy count];
    v15 = 2114;
    v16 = anchorCopy;
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