@interface CAMNebulaDaemonConnectionManager
+ (id)_daemonProtocolInterface;
- (CAMNebulaDaemonConnectionManager)initWithConnection:(id)connection name:(id)name bundleIdentifier:(id)identifier queue:(id)queue clientAccess:(id)access allowedProtocol:(id)protocol;
- (CAMNebulaDaemonConnectionManagerDelegate)delegate;
- (NSString)description;
- (id)_targetsForSelector:(SEL)selector;
- (void)_getProxyForExecutingBlock:(id)block;
- (void)addTarget:(id)target forProtocol:(id)protocol;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)forceStopTimelapseCaptureWithReasons:(int64_t)reasons;
- (void)nebulaDaemonDidCompleteLocalVideoPersistenceWithResult:(id)result;
- (void)pingAfterInterruption;
@end

@implementation CAMNebulaDaemonConnectionManager

- (CAMNebulaDaemonConnectionManager)initWithConnection:(id)connection name:(id)name bundleIdentifier:(id)identifier queue:(id)queue clientAccess:(id)access allowedProtocol:(id)protocol
{
  connectionCopy = connection;
  nameCopy = name;
  identifierCopy = identifier;
  queueCopy = queue;
  accessCopy = access;
  protocolCopy = protocol;
  v40.receiver = self;
  v40.super_class = CAMNebulaDaemonConnectionManager;
  v20 = [(CAMNebulaDaemonConnectionManager *)&v40 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_bundleIdentifier, identifier);
    objc_storeStrong(&v21->__connection, connection);
    v22 = [nameCopy copy];
    name = v21->__name;
    v21->__name = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tasksPerIdentifier = v21->__tasksPerIdentifier;
    v21->__tasksPerIdentifier = v24;

    objc_storeStrong(&v21->__queue, queue);
    v26 = [accessCopy copy];
    clientAccess = v21->_clientAccess;
    v21->_clientAccess = v26;

    objc_storeStrong(&v21->_allowedProtocol, protocol);
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    registeredTargets = v21->__registeredTargets;
    v21->__registeredTargets = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    registeredProtocols = v21->__registeredProtocols;
    v21->__registeredProtocols = v30;

    _daemonProtocolInterface = [objc_opt_class() _daemonProtocolInterface];
    _clientProtocolInterface = [objc_opt_class() _clientProtocolInterface];
    [connectionCopy setExportedObject:v21];
    [connectionCopy setExportedInterface:_daemonProtocolInterface];
    [connectionCopy setRemoteObjectInterface:_clientProtocolInterface];
    [connectionCopy _setQueue:v21->__queue];
    [connectionCopy setDelegate:v21];
    objc_initWeak(&location, connectionCopy);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __112__CAMNebulaDaemonConnectionManager_initWithConnection_name_bundleIdentifier_queue_clientAccess_allowedProtocol___block_invoke;
    v36[3] = &unk_1E76F7DC0;
    objc_copyWeak(&v38, &location);
    v37 = v21;
    [connectionCopy setInvalidationHandler:v36];
    [connectionCopy resume];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v21;
}

void __112__CAMNebulaDaemonConnectionManager_initWithConnection_name_bundleIdentifier_queue_clientAccess_allowedProtocol___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [*(*(a1 + 32) + 40) setDelegate:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v5 daemonConnectionManagerHasBeenDisconnected:*(a1 + 32)];

    [v6 setInvalidationHandler:0];
    WeakRetained = v6;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = self->__name;
  processIdentifier = [(NSXPCConnection *)self->__connection processIdentifier];
  v7 = NSStringFromProtocol(self->_allowedProtocol);
  v8 = [v3 stringWithFormat:@"<%@ %p '%@' pid: %d allowed: %@>", v4, self, name, processIdentifier, v7];

  return v8;
}

