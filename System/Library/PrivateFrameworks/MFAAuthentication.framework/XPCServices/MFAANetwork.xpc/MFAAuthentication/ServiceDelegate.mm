@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MFAANetworkProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = +[MFAANetwork sharedInstance];
  exportedObject = [v6 exportedObject];
  [connectionCopy setExportedObject:exportedObject];

  [connectionCopy resume];
  return 1;
}

@end