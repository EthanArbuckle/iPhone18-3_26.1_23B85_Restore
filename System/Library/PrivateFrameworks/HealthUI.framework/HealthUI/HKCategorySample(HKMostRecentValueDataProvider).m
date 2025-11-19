@interface HKCategorySample(HKMostRecentValueDataProvider)
- (HKGenericDataProviderCurrentValue)dataProviderValue;
@end

@implementation HKCategorySample(HKMostRecentValueDataProvider)

- (HKGenericDataProviderCurrentValue)dataProviderValue
{
  v2 = [HKGenericDataProviderCurrentValue alloc];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "value")}];
  v4 = [(HKGenericDataProviderCurrentValue *)v2 initWithValue:v3];

  v5 = [a1 endDate];
  [(HKGenericDataProviderCurrentValue *)v4 setDate:v5];

  return v4;
}

@end