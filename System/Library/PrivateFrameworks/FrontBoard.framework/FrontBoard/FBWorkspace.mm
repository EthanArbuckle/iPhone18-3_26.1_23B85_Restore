@interface FBWorkspace
- (BSAuditToken)auditToken;
- (FBProcess)process;
- (FBWorkspace)init;
- (FBWorkspaceDelegate)delegate;
- (NSString)description;
- (id)_acquireAssertionForReason:(uint64_t)reason withState:;
- (id)_domain;
- (id)_incomingEndpointPromise;
- (id)_initWithDispatcher:(void *)dispatcher process:;
- (id)_sceneForHost:(id)host;
- (id)_sceneForIdentity:(id)identity;
- (id)_synchronizer;
- (id)_unregisterSceneForHost:(id)host;
- (id)registerHost:(id)host settings:(id)settings initialClientSettings:(id)clientSettings fromRemnant:(id)remnant error:(id *)error;
- (uint64_t)state;
- (void)_assertLocked;
- (void)_dropLaunchAssertion;
- (void)_enableLegacyRequests:(uint64_t)requests;
- (void)_handleSceneRequest:(id)request;
- (void)_lock;
- (void)_noteProcessBootstrapped:(void *)bootstrapped withHandle:(void *)handle assertion:(void *)assertion outgoingEndpointPromise:;
- (void)_noteProcessDidInvalidate:(uint64_t)invalidate;
- (void)_processCallOutQueue_requestScene:(id)scene;
- (void)_queue_unverifiedOutgoingConnection:(void *)connection didError:;
- (void)_resolveSceneLifecycleStateAndInterruptionPolicy;
- (void)_setIncomingConnection:(uint64_t)connection;
- (void)_terminateGracefully:(void *)gracefully withTransitionContext:;
- (void)_terminateWithReason:(id)reason;
- (void)_unlock;
- (void)_updateProcessAssertionState;
- (void)_workspaceSceneLifecycleStateChanged:(void *)changed;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)createSceneWithOptions:(id)options completion:(id)completion;
- (void)dealloc;
- (void)handshakeWithRemnants:(id)remnants;
- (void)host:(id)host didInvalidateWithTransitionContext:(id)context completion:(id)completion;
- (void)host:(id)host didReceiveActions:(id)actions forExtension:(Class)extension;
- (void)host:(id)host didUpdateSettings:(id)settings withDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)host:(id)host sendInvocation:(id)invocation withReply:(id)reply;
- (void)requestSceneWithOptions:(id)options completion:(id)completion;
- (void)sceneID:(id)d didReceiveActions:(id)actions forExtension:(id)extension;
- (void)sceneID:(id)d didUpdateClientSettingsWithDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)sceneID:(id)d handleInvocation:(id)invocation completion:(id)completion;
- (void)sceneID:(id)d invalidateWithContext:(id)context clientError:(id)error;
- (void)sceneID:(id)d sendMessage:(id)message withResponse:(id)response;
- (void)sendActions:(id)actions;
- (void)setDelegate:(id)delegate;
- (void)workspaceID:(id)d sendActions:(id)actions completion:(id)completion;
@end

@implementation FBWorkspace

- (NSString)description
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  succinctDescription = [WeakRetained succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:0];

  build = [v4 build];

  return build;
}

- (id)_domain
{
  if (self)
  {
    _dispatcher = [(FBSceneSynchronizer *)*(self + 24) _dispatcher];
    domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
  }

  else
  {
    domain = 0;
  }

  return domain;
}

- (void)_updateProcessAssertionState
{
  v11 = *MEMORY[0x1E69E9840];
  logProem = [(FBProcess *)self logProem];
  v4 = [a2 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_synchronizer
{
  if (self)
  {
    self = self[3];
    v1 = vars8;
  }

  return self;
}

- (void)_assertLocked
{
  if (self)
  {
    os_unfair_lock_assert_owner(self + 34);
  }
}

- (void)_resolveSceneLifecycleStateAndInterruptionPolicy
{
  v8 = *MEMORY[0x1E69E9840];
  logProem = [(FBProcess *)self logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_lock
{
  if (self)
  {
    os_unfair_lock_lock(self + 34);
  }
}

- (void)_unlock
{
  if (self)
  {
    os_unfair_lock_unlock(self + 34);
  }
}

- (FBProcess)process
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);

  return WeakRetained;
}

- (id)_incomingEndpointPromise
{
  if (self)
  {
    _dispatcher = [(FBSceneSynchronizer *)*(self + 24) _dispatcher];
    domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
    endpointPromise = [(FBWorkspaceDomain *)domain endpointPromise];
  }

  else
  {
    endpointPromise = 0;
  }

  return endpointPromise;
}

- (void)_dropLaunchAssertion
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_connectAssertion;
  lock_connectAssertion = self->_lock_connectAssertion;
  self->_lock_connectAssertion = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(FBWorkspace *)self _updateProcessAssertionState];
  if ([(RBSAssertion *)v3 isValid])
  {
    WeakRetained = objc_loadWeakRetained(&self->_weak_process);
    v6 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      v9 = 138543362;
      v10 = logProem;
      _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Dropping launch assertion.", &v9, 0xCu);
    }

    [(RBSAssertion *)v3 invalidate];
    [WeakRetained _noteAssertionStateDidChange];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"isInvalidated == YES", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (uint64_t)state
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 136));
  v2 = 0;
  v3 = *(self + 104);
  if (v3)
  {
    v2 = FBWorkspaceStateCombine(0, [v3 fb_workspaceState]);
  }

  v4 = *(self + 112);
  if (v4)
  {
    v2 = FBWorkspaceStateCombine(v2, [v4 fb_workspaceState]);
  }

  os_unfair_lock_unlock((self + 136));
  return v2;
}

- (FBWorkspace)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBWorkspace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"FBWorkspace.m";
    v17 = 1024;
    v18 = 89;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithDispatcher:(void *)dispatcher process:
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dispatcherCopy = dispatcher;
  if (self)
  {
    if (!v5)
    {
      [FBWorkspace _initWithDispatcher:? process:?];
    }

    if (!dispatcherCopy)
    {
      [FBWorkspace _initWithDispatcher:? process:?];
    }

    v42.receiver = self;
    v42.super_class = FBWorkspace;
    v7 = objc_msgSendSuper2(&v42, sel_init);
    self = v7;
    if (v7)
    {
      *(v7 + 34) = 0;
      v8 = [dispatcherCopy pid];
      v9 = MEMORY[0x1E696AEC0];
      logProem = [(FBProcess *)dispatcherCopy logProem];
      v11 = logProem;
      if (v8 < 1)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        v12 = [v9 stringWithFormat:@"FBProcess:%@-%@", v11, uUIDString];
      }

      else
      {
        v12 = [v9 stringWithFormat:@"FBProcess:%@", logProem];
      }

      v15 = MEMORY[0x1E698F4D0];
      v16 = [MEMORY[0x1E698F500] serviceWithClass:33];
      v17 = [v15 queueWithName:v12 serviceQuality:v16];

      v18 = [[FBSceneSynchronizer alloc] _initWithIdentifier:v12 workspaceQueue:v17 dispatcher:v5];
      v19 = *(self + 3);
      *(self + 3) = v18;

      objc_storeWeak(self + 2, dispatcherCopy);
      rbsHandle = [dispatcherCopy rbsHandle];
      if (rbsHandle)
      {
        [(FBSceneSynchronizer *)*(self + 3) _setProcessHandle:rbsHandle];
        v21 = FBLogProcessWorkspace();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          logProem2 = [(FBProcess *)dispatcherCopy logProem];
          *buf = 138543362;
          selfCopy2 = logProem2;
          _os_log_impl(&dword_1A89DD000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering event dispatcher at init", buf, 0xCu);
        }

        _dispatcher = [(FBSceneSynchronizer *)*(self + 3) _dispatcher];
        v24 = [(FBWorkspaceEventDispatcher *)_dispatcher registerSourceWithProcessHandle:rbsHandle];
        v25 = *(self + 5);
        *(self + 5) = v24;
      }

      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = *(self + 7);
      *(self + 7) = v26;

      v28 = MEMORY[0x1E698E658];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __43__FBWorkspace__initWithDispatcher_process___block_invoke;
      v40[3] = &unk_1E783C0B0;
      self = self;
      selfCopy = self;
      v29 = [v28 assertionWithIdentifier:v12 stateDidChangeHandler:v40];
      v30 = *(self + 12);
      *(self + 12) = v29;

      *(self + 140) = 1;
      if ([dispatcherCopy isExtensionProcess])
      {
        extensionInfo = [dispatcherCopy extensionInfo];
        extensionIdentifier = [extensionInfo extensionIdentifier];

        if (!extensionIdentifier)
        {
          v33 = +[FBPreferences sharedInstance];
          disableXPCServicesEndpointHack = [v33 disableXPCServicesEndpointHack];

          if ((disableXPCServicesEndpointHack & 1) == 0)
          {
            *(self + 140) = 0;
          }
        }
      }

      v35 = [[FBWorkspaceIncomingConnection alloc] initWithWorkspace:self];
      v36 = *(self + 4);
      *(self + 4) = v35;

      v37 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1A89DD000, v37, OS_LOG_TYPE_DEFAULT, "Created %{public}@", buf, 0xCu);
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_weak_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (FBWorkspaceDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_weak_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BSAuditToken)auditToken
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  auditToken = [WeakRetained auditToken];

  return auditToken;
}

