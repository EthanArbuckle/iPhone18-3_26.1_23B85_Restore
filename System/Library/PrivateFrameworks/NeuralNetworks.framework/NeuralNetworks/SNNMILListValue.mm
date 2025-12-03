@interface SNNMILListValue
- (SNNMILListValue)initWithValues:(id)values;
@end

@implementation SNNMILListValue

- (SNNMILListValue)initWithValues:(id)values
{
  valuesCopy = values;
  v8.receiver = self;
  v8.super_class = SNNMILListValue;
  v5 = [(SNNMILValue *)&v8 init];
  values = v5->_values;
  v5->_values = valuesCopy;

  return v5;
}

@end