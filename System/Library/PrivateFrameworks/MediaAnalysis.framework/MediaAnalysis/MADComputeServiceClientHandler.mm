@interface MADComputeServiceClientHandler
+ (id)clientHandlerWithXPCConnection:(id)connection;
- (MADComputeServiceClientHandler)initWithXPCConnection:(id)connection;
- (void)_storeComputeServiceRequests:(id)requests assetURLs:(id)ls extensionData:(id)data resultDirectoryURL:(id)l resultExtensionData:(id)extensionData requestID:(id)d;
- (void)_storeComputeServiceRequests:(id)requests localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL resultExtensionData:(id)data requestID:(id)d;
- (void)cancelAllRequests;
- (void)cancelWithRequestID:(id)d;
- (void)removeWithRequestID:(id)d reply:(id)reply;
- (void)requestProcessing:(id)processing assetURLs:(id)ls extensionData:(id)data resultDirectoryURL:(id)l resultExtensionData:(id)extensionData requestID:(id)d reply:(id)reply;
- (void)requestProcessing:(id)processing localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL resultExtensionData:(id)data requestID:(id)d reply:(id)reply;
- (void)resumeWithRequestID:(id)d reply:(id)reply;
- (void)scheduleProcessing:(id)processing assetURLs:(id)ls extensionData:(id)data resultDirectoryURL:(id)l resultExtensionData:(id)extensionData requestID:(id)d reply:(id)reply;
- (void)scheduleProcessing:(id)processing localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL resultExtensionData:(id)data requestID:(id)d reply:(id)reply;
@end

@implementation MADComputeServiceClientHandler

- (MADComputeServiceClientHandler)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v44.receiver = self;
  v44.super_class = MADComputeServiceClientHandler;
  v5 = [(MADComputeServiceClientHandler *)&v44 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_connection, connection);
    [(NSXPCConnection *)v6->_connection setExportedObject:v6];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MADComputeServiceClientProtocol];
    [(NSXPCConnection *)v6->_connection setRemoteObjectInterface:v7];

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MADComputeServiceServerProtocol];
    [(NSXPCConnection *)v6->_connection setExportedInterface:v8];

    remoteObjectInterface = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    [MADComputeService configureClientInterface:remoteObjectInterface];

    exportedInterface = [(NSXPCConnection *)v6->_connection exportedInterface];
    [MADComputeService configureServerInterface:exportedInterface];

    objc_initWeak(&location, v6);
    connection = v6->_connection;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000B3C10;
    v40[3] = &unk_100285648;
    v12 = v6;
    v41 = v12;
    objc_copyWeak(&v42, &location);
    [(NSXPCConnection *)connection setInterruptionHandler:v40];
    v13 = v6->_connection;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000B3CD4;
    v37[3] = &unk_100285648;
    v14 = v12;
    v38 = v14;
    objc_copyWeak(&v39, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v37];
    v15 = [(NSXPCConnection *)v6->_connection synchronousRemoteObjectProxyWithErrorHandler:&stru_100285668];
    clientProxy = v14->_clientProxy;
    v14->_clientProxy = v15;

    v17 = dispatch_group_create();
    resultsHandlerGroup = v14->_resultsHandlerGroup;
    v14->_resultsHandlerGroup = v17;

    v35 = 0;
    cf = 0;
    v19 = v6->_connection;
    if (v19)
    {
      [(NSXPCConnection *)v19 auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v34 = SecTaskCreateWithAuditToken(0, &token);
    v20 = SecTaskCopySigningIdentifier(v34, &cf);
    clientBundleID = v14->_clientBundleID;
    v14->_clientBundleID = &v20->isa;

    if (v35)
    {
      CFRelease(v35);
      v35 = 0;
    }

    v22 = SecTaskCopyTeamIdentifier();
    clientTeamID = v14->_clientTeamID;
    v14->_clientTeamID = v22;

    if (cf)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v24 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          token.val[0] = 138412290;
          *&token.val[1] = cf;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[MADComputeServiceClientHandler] Failed to query client bundle ID (%@)", &token, 0xCu);
        }
      }
    }

    if (v35)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v25 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          token.val[0] = 138412290;
          *&token.val[1] = v35;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[MADComputeServiceClientHandler] Failed to query client team ID (%@)", &token, 0xCu);
        }
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v26 = VCPPersistentLogInstance();
      v27 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(v26, v27))
      {
        v28 = v14->_clientBundleID;
        v29 = v14->_clientTeamID;
        token.val[0] = 138412546;
        *&token.val[1] = v28;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v29;
        _os_log_impl(&_mh_execute_header, v26, v27, "[MADComputeServiceClientHandler] Client BundleID: %@ TeamID: %@", &token, 0x16u);
      }
    }

    v30 = [[MADServiceClientTaskQueuingScheduler alloc] initWithClientBundleID:v14->_clientBundleID];
    queuingTaskScheduler = v14->_queuingTaskScheduler;
    v14->_queuingTaskScheduler = v30;

    sub_100002CBC(&v34);
    sub_100002CBC(&v35);
    sub_100002CBC(&cf);
    objc_destroyWeak(&v39);

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v6;
}

