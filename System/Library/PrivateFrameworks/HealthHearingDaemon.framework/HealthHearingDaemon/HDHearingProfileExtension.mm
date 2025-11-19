@interface HDHearingProfileExtension
- (HDHearingProfileExtension)initWithProfile:(id)a3;
- (id)dailyAnalyticsEventManagerWithProfile:(id)a3;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
@end

@implementation HDHearingProfileExtension

- (HDHearingProfileExtension)initWithProfile:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = HDHearingProfileExtension;
  v5 = [(HDHearingProfileExtension *)&v44 init];
  if (v5)
  {
    v6 = [[HDAudioAnalyticsManager alloc] initWithProfile:v4];
    analyticsManager = v5->_analyticsManager;
    v5->_analyticsManager = v6;

    v8 = [[HDHeadphoneDoseManager alloc] initWithProfile:v4];
    headphoneDoseManager = v5->_headphoneDoseManager;
    v5->_headphoneDoseManager = v8;

    v10 = [v4 daemon];
    v11 = [v10 behavior];
    v12 = [v11 features];
    v13 = [v12 yodel];

    v14 = [MEMORY[0x277D106D8] hearingTestFeatureAvailabilityManagerWithProfile:v4];
    hearingTestFeatureAvailabilityManager = v5->_hearingTestFeatureAvailabilityManager;
    v5->_hearingTestFeatureAvailabilityManager = v14;

    v16 = MEMORY[0x277CCC2C8];
    if (v13)
    {
      v17 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v4 featureAvailabilityExtension:v5->_hearingTestFeatureAvailabilityManager loggingCategory:*MEMORY[0x277CCC2C8]];
      hearingTestBackgroundFeatureDeliveryManager = v5->_hearingTestBackgroundFeatureDeliveryManager;
      v5->_hearingTestBackgroundFeatureDeliveryManager = v17;
    }

    v19 = [MEMORY[0x277D106D8] hearingAidFeatureAvailabilityManagerWithProfile:v4];
    hearingAidFeatureAvailabilityManager = v5->_hearingAidFeatureAvailabilityManager;
    v5->_hearingAidFeatureAvailabilityManager = v19;

    if (v13)
    {
      v21 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v4 featureAvailabilityExtension:v5->_hearingAidFeatureAvailabilityManager loggingCategory:*v16];
      hearingAidBackgroundFeatureDeliveryManager = v5->_hearingAidBackgroundFeatureDeliveryManager;
      v5->_hearingAidBackgroundFeatureDeliveryManager = v21;
    }

    v23 = [MEMORY[0x277D106D8] hearingAidV2FeatureAvailabilityManagerWithProfile:v4];
    hearingAidV2FeatureAvailabilityManager = v5->_hearingAidV2FeatureAvailabilityManager;
    v5->_hearingAidV2FeatureAvailabilityManager = v23;

    if (v13)
    {
      v25 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v4 featureAvailabilityExtension:v5->_hearingAidV2FeatureAvailabilityManager loggingCategory:*v16];
      hearingAidV2BackgroundFeatureDeliveryManager = v5->_hearingAidV2BackgroundFeatureDeliveryManager;
      v5->_hearingAidV2BackgroundFeatureDeliveryManager = v25;
    }

    v27 = [MEMORY[0x277D106D8] hearingProtectionFeatureAvailabilityManagerWithProfile:v4];
    hearingProtectionFeatureAvailabilityManager = v5->_hearingProtectionFeatureAvailabilityManager;
    v5->_hearingProtectionFeatureAvailabilityManager = v27;

    if (v13)
    {
      v29 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v4 featureAvailabilityExtension:v5->_hearingProtectionFeatureAvailabilityManager loggingCategory:*v16];
      hearingProtectionBackgroundFeatureDeliveryManager = v5->_hearingProtectionBackgroundFeatureDeliveryManager;
      v5->_hearingProtectionBackgroundFeatureDeliveryManager = v29;
    }

    v31 = [MEMORY[0x277D106D8] hearingProtectionPPEFeatureAvailabilityManagerWithProfile:v4];
    hearingProtectionPPEFeatureAvailabilityManager = v5->_hearingProtectionPPEFeatureAvailabilityManager;
    v5->_hearingProtectionPPEFeatureAvailabilityManager = v31;

    if (v13)
    {
      v33 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v4 featureAvailabilityExtension:v5->_hearingProtectionPPEFeatureAvailabilityManager loggingCategory:*v16];
      hearingProtectionPPEBackgroundFeatureDeliveryManager = v5->_hearingProtectionPPEBackgroundFeatureDeliveryManager;
      v5->_hearingProtectionPPEBackgroundFeatureDeliveryManager = v33;
    }

    v35 = [(HDHearingProfileExtension *)v5 dailyAnalyticsEventManagerWithProfile:v4];
    dailyAnalyticsEventManager = v5->_dailyAnalyticsEventManager;
    v5->_dailyAnalyticsEventManager = v35;

    _HKInitializeLogging();
    v37 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      v39 = objc_opt_class();
      v40 = [v4 profileType];
      *buf = 138543618;
      v46 = v39;
      v47 = 2048;
      v48 = v40;
      _os_log_impl(&dword_251764000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ Plugin loaded for profileType %ld", buf, 0x16u);
    }

    v41 = v5;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277CCC058]])
  {
    v5 = 24;
LABEL_11:
    v6 = *(&self->super.isa + v5);
    goto LABEL_12;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC038]])
  {
    v5 = 40;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC040]])
  {
    v5 = 56;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC048]])
  {
    v5 = 72;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC050]])
  {
    v5 = 88;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)dailyAnalyticsEventManagerWithProfile:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCDD30] sharedBehavior];
  v5 = [v4 isAppleWatch];

  if ((v5 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D105B0]);
    v7 = objc_alloc(MEMORY[0x277CCCFE8]);
    v8 = MEMORY[0x277CCC2C8];
    v9 = [v7 initWithLoggingCategory:*MEMORY[0x277CCC2C8] healthDataSource:v3];
    v10 = [v6 initWithProfile:v3 eventSubmissionManager:v9 logCategory:*v8 eventConstructor:&__block_literal_global_5];
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