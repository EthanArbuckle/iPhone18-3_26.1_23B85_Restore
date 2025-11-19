@interface VCPMADServicePublicClientHandler
+ (id)clientHandlerWithXPCConnection:(id)a3;
- (CF<__SecTask)secTask;
- (VCPMADServicePublicClientHandler)initWithXPCConnection:(id)a3;
- (int64_t)consumeSandboxExtension:(id)a3 url:(id)a4;
- (void)cacheHitWithQueryID:(unint64_t)a3 cachedResultQueryID:(unint64_t)a4 engagementSuggestionType:(id)a5;
- (void)cancelAllRequests;
- (void)cancelRequest:(int)a3;
- (void)currentOutstandingTasksWithReply:(id)a3;
- (void)queryUserSafetyEnablement:(id)a3;
- (void)requestImageProcessing:(id)a3 forAssetURL:(id)a4 withSandboxToken:(id)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8;
- (void)requestImageProcessing:(id)a3 forIOSurface:(id)a4 withOrientation:(unsigned int)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8;
- (void)requestMultiModalPrewarming:(id)a3 requestID:(int)a4 reply:(id)a5;
- (void)requestProcessing:(id)a3 multiModalInputs:(id)a4 requestID:(int)a5 reply:(id)a6;
- (void)requestTextPrewarming:(id)a3 requestID:(int)a4 reply:(id)a5;
- (void)requestTextProcessing:(id)a3 textInputs:(id)a4 requestID:(int)a5 reply:(id)a6;
- (void)requestVideoProcessing:(id)a3 assetURL:(id)a4 sandboxToken:(id)a5 identifier:(id)a6 requestID:(int)a7 reply:(id)a8;
- (void)submitSpotlightAssetURL:(id)a3 uniqueIdentifier:(id)a4 bundleIdentifier:(id)a5 typeIdentifier:(id)a6 sandboxToken:(id)a7 reply:(id)a8;
- (void)subscribeUserSafety:(id)a3;
@end

@implementation VCPMADServicePublicClientHandler

- (VCPMADServicePublicClientHandler)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v42.receiver = self;
  v42.super_class = VCPMADServicePublicClientHandler;
  v6 = [(VCPMADServicePublicClientHandler *)&v42 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    objc_initWeak(&location, v7);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    connection = v7->_connection;
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPMediaAnalysisClientProtocol];
    [(NSXPCConnection *)connection setRemoteObjectInterface:v9];

    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPMADServicePublicServerProtocol];
    [MADServicePublic configureServerInterface:v10];
    [(NSXPCConnection *)v7->_connection setExportedInterface:v10];
    v11 = v7->_connection;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100007334;
    v39[3] = &unk_100282A30;
    objc_copyWeak(&v40, &location);
    [(NSXPCConnection *)v11 setInterruptionHandler:v39];
    v12 = v7->_connection;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000073E0;
    v37[3] = &unk_100282A30;
    objc_copyWeak(&v38, &location);
    [(NSXPCConnection *)v12 setInvalidationHandler:v37];
    v13 = dispatch_queue_create("VCPMADServicePublicClientHandler", 0);
    managementQueue = v7->_managementQueue;
    v7->_managementQueue = v13;

    v15 = dispatch_queue_create("VCPMADServicePublicClientHandler.UserSafety", 0);
    userSafetyQueue = v7->_userSafetyQueue;
    v7->_userSafetyQueue = v15;

    v17 = [(NSXPCConnection *)v7->_connection remoteObjectProxy];
    clientProxy = v7->_clientProxy;
    v7->_clientProxy = v17;

    v35 = 0;
    cf = 0;
    v19 = v7->_connection;
    if (v19)
    {
      [(NSXPCConnection *)v19 auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v34 = SecTaskCreateWithAuditToken(0, &token);
    sub_100003424(&v7->_secTask.value_, &v34);
    sub_100002CBC(&v34);
    value = v7->_secTask.value_;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v21 = SecTaskCopySigningIdentifier(value, &cf);
    clientBundleID = v7->_clientBundleID;
    v7->_clientBundleID = &v21->isa;

    if (v35)
    {
      CFRelease(v35);
      v35 = 0;
    }

    v23 = SecTaskCopyTeamIdentifier();
    clientTeamID = v7->_clientTeamID;
    v7->_clientTeamID = v23;

    if (cf)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v25 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          token.val[0] = 138412290;
          *&token.val[1] = cf;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[MAClientHandler] Failed to query client bundle ID (%@)", &token, 0xCu);
        }
      }
    }

    if (v35)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v26 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v26))
        {
          token.val[0] = 138412290;
          *&token.val[1] = v35;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[MAClientHandler] Failed to query client team ID (%@)", &token, 0xCu);
        }
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v27 = VCPPersistentLogInstance();
      v28 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(v27, v28))
      {
        v29 = v7->_clientBundleID;
        v30 = v7->_clientTeamID;
        token.val[0] = 138412546;
        *&token.val[1] = v29;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v30;
        _os_log_impl(&_mh_execute_header, v27, v28, "[MAClientHandler] Client BundleID: %@ TeamID: %@", &token, 0x16u);
      }
    }

    v7->_userSafetyEntitled = [MADUserSafetySettings isTaskEntitled:v7->_secTask.value_];
    v7->_userSafetyEntitledPolicySubscription = [MADUserSafetySettings isTaskEntitledForPolicySubscription:v7->_secTask.value_];
    v31 = [[MADServiceClientTaskQueuingScheduler alloc] initWithClientBundleID:v7->_clientBundleID];
    queuingTaskScheduler = v7->_queuingTaskScheduler;
    v7->_queuingTaskScheduler = v31;

    sub_100002CBC(&v35);
    sub_100002CBC(&cf);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);

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

