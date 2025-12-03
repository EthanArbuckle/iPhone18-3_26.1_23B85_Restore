@interface CSAttendingServiceClient
- (BOOL)_isAttendingAllowedForUseCase:(int64_t)case;
- (CSAttendingServiceClient)init;
- (CSAttendingServiceDelegate)delegate;
- (void)_createClientConnection;
- (void)_setupRemoteServiceProxyObject;
- (void)attendingStoppedWithReason:(int64_t)reason;
- (void)dealloc;
- (void)invalidate;
- (void)speechPauseDetected;
- (void)speechStartDetectedWithEventInfo:(id)info;
- (void)startAttendingWithOptions:(id)options completion:(id)completion;
- (void)stopAttendingWithReason:(int64_t)reason;
@end

@implementation CSAttendingServiceClient

- (CSAttendingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_isAttendingAllowedForUseCase:(int64_t)case
{
  if (case != 6 && case != 1)
  {
    return 1;
  }

  v7 = [CSAttSiriMagusSupportedPolicy sharedInstance:v4];
  getIsAssetMagusSupported = [v7 getIsAssetMagusSupported];

  return getIsAssetMagusSupported;
}

- (void)_createClientConnection
{
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corespeech.corespeechd.attending.service" options:0];
  attendingConnection = self->_attendingConnection;
  self->_attendingConnection = v3;

  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSAttendingService];
  [(NSXPCConnection *)self->_attendingConnection setRemoteObjectInterface:v5];

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSAttendingServiceDelegate];
  v22 = objc_opt_class();
  v7 = [NSArray arrayWithObjects:&v22 count:1];
  v8 = [NSSet setWithArray:v7];
  [v6 setClasses:v8 forSelector:"speechStartDetectedWithEventInfo:" argumentIndex:0 ofReply:0];

  [(NSXPCConnection *)self->_attendingConnection setExportedInterface:v6];
  [(NSXPCConnection *)self->_attendingConnection setExportedObject:self];
  [(NSXPCConnection *)self->_attendingConnection _setQueue:self->_xpcConnectionQueue];
  objc_initWeak(&location, self);
  v9 = self->_attendingConnection;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011F384;
  v15[3] = &unk_100253510;
  objc_copyWeak(&v16, &location);
  [(NSXPCConnection *)v9 setInterruptionHandler:v15];
  v10 = self->_attendingConnection;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011F514;
  v13[3] = &unk_100253510;
  objc_copyWeak(&v14, &location);
  [(NSXPCConnection *)v10 setInvalidationHandler:v13];
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_attendingConnection;
    *buf = 136315394;
    v19 = "[CSAttendingServiceClient _createClientConnection]";
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Setup connection: %@", buf, 0x16u);
  }

  [(NSXPCConnection *)self->_attendingConnection resume];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_setupRemoteServiceProxyObject
{
  if (!self->_remoteObjectProxy || !self->_attendingConnection)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSAttendingServiceClient _setupRemoteServiceProxyObject]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Creating RemoteServiceProxy", buf, 0xCu);
    }

    attendingConnection = self->_attendingConnection;
    if (attendingConnection || ([(CSAttendingServiceClient *)self _createClientConnection], (attendingConnection = self->_attendingConnection) != 0))
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10011F8E0;
      v8[3] = &unk_100252FD8;
      v8[4] = self;
      v5 = [(NSXPCConnection *)attendingConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
      remoteObjectProxy = self->_remoteObjectProxy;
      self->_remoteObjectProxy = v5;
    }

    else
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v10 = "[CSAttendingServiceClient _setupRemoteServiceProxyObject]";
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s ERR: _attendingConnection is nil", buf, 0xCu);
      }

      remoteObjectProxy = self->_remoteObjectProxy;
      self->_remoteObjectProxy = 0;
    }
  }
}

- (void)speechPauseDetected
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAttendingServiceClient speechPauseDetected]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechPauseDetected];
}

- (void)speechStartDetectedWithEventInfo:(id)info
{
  infoCopy = info;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAttendingServiceClient speechStartDetectedWithEventInfo:]";
    v9 = 2112;
    v10 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechStartDetectedWithEventInfo:infoCopy];
}

- (void)attendingStoppedWithReason:(int64_t)reason
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    if ((reason - 1) > 8)
    {
      v7 = @"Default";
    }

    else
    {
      v7 = *(&off_100250440 + reason - 1);
    }

    v8 = v7;
    v10 = 136315394;
    v11 = "[CSAttendingServiceClient attendingStoppedWithReason:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s [reason = %@]", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained attendingStoppedWithReason:reason];
}

- (void)stopAttendingWithReason:(int64_t)reason
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    remoteObjectProxy = self->_remoteObjectProxy;
    v9 = 136315394;
    v10 = "[CSAttendingServiceClient stopAttendingWithReason:]";
    v11 = 2112;
    v12 = remoteObjectProxy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  v7 = self->_remoteObjectProxy;
  if (v7)
  {
    [v7 stopAttendingWithReason:reason];
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSAttendingServiceClient stopAttendingWithReason:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Cannot stop attending since _remoteObjectProxy is nil", &v9, 0xCu);
    }
  }
}

- (void)startAttendingWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[CSAttendingServiceClient startAttendingWithOptions:completion:]";
    v22 = 2112;
    v23 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (!-[CSAttendingServiceClient _isAttendingAllowedForUseCase:](self, "_isAttendingAllowedForUseCase:", [optionsCopy attendingType]))
  {
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Attending is not allowed for usecase: %lu", [optionsCopy attendingType]);
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[CSAttendingServiceClient startAttendingWithOptions:completion:]";
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    if (completionCopy)
    {
      v14 = CSErrorDomain;
      v18 = NSLocalizedDescriptionKey;
      v19 = v12;
      v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v16 = [NSError errorWithDomain:v14 code:2108 userInfo:v15];

      completionCopy[2](completionCopy, 0, v16);
    }

    goto LABEL_15;
  }

  [(CSAttendingServiceClient *)self _setupRemoteServiceProxyObject];
  if (!self->_remoteObjectProxy)
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CSAttendingServiceClient startAttendingWithOptions:completion:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Cannot start attending since unable to setup remoteObjectProxy", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_16;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_16;
    }

    v12 = [NSError errorWithDomain:CSErrorDomain code:2101 userInfo:0];
    completionCopy[2](completionCopy, 0, v12);
LABEL_15:

    goto LABEL_16;
  }

  deviceId = [optionsCopy deviceId];

  if (deviceId)
  {
    v10 = +[CSOpportuneSpeakListenerDeviceManager sharedManager];
    deviceId2 = [optionsCopy deviceId];
    [v10 setDeviceId:deviceId2];
  }

  [self->_remoteObjectProxy startAttendingWithOptions:optionsCopy completion:completionCopy];
LABEL_16:
}

- (void)dealloc
{
  [(CSAttendingServiceClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSAttendingServiceClient;
  [(CSAttendingServiceClient *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAttendingServiceClient invalidate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  [(NSXPCConnection *)self->_attendingConnection invalidate];
  attendingConnection = self->_attendingConnection;
  self->_attendingConnection = 0;

  remoteObjectProxy = self->_remoteObjectProxy;
  self->_remoteObjectProxy = 0;
}

- (CSAttendingServiceClient)init
{
  v7.receiver = self;
  v7.super_class = CSAttendingServiceClient;
  v2 = [(CSAttendingServiceClient *)&v7 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    v3 = [CSUtils getSerialQueue:@"com.apple.corespeech.attending.xpc.connection" qualityOfService:33];
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v3;
  }

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSAttendingServiceClient init]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  return v2;
}

@end