+ (id)clientHandlerWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [objc_alloc(objc_opt_class()) initWithXPCConnection:connectionCopy];

  return v4;
}

- (void)_storeComputeServiceRequests:(id)requests assetURLs:(id)ls extensionData:(id)data resultDirectoryURL:(id)l resultExtensionData:(id)extensionData requestID:(id)d
{
  requestsCopy = requests;
  lsCopy = ls;
  dataCopy = data;
  lCopy = l;
  extensionDataCopy = extensionData;
  dCopy = d;
  v26 = 0;
  v15 = VCPLogToOSLogType[6];
  while (v26 < [requestsCopy count])
  {
    context = objc_autoreleasePoolPush();
    v16 = [requestsCopy objectAtIndexedSubscript:v26];
    for (i = 0; i < [lsCopy count]; ++i)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [lsCopy objectAtIndexedSubscript:i];
      v20 = [dataCopy objectAtIndexedSubscript:i];
      clientBundleID = self->_clientBundleID;
      v31 = 0;
      v22 = [MADManagedRequest entryWithRequestID:dCopy bundleIdentifier:clientBundleID sourceIdentifier:@"FileSystem" assetIdentifier:0 assetURL:v19 assetURLExtension:v20 resultDirectoryURL:lCopy resultDirectoryURLExtension:extensionDataCopy request:v16 error:&v31];
      v23 = v31;
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADComputeServiceClientHandler] Added to schedule with MADRequest %@", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
    }

    objc_autoreleasePoolPop(context);
    ++v26;
  }
}

- (void)_storeComputeServiceRequests:(id)requests localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL resultExtensionData:(id)data requestID:(id)d
{
  requestsCopy = requests;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  dCopy = d;
  v26 = 0;
  v15 = VCPLogToOSLogType[6];
  while (v26 < [requestsCopy count])
  {
    context = objc_autoreleasePoolPush();
    v16 = [requestsCopy objectAtIndexedSubscript:v26];
    for (i = 0; i < [identifiersCopy count]; ++i)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [identifiersCopy objectAtIndexedSubscript:i];
      clientBundleID = self->_clientBundleID;
      path = [lCopy path];
      v31 = 0;
      v22 = [MADManagedRequest entryWithRequestID:dCopy bundleIdentifier:clientBundleID sourceIdentifier:path assetIdentifier:v19 assetURL:0 assetURLExtension:0 resultDirectoryURL:rLCopy resultDirectoryURLExtension:dataCopy request:v16 error:&v31];
      v23 = v31;

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADComputeServiceClientHandler] Added to schedule with MADRequest %@", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
    }

    objc_autoreleasePoolPop(context);
    ++v26;
  }
}