- (void)sendActions:(id)actions
{
  v33 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    objc_opt_class();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = actionsCopy;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [(FBWorkspace *)v11 sendActions:a2];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v8);
    }

    os_unfair_lock_lock(&self->_lock);
    if (self && (os_unfair_lock_assert_owner(&self->_lock), v12 = 1, atomic_compare_exchange_strong_explicit(&self->_invalidated, &v12, v12, memory_order_relaxed, memory_order_relaxed), v12 == 1))
    {
      _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __27__FBWorkspace_sendActions___block_invoke;
      v22[3] = &unk_1E783B580;
      v23 = v6;
      [_workspaceQueue performAsync:v22];

      WeakRetained = v23;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_weak_process);
      v15 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        logProem = [(FBProcess *)WeakRetained logProem];
        fbs_singleLineDescriptionOfBSActions = [v6 fbs_singleLineDescriptionOfBSActions];
        *buf = 138543618;
        v29 = logProem;
        v30 = 2114;
        v31 = fbs_singleLineDescriptionOfBSActions;
        _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending action(s): %{public}@", buf, 0x16u);
      }

      lock_incomingConnection = self->_lock_incomingConnection;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __27__FBWorkspace_sendActions___block_invoke_41;
      v20[3] = &unk_1E783C0D8;
      v20[4] = self;
      v21 = v6;
      [(FBWorkspaceConnection *)lock_incomingConnection workspaceLock_enqueueConnectBlock:v20];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __27__FBWorkspace_sendActions___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) invalidate];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __27__FBWorkspace_sendActions___block_invoke_41(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v5 = [WeakRetained target];

  if (v3 && v5)
  {
    v12 = FBWorkspaceStateCreate(1, 3, 40);
    v13 = [(FBWorkspace *)*(a1 + 32) _acquireAssertionForReason:v12 withState:?];
    v14 = objc_opt_new();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __27__FBWorkspace_sendActions___block_invoke_2;
    v26[3] = &unk_1E783B240;
    v27 = v14;
    v28 = v13;
    v15 = v13;
    v6 = v14;
    v16 = MEMORY[0x1AC572E40](v26);
    v17 = *(a1 + 40);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __27__FBWorkspace_sendActions___block_invoke_3;
    v24[3] = &unk_1E783BD20;
    v25 = v16;
    v18 = v16;
    [v3 sendActions:v17 completion:v24];
    v19 = [(FBSceneSynchronizer *)*(*(a1 + 32) + 24) _workspaceQueue];
    [v19 performAfter:v18 withBlock:5.0];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * v10++) invalidate];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __27__FBWorkspace_sendActions___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) signal];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 invalidate];
  }

  return result;
}

- (id)_sceneForHost:(id)host
{
  hostCopy = host;
  definition = [hostCopy definition];
  identity = [definition identity];
  v7 = [(FBWorkspace *)self _sceneForIdentity:identity];

  host = [v7 host];

  if (host != hostCopy)
  {

    v7 = 0;
  }

  return v7;
}

- (id)_sceneForIdentity:(id)identity
{
  identityCopy = identity;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!identityCopy)
  {
    [FBWorkspace _sceneForIdentity:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace _sceneForIdentity:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_lock_identityToSceneMap objectForKey:identityCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_unregisterSceneForHost:(id)host
{
  v21 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  definition = [hostCopy definition];
  identity = [definition identity];

  v8 = identity;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!v8)
  {
    [FBWorkspace _unregisterSceneForHost:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace _unregisterSceneForHost:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_lock_identityToSceneMap objectForKey:v8];
  v10 = v9;
  if (v9 && ([v9 host], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == hostCopy))
  {
    WeakRetained = objc_loadWeakRetained(&self->_weak_process);
    v13 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      v17 = 138543618;
      v18 = logProem;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Unregistering scene: %{public}@", &v17, 0x16u);
    }

    [(NSMutableDictionary *)self->_lock_identityToSceneMap removeObjectForKey:v8];
  }

  else
  {

    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_terminateWithReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_assert_not_owner(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  if (WeakRetained)
  {
    v5 = [MEMORY[0x1E699FBB0] requestForProcess:WeakRetained withLabel:@"FBWorkspace misbehaving process"];
    [v5 setReportType:1];
    [v5 setExceptionCode:1269680657];
    [v5 setExplanation:reasonCopy];
    [v5 execute];
  }
}

- (void)_handleSceneRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v5 = 1;
    atomic_compare_exchange_strong_explicit(&self->_invalidated, &v5, v5, memory_order_relaxed, memory_order_relaxed);
    if (v5 == 1)
    {
      v6 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace _handleSceneRequest:];
      }

LABEL_13:

      targetIdentifier = FBSWorkspaceErrorCreate();
      [requestCopy invalidateWithError:targetIdentifier];
      goto LABEL_14;
    }
  }

  if (!self->_lock_eventDispatcherSource)
  {
    v6 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace _handleSceneRequest:];
    }

    goto LABEL_13;
  }

  if (self->_lock_didReceiveHandshake)
  {
    _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
    v8 = [(FBWorkspaceEventDispatcher *)_dispatcher handleSceneRequest:requestCopy fromSource:self->_lock_eventDispatcherSource];

    if (v8)
    {
LABEL_15:
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_16;
    }

    if (![requestCopy requiresModernDispatcher])
    {
      lock_pendedRequests = self->_lock_pendedRequests;
      if (lock_pendedRequests)
      {
        [(NSMutableArray *)lock_pendedRequests addObject:requestCopy];
      }

      else
      {
        v14 = +[FBProcess calloutQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __35__FBWorkspace__handleSceneRequest___block_invoke;
        block[3] = &unk_1E783B240;
        block[4] = self;
        v16 = requestCopy;
        dispatch_async(v14, block);
      }

      goto LABEL_15;
    }

    targetIdentifier = [requestCopy targetIdentifier];
    v10 = FBSWorkspaceErrorCreate();
    [requestCopy invalidateWithError:{v10, targetIdentifier}];

LABEL_14:
    goto LABEL_15;
  }

  v11 = FBLogProcessWorkspace();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [FBWorkspace _handleSceneRequest:];
  }

  os_unfair_lock_unlock(&self->_lock);
  [(FBWorkspace *)self _terminateWithReason:@"scene request before handshake"];
  v12 = FBSWorkspaceErrorCreate();
  [requestCopy invalidateWithError:v12];

LABEL_16:
}

