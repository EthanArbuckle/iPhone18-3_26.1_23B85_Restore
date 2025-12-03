@interface BWSensorConfiguration
- (BWSensorConfiguration)initWithPortType:(id)type sensorIDString:(id)string sensorIDDictionary:(id)dictionary cameraInfo:(id)info moduleCalibration:(id)calibration;
- (void)dealloc;
@end

@implementation BWSensorConfiguration

- (BWSensorConfiguration)initWithPortType:(id)type sensorIDString:(id)string sensorIDDictionary:(id)dictionary cameraInfo:(id)info moduleCalibration:(id)calibration
{
  if (type && string && dictionary && info)
  {
    v14.receiver = self;
    v14.super_class = BWSensorConfiguration;
    v12 = [(BWSensorConfiguration *)&v14 init];
    if (v12)
    {
      v12->_portType = type;
      v12->_sensorIDString = string;
      v12->_sensorIDDictionary = dictionary;
      v12->_cameraInfo = info;
      v12->_moduleCalibration = calibration;
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