- (void)requestProcessing:(id)processing assetURLs:(id)ls extensionData:(id)data resultDirectoryURL:(id)l resultExtensionData:(id)extensionData requestID:(id)d reply:(id)reply
{
  processingCopy = processing;
  lsCopy = ls;
  dataCopy = data;
  lCopy = l;
  extensionDataCopy = extensionData;
  dCopy = d;
  replyCopy = reply;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1000B4A70;
  v56[3] = &unk_100285690;
  v56[4] = self;
  v19 = dCopy;
  v57 = v19;
  v43 = objc_retainBlock(v56);
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1000B4A84;
  v54[3] = &unk_1002856E0;
  v54[4] = self;
  v20 = v19;
  v55 = v20;
  v44 = objc_retainBlock(v54);
  v21 = [lsCopy count];
  if (v21 != [dataCopy count])
  {
    v58 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"Asset URLs and sandbox extension data count mismatches!"];
    v59 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v23];

    replyCopy[2](replyCopy, v24);
  }

  v41 = +[NSDate now];
  [(MADComputeServiceClientHandler *)self _storeComputeServiceRequests:processingCopy assetURLs:lsCopy extensionData:dataCopy resultDirectoryURL:lCopy resultExtensionData:extensionDataCopy requestID:v20];
  for (i = 0; i < [lsCopy count]; ++i)
  {
    v26 = [lsCopy objectAtIndexedSubscript:i];
    v27 = [dataCopy objectAtIndexedSubscript:i];
    _CFURLAttachSecurityScopeToFileURL();
  }

  _CFURLAttachSecurityScopeToFileURL();
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000B4F74;
  v49[3] = &unk_100285708;
  v49[4] = self;
  v38 = v41;
  v50 = v38;
  v28 = processingCopy;
  v51 = v28;
  v29 = lsCopy;
  v52 = v29;
  v30 = replyCopy;
  v53 = v30;
  v39 = objc_retainBlock(v49);
  v40 = lCopy;
  v31 = v28;
  v32 = v29;
  v33 = [MADComputeServiceProcessingTask taskWithRequests:v28 requestID:v20 assetURLs:v29 resultDirectoryURL:lCopy cancelBlock:0 progressHandler:v43 resultsHandler:v44 completionHandler:v39];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v35 = v20;
  v36 = [v20 hash];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000B52E8;
  v47[3] = &unk_100282AC0;
  v37 = v30;
  v48 = v37;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v33 withRequestID:v36 schedulingErrorHandler:v47];
}

- (void)requestProcessing:(id)processing localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL resultExtensionData:(id)data requestID:(id)d reply:(id)reply
{
  processingCopy = processing;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  dCopy = d;
  replyCopy = reply;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000B5704;
  v49[3] = &unk_100285690;
  v49[4] = self;
  v21 = dCopy;
  v50 = v21;
  v39 = objc_retainBlock(v49);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000B5718;
  v47[3] = &unk_100285730;
  v47[4] = self;
  v22 = v21;
  v48 = v22;
  v38 = objc_retainBlock(v47);
  v35 = rLCopy;
  v36 = lCopy;
  v34 = dataCopy;
  v33 = +[NSDate now];
  [(MADComputeServiceClientHandler *)self _storeComputeServiceRequests:processingCopy localIdentifiers:identifiersCopy photoLibraryURL:lCopy resultDirectoryURL:rLCopy resultExtensionData:dataCopy requestID:v22];
  _CFURLAttachSecurityScopeToFileURL();
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000B5C08;
  v42[3] = &unk_100285708;
  v42[4] = self;
  v23 = v33;
  v43 = v23;
  v24 = processingCopy;
  v44 = v24;
  v25 = identifiersCopy;
  v45 = v25;
  v26 = rLCopy;
  v27 = replyCopy;
  v46 = v27;
  v28 = objc_retainBlock(v42);
  v29 = [MADComputeServiceProcessingTask taskWithRequests:v24 requestID:v22 localIdentifiers:v25 photoLibraryURL:lCopy resultDirectoryURL:v26 cancelBlock:0 progressHandler:v39 resultsHandler:v38 completionHandler:v28];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v31 = [v22 hash];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000B5F7C;
  v40[3] = &unk_100282AC0;
  v32 = v27;
  v41 = v32;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v29 withRequestID:v31 schedulingErrorHandler:v40];
}

