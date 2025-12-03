@interface FakeMapsPushDevice
- (FakeMapsPushDevice)initWithName:(id)name model:(id)model;
@end

@implementation FakeMapsPushDevice

- (FakeMapsPushDevice)initWithName:(id)name model:(id)model
{
  nameCopy = name;
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = FakeMapsPushDevice;
  v8 = [(FakeMapsPushDevice *)&v15 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [modelCopy copy];
    model = v8->_model;
    v8->_model = v11;

    v13 = v8;
  }

  return v8;
}

@end