@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CDPProximityPairingServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];
  v7 = [connectionCopy valueForEntitlement:@"com.apple.cdpproximitypairingservice.approvalserver"];

  if (!v7)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100000ED0(v8);
    }

    [connectionCopy invalidate];
  }

  return v7 != 0;
}

@end