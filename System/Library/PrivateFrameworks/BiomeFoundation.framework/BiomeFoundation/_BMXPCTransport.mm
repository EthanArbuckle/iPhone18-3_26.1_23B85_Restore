@interface _BMXPCTransport
+ (id)_handleEvent:(id)event;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (NSDictionary)remoteUserInfo;
- (NSMutableDictionary)exportedUserInfo;
- (_BMXPCTransport)initWithConnection:(id)connection;
- (id)errorHandler;
- (id)messageHandler;
- (id)sendMessageWithReplySync:(id)sync;
- (void)_willSendMessage:(id)message;
- (void)dealloc;
- (void)sendMessage:(id)message;
- (void)sendMessageWithReply:(id)reply onQueue:(id)queue replyHandler:(id)handler;
- (void)sendNotification:(id)notification;
- (void)setErrorHandler:(id)handler;
- (void)setMessageHandler:(id)handler;
- (void)setTargetQueue:(id)queue;
@end

@implementation _BMXPCTransport

- (NSMutableDictionary)exportedUserInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  exportedUserInfo = [WeakRetained exportedUserInfo];

  return exportedUserInfo;
}

- (NSDictionary)remoteUserInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  remoteUserInfo = [WeakRetained remoteUserInfo];

  return remoteUserInfo;
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

- (_BMXPCTransport)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = _BMXPCTransport;
  v6 = [(_BMXPCTransport *)&v13 init];
  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setConnection:connectionCopy];
    v8 = objc_opt_new();
    [v7 setExportedUserInfo:v8];

    v9 = objc_opt_new();
    [v7 setRemoteUserInfo:v9];

    objc_storeWeak(&v6->_weakContext, v7);
    objc_storeStrong(&v6->_connection, connection);
    connection = v6->_connection;
    v11 = [_BMXPCTransport _handleEvent:v7];
    xpc_connection_set_event_handler(connection, v11);
  }

  return v6;
}

+ (id)_handleEvent:(id)event
{
  eventCopy = event;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32___BMXPCTransport__handleEvent___block_invoke;
  v7[3] = &unk_1E796B188;
  v8 = eventCopy;
  v4 = eventCopy;
  v5 = MEMORY[0x1AC5AD7D0](v7);

  return v5;
}

- (id)messageHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  messageHandler = [WeakRetained messageHandler];

  return messageHandler;
}

- (void)setMessageHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  [WeakRetained setMessageHandler:handlerCopy];
}

- (id)errorHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  errorHandler = [WeakRetained errorHandler];

  return errorHandler;
}

- (void)setErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  [WeakRetained setErrorHandler:handlerCopy];
}

- (void)_willSendMessage:(id)message
{
  xdict = message;
  exportedUserInfo = [(_BMXPCTransport *)self exportedUserInfo];
  if ([exportedUserInfo count])
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(xdict, "bm_info", v5);
  }
}

- (void)sendMessage:(id)message
{
  message = message;
  [(_BMXPCTransport *)self _willSendMessage:message];
  xpc_connection_send_message(self->_connection, message);
}

- (void)sendMessageWithReply:(id)reply onQueue:(id)queue replyHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  message = reply;
  [(_BMXPCTransport *)self _willSendMessage:message];
  xpc_connection_send_message_with_reply(self->_connection, message, queueCopy, handlerCopy);
}

- (id)sendMessageWithReplySync:(id)sync
{
  syncCopy = sync;
  [(_BMXPCTransport *)self _willSendMessage:syncCopy];
  v5 = xpc_connection_send_message_with_reply_sync(self->_connection, syncCopy);

  return v5;
}

- (void)sendNotification:(id)notification
{
  notificationCopy = notification;
  [(_BMXPCTransport *)self _willSendMessage:notificationCopy];
  connection = self->_connection;
  xpc_connection_send_notification();
}

- (void)setTargetQueue:(id)queue
{
  targetq = queue;
  WeakRetained = objc_loadWeakRetained(&self->_weakContext);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    queue = [WeakRetained queue];

    if (queue != targetq)
    {
      [v5 setQueue:targetq];
      xpc_connection_set_target_queue(self->_connection, targetq);
    }
  }
}

@end