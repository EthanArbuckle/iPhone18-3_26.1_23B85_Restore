@interface _BMXPCTransport
+ (id)_handleEvent:(id)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (NSDictionary)remoteUserInfo;
- (NSMutableDictionary)exportedUserInfo;
- (_BMXPCTransport)initWithConnection:(id)a3;
- (id)errorHandler;
- (id)messageHandler;
- (id)sendMessageWithReplySync:(id)a3;
- (void)_willSendMessage:(id)a3;
- (void)dealloc;
- (void)sendMessage:(id)a3;
- (void)sendMessageWithReply:(id)a3 onQueue:(id)a4 replyHandler:(id)a5;
- (void)sendNotification:(id)a3;
- (void)setErrorHandler:(id)a3;
- (void)setMessageHandler:(id)a3;
- (void)setTargetQueue:(id)a3;
@end

@implementation _BMXPCTransport

- (NSMutableDictionary)exportedUserInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  v3 = [WeakRetained exportedUserInfo];

  return v3;
}

- (NSDictionary)remoteUserInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  v3 = [WeakRetained remoteUserInfo];

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _BMXPCTransport;
  [(_BMXPCTransport *)&v2 dealloc];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return MEMORY[0x1EEE74A50](self->_connection, retstr);
}

- (_BMXPCTransport)initWithConnection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = _BMXPCTransport;
  v6 = [(_BMXPCTransport *)&v13 init];
  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setConnection:v5];
    v8 = objc_opt_new();
    [v7 setExportedUserInfo:v8];

    v9 = objc_opt_new();
    [v7 setRemoteUserInfo:v9];

    objc_storeWeak(&v6->_weakContext, v7);
    objc_storeStrong(&v6->_connection, a3);
    connection = v6->_connection;
    v11 = [_BMXPCTransport _handleEvent:v7];
    xpc_connection_set_event_handler(connection, v11);
  }

  return v6;
}

+ (id)_handleEvent:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32___BMXPCTransport__handleEvent___block_invoke;
  v7[3] = &unk_1E796B188;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1AC5AD7D0](v7);

  return v5;
}

- (id)messageHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  v3 = [WeakRetained messageHandler];

  return v3;
}

- (void)setMessageHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  [WeakRetained setMessageHandler:v4];
}

- (id)errorHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  v3 = [WeakRetained errorHandler];

  return v3;
}

- (void)setErrorHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  [WeakRetained setErrorHandler:v4];
}

- (void)_willSendMessage:(id)a3
{
  xdict = a3;
  v4 = [(_BMXPCTransport *)self exportedUserInfo];
  if ([v4 count])
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(xdict, "bm_info", v5);
  }
}

- (void)sendMessage:(id)a3
{
  message = a3;
  [(_BMXPCTransport *)self _willSendMessage:message];
  xpc_connection_send_message(self->_connection, message);
}

- (void)sendMessageWithReply:(id)a3 onQueue:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  message = a3;
  [(_BMXPCTransport *)self _willSendMessage:message];
  xpc_connection_send_message_with_reply(self->_connection, message, v9, v8);
}

- (id)sendMessageWithReplySync:(id)a3
{
  v4 = a3;
  [(_BMXPCTransport *)self _willSendMessage:v4];
  v5 = xpc_connection_send_message_with_reply_sync(self->_connection, v4);

  return v5;
}

- (void)sendNotification:(id)a3
{
  v5 = a3;
  [(_BMXPCTransport *)self _willSendMessage:v5];
  connection = self->_connection;
  xpc_connection_send_notification();
}

- (void)setTargetQueue:(id)a3
{
  targetq = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];

    if (v6 != targetq)
    {
      [v5 setQueue:targetq];
      xpc_connection_set_target_queue(self->_connection, targetq);
    }
  }
}

@end