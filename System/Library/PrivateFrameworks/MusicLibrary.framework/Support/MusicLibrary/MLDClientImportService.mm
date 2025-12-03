@interface MLDClientImportService
+ (MLDClientImportService)sharedService;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MLDClientImportService)init;
@end

@implementation MLDClientImportService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = [[MLDClientImportServiceSession alloc] initWithConnection:connectionCopy];
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C460;
  block[3] = &unk_100031BA8;
  block[4] = self;
  v9 = v7;
  v38 = v9;
  dispatch_sync(accessQueue, block);
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ML3ClientImportServiceSessionXPCInterface];
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  [v10 setClasses:v12 forSelector:"addItems:completion:" argumentIndex:0 ofReply:0];

  v13 = objc_opt_class();
  v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
  [v10 setClasses:v14 forSelector:"updateItems:completion:" argumentIndex:0 ofReply:0];

  v15 = objc_opt_class();
  v16 = [NSSet setWithObjects:v15, objc_opt_class(), 0];
  [v10 setClasses:v16 forSelector:"removeItems:completion:" argumentIndex:0 ofReply:0];

  v17 = objc_opt_class();
  v18 = [NSSet setWithObjects:v17, objc_opt_class(), 0];
  [v10 setClasses:v18 forSelector:"addContainers:completion:" argumentIndex:0 ofReply:0];

  v19 = objc_opt_class();
  v20 = [NSSet setWithObjects:v19, objc_opt_class(), 0];
  [v10 setClasses:v20 forSelector:"updateContainers:completion:" argumentIndex:0 ofReply:0];

  v21 = objc_opt_class();
  v22 = [NSSet setWithObjects:v21, objc_opt_class(), 0];
  [v10 setClasses:v22 forSelector:"removeContainers:completion:" argumentIndex:0 ofReply:0];

  [connectionCopy setExportedInterface:v10];
  [connectionCopy setExportedObject:v9];
  v23 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ML3ClientImportSessionXPCInterface];
  [connectionCopy setRemoteObjectInterface:v23];
  processIdentifier = [connectionCopy processIdentifier];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v25 = MSVBundleIDForAuditToken();
  v26 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2114;
    *&buf[24] = v25;
    v40 = 1024;
    v41 = processIdentifier;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Created new session %{public}@ for incoming connection from %{public}@[%d]", buf, 0x26u);
  }

  objc_initWeak(buf, self);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10001C46C;
  v34[3] = &unk_100031BD0;
  objc_copyWeak(&v36, buf);
  v27 = v9;
  v35 = v27;
  [connectionCopy setInterruptionHandler:v34];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001C5C0;
  v31[3] = &unk_100031BD0;
  objc_copyWeak(&v33, buf);
  v28 = v27;
  v32 = v28;
  [connectionCopy setInvalidationHandler:v31];
  [connectionCopy resume];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);

  return 1;
}

- (MLDClientImportService)init
{
  v9.receiver = self;
  v9.super_class = MLDClientImportService;
  v2 = [(MLDClientImportService *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    activeSessions = v2->_activeSessions;
    v2->_activeSessions = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.amp.MusicLibrary.MLDCLientImportService.accessQueue", v5);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v6;
  }

  return v2;
}

+ (MLDClientImportService)sharedService
{
  if (qword_100038500 != -1)
  {
    dispatch_once(&qword_100038500, &stru_100031B80);
  }

  v3 = qword_1000384F8;

  return v3;
}

@end