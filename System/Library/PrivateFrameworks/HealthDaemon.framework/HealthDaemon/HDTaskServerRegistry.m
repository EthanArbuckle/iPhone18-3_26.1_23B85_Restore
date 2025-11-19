@interface HDTaskServerRegistry
- (BOOL)loadTaskServersFromPluginAtURL:(id)a3 error:(id *)a4;
- (BOOL)registerTaskServerClass:(Class)a3 error:(id *)a4;
- (BOOL)registerTaskServerClasses:(id)a3 error:(id *)a4;
- (BOOL)registerTaskServerClassesWithProvider:(id)a3 error:(id *)a4;
- (Class)_taskServerClassForIdentifier:(id)a3;
- (HDDaemon)daemon;
- (HDTaskServerRegistry)initWithDaemon:(id)a3;
- (id)createTaskServerEndpointForIdentifier:(id)a3 taskUUID:(id)a4 instanceUUID:(id)a5 configuration:(id)a6 client:(id)a7 connectionQueue:(id)a8 error:(id *)a9;
- (id)taskServerForTaskUUID:(id)a3;
- (uint64_t)_lock_registerTaskServerClass:(uint64_t)a3 error:;
- (void)addObserver:(id)a3 forTaskServerUUID:(id)a4 queue:(id)a5;
- (void)didCreateTaskServer:(id)a3;
- (void)removeObserver:(id)a3 forTaskServerUUID:(id)a4;
- (void)removeTaskServerObserver:(id)a3;
- (void)taskServerDidInvalidate:(id)a3;
@end

@implementation HDTaskServerRegistry

- (HDTaskServerRegistry)initWithDaemon:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDTaskServerRegistry;
  v5 = [(HDTaskServerRegistry *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskServerClassesByTaskIdentifier = v6->_taskServerClassesByTaskIdentifier;
    v6->_taskServerClassesByTaskIdentifier = v7;

    v9 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    taskServersByUUID = v6->_taskServersByUUID;
    v6->_taskServersByUUID = v9;

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

- (BOOL)registerTaskServerClassesWithProvider:(id)a3 error:(id *)a4
{
  v6 = [a3 taskServerClasses];
  if ([v6 count])
  {
    v7 = [(HDTaskServerRegistry *)self registerTaskServerClasses:v6 error:a4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)registerTaskServerClass:(Class)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  v12 = 0;
  v7 = [(HDTaskServerRegistry *)self _lock_registerTaskServerClass:a3 error:&v12];
  v8 = v12;
  os_unfair_lock_unlock(&self->_lock);
  if ((v7 & 1) == 0)
  {
    v9 = v8;
    if (v9)
    {
      if (a4)
      {
        v10 = v9;
        *a4 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v7;
}

- (uint64_t)_lock_registerTaskServerClass:(uint64_t)a3 error:
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 40));
    if (objc_opt_respondsToSelector())
    {
      v6 = [a2 taskIdentifier];
      v7 = [*(a1 + 8) objectForKeyedSubscript:v6];
      if (![v7 isSubclassOfClass:a2] || (objc_msgSend(a2, "isSubclassOfClass:", v7) & 1) == 0)
      {
        if (v7)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Attempt to register class '%@' as a task server for '%@', but class '%@' is already registered for that identifier.", a2, v6, objc_msgSend(*(a1 + 8), "objectForKeyedSubscript:", v6)}];
          v8 = 0;
LABEL_11:

          return v8;
        }

        [*(a1 + 8) setObject:a2 forKeyedSubscript:v6];
      }

      v8 = 1;
      goto LABEL_11;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"%@ does not respond to taskIdentifier", a2}];
  }

  return 0;
}

- (BOOL)registerTaskServerClasses:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
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
    if (a4)
    {
      v17 = v10;
      *a4 = v10;
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

- (BOOL)loadTaskServersFromPluginAtURL:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = v6;
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
  v9 = [(HDTaskServerRegistry *)self daemon];
  v10 = [v9 pluginManager];
  v11 = [v10 allowablePluginDirectoryPaths];

  v12 = [v11 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (!v12)
  {
LABEL_12:

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Invalid plugin URL for task server registration: %@", v7}];
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
      objc_enumerationMutation(v11);
    }

    v16 = *(*(&v34 + 1) + 8 * v15);
    v17 = [v7 path];
    LOBYTE(v16) = [v17 hasPrefix:v16];

    if (v16)
    {
      break;
    }

    if (v13 == ++v15)
    {
      v13 = [v11 countByEnumeratingWithState:&v34 objects:v41 count:16];
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

          if (![(HDTaskServerRegistry *)self _lock_registerTaskServerClass:a4 error:?])
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

- (id)taskServerForTaskUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_taskServersByUUID objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)addObserver:(id)a3 forTaskServerUUID:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HDTaskServerRegistry.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"taskUUID != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v12 = [(NSMutableDictionary *)self->_taskServerObserversByUUID objectForKeyedSubscript:v10];
  if (!v12)
  {
    v13 = objc_alloc(MEMORY[0x277CCD738]);
    v14 = [v10 UUIDString];
    v15 = HKLogInfrastructure();
    v12 = [v13 initWithName:v14 loggingCategory:v15];

    [(NSMutableDictionary *)self->_taskServerObserversByUUID setObject:v12 forKeyedSubscript:v10];
  }

  [v12 registerObserver:v9 queue:v11];
  v16 = [(NSMapTable *)self->_taskServersByUUID objectForKey:v10];
  os_unfair_lock_unlock(&self->_lock);
  if (v16)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__HDTaskServerRegistry_addObserver_forTaskServerUUID_queue___block_invoke;
    v18[3] = &unk_278627958;
    v19 = v16;
    [v12 notifyObserver:v9 handler:v18];
  }
}

