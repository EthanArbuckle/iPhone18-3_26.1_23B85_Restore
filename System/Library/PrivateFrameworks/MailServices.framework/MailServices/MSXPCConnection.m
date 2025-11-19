@interface MSXPCConnection
- (MSXPCConnection)initWithProtocol:(id)a3;
- (id)_connection;
- (id)_connectionForPromise:(id)a3;
- (id)_nts_wrappedInterruptionHandler;
- (id)description;
- (id)exportedInterface;
- (id)exportedObject;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (id)remoteObjectInterface;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (int)auditSessionIdentifier;
- (int)processIdentifier;
- (unsigned)effectiveGroupIdentifier;
- (unsigned)effectiveUserIdentifier;
- (void)_finishPromise:(id)a3 withConnection:(id)a4 error:(id)a5;
- (void)_invalidatePromise:(id)a3;
- (void)_invokeInterruptionHandlerForPromise:(id)a3;
- (void)_queue_invokeInvalidationHandler;
- (void)_sendInvocation:(id)a3 remoteInterface:(id)a4 remoteProxy:(id)a5 errorHandler:(id)a6;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)setExportedInterface:(id)a3;
- (void)setExportedObject:(id)a3;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
- (void)setRemoteObjectInterface:(id)a3;
- (void)suspend;
@end

@implementation MSXPCConnection

- (void)resume
{
  [(NSLock *)self->_lock lock];
  ++self->_resumeCount;
  v3 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
  [v3 resume];

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)_nts_wrappedInterruptionHandler
{
  v3 = self->_connectionPromise;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__MSXPCConnection__nts_wrappedInterruptionHandler__block_invoke;
  v8[3] = &unk_1E855F128;
  objc_copyWeak(&v10, &location);
  v9 = v3;
  v4 = v3;
  v5 = MEMORY[0x1DA71BD00](v8);
  v6 = [v5 copy];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_locallyInvalidated, 1u) & 1) == 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__MSXPCConnection_invalidate__block_invoke;
    block[3] = &unk_1E855EFF0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_queue_invokeInvalidationHandler
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSLock *)self->_lock lock];
  v7 = [(EFPromise *)self->_connectionPromise future];
  [v7 cancel];

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  v8 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
  [v8 setInterruptionHandler:0];
  [v8 setInvalidationHandler:0];
  [v8 invalidate];
  connectionPromise = self->_connectionPromise;
  self->_connectionPromise = 0;

  v5 = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  [(NSLock *)self->_lock unlock];
}

- (void)dealloc
{
  [(MSXPCConnection *)self _invalidatePromise:self->_connectionPromise];
  v3.receiver = self;
  v3.super_class = MSXPCConnection;
  [(MSXPCConnection *)&v3 dealloc];
}

- (MSXPCConnection)initWithProtocol:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = MSXPCConnection;
  v6 = [(MSXPCConnection *)&v17 init];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromProtocol(v5);
    v10 = [v7 stringWithFormat:@"com.apple.mailservices.%@.%@.%p", v8, v9, v6];

    v11 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v6->_lock;
    v6->_lock = v11;

    objc_storeStrong(&v6->_protocol, a3);
    v13 = dispatch_queue_create([v10 UTF8String], 0);
    queue = v6->_queue;
    v6->_queue = v13;

    v6->_shouldLaunchMobileMail = 1;
    atomic_store(0, &v6->_locallyInvalidated);
    v15 = v6;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> connection for protocol %s", v4, self, protocol_getName(self->_protocol)];
}

