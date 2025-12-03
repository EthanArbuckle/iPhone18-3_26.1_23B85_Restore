@interface BMWriteService
- (BMWriteService)initWithUseCase:(id)case;
- (id)newConnection;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
@end

@implementation BMWriteService

- (BMWriteService)initWithUseCase:(id)case
{
  caseCopy = case;
  v6 = [(BMWriteService *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_useCase, case);
  }

  return v7;
}

- (id)newConnection
{
  v3 = [MEMORY[0x1E696B0B8] bm_connectionWithServiceName:@"com.apple.BiomeWriteService" queue:0];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48E3A68];
  [v3 setRemoteObjectInterface:v4];

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48E3548];
  [v3 setExportedInterface:v5];
  v6 = [MEMORY[0x1E698EA18] weakProxyToObject:self];
  [v3 setExportedObject:v6];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __31__BMWriteService_newConnection__block_invoke;
  v11 = &unk_1E8338EC0;
  objc_copyWeak(&v12, &location);
  [v3 setInvalidationHandler:&v8];
  [v3 activate];
  [v3 setBm_exportedUseCase:self->_useCase];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v3;
}

void __31__BMWriteService_newConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  connection = [(BMWriteService *)self connection];

  if (!connection)
  {
    newConnection = [(BMWriteService *)self newConnection];
    [(BMWriteService *)self setConnection:newConnection];
  }

  connection2 = [(BMWriteService *)self connection];

  if (connection2)
  {
    connection3 = [(BMWriteService *)self connection];
    v9 = [connection3 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

    if (v9)
    {
      v9 = v9;
      v10 = v9;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19 = @"Unable to create proxy";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v15 = [v13 errorWithDomain:*MEMORY[0x1E698E908] code:7 userInfo:v14];
      handlerCopy[2](handlerCopy, v15);

      v10 = 0;
    }
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"Unable to create connection";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = [v11 errorWithDomain:*MEMORY[0x1E698E908] code:7 userInfo:v9];
    handlerCopy[2](handlerCopy, v12);

    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

void __69__BMWriteService_requestBiomeEndpointForAppScopedService_user_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)dealloc
{
  connection = [(BMWriteService *)self connection];
  [connection setInvalidationHandler:0];

  connection2 = [(BMWriteService *)self connection];
  [connection2 invalidate];

  [(BMWriteService *)self setConnection:0];
  v5.receiver = self;
  v5.super_class = BMWriteService;
  [(BMWriteService *)&v5 dealloc];
}

@end