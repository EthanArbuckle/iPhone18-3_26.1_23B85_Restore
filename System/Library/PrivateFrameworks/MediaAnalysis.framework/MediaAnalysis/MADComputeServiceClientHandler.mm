@interface MADComputeServiceClientHandler
+ (id)clientHandlerWithXPCConnection:(id)a3;
- (MADComputeServiceClientHandler)initWithXPCConnection:(id)a3;
- (void)_storeComputeServiceRequests:(id)a3 assetURLs:(id)a4 extensionData:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8;
- (void)_storeComputeServiceRequests:(id)a3 localIdentifiers:(id)a4 photoLibraryURL:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8;
- (void)cancelAllRequests;
- (void)cancelWithRequestID:(id)a3;
- (void)removeWithRequestID:(id)a3 reply:(id)a4;
- (void)requestProcessing:(id)a3 assetURLs:(id)a4 extensionData:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8 reply:(id)a9;
- (void)requestProcessing:(id)a3 localIdentifiers:(id)a4 photoLibraryURL:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8 reply:(id)a9;
- (void)resumeWithRequestID:(id)a3 reply:(id)a4;
- (void)scheduleProcessing:(id)a3 assetURLs:(id)a4 extensionData:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8 reply:(id)a9;
- (void)scheduleProcessing:(id)a3 localIdentifiers:(id)a4 photoLibraryURL:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8 reply:(id)a9;
@end

@implementation MADComputeServiceClientHandler

- (MADComputeServiceClientHandler)initWithXPCConnection:(id)a3
{
  v33 = a3;
  v44.receiver = self;
  v44.super_class = MADComputeServiceClientHandler;
  v5 = [(MADComputeServiceClientHandler *)&v44 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_connection, a3);
    [(NSXPCConnection *)v6->_connection setExportedObject:v6];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MADComputeServiceClientProtocol];
    [(NSXPCConnection *)v6->_connection setRemoteObjectInterface:v7];

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MADComputeServiceServerProtocol];
    [(NSXPCConnection *)v6->_connection setExportedInterface:v8];

    v9 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    [MADComputeService configureClientInterface:v9];

    v10 = [(NSXPCConnection *)v6->_connection exportedInterface];
    [MADComputeService configureServerInterface:v10];

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

+ (id)clientHandlerWithXPCConnection:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithXPCConnection:v3];

  return v4;
}

