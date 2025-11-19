@interface CLSiloHeartbeatRecord
- (id)initTrackingServiceClass:(Class)a3 name:(id)a4;
@end

@implementation CLSiloHeartbeatRecord

- (id)initTrackingServiceClass:(Class)a3 name:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CLSiloHeartbeatRecord;
  v8 = [(CLSiloHeartbeatRecord *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_svcClass, a3);
    objc_storeStrong(&v9->_svcName, a4);
    v10 = [(objc_class *)a3 getSilo];
    silo = v9->_silo;
    v9->_silo = v10;

    v9->_residentCount = 1;
    v12 = v9;
  }

  return v9;
}

@end