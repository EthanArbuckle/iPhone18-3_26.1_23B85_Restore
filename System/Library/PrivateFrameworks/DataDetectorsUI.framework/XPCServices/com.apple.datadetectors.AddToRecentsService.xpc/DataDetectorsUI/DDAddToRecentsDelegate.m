@interface DDAddToRecentsDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation DDAddToRecentsDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDAddToRecentsInterface];
  [v4 setExportedInterface:v5];

  v6 = -[DDAddToRecentsService initWithClientProcessIdentifier:]([DDAddToRecentsService alloc], "initWithClientProcessIdentifier:", [v4 processIdentifier]);
  [v4 setExportedObject:v6];

  [v4 resume];
  return 1;
}

@end