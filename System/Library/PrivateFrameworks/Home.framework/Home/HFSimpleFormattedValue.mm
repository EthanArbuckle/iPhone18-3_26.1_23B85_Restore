@interface HFSimpleFormattedValue
- (HFSimpleFormattedValue)initWithFormattedValue:(id)a3;
- (id)observeFormattedValueChangesWithBlock:(id)a3;
@end

@implementation HFSimpleFormattedValue

- (HFSimpleFormattedValue)initWithFormattedValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFSimpleFormattedValue;
  v6 = [(HFSimpleFormattedValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentFormattedValue, a3);
  }

  return v7;
}

- (id)observeFormattedValueChangesWithBlock:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

@end