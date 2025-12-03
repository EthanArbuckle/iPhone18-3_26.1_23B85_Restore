@interface MomentsIntelligenceServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation MomentsIntelligenceServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    processIdentifier = [connectionCopy processIdentifier];
    v20 = 2112;
    v21 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MIService,Accepting connection from process %d (%@)", buf, 0x12u);
  }

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MomentsIntelligenceServiceProtocol];
  [connectionCopy setExportedInterface:v6];
  v7 = objc_opt_new();
  [connectionCopy setExportedObject:v7];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __73__MomentsIntelligenceServiceDelegate_listener_shouldAcceptNewConnection___block_invoke;
  v16[3] = &unk_100010650;
  v8 = v7;
  v17 = v8;
  [connectionCopy setInterruptionHandler:v16];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __73__MomentsIntelligenceServiceDelegate_listener_shouldAcceptNewConnection___block_invoke_2;
  v14 = &unk_100010650;
  v15 = v8;
  v9 = v8;
  [connectionCopy setInvalidationHandler:&v11];
  [connectionCopy resume];

  return 1;
}

@end