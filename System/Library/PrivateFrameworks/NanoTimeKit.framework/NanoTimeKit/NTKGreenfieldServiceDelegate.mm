@interface NTKGreenfieldServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation NTKGreenfieldServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v4 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v6 = [v4 interfaceWithProtocol:&unk_28A872358];
  [connectionCopy setExportedInterface:v6];

  v7 = objc_opt_new();
  [connectionCopy setExportedObject:v7];
  [connectionCopy resume];

  return 1;
}

@end