@interface HDTaskServerRegistry
- (BOOL)loadTaskServersFromPluginAtURL:(id)l error:(id *)error;
- (BOOL)registerTaskServerClass:(Class)class error:(id *)error;
- (BOOL)registerTaskServerClasses:(id)classes error:(id *)error;
- (BOOL)registerTaskServerClassesWithProvider:(id)provider error:(id *)error;
- (Class)_taskServerClassForIdentifier:(id)identifier;
- (HDDaemon)daemon;
- (HDTaskServerRegistry)initWithDaemon:(id)daemon;
- (id)createTaskServerEndpointForIdentifier:(id)identifier taskUUID:(id)d instanceUUID:(id)iD configuration:(id)configuration client:(id)client connectionQueue:(id)queue error:(id *)error;
- (id)taskServerForTaskUUID:(id)d;
- (uint64_t)_lock_registerTaskServerClass:(uint64_t)class error:;
- (void)addObserver:(id)observer forTaskServerUUID:(id)d queue:(id)queue;
- (void)didCreateTaskServer:(id)server;
- (void)removeObserver:(id)observer forTaskServerUUID:(id)d;
- (void)removeTaskServerObserver:(id)observer;
- (void)taskServerDidInvalidate:(id)invalidate;
@end

@implementation HDTaskServerRegistry

- (HDTaskServerRegistry)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v16.receiver = self;
  v16.super_class = HDTaskServerRegistry;
  v5 = [(HDTaskServerRegistry *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskServerClassesByTaskIdentifier = v6->_taskServerClassesByTaskIdentifier;
    v6->_taskServerClassesByTaskIdentifier = v7;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    taskServersByUUID = v6->_taskServersByUUID;
    v6->_taskServersByUUID = strongToWeakObjectsMapTable;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskServerObserversByUUID = v6->_taskServerObserversByUUID;
    v6->_taskServerObserversByUUID = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    loadedPluginURLs = v6->_loadedPluginURLs;
    v6->_loadedPluginURLs = v13;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (BOOL)registerTaskServerClassesWithProvider:(id)provider error:(id *)error
{
  taskServerClasses = [provider taskServerClasses];
  if ([taskServerClasses count])
  {
    v7 = [(HDTaskServerRegistry *)self registerTaskServerClasses:taskServerClasses error:error];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)registerTaskServerClass:(Class)class error:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v12 = 0;
  v7 = [(HDTaskServerRegistry *)self _lock_registerTaskServerClass:class error:&v12];
  v8 = v12;
  os_unfair_lock_unlock(&self->_lock);
  if ((v7 & 1) == 0)
  {
    v9 = v8;
    if (v9)
    {
      if (error)
      {
        v10 = v9;
        *error = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v7;
}

- (uint64_t)_lock_registerTaskServerClass:(uint64_t)class error:
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 40));
    if (objc_opt_respondsToSelector())
    {
      taskIdentifier = [a2 taskIdentifier];
      v7 = [*(self + 8) objectForKeyedSubscript:taskIdentifier];
      if (![v7 isSubclassOfClass:a2] || (objc_msgSend(a2, "isSubclassOfClass:", v7) & 1) == 0)
      {
        if (v7)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:class code:3 format:{@"Attempt to register class '%@' as a task server for '%@', but class '%@' is already registered for that identifier.", a2, taskIdentifier, objc_msgSend(*(self + 8), "objectForKeyedSubscript:", taskIdentifier)}];
          v8 = 0;
LABEL_11:

          return v8;
        }

        [*(self + 8) setObject:a2 forKeyedSubscript:taskIdentifier];
      }

      v8 = 1;
      goto LABEL_11;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:class code:3 format:{@"%@ does not respond to taskIdentifier", a2}];
  }

  return 0;
}

