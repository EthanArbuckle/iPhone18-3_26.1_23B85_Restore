@interface HDHRAFibBurdenProfileExtensionComponents
+ (id)determineDeviceCapability;
+ (id)makeComponentsForProfile:(id)profile;
+ (id)makeComponentsForTesting;
- (HDHRAFibBurdenProfileExtensionComponents)init;
- (HDHRAFibBurdenProfileExtensionComponents)initWithProfile:(id)profile;
- (id)_initForTesting;
- (void)dealloc;
@end

@implementation HDHRAFibBurdenProfileExtensionComponents

- (HDHRAFibBurdenProfileExtensionComponents)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHRAFibBurdenProfileExtensionComponents)initWithProfile:(id)profile
{
  v59[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v58.receiver = self;
  v58.super_class = HDHRAFibBurdenProfileExtensionComponents;
  v5 = [(HDHRAFibBurdenProfileExtensionComponents *)&v58 init];
  if (v5)
  {
    v6 = HKHRAFibBurdenLogForCategory();
    v7 = *MEMORY[0x277CCBFF0];
    localAvailabilityForAFibBurden = [MEMORY[0x277CCD260] localAvailabilityForAFibBurden];
    v9 = objc_alloc(MEMORY[0x277D10728]);
    daemon = [profileCopy daemon];
    v55 = localAvailabilityForAFibBurden;
    v11 = [v9 initWithFeatureIdentifier:v7 defaultCountrySet:localAvailabilityForAFibBurden healthDaemon:daemon];

    v12 = objc_alloc(MEMORY[0x277D107D8]);
    v13 = HKHRAFibBurdenLocalFeatureAttributes();
    v54 = v11;
    v52 = [v12 initWithFeatureIdentifier:v7 localFeatureAttributes:v13 localCountrySetAvailabilityProvider:v11];

    v14 = objc_alloc(MEMORY[0x277D107C0]);
    daemon2 = [profileCopy daemon];
    v16 = [v14 initWithDaemon:daemon2 featureIdentifier:v7];

    v17 = +[HDHRAFibBurdenProfileExtensionComponents determineDeviceCapability];
    v56 = v6;
    v18 = [objc_alloc(MEMORY[0x277D10968]) initWithAllowedCountriesDataSource:v52 profile:profileCopy featureCapability:v17 loggingCategory:v6];
    v19 = objc_alloc(MEMORY[0x277D106E0]);
    daemon3 = [profileCopy daemon];
    nanoRegistryDeviceCapabilityProvider = [daemon3 nanoRegistryDeviceCapabilityProvider];
    v22 = [v19 initWithFeatureIdentifier:v7 currentOnboardingVersion:1 pairedDeviceCapability:v17 pairedDeviceCapabilityProvider:nanoRegistryDeviceCapabilityProvider regionAvailabilityProvider:v18 disableAndExpiryProvider:v16 loggingCategory:v6];

    v23 = objc_alloc(MEMORY[0x277D10830]);
    v59[0] = *MEMORY[0x277CCC120];
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
    v25 = [v23 initWithRequiredSettingsKeys:v24];

    v26 = objc_alloc(MEMORY[0x277D106D8]);
    requirementSet = [MEMORY[0x277D12F38] requirementSet];
    v53 = v25;
    v28 = [v26 initWithProfile:profileCopy featureIdentifier:v7 availabilityRequirements:requirementSet currentOnboardingVersion:1 pairedDeviceCapability:v17 pairedFeatureAttributesProvider:v52 regionAvailabilityProvider:v18 disableAndExpiryProvider:v16 onboardingEligibilityDeterminer:v22 featureSettingsAtOnboardingTimeValidator:v25 loggingCategory:v56];
    featureAvailabilityManager = v5->_featureAvailabilityManager;
    v5->_featureAvailabilityManager = v28;

    [v52 synchronizeLocalProperties];
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    LOBYTE(requirementSet) = [mEMORY[0x277CCDD30] isAppleWatch];

    if ((requirementSet & 1) == 0)
    {
      v31 = [[HKHRAFibBurdenAnalyzer alloc] initWithProfile:profileCopy];
      analyzer = v5->_analyzer;
      v5->_analyzer = v31;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = MEMORY[0x277CCD460];
        v34 = profileCopy;
        v35 = [[v33 alloc] initWithFeatureAvailabilityProviding:v5->_featureAvailabilityManager healthDataSource:v34];
        featureStatusManager = v5->_featureStatusManager;
        v5->_featureStatusManager = v35;

        v37 = [[HKHRAFibBurdenSevenDayAnalysisScheduler alloc] initWithProfile:v34 featureStatusManager:v5->_featureStatusManager onboardingEligibilityDeterminer:v22 analyzer:v5->_analyzer];
        sevenDayAnalysisScheduler = v5->_sevenDayAnalysisScheduler;
        v5->_sevenDayAnalysisScheduler = v37;
        v51 = v37;

        v39 = [[HDHRAFibBurdenNotificationManager alloc] initWithProfile:v34];
        notificationManager = v5->_notificationManager;
        v5->_notificationManager = v39;
        v50 = v39;

        v41 = [[HDHRAFibBurdenRescindedNotificationManager alloc] initWithProfile:v34 featureStatusProvider:v5->_featureStatusManager];
        notificationsRescindedManager = v5->_notificationsRescindedManager;
        v5->_notificationsRescindedManager = v41;

        [(HKHRAFibBurdenSevenDayAnalysisScheduler *)v51 setDelegate:v50];
        v43 = objc_alloc(MEMORY[0x277D105B0]);
        v44 = [objc_alloc(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v56 healthDataSource:v34];
        v45 = [v43 initWithProfile:v34 eventSubmissionManager:v44 logCategory:v56 eventConstructor:&__block_literal_global_0];

        dailyAnalyticsEventManager = v5->_dailyAnalyticsEventManager;
        v5->_dailyAnalyticsEventManager = v45;
      }
    }

    v47 = HKCreateSerialDispatchQueue();
    v57 = v5;
    v57->_stateHandlerHandle = HDAddStateHandler();
  }

  v48 = *MEMORY[0x277D85DE8];
  return v5;
}

HDHRAFibBurdenDailyAnalyticsEvent *__60__HDHRAFibBurdenProfileExtensionComponents_initWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDHRAFibBurdenDailyAnalyticsEvent alloc] initWithProfile:v2];

  return v3;
}

