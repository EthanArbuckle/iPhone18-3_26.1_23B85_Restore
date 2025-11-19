@interface MRClientApplicationConnectionManager
+ (MRClientApplicationConnectionManager)sharedManager;
- (MRClientApplicationConnectionManager)init;
- (id)connectionForIdentifier:(id)a3;
- (id)handoffSessionHandlerForPlayerPath:(id)a3;
- (id)listenerForServiceName:(id)a3 playerPath:(id)a4;
- (void)listenerForHandlingConnection:(id)a3 completion:(id)a4;
- (void)registerConnection:(id)a3;
- (void)registerHandoffSessionHandlerForPlayerPath:(id)a3 handler:(id)a4;
- (void)registerListener:(id)a3;
- (void)unregisterConnection:(id)a3;
@end

@implementation MRClientApplicationConnectionManager

- (MRClientApplicationConnectionManager)init
{
  v13.receiver = self;
  v13.super_class = MRClientApplicationConnectionManager;
  v2 = [(MRClientApplicationConnectionManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    connections = v3->_connections;
    v3->_connections = v4;

    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    listeners = v3->_listeners;
    v3->_listeners = v6;

    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    listenerPendingConnections = v3->_listenerPendingConnections;
    v3->_listenerPendingConnections = v8;

    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    handoffSessionHandlers = v3->_handoffSessionHandlers;
    v3->_handoffSessionHandlers = v10;
  }

  return v3;
}

+ (MRClientApplicationConnectionManager)sharedManager
{
  if (sharedManager___once_1 != -1)
  {
    +[MRClientApplicationConnectionManager sharedManager];
  }

  v3 = sharedManager___shared_0;

  return v3;
}

void __53__MRClientApplicationConnectionManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MRClientApplicationConnectionManager);
  v1 = sharedManager___shared_0;
  sharedManager___shared_0 = v0;
}

- (void)registerListener:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 serviceName];
  v6 = [v4 playerPath];
  v7 = [(MRClientApplicationConnectionManager *)self listeners];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v9 = [(MRClientApplicationConnectionManager *)self listeners];
    v10 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    [v9 setObject:v10 forKey:v6];
  }

  v11 = [(MRClientApplicationConnectionManager *)self listeners];
  v12 = [v11 objectForKey:v6];

  v13 = [v12 objectForKey:v5];

  if (v13)
  {
    v14 = _MRLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(MRClientApplicationConnectionManager *)v5 registerListener:v6, v14];
    }
  }

  v34 = v12;
  v36 = v5;
  [v12 setObject:v4 forKey:v5];
  v15 = _MRLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v4 serviceName];
    *buf = 138412546;
    v52 = v16;
    v53 = 2112;
    v54 = v6;
    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[MRClientApplicationConnectionManager] Registered listener for service: %@, path: %@", buf, 0x16u);
  }

  v35 = v6;

  v37 = [MEMORY[0x1E695DF70] array];
  v38 = self;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = self->_listenerPendingConnections;
  v17 = [(NSMapTable *)obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v40 = *v46;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = [v20 context];
        v22 = [v21 destinationPlayerPath];
        v23 = [v4 playerPath];
        if (v22 != v23 && ([v22 isEqual:v23] & 1) == 0)
        {

          goto LABEL_22;
        }

        v24 = [v20 serviceName];
        v25 = [v4 serviceName];
        v26 = v25;
        if (v24 == v25)
        {

LABEL_21:
          v21 = [(NSMapTable *)v38->_listenerPendingConnections objectForKey:v20];
          v22 = MEMORY[0x1A58E3570]();
          [v37 addObject:v22];
LABEL_22:

          continue;
        }

        v27 = [v24 isEqual:v25];

        if (v27)
        {
          goto LABEL_21;
        }
      }

      v18 = [(NSMapTable *)obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock(&v38->_lock);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = v37;
  v29 = [v28 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v28);
        }

        (*(*(*(&v41 + 1) + 8 * j) + 16))();
      }

      v30 = [v28 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v30);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)listenerForServiceName:(id)a3 playerPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(MRClientApplicationConnectionManager *)self listeners];
  v9 = [v8 objectForKey:v6];

  v10 = [v9 objectForKey:v7];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)registerConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MRClientApplicationConnectionManager *)self connections];
  v6 = [v4 identifier];
  [v5 setObject:v4 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MRClientApplicationConnectionManager *)self connections];
  v6 = [v4 identifier];

  [v5 removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)connectionForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MRClientApplicationConnectionManager *)self connections];
  v6 = [v5 objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)listenerForHandlingConnection:(id)a3 completion:(id)a4
{
  v15 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(MRClientApplicationConnectionManager *)self listeners];
  v8 = [v15 context];
  v9 = [v8 destinationPlayerPath];
  v10 = [v7 objectForKey:v9];

  v11 = [v15 serviceName];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    os_unfair_lock_unlock(&self->_lock);
    v6[2](v6, v12);
  }

  else
  {
    listenerPendingConnections = self->_listenerPendingConnections;
    v14 = MEMORY[0x1A58E3570](v6);
    [(NSMapTable *)listenerPendingConnections setObject:v14 forKey:v15];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)registerHandoffSessionHandlerForPlayerPath:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  handoffSessionHandlers = self->_handoffSessionHandlers;
  v9 = MEMORY[0x1A58E3570](v6);

  [(NSMapTable *)handoffSessionHandlers setObject:v9 forKey:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)handoffSessionHandlerForPlayerPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_handoffSessionHandlers objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
  v6 = MEMORY[0x1A58E3570](v5);

  return v6;
}

- (void)registerListener:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1A2860000, log, OS_LOG_TYPE_FAULT, "[MRClientApplicationConnectionManager] registerListener - registering duplicate listener for service: %@, playerPath: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end