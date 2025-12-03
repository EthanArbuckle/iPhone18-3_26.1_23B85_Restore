@interface XPCServiceListener
- (XPCServiceListener)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate;
- (id)debugDescription;
- (void)_workQueueShutDownServiceConnections:(id)connections index:(unint64_t)index completionBlock:(id)block;
- (void)serviceConnectionDidDisconnect:(id)disconnect;
- (void)shutDownCompletionBlock:(id)block;
- (void)start;
- (void)workQueueHandleIncomingConnection:(id)connection;
@end

@implementation XPCServiceListener

- (void)serviceConnectionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(6, @"%@: Service connection disconnected.", v5, v6, v7, v8, v9, v10, self);
  }

  workQueue = [(XPCServiceListener *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__XPCServiceListener_serviceConnectionDidDisconnect___block_invoke;
  block[3] = &unk_2798A5260;
  block[4] = self;
  v14 = disconnectCopy;
  v12 = disconnectCopy;
  dispatch_async(workQueue, block);
}

- (void)workQueueHandleIncomingConnection:(id)connection
{
  connection = connection;
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(6, @"%@: Client connected: %p", v4, v5, v6, v7, v8, v9, self);
  }

  v10 = self->_delegate;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(XPCServiceListenerDelegate *)v10 XPCServiceListener:self shouldAcceptNewConnection:connection])
  {
    xpc_connection_cancel(connection);
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 6))
    {
      xpc_connection_get_pid(connection);
      _XPCLog(6, @"%@: Rejecting client connection from PID %d", v21, v22, v23, v24, v25, v26, self);
    }
  }

  else
  {
    serviceName = self->_serviceName;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPCKit.%@.client.%lu", serviceName, self->_clientCount];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    v14 = [[XPCServiceConnection alloc] initWithServiceName:self->_serviceName client:connection queue:v13];
    [(XPCServiceConnection *)v14 setServiceListener:self];
    [(NSMutableSet *)self->_serviceConnections addObject:v14];
    ++self->_clientCount;
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 6))
    {
      xpc_connection_get_pid(connection);
      _XPCLog(6, @"%@: Established new client connection from PID %d", v15, v16, v17, v18, v19, v20, self);
    }

    [(XPCServiceListenerDelegate *)v10 XPCServiceListener:self didReceiveNewConnection:v14];
    [(XPCServiceConnection *)v14 resume];
  }
}

- (void)shutDownCompletionBlock:(id)block
{
  blockCopy = block;
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    serviceName = self->_serviceName;
    _XPCLog(6, @"%@: Shutting down service listener for service name “%@”.", v5, v6, v7, v8, v9, v10, self);
  }

  workQueue = [(XPCServiceListener *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__XPCServiceListener_shutDownCompletionBlock___block_invoke;
  block[3] = &unk_2798A5170;
  block[4] = self;
  v15 = blockCopy;
  v12 = blockCopy;
  dispatch_async(workQueue, block);
}

void __46__XPCServiceListener_shutDownCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    xpc_connection_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    v2 = *(a1 + 32);
  }

  v6 = [*(v2 + 40) allObjects];
  v7 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__XPCServiceListener_shutDownCompletionBlock___block_invoke_2;
  v8[3] = &unk_2798A5170;
  v8[4] = v7;
  v9 = *(a1 + 40);
  [v7 _workQueueShutDownServiceConnections:v6 index:0 completionBlock:v8];
}

uint64_t __46__XPCServiceListener_shutDownCompletionBlock___block_invoke_2(uint64_t a1)
{
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(6, @"%@: Shutdown complete.", v2, v3, v4, v5, v6, v7, *(a1 + 32));
  }

  result = *(a1 + 40);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (void)_workQueueShutDownServiceConnections:(id)connections index:(unint64_t)index completionBlock:(id)block
{
  connectionsCopy = connections;
  blockCopy = block;
  if ([connectionsCopy count] <= index)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    v10 = [connectionsCopy objectAtIndex:index];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__XPCServiceListener__workQueueShutDownServiceConnections_index_completionBlock___block_invoke;
    v11[3] = &unk_2798A5238;
    v11[4] = self;
    v12 = connectionsCopy;
    indexCopy = index;
    v13 = blockCopy;
    [v10 shutDownCompletionBlock:v11];
  }
}

