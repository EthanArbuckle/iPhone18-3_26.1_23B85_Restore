@interface DDAddToRecentsDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation DDAddToRecentsDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDAddToRecentsInterface];
  [connectionCopy setExportedInterface:v5];

  v6 = -[DDAddToRecentsService initWithClientProcessIdentifier:]([DDAddToRecentsService alloc], "initWithClientProcessIdentifier:", [connectionCopy processIdentifier]);
  [connectionCopy setExportedObject:v6];

  [connectionCopy resume];
  return 1;
}

@end