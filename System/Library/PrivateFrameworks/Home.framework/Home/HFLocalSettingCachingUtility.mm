@interface HFLocalSettingCachingUtility
+ (id)sharedInstance;
- (BOOL)getWelcomeBannerDismissedLocalCachedValue:(id)value;
- (HFLocalSettingCachingUtility)init;
- (id)_getValueForSetting:(id)setting;
- (id)_getWelcomeBannerDismissedKey:(id)key;
- (void)_setValueForSetting:(id)setting settingValue:(id)value;
@end

@implementation HFLocalSettingCachingUtility

+ (id)sharedInstance
{
  if (qword_280E02AE0 != -1)
  {
    dispatch_once(&qword_280E02AE0, &__block_literal_global_11);
  }

  v3 = _MergedGlobals_213;

  return v3;
}

void __46__HFLocalSettingCachingUtility_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HFLocalSettingCachingUtility);
  v1 = _MergedGlobals_213;
  _MergedGlobals_213 = v0;
}

- (HFLocalSettingCachingUtility)init
{
  v6.receiver = self;
  v6.super_class = HFLocalSettingCachingUtility;
  v2 = [(HFLocalSettingCachingUtility *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(HFLocalSettingCachingUtility *)v2 setSettingCache:v3];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [(HFLocalSettingCachingUtility *)v2 setDefaults:standardUserDefaults];
  }

  return v2;
}

- (BOOL)getWelcomeBannerDismissedLocalCachedValue:(id)value
{
  v4 = [(HFLocalSettingCachingUtility *)self _getWelcomeBannerDismissedKey:value];
  v5 = [(HFLocalSettingCachingUtility *)self _getValueForSetting:v4];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)_getValueForSetting:(id)setting
{
  settingCopy = setting;
  settingCache = [(HFLocalSettingCachingUtility *)self settingCache];
  v6 = [settingCache objectForKeyedSubscript:settingCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    defaults = [(HFLocalSettingCachingUtility *)self defaults];
    v9 = [defaults valueForKey:settingCopy];

    if (v9)
    {
      defaults2 = [(HFLocalSettingCachingUtility *)self defaults];
      v7 = [defaults2 valueForKey:settingCopy];

      settingCache2 = [(HFLocalSettingCachingUtility *)self settingCache];
      [settingCache2 setObject:v7 forKeyedSubscript:settingCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_setValueForSetting:(id)setting settingValue:(id)value
{
  valueCopy = value;
  settingCopy = setting;
  defaults = [(HFLocalSettingCachingUtility *)self defaults];
  [defaults setValue:valueCopy forKey:settingCopy];

  settingCache = [(HFLocalSettingCachingUtility *)self settingCache];
  [settingCache setObject:valueCopy forKeyedSubscript:settingCopy];
}

- (id)_getWelcomeBannerDismissedKey:(id)key
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [key uuid];
  v5 = [v3 stringWithFormat:@"%@:%@", @"root.home.dismissedWelcomeUI", uuid];

  return v5;
}

@end