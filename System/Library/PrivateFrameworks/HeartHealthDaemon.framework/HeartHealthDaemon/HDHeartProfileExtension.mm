@interface HDHeartProfileExtension
- (HDHeartProfileExtension)initWithProfile:(id)a3;
- (HDHeartProfileExtension)initWithProfile:(id)a3 heartNotificationsUserDefaults:(id)a4;
- (HDPrimaryProfile)profile;
- (HKFeatureStatusManager)irregularRhythmNotificationsFeatureStatusManager;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
- (void)_setupBloodPressureDailyAnalyticsManagerWithProfile:(id)a3;
- (void)_setupBloodPressureJournalManagerWithProfile:(id)a3;
- (void)_setupBloodPressureJournalNotificationManagerWithProfile:(id)a3;
- (void)_setupBloodPressureJournalNotificationSyncManagerWithProfile:(id)a3;
- (void)_setupBloodPressureJournalSyncRequesterWithProfile:(id)a3;
- (void)_setupBloodPressureJournalTimeZoneObserverWithProfile:(id)a3;
- (void)_setupBloodPressureSampleObserverWithProfile:(id)a3;
- (void)_setupElectrocardiogramRecordingWithProfile:(id)a3;
- (void)_setupHypertensionNotificationsWithProfile:(id)a3;
- (void)_triggerImmediateSyncWithReason:(id)a3;
- (void)profileDidBecomeReady:(id)a3;
- (void)settingsMigrationManagerDidCompleteMigration:(id)a3 didRunMigrationSteps:(BOOL)a4;
- (void)watchSettingsReconciliationManager:(id)a3 didReconcileValuesForKeys:(id)a4 didUpdateFeatureSetting:(BOOL)a5 didUpdateUserDefault:(BOOL)a6;
@end

@implementation HDHeartProfileExtension

