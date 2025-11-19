@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)secretStore;
@end

@implementation ServiceDelegate

- (id)secretStore
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_secretStore);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(MTIDCompositeSecretStore);
    objc_storeWeak(&v2->_secretStore, WeakRetained);
    v4 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService shared secret store created", v6, 2u);
    }
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MTXPCServiceInterface];
  [v7 setExportedInterface:v8];

  v9 = [v7 exportedInterface];
  v10 = [v9 classesForSelector:"doResetSchemes:options:completion:" argumentIndex:0 ofReply:0];
  v11 = [v10 mutableCopy];

  v35 = objc_opt_class();
  v12 = [NSArray arrayWithObjects:&v35 count:1];
  [v11 addObjectsFromArray:v12];

  [v9 setClasses:v11 forSelector:"doResetSchemes:options:completion:" argumentIndex:0 ofReply:0];
  v13 = [v9 classesForSelector:"doMaintainSchemes:options:" argumentIndex:0 ofReply:0];
  v14 = [v13 mutableCopy];

  v34 = objc_opt_class();
  v15 = [NSArray arrayWithObjects:&v34 count:1];
  [v14 addObjectsFromArray:v15];

  [v9 setClasses:v14 forSelector:"doMaintainSchemes:options:" argumentIndex:0 ofReply:0];
  v16 = [v9 classesForSelector:"syncForSchemes:options:completion:" argumentIndex:0 ofReply:0];
  v17 = [v16 mutableCopy];

  v33 = objc_opt_class();
  v18 = [NSArray arrayWithObjects:&v33 count:1];
  [v17 addObjectsFromArray:v18];

  [v9 setClasses:v17 forSelector:"syncForSchemes:options:completion:" argumentIndex:0 ofReply:0];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100001264;
  v29 = sub_100001274;
  v30 = [(ServiceDelegate *)self secretStore];
  v19 = [MTXPCConnection alloc];
  v20 = [(MTXPCConnection *)v19 initWithXPCConnection:v7 secretStore:v26[5]];
  [v7 setExportedObject:v20];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000127C;
  v24[3] = &unk_1000204A0;
  v24[4] = &v25;
  [v7 setInvalidationHandler:v24];
  [v7 setInterruptionHandler:&stru_1000204E0];
  [v7 resume];
  v21 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v7 processIdentifier];
    *buf = 134217984;
    v32 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService XPC connection made from pid %ld", buf, 0xCu);
  }

  _Block_object_dispose(&v25, 8);
  return 1;
}

@end