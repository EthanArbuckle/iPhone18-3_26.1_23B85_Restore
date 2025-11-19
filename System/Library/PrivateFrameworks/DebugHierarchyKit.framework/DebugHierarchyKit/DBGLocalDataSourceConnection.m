@interface DBGLocalDataSourceConnection
- (DBGDataSourceConnectionDelegate)delegate;
- (DBGLocalDataSourceConnection)initWithPid:(int)a3 agentConnection:(id)a4;
- (void)closeConnection;
- (void)dealloc;
- (void)performRequest:(id)a3;
@end

@implementation DBGLocalDataSourceConnection

- (DBGLocalDataSourceConnection)initWithPid:(int)a3 agentConnection:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = DBGLocalDataSourceConnection;
  v7 = [(DBGLocalDataSourceConnection *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_pid = a3;
    v9 = dispatch_queue_create("LocalConnectionQueue", 0);
    connectionQueue = v8->_connectionQueue;
    v8->_connectionQueue = v9;

    if (v6)
    {
      mach_service = v6;
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.dt.ViewHierarchyAgent.xpc", v8->_connectionQueue, 0);
    }

    connection = v8->_connection;
    v8->_connection = mach_service;

    xpc_connection_set_event_handler(v8->_connection, &__block_literal_global_1);
    xpc_connection_activate(v8->_connection);
  }

  return v8;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = DBGLocalDataSourceConnection;
  [(DBGLocalDataSourceConnection *)&v5 dealloc];
}

- (void)performRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 temporaryDirectory];
  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 URLByAppendingPathComponent:v8];

  v10 = +[NSFileManager defaultManager];
  v11 = [v9 path];
  [v10 createFileAtPath:v11 contents:0 attributes:0];

  v12 = [NSFileHandle fileHandleForWritingToURL:v9 error:0];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "action", "performRequest");
  xpc_dictionary_set_uint64(empty, "pid", self->_pid);
  v14 = [v4 base64Encoded];
  xpc_dictionary_set_string(empty, "request", [v14 cStringUsingEncoding:4]);

  xpc_dictionary_set_fd(empty, "fd", [v12 fileDescriptor]);
  connectionQueue = self->_connectionQueue;
  connection = self->_connection;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __47__DBGLocalDataSourceConnection_performRequest___block_invoke;
  v20[3] = &unk_244D0;
  v21 = v9;
  v22 = self;
  v23 = v4;
  v24 = v12;
  v17 = v12;
  v18 = v4;
  v19 = v9;
  xpc_connection_send_message_with_reply(connection, empty, connectionQueue, v20);
}

void __47__DBGLocalDataSourceConnection_performRequest___block_invoke(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v5 = [NSFileHandle fileHandleForReadingFromURL:*(a1 + 32) error:0];
    v6 = [v5 readDataToEndOfFile];
    v7 = [*(a1 + 40) captureQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __47__DBGLocalDataSourceConnection_performRequest___block_invoke_2;
    block[3] = &unk_244A8;
    v11 = *(a1 + 48);
    v12 = v6;
    v13 = *(a1 + 40);
    v8 = v6;
    dispatch_async(v7, block);

    [v5 closeFile];
    [*(a1 + 56) closeFile];
    v9 = +[NSFileManager defaultManager];
    [v9 removeItemAtURL:*(a1 + 32) error:0];
  }

  else
  {
    v3 = *(*(a1 + 40) + 32);
    if (!v3)
    {
      return;
    }

    xpc_connection_cancel(v3);
    v4 = *(a1 + 40);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }
}

void __47__DBGLocalDataSourceConnection_performRequest___block_invoke_2(id *a1)
{
  [a1[4] setRawResponseData:a1[5]];
  v2 = [a1[6] delegate];
  [v2 didReceiveData:a1[5] forRequest:a1[4]];

  if ([a1[5] length])
  {
    v3 = 3;
  }

  else
  {
    v3 = -2;
  }

  [a1[4] setStatus:v3];
  v4 = [a1[4] completion];

  if (v4)
  {
    v5 = [a1[4] completion];
    (v5)[2](v5, a1[4]);
  }
}

- (void)closeConnection
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "action", "finish");
  xpc_dictionary_set_uint64(empty, "pid", self->_pid);
  connectionQueue = self->_connectionQueue;
  connection = self->_connection;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __47__DBGLocalDataSourceConnection_closeConnection__block_invoke;
  handler[3] = &unk_244F8;
  handler[4] = self;
  xpc_connection_send_message_with_reply(connection, empty, connectionQueue, handler);
}

void __47__DBGLocalDataSourceConnection_closeConnection__block_invoke(uint64_t a1)
{
  xpc_connection_cancel(*(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (DBGDataSourceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end