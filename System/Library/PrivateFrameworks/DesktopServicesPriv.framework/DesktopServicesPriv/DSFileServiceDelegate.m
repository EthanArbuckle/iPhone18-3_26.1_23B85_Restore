@interface DSFileServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation DSFileServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = +[DSFileService sharedFileService];
  v6 = DSFileServiceXPCInterface();
  [v4 setExportedInterface:v6];

  [v4 setExportedObject:v5];
  [v4 resume];

  return 1;
}

@end