void __35__FBWorkspace__handleSceneRequest___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 136));
  v2 = *(a1 + 32);
  if (v2)
  {
    os_unfair_lock_assert_owner((v2 + 136));
    v3 = 1;
    atomic_compare_exchange_strong_explicit((v2 + 142), &v3, v3, memory_order_relaxed, memory_order_relaxed);
    v4 = v3 == 1;
    os_unfair_lock_unlock((*(a1 + 32) + 136));
    if (v4)
    {
      v5 = *(a1 + 40);
      v8 = FBSWorkspaceErrorCreate();
      [v5 invalidateWithError:v8];

      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(0x88);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  [v6 _processCallOutQueue_requestScene:v7];
}

- (void)_noteProcessBootstrapped:(void *)bootstrapped withHandle:(void *)handle assertion:(void *)assertion outgoingEndpointPromise:
{
  v68 = *MEMORY[0x1E69E9840];
  v9 = a2;
  bootstrappedCopy = bootstrapped;
  handleCopy = handle;
  assertionCopy = assertion;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));

    if (WeakRetained != v9)
    {
      [FBWorkspace _noteProcessBootstrapped:? withHandle:? assertion:? outgoingEndpointPromise:?];
    }

    if (!assertionCopy)
    {
      [FBWorkspace _noteProcessBootstrapped:? withHandle:? assertion:? outgoingEndpointPromise:?];
    }

    if (bootstrappedCopy)
    {
      [(FBSceneSynchronizer *)*(self + 24) _setProcessHandle:bootstrappedCopy];
    }

    else if (([(FBWorkspaceEndpointPromise *)assertionCopy isResolvedNullEndpoint]& 1) == 0)
    {
      assertionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"workspace's process bootstrapped without a handle but still had a valid outgoing endpoint promise : process=%@ endpointPromise=%@", v9, assertionCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace _noteProcessBootstrapped:withHandle:assertion:outgoingEndpointPromise:];
      }

      [assertionCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A08188);
    }

    os_unfair_lock_lock((self + 136));
    v14 = *(self + 72);
    if (v14)
    {
      bootstrappedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"already noted bootstrap of process : previousEndpoint=%@ newEndpoint=%@ newHandle=%@", v14, assertionCopy, bootstrappedCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace _noteProcessBootstrapped:withHandle:assertion:outgoingEndpointPromise:];
      }

      [bootstrappedCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A0812CLL);
    }

    objc_storeStrong((self + 72), assertion);
    if (!bootstrappedCopy || (os_unfair_lock_assert_owner((self + 136)), v15 = 1, atomic_compare_exchange_strong_explicit((self + 142), &v15, v15, memory_order_relaxed, memory_order_relaxed), v15 == 1))
    {
      os_unfair_lock_unlock((self + 136));
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_3_136;
      v50[3] = &unk_1E783B580;
      v51 = v9;
      [v51 _launchDidComplete:0 finalizeBlock:v50];
      [handleCopy invalidate];
      v16 = v51;
LABEL_36:

      goto LABEL_37;
    }

    if (*(self + 40))
    {
      if (!handleCopy)
      {
LABEL_21:
        v49 = assertionCopy;
        v26 = FBAnalyticsLogHangTracerEvent(v9, 1);
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke;
        v59[3] = &unk_1E783C100;
        v16 = v26;
        v63 = v16;
        v27 = v9;
        v60 = v27;
        v48 = handleCopy;
        v61 = handleCopy;
        selfCopy = self;
        v28 = MEMORY[0x1AC572E40](v59);
        v47 = v27;
        v29 = [v27 pid];
        v30 = getpid();
        if (v29 == v30)
        {
          _workspaceQueue = [(FBSceneSynchronizer *)*(self + 24) _workspaceQueue];
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_3;
          v57[3] = &unk_1E783B9B8;
          v32 = &v58;
          v58 = v28;
          [_workspaceQueue performAsync:v57];
        }

        else
        {
          v31 = *(self + 32);
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_4;
          v55[3] = &unk_1E783C128;
          v32 = &v56;
          v56 = v28;
          [(FBWorkspaceConnection *)v31 workspaceLock_enqueueConnectBlock:v55];
        }

        v34 = *(self + 80);
        if (v34)
        {
          endpoint = [(FBWorkspaceEndpointPromise *)*(self + 72) endpoint];
          [(FBWorkspaceOutgoingConnection *)v34 workspaceLock_setEndpoint:endpoint];
        }

        os_unfair_lock_unlock((self + 136));
        assertionCopy = v49;
        if (v29 == v30 || (*(self + 140) & 1) == 0)
        {
          _dispatcher = FBLogProcessWorkspace();
          handleCopy = v48;
          v40 = v47;
          if (os_log_type_enabled(_dispatcher, OS_LOG_TYPE_DEFAULT))
          {
            logProem = [(FBProcess *)v47 logProem];
            *buf = 138543362;
            v65 = logProem;
            _os_log_impl(&dword_1A89DD000, _dispatcher, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping workspace endpoint injector.", buf, 0xCu);
          }
        }

        else
        {
          _dispatcher = [(FBSceneSynchronizer *)*(self + 24) _dispatcher];
          domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
          v38 = [(FBWorkspaceDomain *)domain endpointInjectorTargetingProcess:bootstrappedCopy];
          v39 = *(self + 64);
          *(self + 64) = v38;

          handleCopy = v48;
          v40 = v47;
        }

        [self _updateProcessAssertionState];
        [self _resolveSceneLifecycleStateAndInterruptionPolicy];
        if (handleCopy)
        {
          [v40 _noteAssertionStateDidChange];
        }

        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_132;
        v52[3] = &unk_1E783B240;
        v53 = v40;
        v54 = bootstrappedCopy;
        v42 = MEMORY[0x1AC572E40](v52);
        if (qos_class_self() <= 0x18)
        {
          v43 = BSDispatchBlockCreateWithQualityOfService();

          v42 = v43;
        }

        v42[2](v42);

        goto LABEL_36;
      }
    }

    else
    {
      v17 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        logProem2 = [(FBProcess *)v9 logProem];
        *buf = 138543362;
        v65 = logProem2;
        _os_log_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering event dispatcher after bootstrap", buf, 0xCu);
      }

      _dispatcher2 = [(FBSceneSynchronizer *)*(self + 24) _dispatcher];
      v20 = [(FBWorkspaceEventDispatcher *)_dispatcher2 registerSourceWithProcessHandle:bootstrappedCopy];
      v21 = *(self + 40);
      *(self + 40) = v20;

      if (!handleCopy)
      {
        goto LABEL_21;
      }
    }

    fb_workspaceState = [handleCopy fb_workspaceState];
    if (FBWorkspaceStateEqual(fb_workspaceState, 0))
    {
      [FBWorkspace _noteProcessBootstrapped:? withHandle:? assertion:? outgoingEndpointPromise:?];
    }

    v23 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      logProem3 = [(FBProcess *)v9 logProem];
      v25 = NSStringFromFBWorkspaceState(fb_workspaceState);
      *buf = 138543618;
      v65 = logProem3;
      v66 = 2114;
      v67 = v25;
      _os_log_impl(&dword_1A89DD000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Initial launch state: %{public}@.", buf, 0x16u);
    }

    objc_storeStrong((self + 112), handle);
    [*(self + 112) addObserver:self];
    goto LABEL_21;
  }

LABEL_37:

  v44 = *MEMORY[0x1E69E9840];
}

void __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_2;
  v8[3] = &unk_1E783B240;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v6;
  v10 = v7;
  [v5 _launchDidComplete:a2 finalizeBlock:v8];
}

uint64_t __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) _dropLaunchAssertion];
  }

  return result;
}

void __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_132(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_2_133;
  v3[3] = &unk_1E783C150;
  objc_copyWeak(&v4, &location);
  [v2 monitorForDeath:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __85__FBWorkspace__noteProcessBootstrapped_withHandle_assertion_outgoingEndpointPromise___block_invoke_2_133(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [[FBProcessExitContext alloc] initWithUnderlyingContext:v6];
    [WeakRetained _processDidExitWithContext:v5];
  }
}

- (void)_enableLegacyRequests:(uint64_t)requests
{
  v3 = a2;
  if (requests)
  {
    WeakRetained = objc_loadWeakRetained((requests + 16));

    if (WeakRetained != v3)
    {
      [FBWorkspace _enableLegacyRequests:?];
    }

    [(FBWorkspace *)requests _enableLegacyRequests:v5];
  }
}

void __37__FBWorkspace__enableLegacyRequests___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 136));
  v2 = *(*(a1 + 32) + 56);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 136));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [*(a1 + 32) _processCallOutQueue_requestScene:{*(*(&v11 + 1) + 8 * v9++), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_processCallOutQueue_requestScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(FBWorkspace *)self delegate];
  if (delegate)
  {
    options = [sceneCopy options];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__FBWorkspace__processCallOutQueue_requestScene___block_invoke;
    v8[3] = &unk_1E783C178;
    v9 = sceneCopy;
    [delegate workspace:self didReceiveSceneRequestWithOptions:options completion:v8];
  }

  else
  {
    v7 = FBSWorkspaceErrorCreate();
    [sceneCopy invalidateWithError:v7];
  }
}

void __49__FBWorkspace__processCallOutQueue_requestScene___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 respondWithScene:a2];
  }

  else
  {
    v4 = FBSWorkspaceErrorCreate();
    [v2 invalidateWithError:v4];
  }
}

