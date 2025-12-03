@interface HKHRElectrocardiogramRecordingBridgeSettings
- (BOOL)_isSettingsVisibleWithFeatureStatus:(id)status;
- (BOOL)_userInteractionEnabledWithFeatureStatus:(id)status;
- (id)_footerWithFeatureStatus:(id)status isAppInstalled:(BOOL)installed;
@end

@implementation HKHRElectrocardiogramRecordingBridgeSettings

- (BOOL)_userInteractionEnabledWithFeatureStatus:(id)status
{
  v4 = [status objectForKeyedSubscript:*MEMORY[0x277CCBE68]];
  v5 = v4;
  if (self->_settingVisible)
  {
    areAllRequirementsSatisfied = [v4 areAllRequirementsSatisfied];
  }

  else
  {
    areAllRequirementsSatisfied = 0;
  }

  return areAllRequirementsSatisfied;
}

- (id)_footerWithFeatureStatus:(id)status isAppInstalled:(BOOL)installed
{
  installedCopy = installed;
  statusCopy = status;
  v7 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v8 = v7;
  if (!self->_settingVisible)
  {
    v14 = [[HKHRElectrocardiogramRecordingFooter alloc] initWithText:0 link:0 url:0];
    goto LABEL_15;
  }

  unsatisfiedRequirementIdentifiers = [v7 unsatisfiedRequirementIdentifiers];
  v10 = [unsatisfiedRequirementIdentifiers containsObject:*MEMORY[0x277CCBF30]];

  if (v10)
  {
    v11 = HKHeartRateLocalizedString(@"FEATURE_DISABLED_REMOTELY_CINNAMON");
    v12 = +[_HKHeartSettingsUtilities remoteDisabledLinkTitle];
    v13 = *MEMORY[0x277CCBD08];
  }

  else
  {
    unsatisfiedRequirementIdentifiers2 = [v8 unsatisfiedRequirementIdentifiers];
    v16 = [unsatisfiedRequirementIdentifiers2 containsObject:*MEMORY[0x277CCBFD0]];

    if (!v16)
    {
      if ([(HKHRElectrocardiogramRecordingBridgeSettings *)self _featureOnboardedWithFeatureStatus:statusCopy])
      {
        if (installedCopy)
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

- (BOOL)_isSettingsVisibleWithFeatureStatus:(id)status
{
  v3 = [status objectForKeyedSubscript:*MEMORY[0x277CCBE70]];
  areAllRequirementsSatisfied = [v3 areAllRequirementsSatisfied];

  return areAllRequirementsSatisfied;
}

@end