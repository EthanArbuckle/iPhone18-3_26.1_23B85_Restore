@interface MSVXPCTestServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MSVXPCTestServer)initWithMessage:(id)a3;
- (void)sendMessage:(id)a3;
- (void)setNewConnectionInterruptionHandler:(id)a3;
- (void)setNewConnectionInvalidationHandler:(id)a3;
@end

@implementation MSVXPCTestServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  NSLog(@"MSVXPCTestServer received connection %@", v5);
  v6 = +[MSVXPCTestServer serviceInterface];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 setInterruptionHandler:self->_interruptionHandler];
  [v5 setInvalidationHandler:self->_invalidationHandler];
  [v5 activate];

  return self->_shouldAcceptNewConnections;
}

- (void)sendMessage:(id)a3
{
  v4 = [a3 copy];
  message = self->_message;
  self->_message = v4;

  _objc_release_x1();
}

- (void)setNewConnectionInvalidationHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v4;

  _objc_release_x1();
}

- (void)setNewConnectionInterruptionHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v4;

  _objc_release_x1();
}

- (MSVXPCTestServer)initWithMessage:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MSVXPCTestServer;
  v5 = [(MSVXPCTestServer *)&v18 init];
  if (v5)
  {
    v6 = [v4 copy];
    message = v5->_message;
    v5->_message = v6;

    v5->_shouldAcceptNewConnections = 1;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100001FC4;
    v16[3] = &unk_100004268;
    v8 = v4;
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