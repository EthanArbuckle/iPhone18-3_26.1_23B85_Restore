@interface HCXPCClient
+ (HCXPCClient)clientWithConnection:(id)a3;
- (BOOL)sendMessage:(id)a3 errorBlock:(id)a4;
- (HCXPCClient)initWithConnection:(id)a3;
- (id)description;
- (int)pid;
- (void)dealloc;
- (void)setWantsUpdates:(BOOL)a3 forIdentifier:(unint64_t)a4;
- (void)teardownConnection;
@end

@implementation HCXPCClient

- (id)description
{
  v3 = [(HCXPCClient *)self xpcConnection];
  if (v3)
  {
    v4 = [(HCXPCClient *)self xpcConnection];
    pid = xpc_connection_get_pid(v4);
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

+ (HCXPCClient)clientWithConnection:(id)a3
{
  v3 = a3;
  v4 = [[HCXPCClient alloc] initWithConnection:v3];

  return v4;
}

- (HCXPCClient)initWithConnection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13.receiver = self;
    v13.super_class = HCXPCClient;
    self = [(HCXPCClient *)&v13 init];
    if (self)
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [MEMORY[0x1E696AFB0] UUID];
      v9 = [v8 UUIDString];
      v10 = [v5 initWithFormat:@"%@.%@.%@-%p", @"com.apple.accessibility.heard", v7, v9, v4];

      v11 = dispatch_queue_create([v10 UTF8String], 0);
      xpc_connection_set_target_queue(v4, v11);
      [(HCXPCClient *)self setXpcQueue:v11];
      [(HCXPCClient *)self setXpcConnection:v4];
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
  v3 = [(HCXPCClient *)self xpcConnection];
  if (v3)
  {
    v4 = [(HCXPCClient *)self xpcConnection];
    pid = xpc_connection_get_pid(v4);
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

- (void)setWantsUpdates:(BOOL)a3 forIdentifier:(unint64_t)a4
{
  v5 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v7 = [(HCXPCClient *)self requestedUpdates];
  if (v5)
  {
    if ((v7 & a4) != a4)
    {
      v8 = HCLogHearingXPC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = messageIdentifierDescription(a4);
        v14 = 138412546;
        v15 = self;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1D952C000, v8, OS_LOG_TYPE_DEFAULT, "Client %@ wants update for: %@", &v14, 0x16u);
      }
    }

    v10 = [(HCXPCClient *)self requestedUpdates]| a4;
  }

  else
  {
    if ((v7 & a4) == a4)
    {
      v11 = HCLogHearingXPC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = messageIdentifierDescription(a4);
        v14 = 138412546;
        v15 = self;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_1D952C000, v11, OS_LOG_TYPE_DEFAULT, "Client %@ doesn't want update for: %@", &v14, 0x16u);
      }
    }

    v10 = [(HCXPCClient *)self requestedUpdates]& ~a4;
  }

  [(HCXPCClient *)self setRequestedUpdates:v10];
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendMessage:(id)a3 errorBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HCXPCClient *)self xpcQueue];

  if (v8)
  {
    v9 = [(HCXPCClient *)self xpcQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__HCXPCClient_sendMessage_errorBlock___block_invoke;
    block[3] = &unk_1E857EC60;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(v9, block);
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