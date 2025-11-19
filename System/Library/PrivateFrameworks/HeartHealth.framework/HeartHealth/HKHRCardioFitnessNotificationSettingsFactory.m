@interface HKHRCardioFitnessNotificationSettingsFactory
- (HKHRCardioFitnessNotificationSettingsFactory)initWithFeatureStatus:(id)a3;
- (id)_ageGatedBridgeSettingFooter;
- (id)_ageGatedWatchSettingFooter;
- (id)_ageNotSetBridgeSettingFooter;
- (id)_ageNotSetWatchSettingFooter;
- (id)_bridgeNotificationsFooterForEvaluation:(id)a3 :(id)a4;
- (id)_bridgeOnboardingFooterForEvaluation:(id)a3 :(id)a4;
- (id)_genericBridgeSettingFooter;
- (id)_genericWatchSettingFooter;
- (id)_pairedDeviceRegionGatedFooter;
- (id)_pregnancyBridgeSettingFooter;
- (id)_pregnancyWatchSettingFooter;
- (id)_statusTextForWatchWithEnabledState:(BOOL)a3;
- (id)_watchFooterForEvaluation:(id)a3 :(id)a4;
- (id)_wristDetectOffBridgeSettingFooter;
- (id)bridgeSettings;
- (id)watchSettings;
@end

@implementation HKHRCardioFitnessNotificationSettingsFactory

- (HKHRCardioFitnessNotificationSettingsFactory)initWithFeatureStatus:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKHRCardioFitnessNotificationSettingsFactory;
  v5 = [(HKHRCardioFitnessNotificationSettingsFactory *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(HKHRCardioFitnessNotificationSettingsFactory *)v5 setFeatureStatus:v4];
    v7 = v6;
  }

  return v6;
}

- (id)_bridgeOnboardingFooterForEvaluation:(id)a3 :(id)a4
{
  v5 = a3;
  if ([v5 areAllRequirementsSatisfied])
  {
    v6 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCBE30]];

    if ([v7 areAllRequirementsSatisfied])
    {
LABEL_3:
      v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _genericBridgeSettingFooter];
      goto LABEL_8;
    }

    v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _pregnancyBridgeSettingFooter];
  }

  else
  {
    v7 = [v5 highestPriorityUnsatisfiedRequirement];
    if (![v7 isEqualToString:*MEMORY[0x277CCBF08]] && !objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCBF00]))
    {
      if (![v7 isEqualToString:*MEMORY[0x277CCBF50]])
      {
        _HKInitializeLogging();
        v11 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [(HKHRCardioFitnessNotificationSettingsFactory *)self _bridgeOnboardingFooterForEvaluation:v11];
        }
      }

      goto LABEL_3;
    }

    v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _pairedDeviceRegionGatedFooter];
  }

LABEL_8:
  v9 = v8;

  return v9;
}

- (id)_bridgeNotificationsFooterForEvaluation:(id)a3 :(id)a4
{
  v5 = a3;
  if ([v5 areAllRequirementsSatisfied])
  {
    v6 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCBE30]];

    if ([v7 areAllRequirementsSatisfied])
    {
LABEL_3:
      v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _genericBridgeSettingFooter];
      goto LABEL_8;
    }

    v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _pregnancyBridgeSettingFooter];
  }

  else
  {
    v7 = [v5 highestPriorityUnsatisfiedRequirement];
    if ([v7 isEqualToString:*MEMORY[0x277CCBF08]] || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCBF00]))
    {
      v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _pairedDeviceRegionGatedFooter];
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CCBEE0]])
    {
      v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _ageNotSetBridgeSettingFooter];
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CCBF70]])
    {
      v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _ageGatedBridgeSettingFooter];
    }

    else
    {
      if ([v7 isEqualToString:*MEMORY[0x277CCBF50]])
      {
        goto LABEL_3;
      }

      if (![v7 isEqualToString:*MEMORY[0x277CCBFE8]])
      {
        _HKInitializeLogging();
        v11 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [(HKHRCardioFitnessNotificationSettingsFactory *)self _bridgeOnboardingFooterForEvaluation:v11];
        }

        goto LABEL_3;
      }

      v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _wristDetectOffBridgeSettingFooter];
    }
  }

LABEL_8:
  v9 = v8;

  return v9;
}

- (id)bridgeSettings
{
  v3 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
  v4 = [v3 objectForKeyedSubscript:@"CardioFitnessBridgeSettingsVisibility"];

  if ([v4 areAllRequirementsSatisfied])
  {
    v5 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
    v6 = [v5 objectForKeyedSubscript:@"CardioFitnessBridgeOnboardingVisibility"];
    v7 = [v6 areAllRequirementsSatisfied];

    v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 objectForKeyedSubscript:@"CardioFitnessBridgeOnboardingEnablement"];

      v11 = [v10 areAllRequirementsSatisfied];
      v12 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
      v13 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _bridgeOnboardingFooterForEvaluation:v10];

      v14 = [[HKHRCardioFitnessBridgeSettings alloc] initWithSettingVisible:1 settingEnabled:v11 showOnboarding:1 footer:v13];
    }

    else
    {
      v10 = [v8 objectForKeyedSubscript:@"CardioFitnessBridgeNotificationsEnablement"];

      v15 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
      v16 = [v15 objectForKeyedSubscript:@"CardioFitnessBridgeNotificationsFooter"];

      v17 = [v10 areAllRequirementsSatisfied];
      v18 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
      v19 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _bridgeNotificationsFooterForEvaluation:v16];

      v14 = [[HKHRCardioFitnessBridgeSettings alloc] initWithSettingVisible:1 settingEnabled:v17 showOnboarding:0 footer:v19];
    }
  }

  else
  {
    v14 = +[HKHRCardioFitnessBridgeSettings hiddenSettings];
  }

  return v14;
}

