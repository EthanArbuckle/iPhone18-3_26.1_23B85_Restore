@interface MADVideoSessionClientHandler
+ (id)clientHandlerWithXPCConnection:(id)a3;
- (MADVideoSessionClientHandler)initWithXPCConnection:(id)a3;
- (id)tapToRadarURLWithTitle:(id)a3 description:(id)a4 debugState:(id)a5 componentID:(unint64_t)a6 componentName:(id)a7 componentVersion:(id)a8 videoURL:(id)a9;
- (id)tasks;
- (void)addRequest:(id)a3 reply:(id)a4;
- (void)generateTapToRadarNotificationWithVideoURL:(id)a3 options:(id)a4 reply:(id)a5;
- (void)processFrameWithIOSurface:(id)a3 frameProperties:(id)a4 reply:(id)a5;
- (void)removeAllRequests;
- (void)removeRequest:(id)a3 reply:(id)a4;
- (void)requestTTRNotificationWithVideoFrames:(id)a3 options:(id)a4 reply:(id)a5;
@end

@implementation MADVideoSessionClientHandler

- (MADVideoSessionClientHandler)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = MADVideoSessionClientHandler;
  v6 = [(MADVideoSessionClientHandler *)&v44 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    objc_initWeak(&location, v7);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    connection = v7->_connection;
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MADVideoSessionClientProtocol];
    [(NSXPCConnection *)connection setRemoteObjectInterface:v9];

    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MADVideoSessionServerProtocol];
    [MADVideoSession configureServerInterface:v10];
    [(NSXPCConnection *)v7->_connection setExportedInterface:v10];
    [(NSXPCConnection *)v7->_connection setInterruptionHandler:&stru_100285210];
    v11 = v7->_connection;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000979C4;
    v41[3] = &unk_100282A30;
    objc_copyWeak(&v42, &location);
    [(NSXPCConnection *)v11 setInvalidationHandler:v41];
    v12 = [(NSXPCConnection *)v7->_connection remoteObjectProxy];
    clientProxy = v7->_clientProxy;
    v7->_clientProxy = v12;

    v14 = dispatch_queue_create("MADVideoSessionClientHandler.management", 0);
    managementQueue = v7->_managementQueue;
    v7->_managementQueue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("MADVideoSessionClientHandler.task", v16);
    taskQueue = v7->_taskQueue;
    v7->_taskQueue = v17;

    v19 = objc_alloc_init(NSMutableArray);
    tasks = v7->_tasks;
    v7->_tasks = v19;

    signpostPayload = v7->_signpostPayload;
    v7->_signpostPayload = &stru_1002890F8;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("MADVideoSessionClientHandler.tapToRadarNotification", v22);
    tapToRadarNotificationQueue = v7->_tapToRadarNotificationQueue;
    v7->_tapToRadarNotificationQueue = v23;

    v39 = 0;
    cf = 0;
    v25 = v7->_connection;
    if (v25)
    {
      [(NSXPCConnection *)v25 auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v38 = SecTaskCreateWithAuditToken(0, &token);
    sub_100003424(&v7->_secTask.value_, &v38);
    sub_100002CBC(&v38);
    value = v7->_secTask.value_;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v27 = SecTaskCopySigningIdentifier(value, &cf);
    clientBundleID = v7->_clientBundleID;
    v7->_clientBundleID = &v27->isa;

    if (v39)
    {
      CFRelease(v39);
      v39 = 0;
    }

    v29 = SecTaskCopyTeamIdentifier();
    clientTeamID = v7->_clientTeamID;
    v7->_clientTeamID = v29;

    if (cf)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v31 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v31))
        {
          token.val[0] = 138412290;
          *&token.val[1] = cf;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[MAVideoSessionClientHandler] Failed to query client bundle ID (%@)", &token, 0xCu);
        }
      }
    }

    if (v39)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v32 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          token.val[0] = 138412290;
          *&token.val[1] = v39;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[MAVideoSessionClientHandler] Failed to query client team ID (%@)", &token, 0xCu);
        }
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v33 = VCPPersistentLogInstance();
      v34 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(v33, v34))
      {
        v35 = v7->_clientBundleID;
        v36 = v7->_clientTeamID;
        token.val[0] = 138412546;
        *&token.val[1] = v35;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v36;
        _os_log_impl(&_mh_execute_header, v33, v34, "[MAClientHandler] Client BundleID: %@ TeamID: %@", &token, 0x16u);
      }
    }

    v7->_userSafetyEntitled = [MADUserSafetySettings isTaskEntitled:v7->_secTask.value_];
    sub_100002CBC(&v39);
    sub_100002CBC(&cf);
    objc_destroyWeak(&v42);

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

- (void)addRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100097C80;
  v17 = sub_100097C90;
  v18 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097C98;
  block[3] = &unk_100285278;
  block[4] = self;
  v9 = v6;
  v11 = v9;
  v12 = &v13;
  dispatch_sync(managementQueue, block);
  v7[2](v7, v14[5] == 0);

  _Block_object_dispose(&v13, 8);
}

- (void)removeRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100097C80;
  v17 = sub_100097C90;
  v18 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000981A8;
  block[3] = &unk_1002852A0;
  block[4] = self;
  v12 = &v13;
  v9 = v6;
  v11 = v9;
  dispatch_sync(managementQueue, block);
  v7[2](v7, v14[5] == 0);

  _Block_object_dispose(&v13, 8);
}

