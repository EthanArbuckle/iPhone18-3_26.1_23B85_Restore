@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.networkQuality"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NetworkQualityXPCProtocol];
    [connectionCopy setExportedInterface:v7];

    v8 = objc_opt_new();
    [connectionCopy setExportedObject:v8];
    [connectionCopy resume];
  }

  return bOOLValue;
}

@end