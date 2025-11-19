@interface HMDHH2FrameworkSwitchDefaultDataSource
- (BOOL)isHH2Enabled;
- (id)controller:(id)a3 cloudDatabaseWithContainerID:(id)a4;
- (unint64_t)setupMode;
- (void)initiateDaemonRelaunchToHH2:(BOOL)a3;
@end

@implementation HMDHH2FrameworkSwitchDefaultDataSource

- (void)initiateDaemonRelaunchToHH2:(BOOL)a3
{
  v5 = dispatch_time(0, 1000000000);
  v6 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDHH2FrameworkSwitchDefaultDataSource_initiateDaemonRelaunchToHH2___block_invoke;
  v7[3] = &unk_27867E0C8;
  v8 = a3;
  v9 = 1;
  v7[4] = self;
  dispatch_after(v5, v6, v7);
}

void __70__HMDHH2FrameworkSwitchDefaultDataSource_initiateDaemonRelaunchToHH2___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [HMDHH2FrameworkSwitch setHH2EnablementPreferenceKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v2 == v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@We are in the right world, do not relaunch.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@See you on the other side - restarting...", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = +[HMDMainDriver driver];
    [v10 relaunch];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)controller:(id)a3 cloudDatabaseWithContainerID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMDDatabase defaultDatabase];
  v9 = [v8 localDatabase];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D170E0]) initWithContainerID:v7];
    [v10 setSubscriptionPushRegistrationAction:1];
    v11 = [objc_alloc(MEMORY[0x277D17048]) initWithLocalDatabase:v9 configuration:v10 error:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get default local database", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (unint64_t)setupMode
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"HHTTSUMode", @"com.apple.homed", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 0;
  }

  return result;
}

- (BOOL)isHH2Enabled
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"isHH2Enabled", @"com.apple.homed", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    LOBYTE(AppBooleanValue) = AppBooleanValue != 0;
  }

  else
  {
    AppBooleanValue = _os_feature_enabled_impl();
    if (AppBooleanValue)
    {
      AppBooleanValue = HMFIsInternalBuild();
      if (AppBooleanValue)
      {
        LOBYTE(AppBooleanValue) = CFPreferencesGetAppBooleanValue(@"enableRetailDemoSetup", @"com.apple.homed", 0) == 0;
      }
    }
  }

  return AppBooleanValue;
}

@end