@interface SNNMILListValue
- (SNNMILListValue)initWithValues:(id)a3;
@end

@implementation SNNMILListValue

- (SNNMILListValue)initWithValues:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SNNMILListValue;
  v5 = [(SNNMILValue *)&v8 init];
  values = v5->_values;
  v5->_values = v4;

  return v5;
}

@end