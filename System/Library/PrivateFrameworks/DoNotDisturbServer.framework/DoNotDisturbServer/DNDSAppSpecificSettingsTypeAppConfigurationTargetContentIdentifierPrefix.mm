@interface DNDSAppSpecificSettingsTypeAppConfigurationTargetContentIdentifierPrefix
+ (id)dictionaryRepresentationForAppSpecificSettings:(id)settings;
@end

@implementation DNDSAppSpecificSettingsTypeAppConfigurationTargetContentIdentifierPrefix

+ (id)dictionaryRepresentationForAppSpecificSettings:(id)settings
{
  settingsCopy = settings;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  [v4 setObject:settingsCopy forKeyedSubscript:@"AppConfigurationTargetContentIdentifierPrefix"];
  v5 = [v4 copy];

  return v5;
}

@end