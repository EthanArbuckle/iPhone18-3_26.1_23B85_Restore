@interface NRMockClientNSXPCConnection
- (NRMockClientNSXPCConnection)initWithMachServiceName:(id)name options:(unint64_t)options;
- (NRMockServerNSXPCConnection)serverConnection;
- (NSXPCInterface)remoteObjectInterface;
- (id)remoteObjectProxyAsync:(BOOL)async;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_invalidate;
- (void)invalidate;
- (void)runCompletionBlock:(id)block;
@end

@implementation NRMockClientNSXPCConnection

- (NRMockClientNSXPCConnection)initWithMachServiceName:(id)name options:(unint64_t)options
{
  nameCopy = name;
  v7 = [(NRMockClientNSXPCConnection *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_name, name);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.nanoregistry.mockxpclistener.%@.serverservice%p", nameCopy, v8];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    queue = v8->_queue;
    v8->_queue = v10;
  }

  return v8;
}

- (void)runCompletionBlock:(id)block
{
  block = block;
  v4 = +[NRMockXPCStuff sharedInstance];
  v5 = v4;
  if (v4)
  {
    v4 = v4[1];
  }

  v6 = [v4 objectForKeyedSubscript:self->_name];
  serverConnection = [(NRMockClientNSXPCConnection *)self serverConnection];

  if (serverConnection && v6)
  {
    dispatch_async(v6[4], block);
  }
}

- (NRMockServerNSXPCConnection)serverConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_serverConnection);
  if (!WeakRetained)
  {
    objc_storeWeak(&self->_remoteObjectProxy, 0);
    objc_storeWeak(&self->_synchronousRemoteObjectProxy, 0);
    if (!self->_invalidated)
    {
      v4 = +[NRMockXPCStuff sharedInstance];
      v5 = v4;
      if (v4)
      {
        v4 = v4[1];
      }

      v6 = [v4 objectForKeyedSubscript:self->_name];
      selfCopy = self;
      v8 = selfCopy;
      if (v6)
      {
        v14 = 0;
        v15 = &v14;
        v16 = 0x3032000000;
        v17 = __Block_byref_object_copy_;
        v18 = __Block_byref_object_dispose_;
        v19 = 0;
        v9 = v6[4];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__NRMockNSXPCListener_serverConnectionWithClientConnection___block_invoke;
        block[3] = &unk_1E86DAF38;
        block[4] = v6;
        v12 = selfCopy;
        v13 = &v14;
        dispatch_sync(v9, block);
        WeakRetained = v15[5];

        _Block_object_dispose(&v14, 8);
      }

      else
      {
        WeakRetained = 0;
      }

      if (!WeakRetained || WeakRetained[40] != 1)
      {
        goto LABEL_11;
      }
    }

    WeakRetained = 0;
LABEL_11:
    objc_storeWeak(&self->_serverConnection, WeakRetained);
  }

  return WeakRetained;
}

- (NSXPCInterface)remoteObjectInterface
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v3 = +[NRMockXPCStuff sharedInstance];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__NRMockClientNSXPCConnection_remoteObjectInterface__block_invoke;
  v8[3] = &unk_1E86DAE00;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __52__NRMockClientNSXPCConnection_remoteObjectInterface__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) serverConnection];
  v2 = [v6 exportedInterface];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)remoteObjectProxyAsync:(BOOL)async
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v5 = +[NRMockXPCStuff sharedInstance];
  if (v5)
  {
    v6 = v5[2];
  }

  else
  {
    v6 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__NRMockClientNSXPCConnection_remoteObjectProxyAsync___block_invoke;
  v10[3] = &unk_1E86DAE48;
  v10[4] = self;
  v11 = v5;
  v12 = &v14;
  asyncCopy = async;
  v7 = v5;
  dispatch_sync(v6, v10);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __54__NRMockClientNSXPCConnection_remoteObjectProxyAsync___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConnection];
  v3 = *(a1 + 40);
  v16 = v2;
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:*(*(a1 + 32) + 8)];
  if (v16)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = 24;
    if (*(a1 + 56))
    {
      v7 = 32;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + v7));
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), WeakRetained);

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = [NRMockXPCProxy alloc];
      v10 = [v16 exportedObject];
      v11 = *(a1 + 56);
      v12 = v5[4];
      [(NRMockXPCProxy *)v9 initWithBlahBlahBlahTarget:v10 queue:v12 async:v11];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v9;

      v15 = 24;
      if (*(a1 + 56))
      {
        v15 = 32;
      }

      objc_storeWeak((*(a1 + 32) + v15), *(*(*(a1 + 48) + 8) + 40));
    }
  }
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  remoteObjectProxy = [(NRMockClientNSXPCConnection *)self remoteObjectProxy];
  v6 = remoteObjectProxy;
  if (handlerCopy && !remoteObjectProxy)
  {
    queue = [(NRMockClientNSXPCConnection *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NRMockClientNSXPCConnection_remoteObjectProxyWithErrorHandler___block_invoke;
    block[3] = &unk_1E86DAE70;
    v10 = handlerCopy;
    dispatch_async(queue, block);
  }

  return v6;
}

void __65__NRMockClientNSXPCConnection_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"NSXPCConnectionInterrupted: Make sure mock server is running";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:v3 code:4097 userInfo:v4];
  (*(v1 + 16))(v1, v5);

  v6 = *MEMORY[0x1E69E9840];
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(NRMockClientNSXPCConnection *)self remoteObjectProxyAsync:0];
  v6 = v5;
  if (handlerCopy && !v5)
  {
    v7 = +[NRMockXPCStuff sharedInstance];
    v8 = v7;
    if (v7)
    {
      v7 = v7[1];
    }

    v9 = [v7 objectForKeyedSubscript:self->_name];
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 32);
    }

    else
    {
      v11 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__NRMockClientNSXPCConnection_synchronousRemoteObjectProxyWithErrorHandler___block_invoke;
    block[3] = &unk_1E86DAE70;
    v14 = handlerCopy;
    dispatch_async(v11, block);
  }

  return v6;
}

void __76__NRMockClientNSXPCConnection_synchronousRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"NSXPCConnectionInterrupted: Make sure mock server is running";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:v3 code:4097 userInfo:v4];
  (*(v1 + 16))(v1, v5);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  isa = +[NRMockXPCStuff sharedInstance];
  v4 = isa;
  if (isa)
  {
    isa = isa[2].isa;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__NRMockClientNSXPCConnection_invalidate__block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_sync(isa, block);
}

- (void)_invalidate
{
  isa = +[NRMockXPCStuff sharedInstance];
  v8 = isa;
  if (isa)
  {
    isa = isa[2].isa;
  }

  dispatch_assert_queue_V2(isa);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    WeakRetained = objc_loadWeakRetained(&self->_serverConnection);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [(NRMockServerNSXPCConnection *)WeakRetained _invalidate];
      objc_storeWeak(&self->_serverConnection, 0);
    }

    objc_storeWeak(&self->_synchronousRemoteObjectProxy, 0);
    objc_storeWeak(&self->_remoteObjectProxy, 0);
    v6 = MEMORY[0x1E12E7560](self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v6)
    {
      dispatch_async(self->_queue, v6);
    }
  }
}

@end