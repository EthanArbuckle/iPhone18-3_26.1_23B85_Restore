@interface DBApplicationLaunchInfo
+ (id)launchInfoForApplication:(id)application;
+ (id)launchInfoForApplication:(id)application withActivationSettings:(id)settings;
- (DBApplicationLaunchInfo)initWithApplication:(id)application activationSettings:(id)settings;
@end

@implementation DBApplicationLaunchInfo

+ (id)launchInfoForApplication:(id)application
{
  applicationCopy = application;
  v4 = [[DBApplicationLaunchInfo alloc] initWithApplication:applicationCopy activationSettings:0];

  return v4;
}

+ (id)launchInfoForApplication:(id)application withActivationSettings:(id)settings
{
  settingsCopy = settings;
  applicationCopy = application;
  v7 = [[DBApplicationLaunchInfo alloc] initWithApplication:applicationCopy activationSettings:settingsCopy];

  return v7;
}

- (DBApplicationLaunchInfo)initWithApplication:(id)application activationSettings:(id)settings
{
  applicationCopy = application;
  settingsCopy = settings;
  v12.receiver = self;
  v12.super_class = DBApplicationLaunchInfo;
  v9 = [(DBApplicationLaunchInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_application, application);
    objc_storeStrong(&v10->_activationSettings, settings);
  }

  return v10;
}

@end