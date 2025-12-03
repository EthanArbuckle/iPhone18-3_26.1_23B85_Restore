@interface HKHRAFibBurdenNotificationSettingsFactory
- (BOOL)_isFeatureOnboardedAndAvailableWithIsOnboarded:(BOOL)onboarded requirementsEvaluation:(id)evaluation;
- (BOOL)_isOnboarded;
- (HKHRAFibBurdenNotificationSettingsFactory)initWithFeatureStatus:(id)status;
- (id)_deviceRegionGatedBridgeSettingFooter;
- (id)_deviceRegionGatedWatchSettingFooter;
- (id)_evaluationForIsOnboarded:(BOOL)onboarded;
- (id)_genericBridgeSettingFooter;
- (id)_genericWatchSettingFooter;
- (id)_irnEnabledBridgeSettingFooter;
- (id)_irnEnabledWatchSettingFooter;
- (id)_remoteDisabledBridgeSettingFooter;
- (id)_remoteDisabledWatchSettingFooter;
- (id)_seedExpiryBridgeSettingFooter;
- (id)_seedExpiryWatchSettingFooter;
- (id)_wristDetectDisabledBridgeSettingFooter;
- (id)bridgeSettings;
- (id)watchSettings;
- (void)bridgeSettings;
- (void)watchSettings;
@end

@implementation HKHRAFibBurdenNotificationSettingsFactory

- (HKHRAFibBurdenNotificationSettingsFactory)initWithFeatureStatus:(id)status
{
  statusCopy = status;
  v9.receiver = self;
  v9.super_class = HKHRAFibBurdenNotificationSettingsFactory;
  v5 = [(HKHRAFibBurdenNotificationSettingsFactory *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(HKHRAFibBurdenNotificationSettingsFactory *)v5 setFeatureStatus:statusCopy];
    v7 = v6;
  }

  return v6;
}

- (id)bridgeSettings
{
  _isOnboarded = [(HKHRAFibBurdenNotificationSettingsFactory *)self _isOnboarded];
  v4 = [(HKHRAFibBurdenNotificationSettingsFactory *)self _evaluationForIsOnboarded:_isOnboarded];
  if ([(HKHRAFibBurdenNotificationSettingsFactory *)self _isFeatureOnboardedAndAvailableWithIsOnboarded:_isOnboarded requirementsEvaluation:v4])
  {
    v5 = [HKHRAFibBurdenBridgeSettings alloc];
    _genericBridgeSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _genericBridgeSettingFooter];
    v7 = v5;
    v8 = 0;
LABEL_3:
    v9 = [(HKHRAFibBurdenBridgeSettings *)v7 initWithSettingVisible:1 settingEnabled:1 showOnboarding:v8 footer:_genericBridgeSettingFooter];

    goto LABEL_32;
  }

  v10 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF48]];
  v11 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF70]];
  v12 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEF0]];
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || (v12 & 1) == 0)
  {
    goto LABEL_31;
  }

  v14 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF50]];
  v15 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]];
  v16 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]];
  v17 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFE8]];
  v18 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF08]];
  v19 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF00]];
  v20 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF60]];
  if (!v18 || (v19 & 1) == 0)
  {
    v22 = [HKHRAFibBurdenBridgeSettings alloc];
    _deviceRegionGatedBridgeSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _deviceRegionGatedBridgeSettingFooter];
