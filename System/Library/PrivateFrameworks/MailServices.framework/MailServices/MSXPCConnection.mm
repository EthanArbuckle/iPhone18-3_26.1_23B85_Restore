@interface MSXPCConnection
- (MSXPCConnection)initWithProtocol:(id)protocol;
- (id)_connection;
- (id)_connectionForPromise:(id)promise;
- (id)_nts_wrappedInterruptionHandler;
- (id)description;
- (id)exportedInterface;
- (id)exportedObject;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (id)remoteObjectInterface;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (int)auditSessionIdentifier;
- (int)processIdentifier;
- (unsigned)effectiveGroupIdentifier;
- (unsigned)effectiveUserIdentifier;
- (void)_finishPromise:(id)promise withConnection:(id)connection error:(id)error;
- (void)_invalidatePromise:(id)promise;
- (void)_invokeInterruptionHandlerForPromise:(id)promise;
- (void)_queue_invokeInvalidationHandler;
- (void)_sendInvocation:(id)invocation remoteInterface:(id)interface remoteProxy:(id)proxy errorHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)setExportedInterface:(id)interface;
- (void)setExportedObject:(id)object;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
- (void)setRemoteObjectInterface:(id)interface;
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
  future = [(EFPromise *)self->_connectionPromise future];
  [future cancel];

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