- (void)scheduleProcessing:(id)processing assetURLs:(id)ls extensionData:(id)data resultDirectoryURL:(id)l resultExtensionData:(id)extensionData requestID:(id)d reply:(id)reply
{
  processingCopy = processing;
  lsCopy = ls;
  dataCopy = data;
  lCopy = l;
  extensionDataCopy = extensionData;
  dCopy = d;
  replyCopy = reply;
  v21 = [lsCopy count];
  if (v21 != [dataCopy count])
  {
    v36 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"Asset URLs and sandbox extension data count mismatches!"];
    v37 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v23];

    replyCopy[2](replyCopy, 0, v24);
  }

  [(MADComputeServiceClientHandler *)self _storeComputeServiceRequests:processingCopy assetURLs:lsCopy extensionData:dataCopy resultDirectoryURL:lCopy resultExtensionData:extensionDataCopy requestID:dCopy, processingCopy];
  v25 = +[MADComputeServiceBackgroundSystemTask sharedTask];
  v31 = 0;
  [v25 submitTask:&v31];
  v26 = v31;

  if (v26)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v27 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        v28 = +[MADComputeServiceBackgroundSystemTask identifier];
        *buf = 138412546;
        v33 = v28;
        v34 = 2112;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[MADComputeServiceClientHandler][%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
      }
    }
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (void)scheduleProcessing:(id)processing localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL resultExtensionData:(id)data requestID:(id)d reply:(id)reply
{
  replyCopy = reply;
  [(MADComputeServiceClientHandler *)self _storeComputeServiceRequests:processing localIdentifiers:identifiers photoLibraryURL:l resultDirectoryURL:rL resultExtensionData:data requestID:d];
  v17 = +[MADComputeServiceBackgroundSystemTask sharedTask];
  v21 = 0;
  [v17 submitTask:&v21];
  v18 = v21;

  if (v18)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = +[MADComputeServiceBackgroundSystemTask identifier];
        *buf = 138412546;
        v23 = v20;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MADComputeServiceClientHandler][%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
      }
    }
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (void)resumeWithRequestID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v21 = dCopy;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412290;
      v32 = dCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MADComputeServiceClientHandler] Resuming %@", buf, 0xCu);
    }
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000B685C;
  v29[3] = &unk_100285690;
  v29[4] = self;
  v9 = dCopy;
  v30 = v9;
  v10 = objc_retainBlock(v29);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000B6870;
  v27[3] = &unk_100285758;
  v27[4] = self;
  v11 = v9;
  v28 = v11;
  v12 = objc_retainBlock(v27);
  [NSDate now:replyCopy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B6D60;
  v24[3] = &unk_100285580;
  v13 = v24[4] = self;
  v25 = v13;
  v14 = replyCopy;
  v26 = v14;
  v15 = objc_retainBlock(v24);
  v16 = [MADComputeServiceProcessingTask taskWithRequestID:v11 cancelBlock:0 progressHandler:v10 resultsHandler:v12 completionHandler:v15];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v18 = [v11 hash];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B7044;
  v22[3] = &unk_100282AC0;
  v19 = v14;
  v23 = v19;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v16 withRequestID:v18 schedulingErrorHandler:v22];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v20 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      *buf = 138412290;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[MADComputeServiceClientHandler] Resumed %@", buf, 0xCu);
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
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[MADComputeServiceClientHandler] Call to cancel all requests", &v6, 2u);
    }
  }

  cancelAllTasks = [(MADServiceClientTaskQueuingScheduler *)self->_queuingTaskScheduler cancelAllTasks];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = 134217984;
      v7 = cancelAllTasks;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADComputeServiceClientHandler] Canceled %lu tasks", &v6, 0xCu);
    }
  }
}

- (void)cancelWithRequestID:(id)d
{
  dCopy = d;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v7 = 138412290;
      v8 = dCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADComputeServiceClientHandler] Canceling %@", &v7, 0xCu);
    }
  }

  -[MADServiceClientTaskQueuingScheduler cancelTaskWithRequestID:](self->_queuingTaskScheduler, "cancelTaskWithRequestID:", [dCopy hash]);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = 138412290;
      v8 = dCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MADComputeServiceClientHandler] Canceled %@", &v7, 0xCu);
    }
  }
}

- (void)removeWithRequestID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MADComputeServiceClientHandler] Removing %@", buf, 0xCu);
    }
  }

  v15 = 0;
  v8 = [MADManagedRequest removeRequest:dCopy error:&v15];
  v9 = v15;
  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v10 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 138412290;
        v17 = dCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADComputeServiceClientHandler] Removed %@", buf, 0xCu);
      }
    }

    v11 = 0;
  }

  else
  {
    v12 = MediaAnalysisLogLevel();
    v11 = v9;
    if (v12 >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      v14 = os_log_type_enabled(&_os_log_default, v13);
      v11 = v9;
      if (v14)
      {
        *buf = 138412546;
        v17 = dCopy;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MADComputeServiceClientHandler] Failed to remove %@ - %@", buf, 0x16u);
        v11 = v9;
      }
    }
  }

  (replyCopy)[2](replyCopy, v8, v11);
}

@end