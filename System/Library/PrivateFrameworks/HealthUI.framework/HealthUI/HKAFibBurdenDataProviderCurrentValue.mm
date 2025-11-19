@interface HKAFibBurdenDataProviderCurrentValue
- (HKAFibBurdenDataProviderCurrentValue)initWithMaxValue:(id)a3 date:(id)a4;
@end

@implementation HKAFibBurdenDataProviderCurrentValue

- (HKAFibBurdenDataProviderCurrentValue)initWithMaxValue:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKAFibBurdenDataProviderCurrentValue;
  v9 = [(HKAFibBurdenDataProviderCurrentValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, a4);
    objc_storeStrong(&v10->_maxValue, a3);
  }

  return v10;
}

@end