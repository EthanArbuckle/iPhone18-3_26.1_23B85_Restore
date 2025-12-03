@interface HDXPCListener
+ (id)serviceListener;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (HDXPCListener)init;
- (HDXPCListener)initWithLabel:(id)label;
- (HDXPCListener)initWithMachServiceName:(id)name;
- (HDXPCListener)initWithUnderlyingListener:(id)listener label:(id)label;
- (HDXPCListenerClientProvider)clientProvider;
- (HDXPCListenerDelegate)delegate;
- (NSArray)allClients;
- (void)_handleConnectionInvalidationForClient:(id)client exportedObject:(id)object;
- (void)_handleInterruptionWithClient:(id)client exportedObject:(id)object;
- (void)_handleInvalidationWithClient:(id)client exportedObject:(id)object;
- (void)dealloc;
@end

@implementation HDXPCListener

- (HDXPCListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HDXPCListenerClientProvider)clientProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_clientProvider);

  return WeakRetained;
}

- (void)dealloc
{
  [(HDXPCListener *)self invalidate];
  v3.receiver = self;
  v3.super_class = HDXPCListener;
  [(HDXPCListener *)&v3 dealloc];
}

- (HDXPCListener)init
{
  anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HDXPCListener *)self initWithUnderlyingListener:anonymousListener label:v5];

  return v6;
}

- (HDXPCListener)initWithLabel:(id)label
{
  v4 = MEMORY[0x277CCAE98];
  labelCopy = label;
  anonymousListener = [v4 anonymousListener];
  v7 = [(HDXPCListener *)self initWithUnderlyingListener:anonymousListener label:labelCopy];

  return v7;
}

- (HDXPCListener)initWithMachServiceName:(id)name
{
  v4 = MEMORY[0x277CCAE98];
  nameCopy = name;
  v6 = [[v4 alloc] initWithMachServiceName:nameCopy];
  v7 = [(HDXPCListener *)self initWithUnderlyingListener:v6 label:nameCopy];

  return v7;
}

- (HDXPCListener)initWithUnderlyingListener:(id)listener label:(id)label
{
  listenerCopy = listener;
  labelCopy = label;
  if (!listenerCopy)
  {
    [HDXPCListener initWithUnderlyingListener:a2 label:self];
  }

  delegate = [listenerCopy delegate];

  if (delegate)
  {
    [HDXPCListener initWithUnderlyingListener:a2 label:self];
  }

  v16.receiver = self;
  v16.super_class = HDXPCListener;
  v11 = [(HDXPCListener *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_underlyingListener, listener);
    [(NSXPCListener *)v12->_underlyingListener setDelegate:v12];
    v13 = [labelCopy copy];
    label = v12->_label;
    v12->_label = v13;

    v12->_lock._os_unfair_lock_opaque = 0;
  }

  return v12;
}

+ (id)serviceListener
{
  if (serviceListener_onceToken != -1)
  {
    +[HDXPCListener serviceListener];
  }

  v3 = serviceListener_serviceListener;

  return v3;
}

void __32__HDXPCListener_serviceListener__block_invoke()
{
  v2 = [MEMORY[0x277CCAE98] serviceListener];
  v0 = [[HDXPCListener alloc] initWithUnderlyingListener:v2 label:@"ServiceListener"];
  v1 = serviceListener_serviceListener;
  serviceListener_serviceListener = v0;
}

