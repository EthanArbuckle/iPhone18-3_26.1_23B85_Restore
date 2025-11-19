@interface DMXPCConnection
- (BOOL)hasEntitlement:(id)a3;
- (DMXPCConnection)initWithConnection:(id)a3;
- (DMXPCConnection)initWithServiceName:(id)a3;
- (id)sendMessageSync:(id)a3;
- (void)_handleMessage:(id)a3;
- (void)sendMessage:(id)a3 replyHandler:(id)a4;
- (void)targetForegroundUserSessionIfNecessary;
@end

@implementation DMXPCConnection

- (DMXPCConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = DMXPCConnection;
  v6 = [(DMXPCConnection *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = dispatch_queue_create("com.apple.dmxpcservice.client", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    xpc_connection_set_target_queue(v5, v7->_queue);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __38__DMXPCConnection_initWithConnection___block_invoke;
    handler[3] = &unk_2788551E8;
    v12 = v7;
    xpc_connection_set_event_handler(v5, handler);
  }

  return v7;
}

- (DMXPCConnection)initWithServiceName:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = DMXPCConnection;
  v6 = [(DMXPCConnection *)&v23 init];
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dmxpcservice.%@", v5];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dmxpcservice.reply.%@", v5];
    v10 = dispatch_queue_create([v8 UTF8String], 0);
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = dispatch_queue_create([v9 UTF8String], 0);
    replyQueue = v7->_replyQueue;
    v7->_replyQueue = v12;

    _DMLogFunc(v3, 7, @"DMXPCConnection calling xpc_init_services");
    MEMORY[0x2318EDE10]();
    mach_service = xpc_connection_create_mach_service([v5 UTF8String], v7->_queue, 0);
    connection = v7->_connection;
    v7->_connection = mach_service;

    v20 = v7->_connection;
    _DMLogFunc(v3, 7, @"DMXPCConnection created connection %p");
    v16 = v7->_connection;
    if (v16)
    {
      xpc_connection_set_target_queue(v16, v7->_queue);
      v17 = v7->_connection;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __39__DMXPCConnection_initWithServiceName___block_invoke;
      handler[3] = &unk_2788551E8;
      v18 = v7;
      v22 = v18;
      xpc_connection_set_event_handler(v17, handler);
      v7 = v22;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)targetForegroundUserSessionIfNecessary
{
  if (xpc_user_sessions_enabled())
  {
    xpc_user_sessions_get_foreground_uid();
    _DMLogFunc(v2, 7, @"targeting foreground user session for uid %d");
    connection = self->_connection;
    xpc_connection_set_target_user_session_uid();
  }
}

- (void)_handleMessage:(id)a3
{
  v6 = a3;
  v4 = MEMORY[0x2318EDE00]();
  if (v4 == MEMORY[0x277D86468])
  {
    messageHandler = self->_messageHandler;
    if (!messageHandler)
    {
      [(DMXPCConnection *)self handleMessage:v6];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    goto LABEL_11;
  }

  if (v6 == MEMORY[0x277D863F0])
  {
    messageHandler = self->_interruptionHandler;
    if (!messageHandler)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v6 == MEMORY[0x277D863F8])
  {
    messageHandler = self->_invalidationHandler;
    if (messageHandler)
    {
LABEL_10:
      messageHandler[2](messageHandler, v6);
    }
  }

LABEL_11:

  MEMORY[0x2821F96F8]();
}

- (void)sendMessage:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DMXPCConnection *)self connection];
  replyQueue = self->_replyQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __44__DMXPCConnection_sendMessage_replyHandler___block_invoke;
  handler[3] = &unk_278855210;
  v12 = v6;
  v10 = v6;
  xpc_connection_send_message_with_reply(v8, v7, replyQueue, handler);
}

- (id)sendMessageSync:(id)a3
{
  v4 = a3;
  v5 = [(DMXPCConnection *)self connection];
  v6 = xpc_connection_send_message_with_reply_sync(v5, v4);

  return v6;
}

- (BOOL)hasEntitlement:(id)a3
{
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v6 = [(DMXPCConnection *)self connection];
  xpc_connection_get_audit_token();

  v7 = *MEMORY[0x277CBED08];
  memset(&token, 0, sizeof(token));
  v8 = SecTaskCreateWithAuditToken(v7, &token);
  if (v8)
  {
    v9 = v8;
    *token.val = 0;
    v10 = SecTaskCopyValueForEntitlement(v8, v5, &token);
    if (*token.val)
    {
      _DMLogFunc(v3, 3, @"hasEntitlement: %@ did fail to copy value with error %@");
    }

    if (v10)
    {
      v11 = CFGetTypeID(v10);
      v12 = v11 == CFBooleanGetTypeID() && CFBooleanGetValue(v10) != 0;
      CFRelease(v10);
      _DMLogFunc(v3, 7, @"hasEntitlement: %@ did get value %d");
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    _DMLogFunc(v3, 3, @"hasEntitlement: %@ did fail to create SecTask");
    v12 = 0;
  }

  return v12;
}

@end