@interface CompanionServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation CompanionServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Listener got a connection! %@", &v9, 0xCu);
  }

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FRWatchConsuming];
  [v4 setExportedInterface:v6];
  v7 = +[CompanionTestObject sharedObject];
  [v4 setExportedObject:v7];
  [v4 resume];

  return 1;
}

@end