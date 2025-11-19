@interface CSLPRFDepthAutoLaunchAppSettingLighthouseImpl
+ (id)dictionaryForSettings:(id)a3;
+ (id)settingsForDictionary:(id)a3;
- (CSLPRFDepthAutoLaunchAppSettingLighthouseImpl)init;
- (CSLPRFDepthAutoLaunchSettingCoordinatorImplDelegate)delegate;
- (CSLPRFDepthAutoLaunchSettings)settings;
- (void)_updateWithDictionary:(id)a3;
- (void)applySettings:(id)a3;
- (void)twoWaySyncSettingDidUpdate:(id)a3;
@end

@implementation CSLPRFDepthAutoLaunchAppSettingLighthouseImpl

- (CSLPRFDepthAutoLaunchSettingCoordinatorImplDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)twoWaySyncSettingDidUpdate:(id)a3
{
  v4 = [a3 value];
  [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)self _updateWithDictionary:v4];
}

- (void)_updateWithDictionary:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [CSLPRFDepthAutoLaunchAppSettingLighthouseImpl settingsForDictionary:v4];

  if ([v8 isEqual:self->_settings])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = [v8 copy];
    settings = self->_settings;
    self->_settings = v5;

    os_unfair_lock_unlock(&self->_lock);
    v7 = [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)self delegate];
    [v7 autoLaunchSettingCoordinator:self didUpdateSettings:v8];
  }
}

- (void)applySettings:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([v8 isEqual:self->_settings])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v4 = [v8 copy];
    settings = self->_settings;
    self->_settings = v4;

    v6 = [CSLPRFDepthAutoLaunchAppSettingLighthouseImpl dictionaryForSettings:self->_settings];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v7 = [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)self underlyingSetting];
      [v7 setValue:v6];
    }
  }
}

- (CSLPRFDepthAutoLaunchSettings)settings
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(CSLPRFDepthAutoLaunchSettings *)self->_settings copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (CSLPRFDepthAutoLaunchAppSettingLighthouseImpl)init
{
  v7.receiver = self;
  v7.super_class = CSLPRFDepthAutoLaunchAppSettingLighthouseImpl;
  v2 = [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)&v7 init];
  if (v2)
  {
    v3 = -[CSLPRFTwoWaySyncSetting initWithKey:defaultValue:notification:]([CSLPRFTwoWaySyncSetting alloc], "initWithKey:defaultValue:notification:", @"AutoLaunchDepthSettings", 0, [@"com.apple.Carousel.AutoLaunchDepthSettingsChanged" UTF8String]);
    underlyingSetting = v2->_underlyingSetting;
    v2->_underlyingSetting = v3;

    [(CSLPRFTwoWaySyncSetting *)v2->_underlyingSetting setDelegate:v2];
    v5 = [(CSLPRFTwoWaySyncSetting *)v2->_underlyingSetting value];
    [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)v2 _updateWithDictionary:v5];
  }

  return v2;
}

+ (id)settingsForDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CSLPRFMutableDepthAutoLaunchSettings);
  v5 = [v3 objectForKeyedSubscript:@"bundleID"];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(CSLPRFMutableDepthAutoLaunchSettings *)v4 setBundleID:v9];
  v10 = [v3 objectForKeyedSubscript:@"behavior"];
  v11 = objc_opt_class();
  v12 = v10;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 integerValue];
  if (v15 <= 2)
  {
    [(CSLPRFMutableDepthAutoLaunchSettings *)v4 setAutoLaunchBehavior:v15];
  }

  v16 = [v3 objectForKeyedSubscript:@"changeSource"];
  v17 = objc_opt_class();
  v18 = v16;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = [v20 integerValue];
  [(CSLPRFMutableDepthAutoLaunchSettings *)v4 setChangeSource:v21];
  v22 = [v3 objectForKeyedSubscript:@"threshold"];
  v23 = objc_opt_class();
  v24 = v22;
  if (v23)
  {
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v27 = [v26 integerValue];
  if (v27 <= 1)
  {
    [(CSLPRFMutableDepthAutoLaunchSettings *)v4 setThreshold:v27];
  }

  return v4;
}

+ (id)dictionaryForSettings:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  [v5 setObject:&unk_284025360 forKeyedSubscript:@"version"];
  v6 = [v4 bundleID];
  [v5 setObject:v6 forKeyedSubscript:@"bundleID"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "autoLaunchBehavior")}];
  [v5 setObject:v7 forKeyedSubscript:@"behavior"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "changeSource")}];
  [v5 setObject:v8 forKeyedSubscript:@"changeSource"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [v4 threshold];

  v11 = [v9 numberWithInteger:v10];
  [v5 setObject:v11 forKeyedSubscript:@"threshold"];

  return v5;
}

@end