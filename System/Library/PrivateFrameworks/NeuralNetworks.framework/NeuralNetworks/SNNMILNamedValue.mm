@interface SNNMILNamedValue
- (SNNMILNamedValue)initWithName:(id)name;
@end

@implementation SNNMILNamedValue

- (SNNMILNamedValue)initWithName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = SNNMILNamedValue;
  v5 = [(SNNMILValue *)&v8 init];
  name = v5->_name;
  v5->_name = nameCopy;

  return v5;
}

@end