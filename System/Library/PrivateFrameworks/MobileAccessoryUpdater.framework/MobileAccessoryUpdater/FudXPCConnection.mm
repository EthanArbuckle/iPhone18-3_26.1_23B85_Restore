@interface FudXPCConnection
- (BOOL)createSession;
- (BOOL)registerForBSDNotifications;
- (FudXPCConnection)initWithClientName:(id)name replyHandlerQueue:(id)queue messageHandler:(id)handler;
- (void)createConnection;
- (void)createSession;
- (void)dealloc;
- (void)sendMessageToFud:(id)fud;
- (void)sendMessageToFud:(id)fud reply:(id)reply;
- (void)stop;
@end

@implementation FudXPCConnection

- (FudXPCConnection)initWithClientName:(id)name replyHandlerQueue:(id)queue messageHandler:(id)handler
{
  v20.receiver = self;
  v20.super_class = FudXPCConnection;
  v8 = [(FudXPCConnection *)&v20 init];
  v15 = v8;
  v8->connection = 0;
  if (!name)
  {
    v19 = @"Can't create xpc connection without client name";
    goto LABEL_8;
  }

  if (!handler)
  {
    v19 = @"Can't create xpc connection without reply handler";
    goto LABEL_8;
  }

  if (!queue)
  {
    v19 = @"Can't create xpc connection without reply queue";
    goto LABEL_8;
  }

  v8->didStop = 0;
  v8->clientIdentifier = name;
  v16 = _Block_copy(handler);
  v15->replyQueue = queue;
  v15->messageHandler = v16;
  dispatch_retain(queue);
  v17 = dispatch_queue_create("com.apple.MobileAccessoryUpdater.FudXPCConnection.connection", 0);
  v15->connectionQueue = v17;
  if (!v17)
  {
    v19 = @"Failed to create queue for xpc connection";
    goto LABEL_8;
  }

  v15->sessionQueue = dispatch_queue_create("com.apple.MobileAccessoryUpdater.FudXPCConnection.session", 0);
  if (![(FudXPCConnection *)v15 registerForBSDNotifications])
  {
    v19 = @"Failed to register for BSD notifications";
LABEL_8:
    [(FudXPCConnection *)v19 initWithClientName:v15 replyHandlerQueue:v9 messageHandler:v10, v11, v12, v13, v14];
    return 0;
  }

  return v15;
}

- (void)dealloc
{
  sessionQueue = self->sessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__FudXPCConnection_dealloc__block_invoke;
  block[3] = &unk_2798E3658;
  block[4] = self;
  dispatch_sync(sessionQueue, block);
  connection = self->connection;
  if (connection)
  {
    xpc_release(connection);
  }

  connectionQueue = self->connectionQueue;
  if (connectionQueue)
  {
    dispatch_release(connectionQueue);
  }

  v6 = self->sessionQueue;
  if (v6)
  {
    dispatch_release(v6);
  }

  messageHandler = self->messageHandler;
  if (messageHandler)
  {
    _Block_release(messageHandler);
  }

  replyQueue = self->replyQueue;
  if (replyQueue)
  {
    dispatch_release(replyQueue);
  }

  v9.receiver = self;
  v9.super_class = FudXPCConnection;
  [(FudXPCConnection *)&v9 dealloc];
}

void __27__FudXPCConnection_dealloc__block_invoke(uint64_t a1)
{
  notify_cancel(*(*(a1 + 32) + 56));
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {

    xpc_connection_cancel(v2);
  }
}

- (BOOL)registerForBSDNotifications
{
  FudLog(7, @"Registering for BSD notifications with identifier: %@", v2, v3, v4, v5, v6, v7, self->clientIdentifier);
  v9 = [(NSString *)self->clientIdentifier cStringUsingEncoding:4];
  if (!v9)
  {
    [(FudXPCConnection *)0 registerForBSDNotifications:v10];
    return 0;
  }

  connectionQueue = self->connectionQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __47__FudXPCConnection_registerForBSDNotifications__block_invoke;
  handler[3] = &unk_2798E36A0;
  handler[4] = self;
  if (notify_register_dispatch(v9, &self->notifyToken, connectionQueue, handler))
  {
    FudLog(3, @"Failed to register for BSD notifications", v18, v19, v20, v21, v22, v23, v25);
    return 0;
  }

  return 1;
}

uint64_t __47__FudXPCConnection_registerForBSDNotifications__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  FudLog(5, @"Fuds requesting a reconnection, initiating session...", a3, a4, a5, a6, a7, a8, v11);
  v9 = *(a1 + 32);

  return [v9 createSession];
}