- (int64_t)consumeSandboxExtension:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 fileSystemRepresentation];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  else
  {
    *buf = 0u;
    v18 = 0u;
  }

  v10 = sandbox_check_by_audit_token();
  if (v10 == -1)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_13;
    }

    v11 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v11))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    v12 = "[MADServicePublic] Failed to check for client read access to file %s";
    goto LABEL_12;
  }

  if (v10 == 1)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_13;
    }

    v11 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v11))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    v12 = "[MADServicePublic] Client does not have read access to file %s";
LABEL_12:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v12, buf, 0xCu);
LABEL_13:
    v13 = -1;
    goto LABEL_18;
  }

  v14 = v6;
  [v6 UTF8String];
  v13 = sandbox_extension_consume();
  if (v13 < 0 && MediaAnalysisLogLevel() >= 3)
  {
    v15 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADServicePublic] Failed to consume sandbox extension", buf, 2u);
    }
  }

LABEL_18:

  return v13;
}

- (void)requestImageProcessing:(id)a3 forIOSurface:(id)a4 withOrientation:(unsigned int)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8
{
  v9 = *&a7;
  v11 = *&a5;
  v14 = a3;
  surface = a4;
  v15 = a6;
  v16 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v17 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MADServicePublic] Received on-demand image processing request (CVPixelBuffer) with MADRequestID %d", buf, 8u);
    }
  }

  v18 = objc_autoreleasePoolPush();
  v32 = [NSString stringWithFormat:@"Request: %d Identifier: %@", v9, v15];
  v19 = VCPSignPostLog();
  v20 = os_signpost_id_generate(v19);

  v21 = VCPSignPostLog();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 138412290;
    *&buf[4] = v32;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VCPMADServicePublicClientHandler_IOSurface", "%@", buf, 0xCu);
  }

  *buf = 0;
  v23 = CVPixelBufferCreateWithIOSurface(0, surface, 0, buf);
  if (v23)
  {
    v42 = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithFormat:@"[MADServicePublic] Failed to create CVPixelBuffer from specified IOSurface"];
    v43 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v26 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v23 userInfo:v25];
    v16[2](v16, 0, v26);
  }

  else
  {
    v24 = [VCPMADServiceImageAsset assetWithPixelBuffer:*buf orientation:v11 identifier:v15 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
    v27 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
    [v24 setUserSafetyEligible:v27];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100007CC8;
    v36[3] = &unk_100282A98;
    v40 = v20;
    v28 = v32;
    v37 = v28;
    v41 = 0;
    v29 = v16;
    v39 = v29;
    v38 = v14;
    v30 = [VCPMADServiceImageProcessingTask taskWithRequests:v38 forAsset:v24 cancelBlock:&stru_100282A70 andCompletionHandler:v36];
    [v30 setSignpostPayload:v28];
    queuingTaskScheduler = self->_queuingTaskScheduler;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100007E0C;
    v34[3] = &unk_100282AC0;
    v35 = v29;
    [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v30 withRequestID:v9 schedulingErrorHandler:v34];

    v25 = v37;
  }

  sub_100002CBC(buf);
  objc_autoreleasePoolPop(v18);
}

