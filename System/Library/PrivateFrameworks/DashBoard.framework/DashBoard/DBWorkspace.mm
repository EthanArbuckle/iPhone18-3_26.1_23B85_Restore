@interface DBWorkspace
- (DBWorkspace)initWithOwner:(id)owner;
- (id)_createStateChangeSession;
- (void)_invalidateSession:(id)session;
- (void)_setState:(id)state;
- (void)addObserver:(id)observer;
- (void)invalidate;
- (void)removeObserver:(id)observer;
- (void)requestStateChange:(id)change;
@end

@implementation DBWorkspace

- (id)_createStateChangeSession
{
  v3 = [_DBWorkspaceStateChangeSession alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__DBWorkspace__createStateChangeSession__block_invoke;
  v7[3] = &unk_278F02798;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__DBWorkspace__createStateChangeSession__block_invoke_2;
  v6[3] = &unk_278F027C0;
  v6[4] = self;
  v4 = [(_DBWorkspaceStateChangeSession *)v3 initWithStateChangeBlock:v7 invalidationBlock:v6];

  return v4;
}

- (DBWorkspace)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v14.receiver = self;
  v14.super_class = DBWorkspace;
  v6 = [(DBWorkspace *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_owner, owner);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingRequests = v7->_pendingRequests;
    v7->_pendingRequests = v8;

    v13 = v7;
    v10 = BSLogAddStateCaptureBlockWithTitle();
    pendingRequestsStateCaptureBlock = v13->_pendingRequestsStateCaptureBlock;
    v13->_pendingRequestsStateCaptureBlock = v10;
  }

  return v7;
}

- (void)invalidate
{
  self->_invalidated = 1;
  pendingRequests = self->_pendingRequests;
  self->_pendingRequests = 0;

  observers = self->_observers;
  self->_observers = 0;

  [(BSInvalidatable *)self->_pendingRequestsStateCaptureBlock invalidate];
  pendingRequestsStateCaptureBlock = self->_pendingRequestsStateCaptureBlock;
  self->_pendingRequestsStateCaptureBlock = 0;
}

- (void)_setState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  state = self->_state;
  if (state != stateCopy)
  {
    stateCopy2 = state;
    objc_storeStrong(&self->_state, state);
    v8 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = stateCopy;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "State changed: %@", buf, 0xCu);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(NSHashTable *)self->_observers copy];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) workspace:self stateDidChangeFromState:stateCopy2 toState:self->_state];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)requestStateChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  currentSession = self->_currentSession;
  if (currentSession)
  {
    v6 = [(DBWorkspaceOwner *)self->_owner session:currentSession policyForRequest:changeCopy];
    if (v6 != 1)
    {
      if (!v6)
      {
        v7 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = changeCopy;
          _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Pending request: %@", &v12, 0xCu);
        }

        [(NSMutableArray *)self->_pendingRequests addObject:changeCopy];
      }

      goto LABEL_11;
    }
  }

  else
  {
    _createStateChangeSession = [(DBWorkspace *)self _createStateChangeSession];
    v9 = self->_currentSession;
    self->_currentSession = _createStateChangeSession;

    [(_DBWorkspaceStateChangeSession *)self->_currentSession setOwner:self->_owner];
    [(DBWorkspaceOwner *)self->_owner workspace:self didBeginStateChangeSession:self->_currentSession];
  }

  v10 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_currentSession;
    v12 = 134218242;
    v13 = v11;
    v14 = 2112;
    v15 = changeCopy;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Handling request in current session (%p): %@", &v12, 0x16u);
  }

  [(_DBWorkspaceStateChangeSession *)self->_currentSession _startWatchdogTimer];
  [(DBWorkspaceOwner *)self->_owner session:self->_currentSession handleStateChangeRequest:changeCopy];
LABEL_11:
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy && !self->_invalidated)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      hashTableWithWeakObjects = [MEMORY[0x277CCAA50] hashTableWithWeakObjects];
      v7 = self->_observers;
      self->_observers = hashTableWithWeakObjects;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_invalidateSession:(id)session
{
  currentSession = self->_currentSession;
  self->_currentSession = 0;
  sessionCopy = session;

  [(DBWorkspaceOwner *)self->_owner workspace:self didEndStateChangeSession:sessionCopy];
  if ([(NSMutableArray *)self->_pendingRequests count])
  {
    firstObject = [(NSMutableArray *)self->_pendingRequests firstObject];
    [(NSMutableArray *)self->_pendingRequests removeObjectAtIndex:0];
    [(DBWorkspace *)self requestStateChange:firstObject];
  }
}

@end