@interface CSLPRFDepthAutoLaunchAppSetting
+ (int64_t)preferredVersion;
- (CSLPRFDepthAutoLaunchAppSetting)init;
- (CSLPRFDepthAutoLaunchAppSetting)initWithDelegate:(id)a3;
- (CSLPRFDepthAutoLaunchAppSetting)initWithVersion:(int64_t)a3;
- (CSLPRFDepthAutoLaunchAppSettingDelegate)delegate;
- (CSLPRFDepthAutoLaunchSettings)settings;
- (void)autoLaunchSettingCoordinator:(id)a3 didUpdateSettings:(id)a4;
- (void)updateSettingsWithBlock:(id)a3;
@end

@implementation CSLPRFDepthAutoLaunchAppSetting

- (CSLPRFDepthAutoLaunchAppSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)autoLaunchSettingCoordinator:(id)a3 didUpdateSettings:(id)a4
{
  v5 = [(CSLPRFDepthAutoLaunchAppSetting *)self delegate:a3];
  [v5 depthAutoLaunchAppSettingDidUpdate:self];
}

- (void)updateSettingsWithBlock:(id)a3
{
  v4 = a3;
  v7 = [(CSLPRFDepthAutoLaunchAppSetting *)self settings];
  v5 = [v7 mutableCopy];
  v4[2](v4, v5);

  if (([v7 isEqual:v5] & 1) == 0)
  {
    v6 = [(CSLPRFDepthAutoLaunchAppSetting *)self coordinator];
    [v6 applySettings:v5];
  }
}

- (CSLPRFDepthAutoLaunchSettings)settings
{
  v2 = [(CSLPRFDepthAutoLaunchAppSetting *)self coordinator];
  v3 = [v2 settings];
  v4 = [v3 copy];

  return v4;
}

- (CSLPRFDepthAutoLaunchAppSetting)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CSLPRFDepthAutoLaunchAppSetting *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (CSLPRFDepthAutoLaunchAppSetting)initWithVersion:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = CSLPRFDepthAutoLaunchAppSetting;
  v4 = [(CSLPRFDepthAutoLaunchAppSetting *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_version = a3;
    if (a3 == 1)
    {
      v7 = objc_alloc_init(CSLPRFDepthAutoLaunchSettingsMigrator);
      [(CSLPRFDepthAutoLaunchSettingsMigrator *)v7 migrateIfNeeded];
      v8 = objc_alloc_init(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl);
      coordinator = v5->_coordinator;
      v5->_coordinator = v8;
    }

    else if (a3)
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = *MEMORY[0x277CBE660];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [v10 raise:v11 format:{@"Unknown CSLPRFDepthAutoLaunchVersion: %@", v7}];
    }

    else
    {
      v6 = objc_alloc_init(CSLPRFDepthAutoLaunchAppSettingKincaidImpl);
      v7 = v5->_coordinator;
      v5->_coordinator = v6;
    }

    [(CSLPRFDepthAutoLaunchSettingCoordinatorImpl *)v5->_coordinator setDelegate:v5];
  }

  return v5;
}

- (CSLPRFDepthAutoLaunchAppSetting)init
{
  v3 = [objc_opt_class() preferredVersion];

  return [(CSLPRFDepthAutoLaunchAppSetting *)self initWithVersion:v3];
}

+ (int64_t)preferredVersion
{
  v2 = [MEMORY[0x277D37B50] sharedInstance];
  v3 = [v2 getActivePairedDeviceExcludingAltAccount];

  if (v3)
  {
    v4 = [v3 supportsCapability:2878292065];
  }

  else
  {
    v5 = cslprf_settings_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_22CE92000, v5, OS_LOG_TYPE_FAULT, "PDRDevice was nil", v7, 2u);
    }

    v4 = 1;
  }

  return v4;
}

@end