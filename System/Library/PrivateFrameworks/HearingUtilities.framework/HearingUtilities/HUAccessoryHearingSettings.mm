@interface HUAccessoryHearingSettings
+ (id)sharedInstance;
- (BOOL)activeHearingProtectionAvailableForAddress:(id)address;
- (BOOL)activeHearingProtectionEnabledForAddress:(id)address;
- (NSDictionary)activeHearingProtectionAvailable;
- (NSDictionary)activeHearingProtectionEnabled;
- (void)logMessage:(id)message;
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

- (void)logMessage:(id)message
{
  v8 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = messageCopy;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)activeHearingProtectionAvailable
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"activeHearingProtectionAvailable" withClass:v3 andDefaultValue:0];
}

- (BOOL)activeHearingProtectionEnabledForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    activeHearingProtectionEnabled = [(HUAccessoryHearingSettings *)self activeHearingProtectionEnabled];
    v6 = [activeHearingProtectionEnabled valueForKey:addressCopy];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)activeHearingProtectionAvailableForAddress:(id)address
{
  v15 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if ([addressCopy length])
  {
    activeHearingProtectionAvailable = [(HUAccessoryHearingSettings *)self activeHearingProtectionAvailable];
    v6 = HCLogHearingProtection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = addressCopy;
      v13 = 2112;
      v14 = activeHearingProtectionAvailable;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Checking available for %@ = %@", &v11, 0x16u);
    }

    v7 = [activeHearingProtectionAvailable valueForKey:addressCopy];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

@end