- (id)watchSettings
{
  v3 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
  v4 = [v3 objectForKeyedSubscript:@"CardioFitnessNanoSettingsVisibility"];

  if ([v4 areAllRequirementsSatisfied])
  {
    v5 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
    v6 = [v5 objectForKeyedSubscript:@"CardioFitnessNanoSettingsEnablement"];

    v7 = [v6 areAllRequirementsSatisfied];
    v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _statusTextForWatchWithEnabledState:v7];
    v9 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
    v10 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _watchFooterForEvaluation:v6];

    v11 = [[HKHRCardioFitnessWatchSettings alloc] initWithSettingVisible:1 settingEnabled:v7 statusText:v8 footer:v10];
  }

  else
  {
    v11 = +[HKHRCardioFitnessWatchSettings hiddenSettings];
  }

  return v11;
}

- (id)_watchFooterForEvaluation:(id)a3 :(id)a4
{
  v5 = a3;
  if ([v5 areAllRequirementsSatisfied])
  {
    v6 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCBE30]];

    if (([v7 areAllRequirementsSatisfied] & 1) == 0)
    {
      v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _pregnancyWatchSettingFooter];
      goto LABEL_12;
    }
  }

  else
  {
    v7 = [v5 highestPriorityUnsatisfiedRequirement];
    if ([v7 isEqualToString:*MEMORY[0x277CCBF70]])
    {
      v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _ageGatedWatchSettingFooter];
      goto LABEL_12;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CCBEE0]])
    {
      v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _ageNotSetWatchSettingFooter];
      goto LABEL_12;
    }

    _HKInitializeLogging();
    v9 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(HKHRCardioFitnessNotificationSettingsFactory *)self _bridgeOnboardingFooterForEvaluation:v9];
    }
  }

  v8 = [(HKHRCardioFitnessNotificationSettingsFactory *)self _genericWatchSettingFooter];
LABEL_12:
  v16 = v8;

  return v16;
}

- (id)_statusTextForWatchWithEnabledState:(BOOL)a3
{
  if (a3)
  {
    v3 = [(HKHRCardioFitnessNotificationSettingsFactory *)self featureStatus];
    v4 = [v3 requirementsEvaluationByContext];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v6 = [v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    if (v6)
    {
      +[_HKHeartSettingsUtilities detailStatusOnText];
    }

    else
    {
      +[_HKHeartSettingsUtilities detailStatusOffText];
    }
    v7 = ;
  }

  else
  {
    v7 = +[_HKHeartSettingsUtilities cardioFitnessUnavailableDetailText];
  }

  return v7;
}

- (id)_genericBridgeSettingFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities cardioFitnessFooterLinkTitle];
  v5 = +[_HKHeartSettingsUtilities cardioFitnessFooterLinkURL];
  v6 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)_wristDetectOffBridgeSettingFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessWristDetectFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities cardioFitnessWristDetectFooterLinkTitle];
  v5 = +[_HKHeartSettingsUtilities cardioFitnessWristDetectFooterLinkURL];
  v6 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)_ageGatedBridgeSettingFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessAgeRestrictedFooterDescription];
  v4 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (id)_ageNotSetBridgeSettingFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessAgeDeletedFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities cardioFitnessAgeDeletedFooterLinkTitle];
  v5 = +[_HKHeartSettingsUtilities cardioFitnessAgeDeletedFooterLinkURL];
  v6 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)_pairedDeviceRegionGatedFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessPairedDeviceRegionGatedFooterDescription];
  v4 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (id)_pregnancyBridgeSettingFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessPregnantFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities cardioFitnessFooterLinkTitle];
  v5 = +[_HKHeartSettingsUtilities cardioFitnessFooterLinkURL];
  v6 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)_genericWatchSettingFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessFooterDescription];
  v4 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (id)_ageGatedWatchSettingFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessAgeRestrictedFooterDescription];
  v4 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (id)_ageNotSetWatchSettingFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessAgeDeletedFooterDescriptionWithLink];
  v4 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (id)_pregnancyWatchSettingFooter
{
  v2 = [HKHRCardioFitnessFooter alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessPregnantFooterDescription];
  v4 = [(HKHRCardioFitnessFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (void)_bridgeOnboardingFooterForEvaluation:(uint64_t)a3 :(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_228942000, a2, a3, "[%{public}@] Received unknown requirement for Cardio Fitness onboarding footer", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end