- (void)requestImageProcessing:(id)a3 forAssetURL:(id)a4 withSandboxToken:(id)a5 identifier:(id)a6 requestID:(int)a7 andReply:(id)a8
{
  v9 = *&a7;
  v14 = a3;
  v33 = a4;
  v32 = a5;
  v34 = a6;
  v15 = a8;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v16 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 67109120;
      LODWORD(v48) = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MADServicePublic] Received on-demand image processing request (URL) with MADRequestID %d", buf, 8u);
    }
  }

  v17 = objc_autoreleasePoolPush();
  v31 = [NSString stringWithFormat:@"Request: %d Identifier: %@", v9, v34];
  v18 = VCPSignPostLog();
  v19 = os_signpost_id_generate(v18);

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138412290;
    v48 = v31;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VCPMADServicePublicClientHandler_URL", "%@", buf, 0xCu);
  }

  v22 = [(VCPMADServicePublicClientHandler *)self consumeSandboxExtension:v32 url:v33];
  if (v22 < 0)
  {
    v45 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithFormat:@"[MADServicePublic] Failed to consume sandbox extension"];
    v46 = v23;
    v25 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v26 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v25];
    v15[2](v15, 0, v26);
  }

  else
  {
    v23 = [VCPMADServiceImageAsset assetWithURL:v33 identifier:v34 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
    v24 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
    [v23 setUserSafetyEligible:v24];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100008388;
    v38[3] = &unk_100282B08;
    v42 = v19;
    v27 = v31;
    v39 = v27;
    v43 = 0;
    v28 = v15;
    v41 = v28;
    v40 = v14;
    v44 = v22;
    v29 = [VCPMADServiceImageProcessingTask taskWithRequests:v40 forAsset:v23 cancelBlock:&stru_100282AE0 andCompletionHandler:v38];
    [v29 setSignpostPayload:v27];
    queuingTaskScheduler = self->_queuingTaskScheduler;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000084D4;
    v35[3] = &unk_100282B30;
    v36 = v28;
    v37 = v22;
    [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v29 withRequestID:v9 schedulingErrorHandler:v35];

    v25 = v39;
  }

  objc_autoreleasePoolPop(v17);
}