- (MSXPCConnection)initWithProtocol:(id)protocol
{
  protocolCopy = protocol;
  v17.receiver = self;
  v17.super_class = MSXPCConnection;
  v6 = [(MSXPCConnection *)&v17 init];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromProtocol(protocolCopy);
    v10 = [v7 stringWithFormat:@"com.apple.mailservices.%@.%@.%p", v8, v9, v6];

    v11 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v6->_lock;
    v6->_lock = v11;

    objc_storeStrong(&v6->_protocol, protocol);
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

- (void)setRemoteObjectInterface:(id)interface
{
  interfaceCopy = interface;
  [(NSLock *)self->_lock lock];
  objc_storeStrong(&self->_remoteObjectInterface, interface);
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

- (void)setExportedInterface:(id)interface
{
  interfaceCopy = interface;
  [(NSLock *)self->_lock lock];
  objc_storeStrong(&self->_exportedInterface, interface);
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

- (void)setExportedObject:(id)object
{
  objectCopy = object;
  [(NSLock *)self->_lock lock];
  objc_storeStrong(&self->_exportedObject, object);
  v6 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
  [v6 a2];

  [(NSLock *)self->_lock unlock];
}

- (id)_connectionForPromise:(id)promise
{
  future = [promise future];
  v4 = [future resultIfAvailable:0];

  return v4;
}

- (void)_invalidatePromise:(id)promise
{
  promiseCopy = promise;
  future = [promiseCopy future];
  [future cancel];

  v5 = [(MSXPCConnection *)self _connectionForPromise:promiseCopy];
  [v5 invalidate];
}

- (void)_finishPromise:(id)promise withConnection:(id)connection error:(id)error
{
  promiseCopy = promise;
  connectionCopy = connection;
  errorCopy = error;
  if (([promiseCopy finishWithResult:connectionCopy error:errorCopy] & 1) == 0)
  {
    [connectionCopy invalidate];
  }
}

void __50__MSXPCConnection__nts_wrappedInterruptionHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invokeInterruptionHandlerForPromise:*(a1 + 32)];
}

- (void)_invokeInterruptionHandlerForPromise:(id)promise
{
  promiseCopy = promise;
  [(NSLock *)self->_lock lock];
  future = [(EFPromise *)promiseCopy future];
  [future cancel];

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    dispatch_async(self->_queue, interruptionHandler);
  }

  v6 = [(MSXPCConnection *)self _connectionForPromise:promiseCopy];
  [v6 setInterruptionHandler:0];
  [v6 setInvalidationHandler:0];
  [v6 invalidate];
  connectionPromise = self->_connectionPromise;
  if (connectionPromise == promiseCopy)
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

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  [(NSLock *)self->_lock lock];
  if (self->_interruptionHandler != handlerCopy)
  {
    v4 = MEMORY[0x1DA71BD00](handlerCopy);
    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = v4;

    v6 = [(MSXPCConnection *)self _connectionForPromise:self->_connectionPromise];
    if (v6)
    {
      _nts_wrappedInterruptionHandler = [(MSXPCConnection *)self _nts_wrappedInterruptionHandler];
      [v6 setInterruptionHandler:_nts_wrappedInterruptionHandler];
      [v6 setInvalidationHandler:_nts_wrappedInterruptionHandler];
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

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  [(NSLock *)self->_lock lock];
  v4 = MEMORY[0x1DA71BD00](handlerCopy);
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
  _connection = [(MSXPCConnection *)self _connection];
  auditSessionIdentifier = [_connection auditSessionIdentifier];

  return auditSessionIdentifier;
}

- (int)processIdentifier
{
  _connection = [(MSXPCConnection *)self _connection];
  processIdentifier = [_connection processIdentifier];

  return processIdentifier;
}

- (unsigned)effectiveUserIdentifier
{
  _connection = [(MSXPCConnection *)self _connection];
  effectiveUserIdentifier = [_connection effectiveUserIdentifier];

  return effectiveUserIdentifier;
}

- (unsigned)effectiveGroupIdentifier
{
  _connection = [(MSXPCConnection *)self _connection];
  effectiveGroupIdentifier = [_connection effectiveGroupIdentifier];

  return effectiveGroupIdentifier;
}

- (id)remoteObjectProxy
{
  v2 = [[_MSXPCRemoteProxy alloc] initWithConnection:self interface:self->_remoteObjectInterface errorHandler:0];

  return v2;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[_MSXPCRemoteProxy alloc] initWithConnection:self interface:self->_remoteObjectInterface errorHandler:handlerCopy];

  return v5;
}

- (void)_sendInvocation:(id)invocation remoteInterface:(id)interface remoteProxy:(id)proxy errorHandler:(id)handler
{
  invocationCopy = invocation;
  interfaceCopy = interface;
  proxyCopy = proxy;
  handlerCopy = handler;
  v14 = handlerCopy;
  v15 = atomic_load(&self->_locallyInvalidated);
  if ((v15 & 1) == 0)
  {
    [invocationCopy retainArguments];
    [(NSLock *)self->_lock lock];
    if (!self->_connectionPromise)
    {
      v27 = interfaceCopy;
      v18 = objc_alloc_init(MEMORY[0x1E699B868]);
      objc_storeStrong(&self->_connectionPromise, v18);
      v19 = objc_alloc_init(MSXPCEndpoint);
      [(MSMailDefaultService *)v19 setShouldLaunchMobileMail:self->_shouldLaunchMobileMail];
      protocol = [interfaceCopy protocol];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_2;
      v36[3] = &unk_1E855F150;
      v36[4] = self;
      v37 = interfaceCopy;
      v38 = proxyCopy;
      v40 = v14;
      v21 = v18;
      v39 = v21;
      [(MSXPCEndpoint *)v19 connectionForProtocol:protocol completionHandler:v36];

      interfaceCopy = v27;
    }

    currentProgress = [MEMORY[0x1E696AE38] currentProgress];

    if (currentProgress)
    {
      v23 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    }

    else
    {
      v23 = 0;
    }

    future = [(EFPromise *)self->_connectionPromise future];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_3;
    v30[3] = &unk_1E855F1A0;
    v31 = proxyCopy;
    v25 = v14;
    v35 = v25;
    selfCopy = self;
    v17 = v23;
    v33 = v17;
    v34 = invocationCopy;
    [future addSuccessBlock:v30];

    future2 = [(EFPromise *)self->_connectionPromise future];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke_5;
    v28[3] = &unk_1E855F1F0;
    v28[4] = self;
    v29 = v25;
    [future2 addFailureBlock:v28];

    [(NSLock *)self->_lock unlock];
    goto LABEL_10;
  }

  if (handlerCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MSXPCConnection__sendInvocation_remoteInterface_remoteProxy_errorHandler___block_invoke;
    block[3] = &unk_1E855EF38;
    v42 = handlerCopy;
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