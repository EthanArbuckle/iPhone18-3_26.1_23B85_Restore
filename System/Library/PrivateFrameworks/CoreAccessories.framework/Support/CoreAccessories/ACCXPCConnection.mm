@interface ACCXPCConnection
- (ACCXPCConnection)initWithServiceName:(id)name queueName:(id)queueName;
- (ACCXPCConnection)initWithXPCConnection:(id)connection queueName:(id)name;
- (id)_initACCXPCConnection:(id)connection;
- (id)disconnectBlock;
- (id)messageBlock;
- (void)_reloadEventHandler;
- (void)dealloc;
- (void)sendMessage:(id)message;
- (void)sendMessage:(id)message withReply:(id)reply;
- (void)sendSynchronousMessage:(id)message withReply:(id)reply;
- (void)setDisconnectBlock:(id)block;
- (void)setMessageBlock:(id)block;
- (void)setReplyQueue:(id)queue;
- (void)setTargetQueue:(id)queue;
@end

@implementation ACCXPCConnection

- (id)_initACCXPCConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = ACCXPCConnection;
  v5 = [(ACCXPCConnection *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *&v5->isValid = 257;
    v7 = dispatch_queue_create([connectionCopy UTF8String], 0);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;
  }

  return v6;
}

- (ACCXPCConnection)initWithServiceName:(id)name queueName:(id)queueName
{
  selfCopy = self;
  v5 = 0;
  if (name && queueName)
  {
    *&self->isValid = 257;
    nameCopy = name;
    queueNameCopy = queueName;
    mach_service = xpc_connection_create_mach_service([name UTF8String], 0, 0);
    v11 = [(ACCXPCConnection *)selfCopy initWithXPCConnection:mach_service queueName:queueNameCopy];

    selfCopy = v11;
    v5 = selfCopy;
  }

  return v5;
}

- (ACCXPCConnection)initWithXPCConnection:(id)connection queueName:(id)name
{
  connectionCopy = connection;
  v8 = [(ACCXPCConnection *)self _initACCXPCConnection:name];
  v9 = v8;
  if (v8)
  {
    *&v8->isValid = 257;
    objc_storeStrong(&v8->_connection, connection);
    [(ACCXPCConnection *)v9 _reloadEventHandler];
    xpc_connection_resume(v9->_connection);
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ACCXPCConnection;
  [(ACCXPCConnection *)&v2 dealloc];
}

- (id)disconnectBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __35__ACCXPCConnection_disconnectBlock__block_invoke;
  v5[3] = &unk_100227218;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = objc_retainBlock(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__ACCXPCConnection_disconnectBlock__block_invoke(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (id)messageBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __32__ACCXPCConnection_messageBlock__block_invoke;
  v5[3] = &unk_100227218;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = objc_retainBlock(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__ACCXPCConnection_messageBlock__block_invoke(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (void)sendMessage:(id)message
{
  if (self->isValid)
  {
    xpc_connection_send_message(self->_connection, message);
  }
}

- (void)sendMessage:(id)message withReply:(id)reply
{
  if (self->isValid)
  {
    xpc_connection_send_message_with_reply(self->_connection, message, self->_replyQueue, reply);
  }
}

- (void)sendSynchronousMessage:(id)message withReply:(id)reply
{
  replyCopy = reply;
  if (self->isValid)
  {
    v8 = replyCopy;
    v7 = xpc_connection_send_message_with_reply_sync(self->_connection, message);
    if (v8)
    {
      v8[2](v8, v7);
    }

    replyCopy = v8;
  }
}

- (void)setDisconnectBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __39__ACCXPCConnection_setDisconnectBlock___block_invoke;
  v7[3] = &unk_100227240;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(dispatchQueue, v7);
}

id __39__ACCXPCConnection_setDisconnectBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 24) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    v7 = *(a1 + 32);

    return [v7 _reloadEventHandler];
  }

  return result;
}

- (void)setMessageBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __36__ACCXPCConnection_setMessageBlock___block_invoke;
  v7[3] = &unk_100227240;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(dispatchQueue, v7);
}

id __36__ACCXPCConnection_setMessageBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 40) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);

    return [v7 _reloadEventHandler];
  }

  return result;
}

- (void)setReplyQueue:(id)queue
{
  queueCopy = queue;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __34__ACCXPCConnection_setReplyQueue___block_invoke;
  v7[3] = &unk_100225A08;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __34__ACCXPCConnection_setReplyQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

- (void)setTargetQueue:(id)queue
{
  queue = queue;
  dispatch_set_target_queue(self->_dispatchQueue, queue);
  replyQueue = self->_replyQueue;
  if (replyQueue)
  {
    dispatch_set_target_queue(replyQueue, queue);
  }
}

- (void)_reloadEventHandler
{
  v3 = objc_retainBlock(self->_disconnectBlock);
  v4 = objc_retainBlock(self->_messageBlock);
  connection = self->_connection;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __39__ACCXPCConnection__reloadEventHandler__block_invoke;
  handler[3] = &unk_100227290;
  handler[4] = self;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  xpc_connection_set_event_handler(connection, handler);
}

void __39__ACCXPCConnection__reloadEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == &_xpc_error_connection_invalid)
  {
    *(*(a1 + 32) + 48) = 0;
  }

  else if (v3 != &_xpc_error_connection_interrupted)
  {
    if (xpc_get_type(v3) == &_xpc_type_connection)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __39__ACCXPCConnection__reloadEventHandler__block_invoke_2;
      v9[3] = &unk_100227268;
      v7 = *(a1 + 40);
      v9[4] = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 48);
      v8 = v4;
      v10 = v8;
      xpc_connection_set_event_handler(v8, v9);
      xpc_connection_resume(v8);
    }

    else if (xpc_get_type(v4) == &_xpc_type_dictionary)
    {
      v5 = *(a1 + 48);
      if (v5)
      {
        (*(v5 + 16))(v5, v4, *(*(a1 + 32) + 8));
      }
    }

    goto LABEL_12;
  }

  if (*(*(a1 + 32) + 49) == 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

LABEL_12:
}

uint64_t __39__ACCXPCConnection__reloadEventHandler__block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (v3 == &_xpc_error_connection_invalid)
  {
    *(a1[4] + 48) = 0;
  }

  else if (v3 != &_xpc_error_connection_interrupted)
  {
    v4 = a1[7];
    if (v4)
    {
      v5 = a1[5];
      (*(v4 + 16))();
    }

    goto LABEL_9;
  }

  if (*(a1[4] + 49) == 1)
  {
    v6 = a1[6];
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

LABEL_9:

  return _objc_release_x1();
}

@end