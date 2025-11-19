@interface FindMyDeviceBTDiscoveryXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation FindMyDeviceBTDiscoveryXPCServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = sub_1000012D0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", &v14, 0xCu);
  }

  v6 = [v4 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceBTDiscoveryXPCService.access"];
  if (v6 && ([&__kCFBooleanTrue isEqual:v6] & 1) != 0)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceBTDiscoveryDelegateXPCInterface];
    [v4 setRemoteObjectInterface:v7];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceBTDiscoveryXPCInterface];
    [v4 setExportedInterface:v8];
    v9 = [v4 remoteObjectProxy];
    v10 = objc_alloc_init(FMDBluetoothDiscovery);
    v11 = [[FMDDeviceDiscoveringXPCAdapter alloc] initWithDiscovery:v10 delegate:v9];
    [v4 setExportedObject:v11];
    [v4 resume];

    v12 = 1;
  }

  else
  {
    v7 = sub_1000012D0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100003E78(v7);
    }

    v12 = 0;
  }

  return v12;
}

@end