- (id)remoteObjectInterface
{
  [(NSLock *)self->_lock lock];
  v3 = self->_remoteObjectInterface;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setRemoteObjectInterface:(id)a3
{
  v7 = a3;
  [(NSLock *)self->_lock lock];
  objc_storeStrong(&self->_remoteObjectInterface, a3);
  v6 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
  [v6 a2];

  [(NSLock *)self->_lock unlock];
}

- (id)exportedInterface
{
  [(NSLock *)self->_lock lock];
  v3 = self->_exportedInterface;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setExportedInterface:(id)a3
{
  v7 = a3;
  [(NSLock *)self->_lock lock];
  objc_storeStrong(&self->_exportedInterface, a3);
  v6 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
  [v6 a2];

  [(NSLock *)self->_lock unlock];
}

- (id)exportedObject
{
  [(NSLock *)self->_lock lock];
  v3 = self->_exportedObject;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setExportedObject:(id)a3
{
  v7 = a3;
  [(NSLock *)self->_lock lock];
  objc_storeStrong(&self->_exportedObject, a3);
  v6 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
  [v6 a2];

  [(NSLock *)self->_lock unlock];
}

- (id)_connectionForPromise:(id)a3
{
  v3 = [a3 future];
  v4 = [v3 resultIfAvailable:0];

  return v4;
}

- (void)_invalidatePromise:(id)a3
{
  v6 = a3;
  v4 = [v6 future];
  [v4 cancel];

  v5 = [(MSXPCConnection *)self _connectionForPromise:v6];
  [v5 invalidate];
}

- (void)_finishPromise:(id)a3 withConnection:(id)a4 error:(id)a5
{
  v9 = a3;
  v7 = a4;
  v8 = a5;
  if (([v9 finishWithResult:v7 error:v8] & 1) == 0)
  {
    [v7 invalidate];
  }
}

void __50__MSXPCConnection__nts_wrappedInterruptionHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invokeInterruptionHandlerForPromise:*(a1 + 32)];
}

- (void)_invokeInterruptionHandlerForPromise:(id)a3
{
  v8 = a3;
  [(NSLock *)self->_lock lock];
  v4 = [(EFPromise *)v8 future];
  [v4 cancel];

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    dispatch_async(self->_queue, interruptionHandler);
  }

  v6 = [(MSXPCConnection *)self _connectionForPromise:v8];
  [v6 setInterruptionHandler:0];
  [v6 setInvalidationHandler:0];
  [v6 invalidate];
  connectionPromise = self->_connectionPromise;
  if (connectionPromise == v8)
  {
    self->_connectionPromise = 0;
  }

  [(NSLock *)self->_lock unlock];
}

- (id)interruptionHandler
{
  [(NSLock *)self->_lock lock];
  v3 = MEMORY[0x1DA71BD00](self->_interruptionHandler);
  [(NSLock *)self->_lock unlock];
  v4 = MEMORY[0x1DA71BD00](v3);

  return v4;
}

- (void)setInterruptionHandler:(id)a3
{
  v8 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_interruptionHandler != v8)
  {
    v4 = MEMORY[0x1DA71BD00](v8);
    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = v4;

    v6 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
    if (v6)
    {
      v7 = [(MSXPCConnection *)self _nts_wrappedInterruptionHandler];
      [v6 setInterruptionHandler:v7];
      [v6 setInvalidationHandler:v7];
    }
  }

  [(NSLock *)self->_lock unlock];
}

- (id)invalidationHandler
{
  [(NSLock *)self->_lock lock];
  v3 = MEMORY[0x1DA71BD00](self->_invalidationHandler);
  [(NSLock *)self->_lock unlock];
  v4 = MEMORY[0x1DA71BD00](v3);

  return v4;
}

- (void)setInvalidationHandler:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  v4 = MEMORY[0x1DA71BD00](v6);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v4;

  [(NSLock *)self->_lock unlock];
}

