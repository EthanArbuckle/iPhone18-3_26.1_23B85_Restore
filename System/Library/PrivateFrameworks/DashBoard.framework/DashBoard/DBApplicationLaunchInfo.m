@interface DBApplicationLaunchInfo
+ (id)launchInfoForApplication:(id)a3;
+ (id)launchInfoForApplication:(id)a3 withActivationSettings:(id)a4;
- (DBApplicationLaunchInfo)initWithApplication:(id)a3 activationSettings:(id)a4;
@end

@implementation DBApplicationLaunchInfo

+ (id)launchInfoForApplication:(id)a3
{
  v3 = a3;
  v4 = [[DBApplicationLaunchInfo alloc] initWithApplication:v3 activationSettings:0];

  return v4;
}

+ (id)launchInfoForApplication:(id)a3 withActivationSettings:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DBApplicationLaunchInfo alloc] initWithApplication:v6 activationSettings:v5];

  return v7;
}

- (DBApplicationLaunchInfo)initWithApplication:(id)a3 activationSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DBApplicationLaunchInfo;
  v9 = [(DBApplicationLaunchInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_application, a3);
    objc_storeStrong(&v10->_activationSettings, a4);
  }

  return v10;
}

@end