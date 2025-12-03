@interface DIBaseXPCHandler
- (BOOL)completeCommandWithError:(id *)error;
- (BOOL)connectWithError:(id *)error;
- (BOOL)dupStderrWithError:(id *)error;
- (DIBaseXPCHandler)init;
- (void)closeConnection;
- (void)createConnection;
- (void)dealloc;
- (void)signalCommandCompletedWithXpcError:(id)error;
@end

@implementation DIBaseXPCHandler

- (DIBaseXPCHandler)init
{
  v11.receiver = self;
  v11.super_class = DIBaseXPCHandler;
  v2 = [(DIBaseXPCHandler *)&v11 init];
  if (v2 && (v3 = dispatch_semaphore_create(0), [(DIBaseXPCHandler *)v2 setSemaphore:v3], v3, [(DIBaseXPCHandler *)v2 semaphore], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = *__error();
    if (sub_1000E044C())
    {
      v7 = sub_1000E03D8();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v13 = 24;
      v14 = 2080;
      v15 = "[DIBaseXPCHandler init]";
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(__stderrp, "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v9 = sub_1000E03D8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v13 = 24;
        v14 = 2080;
        v15 = "[DIBaseXPCHandler init]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%.*s: Failed creating semaphore", buf, 0x12u);
      }
    }

    v5 = 0;
    *__error() = v6;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = DIBaseXPCHandler;
  [(DIBaseXPCHandler *)&v4 dealloc];
}

- (BOOL)connectWithError:(id *)error
{
  objc_initWeak(&location, self);
  [(DIBaseXPCHandler *)self createConnection];
  connection = [(DIBaseXPCHandler *)self connection];

  if (connection)
  {
    connection2 = [(DIBaseXPCHandler *)self connection];
    [connection2 resume];

    connection3 = [(DIBaseXPCHandler *)self connection];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10004F4B8;
    v14 = &unk_100208458;
    objc_copyWeak(&v15, &location);
    v8 = [connection3 remoteObjectProxyWithErrorHandler:&v11];
    [(DIBaseXPCHandler *)self setRemoteProxy:v8, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    v9 = 1;
  }

  else
  {
    v9 = [DIError failWithEnumValue:151 verboseInfo:@"Failed to create XPC connection object" error:error];
  }

  objc_destroyWeak(&location);
  return v9;
}

- (void)signalCommandCompletedWithXpcError:(id)error
{
  [(DIBaseXPCHandler *)self setXpcError:error];
  semaphore = [(DIBaseXPCHandler *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

- (BOOL)completeCommandWithError:(id *)error
{
  semaphore = [(DIBaseXPCHandler *)self semaphore];
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

  xpcError = [(DIBaseXPCHandler *)self xpcError];
  [(DIBaseXPCHandler *)self setXpcError:0];
  connection = [(DIBaseXPCHandler *)self connection];

  if (!connection)
  {
    v11 = [DIError failWithEnumValue:151 verboseInfo:@"XPC connection failed" error:error];
LABEL_12:
    v12 = v11;
    goto LABEL_13;
  }

  if (xpcError)
  {
    v8 = *__error();
    if (sub_1000E044C())
    {
      v9 = sub_1000E03D8();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v16 = 45;
      v17 = 2080;
      v18 = "[DIBaseXPCHandler completeCommandWithError:]";
      v19 = 2114;
      v20 = xpcError;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        fprintf(__stderrp, "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v13 = sub_1000E03D8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v16 = 45;
        v17 = 2080;
        v18 = "[DIBaseXPCHandler completeCommandWithError:]";
        v19 = 2114;
        v20 = xpcError;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Got error from last XPC command: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v8;
    v11 = [DIError failWithInError:xpcError outError:error];
    goto LABEL_12;
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (void)closeConnection
{
  connection = [(DIBaseXPCHandler *)self connection];
  [connection invalidate];

  [(DIBaseXPCHandler *)self setConnection:0];
}

- (BOOL)dupStderrWithError:(id *)error
{
  objc_initWeak(&location, self);
  v5 = [NSFileHandle alloc];
  v6 = [v5 initWithFileDescriptor:fileno(__stderrp)];
  remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10004F940;
  v12 = &unk_100208458;
  objc_copyWeak(&v13, &location);
  [remoteProxy dupWithStderrHandle:v6 reply:&v9];

  LOBYTE(error) = [(DIBaseXPCHandler *)self completeCommandWithError:error, v9, v10, v11, v12];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return error;
}

- (void)createConnection
{
  v3 = *__error();
  if (sub_1000E044C())
  {
    v4 = sub_1000E03D8();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    [(DIBaseXPCHandler *)self serviceName];
    *buf = 68158210;
    v14 = 36;
    v15 = 2080;
    v16 = "[DIBaseXPCHandler createConnection]";
    v18 = v17 = 2114;
    v5 = _os_log_send_and_compose_impl();

    if (v5)
    {
      fprintf(__stderrp, "%s\n", v5);
      free(v5);
    }
  }

  else
  {
    v6 = sub_1000E03D8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(DIBaseXPCHandler *)self serviceName];
      *buf = 68158210;
      v14 = 36;
      v15 = 2080;
      v16 = "[DIBaseXPCHandler createConnection]";
      v17 = 2114;
      v18 = serviceName;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection with %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v3;
  v8 = [NSXPCConnection alloc];
  serviceName2 = [(DIBaseXPCHandler *)self serviceName];
  v10 = [v8 initWithServiceName:serviceName2];
  [(DIBaseXPCHandler *)self setConnection:v10];

  remoteObjectInterface = [(DIBaseXPCHandler *)self remoteObjectInterface];
  connection = [(DIBaseXPCHandler *)self connection];
  [connection setRemoteObjectInterface:remoteObjectInterface];
}

@end