- (void)_storeComputeServiceRequests:(id)a3 assetURLs:(id)a4 extensionData:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8
{
  v25 = a3;
  v14 = a4;
  v29 = a5;
  v27 = a6;
  v28 = a7;
  v30 = a8;
  v26 = 0;
  v15 = VCPLogToOSLogType[6];
  while (v26 < [v25 count])
  {
    context = objc_autoreleasePoolPush();
    v16 = [v25 objectAtIndexedSubscript:v26];
    for (i = 0; i < [v14 count]; ++i)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [v14 objectAtIndexedSubscript:i];
      v20 = [v29 objectAtIndexedSubscript:i];
      clientBundleID = self->_clientBundleID;
      v31 = 0;
      v22 = [MADManagedRequest entryWithRequestID:v30 bundleIdentifier:clientBundleID sourceIdentifier:@"FileSystem" assetIdentifier:0 assetURL:v19 assetURLExtension:v20 resultDirectoryURL:v27 resultDirectoryURLExtension:v28 request:v16 error:&v31];
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

- (void)_storeComputeServiceRequests:(id)a3 localIdentifiers:(id)a4 photoLibraryURL:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8
{
  v25 = a3;
  v14 = a4;
  v29 = a5;
  v27 = a6;
  v28 = a7;
  v30 = a8;
  v26 = 0;
  v15 = VCPLogToOSLogType[6];
  while (v26 < [v25 count])
  {
    context = objc_autoreleasePoolPush();
    v16 = [v25 objectAtIndexedSubscript:v26];
    for (i = 0; i < [v14 count]; ++i)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [v14 objectAtIndexedSubscript:i];
      clientBundleID = self->_clientBundleID;
      v21 = [v29 path];
      v31 = 0;
      v22 = [MADManagedRequest entryWithRequestID:v30 bundleIdentifier:clientBundleID sourceIdentifier:v21 assetIdentifier:v19 assetURL:0 assetURLExtension:0 resultDirectoryURL:v27 resultDirectoryURLExtension:v28 request:v16 error:&v31];
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

- (void)requestProcessing:(id)a3 assetURLs:(id)a4 extensionData:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8 reply:(id)a9
{
  v45 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v46 = a7;
  v18 = a8;
  v42 = a9;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1000B4A70;
  v56[3] = &unk_100285690;
  v56[4] = self;
  v19 = v18;
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
  v21 = [v15 count];
  if (v21 != [v16 count])
  {
    v58 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"Asset URLs and sandbox extension data count mismatches!"];
    v59 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v23];

    v42[2](v42, v24);
  }

  v41 = +[NSDate now];
  [(MADComputeServiceClientHandler *)self _storeComputeServiceRequests:v45 assetURLs:v15 extensionData:v16 resultDirectoryURL:v17 resultExtensionData:v46 requestID:v20];
  for (i = 0; i < [v15 count]; ++i)
  {
    v26 = [v15 objectAtIndexedSubscript:i];
    v27 = [v16 objectAtIndexedSubscript:i];
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
  v28 = v45;
  v51 = v28;
  v29 = v15;
  v52 = v29;
  v30 = v42;
  v53 = v30;
  v39 = objc_retainBlock(v49);
  v40 = v17;
  v31 = v28;
  v32 = v29;
  v33 = [MADComputeServiceProcessingTask taskWithRequests:v28 requestID:v20 assetURLs:v29 resultDirectoryURL:v17 cancelBlock:0 progressHandler:v43 resultsHandler:v44 completionHandler:v39];
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

- (void)requestProcessing:(id)a3 localIdentifiers:(id)a4 photoLibraryURL:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8 reply:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v37 = a9;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000B5704;
  v49[3] = &unk_100285690;
  v49[4] = self;
  v21 = v20;
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
  v35 = v18;
  v36 = v17;
  v34 = v19;
  v33 = +[NSDate now];
  [(MADComputeServiceClientHandler *)self _storeComputeServiceRequests:v15 localIdentifiers:v16 photoLibraryURL:v17 resultDirectoryURL:v18 resultExtensionData:v19 requestID:v22];
  _CFURLAttachSecurityScopeToFileURL();
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000B5C08;
  v42[3] = &unk_100285708;
  v42[4] = self;
  v23 = v33;
  v43 = v23;
  v24 = v15;
  v44 = v24;
  v25 = v16;
  v45 = v25;
  v26 = v18;
  v27 = v37;
  v46 = v27;
  v28 = objc_retainBlock(v42);
  v29 = [MADComputeServiceProcessingTask taskWithRequests:v24 requestID:v22 localIdentifiers:v25 photoLibraryURL:v17 resultDirectoryURL:v26 cancelBlock:0 progressHandler:v39 resultsHandler:v38 completionHandler:v28];
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

- (void)scheduleProcessing:(id)a3 assetURLs:(id)a4 extensionData:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8 reply:(id)a9
{
  v29 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [v15 count];
  if (v21 != [v16 count])
  {
    v36 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"Asset URLs and sandbox extension data count mismatches!"];
    v37 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v23];

    v20[2](v20, 0, v24);
  }

  [(MADComputeServiceClientHandler *)self _storeComputeServiceRequests:v29 assetURLs:v15 extensionData:v16 resultDirectoryURL:v17 resultExtensionData:v18 requestID:v19, v29];
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

  v20[2](v20, 1, 0);
}

- (void)scheduleProcessing:(id)a3 localIdentifiers:(id)a4 photoLibraryURL:(id)a5 resultDirectoryURL:(id)a6 resultExtensionData:(id)a7 requestID:(id)a8 reply:(id)a9
{
  v16 = a9;
  [(MADComputeServiceClientHandler *)self _storeComputeServiceRequests:a3 localIdentifiers:a4 photoLibraryURL:a5 resultDirectoryURL:a6 resultExtensionData:a7 requestID:a8];
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

  v16[2](v16, 1, 0);
}

- (void)resumeWithRequestID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = v6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MADComputeServiceClientHandler] Resuming %@", buf, 0xCu);
    }
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000B685C;
  v29[3] = &unk_100285690;
  v29[4] = self;
  v9 = v6;
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
  [NSDate now:v7];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B6D60;
  v24[3] = &unk_100285580;
  v13 = v24[4] = self;
  v25 = v13;
  v14 = v7;
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

  v4 = [(MADServiceClientTaskQueuingScheduler *)self->_queuingTaskScheduler cancelAllTasks];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADComputeServiceClientHandler] Canceled %lu tasks", &v6, 0xCu);
    }
  }
}

- (void)cancelWithRequestID:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADComputeServiceClientHandler] Canceling %@", &v7, 0xCu);
    }
  }

  -[MADServiceClientTaskQueuingScheduler cancelTaskWithRequestID:](self->_queuingTaskScheduler, "cancelTaskWithRequestID:", [v4 hash]);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MADComputeServiceClientHandler] Canceled %@", &v7, 0xCu);
    }
  }
}

- (void)removeWithRequestID:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MADComputeServiceClientHandler] Removing %@", buf, 0xCu);
    }
  }

  v15 = 0;
  v8 = [MADManagedRequest removeRequest:v5 error:&v15];
  v9 = v15;
  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v10 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 138412290;
        v17 = v5;
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
        v17 = v5;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MADComputeServiceClientHandler] Failed to remove %@ - %@", buf, 0x16u);
        v11 = v9;
      }
    }
  }

  (v6)[2](v6, v8, v11);
}

@end