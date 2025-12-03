@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CloudSettingsServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  v7 = [[CloudSettingsService alloc] initWithStoreIdentifier:@"com.apple.cloudsettings.gamecontroller" settingsMediator:v6];
  [connectionCopy setExportedObject:v7];
  [connectionCopy resume];

  return 1;
}

@end