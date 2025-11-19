@interface HKHRElectrocardiogramRecordingBridgeSettings
- (BOOL)_isSettingsVisibleWithFeatureStatus:(id)a3;
- (BOOL)_userInteractionEnabledWithFeatureStatus:(id)a3;
- (id)_footerWithFeatureStatus:(id)a3 isAppInstalled:(BOOL)a4;
@end

@implementation HKHRElectrocardiogramRecordingBridgeSettings

- (BOOL)_userInteractionEnabledWithFeatureStatus:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277CCBE68]];
  v5 = v4;
  if (self->_settingVisible)
  {
    v6 = [v4 areAllRequirementsSatisfied];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_footerWithFeatureStatus:(id)a3 isAppInstalled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v8 = v7;
  if (!self->_settingVisible)
  {
    v14 = [[HKHRElectrocardiogramRecordingFooter alloc] initWithText:0 link:0 url:0];
    goto LABEL_15;
  }

  v9 = [v7 unsatisfiedRequirementIdentifiers];
  v10 = [v9 containsObject:*MEMORY[0x277CCBF30]];

  if (v10)
  {
    v11 = HKHeartRateLocalizedString(@"FEATURE_DISABLED_REMOTELY_CINNAMON");
    v12 = +[_HKHeartSettingsUtilities remoteDisabledLinkTitle];
    v13 = *MEMORY[0x277CCBD08];
  }

  else
  {
    v15 = [v8 unsatisfiedRequirementIdentifiers];
    v16 = [v15 containsObject:*MEMORY[0x277CCBFD0]];

    if (!v16)
    {
      if ([(HKHRElectrocardiogramRecordingBridgeSettings *)self _featureOnboardedWithFeatureStatus:v6])
      {
        if (v4)
        {
          v18 = @"ELECTROCARDIOGRAM_FOOTER_ONBOARDING_COMPLETED";
        }

        else
        {
          v18 = @"ELECTROCARDIOGRAM_FOOTER_ONBOARDING_COMPLETED_APP_NOT_INSTALLED";
        }
      }

      else
      {
        v18 = @"ELECTROCARDIOGRAM_FOOTER";
      }

      v11 = HKHeartRateLocalizedString(v18);
      v12 = 0;
      v17 = 0;
      goto LABEL_14;
    }

    v11 = HKHeartRateLocalizedString(@"FEATURE_SEED_EXPIRED_CINNAMON");
    v12 = +[_HKHeartSettingsUtilities seedExpiredLinkTitle];
    v13 = +[_HKHeartSettingsUtilities seedExpiredLinkURL];
  }

  v17 = v13;
LABEL_14:
  v14 = [[HKHRElectrocardiogramRecordingFooter alloc] initWithText:v11 link:v12 url:v17];

LABEL_15:

  return v14;
}

- (BOOL)_isSettingsVisibleWithFeatureStatus:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CCBE70]];
  v4 = [v3 areAllRequirementsSatisfied];

  return v4;
}

@end