- (void)addTarget:(id)target forProtocol:(id)protocol
{
  if (target && protocol)
  {
    registeredTargets = self->__registeredTargets;
    protocolCopy = protocol;
    [(NSMutableArray *)registeredTargets addObject:target];
    [(NSMutableArray *)self->__registeredProtocols addObject:protocolCopy];
  }
}

+ (id)_daemonProtocolInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F173BC28];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_enqueueIrisVideoJobs_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  v26 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  invocationCopy = invocation;
  v11 = invocationCopy;
  if (replyCopy)
  {
    [invocationCopy invoke];
  }

  else
  {
    selector = [invocationCopy selector];
    if (protocol_getMethodDescription(self->_allowedProtocol, selector, 1, 1).name)
    {
      v13 = [(CAMNebulaDaemonConnectionManager *)self _targetsForSelector:selector];
      if ([v13 count])
      {
        v14 = os_transaction_create();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __72__CAMNebulaDaemonConnectionManager_connection_handleInvocation_isReply___block_invoke;
        block[3] = &unk_1E76F7938;
        v19 = v13;
        v20 = v11;
        v21 = v14;
        v15 = v14;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        [v11 invoke];
      }
    }

    else
    {
      v16 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = NSStringFromSelector(a2);
        *buf = 138543618;
        selfCopy = self;
        v24 = 2114;
        v25 = v17;
        _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ tried to call %{public}@ but is not allowed to", buf, 0x16u);
      }
    }
  }
}

void __72__CAMNebulaDaemonConnectionManager_connection_handleInvocation_isReply___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) invokeWithTarget:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_targetsForSelector:(SEL)selector
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(NSMutableArray *)self->__registeredProtocols count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [(NSMutableArray *)self->__registeredTargets objectAtIndexedSubscript:i];
      v10 = [(NSMutableArray *)self->__registeredProtocols objectAtIndexedSubscript:i];
      if (protocol_getMethodDescription(v10, selector, 1, 1).name)
      {
        [v5 addObject:v9];
      }
    }
  }

  if (sel_pingAfterInterruption == selector)
  {
    [v5 addObject:self];
  }

  return v5;
}

- (void)pingAfterInterruption
{
  v2 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Handling ping from client after interruption", v3, 2u);
  }
}

- (void)_getProxyForExecutingBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  queue = self->__queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CAMNebulaDaemonConnectionManager__getProxyForExecutingBlock___block_invoke;
  block[3] = &unk_1E76FA3A0;
  objc_copyWeak(&v9, &location);
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__CAMNebulaDaemonConnectionManager__getProxyForExecutingBlock___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__CAMNebulaDaemonConnectionManager__getProxyForExecutingBlock___block_invoke_77;
  v6[3] = &unk_1E76FA378;
  v6[4] = &v7;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v8[5]);
  }

  _Block_object_dispose(&v7, 8);
}

void __63__CAMNebulaDaemonConnectionManager__getProxyForExecutingBlock___block_invoke_77(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Error getting proxy object %{public}@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)forceStopTimelapseCaptureWithReasons:(int64_t)reasons
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__CAMNebulaDaemonConnectionManager_forceStopTimelapseCaptureWithReasons___block_invoke;
  v3[3] = &__block_descriptor_40_e53_v24__0___CAMNebulaDaemonClientProtocol__8__NSError_16l;
  v3[4] = reasons;
  [(CAMNebulaDaemonConnectionManager *)self _getProxyForExecutingBlock:v3];
}

- (void)nebulaDaemonDidCompleteLocalVideoPersistenceWithResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__CAMNebulaDaemonConnectionManager_nebulaDaemonDidCompleteLocalVideoPersistenceWithResult___block_invoke;
  v6[3] = &unk_1E76FA3E8;
  v7 = resultCopy;
  v5 = resultCopy;
  [(CAMNebulaDaemonConnectionManager *)self _getProxyForExecutingBlock:v6];
}

- (CAMNebulaDaemonConnectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end