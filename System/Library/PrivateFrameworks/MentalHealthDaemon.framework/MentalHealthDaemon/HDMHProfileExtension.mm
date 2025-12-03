@interface HDMHProfileExtension
- (HDMHProfileExtension)initWithProfile:(id)profile typicalDayProvider:(id)provider;
- (HDPrimaryProfile)profile;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
@end

@implementation HDMHProfileExtension

- (HDMHProfileExtension)initWithProfile:(id)profile typicalDayProvider:(id)provider
{
  v68 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  providerCopy = provider;
  v65.receiver = self;
  v65.super_class = HDMHProfileExtension;
  v8 = [(HDMHProfileExtension *)&v65 init];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_profile, profileCopy);
    v11 = MEMORY[0x277D106D8];
    v12 = v10;
    v13 = [v11 hdmh_stateOfMindLoggingAvailabilityManagerWithProfile:profileCopy];
    stateOfMindLoggingFeatureAvailabilityManager = v9->_stateOfMindLoggingFeatureAvailabilityManager;
    v9->_stateOfMindLoggingFeatureAvailabilityManager = v13;

    v15 = MEMORY[0x277D106D8];
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v17 = [v15 hdmh_depressionAndAnxietyAssessmentsAvailabilityManagerWithProfile:WeakRetained];
    depressionAndAnxietyAssessmentsFeatureAvailabilityManager = v9->_depressionAndAnxietyAssessmentsFeatureAvailabilityManager;
    v9->_depressionAndAnxietyAssessmentsFeatureAvailabilityManager = v17;

    v19 = objc_alloc(MEMORY[0x277D105D8]);
    v20 = objc_loadWeakRetained(&v9->_profile);
    v21 = MEMORY[0x277CCC2F0];
    v22 = [v19 initWithProfile:v20 featureAvailabilityExtension:v9->_depressionAndAnxietyAssessmentsFeatureAvailabilityManager loggingCategory:*MEMORY[0x277CCC2F0]];
    depressionAndAnxietyAssessmentsBackgroundFeatureDeliveryManager = v9->_depressionAndAnxietyAssessmentsBackgroundFeatureDeliveryManager;
    v9->_depressionAndAnxietyAssessmentsBackgroundFeatureDeliveryManager = v22;

    v24 = MEMORY[0x277D106D8];
    v25 = objc_loadWeakRetained(&v9->_profile);
    v26 = [v24 hdmh_periodicDepressionAndAnxietyAssessmentPromptsAvailabilityManagerWithProfile:v25];
    periodicDepressionAndAnxietyAssessmentPromptsFeatureAvailabilityManager = v9->_periodicDepressionAndAnxietyAssessmentPromptsFeatureAvailabilityManager;
    v9->_periodicDepressionAndAnxietyAssessmentPromptsFeatureAvailabilityManager = v26;

    v28 = objc_alloc(MEMORY[0x277D105D8]);
    v29 = objc_loadWeakRetained(&v9->_profile);
    v30 = [v28 initWithProfile:v29 featureAvailabilityExtension:v9->_periodicDepressionAndAnxietyAssessmentPromptsFeatureAvailabilityManager loggingCategory:*v21];
    periodicDepressionAndAnxietyAssessmentPromptsBackgroundFeatureDeliveryManager = v9->_periodicDepressionAndAnxietyAssessmentPromptsBackgroundFeatureDeliveryManager;
    v9->_periodicDepressionAndAnxietyAssessmentPromptsBackgroundFeatureDeliveryManager = v30;

    v32 = MEMORY[0x277D106D8];
    v33 = objc_loadWeakRetained(&v9->_profile);
    v34 = [v32 hdmh_stateOfMindLoggingPatternEscalationsAvailabilityManagerWithProfile:v33];
    stateOfMindLoggingPatternEscalationsFeatureAvailabilityManager = v9->_stateOfMindLoggingPatternEscalationsFeatureAvailabilityManager;
    v9->_stateOfMindLoggingPatternEscalationsFeatureAvailabilityManager = v34;

    v36 = objc_alloc(MEMORY[0x277D105D8]);
    v37 = objc_loadWeakRetained(&v9->_profile);
    v38 = [v36 initWithProfile:v37 featureAvailabilityExtension:v9->_stateOfMindLoggingPatternEscalationsFeatureAvailabilityManager loggingCategory:*v21];
    stateOfMindLoggingPatternEscalationsBackgroundFeatureDeliveryManager = v9->_stateOfMindLoggingPatternEscalationsBackgroundFeatureDeliveryManager;
    v9->_stateOfMindLoggingPatternEscalationsBackgroundFeatureDeliveryManager = v38;

    v40 = objc_alloc_init(MEMORY[0x277D280B8]);
    settingsManager = v9->_settingsManager;
    v9->_settingsManager = v40;

    v42 = objc_loadWeakRetained(&v9->_profile);
    profileType = [v42 profileType];

    if (profileType == 1)
    {
      v44 = [[HDMHSOMNotificationManager alloc] initWithProfile:profileCopy settingsManager:v9->_settingsManager typicalDayProvider:providerCopy];
      somNotificationManager = v9->_somNotificationManager;
      v9->_somNotificationManager = v44;

      v46 = [[HDMHAssessmentsNotificationManager alloc] initWithProfile:profileCopy settingsManager:v9->_settingsManager];
      assessmentsNotificationManager = v9->_assessmentsNotificationManager;
      v9->_assessmentsNotificationManager = v46;

      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

      if ((isAppleWatch & 1) == 0)
      {
        v50 = [objc_alloc(MEMORY[0x277CCCFE8]) initWithLoggingCategory:*v21 healthDataSource:profileCopy];
        v51 = v9->_settingsManager;
        v52 = objc_alloc(MEMORY[0x277D105B0]);
        v53 = *v21;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __59__HDMHProfileExtension_initWithProfile_typicalDayProvider___block_invoke;
        v63[3] = &unk_2798AACD8;
        v64 = v51;
        v54 = v51;
        v55 = [v52 initWithProfile:profileCopy eventSubmissionManager:v50 logCategory:v53 eventConstructor:v63];
        mentalHealthDailyEventManager = v9->_mentalHealthDailyEventManager;
        v9->_mentalHealthDailyEventManager = v55;
      }
    }

    _HKInitializeLogging();
    v57 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
      v59 = objc_opt_class();
      *buf = 138543362;
      v67 = v59;
      v60 = v59;
      _os_log_impl(&dword_258977000, v58, OS_LOG_TYPE_DEFAULT, "[%{public}@] Plugin loaded", buf, 0xCu);
    }
  }

  v61 = *MEMORY[0x277D85DE8];
  return v9;
}

HDMHMentalHealthDailyAnalyticsEvent *__59__HDMHProfileExtension_initWithProfile_typicalDayProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CCE378]];
  v7 = [[HDMHMentalHealthDailyAnalyticsEvent alloc] initWithProfile:v4 settingsManager:*(a1 + 32) userDefaults:v6];

  return v7;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC100]])
  {
    v5 = 8;
LABEL_9:
    v6 = *(&self->super.isa + v5);
    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC008]])
  {
    v5 = 16;
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC0C0]])
  {
    v5 = 32;
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC108]])
  {
    v5 = 48;
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (HDPrimaryProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end