LABEL_25:
    v24 = _deviceRegionGatedBridgeSettingFooter;
    v9 = [(HKHRAFibBurdenBridgeSettings *)v22 initWithSettingVisible:1 settingEnabled:0 showOnboarding:_isOnboarded ^ 1 footer:_deviceRegionGatedBridgeSettingFooter];

    goto LABEL_32;
  }

  if ((v15 & 1) == 0)
  {
    v22 = [HKHRAFibBurdenBridgeSettings alloc];
    _deviceRegionGatedBridgeSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _remoteDisabledBridgeSettingFooter];
    goto LABEL_25;
  }

  if ((v16 & 1) == 0)
  {
    v22 = [HKHRAFibBurdenBridgeSettings alloc];
    _deviceRegionGatedBridgeSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _seedExpiryBridgeSettingFooter];
    goto LABEL_25;
  }

  if ((v14 & 1) == 0)
  {
    v22 = [HKHRAFibBurdenBridgeSettings alloc];
    _deviceRegionGatedBridgeSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _genericBridgeSettingFooter];
    goto LABEL_25;
  }

  if ((v17 & 1) == 0)
  {
    v22 = [HKHRAFibBurdenBridgeSettings alloc];
    _deviceRegionGatedBridgeSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _wristDetectDisabledBridgeSettingFooter];
    goto LABEL_25;
  }

  if ((v20 & 1) == 0)
  {
    v22 = [HKHRAFibBurdenBridgeSettings alloc];
    _deviceRegionGatedBridgeSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _irnEnabledBridgeSettingFooter];
    goto LABEL_25;
  }

  if (_isOnboarded)
  {
    _HKInitializeLogging();
    v21 = HKHRAFibBurdenLogForCategory(2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [HKHRAFibBurdenNotificationSettingsFactory bridgeSettings];
    }
  }

  else
  {
    if ([v4 areAllRequirementsSatisfied])
    {
      v25 = [HKHRAFibBurdenBridgeSettings alloc];
      _genericBridgeSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _genericBridgeSettingFooter];
      v7 = v25;
      v8 = 1;
      goto LABEL_3;
    }

    _HKInitializeLogging();
    v21 = HKHRAFibBurdenLogForCategory(2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [HKHRAFibBurdenNotificationSettingsFactory bridgeSettings];
    }
  }

LABEL_31:
  v9 = +[HKHRAFibBurdenBridgeSettings hiddenSettings];
LABEL_32:

  return v9;
}

- (id)_genericBridgeSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities aFibBurdenFooterLinkTitle];
  v5 = +[_HKHeartSettingsUtilities aFibBurdenDefaultLinkURL];
  v6 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)_wristDetectDisabledBridgeSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenWristDetectFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities aFibBurdenWristDetectFooterLinkTitle];
  v5 = +[_HKHeartSettingsUtilities aFibBurdenWristDetectFooterLinkURL];
  v6 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)_deviceRegionGatedBridgeSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenRegionNotSupportedFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities remoteDisabledLinkTitle];
  v5 = +[_HKHeartSettingsUtilities remoteDisabledLinkURL];
  v6 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)_irnEnabledBridgeSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenIRNEnabledFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities aFibBurdenFooterLinkTitle];
  v5 = +[_HKHeartSettingsUtilities aFibBurdenDefaultLinkURL];
  v6 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)_remoteDisabledBridgeSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenRemoteDisabledFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities remoteDisabledLinkTitle];
  v5 = +[_HKHeartSettingsUtilities remoteDisabledLinkURL];
  v6 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)_seedExpiryBridgeSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenSeedExpiryFooterDescriptionWithLink];
  v4 = +[_HKHeartSettingsUtilities seedExpiredLinkTitle];
  v5 = +[_HKHeartSettingsUtilities seedExpiredLinkURL];
  v6 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:v4 url:v5];

  return v6;
}

