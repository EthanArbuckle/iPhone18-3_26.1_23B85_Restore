@interface IEVariable
- (IEVariable)initWithName:(id)a3 withType:(id)a4;
- (IEVariable)initWithName:(id)a3 withType:(id)a4 withValue:(id)a5;
@end

@implementation IEVariable

- (IEVariable)initWithName:(id)a3 withType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = IEVariable;
  v9 = [(IEVariable *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_type, a4);
    value = v10->_value;
    v10->_value = 0;

    v10->_persistent = 0;
  }

  return v10;
}

- (IEVariable)initWithName:(id)a3 withType:(id)a4 withValue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IEVariable;
  v12 = [(IEVariable *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_type, a4);
    objc_storeStrong(&v13->_value, a5);
    v13->_persistent = 0;
  }

  return v13;
}

@end