@interface HKCorrelation(WDCorrelationListDataProvider)
- (id)quantitySampleForType:()WDCorrelationListDataProvider;
@end

@implementation HKCorrelation(WDCorrelationListDataProvider)

- (id)quantitySampleForType:()WDCorrelationListDataProvider
{
  v1 = [self objectsForType:?];
  anyObject = [v1 anyObject];

  return anyObject;
}

@end