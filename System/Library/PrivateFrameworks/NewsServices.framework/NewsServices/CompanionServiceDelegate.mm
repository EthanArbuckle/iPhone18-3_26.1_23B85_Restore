@interface CompanionServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation CompanionServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Listener got a connection! %@", &v9, 0xCu);
  }

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FRWatchConsuming];
  [connectionCopy setExportedInterface:v6];
  v7 = +[CompanionTestObject sharedObject];
  [connectionCopy setExportedObject:v7];
  [connectionCopy resume];

  return 1;
}

@end