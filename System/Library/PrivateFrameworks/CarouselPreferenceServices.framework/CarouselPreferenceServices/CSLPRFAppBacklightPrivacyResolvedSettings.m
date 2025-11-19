@interface CSLPRFAppBacklightPrivacyResolvedSettings
- (BOOL)privacyDuringAlwaysOnForApp;
- (BOOL)privacyDuringAlwaysOnForLiveActivities;
- (BOOL)privacyDuringAlwaysOnForNotification;
- (CSLPRFAppBacklightPrivacyResolvedSettings)initWithSettings:(id)a3 globalSettings:(id)a4;
@end

@implementation CSLPRFAppBacklightPrivacyResolvedSettings

- (BOOL)privacyDuringAlwaysOnForLiveActivities
{
  if (([(CSLPRFAppBacklightPrivacyProperties *)self->_globalSettings privacyDuringAlwaysOnForLiveActivities]& 1) != 0)
  {
    return 1;
  }

  settings = self->_settings;

  return [(CSLPRFAppBacklightPrivacyProperties *)settings privacyDuringAlwaysOnForLiveActivities];
}

- (BOOL)privacyDuringAlwaysOnForNotification
{
  if (([(CSLPRFAppBacklightPrivacyProperties *)self->_globalSettings privacyDuringAlwaysOnForNotification]& 1) != 0)
  {
    return 1;
  }

  settings = self->_settings;

  return [(CSLPRFAppBacklightPrivacyProperties *)settings privacyDuringAlwaysOnForNotification];
}

- (BOOL)privacyDuringAlwaysOnForApp
{
  if (([(CSLPRFAppBacklightPrivacyProperties *)self->_globalSettings privacyDuringAlwaysOnForApp]& 1) != 0)
  {
    return 1;
  }

  settings = self->_settings;

  return [(CSLPRFAppBacklightPrivacyProperties *)settings privacyDuringAlwaysOnForApp];
}

- (CSLPRFAppBacklightPrivacyResolvedSettings)initWithSettings:(id)a3 globalSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSLPRFAppBacklightPrivacyResolvedSettings;
  v9 = [(CSLPRFAppBacklightPrivacyResolvedSettings *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settings, a3);
    objc_storeStrong(&v10->_globalSettings, a4);
  }

  return v10;
}

@end