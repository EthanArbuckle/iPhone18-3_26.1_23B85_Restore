@interface DNDSAppSpecificSettingsTypeAppConfigurationPredicate
+ (id)appSpecificSettingsForManagedObject:(id)object;
+ (id)appSpecificSettingsFromDictionaryRepresentation:(id)representation;
+ (id)dictionaryRepresentationForAppSpecificSettings:(id)settings;
+ (void)completeManagedObject:(id)object forAppSpecificSettings:(id)settings;
@end

@implementation DNDSAppSpecificSettingsTypeAppConfigurationPredicate

+ (id)appSpecificSettingsForManagedObject:(id)object
{
  v3 = MEMORY[0x277CCAC30];
  predicateFormat = [object predicateFormat];
  v5 = [v3 predicateWithFormat:predicateFormat];

  return v5;
}

+ (void)completeManagedObject:(id)object forAppSpecificSettings:(id)settings
{
  objectCopy = object;
  predicateFormat = [settings predicateFormat];
  [objectCopy setPredicateFormat:predicateFormat];
}

+ (id)appSpecificSettingsFromDictionaryRepresentation:(id)representation
{
  v3 = MEMORY[0x277CCAC30];
  v4 = [representation objectForKeyedSubscript:@"AppConfigurationActionPredicate"];
  v5 = [v3 predicateWithFormat:v4];

  return v5;
}

+ (id)dictionaryRepresentationForAppSpecificSettings:(id)settings
{
  settingsCopy = settings;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  predicateFormat = [settingsCopy predicateFormat];
  [v4 setObject:predicateFormat forKeyedSubscript:@"AppConfigurationActionPredicate"];

  v6 = [v4 copy];

  return v6;
}

@end