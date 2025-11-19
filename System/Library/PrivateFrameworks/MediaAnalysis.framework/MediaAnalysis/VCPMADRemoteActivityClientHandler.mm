@interface VCPMADRemoteActivityClientHandler
+ (id)clientHandlerWithXPCConnection:(id)a3;
+ (void)notifyServicePID;
- (VCPMADRemoteActivityClientHandler)initWithXPCConnection:(id)a3;
- (void)cancelActivity;
- (void)handleLostConnection;
- (void)startActivityWithType:(unint64_t)a3 andReply:(id)a4;
- (void)wakeWithReply:(id)a3;
@end

@implementation VCPMADRemoteActivityClientHandler

- (VCPMADRemoteActivityClientHandler)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = VCPMADRemoteActivityClientHandler;
  v6 = [(VCPMADRemoteActivityClientHandler *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    objc_initWeak(&location, v7);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    connection = v7->_connection;
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPMADRemoteActivityServerProtocol];
    [(NSXPCConnection *)connection setExportedInterface:v9];

    v10 = v7->_connection;
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPMADRemoteActivityClientProtocol];
    [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

    v12 = v7->_connection;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100120D88;
    v17[3] = &unk_100282A30;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v17];
    v13 = v7->_connection;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100120E34;
    v15[3] = &unk_100282A30;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
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

- (void)handleLostConnection
{
  p_taskID = &self->_taskID;
  if (atomic_load(&self->_taskID.__a_.__a_value))
  {
    v5 = +[VCPMADTaskScheduler sharedInstance];
    v6 = atomic_load(&p_taskID->__a_.__a_value);
    v7 = v5;
    [v5 cancelTaskWithID:v6];
  }

  v8 = +[VCPClientManager sharedManager];
  [v8 removeClientHandler:self];
}

+ (void)notifyServicePID
{
  if (qword_1002B8418 != -1)
  {
    sub_1001230AC();
  }

  if (dword_1002B8420)
  {
    v2 = getpid();
    v3 = notify_set_state(dword_1002B8420, v2);
    if (v3)
    {
      v4 = v3;
      if (MediaAnalysisLogLevel() >= 3)
      {
        v5 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v5))
        {
          v7 = 67109376;
          v8 = v2;
          v9 = 1024;
          v10 = v4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[BG Service] Failed to set service pid (%d) state (%d)", &v7, 0xEu);
        }
      }
    }

    notify_post([@"com.apple.mediaanalysisd.serviceProcessID" UTF8String]);
    if (MediaAnalysisLogLevel() >= 7)
    {
      v6 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = 67109120;
        v8 = v2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[BG Service] Notify service pid: %d", &v7, 8u);
      }
    }
  }
}

