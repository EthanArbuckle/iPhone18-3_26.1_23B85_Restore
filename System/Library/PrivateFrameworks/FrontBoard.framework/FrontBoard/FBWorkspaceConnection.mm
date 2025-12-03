@interface FBWorkspaceConnection
+ (id)currentWorkspaceConnection;
+ (void)currentWorkspaceConnection;
- (BOOL)isOutgoing;
- (const)_workspaceLock_connection;
- (id)_acquireAssertionForWorkspaceScene:(unsigned int)scene withState:;
- (id)_initWithWorkspace:(id *)workspace;
- (id)_workspace;
- (id)queue;
- (id)remoteProcess;
- (id)workspaceLock_invalidate;
- (uint64_t)workspaceLock_isValid;
- (void)_flushConnectBlocksWithProxy:(uint64_t)proxy;
- (void)_workspaceLock_setConnection:(void *)connection withInterface:(void *)interface activationHandler:(void *)handler invalidationHandler:;
- (void)_workspaceScene:(void *)scene enqueueConnectBlock:;
- (void)workspaceLock_enqueueConnectBlock:(uint64_t)block;
- (void)workspaceLock_invalidate;
@end

@implementation FBWorkspaceConnection

- (const)_workspaceLock_connection
{
  if (self)
  {
    selfCopy = self;
    [(FBWorkspace *)self[1] _assertLocked];
    self = selfCopy[2];
    v1 = vars8;
  }

  return self;
}

- (id)queue
{
  if (self)
  {
    _synchronizer = [(FBWorkspace *)*(self + 8) _synchronizer];
    _workspaceQueue = [(FBSceneSynchronizer *)_synchronizer _workspaceQueue];
  }

  else
  {
    _workspaceQueue = 0;
  }

  return _workspaceQueue;
}

+ (id)currentWorkspaceConnection
{
  objc_opt_self();
  currentContext = [MEMORY[0x1E698F490] currentContext];
  if (!currentContext)
  {
    +[(FBWorkspaceConnection *)sel_currentWorkspaceConnection];
  }

  v1 = currentContext;
  os_unfair_lock_lock(&_connectionsLock);
  v2 = [_connectionsLock_connectionByConnection objectForKey:v1];
  os_unfair_lock_unlock(&_connectionsLock);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(FBWorkspaceConnection *)v1];
    }
  }

  return v2;
}

- (uint64_t)workspaceLock_isValid
{
  if (self)
  {
    [(FBWorkspace *)*(self + 8) _assertLocked];
    v2 = *(self + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (BOOL)isOutgoing
{
  if (result)
  {
    v1 = objc_opt_class();
    return v1 == objc_opt_class();
  }

  return result;
}

- (id)workspaceLock_invalidate
{
  selfCopy = self;
  if (self)
  {
    [(FBWorkspace *)self[1] _assertLocked];
    v2 = selfCopy[3];
    v3 = selfCopy[3];
    selfCopy[3] = 0;

    os_unfair_lock_lock(&_connectionsLock);
    v4 = [_connectionsLock_connectionByConnection objectForKey:selfCopy[2]];
    v5 = v4;
    if (v4)
    {
      v6 = v4 == selfCopy;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"should not be possible to map to something other than connection=%p for connection=%@ : existing=%@", selfCopy, selfCopy[2], v4];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(FBWorkspaceConnection *)sel_workspaceLock_invalidate workspaceLock_invalidate];
      }

      [v9 UTF8String];
      result = _bs_set_crash_log_message();
      __break(0);
      return result;
    }

    [_connectionsLock_connectionByConnection removeObjectForKey:selfCopy[2]];
    os_unfair_lock_unlock(&_connectionsLock);
    [selfCopy[2] invalidate];
    *(selfCopy + 32) = 0;
    if ([v2 count])
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    selfCopy = v7;
  }

  return selfCopy;
}

- (void)_workspaceLock_setConnection:(void *)connection withInterface:(void *)interface activationHandler:(void *)handler invalidationHandler:
{
  v10 = a2;
  connectionCopy = connection;
  interfaceCopy = interface;
  handlerCopy = handler;
  if (self)
  {
    [(FBWorkspace *)*(self + 8) _assertLocked];
    if (!*(self + 24))
    {
      [FBWorkspaceConnection _workspaceLock_setConnection:v10 withInterface:sel__workspaceLock_setConnection_withInterface_activationHandler_invalidationHandler_ activationHandler:? invalidationHandler:?];
    }

    objc_storeStrong((self + 16), a2);
    os_unfair_lock_lock(&_connectionsLock);
    v14 = _connectionsLock_connectionByConnection;
    if (!_connectionsLock_connectionByConnection)
    {
      v15 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
      v16 = _connectionsLock_connectionByConnection;
      _connectionsLock_connectionByConnection = v15;

      v14 = _connectionsLock_connectionByConnection;
    }

    v17 = [v14 objectForKey:v10];

    if (v17)
    {
      [FBWorkspaceConnection _workspaceLock_setConnection:v10 withInterface:sel__workspaceLock_setConnection_withInterface_activationHandler_invalidationHandler_ activationHandler:? invalidationHandler:?];
    }

    [_connectionsLock_connectionByConnection setObject:self forKey:v10];
    os_unfair_lock_unlock(&_connectionsLock);
    v18 = *(self + 16);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __106__FBWorkspaceConnection__workspaceLock_setConnection_withInterface_activationHandler_invalidationHandler___block_invoke;
    v22 = &unk_1E783D5F8;
    selfCopy = self;
    v24 = connectionCopy;
    v25 = interfaceCopy;
    v26 = handlerCopy;
    [v18 configureConnection:&v19];
    [*(self + 16) activate];
  }
}

