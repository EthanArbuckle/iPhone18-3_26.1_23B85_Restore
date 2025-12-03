@interface SNNMILNamedArgument
- (SNNMILNamedArgument)initWithKey:(id)key value:(id)value;
@end

@implementation SNNMILNamedArgument

- (SNNMILNamedArgument)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = SNNMILNamedArgument;
  v9 = [(SNNMILNamedArgument *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, key);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

@end