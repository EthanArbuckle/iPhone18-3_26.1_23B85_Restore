@interface VCPHomeKitAnalysisSessionClientHandler
+ (id)clientHandlerWithXPCConnection:(id)a3;
- (VCPHomeKitAnalysisSessionClientHandler)initWithXPCConnection:(id)a3;
- (void)analyzer:(id)a3 didAnalyzeFragment:(id)a4;
- (void)cancelAllRequests;
- (void)processMessageWithOptions:(id)a3 andReply:(id)a4;
- (void)processVideoFragmentAssetData:(id)a3 withOptions:(id)a4 andReply:(id)a5;
- (void)startSessionWithProperties:(id)a3 andReply:(id)a4;
@end

@implementation VCPHomeKitAnalysisSessionClientHandler

- (VCPHomeKitAnalysisSessionClientHandler)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = VCPHomeKitAnalysisSessionClientHandler;
  v6 = [(VCPHomeKitAnalysisSessionClientHandler *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestAssetAnalysis");
    transaction = v7->_transaction;
    v7->_transaction = v8;

    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPHomeKitAnalysisSessionServerProtocol];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPHomeKitAnalysisSessionClientProtocol];
    v12 = [sub_100026058() allowedClasses];
    [v10 setClasses:v12 forSelector:"processVideoFragmentAssetData:withOptions:andReply:" argumentIndex:1 ofReply:0];
    [v10 setClasses:v12 forSelector:"processVideoFragmentAssetData:withOptions:andReply:" argumentIndex:0 ofReply:1];
    [v10 setClasses:v12 forSelector:"processMessageWithOptions:andReply:" argumentIndex:0 ofReply:0];
    [v10 setClasses:v12 forSelector:"processMessageWithOptions:andReply:" argumentIndex:0 ofReply:1];
    [v10 setClasses:v12 forSelector:"startSessionWithProperties:andReply:" argumentIndex:0 ofReply:0];
    [v11 setClasses:v12 forSelector:"processResults:withReply:" argumentIndex:0 ofReply:0];
    [(NSXPCConnection *)v7->_connection setExportedInterface:v10];
    [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v11];
    objc_initWeak(&location, v7);
    connection = v7->_connection;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100026138;
    v33[3] = &unk_100282A30;
    objc_copyWeak(&v34, &location);
    [(NSXPCConnection *)connection setInterruptionHandler:v33];
    v14 = v7->_connection;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100026240;
    v31[3] = &unk_100282A30;
    objc_copyWeak(&v32, &location);
    [(NSXPCConnection *)v14 setInvalidationHandler:v31];
    v15 = [(NSXPCConnection *)v7->_connection remoteObjectProxy];
    clientProxy = v7->_clientProxy;
    v7->_clientProxy = v15;

    v17 = dispatch_queue_create("com.apple.mediaanalysisd.homekitclientmanagment", 0);
    managementQueue = v7->_managementQueue;
    v7->_managementQueue = v17;

    v19 = dispatch_queue_create("com.apple.mediaanalysisd.homekitclienttask", 0);
    taskQueue = v7->_taskQueue;
    v7->_taskQueue = v19;

    v21 = dispatch_group_create();
    runningFragmentGroup = v7->_runningFragmentGroup;
    v7->_runningFragmentGroup = v21;

    v23 = dispatch_group_create();
    runningMessageGroup = v7->_runningMessageGroup;
    v7->_runningMessageGroup = v23;

    v25 = +[NSMutableDictionary dictionary];
    taskIDMapping = v7->_taskIDMapping;
    v7->_taskIDMapping = v25;

    analyzer = v7->_analyzer;
    v7->_analyzer = 0;

    v7->_nextTaskID = 1;
    v28 = objc_alloc_init(MADScopedWatchdog);
    scopedWatchdog = v7->_scopedWatchdog;
    v7->_scopedWatchdog = v28;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
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

- (void)startSessionWithProperties:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_analyzer)
  {
    v19 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithFormat:@"Session already started"];
    v20 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v9];
    v7[2](v7, v10);

    v11 = 0;
  }

  else
  {
    v16 = 0;
    v12 = [sub_100026058() analyzerWithOptions:v6 error:&v16];
    v11 = v16;
    analyzer = self->_analyzer;
    self->_analyzer = v12;

    v14 = self->_analyzer;
    if (v14)
    {
      [(HMIVideoAnalyzer *)v14 setDelegate:self];
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Error: failed to create HMIVideoAnalyzer: %@", buf, 0xCu);
      }
    }

    v7[2](v7, v11);
  }
}

- (void)processMessageWithOptions:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MADScopedWatchdog *)self->_scopedWatchdog pet];
  taskQueue = self->_taskQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000266F0;
  block[3] = &unk_1002835E0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(taskQueue, block);
}

- (void)processVideoFragmentAssetData:(id)a3 withOptions:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v11 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Received request to analyze movie", buf, 2u);
    }
  }

  nextTaskID = self->_nextTaskID;
  self->_nextTaskID = nextTaskID + 1;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100026C44;
  v32[3] = &unk_100283670;
  v32[4] = self;
  v34 = nextTaskID;
  v13 = v10;
  v33 = v13;
  v14 = objc_retainBlock(v32);
  *buf = 0;
  v29 = buf;
  v30 = 0x2020000000;
  v31 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000271F4;
  block[3] = &unk_100283698;
  block[4] = self;
  v27 = nextTaskID;
  v16 = v13;
  v25 = v16;
  v26 = buf;
  dispatch_sync(managementQueue, block);
  if ((v29[24] & 1) == 0)
  {
    taskQueue = self->_taskQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100027480;
    v18[3] = &unk_100283710;
    v18[4] = self;
    v23 = nextTaskID;
    v21 = v16;
    v19 = v8;
    v20 = v9;
    v22 = v14;
    dispatch_async(taskQueue, v18);
  }

  _Block_object_dispose(buf, 8);
}

- (void)analyzer:(id)a3 didAnalyzeFragment:(id)a4
{
  if (MediaAnalysisLogLevel() >= 4)
  {
    v4 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Method not implemented", v5, 2u);
    }
  }
}

- (void)cancelAllRequests
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(VCPHomeKitAnalysisSessionClientHandler *)self description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Service %@ to cancel requests", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = sub_100027E04;
  v21 = sub_100027E14;
  v22 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027E1C;
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