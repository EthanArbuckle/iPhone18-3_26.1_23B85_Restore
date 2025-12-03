@interface CSLPRFDepthAutoLaunchAppSetting
+ (int64_t)preferredVersion;
- (CSLPRFDepthAutoLaunchAppSetting)init;
- (CSLPRFDepthAutoLaunchAppSetting)initWithDelegate:(id)delegate;
- (CSLPRFDepthAutoLaunchAppSetting)initWithVersion:(int64_t)version;
- (CSLPRFDepthAutoLaunchAppSettingDelegate)delegate;
- (CSLPRFDepthAutoLaunchSettings)settings;
- (void)autoLaunchSettingCoordinator:(id)coordinator didUpdateSettings:(id)settings;
- (void)updateSettingsWithBlock:(id)block;
@end

@implementation CSLPRFDepthAutoLaunchAppSetting

- (CSLPRFDepthAutoLaunchAppSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)autoLaunchSettingCoordinator:(id)coordinator didUpdateSettings:(id)settings
{
  v5 = [(CSLPRFDepthAutoLaunchAppSetting *)self delegate:coordinator];
  [v5 depthAutoLaunchAppSettingDidUpdate:self];
}

- (void)updateSettingsWithBlock:(id)block
{
  blockCopy = block;
  settings = [(CSLPRFDepthAutoLaunchAppSetting *)self settings];
  v5 = [settings mutableCopy];
  blockCopy[2](blockCopy, v5);

  if (([settings isEqual:v5] & 1) == 0)
  {
    coordinator = [(CSLPRFDepthAutoLaunchAppSetting *)self coordinator];
    [coordinator applySettings:v5];
  }
}

- (CSLPRFDepthAutoLaunchSettings)settings
{
  coordinator = [(CSLPRFDepthAutoLaunchAppSetting *)self coordinator];
  settings = [coordinator settings];
  v4 = [settings copy];

  return v4;
}

- (CSLPRFDepthAutoLaunchAppSetting)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(CSLPRFDepthAutoLaunchAppSetting *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (CSLPRFDepthAutoLaunchAppSetting)initWithVersion:(int64_t)version
{
  v13.receiver = self;
  v13.super_class = CSLPRFDepthAutoLaunchAppSetting;
  v4 = [(CSLPRFDepthAutoLaunchAppSetting *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_version = version;
    if (version == 1)
    {
      v7 = objc_alloc_init(CSLPRFDepthAutoLaunchSettingsMigrator);
      [(CSLPRFDepthAutoLaunchSettingsMigrator *)v7 migrateIfNeeded];
      v8 = objc_alloc_init(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl);
      coordinator = v5->_coordinator;
      v5->_coordinator = v8;
    }

    else if (version)
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = *MEMORY[0x277CBE660];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:version];
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
  preferredVersion = [objc_opt_class() preferredVersion];

  return [(CSLPRFDepthAutoLaunchAppSetting *)self initWithVersion:preferredVersion];
}

+ (int64_t)preferredVersion
{
  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  getActivePairedDeviceExcludingAltAccount = [mEMORY[0x277D37B50] getActivePairedDeviceExcludingAltAccount];

  if (getActivePairedDeviceExcludingAltAccount)
  {
    v4 = [getActivePairedDeviceExcludingAltAccount supportsCapability:2878292065];
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