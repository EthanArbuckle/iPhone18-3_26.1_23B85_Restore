@interface CSConnectionListener
+ (id)createSmartSiriVolumeListener;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CSConnectionListener)initWithMachService:(id)a3 withServiceInterface:(id)a4 withServiceObject:(id)a5 withDelegateInterface:(id)a6 queue:(id)a7;
- (CSConnectionListener)initWithXpcListener:(id)a3 withMachService:(id)a4 withServiceInterface:(id)a5 withServiceObject:(id)a6 withDelegateInterface:(id)a7 queue:(id)a8;
- (void)dealloc;
- (void)notifyClientsWithBlock:(id)a3;
- (void)resumeConnection;
@end

@implementation CSConnectionListener

+ (id)createSmartSiriVolumeListener
{
  if ((+[CSUtils supportSmartVolume]& 1) != 0)
  {
    if (qword_10029E1B8 != -1)
    {
      dispatch_once(&qword_10029E1B8, &stru_10024FFE0);
    }

    v2 = qword_10029E1B0;
  }

  else
  {
    v3 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "+[CSConnectionListener(SmartSiriVolume) createSmartSiriVolumeListener]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume not supported on this platform - Bailing out", &v5, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

- (void)resumeConnection
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    machServiceName = self->_machServiceName;
    *buf = 136315394;
    v8 = "[CSConnectionListener resumeConnection]";
    v9 = 2114;
    v10 = machServiceName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s [Service:%{public}@]", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100145AC8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notifyClientsWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100145BA0;
  block[3] = &unk_100252B50;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    machServiceName = self->_machServiceName;
    *buf = 136315394;
    v28 = "[CSConnectionListener listener:shouldAcceptNewConnection:]";
    v29 = 2114;
    v30 = machServiceName;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Got connection on service %{public}@", buf, 0x16u);
  }

  if (self->_listener != v6)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_machServiceName;
      *buf = 136315650;
      v28 = "[CSConnectionListener listener:shouldAcceptNewConnection:]";
      v29 = 2114;
      v30 = v11;
      v31 = 2114;
      v32 = v6;
      v12 = "%s [Service:%{public}@] Invalid listener - %{public}@";
      v13 = v10;
      v14 = 32;
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (([CSUtils xpcConnection:v7 hasEntitlement:@"corespeech.corespeechd.xpc"]& 1) == 0)
  {
    [v7 invalidate];
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = self->_machServiceName;
      *buf = 136315394;
      v28 = "[CSConnectionListener listener:shouldAcceptNewConnection:]";
      v29 = 2114;
      v30 = v18;
      v12 = "%s Rejecting connection to %{public}@ due to entitlement";
      v13 = v17;
      v14 = 22;
      goto LABEL_10;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  [v7 setExportedInterface:self->_exportedInterface];
  [v7 setExportedObject:self->_proxyObject];
  [v7 setRemoteObjectInterface:self->_remoteInterface];
  objc_initWeak(buf, self);
  objc_initWeak(&location, v7);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100146254;
  v23[3] = &unk_100252B28;
  objc_copyWeak(&v24, buf);
  objc_copyWeak(&v25, &location);
  [v7 setInterruptionHandler:v23];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001463FC;
  v20[3] = &unk_100252B28;
  objc_copyWeak(&v21, buf);
  objc_copyWeak(&v22, &location);
  [v7 setInvalidationHandler:v20];
  v15 = [(CSConnectionListener *)self clientConnections];
  [v15 addObject:v7];

  [v7 resume];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
  v16 = 1;
LABEL_12:

  return v16;
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    machServiceName = self->_machServiceName;
    *buf = 136315650;
    v7 = "[CSConnectionListener dealloc]";
    v8 = 2114;
    v9 = machServiceName;
    v10 = 2114;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Service %{public}@ dealloced - %{public}@", buf, 0x20u);
  }

  v5.receiver = self;
  v5.super_class = CSConnectionListener;
  [(CSConnectionListener *)&v5 dealloc];
}

