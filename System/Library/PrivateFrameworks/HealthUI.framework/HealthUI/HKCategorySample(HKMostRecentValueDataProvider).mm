@interface HKCategorySample(HKMostRecentValueDataProvider)
- (HKGenericDataProviderCurrentValue)dataProviderValue;
@end

@implementation HKCategorySample(HKMostRecentValueDataProvider)

- (HKGenericDataProviderCurrentValue)dataProviderValue
{
  v2 = [HKGenericDataProviderCurrentValue alloc];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "value")}];
  v4 = [(HKGenericDataProviderCurrentValue *)v2 initWithValue:v3];

  endDate = [self endDate];
  [(HKGenericDataProviderCurrentValue *)v4 setDate:endDate];

  return v4;
}

@end