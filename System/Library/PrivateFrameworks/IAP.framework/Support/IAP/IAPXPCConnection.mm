@interface IAPXPCConnection
- (IAPXPCConnection)initWithServiceName:(id)name queueName:(id)queueName;
- (IAPXPCConnection)initWithXPCConnection:(id)connection queueName:(id)name;
- (id)_initIAPXPCConnection:(id)connection;
- (id)copyReplyQueue;
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

@implementation IAPXPCConnection

- (id)_initIAPXPCConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = IAPXPCConnection;
  v4 = [(IAPXPCConnection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->isValid = 257;
    v4->_dispatchQueue = dispatch_queue_create([connection UTF8String], 0);
  }

  return v5;
}

- (IAPXPCConnection)initWithServiceName:(id)name queueName:(id)queueName
{
  if (!name || !queueName)
  {
    return 0;
  }

  *&self->isValid = 257;
  mach_service = xpc_connection_create_mach_service([name UTF8String], 0, 0);
  v7 = [(IAPXPCConnection *)self initWithXPCConnection:mach_service queueName:queueName];
  xpc_release(mach_service);
  return v7;
}

- (IAPXPCConnection)initWithXPCConnection:(id)connection queueName:(id)name
{
  v5 = [(IAPXPCConnection *)self _initIAPXPCConnection:name];
  v6 = v5;
  if (v5)
  {
    *&v5->isValid = 257;
    v5->_connection = xpc_retain(connection);
    [(IAPXPCConnection *)v6 _reloadEventHandler];
    xpc_connection_resume(v6->_connection);
  }

  return v6;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_release(connection);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  replyQueue = self->_replyQueue;
  if (replyQueue)
  {
    dispatch_release(replyQueue);
  }

  v6.receiver = self;
  v6.super_class = IAPXPCConnection;
  [(IAPXPCConnection *)&v6 dealloc];
}

- (id)disconnectBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100018B90;
  v10 = sub_100018BA0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018BAC;
  v5[3] = &unk_10002D4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)messageBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100018B90;
  v10 = sub_100018BA0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018CD4;
  v5[3] = &unk_10002D4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)copyReplyQueue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100018DDC;
  v10 = sub_100018DEC;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018DF8;
  v5[3] = &unk_10002D8D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
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
  if (self->isValid)
  {
    v6 = xpc_connection_send_message_with_reply_sync(self->_connection, message);
    if (reply)
    {
      (*(reply + 2))(reply, v6);
    }

    xpc_release(v6);
  }
}

- (void)setDisconnectBlock:(id)block
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018F48;
  v4[3] = &unk_10002D900;
  v4[4] = self;
  v4[5] = block;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setMessageBlock:(id)block
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019018;
  v4[3] = &unk_10002D900;
  v4[4] = self;
  v4[5] = block;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setReplyQueue:(id)queue
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000190E8;
  v4[3] = &unk_10002D820;
  v4[4] = self;
  v4[5] = queue;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setTargetQueue:(id)queue
{
  dispatch_set_target_queue(self->_dispatchQueue, queue);
  replyQueue = self->_replyQueue;
  if (replyQueue)
  {

    dispatch_set_target_queue(replyQueue, queue);
  }
}

- (void)_reloadEventHandler
{
  v10 = 0;
  v3 = MGCopyAnswerWithError();
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID() && CFStringCompare(v4, @"NonUI", 0) == kCFCompareEqualTo)
    {
      self->retryInvalidConnections = 0;
    }

    CFRelease(v4);
  }

  disconnectBlock = self->_disconnectBlock;
  messageBlock = self->_messageBlock;
  connection = self->_connection;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000192A8;
  v9[3] = &unk_10002D950;
  v9[4] = self;
  v9[5] = disconnectBlock;
  v9[6] = messageBlock;
  xpc_connection_set_event_handler(connection, v9);
}

@end