@interface MSVXPCTestServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MSVXPCTestServer)initWithMessage:(id)message;
- (void)sendMessage:(id)message;
- (void)setNewConnectionInterruptionHandler:(id)handler;
- (void)setNewConnectionInvalidationHandler:(id)handler;
@end

@implementation MSVXPCTestServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  NSLog(@"MSVXPCTestServer received connection %@", connectionCopy);
  v6 = +[MSVXPCTestServer serviceInterface];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy setInterruptionHandler:self->_interruptionHandler];
  [connectionCopy setInvalidationHandler:self->_invalidationHandler];
  [connectionCopy activate];

  return self->_shouldAcceptNewConnections;
}

- (void)sendMessage:(id)message
{
  v4 = [message copy];
  message = self->_message;
  self->_message = v4;

  _objc_release_x1();
}

- (void)setNewConnectionInvalidationHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v4;

  _objc_release_x1();
}

- (void)setNewConnectionInterruptionHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v4;

  _objc_release_x1();
}

- (MSVXPCTestServer)initWithMessage:(id)message
{
  messageCopy = message;
  v18.receiver = self;
  v18.super_class = MSVXPCTestServer;
  v5 = [(MSVXPCTestServer *)&v18 init];
  if (v5)
  {
    v6 = [messageCopy copy];
    message = v5->_message;
    v5->_message = v6;

    v5->_shouldAcceptNewConnections = 1;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100001FC4;
    v16[3] = &unk_100004268;
    v8 = messageCopy;
    v17 = v8;
    v9 = objc_retainBlock(v16);
    invalidationHandler = v5->_invalidationHandler;
    v5->_invalidationHandler = v9;

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001FF4;
    v14[3] = &unk_100004268;
    v15 = v8;
    v11 = objc_retainBlock(v14);
    interruptionHandler = v5->_interruptionHandler;
    v5->_interruptionHandler = v11;
  }

  return v5;
}

@end