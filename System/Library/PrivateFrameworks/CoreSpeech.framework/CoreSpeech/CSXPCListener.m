@interface CSXPCListener
- (CSXPCListener)init;
- (void)CSClientXPCConnectionReceivedClientError:(id)a3 clientError:(id)a4 client:(id)a5;
- (void)_handleListenerError:(id)a3;
- (void)_handleListenerEvent:(id)a3;
- (void)_handleNewRemoteConnection:(id)a3;
- (void)listen;
@end

@implementation CSXPCListener

- (void)CSClientXPCConnectionReceivedClientError:(id)a3 clientError:(id)a4 client:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD920;
  block[3] = &unk_100253680;
  v13 = v8;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, block);
}

- (void)_handleNewRemoteConnection:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (v4)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSXPCListener _handleNewRemoteConnection:]";
      v9 = 2050;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Getting new client connection : %{public}p", &v7, 0x16u);
    }

    if ([CSUtils machXPCConnection:v4 hasEntitlement:@"corespeech.corespeechd.xpc"])
    {
      v6 = [[CSClientXPCConnection alloc] initWithConnection:v4];
      [(CSClientXPCConnection *)v6 activateConnection];
      [(CSClientXPCConnection *)v6 setDelegate:self];
      if (v6)
      {
        [(NSMutableArray *)self->_connections addObject:v6];
      }
    }
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[CSXPCListener _handleNewRemoteConnection:]";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Connection request is nil", &v7, 0xCu);
  }
}

- (void)_handleListenerError:(id)a3
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = 136315394;
    v7 = "[CSXPCListener _handleListenerError:]";
    v8 = 2082;
    string = xpc_dictionary_get_string(a3, _xpc_error_key_description);
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Error = %{public}s", &v6, 0x16u);
  }
}

- (void)_handleListenerEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSXPCListener _handleListenerEvent:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Received new remote control connection request", &v7, 0xCu);
  }

  if (v4)
  {
    if (xpc_get_type(v4) == &_xpc_type_error)
    {
      [(CSXPCListener *)self _handleListenerError:v4];
    }

    else
    {
      [(CSXPCListener *)self _handleNewRemoteConnection:v4];
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSXPCListener _handleListenerEvent:]";
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
    v8 = "[CSXPCListener listen]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CSXPCListener start listening", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  listener = self->_listener;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000DDF08;
  handler[3] = &unk_100252EC8;
  objc_copyWeak(&v6, buf);
  xpc_connection_set_event_handler(listener, handler);
  xpc_connection_activate(self->_listener);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (CSXPCListener)init
{
  v12.receiver = self;
  v12.super_class = CSXPCListener;
  v2 = [(CSXPCListener *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSXPCListener", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = *(v2 + 1);
    v6 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v5, v6);

    mach_service = xpc_connection_create_mach_service("com.apple.corespeech.corespeechd.xpc", *(v2 + 1), 1uLL);
    v8 = *(v2 + 2);
    *(v2 + 2) = mach_service;

    v9 = +[NSMutableArray array];
    v10 = *(v2 + 3);
    *(v2 + 3) = v9;
  }

  return v2;
}

@end