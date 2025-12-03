@interface CSLPRFLiveActivitiesAppMutableSettings
- (CSLPRFLiveActivitiesAppMutableSettings)initWithSettings:(id)settings;
@end

@implementation CSLPRFLiveActivitiesAppMutableSettings

- (CSLPRFLiveActivitiesAppMutableSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v7.receiver = self;
  v7.super_class = CSLPRFLiveActivitiesAppMutableSettings;
  v5 = [(CSLPRFLiveActivitiesAppMutableSettings *)&v7 init];
  if (v5)
  {
    v5->_globalAllowLiveActivities = [settingsCopy globalAllowLiveActivities];
    v5->_globalAutoLaunchLiveActivities = [settingsCopy globalAutoLaunchLiveActivities];
    v5->_supportsSmartStack = [settingsCopy supportsSmartStack];
    v5->_allowLiveActivitiesForApp = [settingsCopy allowLiveActivitiesForApp];
    v5->_autoLaunchBehaviorForApp = [settingsCopy autoLaunchBehaviorForApp];
  }

  return v5;
}

@end