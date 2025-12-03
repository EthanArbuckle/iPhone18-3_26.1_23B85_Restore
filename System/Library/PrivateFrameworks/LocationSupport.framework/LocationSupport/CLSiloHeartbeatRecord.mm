@interface CLSiloHeartbeatRecord
- (id)initTrackingServiceClass:(Class)class name:(id)name;
@end

@implementation CLSiloHeartbeatRecord

- (id)initTrackingServiceClass:(Class)class name:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = CLSiloHeartbeatRecord;
  v8 = [(CLSiloHeartbeatRecord *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_svcClass, class);
    objc_storeStrong(&v9->_svcName, name);
    getSilo = [(objc_class *)class getSilo];
    silo = v9->_silo;
    v9->_silo = getSilo;

    v9->_residentCount = 1;
    v12 = v9;
  }

  return v9;
}

@end