- (void)removeObserver:(id)a3 forTaskServerUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_taskServerObserversByUUID objectForKeyedSubscript:v6];

  [v8 unregisterObserver:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeTaskServerObserver:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_taskServerObserversByUUID allValues];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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

        [*(*(&v12 + 1) + 8 * v10++) unregisterObserver:{v4, v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didCreateTaskServer:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  taskServersByUUID = self->_taskServersByUUID;
  v6 = [v4 taskUUID];
  [(NSMapTable *)taskServersByUUID setObject:v4 forKey:v6];

  taskServerObserversByUUID = self->_taskServerObserversByUUID;
  v8 = [v4 taskUUID];
  v9 = [(NSMutableDictionary *)taskServerObserversByUUID objectForKeyedSubscript:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__HDTaskServerRegistry_didCreateTaskServer___block_invoke;
  v11[3] = &unk_278627958;
  v12 = v4;
  v10 = v4;
  [v9 notifyObservers:v11];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)taskServerDidInvalidate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  taskServerObserversByUUID = self->_taskServerObserversByUUID;
  v6 = [v4 taskUUID];
  v7 = [(NSMutableDictionary *)taskServerObserversByUUID objectForKeyedSubscript:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HDTaskServerRegistry_taskServerDidInvalidate___block_invoke;
  v11[3] = &unk_278627958;
  v12 = v4;
  v8 = v4;
  [v7 notifyObservers:v11];

  v9 = self->_taskServerObserversByUUID;
  v10 = [v8 taskUUID];
  [(NSMutableDictionary *)v9 setObject:0 forKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_lock);
}

- (Class)_taskServerClassForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_taskServerClassesByTaskIdentifier objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)createTaskServerEndpointForIdentifier:(id)a3 taskUUID:(id)a4 instanceUUID:(id)a5 configuration:(id)a6 client:(id)a7 connectionQueue:(id)a8 error:(id *)a9
{
  v45 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(HDTaskServerRegistry *)self _taskServerClassForIdentifier:v15];
  if (!v21)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a9 code:3 format:{@"No registered task server for identifier '%@'", v15}];
    goto LABEL_19;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = NSStringFromClass(v21);
    [v27 hk_assignError:a9 code:125 format:{@"Task server class %@ failed to implement requiredEntitlements", v28}];
    goto LABEL_16;
  }

  v36 = v17;
  v38 = v16;
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

        if (![v19 hasRequiredEntitlement:*(*(&v40 + 1) + 8 * i) error:a9])
        {

          v21 = 0;
          v17 = v36;
          v16 = v38;
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
    v17 = v36;
    v16 = v38;
    if (v18)
    {
      v31 = MEMORY[0x277CCA9B8];
      v28 = NSStringFromClass(v21);
      [v31 hk_assignError:a9 code:125 format:{@"Task server class %@ does not implement configurationClass", v28}];
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  [(objc_class *)v21 configurationClass];
  v17 = v36;
  v16 = v38;
  if (objc_opt_isKindOfClass())
  {
LABEL_24:
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![(objc_class *)v21 validateClient:v19 error:a9])
    {
      goto LABEL_17;
    }

    if (!v18)
    {
      goto LABEL_29;
    }

    if (objc_opt_respondsToSelector())
    {
      if (([(objc_class *)v21 validateConfiguration:v18 client:v19 error:a9]& 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_29:
      v39 = [HDTaskServerEndpoint alloc];
      v37 = [v19 configuration];
      v35 = [v19 profile];
      v32 = [v19 databaseAccessibilityAssertions];
      v21 = [(HDTaskServerEndpoint *)v39 initWithTaskServerClass:v21 taskConfiguration:v18 healthStoreConfiguration:v37 taskUUID:v16 instanceUUID:v17 profile:v35 databaseAccessibilityAssertions:v32 connectionQueue:v20];

      if (v21)
      {
        v33 = v21;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a9 code:3 format:{@"Failed to instantiate task server endpoint for '%@'", v15}];
      }

      goto LABEL_19;
    }

    v34 = MEMORY[0x277CCA9B8];
    v28 = NSStringFromClass(v21);
    [v34 hk_assignError:a9 code:125 format:{@"Task server class %@ failed to implement validateConfiguration:error:", v28}];
LABEL_16:

    goto LABEL_17;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a9 code:3 format:{@"Invalid configuration class %@ (expected %@)", objc_opt_class(), -[objc_class configurationClass](v21, "configurationClass")}];
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