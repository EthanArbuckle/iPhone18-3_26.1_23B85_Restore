@interface MRClientApplicationConnectionManager
+ (MRClientApplicationConnectionManager)sharedManager;
- (MRClientApplicationConnectionManager)init;
- (id)connectionForIdentifier:(id)identifier;
- (id)handoffSessionHandlerForPlayerPath:(id)path;
- (id)listenerForServiceName:(id)name playerPath:(id)path;
- (void)listenerForHandlingConnection:(id)connection completion:(id)completion;
- (void)registerConnection:(id)connection;
- (void)registerHandoffSessionHandlerForPlayerPath:(id)path handler:(id)handler;
- (void)registerListener:(id)listener;
- (void)unregisterConnection:(id)connection;
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
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    connections = v3->_connections;
    v3->_connections = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    listeners = v3->_listeners;
    v3->_listeners = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    listenerPendingConnections = v3->_listenerPendingConnections;
    v3->_listenerPendingConnections = strongToStrongObjectsMapTable3;

    strongToStrongObjectsMapTable4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    handoffSessionHandlers = v3->_handoffSessionHandlers;
    v3->_handoffSessionHandlers = strongToStrongObjectsMapTable4;
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

- (void)registerListener:(id)listener
{
  v55 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_lock);
  serviceName = [listenerCopy serviceName];
  playerPath = [listenerCopy playerPath];
  listeners = [(MRClientApplicationConnectionManager *)self listeners];
  v8 = [listeners objectForKey:playerPath];

  if (!v8)
  {
    listeners2 = [(MRClientApplicationConnectionManager *)self listeners];
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    [listeners2 setObject:strongToWeakObjectsMapTable forKey:playerPath];
  }

  listeners3 = [(MRClientApplicationConnectionManager *)self listeners];
  v12 = [listeners3 objectForKey:playerPath];

  v13 = [v12 objectForKey:serviceName];

  if (v13)
  {
    v14 = _MRLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(MRClientApplicationConnectionManager *)serviceName registerListener:playerPath, v14];
    }
  }

  v34 = v12;
  v36 = serviceName;
  [v12 setObject:listenerCopy forKey:serviceName];
  v15 = _MRLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    serviceName2 = [listenerCopy serviceName];
    *buf = 138412546;
    v52 = serviceName2;
    v53 = 2112;
    v54 = playerPath;
    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[MRClientApplicationConnectionManager] Registered listener for service: %@, path: %@", buf, 0x16u);
  }

  v35 = playerPath;

  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
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
        context = [v20 context];
        destinationPlayerPath = [context destinationPlayerPath];
        playerPath2 = [listenerCopy playerPath];
        if (destinationPlayerPath != playerPath2 && ([destinationPlayerPath isEqual:playerPath2] & 1) == 0)
        {

          goto LABEL_22;
        }

        serviceName3 = [v20 serviceName];
        serviceName4 = [listenerCopy serviceName];
        v26 = serviceName4;
        if (serviceName3 == serviceName4)
        {

LABEL_21:
          context = [(NSMapTable *)selfCopy->_listenerPendingConnections objectForKey:v20];
          destinationPlayerPath = MEMORY[0x1A58E3570]();
          [array addObject:destinationPlayerPath];
LABEL_22:

          continue;
        }

        v27 = [serviceName3 isEqual:serviceName4];

        if (v27)
        {
          goto LABEL_21;
        }
      }

      v18 = [(NSMapTable *)obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = array;
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

- (id)listenerForServiceName:(id)name playerPath:(id)path
{
  pathCopy = path;
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  listeners = [(MRClientApplicationConnectionManager *)self listeners];
  v9 = [listeners objectForKey:pathCopy];

  v10 = [v9 objectForKey:nameCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)registerConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  connections = [(MRClientApplicationConnectionManager *)self connections];
  identifier = [connectionCopy identifier];
  [connections setObject:connectionCopy forKey:identifier];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  connections = [(MRClientApplicationConnectionManager *)self connections];
  identifier = [connectionCopy identifier];

  [connections removeObjectForKey:identifier];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)connectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  connections = [(MRClientApplicationConnectionManager *)self connections];
  v6 = [connections objectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)listenerForHandlingConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  listeners = [(MRClientApplicationConnectionManager *)self listeners];
  context = [connectionCopy context];
  destinationPlayerPath = [context destinationPlayerPath];
  v10 = [listeners objectForKey:destinationPlayerPath];

  serviceName = [connectionCopy serviceName];
  v12 = [v10 objectForKey:serviceName];

  if (v12)
  {
    os_unfair_lock_unlock(&self->_lock);
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    listenerPendingConnections = self->_listenerPendingConnections;
    v14 = MEMORY[0x1A58E3570](completionCopy);
    [(NSMapTable *)listenerPendingConnections setObject:v14 forKey:connectionCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)registerHandoffSessionHandlerForPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  handoffSessionHandlers = self->_handoffSessionHandlers;
  v9 = MEMORY[0x1A58E3570](handlerCopy);

  [(NSMapTable *)handoffSessionHandlers setObject:v9 forKey:pathCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)handoffSessionHandlerForPlayerPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_handoffSessionHandlers objectForKey:pathCopy];

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