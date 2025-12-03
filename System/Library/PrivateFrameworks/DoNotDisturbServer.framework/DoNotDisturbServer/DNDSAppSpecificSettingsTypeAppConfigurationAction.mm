@interface DNDSAppSpecificSettingsTypeAppConfigurationAction
+ (id)appSpecificSettingsForManagedObject:(id)object;
+ (void)completeManagedObject:(id)object forAppSpecificSettings:(id)settings;
@end

@implementation DNDSAppSpecificSettingsTypeAppConfigurationAction

+ (id)appSpecificSettingsForManagedObject:(id)object
{
  v3 = MEMORY[0x277D05898];
  objectCopy = object;
  v5 = [v3 alloc];
  encodedAction = [objectCopy encodedAction];
  identifier = [objectCopy identifier];
  application = [objectCopy application];
  bundleIdentifier = [application bundleIdentifier];
  enabled = [objectCopy enabled];

  v11 = [v5 initWithEncodedAction:encodedAction actionIdentifier:identifier bundleIdentifier:bundleIdentifier enabled:enabled];

  return v11;
}

+ (void)completeManagedObject:(id)object forAppSpecificSettings:(id)settings
{
  settingsCopy = settings;
  objectCopy = object;
  application = [objectCopy application];
  bundleIdentifier = [application bundleIdentifier];
  [settingsCopy setBundleIdentifier:bundleIdentifier];

  identifier = [objectCopy identifier];
  [settingsCopy setIdentifier:identifier];

  encodedAction = [settingsCopy encodedAction];
  [objectCopy setEncodedAction:encodedAction];

  isEnabled = [settingsCopy isEnabled];
  [objectCopy setEnabled:isEnabled];
}

@end