- (void)_noteProcessDidInvalidate:(uint64_t)invalidate
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (invalidate)
  {
    WeakRetained = objc_loadWeakRetained((invalidate + 16));

    if (WeakRetained != v3)
    {
      [FBWorkspace _noteProcessDidInvalidate:?];
    }

    os_unfair_lock_lock((invalidate + 136));
    v5 = 0;
    atomic_compare_exchange_strong_explicit((invalidate + 142), &v5, 1u, memory_order_relaxed, memory_order_relaxed);
    if (v5)
    {
      os_unfair_lock_unlock((invalidate + 136));
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v6 = *(invalidate + 56);
      v7 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v46;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v46 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v45 + 1) + 8 * i);
            v12 = FBSWorkspaceErrorCreate();
            [v11 invalidateWithError:v12];
          }

          v8 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v8);
      }

      v13 = *(invalidate + 56);
      *(invalidate + 56) = 0;

      v14 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        logProem = [(FBProcess *)v3 logProem];
        *buf = 138543362;
        v51 = logProem;
        _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating workspace.", buf, 0xCu);
      }

      allValues = [*(invalidate + 88) allValues];
      [*(invalidate + 88) removeAllObjects];
      [*(invalidate + 48) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_11];
      [*(invalidate + 48) removeAllObjects];
      [*(invalidate + 40) invalidate];
      v17 = *(invalidate + 40);
      *(invalidate + 40) = 0;

      workspaceLock_invalidate = [(FBWorkspaceConnection *)*(invalidate + 32) workspaceLock_invalidate];
      v19 = *(invalidate + 80);
      if (v19)
      {
        workspaceLock_invalidate2 = [(FBWorkspaceConnection *)v19 workspaceLock_invalidate];
        v21 = workspaceLock_invalidate2;
        if (workspaceLock_invalidate2)
        {
          if (workspaceLock_invalidate)
          {
            [workspaceLock_invalidate addObjectsFromArray:workspaceLock_invalidate2];
          }

          else
          {
            workspaceLock_invalidate = workspaceLock_invalidate2;
          }
        }
      }

      v22 = *(invalidate + 32);
      *(invalidate + 32) = 0;

      v23 = *(invalidate + 80);
      *(invalidate + 80) = 0;

      [*(invalidate + 64) invalidate];
      v24 = *(invalidate + 64);
      *(invalidate + 64) = 0;

      [*(invalidate + 112) invalidate];
      v25 = *(invalidate + 112);
      *(invalidate + 112) = 0;

      [*(invalidate + 104) invalidate];
      v26 = *(invalidate + 104);
      *(invalidate + 104) = 0;

      [*(invalidate + 120) invalidate];
      v27 = *(invalidate + 120);
      *(invalidate + 120) = 0;

      if ([allValues count])
      {
        v28 = +[FBProcess calloutQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__FBWorkspace__noteProcessDidInvalidate___block_invoke_2;
        block[3] = &unk_1E783B240;
        v43 = allValues;
        v44 = v3;
        dispatch_async(v28, block);
      }

      os_unfair_lock_unlock((invalidate + 136));
      [*(invalidate + 96) invalidate];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v29 = allValues;
      v30 = [v29 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v39;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v39 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [*(*(&v38 + 1) + 8 * j) invalidate];
          }

          v31 = [v29 countByEnumeratingWithState:&v38 objects:v49 count:16];
        }

        while (v31);
      }

      if ([workspaceLock_invalidate count])
      {
        _workspaceQueue = [(FBSceneSynchronizer *)*(invalidate + 24) _workspaceQueue];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __41__FBWorkspace__noteProcessDidInvalidate___block_invoke_3;
        v36[3] = &unk_1E783B580;
        v37 = workspaceLock_invalidate;
        [_workspaceQueue performAsync:v36];
      }
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __41__FBWorkspace__noteProcessDidInvalidate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 _assertion];
    [v3 invalidate];
  }
}

void __41__FBWorkspace__noteProcessDidInvalidate___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 host];
        v8 = [*(a1 + 40) exitContext];
        v9 = [v8 createError];
        v10 = FBSceneErrorCreate(4uLL, @"Client process exited.", v9);
        [v7 clientToken:v6 didInvalidateWithError:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __41__FBWorkspace__noteProcessDidInvalidate___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_terminateGracefully:(void *)gracefully withTransitionContext:
{
  v5 = a2;
  gracefullyCopy = gracefully;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));

    if (WeakRetained != v5)
    {
      [FBWorkspace _terminateGracefully:? withTransitionContext:?];
    }

    [(FBWorkspace *)self _terminateGracefully:gracefullyCopy withTransitionContext:?];
  }
}

- (void)_workspaceSceneLifecycleStateChanged:(void *)changed
{
  v3 = a2;
  if (changed)
  {
    if (v3)
    {
      v6 = v3;
      identity = [v3 identity];
      v5 = [changed _sceneForIdentity:identity];

      v3 = v6;
      if (v5 == v6)
      {
        [changed _resolveSceneLifecycleStateAndInterruptionPolicy];
        v3 = v6;
      }
    }
  }
}

- (void)_queue_unverifiedOutgoingConnection:(void *)connection didError:
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  connectionCopy = connection;
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    os_unfair_lock_lock((self + 136));
    os_unfair_lock_assert_owner((self + 136));
    v9 = 1;
    atomic_compare_exchange_strong_explicit((self + 142), &v9, v9, memory_order_relaxed, memory_order_relaxed);
    if (v9 == 1)
    {
      os_unfair_lock_unlock((self + 136));
    }

    else
    {
      if (*(self + 80) != v5)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unverified outgoingConnection is unknown : expected=%@ actual=%@", *(self + 80), v5];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBWorkspace _queue_unverifiedOutgoingConnection:didError:];
        }

        [v27 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A8A09368);
      }

      v10 = *(self + 88);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __60__FBWorkspace__queue_unverifiedOutgoingConnection_didError___block_invoke;
      v39[3] = &unk_1E783C1E8;
      v11 = array;
      v40 = v11;
      v12 = array2;
      v41 = v12;
      [v10 enumerateKeysAndObjectsUsingBlock:v39];
      [*(self + 88) removeObjectsForKeys:v11];
      workspaceLock_invalidate = [(FBWorkspaceConnection *)v5 workspaceLock_invalidate];
      v14 = *(self + 80);
      *(self + 80) = 0;

      if ([v12 count])
      {
        v15 = +[FBProcess calloutQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__FBWorkspace__queue_unverifiedOutgoingConnection_didError___block_invoke_2;
        block[3] = &unk_1E783B240;
        v37 = v12;
        v38 = connectionCopy;
        dispatch_async(v15, block);
      }

      os_unfair_lock_unlock((self + 136));
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v32 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v33;
        do
        {
          v20 = 0;
          do
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v32 + 1) + 8 * v20++) invalidate];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v32 objects:v43 count:16];
        }

        while (v18);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = workspaceLock_invalidate;
      v22 = [v21 countByEnumeratingWithState:&v28 objects:v42 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v29;
        do
        {
          v25 = 0;
          do
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(v21);
            }

            (*(*(*(&v28 + 1) + 8 * v25++) + 16))();
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v28 objects:v42 count:16];
        }

        while (v23);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __60__FBWorkspace__queue_unverifiedOutgoingConnection_didError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 usesOutgoingConnection])
  {
    [*(a1 + 32) addObject:v6];
    [*(a1 + 40) addObject:v5];
  }
}

