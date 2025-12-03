@interface HDHearingProfileExtension
- (HDHearingProfileExtension)initWithProfile:(id)profile;
- (id)dailyAnalyticsEventManagerWithProfile:(id)profile;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
@end

@implementation HDHearingProfileExtension

- (HDHearingProfileExtension)initWithProfile:(id)profile
{
  v49 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v44.receiver = self;
  v44.super_class = HDHearingProfileExtension;
  v5 = [(HDHearingProfileExtension *)&v44 init];
  if (v5)
  {
    v6 = [[HDAudioAnalyticsManager alloc] initWithProfile:profileCopy];
    analyticsManager = v5->_analyticsManager;
    v5->_analyticsManager = v6;

    v8 = [[HDHeadphoneDoseManager alloc] initWithProfile:profileCopy];
    headphoneDoseManager = v5->_headphoneDoseManager;
    v5->_headphoneDoseManager = v8;

    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    features = [behavior features];
    yodel = [features yodel];

    v14 = [MEMORY[0x277D106D8] hearingTestFeatureAvailabilityManagerWithProfile:profileCopy];
    hearingTestFeatureAvailabilityManager = v5->_hearingTestFeatureAvailabilityManager;
    v5->_hearingTestFeatureAvailabilityManager = v14;

    v16 = MEMORY[0x277CCC2C8];
    if (yodel)
    {
      v17 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:profileCopy featureAvailabilityExtension:v5->_hearingTestFeatureAvailabilityManager loggingCategory:*MEMORY[0x277CCC2C8]];
      hearingTestBackgroundFeatureDeliveryManager = v5->_hearingTestBackgroundFeatureDeliveryManager;
      v5->_hearingTestBackgroundFeatureDeliveryManager = v17;
    }

    v19 = [MEMORY[0x277D106D8] hearingAidFeatureAvailabilityManagerWithProfile:profileCopy];
    hearingAidFeatureAvailabilityManager = v5->_hearingAidFeatureAvailabilityManager;
    v5->_hearingAidFeatureAvailabilityManager = v19;

    if (yodel)
    {
      v21 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:profileCopy featureAvailabilityExtension:v5->_hearingAidFeatureAvailabilityManager loggingCategory:*v16];
      hearingAidBackgroundFeatureDeliveryManager = v5->_hearingAidBackgroundFeatureDeliveryManager;
      v5->_hearingAidBackgroundFeatureDeliveryManager = v21;
    }

    v23 = [MEMORY[0x277D106D8] hearingAidV2FeatureAvailabilityManagerWithProfile:profileCopy];
    hearingAidV2FeatureAvailabilityManager = v5->_hearingAidV2FeatureAvailabilityManager;
    v5->_hearingAidV2FeatureAvailabilityManager = v23;

    if (yodel)
    {
      v25 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:profileCopy featureAvailabilityExtension:v5->_hearingAidV2FeatureAvailabilityManager loggingCategory:*v16];
      hearingAidV2BackgroundFeatureDeliveryManager = v5->_hearingAidV2BackgroundFeatureDeliveryManager;
      v5->_hearingAidV2BackgroundFeatureDeliveryManager = v25;
    }

    v27 = [MEMORY[0x277D106D8] hearingProtectionFeatureAvailabilityManagerWithProfile:profileCopy];
    hearingProtectionFeatureAvailabilityManager = v5->_hearingProtectionFeatureAvailabilityManager;
    v5->_hearingProtectionFeatureAvailabilityManager = v27;

    if (yodel)
    {
      v29 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:profileCopy featureAvailabilityExtension:v5->_hearingProtectionFeatureAvailabilityManager loggingCategory:*v16];
      hearingProtectionBackgroundFeatureDeliveryManager = v5->_hearingProtectionBackgroundFeatureDeliveryManager;
      v5->_hearingProtectionBackgroundFeatureDeliveryManager = v29;
    }

    v31 = [MEMORY[0x277D106D8] hearingProtectionPPEFeatureAvailabilityManagerWithProfile:profileCopy];
    hearingProtectionPPEFeatureAvailabilityManager = v5->_hearingProtectionPPEFeatureAvailabilityManager;
    v5->_hearingProtectionPPEFeatureAvailabilityManager = v31;

    if (yodel)
    {
      v33 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:profileCopy featureAvailabilityExtension:v5->_hearingProtectionPPEFeatureAvailabilityManager loggingCategory:*v16];
      hearingProtectionPPEBackgroundFeatureDeliveryManager = v5->_hearingProtectionPPEBackgroundFeatureDeliveryManager;
      v5->_hearingProtectionPPEBackgroundFeatureDeliveryManager = v33;
    }

    v35 = [(HDHearingProfileExtension *)v5 dailyAnalyticsEventManagerWithProfile:profileCopy];
    dailyAnalyticsEventManager = v5->_dailyAnalyticsEventManager;
    v5->_dailyAnalyticsEventManager = v35;

    _HKInitializeLogging();
    v37 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      v39 = objc_opt_class();
      profileType = [profileCopy profileType];
      *buf = 138543618;
      v46 = v39;
      v47 = 2048;
      v48 = profileType;
      _os_log_impl(&dword_251764000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ Plugin loaded for profileType %ld", buf, 0x16u);
    }

    v41 = v5;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC058]])
  {
    v5 = 24;
LABEL_11:
    v6 = *(&self->super.isa + v5);
    goto LABEL_12;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC038]])
  {
    v5 = 40;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC040]])
  {
    v5 = 56;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC048]])
  {
    v5 = 72;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC050]])
  {
    v5 = 88;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)dailyAnalyticsEventManagerWithProfile:(id)profile
{
  profileCopy = profile;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if ((isAppleWatch & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D105B0]);
    v7 = objc_alloc(MEMORY[0x277CCCFE8]);
    v8 = MEMORY[0x277CCC2C8];
    v9 = [v7 initWithLoggingCategory:*MEMORY[0x277CCC2C8] healthDataSource:profileCopy];
    v10 = [v6 initWithProfile:profileCopy eventSubmissionManager:v9 logCategory:*v8 eventConstructor:&__block_literal_global_5];
  }

  return v10;
}

_TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent *__67__HDHearingProfileExtension_dailyAnalyticsEventManagerWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[_TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent alloc] initWithProfile:v2];

  return v3;
}

@end