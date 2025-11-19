@interface CSLPRFLiveActivitiesAppMutableSettings
- (CSLPRFLiveActivitiesAppMutableSettings)initWithSettings:(id)a3;
@end

@implementation CSLPRFLiveActivitiesAppMutableSettings

- (CSLPRFLiveActivitiesAppMutableSettings)initWithSettings:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CSLPRFLiveActivitiesAppMutableSettings;
  v5 = [(CSLPRFLiveActivitiesAppMutableSettings *)&v7 init];
  if (v5)
  {
    v5->_globalAllowLiveActivities = [v4 globalAllowLiveActivities];
    v5->_globalAutoLaunchLiveActivities = [v4 globalAutoLaunchLiveActivities];
    v5->_supportsSmartStack = [v4 supportsSmartStack];
    v5->_allowLiveActivitiesForApp = [v4 allowLiveActivitiesForApp];
    v5->_autoLaunchBehaviorForApp = [v4 autoLaunchBehaviorForApp];
  }

  return v5;
}

@end