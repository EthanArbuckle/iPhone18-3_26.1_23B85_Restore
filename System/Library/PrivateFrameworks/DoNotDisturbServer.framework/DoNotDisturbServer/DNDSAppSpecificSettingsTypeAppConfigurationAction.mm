@interface DNDSAppSpecificSettingsTypeAppConfigurationAction
+ (id)appSpecificSettingsForManagedObject:(id)a3;
+ (void)completeManagedObject:(id)a3 forAppSpecificSettings:(id)a4;
@end

@implementation DNDSAppSpecificSettingsTypeAppConfigurationAction

+ (id)appSpecificSettingsForManagedObject:(id)a3
{
  v3 = MEMORY[0x277D05898];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 encodedAction];
  v7 = [v4 identifier];
  v8 = [v4 application];
  v9 = [v8 bundleIdentifier];
  v10 = [v4 enabled];

  v11 = [v5 initWithEncodedAction:v6 actionIdentifier:v7 bundleIdentifier:v9 enabled:v10];

  return v11;
}

+ (void)completeManagedObject:(id)a3 forAppSpecificSettings:(id)a4
{
  v5 = a4;
  v11 = a3;
  v6 = [v11 application];
  v7 = [v6 bundleIdentifier];
  [v5 setBundleIdentifier:v7];

  v8 = [v11 identifier];
  [v5 setIdentifier:v8];

  v9 = [v5 encodedAction];
  [v11 setEncodedAction:v9];

  v10 = [v5 isEnabled];
  [v11 setEnabled:v10];
}

@end