- (void)requestVideoProcessing:(id)a3 assetURL:(id)a4 sandboxToken:(id)a5 identifier:(id)a6 requestID:(int)a7 reply:(id)a8
{
  v9 = *&a7;
  v31 = a3;
  v14 = a4;
  v34 = a5;
  v15 = a6;
  v35 = a8;
  v32 = v15;
  v33 = [NSString stringWithFormat:@"Request: %d Identifier: %@", v9, v15];
  v16 = VCPSignPostLog();
  v17 = os_signpost_id_generate(v16);

  v18 = VCPSignPostLog();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 138412290;
    v50 = v33;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VCPMADServicePublicClientHandler_VideoE2E", "%@", buf, 0xCu);
  }

  v20 = [(VCPMADServicePublicClientHandler *)self consumeSandboxExtension:v34 url:v14];
  if (v20 < 0)
  {
    v47 = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithFormat:@"[MADServicePublic] Failed to consume sandbox extension"];
    v48 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v26 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v25];
    v35[2](v35, 0, v26);
  }

  else
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100008A78;
    v45[3] = &unk_100282B58;
    v45[4] = self;
    v46 = v9;
    v21 = objc_retainBlock(v45);
    v22 = [MADServiceVideoAsset assetWithURL:v14 identifier:v32 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
    v23 = self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_];
    [v22 setUserSafetyEligible:v23];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100008A9C;
    v39[3] = &unk_100282BA0;
    v42 = v17;
    v27 = v33;
    v40 = v27;
    v43 = 0;
    v28 = v35;
    v41 = v28;
    v44 = v20;
    v29 = [MADServiceVideoProcessingTask taskWithRequests:v31 forAsset:v22 cancelBlock:&stru_100282B78 progressHandler:v21 resultHandler:0 andCompletionHandler:v39];
    [v29 setSignpostPayload:v27];
    queuingTaskScheduler = self->_queuingTaskScheduler;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100008C00;
    v36[3] = &unk_100282B30;
    v37 = v28;
    v38 = v20;
    [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v29 withRequestID:v9 schedulingErrorHandler:v36];
  }
}

- (void)currentOutstandingTasksWithReply:(id)a3
{
  v4 = a3;
  v4[2](v4, [(MADServiceClientTaskQueuingScheduler *)self->_queuingTaskScheduler currentOutstandingTasks]);
}

- (void)cancelRequest:(int)a3
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v7 = 67109120;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADServicePublic] Service received call to cancel task for MADRequestID %d", &v7, 8u);
    }
  }

  [(MADServiceClientTaskQueuingScheduler *)self->_queuingTaskScheduler cancelTaskWithRequestID:a3];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = 67109120;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MADServicePublic] Canceled task for MADRequestID %d ", &v7, 8u);
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[MADServicePublic] Service received call to cancel all tasks", &v6, 2u);
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MADServicePublic] Service canceled all %lu tasks", &v6, 0xCu);
    }
  }
}

- (void)queryUserSafetyEnablement:(id)a3
{
  v4 = a3;
  if (!self->_userSafetyEntitled)
  {
    v9 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Client not entitled to query User Safety enablement"];
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v6];
    v4[2](v4, 0, v7);
  }

  v8 = [NSNumber numberWithUnsignedInteger:[MADUserSafetySettings policyForTask:self->_secTask.value_]];
  (v4)[2](v4, v8, 0);
}

- (void)subscribeUserSafety:(id)a3
{
  v4 = a3;
  if (!self->_userSafetyEntitledPolicySubscription)
  {
    v31 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Client not entitled to query User Safety enablement"];
    v32 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v6];
    v4[2](v4, 0, v7);
  }

  if (self->_userSafetySubscription)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v8 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MADServicePublic] already subscribed for MADUserSafetyPolicy", buf, 2u);
      }
    }

    v4[2](v4, 1, 0);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADServicePublic] Starting subscribeUserSafety", buf, 2u);
      }
    }

    objc_initWeak(&location, self);
    v11 = [NSSet setWithObject:MOSettingsGroupNameUserSafety];
    v12 = [MOEffectiveSettingsStore publisherForGroups:v11];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000096BC;
    v27[3] = &unk_100282BF0;
    objc_copyWeak(&v28, &location);
    v13 = [v12 sinkWithRecieveInput:v27];
    userSafetySubscription = self->_userSafetySubscription;
    self->_userSafetySubscription = v13;

    if (MediaAnalysisLogLevel() >= 5)
    {
      v15 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADServicePublic] Successfully subscribed for MADUserSafetyPolicy", buf, 2u);
      }
    }

    v4[2](v4, 1, 0);
    v16 = objc_alloc_init(MOEffectiveSettingsStore);
    v17 = [v16 userSafety];
    v18 = [v17 scanningPolicy];

    if (MediaAnalysisLogLevel() >= 5)
    {
      v19 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MADServicePublic] Updated user safety scanning policy (%@)", buf, 0xCu);
      }
    }

    [(VCPMADServicePublicClientHandler *)self secTask];
    v20 = [MADUserSafetySettings policyTypeForTask:*buf scanningPolicy:v18];
    sub_100002CBC(buf);
    if (MediaAnalysisLogLevel() >= 5)
    {
      v21 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 67109120;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MADServicePublic] Starting reportMADUserSafetyPolicy, type: %u", buf, 8u);
      }
    }

    v22 = [[MADUserSafetyPolicy alloc] initWithPolicyType:v20];
    userSafetyQueue = self->_userSafetyQueue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100009A64;
    v25[3] = &unk_100282BC8;
    v25[4] = self;
    v26 = v22;
    v24 = v22;
    dispatch_async(userSafetyQueue, v25);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v9);
  }
}

