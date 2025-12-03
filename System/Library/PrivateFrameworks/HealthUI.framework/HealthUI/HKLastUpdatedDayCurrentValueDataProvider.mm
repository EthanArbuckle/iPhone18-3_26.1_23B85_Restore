@interface HKLastUpdatedDayCurrentValueDataProvider
- (id)currentValue;
@end

@implementation HKLastUpdatedDayCurrentValueDataProvider

- (id)currentValue
{
  value = [(HKValueDataProvider *)self value];
  date = [value date];

  if (date)
  {
    v5 = objc_alloc_init(HKLastUpdatedDayDataProviderCurrentValue);
    value2 = [(HKValueDataProvider *)self value];
    date2 = [value2 date];
    [(HKLastUpdatedDayDataProviderCurrentValue *)v5 setDate:date2];
  }

  else
  {
    v5 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  return v5;
}

@end