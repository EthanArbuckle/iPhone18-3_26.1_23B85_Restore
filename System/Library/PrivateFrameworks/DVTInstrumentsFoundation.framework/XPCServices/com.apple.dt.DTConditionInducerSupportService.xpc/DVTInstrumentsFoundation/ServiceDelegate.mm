@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DTConditionInducerSupportServiceProtocol];
  [v4 setExportedInterface:v5];

  v6 = [[DTConditionInducerSupportService alloc] initWithConnection:v4];
  [v4 setExportedObject:v6];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DTConditionInducerSupportUpdatesProtocol];
  [v4 setRemoteObjectInterface:v7];

  [v4 resume];
  return 1;
}

@end