- (HDHeartProfileExtension)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDHeartProfileExtension;
  v5 = [(HDHeartProfileExtension *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (HDHeartProfileExtension)initWithProfile:(id)a3 heartNotificationsUserDefaults:(id)a4
{
  v125 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v122.receiver = self;
  v122.super_class = HDHeartProfileExtension;
  v8 = [(HDHeartProfileExtension *)&v122 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  objc_storeWeak(&v8->_profile, v6);
  objc_storeStrong(&v9->_heartNotificationsUserDefaults, a4);
  v10 = [MEMORY[0x277CCDD30] sharedBehavior];
  v11 = [v10 isAppleWatch];

  if (v11)
  {
    v12 = [HDHeartRateWidgetDataManager alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v14 = [(HDHeartRateWidgetDataManager *)v12 initWithProfile:WeakRetained];
    heartRateDataManager = v9->_heartRateDataManager;
    v9->_heartRateDataManager = v14;

    v16 = [HDHRHealthLiteDataCollector alloc];
    v17 = objc_loadWeakRetained(&v9->_profile);
    v18 = [(HDHRHealthLiteDataCollector *)v16 initWithProfile:v17];
    healthLiteDataCollector = v9->_healthLiteDataCollector;
    v9->_healthLiteDataCollector = v18;

    v20 = [HDHRDailyHeartRateManager alloc];
    v21 = objc_loadWeakRetained(&v9->_profile);
    v22 = [(HDHRDailyHeartRateManager *)v20 initWithProfile:v21];
    dailyHeartRateManager = v9->_dailyHeartRateManager;
    v9->_dailyHeartRateManager = v22;

    v24 = [HDHRNotificationManager alloc];
    dailyAnalyticsActivity = objc_loadWeakRetained(&v9->_profile);
    v26 = [(HDHRNotificationManager *)v24 initWithProfile:dailyAnalyticsActivity];
    heartRateNotificationManager = v9->_heartRateNotificationManager;
    v9->_heartRateNotificationManager = v26;
  }

  else
  {
    if ([v6 profileType] != 1)
    {
      goto LABEL_7;
    }

    v28 = [[HDHRCardioFitnessAnalyticsDailyEventActivity alloc] initWithProfile:v6];
    dailyAnalyticsActivity = v9->_dailyAnalyticsActivity;
    v9->_dailyAnalyticsActivity = v28;
  }

LABEL_7:
  if ([v6 profileType] == 1)
  {
    v29 = [MEMORY[0x277D106D8] hdhr_makeCardioFitnessFeatureAvailabilityManagerWithProfile:v6];
    cardioFitnessFeatureAvailabilityManager = v9->_cardioFitnessFeatureAvailabilityManager;
    v9->_cardioFitnessFeatureAvailabilityManager = v29;

    v31 = objc_loadWeakRetained(&v9->_profile);
    v32 = [v31 daemon];
    v33 = [v32 behavior];
    v34 = [v33 isCompanionCapable];

    if (v34)
    {
      v35 = [[HDHRCardioFitnessBackgroundFeatureDeliverySettingsProvider alloc] initWithHeartRateSettingsDefaults:v9->_heartNotificationsUserDefaults];
      v36 = objc_alloc(MEMORY[0x277D105D8]);
      v37 = [v36 initWithProfile:v6 featureAvailabilityExtension:v9->_cardioFitnessFeatureAvailabilityManager deliveryCriteria:0 settingsProvider:v35 loggingCategory:*MEMORY[0x277CCC2D0]];
      cardioFitnessBackgroundFeatureDeliveryManager = v9->_cardioFitnessBackgroundFeatureDeliveryManager;
      v9->_cardioFitnessBackgroundFeatureDeliveryManager = v37;

      v39 = [objc_alloc(MEMORY[0x277D10858]) initWithProfile:v6 heartNotificationsUserDefaults:v9->_heartNotificationsUserDefaults delegate:v9];
      settingsMigrationManager = v9->_settingsMigrationManager;
      v9->_settingsMigrationManager = v39;
    }
  }

  v41 = objc_alloc(MEMORY[0x277D107C0]);
  v42 = [v6 daemon];
  v43 = *MEMORY[0x277CCC088];
  v44 = [v41 initWithDaemon:v42 featureIdentifier:*MEMORY[0x277CCC088]];

  v45 = [HDHRHeartRateNotificationsFeatureAvailabilityManager alloc];
  v46 = [v6 daemon];
  v47 = [v46 nanoRegistryDeviceCapabilityProvider];
  v121 = v44;
  v48 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)v45 initWithFeatureIdentifier:v43 notificationSettingsDefaults:v7 pairedDeviceCapabilityProvider:v47 disableAndExpiryProvider:v44];
  lowHeartRateNotificationsFeatureAvailabilityManager = v9->_lowHeartRateNotificationsFeatureAvailabilityManager;
  v9->_lowHeartRateNotificationsFeatureAvailabilityManager = v48;

  v50 = objc_alloc(MEMORY[0x277D107C0]);
  v51 = [v6 daemon];
  v52 = *MEMORY[0x277CCC060];
  v53 = [v50 initWithDaemon:v51 featureIdentifier:*MEMORY[0x277CCC060]];

  v54 = [HDHRHeartRateNotificationsFeatureAvailabilityManager alloc];
  v55 = [v6 daemon];
  v56 = [v55 nanoRegistryDeviceCapabilityProvider];
  v57 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)v54 initWithFeatureIdentifier:v52 notificationSettingsDefaults:v7 pairedDeviceCapabilityProvider:v56 disableAndExpiryProvider:v53];
  highHeartRateNotificationsFeatureAvailabilityManager = v9->_highHeartRateNotificationsFeatureAvailabilityManager;
  v9->_highHeartRateNotificationsFeatureAvailabilityManager = v57;

  v59 = [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager alloc];
  v60 = [v6 daemon];
  v61 = HDHRIrregularRhythmNotificationsV2PairedFeaturePropertiesSyncManager(v60);
  v62 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v59 initWithProfile:v6 v2PairedFeaturePropertiesSyncManager:v61 notificationSettingDefaults:v9->_heartNotificationsUserDefaults];
  irregularRhythmNotificationsAvailabilityManager = v9->_irregularRhythmNotificationsAvailabilityManager;
  v9->_irregularRhythmNotificationsAvailabilityManager = v62;

  if ([v6 profileType] == 1)
  {
    v64 = [MEMORY[0x277CCDD30] sharedBehavior];
    v65 = [v64 isAppleWatch];

    if ((v65 & 1) == 0)
    {
      v66 = [HDHRIrregularRhythmNotificationsSettingMigrator alloc];
      v67 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v1FeatureAvailabilityManager];
      v68 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v2FeatureAvailabilityManager];
      v69 = [(HDHRIrregularRhythmNotificationsSettingMigrator *)v66 initWithV1FeatureAvailabilityManager:v67 v2FeatureAvailabilityManager:v68];
      irregularRhythmNotificationsSettingMigrator = v9->_irregularRhythmNotificationsSettingMigrator;
      v9->_irregularRhythmNotificationsSettingMigrator = v69;
    }
  }

  v71 = [HDHRAFibBurdenProfileExtensionComponents makeComponentsForProfile:v6];
  aFibBurdenComponents = v9->_aFibBurdenComponents;
  v9->_aFibBurdenComponents = v71;

  v73 = [v6 daemon];
  v74 = [v73 behavior];
  v75 = [v74 features];
  v76 = [v75 chutney];

  v77 = [MEMORY[0x277D106D8] bloodPressureJournalFeatureAvailabilityManagerWithProfile:v6];
  bloodPressureJournalFeatureAvailabilityManager = v9->_bloodPressureJournalFeatureAvailabilityManager;
  v9->_bloodPressureJournalFeatureAvailabilityManager = v77;

  if (v76)
  {
    v79 = objc_alloc(MEMORY[0x277D105D8]);
    v80 = v9->_bloodPressureJournalFeatureAvailabilityManager;
    v81 = HKLogBloodPressureJournal();
    v82 = [v79 initWithProfile:v6 featureAvailabilityExtension:v80 loggingCategory:v81];
    bloodPressureJournalBackgroundFeatureDeliveryManager = v9->_bloodPressureJournalBackgroundFeatureDeliveryManager;
    v9->_bloodPressureJournalBackgroundFeatureDeliveryManager = v82;
  }

  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalManagerWithProfile:v6];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalNotificationManagerWithProfile:v6];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalSyncRequesterWithProfile:v6];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureSampleObserverWithProfile:v6];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalTimeZoneObserverWithProfile:v6];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalNotificationSyncManagerWithProfile:v6];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureDailyAnalyticsManagerWithProfile:v6];
  [(HDHeartProfileExtension *)v9 _setupHypertensionNotificationsWithProfile:v6];
  v84 = objc_loadWeakRetained(&v9->_profile);
  v85 = [v84 daemon];
  v86 = [v85 behavior];
  v87 = [v86 isCompanionCapable];

  if (v87)
  {
    v88 = [HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria alloc];
    v89 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v1FeatureAvailabilityManager];
    v90 = [(HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria *)v88 initWithV1FeatureAvailabilityManager:v89];

    v91 = objc_alloc(MEMORY[0x277D105D8]);
    v92 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v2FeatureAvailabilityManager];
    v93 = objc_alloc_init(HDHRIrregularRhythmNotificationsV1SettingsProvider);
    v94 = MEMORY[0x277CCC2D8];
    v95 = [v91 initWithProfile:v6 featureAvailabilityExtension:v92 deliveryCriteria:v90 settingsProvider:v93 loggingCategory:*MEMORY[0x277CCC2D8]];
    irregularRhythmNotificationsV2DeliveryManager = v9->_irregularRhythmNotificationsV2DeliveryManager;
    v9->_irregularRhythmNotificationsV2DeliveryManager = v95;

    v97 = [HDHRIrregularRhythmNotificationsV2UpgradeManager alloc];
    v98 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v1FeatureAvailabilityManager];
    v99 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v2FeatureAvailabilityManager];
    hypertensionNotificationsAvailabilityManager = v9->_hypertensionNotificationsAvailabilityManager;
    v101 = [objc_alloc(MEMORY[0x277CCCFE8]) initWithLoggingCategory:*v94 healthDataSource:v6];
    v102 = [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)v97 initWithProfile:v6 v1FeatureAvailabilityManager:v98 v2FeatureAvailabilityManager:v99 hypertensionNotificationsFeatureAvailabilityManager:hypertensionNotificationsAvailabilityManager analyticsSubmissionManager:v101];
    irregularRhythmNotificationsV2UpgradeManager = v9->_irregularRhythmNotificationsV2UpgradeManager;
    v9->_irregularRhythmNotificationsV2UpgradeManager = v102;
  }

  v104 = [MEMORY[0x277CCDD30] sharedBehavior];
  v105 = [v104 isAppleWatch];

  if (v105)
  {
    v106 = [HRAtrialFibrillationNotificationManager alloc];
    v107 = [(HDHeartProfileExtension *)v9 irregularRhythmNotificationsFeatureStatusManager];
    v108 = [(HRAtrialFibrillationNotificationManager *)v106 initWithProfile:v6 featureStatusManager:v107];
    atrialFibrillationNotificationManager = v9->_atrialFibrillationNotificationManager;
    v9->_atrialFibrillationNotificationManager = v108;

    v110 = [HRAtrialFibrillationEventDetector alloc];
    v111 = v9->_irregularRhythmNotificationsAvailabilityManager;
    v112 = [(HDHeartProfileExtension *)v9 irregularRhythmNotificationsFeatureStatusManager];
    v113 = [(HRAtrialFibrillationEventDetector *)v110 initWithProfile:v6 availabilityManager:v111 featureStatusManager:v112 notificationManager:v9->_atrialFibrillationNotificationManager];
    atrialFibrillationEventDetector = v9->_atrialFibrillationEventDetector;
    v9->_atrialFibrillationEventDetector = v113;
  }

  [(HDHeartProfileExtension *)v9 _setupElectrocardiogramRecordingWithProfile:v6];
  v115 = HKCreateSerialDispatchQueue();
  [v6 registerProfileReadyObserver:v9 queue:v115];

  _HKInitializeLogging();
  v116 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    v117 = objc_opt_class();
    *buf = 138543362;
    v124 = v117;
    v118 = v117;
    _os_log_impl(&dword_229486000, v116, OS_LOG_TYPE_DEFAULT, "[%{public}@] Plugin loaded", buf, 0xCu);
  }

