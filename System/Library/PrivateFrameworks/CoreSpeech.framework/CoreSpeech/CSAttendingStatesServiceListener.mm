@interface CSAttendingStatesServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CSAttendingStatesProvidingProxy)attendingStatesProvidingProxy;
- (CSAttendingStatesServiceListener)init;
- (void)_cleanupConnection:(id)connection shouldInvalidate:(BOOL)invalidate;
- (void)listen;
- (void)registerAttendingStatesProvidingProxy:(id)proxy;
@end

@implementation CSAttendingStatesServiceListener

- (CSAttendingStatesProvidingProxy)attendingStatesProvidingProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_attendingStatesProvidingProxy);

  return WeakRetained;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CSAttendingStatesServiceListener listener:shouldAcceptNewConnection:]";
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
      v31 = "[CSAttendingStatesServiceListener listener:shouldAcceptNewConnection:]";
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
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[CSAttendingStatesServiceListener listener:shouldAcceptNewConnection:]";
      v10 = "%s Rejecting connection due to entitlement";
      v11 = v18;
      v12 = 12;
      goto LABEL_10;
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v13 = LBAttendingStatesServiceGetXPCInterface();
  [(NSXPCListener *)connectionCopy setExportedInterface:v13];

  v14 = LBAttendingStatesServiceDelegateGetXPCInterface();
  [(NSXPCListener *)connectionCopy setRemoteObjectInterface:v14];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011E498;
  block[3] = &unk_100253C48;
  v16 = connectionCopy;
  v28 = v16;
  selfCopy = self;
  dispatch_sync(queue, block);
  objc_initWeak(buf, self);
  objc_initWeak(&location, v16);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10011E578;
  v23[3] = &unk_100252B28;
  objc_copyWeak(&v24, buf);
  objc_copyWeak(&v25, &location);
  [(NSXPCListener *)v16 setInterruptionHandler:v23];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10011E72C;
  v20[3] = &unk_100252B28;
  objc_copyWeak(&v21, buf);
  objc_copyWeak(&v22, &location);
  [(NSXPCListener *)v16 setInvalidationHandler:v20];
  [(NSXPCListener *)v16 resume];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v17 = 1;
LABEL_12:

  return v17;
}

- (void)_cleanupConnection:(id)connection shouldInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  connectionCopy = connection;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CSAttendingStatesServiceListener _cleanupConnection:shouldInvalidate:]";
    v13 = 2112;
    v14 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Cleaning up connection: %@", &v11, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (connectionCopy)
  {
    activeConnection = [(CSAttendingStatesServiceListener *)self activeConnection];

    if (activeConnection == connectionCopy)
    {
      [(CSAttendingStatesServiceListener *)self setActiveConnection:0];
      WeakRetained = objc_loadWeakRetained(&self->_attendingStatesProvidingProxy);
      [WeakRetained setRemoteObjectProxy:0];

      v10 = objc_loadWeakRetained(&self->_attendingStatesProvidingProxy);
      [v10 attendingStatesXPCDisconnected];

      if (!invalidateCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (invalidateCopy)
    {
LABEL_6:
      [connectionCopy setInvalidationHandler:0];
      [connectionCopy setInterruptionHandler:0];
      [connectionCopy invalidate];
    }
  }

LABEL_7:
}

- (void)registerAttendingStatesProvidingProxy:(id)proxy
{
  proxyCopy = proxy;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011EAF4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = proxyCopy;
  v6 = proxyCopy;
  dispatch_async(queue, v7);
}

- (void)listen
{
  v3 = [NSXPCListener alloc];
  v4 = [v3 initWithMachServiceName:LBAttendingStatesServiceName];
  listener = self->_listener;
  self->_listener = v4;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSAttendingStatesServiceListener listen]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSAttendingStatesServiceListener start listening", &v7, 0xCu);
  }
}

- (CSAttendingStatesServiceListener)init
{
  v6.receiver = self;
  v6.super_class = CSAttendingStatesServiceListener;
  v2 = [(CSAttendingStatesServiceListener *)&v6 init];
  if (v2)
  {
    v3 = [CSUtils getSerialQueue:@"CSAttendingStatesServiceListener Queue" qualityOfService:33];
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end