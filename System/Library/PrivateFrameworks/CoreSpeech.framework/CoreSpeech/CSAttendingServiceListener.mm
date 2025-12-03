@interface CSAttendingServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CSAttendingServiceListener)initWithAudioProviderSelector:(id)selector;
- (CSAttendingStatesProvidingProxy)attendingStatesProvidingProxy;
- (CSAttendingUsecaseManager)attendingUsecaseManager;
- (void)dealloc;
- (void)resumeConnection;
@end

@implementation CSAttendingServiceListener

- (CSAttendingStatesProvidingProxy)attendingStatesProvidingProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_attendingStatesProvidingProxy);

  return WeakRetained;
}

- (CSAttendingUsecaseManager)attendingUsecaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_attendingUsecaseManager);

  return WeakRetained;
}

- (void)resumeConnection
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSAttendingServiceListener resumeConnection]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100114B50;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CSAttendingServiceListener listener:shouldAcceptNewConnection:]";
    v32 = 2112;
    v33 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Got new connection on attending service: %@", buf, 0x16u);
  }

  if (self->_listener != listenerCopy)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[CSAttendingServiceListener listener:shouldAcceptNewConnection:]";
      v32 = 2114;
      v33 = listenerCopy;
      v10 = "%s Invalid listener - %{public}@";
      v11 = v9;
      v12 = 22;
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (([CSUtils xpcConnection:connectionCopy hasEntitlement:@"corespeech.corespeechd.attending.service"]& 1) == 0)
  {
    [(NSXPCListener *)connectionCopy invalidate];
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[CSAttendingServiceListener listener:shouldAcceptNewConnection:]";
      v10 = "%s Rejecting connection due to entitlement";
      v11 = v22;
      v12 = 12;
      goto LABEL_10;
    }

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  [(NSXPCListener *)connectionCopy setExportedInterface:self->_exportedInterface];
  [(NSXPCListener *)connectionCopy setRemoteObjectInterface:self->_remoteInterface];
  v13 = [CSAttendingUsecaseProxy alloc];
  audioProviderSelector = self->_audioProviderSelector;
  WeakRetained = objc_loadWeakRetained(&self->_attendingUsecaseManager);
  v16 = objc_loadWeakRetained(&self->_attendingStatesProvidingProxy);
  v17 = [(CSAttendingUsecaseProxy *)v13 initWithConnection:connectionCopy audioProviderSelector:audioProviderSelector usecaseManager:WeakRetained attendingStatesProvidingProxy:v16];

  remoteObjectProxy = [(NSXPCListener *)connectionCopy remoteObjectProxy];
  [(CSAttendingUsecaseProxy *)v17 setupListenerDelegate:remoteObjectProxy];

  [(NSXPCListener *)connectionCopy setExportedObject:v17];
  objc_initWeak(buf, v17);
  objc_initWeak(&location, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100114F28;
  v26[3] = &unk_100252B28;
  objc_copyWeak(&v27, buf);
  objc_copyWeak(&v28, &location);
  [(CSAttendingUsecaseProxy *)v17 setupConnectionErrorHandler:v26];
  queue = [(CSAttendingServiceListener *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100114FEC;
  block[3] = &unk_100253C48;
  block[4] = self;
  v20 = v17;
  v25 = v20;
  dispatch_async(queue, block);

  [(NSXPCListener *)connectionCopy resume];
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v21 = 1;
LABEL_12:

  return v21;
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[CSAttendingServiceListener dealloc]";
    v7 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Attending service dealloced - %{public}@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = CSAttendingServiceListener;
  [(CSAttendingServiceListener *)&v4 dealloc];
}

- (CSAttendingServiceListener)initWithAudioProviderSelector:(id)selector
{
  selectorCopy = selector;
  v19.receiver = self;
  v19.super_class = CSAttendingServiceListener;
  v6 = [(CSAttendingServiceListener *)&v19 init];
  if (v6)
  {
    v7 = [CSUtils getSerialQueue:@"CSAttendingServiceListener Queue" qualityOfService:33];
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_audioProviderSelector, selector);
    v9 = +[NSMutableArray array];
    proxies = v6->_proxies;
    v6->_proxies = v9;

    v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.corespeech.corespeechd.attending.service"];
    listener = v6->_listener;
    v6->_listener = v11;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSAttendingService];
    exportedInterface = v6->_exportedInterface;
    v6->_exportedInterface = v13;

    v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSAttendingServiceDelegate];
    remoteInterface = v6->_remoteInterface;
    v6->_remoteInterface = v15;
  }

  v17 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[CSAttendingServiceListener initWithAudioProviderSelector:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Started listening for attending", buf, 0xCu);
  }

  return v6;
}

@end