@interface HKQuantitySample(WDCorrelationListDataProvider)
- (id)quantitySampleForType:()WDCorrelationListDataProvider;
@end

@implementation HKQuantitySample(WDCorrelationListDataProvider)

- (id)quantitySampleForType:()WDCorrelationListDataProvider
{
  v4 = a3;
  v5 = [a1 quantityType];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end