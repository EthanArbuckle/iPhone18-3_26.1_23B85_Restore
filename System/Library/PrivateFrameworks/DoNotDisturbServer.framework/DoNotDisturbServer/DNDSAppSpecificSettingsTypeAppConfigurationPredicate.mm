@interface DNDSAppSpecificSettingsTypeAppConfigurationPredicate
+ (id)appSpecificSettingsForManagedObject:(id)a3;
+ (id)appSpecificSettingsFromDictionaryRepresentation:(id)a3;
+ (id)dictionaryRepresentationForAppSpecificSettings:(id)a3;
+ (void)completeManagedObject:(id)a3 forAppSpecificSettings:(id)a4;
@end

@implementation DNDSAppSpecificSettingsTypeAppConfigurationPredicate

+ (id)appSpecificSettingsForManagedObject:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = [a3 predicateFormat];
  v5 = [v3 predicateWithFormat:v4];

  return v5;
}

+ (void)completeManagedObject:(id)a3 forAppSpecificSettings:(id)a4
{
  v5 = a3;
  v6 = [a4 predicateFormat];
  [v5 setPredicateFormat:v6];
}

+ (id)appSpecificSettingsFromDictionaryRepresentation:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = [a3 objectForKeyedSubscript:@"AppConfigurationActionPredicate"];
  v5 = [v3 predicateWithFormat:v4];

  return v5;
}

+ (id)dictionaryRepresentationForAppSpecificSettings:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v5 = [v3 predicateFormat];
  [v4 setObject:v5 forKeyedSubscript:@"AppConfigurationActionPredicate"];

  v6 = [v4 copy];

  return v6;
}

@end