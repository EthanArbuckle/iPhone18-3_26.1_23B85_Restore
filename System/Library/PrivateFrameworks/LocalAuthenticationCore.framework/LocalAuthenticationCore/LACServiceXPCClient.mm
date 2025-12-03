@interface LACServiceXPCClient
- (LACServiceXPCClient)initWithEndpointProvider:(id)provider remoteObjectInterface:(id)interface serviceIdentifier:(id)identifier;
- (id)_connectionWithErrorHandler:(id)handler;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_handleConnectionClose;
- (void)connectionDidActivate:(id)activate;
@end

@implementation LACServiceXPCClient

- (LACServiceXPCClient)initWithEndpointProvider:(id)provider remoteObjectInterface:(id)interface serviceIdentifier:(id)identifier
{
  providerCopy = provider;
  interfaceCopy = interface;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = LACServiceXPCClient;
  v12 = [(LACServiceXPCClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpointProvider, provider);
    objc_storeStrong(&v13->_remoteObjectInterface, interface);
    objc_storeStrong(&v13->_serviceIdentifier, identifier);
    v13->_connectionLock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(LACServiceXPCClient *)self _connectionWithErrorHandler:handlerCopy];
  v6 = [v5 remoteObjectWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(LACServiceXPCClient *)self _connectionWithErrorHandler:handlerCopy];
  v6 = [v5 synchronousRemoteObjectWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_connectionWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_connectionLock);
  if (self->_connection)
  {
    v5 = 0;
  }

  else
  {
    endpointProvider = self->_endpointProvider;
    serviceIdentifier = self->_serviceIdentifier;
    v19 = 0;
    v8 = [(LACServiceXPCEndpointProvider *)endpointProvider endpointForServiceWithIdentifier:serviceIdentifier error:&v19];
    v5 = v19;
    if (v8)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __51__LACServiceXPCClient__connectionWithErrorHandler___block_invoke;
      v16[3] = &unk_1E7A96BB0;
      v17 = v8;
      selfCopy = self;
      v9 = __51__LACServiceXPCClient__connectionWithErrorHandler___block_invoke(v16);
      connection = self->_connection;
      self->_connection = v9;

      [(LACXPCConnection *)self->_connection setDelegate:self];
      [(LACXPCConnection *)self->_connection activate];
    }

    if (!(self->_connection | v5))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPC connection to service endpoint with identifier '%@' could not be created", self->_serviceIdentifier];
      v5 = [LACError errorWithCode:-1000 debugDescription:v11];
    }

    if (v5)
    {
      v12 = LACLogService();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(LACServiceXPCClient *)v5 _connectionWithErrorHandler:v12];
      }

      handlerCopy[2](handlerCopy, v5);
    }
  }

  os_unfair_lock_unlock(&self->_connectionLock);
  v13 = self->_connection;
  v14 = v13;

  return v13;
}

LACXPCConnectionDefaultAdapter *__51__LACServiceXPCClient__connectionWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [[LACXPCConnectionDefaultAdapter alloc] initWithListenerEndpoint:*(a1 + 32)];
  v3 = [[LACXPCConnectionConfigurationDefaultAdapter alloc] initWithRemoteObjectInterface:*(*(a1 + 40) + 16) exportedInterface:0 exportedObject:0 replyQueue:0];
  [(LACXPCConnectionDefaultAdapter *)v2 configureWithConfiguration:v3];

  return v2;
}

- (void)_handleConnectionClose
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_connection)
  {
    v3 = LACLogService();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serviceIdentifier = self->_serviceIdentifier;
      v8 = 138412290;
      v9 = serviceIdentifier;
      _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection to service endpoint with identifier '%@' was closed", &v8, 0xCu);
    }

    v5 = self->_connection;
    [(LACXPCConnection *)v5 setDelegate:0];
    connection = self->_connection;
    self->_connection = 0;

    [(LACXPCConnection *)v5 invalidate];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)connectionDidActivate:(id)activate
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = LACLogService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    serviceIdentifier = self->_serviceIdentifier;
    v7 = 138412290;
    v8 = serviceIdentifier;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "XPC connection to service endpoint with identifier '%@' was activated", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_connectionWithErrorHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end