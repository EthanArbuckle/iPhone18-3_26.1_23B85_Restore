@interface CWFBonjourServiceRecord
+ (id)serviceRecordFromRecordName:(id)name;
- (id)description;
@end

@implementation CWFBonjourServiceRecord

+ (id)serviceRecordFromRecordName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(CWFBonjourServiceRecord);
  _bonjourServiceName = [nameCopy _bonjourServiceName];
  [(CWFBonjourServiceRecord *)v4 setServiceName:_bonjourServiceName];

  _stringByRemovingServiceName = [nameCopy _stringByRemovingServiceName];
  [(CWFBonjourServiceRecord *)v4 setDeviceName:_stringByRemovingServiceName];

  [(CWFBonjourServiceRecord *)v4 setRawString:nameCopy];

  return v4;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ : %p", v5, self];

  deviceName = [(CWFBonjourServiceRecord *)self deviceName];

  if (deviceName)
  {
    deviceName2 = [(CWFBonjourServiceRecord *)self deviceName];
    [string appendFormat:@" deviceName='%@'", deviceName2];
  }

  serviceName = [(CWFBonjourServiceRecord *)self serviceName];

  if (serviceName)
  {
    serviceName2 = [(CWFBonjourServiceRecord *)self serviceName];
    [string appendFormat:@" serviceName='%@'", serviceName2];
  }

  [string appendString:@">"];

  return string;
}

@end