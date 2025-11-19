@interface SNNMILNamedArgument
- (SNNMILNamedArgument)initWithKey:(id)a3 value:(id)a4;
@end

@implementation SNNMILNamedArgument

- (SNNMILNamedArgument)initWithKey:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SNNMILNamedArgument;
  v9 = [(SNNMILNamedArgument *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

@end