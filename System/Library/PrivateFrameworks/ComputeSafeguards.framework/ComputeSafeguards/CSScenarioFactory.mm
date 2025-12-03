@interface CSScenarioFactory
+ (id)scenarioForIdentifier:(id)identifier withProperties:(id)properties;
@end

@implementation CSScenarioFactory

+ (id)scenarioForIdentifier:(id)identifier withProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  v7 = [0 objectForKey:identifierCopy];
  if (!v7)
  {
    v7 = [[CSScenario alloc] initWithIdentifier:identifierCopy andCriteria:propertiesCopy];
    [0 setObject:v7 forKeyedSubscript:identifierCopy];
  }

  return v7;
}

@end