LABEL_22:
  v119 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HKFeatureStatusManager)irregularRhythmNotificationsFeatureStatusManager
{
  irregularRhythmNotificationsFeatureStatusManager = self->_irregularRhythmNotificationsFeatureStatusManager;
  if (!irregularRhythmNotificationsFeatureStatusManager)
  {
    v4 = objc_alloc(MEMORY[0x277CCD460]);
    irregularRhythmNotificationsAvailabilityManager = self->_irregularRhythmNotificationsAvailabilityManager;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v7 = [v4 initWithFeatureAvailabilityProviding:irregularRhythmNotificationsAvailabilityManager healthDataSource:WeakRetained];
    v8 = self->_irregularRhythmNotificationsFeatureStatusManager;
    self->_irregularRhythmNotificationsFeatureStatusManager = v7;

    irregularRhythmNotificationsFeatureStatusManager = self->_irregularRhythmNotificationsFeatureStatusManager;
  }

  return irregularRhythmNotificationsFeatureStatusManager;
}

- (void)_setupBloodPressureJournalManagerWithProfile:(id)a3
{
  v4 = a3;
  v5 = [[HDHRBloodPressureJournalManager alloc] initWithProfile:v4];

  bloodPressureJournalManager = self->_bloodPressureJournalManager;
  self->_bloodPressureJournalManager = v5;
}