- (BOOL)registerTaskServerClasses:(id)classes error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  os_unfair_lock_lock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = classesCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    v13 = v10;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v21 + 1) + 8 * v12);
      v20 = v13;
      v15 = [(HDTaskServerRegistry *)self _lock_registerTaskServerClass:v14 error:&v20];
      v10 = v20;

      if (!v15)
      {
        break;
      }

      ++v12;
      v13 = v10;
      if (v9 == v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        os_unfair_lock_unlock(&self->_lock);
        v16 = 1;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = v10;
  if (v10)
  {
    if (error)
    {
      v17 = v10;
      *error = v10;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = 0;
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)loadTaskServersFromPluginAtURL:(id)l error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  v7 = lCopy;
  if (!self)
  {
    goto LABEL_24;
  }

  if (([(NSMutableSet *)self->_loadedPluginURLs containsObject:v7]& 1) != 0)
  {
    v8 = 1;
    goto LABEL_31;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  daemon = [(HDTaskServerRegistry *)self daemon];
  pluginManager = [daemon pluginManager];
  allowablePluginDirectoryPaths = [pluginManager allowablePluginDirectoryPaths];

  v12 = [allowablePluginDirectoryPaths countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (!v12)
  {
LABEL_12:

    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Invalid plugin URL for task server registration: %@", v7}];
LABEL_24:
    v8 = 0;
    goto LABEL_31;
  }

  v13 = v12;
  v14 = *v35;
LABEL_6:
  v15 = 0;
  while (1)
  {
    if (*v35 != v14)
    {
      objc_enumerationMutation(allowablePluginDirectoryPaths);
    }

    v16 = *(*(&v34 + 1) + 8 * v15);
    path = [v7 path];
    LOBYTE(v16) = [path hasPrefix:v16];

    if (v16)
    {
      break;
    }

    if (v13 == ++v15)
    {
      v13 = [allowablePluginDirectoryPaths countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v13)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  [(NSMutableSet *)self->_loadedPluginURLs addObject:v7];
  v18 = MEMORY[0x277CCD798];
  v40 = &unk_283CCAEA0;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v20 = [v18 loadPrincipalClassConformingToProtocols:v19 fromBundleAtURL:v7 skipIfLoaded:0];

  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = objc_alloc_init(v20);
  v22 = v21;
  if (v21)
  {
    [v21 taskServerClasses];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v33 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v30 objects:buf count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v23);
          }

          if (![(HDTaskServerRegistry *)self _lock_registerTaskServerClass:error error:?])
          {
            v8 = 0;
            goto LABEL_26;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v30 objects:buf count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_26:
  }

  else
  {
    _HKInitializeLogging();
    v23 = HKLogInfrastructure();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = v20;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Unable to instantiate candidate task server class provider %{public}@", buf, 0xCu);
    }

    v8 = 0;
  }

LABEL_31:
  os_unfair_lock_unlock(&self->_lock);
  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)taskServerForTaskUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_taskServersByUUID objectForKey:dCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)addObserver:(id)observer forTaskServerUUID:(id)d queue:(id)queue
{
  observerCopy = observer;
  dCopy = d;
  queueCopy = queue;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDTaskServerRegistry.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"taskUUID != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v12 = [(NSMutableDictionary *)self->_taskServerObserversByUUID objectForKeyedSubscript:dCopy];
  if (!v12)
  {
    v13 = objc_alloc(MEMORY[0x277CCD738]);
    uUIDString = [dCopy UUIDString];
    v15 = HKLogInfrastructure();
    v12 = [v13 initWithName:uUIDString loggingCategory:v15];

    [(NSMutableDictionary *)self->_taskServerObserversByUUID setObject:v12 forKeyedSubscript:dCopy];
  }

  [v12 registerObserver:observerCopy queue:queueCopy];
  v16 = [(NSMapTable *)self->_taskServersByUUID objectForKey:dCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v16)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__HDTaskServerRegistry_addObserver_forTaskServerUUID_queue___block_invoke;
    v18[3] = &unk_278627958;
    v19 = v16;
    [v12 notifyObserver:observerCopy handler:v18];
  }
}

- (void)removeObserver:(id)observer forTaskServerUUID:(id)d
{
  dCopy = d;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_taskServerObserversByUUID objectForKeyedSubscript:dCopy];

  [v8 unregisterObserver:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeTaskServerObserver:(id)observer
{
  v17 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_taskServerObserversByUUID allValues];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) unregisterObserver:{observerCopy, v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didCreateTaskServer:(id)server
{
  serverCopy = server;
  os_unfair_lock_lock(&self->_lock);
  taskServersByUUID = self->_taskServersByUUID;
  taskUUID = [serverCopy taskUUID];
  [(NSMapTable *)taskServersByUUID setObject:serverCopy forKey:taskUUID];

  taskServerObserversByUUID = self->_taskServerObserversByUUID;
  taskUUID2 = [serverCopy taskUUID];
  v9 = [(NSMutableDictionary *)taskServerObserversByUUID objectForKeyedSubscript:taskUUID2];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__HDTaskServerRegistry_didCreateTaskServer___block_invoke;
  v11[3] = &unk_278627958;
  v12 = serverCopy;
  v10 = serverCopy;
  [v9 notifyObservers:v11];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)taskServerDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  os_unfair_lock_lock(&self->_lock);
  taskServerObserversByUUID = self->_taskServerObserversByUUID;
  taskUUID = [invalidateCopy taskUUID];
  v7 = [(NSMutableDictionary *)taskServerObserversByUUID objectForKeyedSubscript:taskUUID];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HDTaskServerRegistry_taskServerDidInvalidate___block_invoke;
  v11[3] = &unk_278627958;
  v12 = invalidateCopy;
  v8 = invalidateCopy;
  [v7 notifyObservers:v11];

  v9 = self->_taskServerObserversByUUID;
  taskUUID2 = [v8 taskUUID];
  [(NSMutableDictionary *)v9 setObject:0 forKeyedSubscript:taskUUID2];

  os_unfair_lock_unlock(&self->_lock);
}

- (Class)_taskServerClassForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_taskServerClassesByTaskIdentifier objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)createTaskServerEndpointForIdentifier:(id)identifier taskUUID:(id)d instanceUUID:(id)iD configuration:(id)configuration client:(id)client connectionQueue:(id)queue error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  configurationCopy = configuration;
  clientCopy = client;
  queueCopy = queue;
  v21 = [(HDTaskServerRegistry *)self _taskServerClassForIdentifier:identifierCopy];
  if (!v21)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"No registered task server for identifier '%@'", identifierCopy}];
    goto LABEL_19;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = NSStringFromClass(v21);
    [v27 hk_assignError:error code:125 format:{@"Task server class %@ failed to implement requiredEntitlements", v28}];
    goto LABEL_16;
  }

  v36 = iDCopy;
  v38 = dCopy;
  [(objc_class *)v21 requiredEntitlements];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = v43 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        if (![clientCopy hasRequiredEntitlement:*(*(&v40 + 1) + 8 * i) error:error])
        {

          v21 = 0;
          iDCopy = v36;
          dCopy = v38;
          goto LABEL_19;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    iDCopy = v36;
    dCopy = v38;
    if (configurationCopy)
    {
      v31 = MEMORY[0x277CCA9B8];
      v28 = NSStringFromClass(v21);
      [v31 hk_assignError:error code:125 format:{@"Task server class %@ does not implement configurationClass", v28}];
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  [(objc_class *)v21 configurationClass];
  iDCopy = v36;
  dCopy = v38;
  if (objc_opt_isKindOfClass())
  {
LABEL_24:
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![(objc_class *)v21 validateClient:clientCopy error:error])
    {
      goto LABEL_17;
    }

    if (!configurationCopy)
    {
      goto LABEL_29;
    }

    if (objc_opt_respondsToSelector())
    {
      if (([(objc_class *)v21 validateConfiguration:configurationCopy client:clientCopy error:error]& 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_29:
      v39 = [HDTaskServerEndpoint alloc];
      configuration = [clientCopy configuration];
      profile = [clientCopy profile];
      databaseAccessibilityAssertions = [clientCopy databaseAccessibilityAssertions];
      v21 = [(HDTaskServerEndpoint *)v39 initWithTaskServerClass:v21 taskConfiguration:configurationCopy healthStoreConfiguration:configuration taskUUID:dCopy instanceUUID:iDCopy profile:profile databaseAccessibilityAssertions:databaseAccessibilityAssertions connectionQueue:queueCopy];

      if (v21)
      {
        v33 = v21;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Failed to instantiate task server endpoint for '%@'", identifierCopy}];
      }

      goto LABEL_19;
    }

    v34 = MEMORY[0x277CCA9B8];
    v28 = NSStringFromClass(v21);
    [v34 hk_assignError:error code:125 format:{@"Task server class %@ failed to implement validateConfiguration:error:", v28}];
LABEL_16:

    goto LABEL_17;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Invalid configuration class %@ (expected %@)", objc_opt_class(), -[objc_class configurationClass](v21, "configurationClass")}];
LABEL_17:
  v21 = 0;
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];

  return v21;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end