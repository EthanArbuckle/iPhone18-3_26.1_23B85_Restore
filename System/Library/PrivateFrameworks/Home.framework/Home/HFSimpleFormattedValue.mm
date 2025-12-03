@interface HFSimpleFormattedValue
- (HFSimpleFormattedValue)initWithFormattedValue:(id)value;
- (id)observeFormattedValueChangesWithBlock:(id)block;
@end

@implementation HFSimpleFormattedValue

- (HFSimpleFormattedValue)initWithFormattedValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = HFSimpleFormattedValue;
  v6 = [(HFSimpleFormattedValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentFormattedValue, value);
  }

  return v7;
}

- (id)observeFormattedValueChangesWithBlock:(id)block
{
  v3 = objc_opt_new();

  return v3;
}

@end