void __60__FBWorkspace__queue_unverifiedOutgoingConnection_didError___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 host];
        [v8 clientToken:v7 didInvalidateWithError:*(a1 + 40)];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)registerHost:(id)host settings:(id)settings initialClientSettings:(id)clientSettings fromRemnant:(id)remnant error:(id *)error
{
  v97[1] = *MEMORY[0x1E69E9840];
  hostCopy = host;
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  remnantCopy = remnant;
  if (!hostCopy)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v17 = remnantCopy;
  errorCopy = error;
  definition = [hostCopy definition];
  identity = [definition identity];
  clientIdentity = [definition clientIdentity];
  targetsClientEndpoint = [clientIdentity targetsClientEndpoint];

  specification = [definition specification];
  v23 = identity;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!v23)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v77 = targetsClientEndpoint;

  v24 = specification;
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!v24)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  log = a2;
  v79 = definition;

  v25 = settingsCopy;
  NSClassFromString(&cfstr_Fbsscenesettin.isa);
  if (!v25)
  {
    [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  [v24 settingsClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"settings of an unexpected class: expected %@, got %@", objc_msgSend(v24, "settingsClass"), objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    [v68 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A09D58);
  }

  v81 = hostCopy;
  v26 = clientSettingsCopy;
  NSClassFromString(&cfstr_Fbssceneclient_0.isa);
  if (!v26)
  {
    [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  [v24 clientSettingsClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initialClientSettings of an unexpected class: expected %@, got %@", objc_msgSend(v24, "clientSettingsClass"), objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    [v69 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A09DE4);
  }

  if (v17)
  {
    v27 = v17;
    NSClassFromString(&cfstr_Fbsceneremnant_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    if ([v27 _hasBeenInvalidated])
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    _workspace = [v27 _workspace];

    if (_workspace != self)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    definition2 = [v27 definition];
    specification2 = [definition2 specification];
    v31 = objc_opt_class();
    v32 = v17;
    v33 = objc_opt_class();

    v34 = v31 == v33;
    v17 = v32;
    if (!v34)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }
  }

  os_unfair_lock_lock(&self->_lock);
  lock_identityToSceneMap = self->_lock_identityToSceneMap;
  if (!lock_identityToSceneMap)
  {
    v36 = objc_opt_new();
    v37 = self->_lock_identityToSceneMap;
    self->_lock_identityToSceneMap = v36;

    lock_identityToSceneMap = self->_lock_identityToSceneMap;
  }

  v38 = [(NSMutableDictionary *)lock_identityToSceneMap objectForKey:v23];

  if (v38)
  {
    v70 = MEMORY[0x1E696AEC0];
    v71 = [(NSMutableDictionary *)self->_lock_identityToSceneMap objectForKey:v23];
    v72 = [v81 debugDescription];
    v73 = [v70 stringWithFormat:@"cannot register a host that is already registered : existing=%@ : host=%@", v71, v72];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    [v73 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A09E70);
  }

  if (self->_lock_didReceiveHandshake)
  {
    v82 = [(NSMutableDictionary *)self->_lock_identityToRemnantsMap objectForKey:v23];
  }

  else
  {
    if (v17)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    lock_identityToRemnantsMap = self->_lock_identityToRemnantsMap;
    if (!lock_identityToRemnantsMap)
    {
      v40 = objc_opt_new();
      v41 = self->_lock_identityToRemnantsMap;
      self->_lock_identityToRemnantsMap = v40;

      lock_identityToRemnantsMap = self->_lock_identityToRemnantsMap;
    }

    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)lock_identityToRemnantsMap setObject:null forKey:v23];

    v82 = 0;
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v43 = 1;
  atomic_compare_exchange_strong_explicit(&self->_invalidated, &v43, v43, memory_order_relaxed, memory_order_relaxed);
  if (v43 == 1)
  {
    v44 = v17;
    v45 = MEMORY[0x1E696ABC0];
    v96 = *MEMORY[0x1E696A588];
    v97[0] = @"Workspace has been invalidated (process has exited).";
    v46 = MEMORY[0x1E695DF20];
    v47 = v97;
    v48 = &v96;
LABEL_31:
    WeakRetained = [v46 dictionaryWithObjects:v47 forKeys:v48 count:1];
    v50 = [v45 errorWithDomain:@"FBWorkspace" code:1 userInfo:WeakRetained];
    v51 = 0;
    v52 = 0;
LABEL_32:

    v17 = v44;
    goto LABEL_33;
  }

  if (self->_test_rejectAllSceneClients)
  {
    v44 = v17;
    v45 = MEMORY[0x1E696ABC0];
    v94 = *MEMORY[0x1E696A588];
    v95 = @"Workspace is rejecting all clients for unit tests.";
    v46 = MEMORY[0x1E695DF20];
    v47 = &v95;
    v48 = &v94;
    goto LABEL_31;
  }

  if (v77)
  {
    endpoint = [(FBWorkspaceEndpointPromise *)self->_lock_outgoingEndpointPromise endpoint];
    if ([endpoint isNullEndpoint])
    {
      v60 = MEMORY[0x1E696ABC0];
      v92 = *MEMORY[0x1E696A588];
      v93 = @"Workspace cannot establish a connection to a null endpoint.";
      v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v50 = [v60 errorWithDomain:@"FBWorkspace" code:1 userInfo:v61];

      v51 = 0;
    }

    else
    {
      lock_outgoingConnection = self->_lock_outgoingConnection;
      if (lock_outgoingConnection)
      {
        v51 = lock_outgoingConnection;
      }

      else
      {
        v65 = [[FBWorkspaceOutgoingConnection alloc] initWithWorkspace:?];
        v66 = self->_lock_outgoingConnection;
        self->_lock_outgoingConnection = v65;

        v51 = v65;
        if (endpoint)
        {
          [(FBWorkspaceOutgoingConnection *)self->_lock_outgoingConnection workspaceLock_setEndpoint:endpoint];
        }
      }

      v50 = 0;
    }

    v64 = 0;
  }

  else if (v17)
  {
    if (v82 != v17)
    {
      v62 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace registerHost:settings:initialClientSettings:fromRemnant:error:];
      }

      v44 = v17;

      v45 = MEMORY[0x1E696ABC0];
      v90 = *MEMORY[0x1E696A588];
      v91 = @"Invalid scene remnant provided.";
      v46 = MEMORY[0x1E695DF20];
      v47 = &v91;
      v48 = &v90;
      goto LABEL_31;
    }

    [(NSMutableDictionary *)self->_lock_identityToRemnantsMap removeObjectForKey:v23];
    v51 = self->_lock_incomingConnection;
    v50 = 0;
    v64 = 1;
  }

  else
  {
    v51 = self->_lock_incomingConnection;
    v64 = 0;
    v50 = 0;
  }

  if (v51)
  {
    if (([(FBWorkspaceConnection *)v51 workspaceLock_isValid]& 1) == 0)
    {
      [FBWorkspace registerHost:? settings:? initialClientSettings:? fromRemnant:? error:?];
    }

    v78 = v64;
    v67 = objc_opt_class();
    v44 = v17;
    if ([v25 _uikitShimming_isUISubclass])
    {
      v67 = objc_opt_class();
    }

    v52 = [[v67 alloc] initWithConnection:v51 host:v81 settings:v25 clientSettings:v26 fromRemnant:v78];
    [(NSMutableDictionary *)self->_lock_identityToSceneMap setObject:v52 forKey:v23];
    WeakRetained = objc_loadWeakRetained(&self->_weak_process);
    loga = FBLogProcessWorkspace();
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      *buf = 138543874;
      v85 = logProem;
      v86 = 2114;
      v87 = v52;
      v88 = 1024;
      v89 = v78;
      _os_log_impl(&dword_1A89DD000, loga, OS_LOG_TYPE_DEFAULT, "%{public}@ Registered new scene: %{public}@ (fromRemnant = %d)", buf, 0x1Cu);
    }

    goto LABEL_32;
  }

  v52 = 0;
LABEL_33:
  os_unfair_lock_unlock(&self->_lock);
  _assertion = [v82 _assertion];
  [_assertion invalidate];

  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __77__FBWorkspace_registerHost_settings_initialClientSettings_fromRemnant_error___block_invoke;
  v83[3] = &unk_1E783B580;
  v83[4] = self;
  [_workspaceQueue performAsync:v83];

  if (errorCopy)
  {
    v55 = v50;
    *errorCopy = v50;
  }

  v56 = v52;

  v57 = *MEMORY[0x1E69E9840];
  return v52;
}

- (void)host:(id)host didUpdateSettings:(id)settings withDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  completionCopy = completion;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __76__FBWorkspace_host_didUpdateSettings_withDiff_transitionContext_completion___block_invoke;
  v32[3] = &unk_1E783C210;
  v33 = completionCopy;
  hostCopy = host;
  v17 = MEMORY[0x1AC572E40](v32);
  v18 = [(FBWorkspace *)self _sceneForHost:hostCopy];

  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __76__FBWorkspace_host_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_2;
  v25[3] = &unk_1E783BB68;
  v26 = v18;
  selfCopy = self;
  v28 = settingsCopy;
  v29 = diffCopy;
  v30 = contextCopy;
  v31 = v17;
  v20 = v17;
  v21 = contextCopy;
  v22 = diffCopy;
  v23 = settingsCopy;
  v24 = v18;
  [_workspaceQueue performAsync:v25];
}

uint64_t __76__FBWorkspace_host_didUpdateSettings_withDiff_transitionContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __76__FBWorkspace_host_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_2(void *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v7 = a1[9];

    [(FBWorkspaceScene *)v2 workspace:v3 sendUpdatedSettings:v4 withDiff:v5 transitionContext:v6 completion:v7];
  }

  else
  {
    v8 = a1[9];
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A588];
    v14[0] = @"Scene client is invalid.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v9 errorWithDomain:@"FBWorkspace" code:1 userInfo:v10];
    (*(v8 + 16))(v8, 0, v11);

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)host:(id)host didInvalidateWithTransitionContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke;
  v22[3] = &unk_1E783C210;
  v23 = completionCopy;
  hostCopy = host;
  v11 = MEMORY[0x1AC572E40](v22);
  v12 = [(FBWorkspace *)self _unregisterSceneForHost:hostCopy];

  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke_2;
  v17[3] = &unk_1E783BB18;
  v18 = v12;
  selfCopy = self;
  v20 = contextCopy;
  v21 = v11;
  v14 = v11;
  v15 = contextCopy;
  v16 = v12;
  [_workspaceQueue performAsync:v17];
}

uint64_t __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke_3;
    v10[3] = &unk_1E783C238;
    v12 = *(a1 + 56);
    v11 = *(a1 + 32);
    [(FBWorkspaceScene *)v2 workspace:v3 sendInvalidationWithTransitionContext:v4 completion:v10];
    [*(a1 + 40) _resolveSceneLifecycleStateAndInterruptionPolicy];

    v5 = v12;
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A588];
    v14[0] = @"Scene client is invalid.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v7 errorWithDomain:@"FBWorkspace" code:1 userInfo:v5];
    (*(v6 + 16))(v6, 0, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __66__FBWorkspace_host_didInvalidateWithTransitionContext_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)host:(id)host didReceiveActions:(id)actions forExtension:(Class)extension
{
  actionsCopy = actions;
  v9 = [(FBWorkspace *)self _sceneForHost:host];
  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__FBWorkspace_host_didReceiveActions_forExtension___block_invoke;
  v13[3] = &unk_1E783C260;
  v14 = v9;
  selfCopy = self;
  v16 = actionsCopy;
  extensionCopy = extension;
  v11 = actionsCopy;
  v12 = v9;
  [_workspaceQueue performAsync:v13];
}

- (void)host:(id)host sendInvocation:(id)invocation withReply:(id)reply
{
  invocationCopy = invocation;
  replyCopy = reply;
  v10 = [(FBWorkspace *)self _sceneForHost:host];
  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__FBWorkspace_host_sendInvocation_withReply___block_invoke;
  v15[3] = &unk_1E783BB18;
  v16 = v10;
  selfCopy = self;
  v18 = invocationCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = invocationCopy;
  v14 = v10;
  [_workspaceQueue performAsync:v15];
}

