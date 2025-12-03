@interface HKAFibBurdenDataProviderCurrentValue
- (HKAFibBurdenDataProviderCurrentValue)initWithMaxValue:(id)value date:(id)date;
@end

@implementation HKAFibBurdenDataProviderCurrentValue

- (HKAFibBurdenDataProviderCurrentValue)initWithMaxValue:(id)value date:(id)date
{
  valueCopy = value;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = HKAFibBurdenDataProviderCurrentValue;
  v9 = [(HKAFibBurdenDataProviderCurrentValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, date);
    objc_storeStrong(&v10->_maxValue, value);
  }

  return v10;
}

@end