- (void)cacheHitWithQueryID:(unint64_t)a3 cachedResultQueryID:(unint64_t)a4 engagementSuggestionType:(id)a5
{
  v8 = a5;
  v9 = +[NSMutableDictionary dictionary];
  v10 = [NSNumber numberWithUnsignedLongLong:a3];
  [v9 setObject:v10 forKeyedSubscript:VIACacheHitContextQueryIDKey];

  v11 = [NSNumber numberWithUnsignedLongLong:a4];
  [v9 setObject:v11 forKeyedSubscript:VIACacheHitContextCachedResultQueryID];

  clientBundleID = self->_clientBundleID;
  if (clientBundleID)
  {
    [v9 setObject:clientBundleID forKeyedSubscript:VIACacheHitContextApplicationIdentifierKey];
  }

  if (v8)
  {
    [v9 setObject:v8 forKeyedSubscript:VIACacheHitContextEngagementSuggestionTypeKey];
  }

  v16 = 0;
  v13 = [VIACacheHitContext contextWithDictionary:v9 error:&v16];
  v14 = v16;
  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Failed to create VIACacheHitContext, error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    VIAnalyticsLogCacheHitWithContext();
  }
}

- (void)submitSpotlightAssetURL:(id)a3 uniqueIdentifier:(id)a4 bundleIdentifier:(id)a5 typeIdentifier:(id)a6 sandboxToken:(id)a7 reply:(id)a8
{
  v44 = a3;
  v45 = a4;
  v14 = a5;
  v15 = a6;
  v43 = a7;
  v16 = a8;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v17 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      *buf = 138412802;
      v60 = v45;
      v61 = 2112;
      v62 = v14;
      v63 = 2112;
      v64 = v44;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MADServicePublic] Scheduling asset (UUID: %@ BundleID: %@ URL: %@)", buf, 0x20u);
    }
  }

  v18 = [UTType typeWithIdentifier:v15];
  if ([v18 conformsToType:UTTypeMovie] & 1) != 0 || (objc_msgSend(v18, "conformsToType:", UTTypeVideo))
  {
    v42 = 0;
    v19 = 2;
  }

  else
  {
    if (([v18 conformsToType:UTTypeImage] & 1) == 0)
    {
      v57 = NSLocalizedDescriptionKey;
      v29 = [NSString stringWithFormat:@"Type identifier (%@), does not resolve to image/video", v15];
      v58 = v29;
      v24 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v24];
      v16[2](v16, v8);
      goto LABEL_44;
    }

    v42 = 1;
    v19 = 1;
  }

  v20 = [v14 lowercaseString];
  v21 = [v20 containsString:@"apple"];

  v22 = [v14 lowercaseString];
  v23 = [v22 isEqualToString:@"com.apple.jujubectl"];

  if (v23 & 1 | ((v21 & 1) == 0))
  {
    v50 = 0;
    v24 = [MADManagedSpotlightEntry fetchEntryWithUniqueIdentifier:v45 error:&v50];
    v25 = v50;
    if (v25)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v26 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v26))
        {
          *buf = 138412546;
          v60 = v45;
          v61 = 2112;
          v62 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[MADServicePublic] Failed to fetch entry with %@ (%@). New entry will still be created", buf, 0x16u);
        }
      }
    }

    if (v24)
    {
      [v24 setUrl:v44];
      [v24 setSandboxToken:v43];
      v27 = +[MADSystemDataStore systemDataStore];
      v49 = v25;
      v28 = [v27 commitChangesOrRollback:&v49];
      v29 = v49;

      if (v28)
      {
        v30 = v29;
        if (MediaAnalysisLogLevel() >= 6)
        {
          v31 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v31))
          {
            *buf = 138412290;
            v60 = v24;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[MADServicePublic] Updated asset %@", buf, 0xCu);
          }
        }

        v32 = 0;
      }

      else
      {
        v53 = NSLocalizedDescriptionKey;
        v8 = [NSString stringWithFormat:@"Failed to update entry (%@)", v29];
        v54 = v8;
        v30 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v30];
      }

      v16[2](v16, v32);
      if ((v28 & 1) == 0)
      {

        goto LABEL_44;
      }
    }

    else
    {
      v48 = v25;
      v33 = [MADManagedSpotlightEntry entryWithURL:v44 uniqueIdentifier:v45 bundleIdentifier:v14 typeIdentifier:v15 sandboxToken:v43 mediaType:v19 error:&v48];
      v29 = v48;

      if (v33)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v34 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v34))
          {
            *buf = 138412290;
            v60 = v33;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[MADServicePublic] Scheduled asset %@", buf, 0xCu);
          }
        }

        v35 = 0;
      }

      else
      {
        v51 = NSLocalizedDescriptionKey;
        v8 = [NSString stringWithFormat:@"Failed to store entry %@", v29];
        v52 = v8;
        v25 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v35 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v25];
      }

      v16[2](v16, v35);
      if (!v33)
      {

        goto LABEL_44;
      }
    }

    v36 = v29;
    if (MediaAnalysisLogLevel() >= 5)
    {
      v37 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v37))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[MADServicePublic] Submit BGST task", buf, 2u);
      }
    }

    if (v42)
    {
      v38 = +[MADSpotlightImageBackgroundSystemTask identifier];
      v39 = +[MADSpotlightImageBackgroundSystemTask sharedTask];
      v47 = v29;
      v40 = &v47;
      [v39 submitTask:&v47];
    }

    else
    {
      v38 = +[MADSpotlightMovieBackgroundSystemTask identifier];
      v39 = +[MADSpotlightMovieBackgroundSystemTask sharedTask];
      v46 = v29;
      v40 = &v46;
      [v39 submitTask:&v46];
    }

    v8 = v38;
    v29 = *v40;

    if (v29)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v41 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v41))
        {
          *buf = 138412546;
          v60 = v8;
          v61 = 2112;
          v62 = v29;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[MADServicePublic][%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v55 = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithFormat:@"BundleID %@ is not supported", v14];
    v56 = v29;
    v24 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v24];
    v16[2](v16, v8);
  }

