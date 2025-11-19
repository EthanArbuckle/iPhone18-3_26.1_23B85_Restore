@interface HDHealthMedicationsProfileExtension
- (HDHealthMedicationsProfileExtension)init;
- (HDHealthMedicationsProfileExtension)initWithProfile:(id)a3;
- (HDPrimaryProfile)profile;
- (id)createMedicationNotificationManager;
- (id)createMedicationNotificationSyncManager;
- (id)createMedicationScheduleManager;
- (id)createMedicationUserDefaults;
- (id)createMedicationsWidgetTimelineController;
- (void)start;
@end

@implementation HDHealthMedicationsProfileExtension

- (HDHealthMedicationsProfileExtension)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHealthMedicationsProfileExtension)initWithProfile:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDHealthMedicationsProfileExtension;
  v5 = [(HDHealthMedicationsProfileExtension *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    _HKInitializeLogging();
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      [v4 profileType];
      v9 = HKStringFromProfileType();
      *buf = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_25181C000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Plugin loaded for profileType %{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)start
{
  v3 = [(HDHealthMedicationsProfileExtension *)self createMedicationUserDefaults];
  medicationUserDefaults = self->_medicationUserDefaults;
  self->_medicationUserDefaults = v3;

  v5 = [(HDHealthMedicationsProfileExtension *)self createMedicationScheduleManager];
  medicationScheduleManager = self->_medicationScheduleManager;
  self->_medicationScheduleManager = v5;

  v7 = [[HDMedicationDataDonator alloc] initWithProfile:self];
  medicationsDataDonator = self->_medicationsDataDonator;
  self->_medicationsDataDonator = v7;

  v9 = [(HDHealthMedicationsProfileExtension *)self createMedicationNotificationSyncManager];
  medicationNotificationSyncManager = self->_medicationNotificationSyncManager;
  self->_medicationNotificationSyncManager = v9;

  v11 = [HDMedicationDoseEventObserver alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [(HDMedicationDoseEventObserver *)v11 initWithProfile:WeakRetained notificationSyncManager:self->_medicationNotificationSyncManager];
  medicationDoseEventObserver = self->_medicationDoseEventObserver;
  self->_medicationDoseEventObserver = v13;

  v15 = [HDMedicationPregnancyLactationStatusObserver alloc];
  v16 = objc_loadWeakRetained(&self->_profile);
  v17 = [(HDMedicationPregnancyLactationStatusObserver *)v15 initWithProfile:v16];
  medicationPregnancyLactationStatusObserver = self->_medicationPregnancyLactationStatusObserver;
  self->_medicationPregnancyLactationStatusObserver = v17;

  v19 = [HDMedicationPregnancyListConceptObserver alloc];
  v20 = objc_loadWeakRetained(&self->_profile);
  v21 = [(HDMedicationPregnancyListConceptObserver *)v19 initWithProfile:v20];
  medicationPregnancyListConceptObserver = self->_medicationPregnancyListConceptObserver;
  self->_medicationPregnancyListConceptObserver = v21;

  v23 = [[HDMedicationSyncRequester alloc] initWithProfileExtension:self];
  medicationSyncRequester = self->_medicationSyncRequester;
  self->_medicationSyncRequester = v23;

  v25 = [HDMedicationsDeviceScopedStorageManager alloc];
  v26 = objc_loadWeakRetained(&self->_profile);
  v27 = [(HDMedicationsDeviceScopedStorageManager *)v25 initWithProfile:v26];
  deviceScopedStorageManager = self->_deviceScopedStorageManager;
  self->_deviceScopedStorageManager = v27;

  v29 = objc_loadWeakRetained(&self->_profile);
  v30 = [v29 daemon];
  v31 = [v30 behavior];
  v32 = [v31 hkmd_supportsMedicationsWidget];

  if (v32)
  {
    v33 = [HDMedicationsWidgetSchedulingManager alloc];
    v34 = objc_loadWeakRetained(&self->_profile);
    v35 = [(HDMedicationsWidgetSchedulingManager *)v33 initWithProfile:v34];
    widgetSchedulingManager = self->_widgetSchedulingManager;
    self->_widgetSchedulingManager = v35;
  }

  v44 = HKLogMedication();
  v37 = objc_alloc(MEMORY[0x277CCCFE8]);
  v38 = objc_loadWeakRetained(&self->_profile);
  v39 = [v37 initWithLoggingCategory:v44 healthDataSource:v38];

  v40 = objc_alloc(MEMORY[0x277D105B0]);
  v41 = objc_loadWeakRetained(&self->_profile);
  v42 = [v40 initWithProfile:v41 eventSubmissionManager:v39 logCategory:v44 eventConstructor:&__block_literal_global_15];
  medicationDailyAnalyticsManager = self->_medicationDailyAnalyticsManager;
  self->_medicationDailyAnalyticsManager = v42;
}

HDMedicationDailyAnalyticsEvent *__44__HDHealthMedicationsProfileExtension_start__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDMedicationDailyAnalyticsEvent alloc] initWithProfile:v2];

  return v3;
}

- (id)createMedicationUserDefaults
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D114C8]];

  return v3;
}

- (id)createMedicationScheduleManager
{
  v3 = [(HDHealthMedicationsProfileExtension *)self createMedicationNotificationManager];
  v4 = [HDMedicationScheduleManager alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [(HDMedicationScheduleManager *)v4 initWithProfile:WeakRetained userDefaults:self->_medicationUserDefaults medicationNotificationManager:v3];

  return v6;
}

- (id)createMedicationNotificationManager
{
  v3 = HKCreateSerialDispatchQueue();
  v4 = objc_alloc(MEMORY[0x277D10838]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained healthDaemon];
  v7 = [v6 primaryProfile];
  v8 = [v4 initWithProfile:v7 clientIdentifier:@"HDMedicationNotificationManager" eventHandlerQueue:v3];

  v9 = objc_alloc(MEMORY[0x277D10838]);
  v10 = objc_loadWeakRetained(&self->_profile);
  v11 = [v10 healthDaemon];
  v12 = [v11 primaryProfile];
  v13 = [v9 initWithProfile:v12 clientIdentifier:@"MedicationExpirationAlarmIdentifier" eventHandlerQueue:v3];

  v14 = [HDMedicationNotificationManager alloc];
  v15 = objc_loadWeakRetained(&self->_profile);
  v16 = [(HDMedicationNotificationManager *)v14 initWithProfile:v15 userDefaults:self->_medicationUserDefaults alarmQueue:v3 restorableAlarm:v8 expirationAlarm:v13];

  return v16;
}

- (id)createMedicationNotificationSyncManager
{
  v2 = [[HDMedicationNotificationSyncManager alloc] initWithProfileExtension:self];

  return v2;
}

- (id)createMedicationsWidgetTimelineController
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [HDMedicationsWidgetSchedulingManager defaultMedicationsWidgetTimelineControllerForProfile:WeakRetained];

  return v3;
}

- (HDPrimaryProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end