- (void)createConnection
{
  if (self->didStop)
  {

    FudLog(3, @"Can't create connection after it was explicitly stopped", v2, v3, v4, v5, v6, v7, v14);
  }

  else
  {
    handler[7] = v8;
    handler[8] = v9;
    FudLog(7, @"Connecting to fud...", v2, v3, v4, v5, v6, v7, v12);
    mach_service = xpc_connection_create_mach_service("com.apple.MobileAccessoryUpdater", self->connectionQueue, 0);
    self->connection = mach_service;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __36__FudXPCConnection_createConnection__block_invoke;
    handler[3] = &unk_2798E36F0;
    handler[4] = self;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(self->connection);
  }
}

void __36__FudXPCConnection_createConnection__block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x259CA9E60](a2) == MEMORY[0x277D86480])
  {
    FudLog(3, @"Lost connection to fud...", v4, v5, v6, v7, v8, v9, v13[0]);
    v12 = *(*(a1 + 32) + 16);
    if (v12)
    {
      xpc_release(v12);
      *(*(a1 + 32) + 16) = 0;
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __36__FudXPCConnection_createConnection__block_invoke_2;
    v13[3] = &unk_2798E36C8;
    v13[4] = v10;
    v13[5] = a2;
    dispatch_async(v11, v13);
  }
}

- (BOOL)createSession
{
  if (!self->connection)
  {
    createConnection = [(FudXPCConnection *)self createConnection];
    if (!self->connection)
    {
      [(FudXPCConnection *)createConnection createSession:v4];
LABEL_20:
      LOBYTE(v18) = 0;
      return v18;
    }
  }

  v18 = [(NSString *)self->clientIdentifier cStringUsingEncoding:4];
  if (!v18)
  {
    [(FudXPCConnection *)0 createSession:v11];
    return v18;
  }

  v19 = xpc_dictionary_create(0, 0, 0);
  if (!v19)
  {
    [(FudXPCConnection *)0 createSession:v20];
    goto LABEL_20;
  }

  v27 = v19;
  xpc_dictionary_set_int64(v19, "Command", 107);
  xpc_dictionary_set_string(v27, "ClientIdentifier", v18);
  v28 = xpc_connection_send_message_with_reply_sync(self->connection, v27);
  if (!v28)
  {
    [(FudXPCConnection *)v27 createSession:v29];
    goto LABEL_20;
  }

  v36 = v28;
  int64 = xpc_dictionary_get_int64(v28, "Response");
  if (int64 != 107)
  {
    [(FudXPCConnection *)int64 createSession:v38];
LABEL_23:
    LOBYTE(v18) = 0;
    goto LABEL_13;
  }

  v45 = xpc_dictionary_get_BOOL(v36, "Status");
  if (!v45)
  {
    [(FudXPCConnection *)v45 createSession:v46];
    goto LABEL_23;
  }

  v18 = objectFromXpcDictionary(v36, "Error");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    FudLog(3, @"Invalid error class %@", v61, v62, v63, v64, v65, v66, v60);
    goto LABEL_12;
  }

  if (!v18)
  {
LABEL_12:
    LOBYTE(v18) = 1;
LABEL_13:
    xpc_release(v27);
    goto LABEL_14;
  }

  FudLog(3, @"Failed to create session: %@", v53, v54, v55, v56, v57, v58, v18);
  xpc_release(v27);

  LOBYTE(v18) = 1;
LABEL_14:
  xpc_release(v36);
  return v18;
}

- (void)stop
{
  connection = self->connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  self->didStop = 1;
}

- (void)sendMessageToFud:(id)fud
{
  connection = self->connection;
  if (connection || ([(FudXPCConnection *)self createConnection], (connection = self->connection) != 0))
  {

    xpc_connection_send_message(connection, fud);
  }

  else
  {
    [(FudXPCConnection *)0 sendMessageToFud:v6, v7, v8, v9, v10, v11, v12, v13];
  }
}

- (void)sendMessageToFud:(id)fud reply:(id)reply
{
  connection = self->connection;
  if (connection || ([(FudXPCConnection *)self createConnection], (connection = self->connection) != 0))
  {
    if (fud)
    {
      if (reply)
      {
        replyQueue = self->replyQueue;

        xpc_connection_send_message_with_reply(connection, fud, replyQueue, reply);
      }

      else
      {
        [(FudXPCConnection *)connection sendMessageToFud:a2 reply:fud, reply, v4, v5, v6, v7, v13];
      }
    }

    else
    {
      [(FudXPCConnection *)connection sendMessageToFud:a2 reply:fud, reply, v4, v5, v6, v7, v13];
    }
  }

  else
  {
    [(FudXPCConnection *)0 sendMessageToFud:a2, fud, reply, v4, v5, v6, v7, v13];
  }
}

- (void)createSession
{
  FudLog(3, @"NULL reply from session request", a3, a4, a5, a6, a7, a8, v9);

  xpc_release(self);
}

@end