LABEL_44:
}

- (void)requestTextPrewarming:(id)a3 requestID:(int)a4 reply:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADServicePublic] Received text pre-warming request", buf, 2u);
    }
  }

  v11 = [NSString stringWithFormat:@"Request: %d", v6];
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138412290;
    v31 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMADServicePublicClientHandler_TextPrewarmingE2E", "%@", buf, 0xCu);
  }

  v16 = [MADServiceTextPrewarmingTask alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000AA2C;
  v25[3] = &unk_100282C38;
  v28 = v13;
  v17 = v11;
  v26 = v17;
  v29 = 0;
  v18 = v9;
  v27 = v18;
  v19 = [v16 initWithRequests:v8 cancelBlock:&stru_100282C10 completionHandler:v25];
  [v19 setSignpostPayload:v17];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v21 = v6;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000AB54;
  v23[3] = &unk_100282AC0;
  v22 = v18;
  v24 = v22;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v19 withRequestID:v21 schedulingErrorHandler:v23];
}

- (void)requestTextProcessing:(id)a3 textInputs:(id)a4 requestID:(int)a5 reply:(id)a6
{
  v7 = *&a5;
  v26 = a3;
  v10 = a4;
  v11 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MADServicePublic] Received text processing request", buf, 2u);
    }
  }

  v13 = [NSString stringWithFormat:@"Request: %d", v7];
  v14 = VCPSignPostLog();
  v15 = os_signpost_id_generate(v14);

  v16 = VCPSignPostLog();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 138412290;
    v35 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VCPMADServicePublicClientHandler_TextProcessingE2E", "%@", buf, 0xCu);
  }

  v18 = [MADServiceTextAsset assetWithTextInputs:v10 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
  v19 = [MADServiceTextProcessingTask alloc];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000AF08;
  v29[3] = &unk_100282C80;
  v32 = v15;
  v20 = v13;
  v30 = v20;
  v33 = 0;
  v21 = v11;
  v31 = v21;
  v22 = [v19 initWithRequests:v26 asset:v18 cancelBlock:&stru_100282C58 completionHandler:v29];
  [v22 setSignpostPayload:v20];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v24 = v7;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000B050;
  v27[3] = &unk_100282AC0;
  v25 = v21;
  v28 = v25;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v22 withRequestID:v24 schedulingErrorHandler:v27];
}