void __45__FBWorkspace_host_sendInvocation_withReply___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [(FBWorkspaceScene *)v2 workspace:v3 sendInvocation:v4 withReply:v5];
  }

  else
  {
    v6 = a1[7];
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"Scene client is invalid.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 errorWithDomain:@"FBWorkspace" code:1 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)handshakeWithRemnants:(id)remnants
{
  v93 = *MEMORY[0x1E69E9840];
  remnantsCopy = remnants;
  _workspaceQueue = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _workspaceQueue];
  [_workspaceQueue assertBarrierOnQueue];

  process = [(FBWorkspace *)self process];
  v6 = +[FBWorkspaceConnection currentWorkspaceConnection];
  if (!v6)
  {
    v8 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace handshakeWithRemnants:];
    }

    goto LABEL_8;
  }

  v7 = objc_opt_class();
  if (v7 != objc_opt_class())
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_didReceiveHandshake)
    {
      os_unfair_lock_unlock(&self->_lock);
      [(FBWorkspace *)self _terminateWithReason:@"double handshake"];
      v8 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [FBWorkspace handshakeWithRemnants:];
      }

LABEL_8:

      goto LABEL_68;
    }

    v18 = 1;
    self->_lock_didReceiveHandshake = 1;
    os_unfair_lock_assert_owner(&self->_lock);
    atomic_compare_exchange_strong_explicit(&self->_invalidated, &v18, v18, memory_order_relaxed, memory_order_relaxed);
    if (v18 == 1)
    {
      v19 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace handshakeWithRemnants:v19];
      }

      goto LABEL_67;
    }

    lock_eventDispatcherSource = self->_lock_eventDispatcherSource;
    v21 = FBLogProcessWorkspace();
    v19 = v21;
    if (!lock_eventDispatcherSource)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FBWorkspace handshakeWithRemnants:v19];
      }

      goto LABEL_67;
    }

    v66 = v6;
    selfCopy = self;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [process debugDescription];
      [MEMORY[0x1E698F490] currentContext];
      v24 = v23 = v19;
      remoteToken = [v24 remoteToken];
      *buf = 138412802;
      v88 = v22;
      v89 = 2112;
      v90 = remoteToken;
      v91 = 1024;
      v92 = [remnantsCopy count];
      _os_log_impl(&dword_1A89DD000, v23, OS_LOG_TYPE_DEFAULT, "received incoming handshake : process=%@ remote=%@ remnants=%u", buf, 0x1Cu);

      v19 = v23;
      self = selfCopy;
    }

    v68 = [MEMORY[0x1E695DFA8] set];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v67 = remnantsCopy;
    obj = remnantsCopy;
    v26 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
    if (v26)
    {
      v27 = v26;
      v72 = *v82;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v82 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v81 + 1) + 8 * i);
          identity = [v29 identity];
          v31 = identity;
          if (identity)
          {
            internalWorkspaceIdentifier = [identity internalWorkspaceIdentifier];
            identity2 = [process identity];
            parameters = [v29 parameters];
            if (!internalWorkspaceIdentifier)
            {
              goto LABEL_35;
            }

            _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
            domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
            reconnectableWorkspaces = [(FBWorkspaceDomain *)domain reconnectableWorkspaces];
            v38 = [reconnectableWorkspaces containsObject:internalWorkspaceIdentifier];

            v39 = v38 == 0;
            self = selfCopy;
            v39 = v39 || identity2 == 0;
            if (v39 || parameters == 0)
            {
LABEL_35:
              v41 = [(NSMutableDictionary *)self->_lock_identityToRemnantsMap objectForKey:v31];

              if (!v41)
              {
                lock_incomingConnection = self->_lock_incomingConnection;
                v77[0] = MEMORY[0x1E69E9820];
                v77[1] = 3221225472;
                v77[2] = __37__FBWorkspace_handshakeWithRemnants___block_invoke_4;
                v77[3] = &unk_1E783C1C0;
                v78 = v31;
                [(FBWorkspaceConnection *)lock_incomingConnection workspaceLock_enqueueConnectBlock:v77];
                v43 = v78;
                goto LABEL_41;
              }
            }

            else
            {
              v44 = [(NSMutableDictionary *)selfCopy->_lock_identityToRemnantsMap objectForKey:v31];

              if (v44)
              {
                v43 = 0;
              }

              else
              {
                v45 = objc_alloc(MEMORY[0x1E698E778]);
                v46 = [v31 description];
                v79[0] = MEMORY[0x1E69E9820];
                v79[1] = 3221225472;
                v79[2] = __37__FBWorkspace_handshakeWithRemnants___block_invoke;
                v79[3] = &unk_1E783C2A8;
                v79[4] = selfCopy;
                v80 = v31;
                v43 = [v45 initWithIdentifier:@"com.apple.frontboard.workspace.remnant" forReason:v46 invalidationBlock:v79];
              }

              v47 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:identity2];
              v48 = [[FBSceneRemnant alloc] _initWithIdentity:v31 client:v47 workspace:selfCopy parameters:parameters assertionQueue:0 assertion:v43];
              [v68 addObject:v48];

LABEL_41:
            }
          }
        }

        v27 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
      }

      while (v27);
    }

    v19 = v68;
    v49 = [v68 count];
    lock_identityToRemnantsMap = self->_lock_identityToRemnantsMap;
    if (v49)
    {
      remnantsCopy = v67;
      if (lock_identityToRemnantsMap)
      {
        [(NSMutableDictionary *)lock_identityToRemnantsMap removeAllObjects];
      }

      else
      {
        v52 = objc_opt_new();
        v53 = self->_lock_identityToRemnantsMap;
        self->_lock_identityToRemnantsMap = v52;
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v54 = v68;
      v55 = [v54 countByEnumeratingWithState:&v73 objects:v85 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v74;
        do
        {
          for (j = 0; j != v56; ++j)
          {
            if (*v74 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v73 + 1) + 8 * j);
            _assertion = [v59 _assertion];

            if (_assertion)
            {
              v61 = selfCopy->_lock_identityToRemnantsMap;
              definition = [v59 definition];
              identity3 = [definition identity];
              [(NSMutableDictionary *)v61 setObject:v59 forKey:identity3];
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v73 objects:v85 count:16];
        }

        while (v56);
      }

      self = selfCopy;
      v6 = v66;
      v19 = v68;
      if ([(NSMutableDictionary *)selfCopy->_lock_identityToRemnantsMap count])
      {
        goto LABEL_66;
      }

      lock_identityToRemnantsMap = selfCopy->_lock_identityToRemnantsMap;
    }

    else
    {
      v6 = v66;
      remnantsCopy = v67;
    }

    self->_lock_identityToRemnantsMap = 0;

LABEL_66:
    _dispatcher2 = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
    [(FBWorkspaceEventDispatcher *)_dispatcher2 noteHandshakeFromSource:v19 withRemnants:?];

LABEL_67:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_68;
  }

  if (-[FBWorkspaceOutgoingConnection queue_isVerified](v6) && ![remnantsCopy count])
  {
    v8 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [process debugDescription];
      *buf = 138412290;
      v88 = v51;
      _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "received outgoing handshake : process=%@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v9 = v6;
  v10 = [process description];
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteToken2 = [currentContext remoteToken];

  v13 = MEMORY[0x1E696AEC0];
  [remnantsCopy description];
  v15 = v14 = self;
  v16 = [v13 stringWithFormat:@"outgoing connection handshake wasn't verified or included remnants: process=%@ remote=%@ remnants=%@", v10, remoteToken2, v15];
  [(FBWorkspace *)v14 _terminateWithReason:v16];

  v17 = FBLogProcessWorkspace();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412802;
    v88 = v10;
    v89 = 2112;
    v90 = remoteToken2;
    v91 = 1024;
    v92 = [remnantsCopy count];
    _os_log_fault_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_FAULT, "outgoing connection handshake included remnants : process=%@ remote=%@ remnants=%u", buf, 0x1Cu);
  }

  v6 = v9;
LABEL_68:

  v65 = *MEMORY[0x1E69E9840];
}