id __60__HDHRAFibBurdenProfileExtensionComponents_initWithProfile___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 showSensitiveLogItems];

  if (v4)
  {
    v5 = @"Enabled";
  }

  else
  {
    v5 = @"Disabled";
  }

  [v2 setObject:v5 forKey:@"Sensitive Logging"];
  v6 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"/System/Library/Preferences/Logging/Subsystems/com.apple.Health.AFibBurden.plist"];
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  v18 = 0;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7 options:0 error:&v18];
  v9 = v18;
  if (v8)
  {
    v17 = 0;
    v10 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:&v17];
    v11 = v17;

    if (v10)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v10];
      [v2 setObject:v12 forKey:@"AFib History Logging Plist"];
    }

    else
    {
      _HKInitializeLogging();
      v12 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138543618;
        v20 = v14;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to read AFib History logging plist: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to fetch AFib History logging plist: %@", buf, 0x16u);
    }

    v11 = v9;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_initForTesting
{
  v3.receiver = self;
  v3.super_class = HDHRAFibBurdenProfileExtensionComponents;
  return [(HDHRAFibBurdenProfileExtensionComponents *)&v3 init];
}

- (void)dealloc
{
  if (self->_stateHandlerHandle)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = HDHRAFibBurdenProfileExtensionComponents;
  [(HDHRAFibBurdenProfileExtensionComponents *)&v3 dealloc];
}

+ (id)makeComponentsForProfile:(id)profile
{
  v13 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if ([profileCopy profileType] == 1 || objc_msgSend(MEMORY[0x277CCDD30], "isAppleInternalInstall") && objc_msgSend(profileCopy, "profileType") == 100)
  {
    v5 = [[HDHRAFibBurdenProfileExtensionComponents alloc] initWithProfile:profileCopy];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = profileCopy;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not creating AFib Burden components for profile %{public}@", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)makeComponentsForTesting
{
  _initForTesting = [[HDHRAFibBurdenProfileExtensionComponents alloc] _initForTesting];

  return _initForTesting;
}

+ (id)determineDeviceCapability
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([mEMORY[0x277CCDD30] isAppleWatch])
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"46D9FF45-6717-4357-9B04-2E06E1095260"];
  }

  return v3;
}

@end