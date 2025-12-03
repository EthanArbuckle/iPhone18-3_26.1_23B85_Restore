@interface HKQuantitySample(HKMostRecentValueDataProvider)
- (HKGenericQuantityDataProviderCurrentValue)dataProviderValue;
@end

@implementation HKQuantitySample(HKMostRecentValueDataProvider)

- (HKGenericQuantityDataProviderCurrentValue)dataProviderValue
{
  v2 = [HKGenericQuantityDataProviderCurrentValue alloc];
  quantity = [self quantity];
  v4 = [(HKGenericQuantityDataProviderCurrentValue *)v2 initWithQuantity:quantity];

  endDate = [self endDate];
  [(HKGenericQuantityDataProviderCurrentValue *)v4 setDate:endDate];

  return v4;
}

@end