- (void)_setupBloodPressureJournalNotificationManagerWithProfile:(id)a3
{
  v4 = a3;
  v5 = [[HDHRBloodPressureJournalNotificationManager alloc] initWithProfile:v4];

  bloodPressureJournalNotificationManager = self->_bloodPressureJournalNotificationManager;
  self->_bloodPressureJournalNotificationManager = v5;
}

- (void)_setupBloodPressureJournalNotificationSyncManagerWithProfile:(id)a3
{
  v4 = a3;
  v5 = [[HDHRBloodPressureJournalNotificationSyncManager alloc] initWithProfile:v4];

  bloodPressureJournalNotificationSyncManager = self->_bloodPressureJournalNotificationSyncManager;
  self->_bloodPressureJournalNotificationSyncManager = v5;
}

- (void)_setupBloodPressureJournalSyncRequesterWithProfile:(id)a3
{
  v4 = a3;
  v5 = [[HDHRBloodPressureJournalSyncRequester alloc] initWithProfile:v4];

  bloodPressureJournalSyncRequester = self->_bloodPressureJournalSyncRequester;
  self->_bloodPressureJournalSyncRequester = v5;
}

- (void)_setupBloodPressureSampleObserverWithProfile:(id)a3
{
  v4 = a3;
  v5 = [[HDHRBloodPressureJournalBPSampleObserver alloc] initWithProfile:v4];

  bloodPressureSampleObserver = self->_bloodPressureSampleObserver;
  self->_bloodPressureSampleObserver = v5;
}