- (id)watchSettings
{
  _isOnboarded = [(HKHRAFibBurdenNotificationSettingsFactory *)self _isOnboarded];
  v4 = [(HKHRAFibBurdenNotificationSettingsFactory *)self _evaluationForIsOnboarded:_isOnboarded];
  if ([(HKHRAFibBurdenNotificationSettingsFactory *)self _isFeatureOnboardedAndAvailableWithIsOnboarded:_isOnboarded requirementsEvaluation:v4])
  {
    v5 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];
    v6 = [HKHRAFibBurdenWatchSettings alloc];
    if (v5)
    {
      +[_HKHeartSettingsUtilities detailStatusOnText];
    }

    else
    {
      +[_HKHeartSettingsUtilities detailStatusOffText];
    }
    v19 = ;
    _genericWatchSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _genericWatchSettingFooter];
    v18 = [(HKHRAFibBurdenWatchSettings *)v6 initWithSettingVisible:1 settingEnabled:1 statusText:v19 footer:_genericWatchSettingFooter];

    goto LABEL_22;
  }

  v7 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF48]];
  v8 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF50]];
  v9 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF70]];
  v10 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEF0]];
  v11 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFE8]];
  if (!(_isOnboarded & v7 & v8 & v9 & v10) || (v11 & 1) == 0)
  {
LABEL_14:
    v18 = +[HKHRAFibBurdenWatchSettings hiddenSettings];
    goto LABEL_23;
  }

  v12 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF60]];
  v13 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]];
  v14 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]];
  v15 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF08]];
  v16 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF00]];
  if (v15 && (v16 & 1) != 0)
  {
    if (v13)
    {
      if (v14)
      {
        if (v12)
        {
          _HKInitializeLogging();
          v17 = HKHRAFibBurdenLogForCategory(2);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            [HKHRAFibBurdenNotificationSettingsFactory watchSettings];
          }

          goto LABEL_14;
        }

        v21 = [HKHRAFibBurdenWatchSettings alloc];
        v19 = +[_HKHeartSettingsUtilities aFibBurdenUnavailableDetailText];
        _irnEnabledWatchSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _irnEnabledWatchSettingFooter];
      }

      else
      {
        v21 = [HKHRAFibBurdenWatchSettings alloc];
        v19 = +[_HKHeartSettingsUtilities aFibBurdenUnavailableDetailText];
        _irnEnabledWatchSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _seedExpiryWatchSettingFooter];
      }
    }

    else
    {
      v21 = [HKHRAFibBurdenWatchSettings alloc];
      v19 = +[_HKHeartSettingsUtilities aFibBurdenUnavailableDetailText];
      _irnEnabledWatchSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _remoteDisabledWatchSettingFooter];
    }
  }

  else
  {
    v21 = [HKHRAFibBurdenWatchSettings alloc];
    v19 = +[_HKHeartSettingsUtilities aFibBurdenUnavailableDetailText];
    _irnEnabledWatchSettingFooter = [(HKHRAFibBurdenNotificationSettingsFactory *)self _deviceRegionGatedWatchSettingFooter];
  }

  v23 = _irnEnabledWatchSettingFooter;
  v18 = [(HKHRAFibBurdenWatchSettings *)v21 initWithSettingVisible:1 settingEnabled:0 statusText:v19 footer:_irnEnabledWatchSettingFooter];

LABEL_22:
LABEL_23:

  return v18;
}

- (id)_genericWatchSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenFooterDescription];
  v4 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (id)_deviceRegionGatedWatchSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenRegionNotSupportedFooterDescription];
  v4 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (id)_irnEnabledWatchSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenIRNEnabledFooterDescriptionWatch];
  v4 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (id)_remoteDisabledWatchSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenRemoteDisabledFooterDescriptionWatch];
  v4 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (id)_seedExpiryWatchSettingFooter
{
  v2 = [HKHRAFibBurdenFooter alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenSeedExpiryFooterDescriptionWatch];
  v4 = [(HKHRAFibBurdenFooter *)v2 initWithText:v3 link:0 url:0];

  return v4;
}

- (BOOL)_isOnboarded
{
  if (![(HKFeatureStatus *)self->_featureStatus isOnboardingRecordPresent])
  {
    return 0;
  }

  onboardingRecord = [(HKFeatureStatus *)self->_featureStatus onboardingRecord];
  v4 = [onboardingRecord onboardingState] != 1;

  return v4;
}

- (id)_evaluationForIsOnboarded:(BOOL)onboarded
{
  onboardedCopy = onboarded;
  requirementsEvaluationByContext = [(HKFeatureStatus *)self->_featureStatus requirementsEvaluationByContext];
  v5 = requirementsEvaluationByContext;
  v6 = MEMORY[0x277CCBEA0];
  if (!onboardedCopy)
  {
    v6 = MEMORY[0x277CCBE50];
  }

  v7 = [requirementsEvaluationByContext objectForKeyedSubscript:*v6];

  return v7;
}

- (BOOL)_isFeatureOnboardedAndAvailableWithIsOnboarded:(BOOL)onboarded requirementsEvaluation:(id)evaluation
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (onboarded)
  {
    unsatisfiedRequirementIdentifiers = [evaluation unsatisfiedRequirementIdentifiers];
    if ([unsatisfiedRequirementIdentifiers count])
    {
      v9[0] = *MEMORY[0x277CCBF38];
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      v6 = [unsatisfiedRequirementIdentifiers isEqualToArray:v5];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)bridgeSettings
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_3(&dword_228942000, v1, v2, "[%@]: Requested bridge settings for an un-handled notification state", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)watchSettings
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_3(&dword_228942000, v1, v2, "[%@]: Requested watch settings for an un-handled notification state", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end