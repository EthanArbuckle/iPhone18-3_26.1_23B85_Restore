@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFPrivateServiceInterface];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFPrivateServiceFrameworkInterface];
  [connectionCopy setRemoteObjectInterface:v7];

  [connectionCopy resume];
  return 1;
}

@end