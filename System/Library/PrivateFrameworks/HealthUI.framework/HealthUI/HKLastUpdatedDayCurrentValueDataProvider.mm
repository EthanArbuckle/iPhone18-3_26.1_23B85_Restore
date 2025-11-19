@interface HKLastUpdatedDayCurrentValueDataProvider
- (id)currentValue;
@end

@implementation HKLastUpdatedDayCurrentValueDataProvider

- (id)currentValue
{
  v3 = [(HKValueDataProvider *)self value];
  v4 = [v3 date];

  if (v4)
  {
    v5 = objc_alloc_init(HKLastUpdatedDayDataProviderCurrentValue);
    v6 = [(HKValueDataProvider *)self value];
    v7 = [v6 date];
    [(HKLastUpdatedDayDataProviderCurrentValue *)v5 setDate:v7];
  }

  else
  {
    v5 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  return v5;
}

@end