void __37__FBWorkspace_handshakeWithRemnants___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 1;
  v5 = 1;
  atomic_compare_exchange_strong_explicit((*(a1 + 32) + 142), &v5, v5, memory_order_relaxed, memory_order_relaxed);
  if (v5 != 1)
  {
    os_unfair_lock_lock((*(a1 + 32) + 136));
    v6 = *(a1 + 32);
    os_unfair_lock_assert_owner((v6 + 136));
    atomic_compare_exchange_strong_explicit((v6 + 142), &v4, v4, memory_order_relaxed, memory_order_relaxed);
    if (v4 != 1)
    {
      v7 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
      v8 = [v7 _assertion];

      if (v8 == v3)
      {
        [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
        if (![*(*(a1 + 32) + 48) count])
        {
          v9 = *(a1 + 32);
          v10 = *(v9 + 48);
          *(v9 + 48) = 0;
        }

        v11 = *(*(a1 + 32) + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __37__FBWorkspace_handshakeWithRemnants___block_invoke_2;
        v12[3] = &unk_1E783C1C0;
        v13 = *(a1 + 40);
        [(FBWorkspaceConnection *)v11 workspaceLock_enqueueConnectBlock:v12];
      }
    }

    os_unfair_lock_unlock((*(a1 + 32) + 136));
  }
}

- (void)workspaceID:(id)d sendActions:(id)actions completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  actionsCopy = actions;
  completionCopy = completion;
  if ([actionsCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_weak_process);
    v12 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      if (dCopy)
      {
        v14 = dCopy;
      }

      else
      {
        v14 = @"(default)";
      }

      fbs_singleLineDescriptionOfBSActions = [actionsCopy fbs_singleLineDescriptionOfBSActions];
      *buf = 138543874;
      v25 = logProem;
      v26 = 2114;
      v27 = v14;
      v28 = 2114;
      v29 = fbs_singleLineDescriptionOfBSActions;
      _os_log_impl(&dword_1A89DD000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Received action(s) for workspace %{public}@: %{public}@", buf, 0x20u);
    }

    if (dCopy)
    {
      defaultWorkspace = dCopy;
    }

    else
    {
      _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
      domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
      defaultWorkspace = [(FBWorkspaceDomain *)domain defaultWorkspace];
    }

    v19 = [FBWorkspaceSceneRequest alloc];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__FBWorkspace_workspaceID_sendActions_completion___block_invoke;
    v22[3] = &unk_1E783C2D0;
    v23 = completionCopy;
    v20 = [(FBWorkspaceSceneRequest *)v19 initWithTargetIdentifier:defaultWorkspace actions:actionsCopy completion:v22];
    [(FBWorkspace *)self _handleSceneRequest:v20];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __50__FBWorkspace_workspaceID_sendActions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)createSceneWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = +[FBWorkspaceConnection currentWorkspaceConnection];
  if (!v8)
  {
    if (!completionCopy)
    {
      goto LABEL_11;
    }

LABEL_8:
    v13 = FBSWorkspaceErrorCreate();
    completionCopy[2](completionCopy, v13);

    goto LABEL_11;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    if (!completionCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  workspaceIdentifier = [optionsCopy workspaceIdentifier];
  v11 = workspaceIdentifier;
  if (workspaceIdentifier)
  {
    defaultWorkspace = workspaceIdentifier;
  }

  else
  {
    _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
    domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
    defaultWorkspace = [(FBWorkspaceDomain *)domain defaultWorkspace];
  }

  v16 = MEMORY[0x1E699FBD8];
  processHandle = [(FBSceneSynchronizer *)self->_synchronizer processHandle];
  identity = [processHandle identity];
  v19 = [v16 identityForInjectedEndpointToProcessIdentity:identity];

  v20 = [FBWorkspaceSceneRequest alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__FBWorkspace_createSceneWithOptions_completion___block_invoke;
  v22[3] = &unk_1E783C2D0;
  v23 = completionCopy;
  v21 = [(FBWorkspaceSceneRequest *)v20 initWithClientIdentity:v19 targetIdentifier:defaultWorkspace options:optionsCopy completion:v22];
  [(FBWorkspace *)self _handleSceneRequest:v21];

LABEL_11:
}

uint64_t __49__FBWorkspace_createSceneWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)requestSceneWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = +[FBWorkspaceConnection currentWorkspaceConnection];
  if (!v8)
  {
    if (!completionCopy)
    {
      goto LABEL_15;
    }

LABEL_9:
    v13 = FBSWorkspaceErrorCreate();
    completionCopy[2](completionCopy, 0, v13);

    goto LABEL_15;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    if (!completionCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (completionCopy)
  {
    workspaceIdentifier = [optionsCopy workspaceIdentifier];
    v11 = workspaceIdentifier;
    if (workspaceIdentifier)
    {
      defaultWorkspace = workspaceIdentifier;
    }

    else
    {
      _dispatcher = [(FBSceneSynchronizer *)&self->_synchronizer->super.isa _dispatcher];
      domain = [(FBWorkspaceEventDispatcher *)_dispatcher domain];
      defaultWorkspace = [(FBWorkspaceDomain *)domain defaultWorkspace];
    }

    if ([optionsCopy isKeyboardScene])
    {
      process = [(FBWorkspace *)self process];
      v17 = [process hasEntitlement:@"com.apple.frontboard.keyboard-provider"];
    }

    else
    {
      v17 = 0;
    }

    v18 = MEMORY[0x1E699FBD8];
    processHandle = [(FBSceneSynchronizer *)self->_synchronizer processHandle];
    identity = [processHandle identity];
    v21 = [v18 identityForInjectedEndpointToProcessIdentity:identity];

    v22 = [FBWorkspaceSceneRequest alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __50__FBWorkspace_requestSceneWithOptions_completion___block_invoke;
    v24[3] = &unk_1E783C320;
    v26 = v17;
    v24[4] = self;
    v25 = completionCopy;
    v23 = [(FBWorkspaceSceneRequest *)v22 initWithClientIdentity:v21 targetIdentifier:defaultWorkspace options:optionsCopy completion:v24];
    [(FBWorkspace *)self _handleSceneRequest:v23];
  }

LABEL_15:
}

void __50__FBWorkspace_requestSceneWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 48) == 1)
    {
      [FBSceneManager setKeyboardScene:v5];
    }

    v7 = [v5 identity];
    v8 = [*(a1 + 32) _sceneForIdentity:v7];
    v9 = v8;
    if (v8 && ([v8 host], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == v5))
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __50__FBWorkspace_requestSceneWithOptions_completion___block_invoke_2;
      v14[3] = &unk_1E783C2F8;
      v14[4] = *(a1 + 32);
      v15 = v7;
      v16 = v9;
      v17 = *(a1 + 40);
      [(FBWorkspaceScene *)v16 _enqueueSceneCreateCompletionBlock:v14];
    }

    else
    {
      if ([v5 isValid] && (objc_msgSend(v5, "isActive") & 1) != 0)
      {
        v11 = *(a1 + 40);
      }

      else
      {
        v11 = *(a1 + 40);
      }

      v13 = FBSWorkspaceErrorCreate();
      (*(v11 + 16))(v11, 0, v13);
    }
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v6);
    }
  }
}

void __50__FBWorkspace_requestSceneWithOptions_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  if (a2 && ([*(a1 + 32) _sceneForIdentity:*(a1 + 40)], v5 = objc_claimAutoreleasedReturnValue(), v6 = *(a1 + 48), v5, v5 == v6))
  {
    v9 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = FBSWorkspaceErrorCreate();
    (*(v7 + 16))(v7, 0, v8);
  }
}

- (void)sceneID:(id)d didUpdateClientSettingsWithDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  dCopy = d;
  diffCopy = diff;
  contextCopy = context;
  completionCopy = completion;
  v14 = [(FBWorkspace *)self _sceneForIdentity:dCopy];
  if (v14)
  {
    v15 = +[FBWorkspaceConnection currentWorkspaceConnection];
    [(FBWorkspaceScene *)v14 workspace:diffCopy handleUpdatedClientSettings:contextCopy transitionContext:v15 fromConnection:?];

    if (completionCopy)
    {
LABEL_3:
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v16 = FBLogProcessScene();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace sceneID:didUpdateClientSettingsWithDiff:transitionContext:completion:];
    }

    if (completionCopy)
    {
      goto LABEL_3;
    }
  }
}

- (void)sceneID:(id)d didReceiveActions:(id)actions forExtension:(id)extension
{
  dCopy = d;
  actionsCopy = actions;
  extensionCopy = extension;
  v11 = [(FBWorkspace *)self _sceneForIdentity:dCopy];
  if (!v11)
  {
    v13 = FBLogProcessScene();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace sceneID:didReceiveActions:forExtension:];
    }

    goto LABEL_8;
  }

  if (!extensionCopy)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = NSClassFromString(extensionCopy);
  if (v12)
  {
LABEL_10:
    v14 = +[FBWorkspaceConnection currentWorkspaceConnection];
    [(FBWorkspaceScene *)v11 workspace:actionsCopy handleActions:v12 forExtension:v14 fromConnection:?];

    goto LABEL_11;
  }

  v13 = FBLogProcessScene();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [FBWorkspace sceneID:didReceiveActions:forExtension:];
  }

LABEL_8:

LABEL_11:
}

- (void)sceneID:(id)d handleInvocation:(id)invocation completion:(id)completion
{
  dCopy = d;
  invocationCopy = invocation;
  completionCopy = completion;
  v11 = [(FBWorkspace *)self _sceneForIdentity:dCopy];
  if (v11)
  {
    v12 = +[FBWorkspaceConnection currentWorkspaceConnection];
    [(FBWorkspaceScene *)v11 workspace:invocationCopy handleInvocation:v12 fromConnection:completionCopy withReply:?];
  }

  else
  {
    v13 = FBLogProcessScene();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace sceneID:handleInvocation:completion:];
    }
  }
}

