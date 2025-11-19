@interface VCPHomeKitAnalysisClientHandler
+ (id)clientHandlerWithXPCConnection:(id)a3;
+ (id)errorForStatus:(int)a3 withDescription:(id)a4;
- (VCPHomeKitAnalysisClientHandler)initWithXPCConnection:(id)a3;
- (void)cancelAllRequests;
- (void)cancelRequest:(int)a3;
- (void)logStatusForRequest:(int)a3 withError:(id)a4;
- (void)requestAnalysis:(unint64_t)a3 ofFragmentData:(id)a4 withRequestID:(int)a5 properties:(id)a6 andReply:(id)a7;
- (void)requestAnalysis:(unint64_t)a3 ofFragmentSurface:(id)a4 withRequestID:(int)a5 properties:(id)a6 andReply:(id)a7;
- (void)requestResidentMaintenance:(int)a3 withOptions:(id)a4 andReply:(id)a5;
@end

@implementation VCPHomeKitAnalysisClientHandler

- (VCPHomeKitAnalysisClientHandler)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = VCPHomeKitAnalysisClientHandler;
  v6 = [(VCPHomeKitAnalysisClientHandler *)&v35 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    objc_initWeak(&location, v7);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPHomeKitAnalysisServerProtocol];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v9 = qword_1002B8160;
    v44 = qword_1002B8160;
    if (!qword_1002B8160)
    {
      v36 = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_10002468C;
      v39 = &unk_100283450;
      v40 = &v41;
      sub_10002468C(&v36);
      v9 = v42[3];
    }

    v10 = v9;
    _Block_object_dispose(&v41, 8);
    v11 = objc_alloc_init(v9);
    v12 = [v11 expectedClasses];

    [v8 setClasses:v12 forSelector:"requestAnalysis:ofFragmentData:withRequestID:properties:andReply:" argumentIndex:3 ofReply:0];
    [v8 setClasses:v12 forSelector:"requestAnalysis:ofFragmentData:withRequestID:properties:andReply:" argumentIndex:0 ofReply:1];
    [v8 setClasses:v12 forSelector:"requestAnalysis:ofFragmentSurface:withRequestID:properties:andReply:" argumentIndex:3 ofReply:0];
    [v8 setClasses:v12 forSelector:"requestAnalysis:ofFragmentSurface:withRequestID:properties:andReply:" argumentIndex:0 ofReply:1];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v13 = qword_1002B8170;
    v44 = qword_1002B8170;
    if (!qword_1002B8170)
    {
      v36 = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_100024854;
      v39 = &unk_100283450;
      v40 = &v41;
      sub_100024854(&v36);
      v13 = v42[3];
    }

    v14 = v13;
    _Block_object_dispose(&v41, 8);
    v15 = [v13 allowedClasses];
    [v8 setClasses:v15 forSelector:"requestResidentMaintenance:withOptions:andReply:" argumentIndex:1 ofReply:0];

    [(NSXPCConnection *)v7->_connection setExportedInterface:v8];
    connection = v7->_connection;
    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPHomeKitAnalysisClientProtocol];
    [(NSXPCConnection *)connection setRemoteObjectInterface:v17];

    v18 = v7->_connection;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000221E4;
    v32[3] = &unk_100282A30;
    objc_copyWeak(&v33, &location);
    [(NSXPCConnection *)v18 setInterruptionHandler:v32];
    v19 = v7->_connection;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002229C;
    v29[3] = &unk_100283340;
    objc_copyWeak(&v31, &location);
    v20 = v7;
    v30 = v20;
    [(NSXPCConnection *)v19 setInvalidationHandler:v29];
    v21 = [(NSXPCConnection *)v7->_connection remoteObjectProxy];
    clientProxy = v20->_clientProxy;
    v20->_clientProxy = v21;

    v23 = dispatch_queue_create("com.apple.mediaanalysisd.homekitclientmanagment", 0);
    managementQueue = v20->_managementQueue;
    v20->_managementQueue = v23;

    v25 = +[NSMutableDictionary dictionary];
    taskIDMapping = v20->_taskIDMapping;
    v20->_taskIDMapping = v25;

    v27 = v20;
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);

    objc_destroyWeak(&location);
  }

  return v7;
}

+ (id)clientHandlerWithXPCConnection:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithXPCConnection:v3];

  return v4;
}

+ (id)errorForStatus:(int)a3 withDescription:(id)a4
{
  v5 = a4;
  switch(a3)
  {
    case -128:
      v6 = @"[MAHomeKitClientHandler] Analysis was canceled";
      break;
    case 0:
      v7 = 0;
      goto LABEL_12;
    case -50:
      v6 = @"[MAHomeKitClientHandler] Invalid request ID";
      break;
    default:
      v6 = [NSString stringWithFormat:@"[MAHomeKitClientHandler] Analysis failed - %@", v5];
      break;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v8 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@", buf, 0xCu);
    }
  }

  v11 = NSLocalizedDescriptionKey;
  v12 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7 = [NSError errorWithDomain:@"HomeKitAnalysisService" code:a3 userInfo:v9];

LABEL_12:

  return v7;
}

- (void)logStatusForRequest:(int)a3 withError:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    if ([v5 code] == -128)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v7 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          v11 = 67109120;
          v12 = a3;
          v8 = "Request %d canceled";