void __106__FBWorkspaceConnection__workspaceLock_setConnection_withInterface_activationHandler_invalidationHandler___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  v3 = [(FBWorkspace *)*(a1[4] + 8) _synchronizer];
  v4 = [(FBSceneSynchronizer *)v3 _workspaceQueue];
  [v5 setQueue:v4];

  [v5 setInterface:a1[5]];
  [v5 setInterfaceTarget:*(a1[4] + 8)];
  if (a1[6])
  {
    [v5 setActivationHandler:?];
  }

  [v5 setInvalidationHandler:a1[7]];
}

- (void)_workspaceScene:(void *)scene enqueueConnectBlock:
{
  v7 = a2;
  sceneCopy = scene;
  v6 = sceneCopy;
  if (self)
  {
    if (!sceneCopy)
    {
      [FBWorkspaceConnection _workspaceScene:? enqueueConnectBlock:?];
    }

    [FBWorkspaceConnection _workspaceScene:self enqueueConnectBlock:sceneCopy];
  }
}

- (void)workspaceLock_enqueueConnectBlock:(uint64_t)block
{
  v3 = a2;
  v4 = v3;
  if (block)
  {
    if (!v3)
    {
      [FBWorkspaceConnection workspaceLock_enqueueConnectBlock:?];
    }

    [(FBWorkspace *)*(block + 8) _assertLocked];
    v5 = *(block + 24);
    if (v5)
    {
      v6 = [v4 copy];
      v7 = MEMORY[0x1AC572E40]();
      [v5 addObject:v7];

      _synchronizer = [(FBWorkspace *)*(block + 8) _synchronizer];
      [(FBSceneSynchronizer *)_synchronizer _setWaitingForConnect];
    }

    else
    {
      [(FBWorkspaceConnection *)block workspaceLock_enqueueConnectBlock:v4];
    }
  }
}

- (id)_initWithWorkspace:(id *)workspace
{
  v4 = a2;
  if (workspace)
  {
    v9.receiver = workspace;
    v9.super_class = FBWorkspaceConnection;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    workspace = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = objc_opt_new();
      v7 = workspace[3];
      workspace[3] = v6;

      *(workspace + 32) = 1;
    }
  }

  return workspace;
}

- (id)_workspace
{
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

- (void)_flushConnectBlocksWithProxy:(uint64_t)proxy
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (proxy)
  {
    [(FBWorkspace *)*(proxy + 8) _lock];
    v4 = *(proxy + 24);
    v5 = *(proxy + 24);
    *(proxy + 24) = 0;

    [(FBWorkspace *)*(proxy + 8) _unlock];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
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

          (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)remoteProcess
{
  if (self)
  {
    self = [self[1] process];
    v1 = vars8;
  }

  return self;
}

- (id)_acquireAssertionForWorkspaceScene:(unsigned int)scene withState:
{
  if (self)
  {
    v4 = *(self + 8);
    identity = [a2 identity];
    v6 = [identity description];
    v7 = [(FBWorkspace *)v4 _acquireAssertionForReason:v6 withState:scene];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_workspaceLock_setConnection:(uint64_t)a1 withInterface:(char *)a2 activationHandler:invalidationHandler:.cold.1(uint64_t a1, char *a2)
{
  v12 = _connectionsLock_connectionByConnection;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"should not be possible to have an existing mapping for connection=%p : existing=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_workspaceLock_setConnection:(uint64_t)a1 withInterface:(char *)a2 activationHandler:invalidationHandler:.cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot set connection if we've already been invalidated : conn=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_workspaceScene:(uint64_t)a1 enqueueConnectBlock:(void *)(a2 .cold.1(uint64_t a1, void (**a2)(void, void))
{
  v4 = [(FBWorkspaceConnection *)a1 queue];
  [v4 assertBarrierOnQueue];

  [(FBWorkspace *)*(a1 + 8) _lock];
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = [a2 copy];
    v7 = MEMORY[0x1AC572E40]();
    [v5 addObject:v7];

    v8 = [(FBWorkspace *)*(a1 + 8) _synchronizer];
    [(FBSceneSynchronizer *)v8 _setWaitingForConnect];

    v9 = *(a1 + 8);

    [(FBWorkspace *)v9 _unlock];
  }

  else
  {
    if (*(a1 + 32) == 1)
    {
      v10 = [*(a1 + 16) remoteTarget];
    }

    else
    {
      v10 = 0;
    }

    [(FBWorkspace *)*(a1 + 8) _unlock];
    (a2)[2](a2, v10);
  }
}

- (void)_workspaceScene:(char *)a1 enqueueConnectBlock:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"block != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)currentWorkspaceConnection
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"if we're asking for the currentContext and we don't have it then something must have gone seriously wrong"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)workspaceLock_enqueueConnectBlock:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) == 1)
  {
    v6 = [*(a1 + 16) remoteTarget];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(FBWorkspaceConnection *)a1 queue];
  *a2 = MEMORY[0x1E69E9820];
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = __59__FBWorkspaceConnection_workspaceLock_enqueueConnectBlock___block_invoke;
  *(a2 + 24) = &unk_1E783C368;
  v8 = a3;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  v9 = v6;
  [v7 performAsync:a2];
}

- (void)workspaceLock_enqueueConnectBlock:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"block != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)workspaceLock_invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(self);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

@end