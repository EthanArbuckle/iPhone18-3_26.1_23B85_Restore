@interface HKQuantitySample(WDCorrelationListDataProvider)
- (id)quantitySampleForType:()WDCorrelationListDataProvider;
@end

@implementation HKQuantitySample(WDCorrelationListDataProvider)

- (id)quantitySampleForType:()WDCorrelationListDataProvider
{
  v4 = a3;
  quantityType = [self quantityType];
  v6 = [v4 isEqual:quantityType];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end