LABEL_9:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v8, &v11, 8u);
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v9 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = [v6 description];
        v11 = 67109378;
        v12 = a3;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "Request %d failed (%@)", &v11, 0x12u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v11 = 67109120;
      v12 = a3;
      v8 = "Request %d completed";
      goto LABEL_9;
    }
  }
}

- (void)requestAnalysis:(unint64_t)a3 ofFragmentData:(id)a4 withRequestID:(int)a5 properties:(id)a6 andReply:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v14 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      *buf = 67109120;
      *&buf[4] = a5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Received request %d to analyze movie", buf, 8u);
    }
  }

  v15 = +[VCPWatchdog sharedWatchdog];
  [v15 pet];

  *buf = 0;
  v39 = buf;
  v40 = 0x3032000000;
  v41 = sub_100022AB0;
  v42 = sub_100022AC0;
  v43 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestAssetAnalysis");
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100022AC8;
  v36[3] = &unk_100282B58;
  v36[4] = self;
  v37 = a5;
  v16 = objc_retainBlock(v36);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100022AE4;
  v32[3] = &unk_100283390;
  v32[4] = self;
  v35 = a5;
  v17 = v13;
  v33 = v17;
  v34 = buf;
  v18 = objc_retainBlock(v32);
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022DB0;
  block[3] = &unk_1002833B8;
  v31 = a5;
  block[4] = self;
  v26 = v11;
  v27 = v12;
  v28 = v17;
  v29 = v16;
  v30 = v18;
  v20 = v18;
  v21 = v16;
  v22 = v12;
  v23 = v11;
  v24 = v17;
  dispatch_sync(managementQueue, block);

  _Block_object_dispose(buf, 8);
}

- (void)requestAnalysis:(unint64_t)a3 ofFragmentSurface:(id)a4 withRequestID:(int)a5 properties:(id)a6 andReply:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v14 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      *buf = 67109120;
      *&buf[4] = a5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Received request %d to analyze movie", buf, 8u);
    }
  }

  v15 = +[VCPWatchdog sharedWatchdog];
  [v15 pet];

  *buf = 0;
  v39 = buf;
  v40 = 0x3032000000;
  v41 = sub_100022AB0;
  v42 = sub_100022AC0;
  v43 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestAssetAnalysis");
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100023360;
  v36[3] = &unk_100282B58;
  v36[4] = self;
  v37 = a5;
  v16 = objc_retainBlock(v36);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10002337C;
  v32[3] = &unk_100283390;
  v32[4] = self;
  v35 = a5;
  v17 = v13;
  v33 = v17;
  v34 = buf;
  v18 = objc_retainBlock(v32);
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023648;
  block[3] = &unk_1002833B8;
  v31 = a5;
  block[4] = self;
  v26 = v11;
  v27 = v12;
  v28 = v17;
  v29 = v16;
  v30 = v18;
  v20 = v18;
  v21 = v16;
  v22 = v12;
  v23 = v11;
  v24 = v17;
  dispatch_sync(managementQueue, block);

  _Block_object_dispose(buf, 8);
}

- (void)requestResidentMaintenance:(int)a3 withOptions:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Received resident maintenance request (%d)", buf, 8u);
    }
  }

  v11 = +[VCPWatchdog sharedWatchdog];
  [v11 pet];

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = sub_100022AB0;
  v29 = sub_100022AC0;
  v30 = VCPTransactionWithName(@"com.apple.mediaanalysisd.home.maintenance");
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100023B58;
  v21[3] = &unk_100283390;
  v24 = a3;
  v21[4] = self;
  v22 = v9;
  v23 = buf;
  v12 = v9;
  v13 = objc_retainBlock(v21);
  managementQueue = self->_managementQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100023D40;
  v17[3] = &unk_100283400;
  v20 = a3;
  v18 = v8;
  v19 = v13;
  v17[4] = self;
  v15 = v8;
  v16 = v13;
  dispatch_sync(managementQueue, v17);

  _Block_object_dispose(buf, 8);
}

- (void)cancelRequest:(int)a3
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Received cancel call for %d", buf, 8u);
    }
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  managementQueue = self->_managementQueue;
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024284;
  block[3] = &unk_100283428;
  block[4] = self;
  block[5] = buf;
  v10 = a3;
  dispatch_sync(managementQueue, block);
  if (*(v14 + 3))
  {
    v7 = +[VCPMADTaskScheduler sharedInstance];
    [v7 cancelTaskWithID:*(v14 + 3)];
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v8 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *v11 = 67109120;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Cancellation requested for unknown ID %d", v11, 8u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)cancelAllRequests
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(VCPHomeKitAnalysisClientHandler *)self description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Service %@ to cancel requests", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_100022AB0;
  v21 = sub_100022AC0;
  v22 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000245B8;
  block[3] = &unk_100283178;
  block[4] = self;
  block[5] = &buf;
  dispatch_sync(managementQueue, block);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(*(&buf + 1) + 40);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = +[VCPMADTaskScheduler sharedInstance];
        [v11 cancelTaskWithID:{objc_msgSend(v10, "unsignedIntegerValue")}];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&buf, 8);
}

@end