- (CSConnectionListener)initWithMachService:(id)a3 withServiceInterface:(id)a4 withServiceObject:(id)a5 withDelegateInterface:(id)a6 queue:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[NSXPCListener alloc] initWithMachServiceName:v16];
  v18 = [(CSConnectionListener *)self initWithXpcListener:v17 withMachService:v16 withServiceInterface:v15 withServiceObject:v14 withDelegateInterface:v13 queue:v12];

  return v18;
}

- (CSConnectionListener)initWithXpcListener:(id)a3 withMachService:(id)a4 withServiceInterface:(id)a5 withServiceObject:(id)a6 withDelegateInterface:(id)a7 queue:(id)a8
{
  v15 = a3;
  v16 = a4;
  v33 = a5;
  v17 = a6;
  v31 = a7;
  v32 = a8;
  v34.receiver = self;
  v34.super_class = CSConnectionListener;
  v18 = [(CSConnectionListener *)&v34 init];
  v19 = v18;
  if (!v18)
  {
LABEL_22:
    v23 = v19;
    goto LABEL_23;
  }

  if (!v15)
  {
    v21 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v36 = "[CSConnectionListener initWithXpcListener:withMachService:withServiceInterface:withServiceObject:withDelegateInterface:queue:]";
    v22 = "%s ERR: XPC listener Name is nil - Bailing out";
LABEL_17:
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    goto LABEL_18;
  }

  if (!v16)
  {
    v21 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v36 = "[CSConnectionListener initWithXpcListener:withMachService:withServiceInterface:withServiceObject:withDelegateInterface:queue:]";
    v22 = "%s ERR: Mach Service Name is nil - Bailing out";
    goto LABEL_17;
  }

  if (!v17)
  {
    v21 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v36 = "[CSConnectionListener initWithXpcListener:withMachService:withServiceInterface:withServiceObject:withDelegateInterface:queue:]";
    v22 = "%s ERR: Proxy Object is nil - Bailing out";
    goto LABEL_17;
  }

  if (v33)
  {
    objc_storeStrong(&v18->_listener, a3);
    [(NSXPCListener *)v19->_listener setDelegate:v19];
    objc_storeStrong(&v19->_machServiceName, a4);
    objc_storeStrong(&v19->_exportedInterface, a5);
    objc_storeStrong(&v19->_proxyObject, a6);
    objc_storeStrong(&v19->_remoteInterface, a7);
    if (v32)
    {
      objc_storeStrong(&v19->_queue, a8);
      v20 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v36 = "[CSConnectionListener initWithXpcListener:withMachService:withServiceInterface:withServiceObject:withDelegateInterface:queue:]";
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Set up queue for %@", buf, 0x16u);
      }
    }

    else
    {
      v24 = dispatch_queue_create("com.apple.CoreSpeech.Connection.Listener", 0);
      queue = v19->_queue;
      v19->_queue = v24;
    }

    [(NSXPCListener *)v19->_listener _setQueue:v19->_queue];
    v26 = objc_alloc_init(NSMutableArray);
    clientConnections = v19->_clientConnections;
    v19->_clientConnections = v26;

    v28 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      machServiceName = v19->_machServiceName;
      *buf = 136315394;
      v36 = "[CSConnectionListener initWithXpcListener:withMachService:withServiceInterface:withServiceObject:withDelegateInterface:queue:]";
      v37 = 2114;
      v38 = machServiceName;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Started listening for %{public}@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  v21 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v36 = "[CSConnectionListener initWithXpcListener:withMachService:withServiceInterface:withServiceObject:withDelegateInterface:queue:]";
    v22 = "%s ERR: Exported interface is nil - Bailing out";
    goto LABEL_17;
  }

LABEL_18:
  v23 = 0;
LABEL_23:

  return v23;
}

@end