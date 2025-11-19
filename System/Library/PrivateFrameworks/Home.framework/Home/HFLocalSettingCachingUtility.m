@interface HFLocalSettingCachingUtility
+ (id)sharedInstance;
- (BOOL)getWelcomeBannerDismissedLocalCachedValue:(id)a3;
- (HFLocalSettingCachingUtility)init;
- (id)_getValueForSetting:(id)a3;
- (id)_getWelcomeBannerDismissedKey:(id)a3;
- (void)_setValueForSetting:(id)a3 settingValue:(id)a4;
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

    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [(HFLocalSettingCachingUtility *)v2 setDefaults:v4];
  }

  return v2;
}

- (BOOL)getWelcomeBannerDismissedLocalCachedValue:(id)a3
{
  v4 = [(HFLocalSettingCachingUtility *)self _getWelcomeBannerDismissedKey:a3];
  v5 = [(HFLocalSettingCachingUtility *)self _getValueForSetting:v4];
  v6 = [v5 BOOLValue];

  return v6;
}

- (id)_getValueForSetting:(id)a3
{
  v4 = a3;
  v5 = [(HFLocalSettingCachingUtility *)self settingCache];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(HFLocalSettingCachingUtility *)self defaults];
    v9 = [v8 valueForKey:v4];

    if (v9)
    {
      v10 = [(HFLocalSettingCachingUtility *)self defaults];
      v7 = [v10 valueForKey:v4];

      v11 = [(HFLocalSettingCachingUtility *)self settingCache];
      [v11 setObject:v7 forKeyedSubscript:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_setValueForSetting:(id)a3 settingValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFLocalSettingCachingUtility *)self defaults];
  [v8 setValue:v6 forKey:v7];

  v9 = [(HFLocalSettingCachingUtility *)self settingCache];
  [v9 setObject:v6 forKeyedSubscript:v7];
}

- (id)_getWelcomeBannerDismissedKey:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 uuid];
  v5 = [v3 stringWithFormat:@"%@:%@", @"root.home.dismissedWelcomeUI", v4];

  return v5;
}

@end