- (void)removeAllRequests
{
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000984EC;
  block[3] = &unk_100283210;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

- (id)tasks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100097C80;
  v10 = sub_100097C90;
  v11 = 0;
  managementQueue = self->_managementQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000985F8;
  v5[3] = &unk_100283178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(managementQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)processFrameWithIOSurface:(id)a3 frameProperties:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MADScopedWatchdog);
  taskQueue = self->_taskQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098780;
  block[3] = &unk_1002852F0;
  v20 = v11;
  v21 = v10;
  block[4] = self;
  v18 = v9;
  v19 = v8;
  v13 = v11;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  dispatch_async(taskQueue, block);
}

- (id)tapToRadarURLWithTitle:(id)a3 description:(id)a4 debugState:(id)a5 componentID:(unint64_t)a6 componentName:(id)a7 componentVersion:(id)a8 videoURL:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = [NSString stringWithFormat:@"%@ Debug Info:\n %@", v15, a5];

  v20 = [v18 path];
  v21 = [NSString stringWithFormat:@"tap-to-radar://new?Title=%@&Classification=Serious Bug&ComponentID=%d&ComponentName=%@&ComponentVersion=%@&Reproducible=Sometimes&Description=%@&Attachments=%@", v14, a6, v16, v17, v19, v20];

  v22 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v23 = [v21 stringByAddingPercentEncodingWithAllowedCharacters:v22];

  v24 = [NSURL URLWithString:v23];

  return v24;
}

- (void)generateTapToRadarNotificationWithVideoURL:(id)a3 options:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28 = v8;
  v11 = +[NSMutableString string];
  [v11 appendString:@"False positive detected during FaceTime call"];
  v12 = objc_alloc_init(NSDateFormatter);
  [v12 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v13 = [v9 startDate];

  if (v13)
  {
    v14 = [v9 startDate];
    v15 = [v12 stringFromDate:v14];
    [v11 appendFormat:@", call started at: %@", v15];
  }

  v16 = [v9 eventDate];

  if (v16)
  {
    v17 = [v9 eventDate];
    v18 = [v12 stringFromDate:v17];
    [v11 appendFormat:@", false positive detected at: %@", v18];
  }

  v19 = [(MADVideoSessionClientHandler *)self tapToRadarURLWithTitle:@"[TTR] False positive detected during FaceTime call" description:v11 debugState:&__NSDictionary0__struct componentID:1518832 componentName:@"Communication Safety | ML Data feedback" componentVersion:@"New Bugs" videoURL:v8];
  v20 = objc_alloc_init(UNMutableNotificationContent);
  [v20 setCategoryIdentifier:@"userSafetyCategory"];
  [v20 setTitle:@"[Internal] Was this a false positive?"];
  [v20 setBody:@"Tap to file a radar"];
  v21 = [UNNotificationIcon iconForSystemImageNamed:@"ant.fill"];
  [v20 setIcon:v21];

  [v20 setDefaultActionURL:v19];
  +[NSDate timeIntervalSinceReferenceDate];
  v23 = [NSString stringWithFormat:@"com.apple.mediaanalysisd.notifications:%lf", v22];
  v24 = [UNNotificationRequest requestWithIdentifier:v23 content:v20 trigger:0];
  v25 = v10;
  [v24 setDestinations:15];
  v26 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.mediaanalysisd.notifications"];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10009949C;
  v29[3] = &unk_100282AC0;
  v27 = v25;
  v30 = v27;
  [v26 addNotificationRequest:v24 withCompletionHandler:v29];
}

- (void)requestTTRNotificationWithVideoFrames:(id)a3 options:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_userSafetyEntitled && [MADUserSafetySettings isEnabledForTask:self->_secTask.value_])
  {
    v11 = +[NSBundle vcp_mediaAnalysisBundle];
    v12 = [v11 bundleIdentifier];
    [v12 UTF8String];
    has_internal_content = os_variant_has_internal_content();

    if (has_internal_content)
    {
      if ([v8 count])
      {
        v14 = objc_alloc_init(MADScopedWatchdog);
        tapToRadarNotificationQueue = self->_tapToRadarNotificationQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100099B80;
        block[3] = &unk_100285318;
        v25 = v14;
        v26 = v9;
        v27 = v8;
        v28 = self;
        v29 = v10;
        v16 = v14;
        dispatch_async(tapToRadarNotificationQueue, block);

        v17 = v25;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v22 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "No buffered video frames, skipping TTR notification...", buf, 2u);
          }
        }

        v31 = NSLocalizedDescriptionKey;
        v16 = [NSString stringWithFormat:@"No buffered video frames"];
        v32 = v16;
        v17 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v23 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v17];
        (*(v10 + 2))(v10, 0, v23);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v20 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "This request is only supported for internal builds", buf, 2u);
        }
      }

      v33 = NSLocalizedDescriptionKey;
      v16 = [NSString stringWithFormat:@"This request is only supported for internal builds"];
      v34 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v17];
      (*(v10 + 2))(v10, 0, v21);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "User Safety either not entitled for client or not enabled", buf, 2u);
      }
    }

    v35 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithFormat:@"User Safety either not entitled for client or not enabled"];
    v36 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v19 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v17];
    (*(v10 + 2))(v10, 0, v19);
  }
}

@end