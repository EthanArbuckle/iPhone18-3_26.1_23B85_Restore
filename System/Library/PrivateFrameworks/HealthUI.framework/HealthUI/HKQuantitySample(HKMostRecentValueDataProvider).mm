@interface HKQuantitySample(HKMostRecentValueDataProvider)
- (HKGenericQuantityDataProviderCurrentValue)dataProviderValue;
@end

@implementation HKQuantitySample(HKMostRecentValueDataProvider)

- (HKGenericQuantityDataProviderCurrentValue)dataProviderValue
{
  v2 = [HKGenericQuantityDataProviderCurrentValue alloc];
  v3 = [a1 quantity];
  v4 = [(HKGenericQuantityDataProviderCurrentValue *)v2 initWithQuantity:v3];

  v5 = [a1 endDate];
  [(HKGenericQuantityDataProviderCurrentValue *)v4 setDate:v5];

  return v4;
}

@end