- (void)requestMultiModalPrewarming:(id)a3 requestID:(int)a4 reply:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADServicePublic] Received multi-modal pre-warming request", buf, 2u);
    }
  }

  v11 = [NSString stringWithFormat:@"Request: %d", v6];
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138412290;
    v31 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMADServicePublicClientHandler_MultiModalPrewarmingE2E", "%@", buf, 0xCu);
  }

  v16 = [MADMultiModalPrewarmingTask alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000B3A0;
  v25[3] = &unk_100282C38;
  v28 = v13;
  v17 = v11;
  v26 = v17;
  v29 = 0;
  v18 = v9;
  v27 = v18;
  v19 = [v16 initWithRequests:v8 cancelBlock:&stru_100282CA0 completionHandler:v25];
  [v19 setSignpostPayload:v17];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v21 = v6;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000B4C8;
  v23[3] = &unk_100282AC0;
  v22 = v18;
  v24 = v22;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v19 withRequestID:v21 schedulingErrorHandler:v23];
}

- (void)requestProcessing:(id)a3 multiModalInputs:(id)a4 requestID:(int)a5 reply:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MADServicePublic] Received multi-modal processing request", buf, 2u);
    }
  }

  v14 = [NSString stringWithFormat:@"Request: %d", v7];
  v15 = VCPSignPostLog();
  v16 = os_signpost_id_generate(v15);

  v17 = VCPSignPostLog();
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 138412290;
    v34 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPMADServicePublicClientHandler_MultiModalProcessingE2E", "%@", buf, 0xCu);
  }

  v19 = [MADMultiModalProcessingTask alloc];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000B828;
  v28[3] = &unk_100282C80;
  v31 = v16;
  v20 = v14;
  v29 = v20;
  v32 = 0;
  v21 = v12;
  v30 = v21;
  v22 = [v19 initWithRequests:v10 inputs:v11 cancelBlock:&stru_100282CC0 completionHandler:v28];
  [v22 setSignpostPayload:v20];
  queuingTaskScheduler = self->_queuingTaskScheduler;
  v24 = v7;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000B970;
  v26[3] = &unk_100282AC0;
  v25 = v21;
  v27 = v25;
  [(MADServiceClientTaskQueuingScheduler *)queuingTaskScheduler submitClientTask:v22 withRequestID:v24 schedulingErrorHandler:v26];
}

- (CF<__SecTask)secTask
{
  value = self->_secTask.value_;
  *v2 = value;
  if (value)
  {
    return CFRetain(value);
  }

  return value;
}

@end