void __81__XPCServiceListener__workQueueShutDownServiceConnections_index_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__XPCServiceListener__workQueueShutDownServiceConnections_index_completionBlock___block_invoke_2;
  v7[3] = &unk_2798A5238;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v4 = v3;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v4;
  v10 = v5;
  v9 = v6;
  dispatch_async(v2, v7);
}

- (void)start
{
  listener = [(XPCServiceListener *)self listener];
  xpc_connection_resume(listener);

  if (_shouldLogBlock)
  {
    if ((*(_shouldLogBlock + 16))())
    {
      serviceName = self->_serviceName;
      _XPCLog(6, @"%@: Service listener now listening for events for service name %@.", v4, v5, v6, v7, v8, v9, self);
    }
  }
}

- (XPCServiceListener)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate
{
  nameCopy = name;
  queueCopy = queue;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = XPCServiceListener;
  v12 = [(XPCServiceListener *)&v31 init];
  if (v12)
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
    {
      _XPCLog(6, @"Creating service listener for service name %@.", v13, v14, v15, v16, v17, v18, nameCopy);
    }

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    serviceConnections = v12->_serviceConnections;
    v12->_serviceConnections = v19;

    objc_storeStrong(&v12->_workQueue, queue);
    v12->_delegate = delegateCopy;
    objc_storeStrong(&v12->_serviceName, name);
    mach_service = xpc_connection_create_mach_service([nameCopy UTF8String], v12->_workQueue, 1uLL);
    listener = v12->_listener;
    v12->_listener = mach_service;

    objc_initWeak(&location, v12);
    v23 = v12->_listener;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __57__XPCServiceListener_initWithServiceName_queue_delegate___block_invoke;
    handler[3] = &unk_2798A5210;
    v24 = v12;
    v28 = v24;
    objc_copyWeak(&v29, &location);
    xpc_connection_set_event_handler(v23, handler);
    v25 = v24;
    objc_destroyWeak(&v29);

    objc_destroyWeak(&location);
  }

  return v12;
}

void __57__XPCServiceListener_initWithServiceName_queue_delegate___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = MEMORY[0x259C89E20]();
  if (v3 == MEMORY[0x277D86450])
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
    {
      _XPCLog(6, @"%@: Received new client connection.", v10, v11, v12, v13, v14, v15, *(a1 + 32));
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained workQueueHandleIncomingConnection:xdict];
  }

  else if (v3 == MEMORY[0x277D86480])
  {
    if (xdict == MEMORY[0x277D863F8])
    {
      if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
      {
        _XPCLog(6, @"%@: Client disconnected.", v24, v25, v26, v27, v28, v29, *(a1 + 32));
      }
    }

    else if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
    {
      v17 = *(a1 + 32);
      xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
      _XPCLog(3, @"%@: Found XPC error related to a client connection: %s", v18, v19, v20, v21, v22, v23, v17);
    }

    v30 = *(*(a1 + 32) + 32);
    if (v30)
    {
      xpc_connection_cancel(v30);
      v31 = *(a1 + 32);
      v32 = *(v31 + 32);
      *(v31 + 32) = 0;
    }
  }

  else if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(3, @"%@: Ignoring unexpected XPC event type.", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = XPCServiceListener;
  v4 = [(XPCServiceListener *)&v8 description];
  listener = self->_listener;
  v6 = [v3 stringWithFormat:@"%@: name %@, connection %p, delegate %p", v4, self->_serviceName, listener, self->_delegate];

  return v6;
}

@end