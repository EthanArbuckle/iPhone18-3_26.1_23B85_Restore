@interface VCPHomeKitAnalysisSessionClientHandler
+ (id)clientHandlerWithXPCConnection:(id)connection;
- (VCPHomeKitAnalysisSessionClientHandler)initWithXPCConnection:(id)connection;
- (void)analyzer:(id)analyzer didAnalyzeFragment:(id)fragment;
- (void)cancelAllRequests;
- (void)processMessageWithOptions:(id)options andReply:(id)reply;
- (void)processVideoFragmentAssetData:(id)data withOptions:(id)options andReply:(id)reply;
- (void)startSessionWithProperties:(id)properties andReply:(id)reply;
@end

@implementation VCPHomeKitAnalysisSessionClientHandler

- (VCPHomeKitAnalysisSessionClientHandler)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v36.receiver = self;
  v36.super_class = VCPHomeKitAnalysisSessionClientHandler;
  v6 = [(VCPHomeKitAnalysisSessionClientHandler *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = VCPTransactionWithName(@"VCPMediaAnalysisClientHandler-requestAssetAnalysis");
    transaction = v7->_transaction;
    v7->_transaction = v8;

    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPHomeKitAnalysisSessionServerProtocol];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPHomeKitAnalysisSessionClientProtocol];
    allowedClasses = [sub_100026058() allowedClasses];
    [v10 setClasses:allowedClasses forSelector:"processVideoFragmentAssetData:withOptions:andReply:" argumentIndex:1 ofReply:0];
    [v10 setClasses:allowedClasses forSelector:"processVideoFragmentAssetData:withOptions:andReply:" argumentIndex:0 ofReply:1];
    [v10 setClasses:allowedClasses forSelector:"processMessageWithOptions:andReply:" argumentIndex:0 ofReply:0];
    [v10 setClasses:allowedClasses forSelector:"processMessageWithOptions:andReply:" argumentIndex:0 ofReply:1];
    [v10 setClasses:allowedClasses forSelector:"startSessionWithProperties:andReply:" argumentIndex:0 ofReply:0];
    [v11 setClasses:allowedClasses forSelector:"processResults:withReply:" argumentIndex:0 ofReply:0];
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
    remoteObjectProxy = [(NSXPCConnection *)v7->_connection remoteObjectProxy];
    clientProxy = v7->_clientProxy;
    v7->_clientProxy = remoteObjectProxy;

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

+ (id)clientHandlerWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [objc_alloc(objc_opt_class()) initWithXPCConnection:connectionCopy];

  return v4;
}

- (void)startSessionWithProperties:(id)properties andReply:(id)reply
{
  propertiesCopy = properties;
  replyCopy = reply;
  if (self->_analyzer)
  {
    v19 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithFormat:@"Session already started"];
    v20 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v9];
    replyCopy[2](replyCopy, v10);

    v11 = 0;
  }

  else
  {
    v16 = 0;
    v12 = [sub_100026058() analyzerWithOptions:propertiesCopy error:&v16];
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

    replyCopy[2](replyCopy, v11);
  }
}

- (void)processMessageWithOptions:(id)options andReply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  [(MADScopedWatchdog *)self->_scopedWatchdog pet];
  taskQueue = self->_taskQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000266F0;
  block[3] = &unk_1002835E0;
  v12 = optionsCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = optionsCopy;
  v10 = replyCopy;
  dispatch_async(taskQueue, block);
}

- (void)processVideoFragmentAssetData:(id)data withOptions:(id)options andReply:(id)reply
{
  dataCopy = data;
  optionsCopy = options;
  replyCopy = reply;
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
  v13 = replyCopy;
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
    v19 = dataCopy;
    v20 = optionsCopy;
    v22 = v14;
    dispatch_async(taskQueue, v18);
  }

  _Block_object_dispose(buf, 8);
}

- (void)analyzer:(id)analyzer didAnalyzeFragment:(id)fragment
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