@interface CSVoiceTriggerXPCListener
- (CSVoiceTriggerXPCListener)init;
- (void)CSClientXPCConnectionReceivedClientError:(id)error clientError:(id)clientError client:(id)client;
- (void)_handleListenerError:(id)error;
- (void)_handleListenerEvent:(id)event;
- (void)_handleNewRemoteConnection:(id)connection;
- (void)listen;
@end

@implementation CSVoiceTriggerXPCListener

- (void)CSClientXPCConnectionReceivedClientError:(id)error clientError:(id)clientError client:(id)client
{
  errorCopy = error;
  clientCopy = client;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057E44;
  block[3] = &unk_100253680;
  v13 = clientCopy;
  v14 = errorCopy;
  selfCopy = self;
  v10 = errorCopy;
  v11 = clientCopy;
  dispatch_async(queue, block);
}

- (void)_handleNewRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v5 = CSLogContextFacilityCoreSpeech;
  if (connectionCopy)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSVoiceTriggerXPCListener _handleNewRemoteConnection:]";
      v9 = 2050;
      v10 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Getting new client connection : %{public}p", &v7, 0x16u);
    }

    if ([CSUtils machXPCConnection:connectionCopy hasEntitlement:@"voicetrigger.voicetriggerservice"])
    {
      v6 = [[CSVoiceTriggerXPCConnection alloc] initWithConnection:connectionCopy];
      [(CSVoiceTriggerXPCConnection *)v6 activateConnection];
      [(CSVoiceTriggerXPCConnection *)v6 setDelegate:self];
      if (v6)
      {
        [(NSMutableArray *)self->_connections addObject:v6];
      }
    }
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[CSVoiceTriggerXPCListener _handleNewRemoteConnection:]";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Connection request is nil", &v7, 0xCu);
  }
}

- (void)_handleListenerError:(id)error
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = 136315394;
    v7 = "[CSVoiceTriggerXPCListener _handleListenerError:]";
    v8 = 2082;
    string = xpc_dictionary_get_string(error, _xpc_error_key_description);
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Error = %{public}s", &v6, 0x16u);
  }
}

- (void)_handleListenerEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSVoiceTriggerXPCListener _handleListenerEvent:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Received new remote control connection request", &v7, 0xCu);
  }

  if (eventCopy)
  {
    if (xpc_get_type(eventCopy) == &_xpc_type_error)
    {
      [(CSVoiceTriggerXPCListener *)self _handleListenerError:eventCopy];
    }

    else
    {
      [(CSVoiceTriggerXPCListener *)self _handleNewRemoteConnection:eventCopy];
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSVoiceTriggerXPCListener _handleListenerEvent:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Connection request is nil", &v7, 0xCu);
    }
  }
}

- (void)listen
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSVoiceTriggerXPCListener listen]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerXPCListener start listening", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  listener = self->_listener;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000038FC;
  handler[3] = &unk_100252EC8;
  objc_copyWeak(&v6, buf);
  xpc_connection_set_event_handler(listener, handler);
  xpc_connection_activate(self->_listener);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (CSVoiceTriggerXPCListener)init
{
  v12.receiver = self;
  v12.super_class = CSVoiceTriggerXPCListener;
  v2 = [(CSVoiceTriggerXPCListener *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSVoiceTriggerXPCListener", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = *(v2 + 1);
    v6 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v5, v6);

    mach_service = xpc_connection_create_mach_service("com.apple.corespeech.voicetriggerservice", *(v2 + 1), 1uLL);
    v8 = *(v2 + 2);
    *(v2 + 2) = mach_service;

    v9 = +[NSMutableArray array];
    v10 = *(v2 + 3);
    *(v2 + 3) = v9;
  }

  return v2;
}

@end