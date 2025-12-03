@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DTConditionInducerSupportServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = [[DTConditionInducerSupportService alloc] initWithConnection:connectionCopy];
  [connectionCopy setExportedObject:v6];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DTConditionInducerSupportUpdatesProtocol];
  [connectionCopy setRemoteObjectInterface:v7];

  [connectionCopy resume];
  return 1;
}

@end