@interface VCPMADRemoteActivityTask
+ (id)taskWithActivityType:(unint64_t)a3 andCompletionHandler:(id)a4;
- (BOOL)run:(id *)a3;
- (VCPMADRemoteActivityTask)initWithActivityType:(unint64_t)a3 andCompletionHandler:(id)a4;
- (id)connection;
- (void)updateProgress:(double)a3;
@end

@implementation VCPMADRemoteActivityTask

- (VCPMADRemoteActivityTask)initWithActivityType:(unint64_t)a3 andCompletionHandler:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = VCPMADRemoteActivityTask;
  v7 = [(VCPMADRemoteActivityTask *)&v11 initWithCompletionHandler:v6];
  v8 = v7;
  if (v7)
  {
    v7->_activityType = a3;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v9 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 67109120;
        v13 = a3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MAD BG Service] Initializing activity %d ... ", buf, 8u);
      }
    }
  }

  return v8;
}

+ (id)taskWithActivityType:(unint64_t)a3 andCompletionHandler:(id)a4
{
  v6 = a4;
  if (a3 <= 0x16 && ((1 << a3) & 0x79140E) != 0 || a3 - 256 < 4)
  {
    v7 = [[a1 alloc] initWithActivityType:a3 andCompletionHandler:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.mediaanalysisd.service.activity" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v6 = self->_connection;
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPMADRemoteActivityClientProtocol];
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    v8 = self->_connection;
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPMADRemoteActivityServerProtocol];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&stru_100286E80];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10012D50C;
    v15 = &unk_100282A30;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (void)updateProgress:(double)a3
{
  v4 = +[VCPWatchdog sharedWatchdog];
  [v4 pet];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MAD BG Service] %3.1f%% complete", &v6, 0xCu);
    }
  }
}

- (BOOL)run:(id *)a3
{
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 1;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_10012DEAC;
  v55 = sub_10012DEBC;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  type = VCPLogToOSLogType[7];
  while (1)
  {
    v4 = +[VCPWatchdog sharedWatchdog];
    [v4 pet];

    if ([(VCPMADRemoteActivityTask *)self isCanceled])
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v18 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[MAD BG Service] Processing canceled", buf, 2u);
        }
      }

      v67 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithFormat:@"Processing canceled"];
      v68 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v20];
      v22 = v52[5];
      v52[5] = v21;

      *(v58 + 24) = 0;
LABEL_13:
      if (MediaAnalysisLogLevel() >= 5)
      {
        v23 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          v24 = [v52[5] code];
          *buf = 67109120;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MAD BG Service] finished (%d)", buf, 8u);
        }
      }

      if (a3)
      {
        v25 = v52[5];
        if (v25)
        {
          v26 = [v25 copy];
          v27 = *a3;
          *a3 = v26;
        }
      }

      v28 = *(v58 + 24);
      goto LABEL_26;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
    {
      activityType = self->_activityType;
      *buf = 67109120;
      *&buf[4] = activityType;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MAD BG Service] Waking background analysis service (%d) ...", buf, 8u);
    }

    v6 = dispatch_semaphore_create(0);
    v7 = [(VCPMADRemoteActivityTask *)self connection];
    v8 = [v7 remoteObjectProxyWithErrorHandler:&stru_100286EA0];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10012DF40;
    v45[3] = &unk_1002865E0;
    v9 = v6;
    v46 = v9;
    [v8 wakeWithReply:v45];

    v10 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v9, v10))
    {
      break;
    }

    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v12 = [(VCPMADRemoteActivityTask *)self connection];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10012E00C;
    v43[3] = &unk_100286EC8;
    v13 = v11;
    v44 = v13;
    v14 = [v12 remoteObjectProxyWithErrorHandler:v43];
    v15 = self->_activityType;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10012E110;
    v38[3] = &unk_100286EF0;
    v40 = &v51;
    v38[4] = self;
    v41 = &v57;
    v42 = &v47;
    v16 = v13;
    v39 = v16;
    [v14 startActivityWithType:v15 andReply:v38];

    *buf = 0;
    v62 = buf;
    v63 = 0x2020000000;
    v64 = 0;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10012E3A8;
    v37[3] = &unk_100283150;
    v37[4] = self;
    v37[5] = buf;
    v17 = [VCPTimer timerWithInterval:100 unit:2 oneShot:0 andBlock:v37];
    dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    [v17 destroy];

    _Block_object_dispose(buf, 8);
    if ((v48[3] & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v29 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v29))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[MAD BG Service] Waking background analysis service timeout; deferring ...", buf, 2u);
    }
  }

  if (a3)
  {
    v65 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithFormat:@"Waking background analysis service timeout deferring ..."];;
    v66 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v31];
    v33 = *a3;
    *a3 = v32;
  }

  v28 = 0;
LABEL_26:
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  return v28 & 1;
}

@end