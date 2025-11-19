@interface CSScenarioFactory
+ (id)scenarioForIdentifier:(id)a3 withProperties:(id)a4;
@end

@implementation CSScenarioFactory

+ (id)scenarioForIdentifier:(id)a3 withProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [0 objectForKey:v5];
  if (!v7)
  {
    v7 = [[CSScenario alloc] initWithIdentifier:v5 andCriteria:v6];
    [0 setObject:v7 forKeyedSubscript:v5];
  }

  return v7;
}

@end