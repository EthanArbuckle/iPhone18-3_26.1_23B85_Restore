@interface HUAccessoryHearingSettings
+ (id)sharedInstance;
- (BOOL)activeHearingProtectionAvailableForAddress:(id)a3;
- (BOOL)activeHearingProtectionEnabledForAddress:(id)a3;
- (NSDictionary)activeHearingProtectionAvailable;
- (NSDictionary)activeHearingProtectionEnabled;
- (void)logMessage:(id)a3;
@end

@implementation HUAccessoryHearingSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[HUAccessoryHearingSettings sharedInstance];
  }

  v3 = sharedInstance_Settings_0;

  return v3;
}

uint64_t __44__HUAccessoryHearingSettings_sharedInstance__block_invoke()
{
  sharedInstance_Settings_0 = objc_alloc_init(HUAccessoryHearingSettings);

  return MEMORY[0x1EEE66BB8]();
}

- (NSDictionary)activeHearingProtectionEnabled
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"activeHearingProtectionEnabled" withClass:v3 andDefaultValue:0];
}

- (void)logMessage:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)activeHearingProtectionAvailable
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"activeHearingProtectionAvailable" withClass:v3 andDefaultValue:0];
}

- (BOOL)activeHearingProtectionEnabledForAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(HUAccessoryHearingSettings *)self activeHearingProtectionEnabled];
    v6 = [v5 valueForKey:v4];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)activeHearingProtectionAvailableForAddress:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(HUAccessoryHearingSettings *)self activeHearingProtectionAvailable];
    v6 = HCLogHearingProtection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Checking available for %@ = %@", &v11, 0x16u);
    }

    v7 = [v5 valueForKey:v4];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 BOOLValue];
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

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

@end