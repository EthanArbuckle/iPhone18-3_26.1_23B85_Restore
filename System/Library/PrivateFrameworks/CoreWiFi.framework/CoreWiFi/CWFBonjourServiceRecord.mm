@interface CWFBonjourServiceRecord
+ (id)serviceRecordFromRecordName:(id)a3;
- (id)description;
@end

@implementation CWFBonjourServiceRecord

+ (id)serviceRecordFromRecordName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CWFBonjourServiceRecord);
  v5 = [v3 _bonjourServiceName];
  [(CWFBonjourServiceRecord *)v4 setServiceName:v5];

  v6 = [v3 _stringByRemovingServiceName];
  [(CWFBonjourServiceRecord *)v4 setDeviceName:v6];

  [(CWFBonjourServiceRecord *)v4 setRawString:v3];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ : %p", v5, self];

  v6 = [(CWFBonjourServiceRecord *)self deviceName];

  if (v6)
  {
    v7 = [(CWFBonjourServiceRecord *)self deviceName];
    [v3 appendFormat:@" deviceName='%@'", v7];
  }

  v8 = [(CWFBonjourServiceRecord *)self serviceName];

  if (v8)
  {
    v9 = [(CWFBonjourServiceRecord *)self serviceName];
    [v3 appendFormat:@" serviceName='%@'", v9];
  }

  [v3 appendString:@">"];

  return v3;
}

@end