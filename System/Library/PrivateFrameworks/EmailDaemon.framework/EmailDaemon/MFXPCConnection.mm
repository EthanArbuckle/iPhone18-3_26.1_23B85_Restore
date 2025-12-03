@interface MFXPCConnection
- (MFXPCConnection)initWithConnection:(id)connection;
- (id)errorHandler;
- (void)dealloc;
- (void)handleError:(id)error;
- (void)setErrorHandler:(id)handler;
- (void)start;
- (void)stop;
@end

@implementation MFXPCConnection

- (void)start
{
  v3 = +[MailXPCServices log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    pid = xpc_connection_get_pid(self->_connection);
    connection = self->_connection;
    v6[0] = 67109376;
    v6[1] = pid;
    v7 = 2048;
    v8 = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "PID %d : starting peer connection <connection: %p>", v6, 0x12u);
  }

  xpc_connection_resume(self->_connection);
}

- (id)errorHandler
{
  [(NSLock *)self->_errorHandlerLock lock];
  v3 = objc_retainBlock(self->_errorHandler);
  [(NSLock *)self->_errorHandlerLock unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)stop
{
  v3 = +[MailXPCServices log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    pid = xpc_connection_get_pid(self->_connection);
    connection = self->_connection;
    v8[0] = 67109376;
    v8[1] = pid;
    v9 = 2048;
    v10 = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "PID %d : tearing down peer connection <connection: %p>", v8, 0x12u);
  }

  atomic_fetch_add(&self->_cancelFlag, 1u);
  [(MFXPCConnection *)self setServiceManager:0];
  [(MFXPCConnection *)self setErrorHandler:0];
  v6 = self->_connection;
  xpc_connection_set_event_handler(v6, &stru_1001576D8);
  xpc_connection_cancel(v6);

  v7 = self->_connection;
  self->_connection = 0;
}

- (void)dealloc
{
  if (self->_connection)
  {
    [(MFXPCConnection *)self stop];
  }

  v3.receiver = self;
  v3.super_class = MFXPCConnection;
  [(MFXPCConnection *)&v3 dealloc];
}

- (MFXPCConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v23.receiver = self;
  v23.super_class = MFXPCConnection;
  v7 = [(MFXPCConnection *)&v23 init];
  if (v7)
  {
    v8 = [[MFLock alloc] initWithName:@"XPC ErrorHandler" andDelegate:0];
    v9 = *(v7 + 5);
    *(v7 + 5) = v8;

    v10 = [NSString stringWithFormat:@"com.apple.mobilemail.services.connection.%p", v7];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    v12 = *(v7 + 2);
    *(v7 + 2) = v11;

    v13 = [NSString stringWithFormat:@"com.apple.mobilemail.services.connection.message.%p", v7];

    v14 = v13;
    v15 = dispatch_queue_create([v13 UTF8String], 0);
    v16 = *(v7 + 3);
    *(v7 + 3) = v15;

    xpc_connection_set_target_queue(connectionCopy, *(v7 + 2));
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100035D4C;
    handler[3] = &unk_1001576B8;
    v17 = v7;
    v21 = v17;
    v22 = a2;
    xpc_connection_set_event_handler(connectionCopy, handler);
    objc_storeStrong(v17 + 1, connection);
    v18 = v17;
  }

  else
  {
    xpc_connection_cancel(connectionCopy);
  }

  return v7;
}

- (void)setErrorHandler:(id)handler
{
  handlerCopy = handler;
  [(NSLock *)self->_errorHandlerLock lock];
  v4 = objc_retainBlock(handlerCopy);
  errorHandler = self->_errorHandler;
  self->_errorHandler = v4;

  [(NSLock *)self->_errorHandlerLock unlock];
}

- (void)handleError:(id)error
{
  errorCopy = error;
  errorHandler = [(MFXPCConnection *)self errorHandler];
  v5 = errorHandler;
  if (errorHandler)
  {
    (*(errorHandler + 16))(errorHandler, errorCopy);
  }
}

@end