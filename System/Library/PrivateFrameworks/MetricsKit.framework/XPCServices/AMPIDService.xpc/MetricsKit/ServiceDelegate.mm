@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)secretStore;
@end

@implementation ServiceDelegate

- (id)secretStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_secretStore);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(MTIDCompositeSecretStore);
    objc_storeWeak(&selfCopy->_secretStore, WeakRetained);
    v4 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService shared secret store created", v6, 2u);
    }
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MTXPCServiceInterface];
  [connectionCopy setExportedInterface:v8];

  exportedInterface = [connectionCopy exportedInterface];
  v10 = [exportedInterface classesForSelector:"doResetSchemes:options:completion:" argumentIndex:0 ofReply:0];
  v11 = [v10 mutableCopy];

  v35 = objc_opt_class();
  v12 = [NSArray arrayWithObjects:&v35 count:1];
  [v11 addObjectsFromArray:v12];

  [exportedInterface setClasses:v11 forSelector:"doResetSchemes:options:completion:" argumentIndex:0 ofReply:0];
  v13 = [exportedInterface classesForSelector:"doMaintainSchemes:options:" argumentIndex:0 ofReply:0];
  v14 = [v13 mutableCopy];

  v34 = objc_opt_class();
  v15 = [NSArray arrayWithObjects:&v34 count:1];
  [v14 addObjectsFromArray:v15];

  [exportedInterface setClasses:v14 forSelector:"doMaintainSchemes:options:" argumentIndex:0 ofReply:0];
  v16 = [exportedInterface classesForSelector:"syncForSchemes:options:completion:" argumentIndex:0 ofReply:0];
  v17 = [v16 mutableCopy];

  v33 = objc_opt_class();
  v18 = [NSArray arrayWithObjects:&v33 count:1];
  [v17 addObjectsFromArray:v18];

  [exportedInterface setClasses:v17 forSelector:"syncForSchemes:options:completion:" argumentIndex:0 ofReply:0];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100001264;
  v29 = sub_100001274;
  secretStore = [(ServiceDelegate *)self secretStore];
  v19 = [MTXPCConnection alloc];
  v20 = [(MTXPCConnection *)v19 initWithXPCConnection:connectionCopy secretStore:v26[5]];
  [connectionCopy setExportedObject:v20];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000127C;
  v24[3] = &unk_1000204A0;
  v24[4] = &v25;
  [connectionCopy setInvalidationHandler:v24];
  [connectionCopy setInterruptionHandler:&stru_1000204E0];
  [connectionCopy resume];
  v21 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    processIdentifier = [connectionCopy processIdentifier];
    *buf = 134217984;
    v32 = processIdentifier;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService XPC connection made from pid %ld", buf, 0xCu);
  }

  _Block_object_dispose(&v25, 8);
  return 1;
}

@end