@interface MUDevice
- (MUDevice)initWithName:(id)name symbolName:(id)symbolName deviceID:(id)d model:(id)model;
@end

@implementation MUDevice

- (MUDevice)initWithName:(id)name symbolName:(id)symbolName deviceID:(id)d model:(id)model
{
  nameCopy = name;
  symbolNameCopy = symbolName;
  dCopy = d;
  modelCopy = model;
  v24.receiver = self;
  v24.super_class = MUDevice;
  v14 = [(MUDevice *)&v24 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [symbolNameCopy copy];
    symbolName = v14->_symbolName;
    v14->_symbolName = v17;

    v19 = [dCopy copy];
    deviceID = v14->_deviceID;
    v14->_deviceID = v19;

    v21 = [modelCopy copy];
    model = v14->_model;
    v14->_model = v21;
  }

  return v14;
}

@end