@interface ACCTransportClientInfo
- (ACCTransportClientInfo)initWithXPCConnection:(id)a3;
@end

@implementation ACCTransportClientInfo

- (ACCTransportClientInfo)initWithXPCConnection:(id)a3
{
  v7.receiver = self;
  v7.super_class = ACCTransportClientInfo;
  v3 = [(XPCConnectionInfo *)&v7 initWithXPCConnection:a3];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableSet);
    connectionUUIDs = v3->_connectionUUIDs;
    v3->_connectionUUIDs = v4;
  }

  return v3;
}

@end