- (void)suspend
{
  [(NSLock *)self->_lock lock];
  v3 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
  [v3 suspend];

  --self->_resumeCount;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)_connection
{
  [(NSLock *)self->_lock lock];
  v3 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (int)auditSessionIdentifier
{
  v2 = [(MSXPCConnection *)self _connection];
  v3 = [v2 auditSessionIdentifier];

  return v3;
}

- (int)processIdentifier
{
  v2 = [(MSXPCConnection *)self _connection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (unsigned)effectiveUserIdentifier
{
  v2 = [(MSXPCConnection *)self _connection];
  v3 = [v2 effectiveUserIdentifier];

  return v3;
}

- (unsigned)effectiveGroupIdentifier
{
  v2 = [(MSXPCConnection *)self _connection];
  v3 = [v2 effectiveGroupIdentifier];

  return v3;
}

- (id)remoteObjectProxy
{
  v2 = [[_MSXPCRemoteProxy alloc] initWithConnection:self interface:self->_remoteObjectInterface errorHandler:0];

  return v2;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [[_MSXPCRemoteProxy alloc] initWithConnection:self interface:self->_remoteObjectInterface errorHandler:v4];

  return v5;
}

- (void)_sendInvocation:(id)a3 remoteInterface:(id)a4 remoteProxy:(id)a5 errorHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = atomic_load(&self->_locallyInvalidated);
  if ((v15 & 1) == 0)
  {
    [v10 retainArguments];
    [(NSLock *)self->_lock lock];
    if (!self->_connectionPromise)
    {
      v27 = v11;
      v18 = objc_alloc_init(MEMORY[0x1E699B868]);
      objc_storeStrong(&self->_connectionPromise, v18);
      v19 = objc_alloc_init(MSXPCEndpoint);
      [(MSMailDefaultService *)v19 setShouldLaunchMobileMail:self->_shouldLaunchMobileMail];
      v20 = [v11 protocol];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_2;
      v36[3] = &unk_1E855F150;
      v36[4] = self;
      v37 = v11;
      v38 = v12;
      v40 = v14;
      v21 = v18;
      v39 = v21;
      [(MSXPCEndpoint *)v19 connectionForProtocol:v20 completionHandler:v36];

      v11 = v27;
    }

    v22 = [MEMORY[0x1E696AE38] currentProgress];

    if (v22)
    {
      v23 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    }

    else
    {
      v23 = 0;
    }

    v24 = [(EFPromise *)self->_connectionPromise future];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_3;
    v30[3] = &unk_1E855F1A0;
    v31 = v12;
    v25 = v14;
    v35 = v25;
    v32 = self;
    v17 = v23;
    v33 = v17;
    v34 = v10;
    [v24 addSuccessBlock:v30];

    v26 = [(EFPromise *)self->_connectionPromise future];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_5;
    v28[3] = &unk_1E855F1F0;
    v28[4] = self;
    v29 = v25;
    [v26 addFailureBlock:v28];

    [(NSLock *)self->_lock unlock];
    goto LABEL_10;
  }

  if (v13)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke;
    block[3] = &unk_1E855EF38;
    v42 = v13;
    dispatch_async(queue, block);
    v17 = v42;
LABEL_10:
  }
}

void __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  [*(*(a1 + 32) + 160) lock];
  v6 = v14;
  if (v14)
  {
    [v14 setRemoteObjectInterface:*(a1 + 40)];
    [v14 setExportedInterface:*(*(a1 + 32) + 192)];
    [v14 setExportedObject:*(*(a1 + 32) + 200)];
    v7 = [*(a1 + 32) _nts_wrappedInterruptionHandler];
    [v14 setInterruptionHandler:v7];
    [v14 setInvalidationHandler:v7];
    [v14 _setQueue:*(*(a1 + 32) + 168)];
    v8 = *(*(a1 + 32) + 224);
    if (v8 < 1)
    {
      v10 = v14;
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_6:
        v11 = *(a1 + 48);
        v12 = [v10 remoteObjectProxyWithErrorHandler:*(a1 + 64)];
        [v11 ___setNSXPCRemoteObjectProxy:v12];

LABEL_7:
        v6 = v14;
        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
      v10 = v14;
      do
      {
        [v10 resume];
        ++v9;
        v8 = *(*(a1 + 32) + 224);
        v10 = v14;
      }

      while (v9 < v8);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    do
    {
      [v10 suspend];
      v13 = __CFADD__(v8++, 1);
      v10 = v14;
    }

    while (!v13);
    goto LABEL_6;
  }

  if (!v5)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MailServices" code:3 userInfo:0];
    goto LABEL_7;
  }

LABEL_9:
  [*(a1 + 32) _finishPromise:*(a1 + 56) withConnection:v6 error:v5];
  [*(*(a1 + 32) + 160) unlock];
}

void __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ___nsxpc_remoteObjectProxy];
  if (!v4)
  {
    v4 = [v3 remoteObjectProxyWithErrorHandler:*(a1 + 64)];
    [*(a1 + 32) ___setNSXPCRemoteObjectProxy:v4];
  }

  v5 = *(*(a1 + 40) + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_4;
  block[3] = &unk_1E855F178;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

uint64_t __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
  [*(a1 + 40) invokeWithTarget:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 resignCurrent];
}

void __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 168);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_6;
    v9 = &unk_1E855F1C8;
    v11 = v4;
    v10 = v3;
    dispatch_async(v5, &v6);
  }

  [*(a1 + 32) invalidate];
}

@end