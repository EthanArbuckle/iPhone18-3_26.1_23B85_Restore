@interface BWSensorConfiguration
- (BWSensorConfiguration)initWithPortType:(id)a3 sensorIDString:(id)a4 sensorIDDictionary:(id)a5 cameraInfo:(id)a6 moduleCalibration:(id)a7;
- (void)dealloc;
@end

@implementation BWSensorConfiguration

- (BWSensorConfiguration)initWithPortType:(id)a3 sensorIDString:(id)a4 sensorIDDictionary:(id)a5 cameraInfo:(id)a6 moduleCalibration:(id)a7
{
  if (a3 && a4 && a5 && a6)
  {
    v14.receiver = self;
    v14.super_class = BWSensorConfiguration;
    v12 = [(BWSensorConfiguration *)&v14 init];
    if (v12)
    {
      v12->_portType = a3;
      v12->_sensorIDString = a4;
      v12->_sensorIDDictionary = a5;
      v12->_cameraInfo = a6;
      v12->_moduleCalibration = a7;
    }
  }

  else
  {

    return 0;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSensorConfiguration;
  [(BWSensorConfiguration *)&v3 dealloc];
}

@end