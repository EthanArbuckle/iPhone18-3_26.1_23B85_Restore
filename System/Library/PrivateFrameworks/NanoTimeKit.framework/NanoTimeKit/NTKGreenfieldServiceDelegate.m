@interface NTKGreenfieldServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation NTKGreenfieldServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = MEMORY[0x277CCAE90];
  v5 = a4;
  v6 = [v4 interfaceWithProtocol:&unk_28A872358];
  [v5 setExportedInterface:v6];

  v7 = objc_opt_new();
  [v5 setExportedObject:v7];
  [v5 resume];

  return 1;
}

@end