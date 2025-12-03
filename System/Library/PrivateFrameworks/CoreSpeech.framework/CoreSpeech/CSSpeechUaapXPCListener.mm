@interface CSSpeechUaapXPCListener
- (CSSpeechUaapXPCListener)init;
- (void)_handleError:(id)error;
- (void)_handleNewConnection:(id)connection;
- (void)listen;
@end

@implementation CSSpeechUaapXPCListener

- (void)listen
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSSpeechUaapXPCListener listen]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CSSpeechUaapXPCListener starting listening", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connection = self->_connection;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10007421C;
  handler[3] = &unk_100252EC8;
  objc_copyWeak(&v6, buf);
  xpc_connection_set_event_handler(connection, handler);
  xpc_connection_activate(self->_connection);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_handleNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSSpeechUaapXPCListener _handleNewConnection:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s CSSpeechUaaPXPCListener recieved a new client connection", buf, 0xCu);
  }

  if ([CSUtils machXPCConnection:connectionCopy hasEntitlement:@"corespeech.uaap.xpc"])
  {
    v6 = [[CSSpeechUaapXPCConnection alloc] initWithConnection:connectionCopy];
    if (v6)
    {
      objc_initWeak(buf, self);
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_100074504;
      v12 = &unk_1002538D8;
      objc_copyWeak(&v14, buf);
      v7 = v6;
      v13 = v7;
      v8 = objc_retainBlock(&v9);
      [(CSSpeechUaapXPCConnection *)v7 setInterruptionHandler:v8, v9, v10, v11, v12];
      [(CSSpeechUaapXPCConnection *)v7 setInvalidationHandler:v8];
      [(CSSpeechUaapXPCConnection *)v7 activate];
      [(NSMutableArray *)self->_clients addObject:v7];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_handleError:(id)error
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = 136315394;
    v7 = "[CSSpeechUaapXPCListener _handleError:]";
    v8 = 2080;
    string = xpc_dictionary_get_string(error, _xpc_error_key_description);
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s CSSpeechUaaPXPCListener recieved error event: %s", &v6, 0x16u);
  }
}

- (CSSpeechUaapXPCListener)init
{
  v10.receiver = self;
  v10.super_class = CSSpeechUaapXPCListener;
  v2 = [(CSSpeechUaapXPCListener *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSSpeechUaaPXPCListener", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    mach_service = xpc_connection_create_mach_service("com.apple.corespeech.corespeechd.uaapservice", *(v2 + 1), 1uLL);
    v6 = *(v2 + 2);
    *(v2 + 2) = mach_service;

    v7 = +[NSMutableArray array];
    v8 = *(v2 + 3);
    *(v2 + 3) = v7;
  }

  return v2;
}

@end