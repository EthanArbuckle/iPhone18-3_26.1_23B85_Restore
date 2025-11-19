@interface HDDaemonConnectionManager
- (HDDaemonConnectionManager)initWithMachServiceName:(id)a3 daemon:(id)a4;
- (NSArray)clientProcesses;
- (id)clientForListener:(id)a3 connection:(id)a4 error:(id *)a5;
- (id)createAnonymousListenerWithLabel:(id)a3;
- (id)createListenerWithMachServiceName:(id)a3;
- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5;
- (void)_configureListener:(uint64_t)a1;
- (void)endpointInvalidated:(id)a3;
- (void)invalidate;
- (void)invalidateAllServersForProfile:(id)a3;
@end

@implementation HDDaemonConnectionManager

- (HDDaemonConnectionManager)initWithMachServiceName:(id)a3 daemon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = HDDaemonConnectionManager;
  v8 = [(HDDaemonConnectionManager *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_daemon, v7);
    v10 = HKCreateSerialDispatchQueue();
    listenerQueue = v9->_listenerQueue;
    v9->_listenerQueue = v10;

    v9->_lock._os_unfair_lock_opaque = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    endpoints = v9->_endpoints;
    v9->_endpoints = v12;

    if (v6)
    {
      v14 = [(HDDaemonConnectionManager *)v9 createListenerWithMachServiceName:v6];
      serviceListener = v9->_serviceListener;
      v9->_serviceListener = v14;
    }

    else
    {
      v16 = objc_opt_class();
      serviceListener = NSStringFromClass(v16);
      v17 = [(HDDaemonConnectionManager *)v9 createAnonymousListenerWithLabel:serviceListener];
      v18 = v9->_serviceListener;
      v9->_serviceListener = v17;
    }

    [(HDXPCListener *)v9->_serviceListener setDelegate:v9];
  }

  return v9;
}

- (NSArray)clientProcesses
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableSet count](self->_endpoints, "count")}];
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_endpoints;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) client];
        v10 = [v9 process];
        [v3 addObject:v10];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = [v3 copy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  [(HDXPCListener *)self->_serviceListener invalidate];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_endpoints;
  endpoints = self->_endpoints;
  self->_endpoints = 0;

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)createListenerWithMachServiceName:(id)a3
{
  v4 = MEMORY[0x277D10BF0];
  v5 = a3;
  v6 = [[v4 alloc] initWithMachServiceName:v5];

  [(HDDaemonConnectionManager *)self _configureListener:v6];

  return v6;
}

- (void)_configureListener:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    [v3 setClientProvider:a1];
    [v3 setQueue:*(a1 + 16)];
  }
}

- (id)createAnonymousListenerWithLabel:(id)a3
{
  v4 = MEMORY[0x277D10BF0];
  v5 = a3;
  v6 = [[v4 alloc] initWithLabel:v5];

  [(HDDaemonConnectionManager *)self _configureListener:v6];

  return v6;
}

- (void)invalidateAllServersForProfile:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableSet *)self->_endpoints copy];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [v4 profileIdentifier];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 profileIdentifier];
        v14 = [v13 isEqual:v6];

        if (v14)
        {
          [v12 invalidate];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)endpointInvalidated:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_endpoints removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)clientForListener:(id)a3 connection:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = v7;
  if (self)
  {
    v9 = objc_alloc(MEMORY[0x277CCDE78]);
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v10 = [v9 initWithAuditToken:&v17];
    os_unfair_lock_lock(&self->_lock);
    processesByAuditToken = self->_processesByAuditToken;
    if (!processesByAuditToken)
    {
      v12 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v13 = self->_processesByAuditToken;
      self->_processesByAuditToken = v12;

      processesByAuditToken = self->_processesByAuditToken;
    }

    v14 = [(NSMapTable *)processesByAuditToken objectForKey:v10, v17, v18];
    if (!v14)
    {
      processCreationHandler = self->_processCreationHandler;
      if (processCreationHandler)
      {
        processCreationHandler[2](processCreationHandler, v8, a5);
      }

      else
      {
        [MEMORY[0x277D10C00] processWithConnection:v8 error:a5];
      }
      v14 = ;
      if (v14)
      {
        [(NSMapTable *)self->_processesByAuditToken setObject:v14 forKey:v10];
      }
    }

    os_unfair_lock_unlock(&self->_lock);

    if (v14)
    {
      self = [objc_alloc(MEMORY[0x277D10BD8]) initWithConnection:v8 process:v14];
    }

    else
    {
      self = 0;
    }
  }

  else
  {

    v14 = 0;
  }

  return self;
}

- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_daemon);
    v10 = [HDHealthStoreEndpoint endpointWithClient:v7 healthDaemon:v9];

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableSet *)self->_endpoints addObject:v10];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 description:@"Daemon became nil"];
    v10 = 0;
  }

  return v10;
}

@end