- (void)_setupBloodPressureJournalTimeZoneObserverWithProfile:(id)a3
{
  v4 = a3;
  v5 = [[HDHRBloodPressureJournalTimeZoneObserver alloc] initWithProfile:v4];

  bloodPressureJournalTimeZoneObserver = self->_bloodPressureJournalTimeZoneObserver;
  self->_bloodPressureJournalTimeZoneObserver = v5;
}

- (void)_setupBloodPressureDailyAnalyticsManagerWithProfile:(id)a3
{
  v9 = a3;
  if ([v9 profileType] == 1)
  {
    v4 = objc_alloc(MEMORY[0x277CCCFE8]);
    v5 = MEMORY[0x277CCC2D0];
    v6 = [v4 initWithLoggingCategory:*MEMORY[0x277CCC2D0] healthDataSource:v9];
    v7 = [objc_alloc(MEMORY[0x277D105B0]) initWithProfile:v9 eventSubmissionManager:v6 logCategory:*v5 eventConstructor:&__block_literal_global_3];
    bloodPressureDailyEventManager = self->_bloodPressureDailyEventManager;
    self->_bloodPressureDailyEventManager = v7;
  }
}

HDHRBloodPressureDailyAnalyticsEvent *__79__HDHeartProfileExtension__setupBloodPressureDailyAnalyticsManagerWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDHRBloodPressureDailyAnalyticsEvent alloc] initWithProfile:v2];

  return v3;
}

- (void)_setupElectrocardiogramRecordingWithProfile:(id)a3
{
  v16 = a3;
  v4 = [HDHRElectrocardiogramRecordingFeatureAvailabilityManager alloc];
  v5 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v6 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)v4 initWithProfile:v16 cacheDefaults:v5];
  electrocardiogramRecordingAvailabilityManager = self->_electrocardiogramRecordingAvailabilityManager;
  self->_electrocardiogramRecordingAvailabilityManager = v6;

  v8 = [MEMORY[0x277CCDD30] sharedBehavior];
  LODWORD(v5) = [v8 isCompanionCapable];

  if (v5)
  {
    v9 = [HDHRElectrocardiogramRecordingV2UpgradeManager alloc];
    v10 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self->_electrocardiogramRecordingAvailabilityManager v1FeatureAvailabilityManager];
    v11 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self->_electrocardiogramRecordingAvailabilityManager v2FeatureAvailabilityManager];
    v12 = objc_alloc(MEMORY[0x277CCCFE8]);
    v13 = [v12 initWithLoggingCategory:*MEMORY[0x277CCC2D8] healthDataSource:v16];
    v14 = [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v9 initWithProfile:v16 v1FeatureAvailabilityManager:v10 v2FeatureAvailabilityManager:v11 analyticsSubmissionManager:v13];
    electrocardiogramRecordingV2DeliveryManager = self->_electrocardiogramRecordingV2DeliveryManager;
    self->_electrocardiogramRecordingV2DeliveryManager = v14;
  }
}

