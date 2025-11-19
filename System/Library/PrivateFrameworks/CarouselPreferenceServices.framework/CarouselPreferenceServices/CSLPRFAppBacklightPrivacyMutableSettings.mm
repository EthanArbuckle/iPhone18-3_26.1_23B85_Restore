@interface CSLPRFAppBacklightPrivacyMutableSettings
- (CSLPRFAppBacklightPrivacyMutableSettings)initWithSettings:(id)a3;
@end

@implementation CSLPRFAppBacklightPrivacyMutableSettings

- (CSLPRFAppBacklightPrivacyMutableSettings)initWithSettings:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CSLPRFAppBacklightPrivacyMutableSettings;
  v5 = [(CSLPRFAppBacklightPrivacyMutableSettings *)&v7 init];
  if (v5)
  {
    v5->_watchAppSupportsAlwaysOnDisplay = [v4 watchAppSupportsAlwaysOnDisplay];
    v5->_privacyDuringAlwaysOnForApp = [v4 privacyDuringAlwaysOnForApp];
    v5->_privacyDuringAlwaysOnForNotification = [v4 privacyDuringAlwaysOnForNotification];
    v5->_privacyDuringAlwaysOnForLiveActivities = [v4 privacyDuringAlwaysOnForLiveActivities];
  }

  return v5;
}

@end