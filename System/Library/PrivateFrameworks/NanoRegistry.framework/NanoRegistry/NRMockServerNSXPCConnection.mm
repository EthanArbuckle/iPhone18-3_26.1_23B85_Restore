@interface NRMockServerNSXPCConnection
- (NRMockServerNSXPCConnection)initWithListener:(id)listener clientConnection:(id)connection;
- (NSXPCInterface)remoteObjectInterface;
- (id)remoteObjectProxyAsync:(BOOL)async;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (int)processIdentifier;
- (void)_invalidate;
- (void)dealloc;
- (void)invalidate;
- (void)runCompletionBlock:(id)block;
@end

@implementation NRMockServerNSXPCConnection

- (void)_invalidate
{
  if (self)
  {
    isa = +[NRMockXPCStuff sharedInstance];
    v7 = isa;
    if (isa)
    {
      isa = isa[2].isa;
    }

    dispatch_assert_queue_V2(isa);
    if ((*(self + 40) & 1) == 0)
    {
      *(self + 40) = 1;
      WeakRetained = objc_loadWeakRetained((self + 8));
      v4 = WeakRetained;
      if (WeakRetained)
      {
        [WeakRetained _invalidate];
        objc_storeWeak((self + 8), 0);
      }

      objc_storeWeak((self + 24), 0);
      objc_storeWeak((self + 32), 0);
      v5 = MEMORY[0x1E12E7560](*(self + 72));
      v6 = *(self + 72);
      *(self + 72) = 0;

      if (v5)
      {
        dispatch_async(*(self + 48), v5);
      }
    }
  }
}

- (NRMockServerNSXPCConnection)initWithListener:(id)listener clientConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [(NRMockServerNSXPCConnection *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_clientConnection, connectionCopy);
    objc_storeWeak(&v9->_listener, listenerCopy);
    if (listenerCopy)
    {
      v10 = listenerCopy[4];
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v9->_queue, v10);
    [(NRMockServerNSXPCConnection *)v9 suspend];
  }

  return v9;
}

- (void)runCompletionBlock:(id)block
{
  block = block;
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    queue = [WeakRetained queue];
    dispatch_async(queue, block);
  }
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
  v8[2] = __52__NRMockServerNSXPCConnection_remoteObjectInterface__block_invoke;
  v8[3] = &unk_1E86DAE00;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __52__NRMockServerNSXPCConnection_remoteObjectInterface__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (([WeakRetained invalidated] & 1) == 0)
  {
    v2 = [WeakRetained exportedInterface];
    v3 = [v2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)remoteObjectProxyAsync:(BOOL)async
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = +[NRMockXPCStuff sharedInstance];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__NRMockServerNSXPCConnection_remoteObjectProxyAsync___block_invoke;
  block[3] = &unk_1E86DAEC0;
  block[4] = self;
  block[5] = &v12;
  asyncCopy = async;
  dispatch_sync(v7, block);
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

uint64_t __54__NRMockServerNSXPCConnection_remoteObjectProxyAsync___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained;
    WeakRetained = [WeakRetained invalidated];
    v3 = v13;
    if ((WeakRetained & 1) == 0)
    {
      v4 = 24;
      if (*(a1 + 48))
      {
        v4 = 32;
      }

      v5 = objc_loadWeakRetained((*(a1 + 32) + v4));
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);

      v3 = v13;
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v6 = [NRMockXPCProxy alloc];
        v7 = [v13 exportedObject];
        v8 = [v13 queue];
        [(NRMockXPCProxy *)v6 initWithBlahBlahBlahTarget:v7 queue:v8 async:*(a1 + 48)];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v6;

        v11 = 24;
        if (*(a1 + 48))
        {
          v11 = 32;
        }

        WeakRetained = objc_storeWeak((*(a1 + 32) + v11), *(*(*(a1 + 40) + 8) + 40));
        v3 = v13;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  remoteObjectProxy = [(NRMockServerNSXPCConnection *)self remoteObjectProxy];
  v6 = remoteObjectProxy;
  if (handlerCopy && !remoteObjectProxy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_listener);
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = WeakRetained[4];
    }

    else
    {
      v9 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NRMockServerNSXPCConnection_remoteObjectProxyWithErrorHandler___block_invoke;
    block[3] = &unk_1E86DAE70;
    v12 = handlerCopy;
    dispatch_async(v9, block);
  }

  return v6;
}

void __65__NRMockServerNSXPCConnection_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"NSXPCConnectionInvalid: Did mock client stop running?";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:v3 code:4099 userInfo:v4];
  (*(v1 + 16))(v1, v5);

  v6 = *MEMORY[0x1E69E9840];
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(NRMockServerNSXPCConnection *)self remoteObjectProxyAsync:0];
  v6 = v5;
  if (handlerCopy && !v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_listener);
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = WeakRetained[4];
    }

    else
    {
      v9 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__NRMockServerNSXPCConnection_synchronousRemoteObjectProxyWithErrorHandler___block_invoke;
    block[3] = &unk_1E86DAE70;
    v12 = handlerCopy;
    dispatch_async(v9, block);
  }

  return v6;
}

void __76__NRMockServerNSXPCConnection_synchronousRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"NSXPCConnectionInvalid: Did mock client stop running?";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:v3 code:4099 userInfo:v4];
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
  block[2] = __41__NRMockServerNSXPCConnection_invalidate__block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_sync(isa, block);
}

- (void)dealloc
{
  isa = +[NRMockXPCStuff sharedInstance];
  v4 = isa;
  if (isa)
  {
    isa = isa[2].isa;
  }

  dispatch_sync(isa, &__block_literal_global_0);

  v5.receiver = self;
  v5.super_class = NRMockServerNSXPCConnection;
  [(NRMockServerNSXPCConnection *)&v5 dealloc];
}

- (int)processIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);
  v3 = (WeakRetained >> 8) % 10000;

  return v3;
}

@end