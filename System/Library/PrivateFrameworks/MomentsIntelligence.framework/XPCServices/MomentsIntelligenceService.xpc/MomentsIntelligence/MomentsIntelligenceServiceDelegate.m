@interface MomentsIntelligenceServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation MomentsIntelligenceServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v19 = [v4 processIdentifier];
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MIService,Accepting connection from process %d (%@)", buf, 0x12u);
  }

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MomentsIntelligenceServiceProtocol];
  [v4 setExportedInterface:v6];
  v7 = objc_opt_new();
  [v4 setExportedObject:v7];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __73__MomentsIntelligenceServiceDelegate_listener_shouldAcceptNewConnection___block_invoke;
  v16[3] = &unk_100010650;
  v8 = v7;
  v17 = v8;
  [v4 setInterruptionHandler:v16];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __73__MomentsIntelligenceServiceDelegate_listener_shouldAcceptNewConnection___block_invoke_2;
  v14 = &unk_100010650;
  v15 = v8;
  v9 = v8;
  [v4 setInvalidationHandler:&v11];
  [v4 resume];

  return 1;
}

@end