- (NSArray)allClients
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyEnumerator = [(NSMapTable *)self->_exportedObjectsByClient keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        [v3 addObject:*(*(&v12 + 1) + 8 * i)];
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v3 copy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v58 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC2B0];
  v8 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
  {
    [(HDXPCListener *)self listener:processIdentifier shouldAcceptNewConnection:v8];
  }

  delegate = [(HDXPCListener *)self delegate];
  if (delegate)
  {
    clientProvider = [(HDXPCListener *)self clientProvider];
    v11 = clientProvider;
    if (clientProvider)
    {
      v51 = 0;
      v12 = &v51;
      v13 = [clientProvider clientForListener:self connection:connectionCopy error:&v51];
    }

    else
    {
      v50 = 0;
      v12 = &v50;
      v13 = [HDXPCClient clientWithConnection:connectionCopy error:&v50];
    }

    v16 = v13;
    v17 = *v12;
    if (v16)
    {
      v41 = v11;
      v18 = MEMORY[0x277CCACA8];
      process = [v16 process];
      bundleIdentifier = [process bundleIdentifier];
      v40 = [v18 stringWithFormat:@"%@ (%d)", bundleIdentifier, processIdentifier];

      v49 = v17;
      v21 = [delegate exportObjectForListener:self client:v16 error:&v49];
      v39 = v49;

      v15 = v21 != 0;
      if (v21)
      {
        if (self->_connectionQueue)
        {
          [connectionCopy _setQueue:?];
        }

        remoteInterface = [v21 remoteInterface];
        [connectionCopy setRemoteObjectInterface:remoteInterface];

        exportedInterface = [v21 exportedInterface];
        [connectionCopy setExportedInterface:exportedInterface];

        [connectionCopy setExportedObject:v21];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__HDXPCListener_listener_shouldAcceptNewConnection___block_invoke;
        block[3] = &unk_2796BD9B0;
        block[4] = self;
        if (listener_shouldAcceptNewConnection__onceToken != -1)
        {
          dispatch_once(&listener_shouldAcceptNewConnection__onceToken, block);
        }

        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __52__HDXPCListener_listener_shouldAcceptNewConnection___block_invoke_2;
        v45[3] = &unk_2796BDAC0;
        v45[4] = self;
        v24 = v16;
        v46 = v24;
        v25 = v21;
        v47 = v25;
        [connectionCopy setInvalidationHandler:v45];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __52__HDXPCListener_listener_shouldAcceptNewConnection___block_invoke_4;
        v42[3] = &unk_2796BDAC0;
        v42[4] = self;
        v26 = v24;
        v43 = v26;
        v27 = v25;
        v44 = v27;
        [connectionCopy setInterruptionHandler:v42];
        os_unfair_lock_lock(&self->_lock);
        exportedObjectsByClient = self->_exportedObjectsByClient;
        if (!exportedObjectsByClient)
        {
          strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          v30 = self->_exportedObjectsByClient;
          self->_exportedObjectsByClient = strongToStrongObjectsMapTable;

          exportedObjectsByClient = self->_exportedObjectsByClient;
        }

        [(NSMapTable *)exportedObjectsByClient setObject:v27 forKey:v26];
        os_unfair_lock_unlock(&self->_lock);
        v31 = v40;
        v11 = v41;
        if (objc_opt_respondsToSelector())
        {
          [v27 connectionConfigured];
        }

        if (objc_opt_respondsToSelector())
        {
          [delegate connectionConfiguredForListener:self client:v26 exportedObject:v27];
        }

        [connectionCopy resume];

        v17 = v39;
      }

      else
      {
        _HKInitializeLogging();
        v34 = *v7;
        v35 = os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR);
        v31 = v40;
        v11 = v41;
        v17 = v39;
        if (v35)
        {
          label = self->_label;
          *buf = 138543874;
          v53 = label;
          v54 = 2114;
          v55 = v40;
          v56 = 2114;
          v57 = v39;
          _os_log_error_impl(&dword_25156C000, v34, OS_LOG_TYPE_ERROR, "%{public}@: Rejecting connection from %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v32 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->_label;
        *buf = 138543874;
        v53 = v33;
        v54 = 2114;
        v55 = connectionCopy;
        v56 = 2114;
        v57 = v17;
        _os_log_impl(&dword_25156C000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to create client for connection %{public}@: %{public}@", buf, 0x20u);
      }

      v15 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = *v7;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(HDXPCListener *)self listener:connectionCopy shouldAcceptNewConnection:v14];
    }

    v15 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __52__HDXPCListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  listener_shouldAcceptNewConnection__sharedQueue = HKCreateSerialDispatchQueue();

  return MEMORY[0x2821F96F8]();
}

void __52__HDXPCListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = listener_shouldAcceptNewConnection__sharedQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDXPCListener_listener_shouldAcceptNewConnection___block_invoke_3;
  block[3] = &unk_2796BDAC0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __52__HDXPCListener_listener_shouldAcceptNewConnection___block_invoke_4(uint64_t a1)
{
  v2 = listener_shouldAcceptNewConnection__sharedQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDXPCListener_listener_shouldAcceptNewConnection___block_invoke_5;
  block[3] = &unk_2796BDAC0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (void)_handleInvalidationWithClient:(id)client exportedObject:(id)object
{
  v21 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  objectCopy = object;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
  {
    label = self->_label;
    v10 = v8;
    process = [clientCopy process];
    bundleIdentifier = [process bundleIdentifier];
    process2 = [clientCopy process];
    v15 = 138543874;
    v16 = label;
    v17 = 2114;
    v18 = bundleIdentifier;
    v19 = 1024;
    processIdentifier = [process2 processIdentifier];
    _os_log_impl(&dword_25156C000, v10, OS_LOG_TYPE_INFO, "%{public}@: Connection to %{public}@ (%d) invalidated", &v15, 0x1Cu);
  }

  [objectCopy connectionInvalidated];
  [(HDXPCListener *)self _handleConnectionInvalidationForClient:clientCopy exportedObject:objectCopy];

  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_exportedObjectsByClient removeObjectForKey:clientCopy];
  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleInterruptionWithClient:(id)client exportedObject:(id)object
{
  clientCopy = client;
  objectCopy = object;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    [(HDXPCListener *)self _handleInterruptionWithClient:v8 exportedObject:clientCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [objectCopy connectionInterrupted];
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_exportedObjectsByClient removeObjectForKey:clientCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleConnectionInvalidationForClient:(id)client exportedObject:(id)object
{
  clientCopy = client;
  objectCopy = object;
  delegate = [(HDXPCListener *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate connectionInvalidatedForListener:self client:clientCopy exportedObject:objectCopy];
  }
}

- (void)initWithUnderlyingListener:(uint64_t)a1 label:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCListener.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"listener != nil"}];
}

- (void)initWithUnderlyingListener:(uint64_t)a1 label:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCListener.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"[listener delegate] == nil"}];
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v5 = 138543618;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_debug_impl(&dword_25156C000, log, OS_LOG_TYPE_DEBUG, "%{public}@: New connection from pid %d", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_25156C000, log, OS_LOG_TYPE_ERROR, "%{public}@: Rejecting connection %{public}@: delegate is nil", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleInterruptionWithClient:(void *)a3 exportedObject:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [a3 process];
  v7 = [v6 bundleIdentifier];
  v8 = [a3 process];
  v10 = 138543874;
  v11 = v4;
  v12 = 2114;
  v13 = v7;
  v14 = 1024;
  v15 = [v8 processIdentifier];
  _os_log_error_impl(&dword_25156C000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Unexpected interruption on connection to %{public}@ (%d)", &v10, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

@end