- (void)_setupHypertensionNotificationsWithProfile:(id)a3
{
  v64 = a3;
  v4 = *MEMORY[0x277CCC068];
  v5 = [MEMORY[0x277D12FD8] requirementSet];
  v6 = objc_alloc(MEMORY[0x277D10728]);
  v7 = [MEMORY[0x277CCD260] localAvailabilityForHypertensionNotifications];
  v8 = [v64 daemon];
  v9 = [v6 initWithFeatureIdentifier:v4 defaultCountrySet:v7 healthDaemon:v8];

  v10 = objc_alloc(MEMORY[0x277D107D8]);
  v11 = HKHRHypertensionNotificationsLocalFeatureAttributes();
  v62 = v9;
  v12 = [v10 initWithFeatureIdentifier:v4 localFeatureAttributes:v11 localCountrySetAvailabilityProvider:v9];

  if ([v64 profileType] == 1)
  {
    [v12 synchronizeLocalProperties];
  }

  v13 = [MEMORY[0x277CCDD30] sharedBehavior];
  v14 = [v13 isAppleWatch];

  v15 = objc_alloc(MEMORY[0x277CCAD78]);
  if (v14)
  {
    v16 = @"BADB0622-1CC0-4CE0-BF07-1B79D4FC28BB";
  }

  else
  {
    v16 = @"A0A8CBBD-8F56-46ED-A36B-446D452C0515";
  }

  v17 = [v15 initWithUUIDString:v16];
  v18 = objc_alloc(MEMORY[0x277D10968]);
  v19 = MEMORY[0x277CCC2D0];
  v20 = [v18 initWithAllowedCountriesDataSource:v12 profile:v64 featureCapability:v17 loggingCategory:*MEMORY[0x277CCC2D0]];
  v21 = objc_alloc(MEMORY[0x277D107C0]);
  v22 = [v64 daemon];
  v23 = [v21 initWithDaemon:v22 featureIdentifier:v4];

  v61 = v20;
  v63 = v5;
  v24 = [objc_alloc(MEMORY[0x277D106D8]) initWithProfile:v64 featureIdentifier:v4 availabilityRequirements:v5 currentOnboardingVersion:1 pairedDeviceCapability:v17 pairedFeatureAttributesProvider:v12 regionAvailabilityProvider:v20 disableAndExpiryProvider:v23 loggingCategory:*v19];
  hypertensionNotificationsAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;
  self->_hypertensionNotificationsAvailabilityManager = v24;

  v26 = [v64 daemon];
  v27 = [v26 behavior];
  v28 = [v27 features];
  v29 = [v28 hermit];

  if (v29)
  {
    v30 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v64 featureAvailabilityExtension:self->_hypertensionNotificationsAvailabilityManager loggingCategory:*v19];
    hypertensionNotificationsBackgroundFeatureDeliveryManager = self->_hypertensionNotificationsBackgroundFeatureDeliveryManager;
    self->_hypertensionNotificationsBackgroundFeatureDeliveryManager = v30;
  }

  v32 = objc_alloc(MEMORY[0x277CCD460]);
  v33 = self->_hypertensionNotificationsAvailabilityManager;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v35 = [v32 initWithFeatureAvailabilityProviding:v33 healthDataSource:WeakRetained];

  v36 = [v64 daemon];
  v37 = [v36 behavior];
  if ([v37 isCompanionCapable] && objc_msgSend(v64, "profileType") == 1)
  {
    v38 = [MEMORY[0x277CCDD30] sharedBehavior];
    v39 = [v38 features];
    v40 = [v39 hermit];

    if (v40)
    {
      v41 = [[HDHRHypertensionNotificationsRescindedAlertManager alloc] initWithProfile:v64 featureStatusProvider:v35];
      hypertensionNotificationsRescindedAlertManager = self->_hypertensionNotificationsRescindedAlertManager;
      self->_hypertensionNotificationsRescindedAlertManager = v41;

      v43 = [[HDHRHypertensionMeasurementAnalyzer alloc] initWithProfile:v64];
      hypertensionMeasurementAnalyzer = self->_hypertensionMeasurementAnalyzer;
      self->_hypertensionMeasurementAnalyzer = v43;

      uiTriggerObserver = [[HDHRPregnancySampleProvider alloc] initWithProfile:v64];
      v46 = [[HDHRPregnancyStateProvider alloc] initWithPregnancySampleProvider:uiTriggerObserver];
      v47 = [[HDHRHypertensionNotificationsAnalysisScheduler alloc] initWithProfile:v64 featureStatusProvider:v35 pregnancyStateProvider:v46 measurementAnalyzer:self->_hypertensionMeasurementAnalyzer];
      hypertensionNotificationsAnalysisScheduler = self->_hypertensionNotificationsAnalysisScheduler;
      self->_hypertensionNotificationsAnalysisScheduler = v47;

      v49 = [[HDHRHypertensionNotificationManager alloc] initWithProfile:v64];
      hypertensionNotificationManager = self->_hypertensionNotificationManager;
      self->_hypertensionNotificationManager = v49;

      v51 = [v64 daemon];
      v52 = [v51 behavior];
      v53 = [v52 isAppleInternalInstall];

      if (v53)
      {
        v54 = [HDHRHypertensionNotificationsSettingsResetter alloc];
        v55 = [MEMORY[0x277D10718] hdhr_hypertensionNotificationsSyncedDomainForProfile:v64];
        v56 = [(HDHRHypertensionNotificationsSettingsResetter *)v54 initWithKeyValueDomain:v55 featureAvailabilityProvider:self->_hypertensionNotificationsAvailabilityManager];
        hypertensionNotificationsSettingsResetter = self->_hypertensionNotificationsSettingsResetter;
        self->_hypertensionNotificationsSettingsResetter = v56;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  if ([v64 profileType] == 1)
  {
    v58 = [MEMORY[0x277CCDD30] sharedBehavior];
    v59 = [v58 isAppleWatch];

    if (v59)
    {
      v60 = [[HDHRCarouselUITriggerObserver alloc] initWithProfile:v64];
      uiTriggerObserver = self->_uiTriggerObserver;
      self->_uiTriggerObserver = v60;
LABEL_18:
    }
  }
}

- (void)profileDidBecomeReady:(id)a3
{
  v11 = a3;
  if ([v11 profileType] == 1)
  {
    v4 = [MEMORY[0x277CCDD30] sharedBehavior];
    v5 = [v4 isAppleWatch];

    if ((v5 & 1) == 0)
    {
      v6 = [HDHRHeartbeatSeriesFeatureExclusivityManager alloc];
      v7 = [(HDHeartProfileExtension *)self irregularRhythmNotificationsFeatureStatusManager];
      v8 = [(HDHRAFibBurdenProfileExtensionComponents *)self->_aFibBurdenComponents featureStatusManager];
      v9 = [(HDHRHeartbeatSeriesFeatureExclusivityManager *)v6 initWithIrregularRhythmNotificationsStatusManager:v7 aFibHistoryStatusManager:v8 profile:v11];
      heartbeatSeriesFeatureExclusivityManager = self->_heartbeatSeriesFeatureExclusivityManager;
      self->_heartbeatSeriesFeatureExclusivityManager = v9;
    }
  }
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277CCC000]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_cardioFitnessFeatureAvailabilityManager;
LABEL_3:
    v6 = cardioFitnessFeatureAvailabilityManager;
LABEL_6:
    v7 = v6;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCBFF0]])
  {
    v6 = [(HDHRAFibBurdenProfileExtensionComponents *)self->_aFibBurdenComponents featureAvailabilityManager];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC088]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_lowHeartRateNotificationsFeatureAvailabilityManager;
    goto LABEL_3;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC060]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_highHeartRateNotificationsFeatureAvailabilityManager;
    goto LABEL_3;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC070]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_irregularRhythmNotificationsAvailabilityManager;
    goto LABEL_3;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC078]])
  {
    irregularRhythmNotificationsAvailabilityManager = self->_irregularRhythmNotificationsAvailabilityManager;
LABEL_18:
    v6 = [irregularRhythmNotificationsAvailabilityManager v1FeatureAvailabilityManager];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC080]])
  {
    electrocardiogramRecordingAvailabilityManager = self->_irregularRhythmNotificationsAvailabilityManager;
LABEL_21:
    v6 = [electrocardiogramRecordingAvailabilityManager v2FeatureAvailabilityManager];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC068]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;
    goto LABEL_3;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC010]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_electrocardiogramRecordingAvailabilityManager;
    goto LABEL_3;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC018]])
  {
    irregularRhythmNotificationsAvailabilityManager = self->_electrocardiogramRecordingAvailabilityManager;
    goto LABEL_18;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC020]])
  {
    electrocardiogramRecordingAvailabilityManager = self->_electrocardiogramRecordingAvailabilityManager;
    goto LABEL_21;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCBFF8]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_bloodPressureJournalFeatureAvailabilityManager;
    goto LABEL_3;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)settingsMigrationManagerDidCompleteMigration:(id)a3 didRunMigrationSteps:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v7 = v20;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings migration finished, initiating watch settings manager", buf, 0xCu);
  }

  settingsMigrationManager = self->_settingsMigrationManager;
  self->_settingsMigrationManager = 0;

  v9 = objc_alloc(MEMORY[0x277D10978]);
  v10 = [(HDHeartProfileExtension *)self profile];
  heartNotificationsUserDefaults = self->_heartNotificationsUserDefaults;
  v12 = objc_alloc(MEMORY[0x277D10970]);
  v13 = [v12 initWithFeatureIdentifier:*MEMORY[0x277CCC000] defaultsEnabledKey:*MEMORY[0x277CCE440]];
  v18 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v15 = [v9 initWithProfile:v10 userDefaults:heartNotificationsUserDefaults managedKeys:v14 debugIdentifier:@"CardioFitness" loggingCategory:*MEMORY[0x277CCC2D0]];
  settingsReconciliationManager = self->_settingsReconciliationManager;
  self->_settingsReconciliationManager = v15;

  [(HDWatchSettingsReconciliationManager *)self->_settingsReconciliationManager setDelegate:self];
  if (v4)
  {
    [(HDHeartProfileExtension *)self _triggerImmediateSyncWithReason:@"HDHeartProfileExtension.settingsMigrationManagerDidRunMigrationSteps"];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)watchSettingsReconciliationManager:(id)a3 didReconcileValuesForKeys:(id)a4 didUpdateFeatureSetting:(BOOL)a5 didUpdateUserDefault:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v16 = a3;
  v10 = a4;
  v11 = v10;
  if (v6)
  {
    v12 = *MEMORY[0x277CCE458];
    v13 = MEMORY[0x277CBEB98];
    v14 = [v10 defaultsEnabledKey];
    v15 = [v13 setWithObject:v14];
    HKSynchronizeNanoPreferencesUserDefaults();
  }

  if (v7)
  {
    [(HDHeartProfileExtension *)self _triggerImmediateSyncWithReason:@"HDHeartProfileExtension.watchSettingsReconciliationManagerDidUpdateFeatureSetting"];
  }
}

- (void)_triggerImmediateSyncWithReason:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained cloudSyncManager];
  v7 = objc_alloc(MEMORY[0x277CCD140]);
  v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v9 = [v7 initWithChangesSyncRequest:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HDHeartProfileExtension__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_2786602E0;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v6 syncWithRequest:v9 reason:v10 completion:v11];
}

void __59__HDHeartProfileExtension__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v11 = v9;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed for %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __59__HDHeartProfileExtension__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v5, v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HDPrimaryProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

void __59__HDHeartProfileExtension__triggerImmediateSyncWithReason___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v11 = 138543874;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 2114;
  v16 = a2;
  v9 = v7;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Cloud sync request for %{public}@ failed: %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end