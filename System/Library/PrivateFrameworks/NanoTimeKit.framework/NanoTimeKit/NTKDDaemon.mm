@interface NTKDDaemon
+ (void)killDaemon;
+ (void)run;
+ (void)runDaemon;
+ (void)runSnapshotTool;
@end

@implementation NTKDDaemon

+ (void)run
{
  v3 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003FB24(v4);
    }
  }

  v5 = NSTemporaryDirectory();
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "daemon is running with temporary directory %@", buf, 0xCu);
  }

  objc_opt_class();
  v7 = dispatch_queue_create("com.apple.nanotimekitd.daemon-queue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FD44;
  block[3] = &unk_10005CB30;
  block[4] = self;
  dispatch_async(v7, block);

  objc_autoreleasePoolPop(v3);
  v8 = +[NSRunLoop mainRunLoop];
  [v8 run];
}

+ (void)runDaemon
{
  v2 = +[NTKDActivityTracker sharedInstance];
  [v2 checkin];

  v3 = nw_parameters_create();
  nw_parameters_set_source_application_by_bundle_id();
  v4 = +[NTKDArgonService sharedService];
  [v4 start];

  sub_100006530(@"CleanupUnpairedDevices", &stru_10005DF80, 432000.0);
  +[NTKDMigrator runPreMigrator];
  v5 = +[NTKDCompanionTrackedPhotosService sharedService];
  [v5 start];

  v6 = dispatch_semaphore_create(0);
  v7 = +[NTKCompanionAppLibrary sharedAppLibrary];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000301F0;
  v14[3] = &unk_10005CA70;
  v8 = v6;
  v15 = v8;
  [v7 prewarmCompanionDaemonWithCompletion:v14];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  +[NTKBundleComplicationMigrationCompanionDevicePrewarmer run];
  v9 = +[NTKDCompanionGalleryPhotosFacesCurator sharedInstance];
  +[NTKDCollectionCoordinator runCollectionServer];
  sub_100006530(@"CleanupResources", &stru_10005DFA0, 2592000.0);
  +[NTKDComplicationStoreCoordinator runComplicationStoreServer];
  v10 = +[NTKDSyncController sharedInstance];
  +[NTKDMigrator runPostMigrator];
  +[NTKDFaceSnapshotCoordinator runSnapshotServer];
  v11 = dispatch_get_global_queue(17, 0);
  dispatch_async(v11, &stru_10005DFC0);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, NTKDaemonDidLaunchDarwinNotification, 0, 0, 1u);
  v13 = +[NTKDCompanionDeviceLibraryService sharedService];
  [v13 start];

  if (qword_100066CD0 != -1)
  {
    sub_10003FBB4();
  }
}

+ (void)killDaemon
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "nanotimekitcompaniond should not be running because bridge is not installed--killing process!", v9, 2u);
  }

  dispatch_async(&_dispatch_main_q, &stru_10005E000);
  v3 = [NSXPCListener alloc];
  v4 = [v3 initWithMachServiceName:NTKCollectionMachService];
  [v4 resume];
  v5 = [NSXPCListener alloc];
  v6 = [v5 initWithMachServiceName:NTKComplicationStoreMachService];
  [v6 resume];
  v7 = [NSXPCListener alloc];
  v8 = [v7 initWithMachServiceName:NTKFaceSnapshotMachService];
  [v8 resume];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, &stru_10005E060);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", 0, &stru_10005E080);
  xpc_set_event_stream_handler("com.apple.xpc.activity", 0, &stru_10005E0A0);
}

+ (void)runSnapshotTool
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SNAPSHOT TEST MODE: all nonessential features are disabled", v4, 2u);
  }

  NTKDebugLoadLocaleOverride();
  +[NTKDFaceSnapshotCoordinator runSnapshotServer];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, NTKDaemonDidLaunchDarwinNotification, 0, 0, 1u);
}

@end