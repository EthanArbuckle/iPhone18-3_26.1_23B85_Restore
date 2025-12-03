@interface MSXPCService
+ (id)remoteProxyForXPCInterface:(id)interface connectionErrorHandler:(id)handler;
- (MSXPCService)initWithRemoteObjectInterface:(id)interface;
- (id)connection;
- (id)newConnectionForInterface:(id)interface;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
@end

@implementation MSXPCService

- (id)connection
{
  connection = self->_connection;
  if (!connection)
  {
    [(NSLock *)self->_lock lock];
    if (!self->_connection)
    {
      v4 = [(MSXPCService *)self newConnectionForInterface:self->_remoteObjectInterface];
      v5 = self->_connection;
      self->_connection = v4;

      [(NSXPCConnection *)self->_connection resume];
    }

    [(NSLock *)self->_lock unlock];
    connection = self->_connection;
  }

  return connection;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = MSXPCService;
  [(MSXPCService *)&v3 dealloc];
}

- (MSXPCService)initWithRemoteObjectInterface:(id)interface
{
  interfaceCopy = interface;
  v12.receiver = self;
  v12.super_class = MSXPCService;
  v6 = [(MSXPCService *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_shouldLaunchMobileMail = 1;
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v7->_lock;
    v7->_lock = v8;

    objc_storeStrong(&v7->_remoteObjectInterface, interface);
    v10 = v7;
  }

  return v7;
}

+ (id)remoteProxyForXPCInterface:(id)interface connectionErrorHandler:(id)handler
{
  interfaceCopy = interface;
  handlerCopy = handler;
  v7 = [objc_opt_class() remoteProxyForXPCInterface:interfaceCopy shouldLaunchMobileMail:1 connectionErrorHandler:handlerCopy];

  return v7;
}

- (id)newConnectionForInterface:(id)interface
{
  interfaceCopy = interface;
  v5 = [MSXPCConnection alloc];
  protocol = [interfaceCopy protocol];
  v7 = [(MSXPCConnection *)v5 initWithProtocol:protocol];

  [(MSXPCConnection *)v7 setShouldLaunchMobileMail:[(MSXPCService *)self shouldLaunchMobileMail]];
  [(MSXPCConnection *)v7 setRemoteObjectInterface:interfaceCopy];

  return v7;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__MSXPCService_remoteObjectProxyWithErrorHandler___block_invoke;
  v13 = &unk_1E855F1F0;
  v5 = handlerCopy;
  selfCopy = self;
  v15 = v5;
  v6 = MEMORY[0x1DA71BD00](&v10);
  v7 = [(MSXPCService *)self connection:v10];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];

  return v8;
}

void __50__MSXPCService_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v6);
  }

  v4 = *(a1 + 32);
  v5 = objc_opt_self();
}

@end