- (void)sceneID:(id)d sendMessage:(id)message withResponse:(id)response
{
  dCopy = d;
  responseCopy = response;
  v8 = FBLogProcessScene();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [FBWorkspace sceneID:sendMessage:withResponse:];
  }

  if (responseCopy)
  {
    (*(responseCopy + 2))(responseCopy, 0, 0);
  }
}

- (void)sceneID:(id)d invalidateWithContext:(id)context clientError:(id)error
{
  dCopy = d;
  contextCopy = context;
  errorCopy = error;
  v11 = [(FBWorkspace *)self _sceneForIdentity:dCopy];
  if (v11)
  {
    [contextCopy setError:errorCopy];
    host = [v11 host];
    [host clientToken:v11 deactivateWithContext:contextCopy];
  }

  else
  {
    host = FBLogProcessScene();
    if (os_log_type_enabled(host, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspace sceneID:invalidateWithContext:clientError:];
    }
  }
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  lock_lifeAssertion = self->_lock_lifeAssertion;
  lock_connectAssertion = self->_lock_connectAssertion;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_connectAssertion == assertionCopy)
  {
    v14 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      succinctDescription = [errorCopy succinctDescription];
      v18 = 138543618;
      v19 = logProem;
      v20 = 2114;
      v21 = succinctDescription;
      _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Launch assertion invalidated: %{public}@", &v18, 0x16u);
    }

    [(FBWorkspace *)self _dropLaunchAssertion];
  }

  else if (lock_lifeAssertion == assertionCopy)
  {
    v11 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      logProem2 = [(FBProcess *)WeakRetained logProem];
      succinctDescription2 = [errorCopy succinctDescription];
      v18 = 138543618;
      v19 = logProem2;
      v20 = 2114;
      v21 = succinctDescription2;
      _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Workspace assertion invalidated: %{public}@", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)assertionWillInvalidate:(id)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_weak_process);
  lock_lifeAssertion = self->_lock_lifeAssertion;
  lock_connectAssertion = self->_lock_connectAssertion;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_connectAssertion == invalidateCopy)
  {
    v8 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      v12 = 138543362;
      v13 = logProem;
      v10 = "%{public}@ Launch assertion will expire.";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (lock_lifeAssertion == invalidateCopy)
  {
    v8 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)WeakRetained logProem];
      v12 = 138543362;
      v13 = logProem;
      v10 = "%{public}@ Workspace assertion will expire.";
LABEL_7:
      _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_acquireAssertionForReason:(uint64_t)reason withState:
{
  if (self)
  {
    v4 = *(self + 96);
    v5 = MEMORY[0x1E696AD98];
    v6 = a2;
    v7 = [v5 numberWithUnsignedInt:reason];
    v8 = [v4 acquireForReason:v6 withContext:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setIncomingConnection:(uint64_t)connection
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (connection)
  {
    os_unfair_lock_lock((connection + 136));
    WeakRetained = objc_loadWeakRetained((connection + 16));
    os_unfair_lock_assert_owner((connection + 136));
    OUTLINED_FUNCTION_12_0((connection + 142));
    if (v5)
    {
      v6 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        logProem = [(FBProcess *)WeakRetained logProem];
        *buf = 138543362;
        v13 = logProem;
        _os_log_error_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_ERROR, "%{public}@ attempted to assign a new connection to an invalidated workspace server.", buf, 0xCu);
      }

      serviceQueue = [*(connection + 24) serviceQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __38__FBWorkspace__setIncomingConnection___block_invoke;
      v10[3] = &unk_1E783B580;
      v11 = v3;
      [serviceQueue performAfter:v10 withBlock:0.1];
    }

    else
    {
      [(FBWorkspaceIncomingConnection *)*(connection + 32) workspaceLock_setConnection:v3];
    }

    os_unfair_lock_unlock((connection + 136));
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_initWithDispatcher:(char *)a1 process:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"process", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDispatcher:(char *)a1 process:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"dispatcher", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only actions of type BSAction can be sent : tried to send %@"];
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

- (void)_sceneForIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_sceneForIdentity:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_unregisterSceneForHost:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_unregisterSceneForHost:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handleSceneRequest:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E698F490] currentContext];
  v1 = [v0 remoteProcess];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleSceneRequest:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E698F490] currentContext];
  v1 = [v0 remoteProcess];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleSceneRequest:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E698F490] currentContext];
  v1 = [v0 remoteProcess];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_noteProcessBootstrapped:(char *)a1 withHandle:assertion:outgoingEndpointPromise:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"process == _weak_process", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_noteProcessBootstrapped:withHandle:assertion:outgoingEndpointPromise:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_noteProcessBootstrapped:withHandle:assertion:outgoingEndpointPromise:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_noteProcessBootstrapped:(char *)a1 withHandle:assertion:outgoingEndpointPromise:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"workspace assertion but no workspace state"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_noteProcessBootstrapped:(char *)a1 withHandle:assertion:outgoingEndpointPromise:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"endpointPromise", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_enableLegacyRequests:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"process == _weak_process", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_enableLegacyRequests:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 136));
  v4 = *(a1 + 56);
  os_unfair_lock_unlock((a1 + 136));
  if (v4)
  {
    v5 = +[FBProcess calloutQueue];
    *a2 = MEMORY[0x1E69E9820];
    a2[1] = 3221225472;
    a2[2] = __37__FBWorkspace__enableLegacyRequests___block_invoke;
    a2[3] = &unk_1E783B580;
    a2[4] = a1;
    dispatch_async(v5, a2);
  }
}

- (void)_noteProcessDidInvalidate:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"process == _weak_process", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_terminateGracefully:(char *)a1 withTransitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"process == _weak_process", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_terminateGracefully:(void *)a3 withTransitionContext:.cold.2(uint64_t a1, id *a2, void *a3)
{
  os_unfair_lock_lock((a1 + 136));
  os_unfair_lock_assert_owner((a1 + 136));
  OUTLINED_FUNCTION_12_0((a1 + 142));
  if (!v6)
  {
    v7 = *(a1 + 32);
    *a2 = MEMORY[0x1E69E9820];
    a2[1] = 3221225472;
    a2[2] = __58__FBWorkspace__terminateGracefully_withTransitionContext___block_invoke;
    a2[3] = &unk_1E783C1C0;
    a2[4] = a3;
    [(FBWorkspaceConnection *)v7 workspaceLock_enqueueConnectBlock:a2];
  }

  os_unfair_lock_unlock((a1 + 136));
}

- (void)_queue_unverifiedOutgoingConnection:didError:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSpecificationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.4()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneClientSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.6()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSceneRemnantClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.8(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remnant doesn't match this workspace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.9(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"specification must match the remnant"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.10(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot create a scene from an invalidated remnant"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.11()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.12(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"how could you call createWithRemnant: if we haven't made any remnants"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.13()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_15();
  v3 = 0;
  _os_log_error_impl(&dword_1A89DD000, v0, OS_LOG_TYPE_ERROR, "invalid remnant specified: remnant=%{public}@ connection=%{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.14(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"internal state error : connection is invalidated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.15(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.16(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.17(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.18(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.19(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"host", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)handshakeWithRemnants:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  v8 = *MEMORY[0x1E69E9840];
  v3 = [v2 debugDescription];
  v4 = [MEMORY[0x1E698F490] currentContext];
  v5 = [v4 remoteToken];
  [v1 count];
  OUTLINED_FUNCTION_8_1();
  _os_log_fault_impl(&dword_1A89DD000, v0, OS_LOG_TYPE_FAULT, "double handshake detected : process=%@ remote=%@ remnants=%u", v7, 0x1Cu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handshakeWithRemnants:.cold.4()
{
  OUTLINED_FUNCTION_8_0();
  v8 = *MEMORY[0x1E69E9840];
  v3 = [v2 debugDescription];
  v4 = [MEMORY[0x1E698F490] currentContext];
  v5 = [v4 remoteToken];
  [v1 count];
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(&dword_1A89DD000, v0, OS_LOG_TYPE_ERROR, "ignoring handshake for unknown connection : process=%@ remote=%@ remnants=%u", v7, 0x1Cu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sceneID:didUpdateClientSettingsWithDiff:transitionContext:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "[%{public}@] No scene exists for this identity (didUpdateClientSettingsWithDiff)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sceneID:didReceiveActions:forExtension:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_15();
  v4 = v0;
  _os_log_error_impl(&dword_1A89DD000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to deliver actions to extension %{public}@ because that class does not exist.", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)sceneID:didReceiveActions:forExtension:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "[%{public}@] Unable to deliver actions because no scene exists with this identity.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sceneID:handleInvocation:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "[%{public}@] Unable to deliver invocation because no scene exists with this identity.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sceneID:sendMessage:withResponse:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "[%{public}@] Ignoring scene message since this functionality is no longer supported.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sceneID:invalidateWithContext:clientError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "[%{public}@] Unable to invalidate because no scene exists with this identity.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end