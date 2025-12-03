@interface IEVariable
- (IEVariable)initWithName:(id)name withType:(id)type;
- (IEVariable)initWithName:(id)name withType:(id)type withValue:(id)value;
@end

@implementation IEVariable

- (IEVariable)initWithName:(id)name withType:(id)type
{
  nameCopy = name;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = IEVariable;
  v9 = [(IEVariable *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_type, type);
    value = v10->_value;
    v10->_value = 0;

    v10->_persistent = 0;
  }

  return v10;
}

- (IEVariable)initWithName:(id)name withType:(id)type withValue:(id)value
{
  nameCopy = name;
  typeCopy = type;
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = IEVariable;
  v12 = [(IEVariable *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_type, type);
    objc_storeStrong(&v13->_value, value);
    v13->_persistent = 0;
  }

  return v13;
}

@end