- (void)startActivityWithType:(unint64_t)a3 andReply:(id)a4
{
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[BG Service] Request to start activity (%d)", buf, 8u);
    }
  }

  if (atomic_load(&self->_taskID.__a_.__a_value))
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v9 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[BG Service] Activity already started; dropping request", buf, 2u);
      }
    }

    v103 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"Activity already started dropping request (%d)", a3];;
    v104 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v11];
    v6[2](v6, v12);

    goto LABEL_68;
  }

  xpc_transaction_exit_clean();
  [objc_opt_class() notifyServicePID];
  v13 = +[VCPPhotoLibraryManager sharedManager];
  v10 = [v13 allPhotoLibraries];

  if ([v10 count])
  {
    *buf = 0;
    v98 = buf;
    v99 = 0x3032000000;
    v100 = sub_100122634;
    v101 = sub_100122644;
    v102 = 0;
    +[NSDate now];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_10012264C;
    v74[3] = &unk_1002836C0;
    v14 = v76 = a3;
    v75 = v14;
    v15 = [VCPTimer timerWithIntervalSeconds:60 isOneShot:0 andBlock:v74];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1001226DC;
    v68[3] = &unk_100286A78;
    v72 = buf;
    v68[4] = self;
    v16 = v14;
    v69 = v16;
    v43 = v15;
    v70 = v43;
    v73 = a3;
    v17 = v6;
    v71 = v17;
    v45 = objc_retainBlock(v68);
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = sub_100122634;
    v66[4] = sub_100122644;
    v67 = +[NSDate distantPast];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100122A70;
    v62[3] = &unk_100286AA0;
    v62[4] = self;
    v65 = a3;
    v18 = v16;
    v63 = v18;
    v64 = v66;
    v44 = objc_retainBlock(v62);
    if (a3 > 19)
    {
      if (a3 <= 255)
      {
        switch(a3)
        {
          case 0x14uLL:
            v52[0] = _NSConcreteStackBlock;
            v52[1] = 3221225472;
            v52[2] = sub_100122CF8;
            v52[3] = &unk_1002837E8;
            v52[4] = self;
            v50[0] = _NSConcreteStackBlock;
            v50[1] = 3221225472;
            v50[2] = sub_100122D14;
            v50[3] = &unk_100284038;
            v51 = v45;
            v20 = [MADPreheatingTask taskWithCancelBlock:&stru_100286C80 progressHandler:v52 completionHandler:v50];

            goto LABEL_54;
          case 0x15uLL:
            v25 = &stru_100286B40;
            v26 = &off_100281008;
            break;
          case 0x16uLL:
            v25 = &stru_100286B80;
            v26 = off_100280FC8;
            break;
          default:
            goto LABEL_69;
        }

        v22 = [(__objc2_class *)*v26 taskWithPhotoLibraries:v10 cancelBlock:v25 progressHandler:0 completionHandler:v45];
      }

      else if (a3 > 257)
      {
        if (a3 == 258)
        {
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_100122CA8;
          v54[3] = &unk_1002837E8;
          v54[4] = self;
          v22 = [MADPhotosTelemetryProcessingTask taskWithPhotoLibraries:v10 andProgressHandler:v54 andCompletionHandler:v45 andCancelBlock:&stru_100286C40];
        }

        else
        {
          if (a3 != 259)
          {
            goto LABEL_69;
          }

          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_100122CCC;
          v53[3] = &unk_1002837E8;
          v53[4] = self;
          v22 = [MADPhotosDatabaseMigrationProcessingTask taskWithPhotoLibraries:v10 progressHandler:v53 completionHandler:v45 cancelBlock:&stru_100286C60];
        }
      }

      else
      {
        if (a3 == 256)
        {
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_100122BD0;
          v59[3] = &unk_1002837E8;
          v59[4] = self;
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_100122BEC;
          v57[3] = &unk_100284038;
          v58 = v45;
          v20 = [MADProgressReporterProcessingTask taskWithCancelBlock:&stru_100286BE0 progressHandler:v59 completionHandler:v57];

          goto LABEL_54;
        }

        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_100122C84;
        v55[3] = &unk_1002837E8;
        v55[4] = self;
        v22 = [MADPhotosBackupProcessingTask taskWithPhotoLibraries:v10 andProgressHandler:v55 andCompletionHandler:v45 andCancelBlock:&stru_100286C20];
      }
    }

    else if (a3 <= 9)
    {
      switch(a3)
      {
        case 1uLL:
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_100122B8C;
          v60[3] = &unk_1002837E8;
          v60[4] = self;
          v22 = [VCPLibraryProcessingTask taskWithPhotoLibraries:v10 andOptions:&__NSDictionary0__struct andProgressHandler:v60 andCompletionHandler:v45 andCancelBlock:&stru_100286B60];
          break;
        case 2uLL:
          if (VCPMADUnifiedBackgroundProcessing())
          {
            v95 = @"SkipSyncGallery";
            v96 = &__kCFBooleanTrue;
            v27 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            v20 = [MADUnifiedProcessingTask taskWithCancelBlock:&stru_100286AC0 options:v27 progressHandler:v44 andCompletionHandler:v45];

            goto LABEL_54;
          }

          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_100122B58;
          v61[3] = &unk_1002837E8;
          v61[4] = self;
          v22 = [VCPMADSceneLibraryProcessingTask taskWithPhotoLibraries:v10 cancelBlock:&stru_100286AE0 progressHandler:v61 andCompletionHandler:v45];
          break;
        case 3uLL:
          v23 = _os_feature_enabled_impl();
          if (VCPMADUnifiedBackgroundProcessing())
          {
            v93 = @"SkipSyncGallery";
            v42 = [NSNumber numberWithBool:v23];
            v94 = v42;
            v24 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
            [MADUnifiedProcessingTask taskWithCancelBlock:&stru_100286B00 options:v24 progressHandler:v44 andCompletionHandler:v45];
          }

          else
          {
            v91 = @"SkipSyncGallery";
            v42 = [NSNumber numberWithBool:v23];
            v92 = v42;
            v24 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
            [MADUnifiedProcessingTask taskWithCancelBlock:&stru_100286B20 taskID:3 options:v24 progressHandler:v44 andCompletionHandler:v45];
          }
          v20 = ;

LABEL_54:
          if (v20)
          {
            v48[0] = _NSConcreteStackBlock;
            v48[1] = 3221225472;
            v48[2] = sub_100122DBC;
            v48[3] = &unk_100283210;
            v48[4] = self;
            v28 = [VCPTimer timerWithIntervalSeconds:10 isOneShot:0 andBlock:v48];
            v29 = *(v98 + 5);
            *(v98 + 5) = v28;

            if (+[MADManagedBackgroundActivitySchedule isMACDPersistEnabled])
            {
              [MADManagedBackgroundActivitySchedule updateSessionLogWithTaskID:a3 startTime:v18 duration:0 exitStatus:-1.0];
            }

            else
            {
              v34 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
              v35 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v34];

              [v35 storeSchedulingHistoryForActivityID:a3 andStartTime:v18];
              [v35 purgeExcessiveSchedulingRecordsForActivityID:a3];
              [v35 commit];
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100122E44;
            block[3] = &unk_100282BC8;
            block[4] = self;
            v31 = v20;
            v47 = v31;
            v36 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
            v36[2]();

            if (!atomic_load(&self->_taskID.__a_.__a_value) && MediaAnalysisLogLevel() >= 4)
            {
              v38 = VCPLogToOSLogType[4];
              if (os_log_type_enabled(&_os_log_default, v38))
              {
                *v81 = 67109120;
                v82 = a3;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "[BG Service] Failed to schedule task (%d)", v81, 8u);
              }
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4)
            {
              v30 = VCPLogToOSLogType[4];
              if (os_log_type_enabled(&_os_log_default, v30))
              {
                *v81 = 67109120;
                v82 = a3;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[BG Service] Failed to create activity (%d)", v81, 8u);
              }
            }

            v77 = NSLocalizedDescriptionKey;
            v31 = [NSString stringWithFormat:@"Failed to create activity (%d)", a3];
            v78 = v31;
            v32 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v33 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v32];
            v17[2](v17, v33);
          }

LABEL_67:

          _Block_object_dispose(v66, 8);
          _Block_object_dispose(buf, 8);

          goto LABEL_68;
        default:
          goto LABEL_69;
      }
    }

    else
    {
      if (a3 <= 15)
      {
        if (a3 == 10)
        {
          if (VCPMADUnifiedBackgroundProcessing())
          {
            v89 = @"SkipSyncGallery";
            v90 = &__kCFBooleanTrue;
            v19 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            [MADUnifiedProcessingTask taskWithCancelBlock:&stru_100286BA0 options:v19 progressHandler:v44 andCompletionHandler:v45];
          }

          else
          {
            v87 = @"SkipSyncGallery";
            v88 = &__kCFBooleanTrue;
            v19 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
            [MADUnifiedProcessingTask taskWithCancelBlock:&stru_100286BC0 taskID:10 options:v19 progressHandler:v44 andCompletionHandler:v45];
          }

          goto LABEL_17;
        }

        if (a3 == 12)
        {
          if (VCPMADUnifiedBackgroundProcessing())
          {
            v85 = @"SkipSyncGallery";
            v86 = &__kCFBooleanTrue;
            v19 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
            [MADUnifiedProcessingTask taskWithCancelBlock:&stru_100286CA0 options:v19 progressHandler:v44 andCompletionHandler:v45];
          }

          else
          {
            v83 = @"SkipSyncGallery";
            v84 = &__kCFBooleanTrue;
            v19 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            [MADUnifiedProcessingTask taskWithCancelBlock:&stru_100286CC0 taskID:12 options:v19 progressHandler:v44 andCompletionHandler:v45];
          }

          v20 = LABEL_17:;

          goto LABEL_54;
        }

LABEL_69:
        if (MediaAnalysisLogLevel() >= 4)
        {
          v39 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v39))
          {
            *v81 = 67109120;
            v82 = a3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[BG Service] Invalid activity type (%d) requested", v81, 8u);
          }
        }

        v79 = NSLocalizedDescriptionKey;
        v31 = [NSString stringWithFormat:@"Invalid activity type (%d) requested", a3];
        v80 = v31;
        v40 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v41 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v40];
        v17[2](v17, v41);

        goto LABEL_67;
      }

      if (a3 == 16)
      {
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100122D98;
        v49[3] = &unk_1002837E8;
        v49[4] = self;
        v22 = [VCPMADPECSingleRequestProcessingTask taskWithPhotoLibraries:v10 progressHandler:v49 completionHandler:v45 cancelBlock:&stru_100286CE0];
      }

      else
      {
        if (a3 != 19)
        {
          goto LABEL_69;
        }

        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_100122C60;
        v56[3] = &unk_1002837E8;
        v56[4] = self;
        v22 = [VCPPhotosMaintenanceProcessingTask taskWithPhotoLibraries:v10 andProgressHandler:v56 andCompletionHandler:v45 andCancelBlock:&stru_100286C00];
      }
    }

    v20 = v22;
    goto LABEL_54;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v21 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[BG Service] No PhotoLibrary present; quitting processing", buf, 2u);
    }
  }

  v6[2](v6, 0);
LABEL_68:
}

- (void)cancelActivity
{
  if (MediaAnalysisLogLevel() >= 4)
  {
    v3 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[BG Service] Request to cancel processing", buf, 2u);
    }
  }

  v4 = atomic_load(&self->_taskID.__a_.__a_value);
  if (v4)
  {
    v5 = +[VCPMADTaskScheduler sharedInstance];
    [v5 cancelTaskWithID:v4];
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v6 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[BG Service] No active task; cannot cancel", v7, 2u);
    }
  }
}

- (void)wakeWithReply:(id)a3
{
  v3 = a3;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[BG Service] Wake request", v6, 2u);
    }
  }

  v5 = getpid();
  v3[2](v3, v5);
}

@end