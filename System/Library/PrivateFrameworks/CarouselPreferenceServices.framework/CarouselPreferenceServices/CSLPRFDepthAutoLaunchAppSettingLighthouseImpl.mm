@interface CSLPRFDepthAutoLaunchAppSettingLighthouseImpl
+ (id)dictionaryForSettings:(id)settings;
+ (id)settingsForDictionary:(id)dictionary;
- (CSLPRFDepthAutoLaunchAppSettingLighthouseImpl)init;
- (CSLPRFDepthAutoLaunchSettingCoordinatorImplDelegate)delegate;
- (CSLPRFDepthAutoLaunchSettings)settings;
- (void)_updateWithDictionary:(id)dictionary;
- (void)applySettings:(id)settings;
- (void)twoWaySyncSettingDidUpdate:(id)update;
@end

@implementation CSLPRFDepthAutoLaunchAppSettingLighthouseImpl

- (CSLPRFDepthAutoLaunchSettingCoordinatorImplDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)twoWaySyncSettingDidUpdate:(id)update
{
  value = [update value];
  [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)self _updateWithDictionary:value];
}

- (void)_updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock(&self->_lock);
  v8 = [CSLPRFDepthAutoLaunchAppSettingLighthouseImpl settingsForDictionary:dictionaryCopy];

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
    delegate = [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)self delegate];
    [delegate autoLaunchSettingCoordinator:self didUpdateSettings:v8];
  }
}

- (void)applySettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock(&self->_lock);
  if ([settingsCopy isEqual:self->_settings])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v4 = [settingsCopy copy];
    settings = self->_settings;
    self->_settings = v4;

    v6 = [CSLPRFDepthAutoLaunchAppSettingLighthouseImpl dictionaryForSettings:self->_settings];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      underlyingSetting = [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)self underlyingSetting];
      [underlyingSetting setValue:v6];
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
    value = [(CSLPRFTwoWaySyncSetting *)v2->_underlyingSetting value];
    [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)v2 _updateWithDictionary:value];
  }

  return v2;
}

+ (id)settingsForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(CSLPRFMutableDepthAutoLaunchSettings);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
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
  v10 = [dictionaryCopy objectForKeyedSubscript:@"behavior"];
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

  integerValue = [v14 integerValue];
  if (integerValue <= 2)
  {
    [(CSLPRFMutableDepthAutoLaunchSettings *)v4 setAutoLaunchBehavior:integerValue];
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"changeSource"];
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

  integerValue2 = [v20 integerValue];
  [(CSLPRFMutableDepthAutoLaunchSettings *)v4 setChangeSource:integerValue2];
  v22 = [dictionaryCopy objectForKeyedSubscript:@"threshold"];
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

  integerValue3 = [v26 integerValue];
  if (integerValue3 <= 1)
  {
    [(CSLPRFMutableDepthAutoLaunchSettings *)v4 setThreshold:integerValue3];
  }

  return v4;
}

+ (id)dictionaryForSettings:(id)settings
{
  v3 = MEMORY[0x277CBEB38];
  settingsCopy = settings;
  dictionary = [v3 dictionary];
  [dictionary setObject:&unk_284025360 forKeyedSubscript:@"version"];
  bundleID = [settingsCopy bundleID];
  [dictionary setObject:bundleID forKeyedSubscript:@"bundleID"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(settingsCopy, "autoLaunchBehavior")}];
  [dictionary setObject:v7 forKeyedSubscript:@"behavior"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(settingsCopy, "changeSource")}];
  [dictionary setObject:v8 forKeyedSubscript:@"changeSource"];

  v9 = MEMORY[0x277CCABB0];
  threshold = [settingsCopy threshold];

  v11 = [v9 numberWithInteger:threshold];
  [dictionary setObject:v11 forKeyedSubscript:@"threshold"];

  return dictionary;
}

@end