@interface CSLPRFAppBacklightPrivacyMutableSettings
- (CSLPRFAppBacklightPrivacyMutableSettings)initWithSettings:(id)settings;
@end

@implementation CSLPRFAppBacklightPrivacyMutableSettings

- (CSLPRFAppBacklightPrivacyMutableSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v7.receiver = self;
  v7.super_class = CSLPRFAppBacklightPrivacyMutableSettings;
  v5 = [(CSLPRFAppBacklightPrivacyMutableSettings *)&v7 init];
  if (v5)
  {
    v5->_watchAppSupportsAlwaysOnDisplay = [settingsCopy watchAppSupportsAlwaysOnDisplay];
    v5->_privacyDuringAlwaysOnForApp = [settingsCopy privacyDuringAlwaysOnForApp];
    v5->_privacyDuringAlwaysOnForNotification = [settingsCopy privacyDuringAlwaysOnForNotification];
    v5->_privacyDuringAlwaysOnForLiveActivities = [settingsCopy privacyDuringAlwaysOnForLiveActivities];
  }

  return v5;
}

@end