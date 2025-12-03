@interface HCXPCClient
+ (HCXPCClient)clientWithConnection:(id)connection;
- (BOOL)sendMessage:(id)message errorBlock:(id)block;
- (HCXPCClient)initWithConnection:(id)connection;
- (id)description;
- (int)pid;
- (void)dealloc;
- (void)setWantsUpdates:(BOOL)updates forIdentifier:(unint64_t)identifier;
- (void)teardownConnection;
@end

@implementation HCXPCClient

- (id)description
{
  xpcConnection = [(HCXPCClient *)self xpcConnection];
  if (xpcConnection)
  {
    xpcConnection2 = [(HCXPCClient *)self xpcConnection];
    pid = xpc_connection_get_pid(xpcConnection2);
  }

  else
  {
    pid = 0xFFFFFFFFLL;
  }

  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = HCXPCClient;
  v7 = [(HCXPCClient *)&v10 description];
  v8 = [v6 stringWithFormat:@"%@ [%d]", v7, pid];

  return v8;
}

+ (HCXPCClient)clientWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[HCXPCClient alloc] initWithConnection:connectionCopy];

  return v4;
}

- (HCXPCClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v13.receiver = self;
    v13.super_class = HCXPCClient;
    self = [(HCXPCClient *)&v13 init];
    if (self)
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      connectionCopy = [v5 initWithFormat:@"%@.%@.%@-%p", @"com.apple.accessibility.heard", v7, uUIDString, connectionCopy];

      v11 = dispatch_queue_create([connectionCopy UTF8String], 0);
      xpc_connection_set_target_queue(connectionCopy, v11);
      [(HCXPCClient *)self setXpcQueue:v11];
      [(HCXPCClient *)self setXpcConnection:connectionCopy];
    }
  }

  return self;
}

- (void)dealloc
{
  [(HCXPCClient *)self setXpcConnection:0];
  [(HCXPCClient *)self setXpcQueue:0];
  v3.receiver = self;
  v3.super_class = HCXPCClient;
  [(HCXPCClient *)&v3 dealloc];
}

- (int)pid
{
  xpcConnection = [(HCXPCClient *)self xpcConnection];
  if (xpcConnection)
  {
    xpcConnection2 = [(HCXPCClient *)self xpcConnection];
    pid = xpc_connection_get_pid(xpcConnection2);
  }

  else
  {
    pid = -1;
  }

  return pid;
}

- (void)teardownConnection
{
  [(HCXPCClient *)self setXpcConnection:0];

  [(HCXPCClient *)self setXpcQueue:0];
}

- (void)setWantsUpdates:(BOOL)updates forIdentifier:(unint64_t)identifier
{
  updatesCopy = updates;
  v18 = *MEMORY[0x1E69E9840];
  requestedUpdates = [(HCXPCClient *)self requestedUpdates];
  if (updatesCopy)
  {
    if ((requestedUpdates & identifier) != identifier)
    {
      v8 = HCLogHearingXPC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = messageIdentifierDescription(identifier);
        v14 = 138412546;
        selfCopy2 = self;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1D952C000, v8, OS_LOG_TYPE_DEFAULT, "Client %@ wants update for: %@", &v14, 0x16u);
      }
    }

    v10 = [(HCXPCClient *)self requestedUpdates]| identifier;
  }

  else
  {
    if ((requestedUpdates & identifier) == identifier)
    {
      v11 = HCLogHearingXPC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = messageIdentifierDescription(identifier);
        v14 = 138412546;
        selfCopy2 = self;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_1D952C000, v11, OS_LOG_TYPE_DEFAULT, "Client %@ doesn't want update for: %@", &v14, 0x16u);
      }
    }

    v10 = [(HCXPCClient *)self requestedUpdates]& ~identifier;
  }

  [(HCXPCClient *)self setRequestedUpdates:v10];
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendMessage:(id)message errorBlock:(id)block
{
  messageCopy = message;
  blockCopy = block;
  xpcQueue = [(HCXPCClient *)self xpcQueue];

  if (xpcQueue)
  {
    xpcQueue2 = [(HCXPCClient *)self xpcQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__HCXPCClient_sendMessage_errorBlock___block_invoke;
    block[3] = &unk_1E857EC60;
    block[4] = self;
    v12 = messageCopy;
    v13 = blockCopy;
    dispatch_async(xpcQueue2, block);
  }

  return 1;
}

void __38__HCXPCClient_sendMessage_errorBlock___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) xpcConnection];

  if (!v2)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v3 = MEMORY[0x1E6988810];
  v4 = [*(a1 + 40) payload];
  v5 = [*(a1 + 40) xpcMessage];
  v22 = 0;
  v6 = [v3 copyXPCMessageFromDictionary:v4 inReplyToXPCMessage:v5 error:&v22];
  v7 = v22;

  if (!v6)
  {
    v8 = MEMORY[0x1E6988810];
    v9 = [*(a1 + 40) payload];
    v21 = v7;
    v6 = [v8 copyXPCMessageFromDictionary:v9 inReplyToXPCMessage:0 error:&v21];
    v10 = v21;

    if (!v6)
    {
      v15 = 0;
      v13 = MEMORY[0x1E696AEC0];
      v14 = 1;
      goto LABEL_10;
    }

    v7 = v10;
  }

  v11 = MEMORY[0x1DA732070](v6);
  v12 = MEMORY[0x1E69E9E80];
  if (v11 != MEMORY[0x1E69E9E80])
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = MEMORY[0x1DA732070](v6) == v12;
    v15 = 1;
    v10 = v7;
LABEL_10:
    v17 = [*(a1 + 32) xpcConnection];
    v16 = [v13 stringWithFormat:@"Not sending %d, %d, %d = %@ ==== %@", v15, v14, v17 != 0, v10, *(a1 + 40)];

    v18 = HCLogHearingXPC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_1D952C000, v18, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"Send message error" description:{@"%@", v16}];
    }

    goto LABEL_15;
  }

  v16 = [*(a1 + 32) xpcConnection];
  xpc_connection_send_message(v16, v6);
LABEL_15:

  if (v7)
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      (*(v19 + 16))(v19, v7);
    }
  }

LABEL_18:

  v20 = *MEMORY[0x1E69E9840];
}

@end