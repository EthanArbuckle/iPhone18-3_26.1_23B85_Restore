@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MFAANetworkProtocol];
  [v4 setExportedInterface:v5];

  v6 = +[MFAANetwork sharedInstance];
  v7 = [v6 exportedObject];
  [v4 setExportedObject:v7];

  [v4 resume];
  return 1;
}

@end