@interface CSLPRFDepthAutoLaunchAppSettingKincaidImpl
- (CSLPRFDepthAutoLaunchAppSettingKincaidImpl)init;
- (CSLPRFDepthAutoLaunchSettingCoordinatorImplDelegate)delegate;
- (CSLPRFDepthAutoLaunchSettings)settings;
- (void)_withLock:(id)a3;
- (void)applySettings:(id)a3;
- (void)removeLegacySettings;
- (void)twoWaySyncSettingDidUpdate:(id)a3;
@end

@implementation CSLPRFDepthAutoLaunchAppSettingKincaidImpl

- (CSLPRFDepthAutoLaunchSettingCoordinatorImplDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)twoWaySyncSettingDidUpdate:(id)a3
{
  v5 = [(CSLPRFDepthAutoLaunchAppSettingKincaidImpl *)self delegate];
  v4 = [(CSLPRFDepthAutoLaunchAppSettingKincaidImpl *)self settings];
  [v5 autoLaunchSettingCoordinator:self didUpdateSettings:v4];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)applySettings:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__CSLPRFDepthAutoLaunchAppSettingKincaidImpl_applySettings___block_invoke;
  v6[3] = &unk_2787455E0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CSLPRFDepthAutoLaunchAppSettingKincaidImpl *)self _withLock:v6];
}

void __60__CSLPRFDepthAutoLaunchAppSettingKincaidImpl_applySettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleID];
  v3 = [*(a1 + 40) bundleIDSetting];
  v4 = [v3 value];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 32) bundleID];
    v7 = [*(a1 + 40) bundleIDSetting];
    [v7 setValue:v6];
  }

  v8 = [*(a1 + 32) changeSource];
  v9 = [*(a1 + 40) changeSourceSetting];
  v10 = [v9 value];
  v11 = [v10 integerValue];

  if (v8 != v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "changeSource")}];
    v13 = [*(a1 + 40) changeSourceSetting];
    [v13 setValue:v12];
  }

  v14 = [*(a1 + 40) enabledSetting];
  v15 = [v14 value];
  v16 = [v15 BOOLValue];

  if ([*(a1 + 32) autoLaunchBehavior] == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Cannot set 'clock' behavior on legacy implementation", buf, 2u);
    }
  }

  else
  {
    if (([*(a1 + 32) autoLaunchBehavior] != 1) | v16 & 1)
    {
      if ((([*(a1 + 32) autoLaunchBehavior] == 0) & v16) != 1)
      {
        return;
      }

      v17 = [*(a1 + 40) enabledSetting];
      v19 = v17;
      v18 = MEMORY[0x277CBEC28];
    }

    else
    {
      v17 = [*(a1 + 40) enabledSetting];
      v19 = v17;
      v18 = MEMORY[0x277CBEC38];
    }

    [v17 setValue:v18];
  }
}

- (CSLPRFDepthAutoLaunchSettings)settings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = objc_alloc_init(CSLPRFMutableDepthAutoLaunchSettings);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__CSLPRFDepthAutoLaunchAppSettingKincaidImpl_settings__block_invoke;
  v5[3] = &unk_278745590;
  v5[4] = self;
  v5[5] = &v6;
  [(CSLPRFDepthAutoLaunchAppSettingKincaidImpl *)self _withLock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__CSLPRFDepthAutoLaunchAppSettingKincaidImpl_settings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeSourceSetting];
  v3 = [v2 value];
  [*(*(*(a1 + 40) + 8) + 40) setChangeSource:{objc_msgSend(v3, "integerValue")}];

  v4 = [*(a1 + 32) bundleIDSetting];
  v5 = [v4 value];
  [*(*(*(a1 + 40) + 8) + 40) setBundleID:v5];

  v7 = [*(a1 + 32) enabledSetting];
  v6 = [v7 value];
  [*(*(*(a1 + 40) + 8) + 40) setAutoLaunchBehavior:{objc_msgSend(v6, "BOOLValue")}];
}

- (void)removeLegacySettings
{
  [(CSLPRFTwoWaySyncSetting *)self->_bundleIDSetting setValue:0];
  [(CSLPRFTwoWaySyncSetting *)self->_changeSourceSetting setValue:0];
  enabledSetting = self->_enabledSetting;

  [(CSLPRFTwoWaySyncSetting *)enabledSetting setValue:0];
}

- (CSLPRFDepthAutoLaunchAppSettingKincaidImpl)init
{
  v13.receiver = self;
  v13.super_class = CSLPRFDepthAutoLaunchAppSettingKincaidImpl;
  v2 = [(CSLPRFDepthAutoLaunchAppSettingKincaidImpl *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = -[CSLPRFTwoWaySyncSetting initWithKey:defaultValue:notification:]([CSLPRFTwoWaySyncSetting alloc], "initWithKey:defaultValue:notification:", @"AutoLaunchDepthApp", 0, [@"com.apple.Carousel.CSLPRFDepthAutoLaunchAppSettingChanged" UTF8String]);
    bundleIDSetting = v3->_bundleIDSetting;
    v3->_bundleIDSetting = v4;

    [(CSLPRFTwoWaySyncSetting *)v3->_bundleIDSetting setDelegate:v3];
    v6 = -[CSLPRFTwoWaySyncSetting initWithKey:defaultValue:notification:]([CSLPRFTwoWaySyncSetting alloc], "initWithKey:defaultValue:notification:", @"AutoLaunchDepthAppChangeSource", &unk_284025290, [@"CSLDepthAutoLaunchAppChangeSourceSettingChanged" UTF8String]);
    changeSourceSetting = v3->_changeSourceSetting;
    v3->_changeSourceSetting = v6;

    v8 = [CSLPRFTwoWaySyncSetting alloc];
    v9 = [@"com.apple.Carousel.AutoLaunchDepthEnabledChanged" UTF8String];
    v10 = [(CSLPRFTwoWaySyncSetting *)v8 initWithKey:@"AutoLaunchDepthEnabled" defaultValue:MEMORY[0x277CBEC28] notification:v9];
    enabledSetting = v3->_enabledSetting;
    v3->_enabledSetting = v10;

    [(CSLPRFTwoWaySyncSetting *)v3->_enabledSetting setDelegate:v3];
  }

  return v3;
}

@end