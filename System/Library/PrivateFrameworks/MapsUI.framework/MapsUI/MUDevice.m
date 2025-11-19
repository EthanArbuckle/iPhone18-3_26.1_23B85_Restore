@interface MUDevice
- (MUDevice)initWithName:(id)a3 symbolName:(id)a4 deviceID:(id)a5 model:(id)a6;
@end

@implementation MUDevice

- (MUDevice)initWithName:(id)a3 symbolName:(id)a4 deviceID:(id)a5 model:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = MUDevice;
  v14 = [(MUDevice *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [v11 copy];
    symbolName = v14->_symbolName;
    v14->_symbolName = v17;

    v19 = [v12 copy];
    deviceID = v14->_deviceID;
    v14->_deviceID = v19;

    v21 = [v13 copy];
    model = v14->_model;
    v14->_model = v21;
  }

  return v14;
}

@end