@interface FBSWorkspaceScenesClient
+ (BSServiceQuality)serviceQuality;
+ (id)sourceIdentifierForHostEndpoint:(uint64_t)endpoint;
- (FBSWorkspaceScenesClient)init;
- (id)_createSceneWithIdentity:(void *)identity parameters:;
- (id)_initWithIdentifier:(void *)identifier connection:(void *)connection queue:(void *)queue calloutQueue:(void *)calloutQueue workspace:;
- (id)_queue_connectedSceneWithIdentity:(id *)identity;
- (id)_remoteTarget;
- (id)_reportedSceneWithIdentity:(uint64_t)identity;
- (id)createSceneFutureWithDefinition:(id)definition;
- (id)initWithEndpoint:(void *)endpoint queue:(void *)queue calloutQueue:(void *)calloutQueue workspace:;
- (id)initWithPeer:(void *)peer queue:(void *)queue calloutQueue:(void *)calloutQueue workspace:;
- (id)sceneWithIdentity:(id)identity;
- (id)scenes;
- (void)_callOutQueue_sendDidCreateForScene:(void *)scene transitionContext:(void *)context completion:;
- (void)_configureReceivedActions:(void *)actions forScene:;
- (void)_executeCalloutFromHostEvent:(void *)event withBlock:;
- (void)_queue_invalidate;
- (void)_queue_invalidateScene:(void *)scene withTransitionContext:(void *)context completion:;
- (void)_queue_sendHandshake;
- (void)_queue_updateScene:(void *)scene withSettings:(void *)settings diff:(void *)diff transitionContext:(void *)context completion:;
- (void)_sceneID:(void *)d destroyWithTransitionContext:(void *)context completion:;
- (void)activateSceneFuture:(id)future completion:(id)completion;
- (void)createSceneWithIdentity:(id)identity parameters:(id)parameters transitionContext:(id)context completion:(id)completion;
- (void)queue_activate;
- (void)queue_invalidate;
- (void)reconnectSceneWithIdentity:(id)identity parameters:(id)parameters transitionContext:(id)context completion:(id)completion;
- (void)requestSceneWithOptions:(id)options completion:(id)completion;
- (void)scene:(id)scene didReceiveActions:(id)actions forExtension:(Class)extension;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings withDiff:(id)diff transitionContext:(id)context;
- (void)scene:(id)scene invalidateWithTransitionContext:(id)context;
- (void)scene:(id)scene sendInvocation:(id)invocation;
- (void)scene:(id)scene sendMessage:(id)message withResponse:(id)response;
- (void)sceneID:(id)d handleInvocation:(id)invocation completion:(id)completion;
- (void)sceneID:(id)d sendActions:(id)actions toExtension:(id)extension completion:(id)completion;
- (void)sceneID:(id)d sendMessage:(id)message completion:(id)completion;
- (void)sceneID:(id)d updateWithSettingsDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)sendActions:(id)actions completion:(id)completion;
- (void)sendActions:(id)actions toWorkspaceID:(id)d completion:(id)completion;
- (void)sendBatchedMessages;
- (void)willTerminateWithTransitionContext:(id)context;
@end

@implementation FBSWorkspaceScenesClient

+ (BSServiceQuality)serviceQuality
{
  objc_opt_self();

  return +[FBSWorkspaceServiceSpecification serviceQuality];
}

- (void)queue_activate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot call activate more than once"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_queue_sendHandshake
{
  v12 = *(self + 48);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBSWorkspaceScenesClient:%p %@> handshake already sent"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, self, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (id)scenes
{
  os_unfair_lock_lock(&self->_reportingLock);
  v3 = [(NSMutableDictionary *)self->_reportingLock_scenesByIdentity count];
  v4 = MEMORY[0x1E695DFD8];
  if (v3)
  {
    allValues = [(NSMutableDictionary *)self->_reportingLock_scenesByIdentity allValues];
    v6 = [v4 setWithArray:allValues];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  os_unfair_lock_unlock(&self->_reportingLock);

  return v6;
}

- (id)_remoteTarget
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    v2 = *(self + 104);
    os_unfair_lock_unlock((self + 120));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (FBSWorkspaceScenesClient)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[FBSWorkspaceScenesClient init] is unavailable."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSWorkspaceScenesClient.m";
    v16 = 1024;
    v17 = 281;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)initWithEndpoint:(void *)endpoint queue:(void *)queue calloutQueue:(void *)calloutQueue workspace:
{
  v9 = a2;
  endpointCopy = endpoint;
  queueCopy = queue;
  calloutQueueCopy = calloutQueue;
  if (self)
  {
    v13 = v9;
    NSClassFromString(&cfstr_Bsserviceconne.isa);
    if (!v13)
    {
      [FBSWorkspaceScenesClient initWithEndpoint:? queue:? calloutQueue:? workspace:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSWorkspaceScenesClient initWithEndpoint:? queue:? calloutQueue:? workspace:?];
    }

    service = [v13 service];
    v15 = +[FBSWorkspaceServiceSpecification identifier];
    v16 = [service isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      [FBSWorkspaceScenesClient initWithEndpoint:? queue:? calloutQueue:? workspace:?];
    }

    instance = [v13 instance];

    if (instance)
    {
      [FBSWorkspaceScenesClient initWithEndpoint:? queue:? calloutQueue:? workspace:?];
    }

    v18 = [off_1E76BCA28 connectionWithEndpoint:v13];
    if (v18)
    {
      v19 = [FBSWorkspaceScenesClientIdentifier identifierWithHostEndpoint:v13];
      self = [(FBSWorkspaceScenesClient *)self _initWithIdentifier:v19 connection:v18 queue:endpointCopy calloutQueue:queueCopy workspace:calloutQueueCopy];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithIdentifier:(void *)identifier connection:(void *)connection queue:(void *)queue calloutQueue:(void *)calloutQueue workspace:
{
  v11 = a2;
  identifierCopy = identifier;
  connectionCopy = connection;
  queueCopy = queue;
  calloutQueueCopy = calloutQueue;
  if (self)
  {
    if (!v11)
    {
      [FBSWorkspaceScenesClient _initWithIdentifier:? connection:? queue:? calloutQueue:? workspace:?];
    }

    if (!identifierCopy)
    {
      [FBSWorkspaceScenesClient _initWithIdentifier:? connection:? queue:? calloutQueue:? workspace:?];
    }

    if (!connectionCopy)
    {
      [FBSWorkspaceScenesClient _initWithIdentifier:? connection:? queue:? calloutQueue:? workspace:?];
    }

    if (!queueCopy)
    {
      [FBSWorkspaceScenesClient _initWithIdentifier:? connection:? queue:? calloutQueue:? workspace:?];
    }

    if (!calloutQueueCopy)
    {
      [FBSWorkspaceScenesClient _initWithIdentifier:? connection:? queue:? calloutQueue:? workspace:?];
    }

    v38.receiver = self;
    v38.super_class = FBSWorkspaceScenesClient;
    self = objc_msgSendSuper2(&v38, sel_init);
    if (self)
    {
      v16 = [v11 copy];
      v17 = self[6];
      self[6] = v16;

      objc_storeStrong(self + 3, connection);
      objc_storeStrong(self + 4, queue);
      objc_storeStrong(self + 5, identifier);
      objc_storeStrong(self + 1, calloutQueue);
      [self[1] _queue_registerSource:self];
      delegate = [calloutQueueCopy delegate];
      v19 = self[2];
      self[2] = delegate;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v21 = self[7];
      self[7] = dictionary;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v23 = self[8];
      self[8] = dictionary2;

      v24 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
      v25 = self[9];
      self[9] = v24;

      array = [MEMORY[0x1E695DF70] array];
      v27 = self[10];
      self[10] = array;

      array2 = [MEMORY[0x1E695DF70] array];
      v29 = self[11];
      self[11] = array2;

      self[15] = 0;
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      v31 = self[14];
      self[14] = dictionary3;

      v32 = self[5];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke;
      v34[3] = &unk_1E76BE918;
      self = self;
      selfCopy = self;
      v36 = v11;
      v37 = queueCopy;
      [v32 configureConnection:v34];
    }
  }

  return self;
}

- (id)initWithPeer:(void *)peer queue:(void *)queue calloutQueue:(void *)calloutQueue workspace:
{
  v9 = a2;
  peerCopy = peer;
  queueCopy = queue;
  calloutQueueCopy = calloutQueue;
  if (self)
  {
    v13 = v9;
    NSClassFromString(&cfstr_Bsserviceconne_0.isa);
    if (!v13)
    {
      [FBSWorkspaceScenesClient initWithPeer:? queue:? calloutQueue:? workspace:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSWorkspaceScenesClient initWithPeer:? queue:? calloutQueue:? workspace:?];
    }

    service = [v13 service];
    v15 = +[FBSWorkspaceServiceSpecification identifier];
    v16 = [service isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      [FBSWorkspaceScenesClient initWithPeer:? queue:? calloutQueue:? workspace:?];
    }

    instance = [v13 instance];

    if (instance)
    {
      [FBSWorkspaceScenesClient initWithPeer:? queue:? calloutQueue:? workspace:?];
    }

    v18 = [FBSWorkspaceScenesClientIdentifier identifierWithPeer:v13];
    if (v18)
    {
      self = [(FBSWorkspaceScenesClient *)self _initWithIdentifier:v18 connection:v13 queue:peerCopy calloutQueue:queueCopy workspace:calloutQueueCopy];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setQueue:*(*(a1 + 32) + 24)];
  v4 = *(a1 + 40);
  if (v4 && *(v4 + 16))
  {
    v5 = +[FBSWorkspaceServiceSpecification invertedInterface];
  }

  else
  {
    v5 = +[FBSWorkspaceServiceSpecification interface];
  }

  v6 = v5;
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_2;
  v13[3] = &unk_1E76BE680;
  v14 = *(a1 + 32);
  [v3 setActivationHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_177;
  v11[3] = &unk_1E76BE8C8;
  v12 = *(a1 + 48);
  [v3 setBatchingHandler:v11];
  v7 = *(a1 + 40);
  if (!v7 || !*(v7 + 16))
  {
    __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_cold_1(v10, a1 + 32, v3);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_194;
  v8[3] = &unk_1E76BE8F0;
  v9 = *(a1 + 32);
  [v3 setInvalidationHandler:v8];
}

void __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_177(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = NSClassFromString(&cfstr_Catransaction.isa);
    v6 = [(objc_class *)v5 currentPhase];
    if (v6 == 4 || v6 == -1)
    {
      [(objc_class *)v5 activate];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_2_182;
      v12[3] = &unk_1E76BCDB0;
      v13 = v4;
      [(objc_class *)v5 addCommitHandler:v12 forPhase:0];
    }
  }

  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_3;
  v10[3] = &unk_1E76BCDB0;
  v11 = v4;
  v9 = v4;
  [v8 performAsync:v10];
}

void __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_4(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v2 = *(*v1 + 104);
  *(*v1 + 104) = 0;

  os_unfair_lock_unlock((*v1 + 120));
  v3 = FBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *v1;
    v5 = *(*v1 + 48);
    *buf = 134218242;
    v45 = v4;
    v46 = 2112;
    v47 = v5;
    _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "<FBSWorkspaceScenesClient:%p %@> was interrupted", buf, 0x16u);
  }

  v6 = *(*v1 + 96);
  *(*v1 + 96) = 0;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = [*(*v1 + 56) allValues];
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [v12 settings];
        v14 = [v13 interruptionPolicy];

        v15 = *v1;
        if (v14 == 2)
        {
          [v15[9] addObject:v12];
          v16 = *v1;
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_190;
          v37[3] = &unk_1E76BCDB0;
          v37[4] = v12;
          if (v16)
          {
            [(FBSWorkspaceScenesClient *)v16 _executeCalloutFromHostEvent:v37 withBlock:?];
          }
        }

        else
        {
          [(FBSWorkspaceScenesClient *)v15 _queue_invalidateScene:v12 withTransitionContext:0 completion:0];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = *(*v1 + 80);
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v18)
  {
    v24 = v18;
    v25 = *v34;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v17);
        }

        v27 = *(*(&v33 + 1) + 8 * j);
        v28 = FBSWorkspaceErrorCreate(0, 3uLL, @"service was interrupted (did the server crash?) : %@", v19, v20, v21, v22, v23, *(*v1 + 48));
        (*(v27 + 16))(v27, 0, v28);
      }

      v24 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v24);
  }

  v29 = [MEMORY[0x1E695DF70] array];
  v30 = *(*v1 + 80);
  *(*v1 + 80) = v29;

  [*(*v1 + 40) activate];
  v31 = *(*v1 + 48);
  if (!v31 || (v32 = *(v31 + 8)) == 0 || ([v32 isNonLaunching] & 1) == 0)
  {
    __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_4_cold_1(v1);
  }
}

- (void)_queue_invalidateScene:(void *)scene withTransitionContext:(void *)context completion:
{
  v7 = a2;
  sceneCopy = scene;
  contextCopy = context;
  if (self)
  {
    if (!v7)
    {
      [FBSWorkspaceScenesClient _queue_invalidateScene:? withTransitionContext:? completion:?];
    }

    identity = [v7 identity];
    [self[7] removeObjectForKey:identity];
    [self[8] removeObjectForKey:identity];
    [self[9] removeObject:v7];
    actions = [sceneCopy actions];
    [(FBSWorkspaceScenesClient *)self _configureReceivedActions:actions forScene:v7];

    v12 = self[4];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __84__FBSWorkspaceScenesClient__queue_invalidateScene_withTransitionContext_completion___block_invoke;
    v24[3] = &unk_1E76BEC80;
    v25 = v12;
    v13 = v7;
    v26 = v13;
    v27 = contextCopy;
    v14 = v12;
    v15 = [off_1E76BC9A0 sentinelWithCompletion:v24];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84__FBSWorkspaceScenesClient__queue_invalidateScene_withTransitionContext_completion___block_invoke_3;
    v18[3] = &unk_1E76BECD0;
    v19 = v13;
    selfCopy = self;
    v21 = sceneCopy;
    v22 = v15;
    v23 = identity;
    v16 = identity;
    v17 = v15;
    [(FBSWorkspaceScenesClient *)self _executeCalloutFromHostEvent:v18 withBlock:?];
  }
}

void __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_194(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    v5 = 134218242;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A2DBB000, v2, OS_LOG_TYPE_DEFAULT, "<FBSWorkspaceScenesClient:%p %@> was invalidated", &v5, 0x16u);
  }

  [(FBSWorkspaceScenesClient *)*(a1 + 32) _queue_invalidate];
}

+ (id)sourceIdentifierForHostEndpoint:(uint64_t)endpoint
{
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    [FBSWorkspaceScenesClient sourceIdentifierForHostEndpoint:?];
  }

  v3 = [FBSWorkspaceScenesClientIdentifier identifierWithHostEndpoint:v2];

  return v3;
}

- (id)sceneWithIdentity:(id)identity
{
  if (identity)
  {
    identityCopy = identity;
    os_unfair_lock_lock(&self->_reportingLock);
    v5 = [(NSMutableDictionary *)self->_reportingLock_scenesByIdentity objectForKey:identityCopy];

    os_unfair_lock_unlock(&self->_reportingLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendActions:(id)actions toWorkspaceID:(id)d completion:(id)completion
{
  actionsCopy = actions;
  dCopy = d;
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__FBSWorkspaceScenesClient_sendActions_toWorkspaceID_completion___block_invoke;
  v22[3] = &unk_1E76BE780;
  v11 = completionCopy;
  v22[4] = self;
  v23 = v11;
  v12 = MEMORY[0x1A58E80F0](v22);
  if ([actionsCopy count])
  {
    _remoteTarget = [(FBSWorkspaceScenesClient *)self _remoteTarget];
    if (_remoteTarget)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65__FBSWorkspaceScenesClient_sendActions_toWorkspaceID_completion___block_invoke_3;
      v20[3] = &unk_1E76BDB58;
      v21 = v12;
      [_remoteTarget workspaceID:dCopy sendActions:actionsCopy completion:v20];
      v19 = v21;
    }

    else
    {
      v19 = FBSWorkspaceErrorCreate(0, 3uLL, @"no proxy available for %@", v13, v14, v15, v16, v17, self->_identifier);
      (v12)[2](v12, 0, v19);
    }
  }

  else
  {
    v12[2](v12, 1, 0);
  }
}

void __65__FBSWorkspaceScenesClient_sendActions_toWorkspaceID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__FBSWorkspaceScenesClient_sendActions_toWorkspaceID_completion___block_invoke_2;
    v9[3] = &unk_1E76BE940;
    v11 = v6;
    v12 = a2;
    v8 = v5;
    v10 = v8;
    if (v7)
    {
      [(FBSWorkspaceScenesClient *)v7 _executeCalloutFromHostEvent:v9 withBlock:?];
      v8 = v10;
    }
  }
}

- (id)createSceneFutureWithDefinition:(id)definition
{
  definitionCopy = definition;
  identity = [definitionCopy identity];
  if (!identity)
  {
    [FBSWorkspaceScenesClient createSceneFutureWithDefinition:a2];
  }

  v7 = identity;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  parameters = [definitionCopy parameters];
  [parameters updateSettingsWithBlock:&__block_literal_global_16];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__FBSWorkspaceScenesClient_createSceneFutureWithDefinition___block_invoke_217;
  v14[3] = &unk_1E76BE988;
  v17 = &v18;
  v14[4] = self;
  v10 = v7;
  v15 = v10;
  v11 = parameters;
  v16 = v11;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v14];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

uint64_t __60__FBSWorkspaceScenesClient_createSceneFutureWithDefinition___block_invoke_217(uint64_t a1)
{
  v2 = [(FBSWorkspaceScenesClient *)*(a1 + 32) _createSceneWithIdentity:*(a1 + 48) parameters:?];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)_createSceneWithIdentity:(void *)identity parameters:
{
  v5 = a2;
  identityCopy = identity;
  if (self)
  {
    [*(self + 24) assertBarrierOnQueue];
    if (!v5)
    {
      [FBSWorkspaceScenesClient _createSceneWithIdentity:? parameters:?];
    }

    if (!identityCopy)
    {
      [FBSWorkspaceScenesClient _createSceneWithIdentity:? parameters:?];
    }

    v7 = [*(self + 56) objectForKey:v5];
    if (v7)
    {
      if (![*(self + 72) containsObject:v7])
      {
        v15 = MEMORY[0x1E696AEC0];
        identityToken = [v7 identityToken];
        identityCopy = [v15 stringWithFormat:@"already have a scene for %@ : parameters=%@", identityToken, identityCopy];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBSWorkspaceScenesClient _createSceneWithIdentity:? parameters:?];
        }

        [identityCopy UTF8String];
        _bs_set_crash_log_message();
      }

      v8 = FBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [FBSWorkspaceScenesClient _createSceneWithIdentity:self parameters:v7];
      }

      [(FBSWorkspaceScenesClient *)self _queue_invalidateScene:v7 withTransitionContext:0 completion:0];
      v9 = [*(self + 56) objectForKey:v5];

      if (v9)
      {
        [FBSWorkspaceScenesClient _createSceneWithIdentity:v7 parameters:sel__createSceneWithIdentity_parameters_];
      }
    }

    v10 = [(FBSWorkspaceScenesClientIdentifier *)*(self + 48) tokenWithIdentity:v5];
    v11 = [[FBSScene alloc] _initWithUpdater:self identityToken:v10 identity:v5 parameters:identityCopy hostHandle:*(self + 96)];
    [*(self + 56) setObject:v11 forKey:v5];
    v12 = *(self + 64);
    clientSettings = [v11 clientSettings];
    [v12 setObject:clientSettings forKey:v5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)activateSceneFuture:(id)future completion:(id)completion
{
  v64 = *MEMORY[0x1E69E9840];
  futureCopy = future;
  completionCopy = completion;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  settings = [futureCopy settings];
  isClientFuture = [settings isClientFuture];

  if ((isClientFuture & 1) == 0)
  {
    [FBSWorkspaceScenesClient activateSceneFuture:a2 completion:?];
  }

  identity = [futureCopy identity];
  v12 = objc_opt_new();
  identifier = [futureCopy identifier];
  [v12 setIdentifier:identifier];

  identity2 = [futureCopy identity];
  workspaceIdentifier = [identity2 workspaceIdentifier];
  [v12 setWorkspaceIdentifier:workspaceIdentifier];

  specification = [futureCopy specification];
  [v12 setSpecification:specification];

  settings2 = [futureCopy settings];
  [v12 setInitialSettings:settings2];

  clientSettings = [futureCopy clientSettings];
  [v12 setInitialClientSettings:clientSettings];

  [v12 setClientFuture:1];
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  queue = self->_queue;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __59__FBSWorkspaceScenesClient_activateSceneFuture_completion___block_invoke;
  v51[3] = &unk_1E76BE988;
  v55 = &v56;
  v20 = futureCopy;
  v52 = v20;
  selfCopy = self;
  v21 = identity;
  v54 = v21;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v51];
  v22 = [off_1E76BC9B0 builderWithObject:v20];
  v23 = [v22 appendObject:v21 withName:0];
  build = [v22 build];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __59__FBSWorkspaceScenesClient_activateSceneFuture_completion___block_invoke_2;
  v46[3] = &unk_1E76BE9B0;
  v25 = build;
  v47 = v25;
  selfCopy2 = self;
  v26 = v21;
  v49 = v26;
  v27 = completionCopy;
  v50 = v27;
  v33 = MEMORY[0x1A58E80F0](v46);
  if (*(v57 + 24) == 1)
  {
    v35 = FBLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      *buf = 138543618;
      v61 = v25;
      v62 = 2114;
      v63 = identifier;
      _os_log_impl(&dword_1A2DBB000, v35, OS_LOG_TYPE_DEFAULT, "Requesting scene %{public}@ from %{public}@", buf, 0x16u);
    }

    _remoteTarget = [(FBSWorkspaceScenesClient *)self _remoteTarget];
    v34 = _remoteTarget;
    if (_remoteTarget)
    {
      [_remoteTarget createSceneWithOptions:v12 completion:v33];
      specification2 = [v20 specification];
      disablesClientBatching = [specification2 disablesClientBatching];

      if (!disablesClientBatching)
      {
LABEL_12:
        [(FBSWorkspaceScenesClient *)self _callOutQueue_sendDidCreateForScene:v20 transitionContext:0 completion:v33];
        goto LABEL_4;
      }

      activeMessageBatch = [(BSServiceConnection *)self->_connection activeMessageBatch];
      [activeMessageBatch commitWithReason:@"scene opts out of batching"];
    }

    else
    {
      activeMessageBatch = FBSWorkspaceErrorCreate(0, 3uLL, @"no proxy available for %@", v38, v39, v40, v41, v42, self->_identifier);
      (v33)[2](v33, activeMessageBatch);
    }

    goto LABEL_12;
  }

  v34 = FBSWorkspaceErrorCreate(0, 1uLL, @"scene %@ was invalidated before activation %@", v28, v29, v30, v31, v32, v25);
  (v33)[2](v33, v34);
LABEL_4:

  _Block_object_dispose(&v56, 8);
}

void __59__FBSWorkspaceScenesClient_activateSceneFuture_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [*(a1[5] + 56) objectForKey:a1[6]];
  *(*(a1[7] + 8) + 24) = v2 == v3;

  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v4 = a1[4];
    v5 = *(a1[5] + 72);

    [v5 addObject:v4];
  }
}

void __59__FBSWorkspaceScenesClient_activateSceneFuture_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FBLogCommon();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__FBSWorkspaceScenesClient_activateSceneFuture_completion___block_invoke_2_cold_1(a1, v3);
    }

    [(FBSWorkspaceScenesClient *)*(a1 + 40) _sceneID:0 destroyWithTransitionContext:0 completion:?];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A2DBB000, v5, OS_LOG_TYPE_DEFAULT, "Request for %{public}@ complete!", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, v3 == 0, v3);
  }
}

- (void)_callOutQueue_sendDidCreateForScene:(void *)scene transitionContext:(void *)context completion:
{
  v7 = a2;
  sceneCopy = scene;
  contextCopy = context;
  if (self)
  {
    [*(self + 32) assertBarrierOnQueue];
    identity = [v7 identity];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke;
    v30[3] = &unk_1E76BE370;
    v11 = identity;
    v31 = v11;
    v32 = contextCopy;
    v12 = [off_1E76BC9A0 sentinelWithCompletion:v30];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v13 = *(self + 24);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_337;
    v21[3] = &unk_1E76BEBE0;
    v21[4] = self;
    v14 = v11;
    v22 = v14;
    v15 = v7;
    v24 = &v26;
    v25 = sel__callOutQueue_sendDidCreateForScene_transitionContext_completion_;
    v23 = v15;
    [v13 performAsyncAndWait:v21];
    if (*(v27 + 24) == 1)
    {
      v16 = *(self + 8);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_341;
      v17[3] = &unk_1E76BD3D8;
      v17[4] = self;
      v18 = sceneCopy;
      v19 = v15;
      v20 = v12;
      [v16 _calloutQueue_executeCalloutFromSource:self withBlock:v17];
    }

    else
    {
      [v12 signal];
    }

    _Block_object_dispose(&v26, 8);
  }
}

- (void)requestSceneWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke;
  v17[3] = &unk_1E76BEA28;
  v17[4] = self;
  v18 = optionsCopy;
  v19 = completionCopy;
  v20 = a2;
  v9 = completionCopy;
  v10 = optionsCopy;
  v11 = [v17 copy];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_242;
  v14[3] = &unk_1E76BEA50;
  v14[4] = self;
  v15 = v11;
  v16 = a2;
  v13 = v11;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v14];
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v6;
  if (v5)
  {
    if (v6)
    {
      __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_cold_1(v6, a1);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_232;
    v17[3] = &unk_1E76BEA00;
    v13 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = *(a1 + 48);
    [v5 requestSceneWithOptions:v13 completion:v17];

    v12 = 0;
  }

  else
  {
    if (!v6)
    {
      v12 = FBSWorkspaceErrorCreate(0, 3uLL, @"proxy to %@ was unexpectedly nil", v7, v8, v9, v10, v11, *(*(a1 + 32) + 48));
    }

    v14 = FBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_cold_2(a1, v12);
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_cold_3(a1, v16, v15, v12);
    }
  }
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v9 = [(FBSWorkspaceScenesClient *)*(a1 + 48) _reportedSceneWithIdentity:v3];
    if (!v9)
    {
      v10 = FBSWorkspaceErrorCreate(*(a1 + 32), 1uLL, @"failed to find expected scene from %@ with identifier=%@", v4, v5, v6, v7, v8, *(*(a1 + 48) + 48));

      v2 = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v2)
  {
    v11 = FBLogCommon();
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 48);
        v14 = *(v13 + 48);
        v15 = [v2 succinctDescription];
        *buf = 134218498;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        v21 = 2114;
        v22 = v15;
        _os_log_impl(&dword_1A2DBB000, v12, OS_LOG_TYPE_DEFAULT, "<FBSWorkspaceScenesClient:%p %@> scene request received error response : %{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_cold_1(a1, v2);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, v9, v2);
  }
}

- (id)_reportedSceneWithIdentity:(uint64_t)identity
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (identity && v3)
  {
    os_unfair_lock_lock((identity + 124));
    v5 = [*(identity + 112) objectForKey:v4];
    os_unfair_lock_unlock((identity + 124));
  }

  return v5;
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_242(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(v2 + 48);
  if (v4 && (v5 = *(v4 + 8)) != 0 && (v6 = [v5 isNonLaunching], v2 = *v3, v6))
  {
    v7 = *(v2 + 80);
    v8 = *(a1 + 40);
    if (v7)
    {
      v9 = MEMORY[0x1A58E80F0](v8);
      [v7 addObject:v9];

      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = *(v11 + 24);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_3;
      v13[3] = &unk_1E76BDA90;
      v13[4] = v11;
      v14 = v10;
      [v12 performAfter:v13 withBlock:30.0];
    }

    else
    {
      __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_242_cold_1(v8, v2);
    }
  }

  else
  {
    if (*(v2 + 80))
    {
      __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_242_cold_2(v2, a1);
    }

    __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_242_cold_3(a1, v2);
  }
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = MEMORY[0x1A58E80F0](*(a1 + 40));
  LODWORD(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v9 = *(a1 + 40);
    v10 = FBSWorkspaceErrorCreate(0, 3uLL, @"non-launching service failed to become available within 30s : %@", v4, v5, v6, v7, v8, *(*(a1 + 32) + 48));
    (*(v9 + 16))(v9, 0, v10);

    v11 = *(a1 + 40);
    v12 = *(*(a1 + 32) + 80);
    v13 = MEMORY[0x1A58E80F0](v11);
    [v12 removeObject:v13];
  }
}

- (void)sendBatchedMessages
{
  activeMessageBatch = [(BSServiceConnection *)self->_connection activeMessageBatch];
  [activeMessageBatch commitWithReason:@"explicit flush"];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings withDiff:(id)diff transitionContext:(id)context
{
  sceneCopy = scene;
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  identity = [sceneCopy identity];
  v15 = identity;
  if (identity)
  {
    queue = self->_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__FBSWorkspaceScenesClient_scene_didUpdateClientSettings_withDiff_transitionContext___block_invoke;
    v17[3] = &unk_1E76BEAA0;
    v17[4] = self;
    v18 = identity;
    v19 = sceneCopy;
    v20 = settingsCopy;
    v21 = diffCopy;
    v22 = contextCopy;
    [(BSServiceDispatchQueue *)queue performAsyncAndWait:v17];
  }
}

void __85__FBSWorkspaceScenesClient_scene_didUpdateClientSettings_withDiff_transitionContext___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 48);

  if (v2 == v3)
  {
    [*(*(a1 + 32) + 64) setObject:*(a1 + 56) forKey:*(a1 + 40)];
    if ([*(*(a1 + 32) + 72) containsObject:*(a1 + 48)])
    {
      v4 = [*(a1 + 48) definition];
      v5 = [v4 specification];
      v6 = [v5 _isSignificantTransitionContext:*(a1 + 72)];

      if (!v6)
      {
        return;
      }

      v7 = FBLogSceneClient();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 138543362;
        v17 = v8;
        _os_log_impl(&dword_1A2DBB000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dropping transition context because the scene is reconnecting", buf, 0xCu);
      }
    }

    else
    {
      v7 = [(FBSWorkspaceScenesClient *)*(a1 + 32) _remoteTarget];
      if (v7)
      {
        v9 = *(a1 + 40);
        v10 = *(a1 + 64);
        v11 = *(a1 + 72);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __85__FBSWorkspaceScenesClient_scene_didUpdateClientSettings_withDiff_transitionContext___block_invoke_2;
        v14[3] = &unk_1E76BEA78;
        v15 = v9;
        [v7 sceneID:v15 didUpdateClientSettingsWithDiff:v10 transitionContext:v11 completion:v14];
        v12 = [*(a1 + 48) specification];
        LODWORD(v11) = [v12 disablesClientBatching];

        if (v11)
        {
          v13 = [*(*(a1 + 32) + 40) activeMessageBatch];
          [v13 commitWithReason:@"scene opts out of batching"];
        }
      }
    }
  }
}

void __85__FBSWorkspaceScenesClient_scene_didUpdateClientSettings_withDiff_transitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = FBLogSceneClient();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__FBSWorkspaceScenesClient_scene_didUpdateClientSettings_withDiff_transitionContext___block_invoke_2_cold_1(a1, v3);
    }
  }
}

- (void)scene:(id)scene didReceiveActions:(id)actions forExtension:(Class)extension
{
  sceneCopy = scene;
  actionsCopy = actions;
  identity = [sceneCopy identity];
  v11 = identity;
  if (identity)
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__FBSWorkspaceScenesClient_scene_didReceiveActions_forExtension___block_invoke;
    v13[3] = &unk_1E76BEAC8;
    v13[4] = self;
    v14 = identity;
    v15 = sceneCopy;
    v16 = actionsCopy;
    extensionCopy = extension;
    [(BSServiceDispatchQueue *)queue performAsyncAndWait:v13];
  }
}

void __65__FBSWorkspaceScenesClient_scene_didReceiveActions_forExtension___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v5 = *(a1 + 48);

  if (v4 == v5)
  {
    if ([*(*v2 + 72) containsObject:*(a1 + 48)])
    {
      v6 = FBLogSceneClient();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *v3;
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dropping actions because the scene is reconnecting", &v8, 0xCu);
      }
    }

    else
    {
      __65__FBSWorkspaceScenesClient_scene_didReceiveActions_forExtension___block_invoke_cold_1(v2, (a1 + 40), a1, (a1 + 48));
    }
  }
}

- (void)scene:(id)scene sendInvocation:(id)invocation
{
  sceneCopy = scene;
  invocationCopy = invocation;
  identity = [sceneCopy identity];
  if (!identity)
  {
    [FBSWorkspaceScenesClient scene:a2 sendInvocation:?];
  }

  v10 = identity;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__FBSWorkspaceScenesClient_scene_sendInvocation___block_invoke;
  v15[3] = &unk_1E76BD3D8;
  v15[4] = self;
  v16 = identity;
  v17 = sceneCopy;
  v18 = invocationCopy;
  v12 = invocationCopy;
  v13 = sceneCopy;
  v14 = v10;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v15];
}

void __49__FBSWorkspaceScenesClient_scene_sendInvocation___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v4 = *(a1 + 48);

  if (v3 != v4)
  {
    v5 = *(a1 + 56);
    v6 = @"Invalid scene.";
LABEL_5:

    [v5 cannotResolveForReason:v6];
    return;
  }

  if ([*(*(a1 + 32) + 72) containsObject:*(a1 + 48)])
  {
    v5 = *(a1 + 56);
    v6 = @"Scene is not currently connected.";
    goto LABEL_5;
  }

  v7 = [(FBSWorkspaceScenesClient *)*(a1 + 32) _remoteTarget];
  v8 = *(a1 + 56);
  if (v7)
  {
    v9 = [v8 resolve];
    v10 = v9;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    if (v9)
    {
      v13 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __49__FBSWorkspaceScenesClient_scene_sendInvocation___block_invoke_2;
      v17[3] = &unk_1E76BEAF0;
      v17[4] = *(a1 + 32);
      v1 = &v18;
      v18 = v9;
    }

    else
    {
      v13 = 0;
    }

    [v7 sceneID:v11 handleInvocation:v12 completion:v13];
    v14 = [*(a1 + 48) specification];
    v15 = [v14 disablesClientBatching];

    if (v15)
    {
      v16 = [*(*(a1 + 32) + 40) activeMessageBatch];
      [v16 commitWithReason:@"scene opts out of batching"];
    }

    if (v10)
    {
    }
  }

  else
  {
    [v8 cannotResolveForReason:@"Connection failed."];
  }
}

- (void)scene:(id)scene sendMessage:(id)message withResponse:(id)response
{
  sceneCopy = scene;
  messageCopy = message;
  responseCopy = response;
  identity = [sceneCopy identity];
  v12 = identity;
  if (identity)
  {
    queue = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke;
    v15[3] = &unk_1E76BEB40;
    v15[4] = self;
    v16 = identity;
    v17 = sceneCopy;
    v18 = messageCopy;
    v19 = responseCopy;
    [(BSServiceDispatchQueue *)queue performAsyncAndWait:v15];
  }

  else if (responseCopy)
  {
    [FBSWorkspaceScenesClient scene:v14 sendMessage:responseCopy withResponse:self];
  }
}

void __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2 == *(a1 + 48))
  {
    v4 = [*(*(a1 + 32) + 72) containsObject:?];

    if ((v4 & 1) == 0)
    {
      v8 = [(FBSWorkspaceScenesClient *)*(a1 + 32) _remoteTarget];
      if (v8)
      {
        v9 = *(a1 + 40);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke_2;
        v24[3] = &unk_1E76BEB18;
        v10 = &v25;
        v11 = *(a1 + 56);
        v12 = *(a1 + 64);
        v24[4] = *(a1 + 32);
        v25 = v12;
        [v8 sceneID:v9 sendMessage:v11 withResponse:v24];
        v13 = [*(a1 + 48) specification];
        LODWORD(v11) = [v13 disablesClientBatching];

        if (v11)
        {
          v14 = [*(*(a1 + 32) + 40) activeMessageBatch];
          [v14 commitWithReason:@"scene opts out of batching"];
        }
      }

      else
      {
        v15 = *(a1 + 64);
        if (!v15)
        {
          goto LABEL_8;
        }

        v16 = *(a1 + 32);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke_4;
        v21[3] = &unk_1E76BD750;
        v10 = &v23;
        v23 = v15;
        v17 = *(a1 + 40);
        v22 = v17;
        if (v16)
        {
          [(FBSWorkspaceScenesClient *)v16 _executeCalloutFromHostEvent:v21 withBlock:?];
          v17 = v22;
        }
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

  v5 = *(a1 + 64);
  if (!v5)
  {
    return;
  }

  v6 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke_5;
  v18[3] = &unk_1E76BD750;
  v20 = v5;
  v7 = *(a1 + 40);
  v19 = v7;
  if (v6)
  {
    [(FBSWorkspaceScenesClient *)v6 _executeCalloutFromHostEvent:v18 withBlock:?];
    v7 = v19;
  }

  v8 = v20;
LABEL_8:
}

void __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke_3;
    v10[3] = &unk_1E76BD4E0;
    v13 = v7;
    v11 = v5;
    v9 = v6;
    v12 = v9;
    if (v8)
    {
      [(FBSWorkspaceScenesClient *)v8 _executeCalloutFromHostEvent:v10 withBlock:?];
      v9 = v12;
    }
  }
}

void __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = FBSWorkspaceErrorCreate(0, 1uLL, @"the remote target isn't valid : identifier=%@", a4, a5, a6, a7, a8, *(a1 + 32));
    (*(v8 + 16))(v8, 0, v9);
  }
}

void __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  v9 = FBSWorkspaceErrorCreate(0, 1uLL, @"scene is not valid : identifier=%@", a4, a5, a6, a7, a8, *(a1 + 32));
  (*(v8 + 16))(v8, 0, v9);
}

void __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  v9 = FBSWorkspaceErrorCreate(0, 1uLL, @"scene is not valid : identifier=%@", a4, a5, a6, a7, a8, *(a1 + 32));
  (*(v8 + 16))(v8, 0, v9);
}

- (void)scene:(id)scene invalidateWithTransitionContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  identity = [sceneCopy identity];
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__FBSWorkspaceScenesClient_scene_invalidateWithTransitionContext___block_invoke;
  v13[3] = &unk_1E76BD3D8;
  v13[4] = self;
  v14 = identity;
  v15 = sceneCopy;
  v16 = contextCopy;
  v10 = contextCopy;
  v11 = sceneCopy;
  v12 = identity;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v13];
}

void __66__FBSWorkspaceScenesClient_scene_invalidateWithTransitionContext___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v4 = *(a1 + 48);

  if (v3 == v4)
  {
    __66__FBSWorkspaceScenesClient_scene_invalidateWithTransitionContext___block_invoke_cold_2(v2, (a1 + 48), a1, (a1 + 40));
  }

  else
  {
    v5 = FBLogSceneClient();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__FBSWorkspaceScenesClient_scene_invalidateWithTransitionContext___block_invoke_cold_1();
    }
  }
}

void __63__FBSWorkspaceScenesClient_willTerminateWithTransitionContext___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    [v2 workspaceShouldExit:*(*(a1 + 32) + 8) withTransitionContext:*(a1 + 40)];
  }
}

uint64_t __92__FBSWorkspaceScenesClient_createSceneWithIdentity_parameters_transitionContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __92__FBSWorkspaceScenesClient_createSceneWithIdentity_parameters_transitionContext_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(v2 + 24)) != 0)
  {
    v4 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __92__FBSWorkspaceScenesClient_createSceneWithIdentity_parameters_transitionContext_completion___block_invoke_3;
    v11[3] = &unk_1E76BEB68;
    v5 = v3;
    v12 = v5;
    [v4 _configureParameters:v11];
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__FBSWorkspaceScenesClient_createSceneWithIdentity_parameters_transitionContext_completion___block_invoke_5;
  v9[3] = &unk_1E76BEA78;
  v10 = *(a1 + 32);
  [(FBSWorkspaceScenesClient *)v6 _callOutQueue_sendDidCreateForScene:v7 transitionContext:v8 completion:v9];
}

void __92__FBSWorkspaceScenesClient_createSceneWithIdentity_parameters_transitionContext_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __92__FBSWorkspaceScenesClient_createSceneWithIdentity_parameters_transitionContext_completion___block_invoke_4;
  v3[3] = &unk_1E76BDFD0;
  v4 = *(a1 + 32);
  [a2 updateSettingsWithBlock:v3];
}

- (void)_executeCalloutFromHostEvent:(void *)event withBlock:
{
  v5 = a2;
  eventCopy = event;
  v7 = eventCopy;
  if (self)
  {
    if (!eventCopy)
    {
      [FBSWorkspaceScenesClient _executeCalloutFromHostEvent:? withBlock:?];
    }

    if (v5 || ([off_1E76BCA28 currentContext], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (v5 = objc_opt_new()) != 0)
    {
      v11 = v5[2];
      v8 = v11;
      v9 = *(v5 + 8);
      if (v9 == 1 && !v11)
      {
        [FBSWorkspaceScenesClient _executeCalloutFromHostEvent:? withBlock:?];
      }

      [FBSWorkspaceScenesClient _executeCalloutFromHostEvent:self withBlock:v5];
    }

    else
    {
      v8 = 0;
      LOBYTE(v9) = 0;
    }

    v10 = *(self + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__FBSWorkspaceScenesClient__executeCalloutFromHostEvent_withBlock___block_invoke;
    v12[3] = &unk_1E76BECF8;
    v5 = v5;
    v13 = v5;
    selfCopy = self;
    v16 = sel__executeCalloutFromHostEvent_withBlock_;
    v17 = v9;
    v15 = v7;
    [v10 performAsync:v12];
  }
}

- (void)reconnectSceneWithIdentity:(id)identity parameters:(id)parameters transitionContext:(id)context completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  parametersCopy = parameters;
  contextCopy = context;
  completionCopy = completion;
  v14 = FBLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 134218498;
    selfCopy = self;
    v41 = 2112;
    v42 = identifier;
    v43 = 2114;
    v44 = identityCopy;
    _os_log_impl(&dword_1A2DBB000, v14, OS_LOG_TYPE_DEFAULT, "<FBSWorkspaceScenesClient:%p %@> Reconnecting scene %{public}@", buf, 0x20u);
  }

  v16 = [(NSMutableDictionary *)self->_scenesByIdentity objectForKey:identityCopy];
  if (v16 && [(NSHashTable *)self->_reconnectingScenes containsObject:v16])
  {
    specification = [v16 specification];
    specification2 = [parametersCopy specification];
    v19 = objc_opt_class();
    v20 = objc_opt_class();

    if (v19 == v20)
    {
      clientSettings = [parametersCopy clientSettings];
      [specification clientSettingsClass];
      if (objc_opt_isKindOfClass())
      {
        settings = [parametersCopy settings];
        [specification settingsClass];
        if (objc_opt_isKindOfClass())
        {
          [(NSHashTable *)self->_reconnectingScenes removeObject:v16];
          [(NSMutableDictionary *)self->_clientSettingsByIdentity objectForKey:identityCopy];
          objc_claimAutoreleasedReturnValue();
          BSEqualObjects();
        }

        v27 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A588];
        v32 = @"settings mismatch in reconnect";
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v29 = v27;
        v26 = v28;
        v30 = [v29 errorWithDomain:@"FBSWorkspaceScenesClient" code:1 userInfo:v28];
        completionCopy[2](completionCopy, v30);
      }

      else
      {
        v25 = MEMORY[0x1E696ABC0];
        v33 = *MEMORY[0x1E696A588];
        v34 = @"clientSettings mismatch in reconnect";
        settings = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v26 = [v25 errorWithDomain:@"FBSWorkspaceScenesClient" code:1 userInfo:settings];
        completionCopy[2](completionCopy, v26);
      }
    }

    else
    {
      v21 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A588];
      v36 = @"specification mismatch in reconnect";
      clientSettings = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      settings = [v21 errorWithDomain:@"FBSWorkspaceScenesClient" code:1 userInfo:clientSettings];
      completionCopy[2](completionCopy, settings);
    }
  }

  else
  {
    v24 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A588];
    v38 = @"Scene remnant does not exist";
    specification = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    clientSettings = [v24 errorWithDomain:@"FBSWorkspaceScenesClient" code:1 userInfo:specification];
    completionCopy[2](completionCopy, clientSettings);
  }
}

void __95__FBSWorkspaceScenesClient_reconnectSceneWithIdentity_parameters_transitionContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = FBLogSceneClient();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__FBSWorkspaceScenesClient_scene_didUpdateClientSettings_withDiff_transitionContext___block_invoke_2_cold_1(a1, v3);
    }
  }
}

- (void)_queue_updateScene:(void *)scene withSettings:(void *)settings diff:(void *)diff transitionContext:(void *)context completion:
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a2;
  sceneCopy = scene;
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  if (self)
  {
    if (!v11)
    {
      [FBSWorkspaceScenesClient _queue_updateScene:? withSettings:? diff:? transitionContext:? completion:?];
    }

    identity = [v11 identity];
    if ([*(self + 72) containsObject:v11])
    {
      v17 = FBLogSceneClient();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = identity;
        _os_log_impl(&dword_1A2DBB000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring update for disconnected scene.", buf, 0xCu);
      }

      if (contextCopy)
      {
        contextCopy[2](contextCopy, 0);
      }
    }

    else
    {
      v18 = objc_opt_new();
      [(_FBSScenesClientHostEvent *)v18 setIdentity:identity];
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __94__FBSWorkspaceScenesClient__queue_updateScene_withSettings_diff_transitionContext_completion___block_invoke;
      newValue[3] = &unk_1E76BD318;
      v32 = contextCopy;
      if (v18)
      {
        objc_setProperty_nonatomic_copy(v18, v19, newValue, 32);
      }

      if (!sceneCopy)
      {
        specification = [v11 specification];
        v21 = [specification _isSignificantTransitionContext:diffCopy];

        if ((v21 & 1) == 0)
        {
          if (v18)
          {
            v18[8] = 1;
          }

          [(_FBSScenesClientHostEvent *)v18 setDiff:settingsCopy];
        }
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __94__FBSWorkspaceScenesClient__queue_updateScene_withSettings_diff_transitionContext_completion___block_invoke_2;
      v23[3] = &unk_1E76BEC58;
      v24 = v11;
      selfCopy = self;
      v26 = identity;
      v27 = diffCopy;
      v28 = settingsCopy;
      v29 = sceneCopy;
      v30 = v18;
      v22 = v18;
      [(FBSWorkspaceScenesClient *)self _executeCalloutFromHostEvent:v22 withBlock:v23];
    }
  }
}

- (void)sceneID:(id)d updateWithSettingsDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  dCopy = d;
  diffCopy = diff;
  contextCopy = context;
  completionCopy = completion;
  v14 = [(NSMutableDictionary *)self->_scenesByIdentity objectForKey:dCopy];
  if (v14)
  {
    [(FBSWorkspaceScenesClient *)self _queue_updateScene:v14 withSettings:0 diff:diffCopy transitionContext:contextCopy completion:completionCopy];
  }

  else
  {
    v15 = FBLogSceneClient();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(FBSWorkspaceScenesClient *)dCopy sceneID:v15 updateWithSettingsDiff:v16 transitionContext:v17 completion:v18, v19, v20, v21];
    }

    if (completionCopy)
    {
      v22 = MEMORY[0x1E696ABC0];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __88__FBSWorkspaceScenesClient_sceneID_updateWithSettingsDiff_transitionContext_completion___block_invoke;
      v24[3] = &unk_1E76BE348;
      v25 = dCopy;
      v23 = [v22 bs_errorWithDomain:@"FBSWorkspaceScenesClient" code:1 configuration:v24];
      (*(completionCopy + 2))(completionCopy, v23);
    }
  }
}

void __88__FBSWorkspaceScenesClient_sceneID_updateWithSettingsDiff_transitionContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Update failed."];
  [v3 setFailureReason:@"No FBSScene exists for provided identity."];
  v4 = [*(a1 + 32) description];
  [v3 setUserInfoValue:v4 forKey:@"FBSSceneIdentity"];
}

uint64_t __51__FBSWorkspaceScenesClient_sendActions_completion___block_invoke(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1[4] + 16) workspace:*(a1[4] + 8) didReceiveActions:a1[5]];
  }

  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __71__FBSWorkspaceScenesClient_sceneID_sendActions_toExtension_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = [(FBSWorkspaceScenesClient *)*(a1 + 40) _reportedSceneWithIdentity:?];

  if (v2 != v3)
  {
    goto LABEL_3;
  }

  [(FBSWorkspaceScenesClient *)*(a1 + 40) _configureReceivedActions:*(a1 + 32) forScene:?];
  v5 = *(a1 + 64);
  if (!v5)
  {
    v7 = 0;
LABEL_13:
    [*(a1 + 32) updater:*(a1 + 40) didReceiveActions:*(a1 + 56) forExtension:v7];
    goto LABEL_3;
  }

  v6 = NSClassFromString(v5);
  v7 = v6;
  if (!*(a1 + 64) || v6)
  {
    goto LABEL_13;
  }

  v8 = FBLogSceneClient();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __71__FBSWorkspaceScenesClient_sceneID_sendActions_toExtension_completion___block_invoke_cold_1();
  }

LABEL_3:
  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __64__FBSWorkspaceScenesClient_sceneID_handleInvocation_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[4];
  if (v9 && ([(FBSWorkspaceScenesClient *)a1[5] _reportedSceneWithIdentity:?], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 == v10))
  {
    v12 = a1[4];
    v13 = a1[7];
    v14 = a1[8];

    [v13 invokeWithReceiver:v12 replyHandler:v14];
  }

  else
  {
    v11 = a1[8];
    if (v11)
    {
      v15 = FBSWorkspaceErrorCreate(0, 1uLL, @"failed to find expected scene with identifier=%@", a4, a5, a6, a7, a8, a1[6]);
      (*(v11 + 16))(v11, 0, v15);
    }
  }
}

void __59__FBSWorkspaceScenesClient_sceneID_sendMessage_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9 && ([(FBSWorkspaceScenesClient *)*(a1 + 40) _reportedSceneWithIdentity:?], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 == v10))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__FBSWorkspaceScenesClient_sceneID_sendMessage_completion___block_invoke_2;
    v16[3] = &unk_1E76BEBB8;
    v14 = *(a1 + 56);
    v17 = *(a1 + 64);
    [v12 updater:v13 didReceiveMessage:v14 withResponse:v16];
  }

  else
  {
    v11 = *(a1 + 64);
    if (v11)
    {
      v15 = FBSWorkspaceErrorCreate(0, 1uLL, @"failed to find expected scene with identifier=%@", a4, a5, a6, a7, a8, *(a1 + 48));
      (*(v11 + 16))(v11, 0, v15);
    }
  }
}

uint64_t __59__FBSWorkspaceScenesClient_sceneID_sendMessage_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isFailed])
  {
    v3 = FBLogSceneClient();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_cold_1();
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_337(void *a1)
{
  v2 = a1 + 4;
  v3 = [*(a1[4] + 56) objectForKey:a1[5]];
  v4 = v2[2];

  if (v3 == v4)
  {
    os_unfair_lock_lock((a1[4] + 124));
    v5 = [*(a1[4] + 112) objectForKey:a1[5]];

    if (v5)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = a1[5];
      v8 = [*(a1[4] + 112) objectForKey:v7];
      v9 = [v6 stringWithFormat:@"already have a reported scene with identifier %@ : old=%@ new=%@", v7, v8, a1[6]];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_337_cold_1(a1);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
    }

    [*(a1[4] + 112) setObject:a1[6] forKey:a1[5]];
    os_unfair_lock_unlock((a1[4] + 124));
    *(*(a1[7] + 8) + 24) = 1;
  }
}

void __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_2(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_3;
    v8[3] = &unk_1E76BEC08;
    v6 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v4 workspace:v5 didCreateScene:v3 withTransitionContext:v6 completion:v8];
  }

  else
  {
    v7 = *(a1 + 56);

    [v7 signal];
  }
}

uint64_t __94__FBSWorkspaceScenesClient__queue_updateScene_withSettings_diff_transitionContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __94__FBSWorkspaceScenesClient__queue_updateScene_withSettings_diff_transitionContext_completion___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3 && ([(FBSWorkspaceScenesClient *)*(a1 + 40) _reportedSceneWithIdentity:?], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
  {
    __94__FBSWorkspaceScenesClient__queue_updateScene_withSettings_diff_transitionContext_completion___block_invoke_2_cold_1((a1 + 40), a1, v2, &v6);
  }

  else
  {
    v5 = *(a1 + 80);

    [(_FBSScenesClientHostEvent *)v5 complete];
  }
}

void __77__FBSWorkspaceScenesClient__sceneID_destroyWithTransitionContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Destroy failed."];
  [v3 setFailureReason:@"No FBSScene exists for provided identity."];
  v4 = [*(a1 + 32) description];
  [v3 setUserInfoValue:v4 forKey:@"FBSSceneIdentity"];
}

void __84__FBSWorkspaceScenesClient__queue_invalidateScene_withTransitionContext_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__FBSWorkspaceScenesClient__queue_invalidateScene_withTransitionContext_completion___block_invoke_2;
  v3[3] = &unk_1E76BDA90;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performAsync:v3];
}

uint64_t __84__FBSWorkspaceScenesClient__queue_invalidateScene_withTransitionContext_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _callOutQueue_invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __84__FBSWorkspaceScenesClient__queue_invalidateScene_withTransitionContext_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(a1 + 40), [*(a1 + 32) identity], v4 = objc_claimAutoreleasedReturnValue(), -[FBSWorkspaceScenesClient _reportedSceneWithIdentity:](v3, v4), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v2 == v5))
  {
    v7 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__FBSWorkspaceScenesClient__queue_invalidateScene_withTransitionContext_completion___block_invoke_4;
    v16[3] = &unk_1E76BCDB0;
    v8 = *(a1 + 48);
    v17 = *(a1 + 56);
    if (([v7 _callOutQueue_willDestroyWithTransitionContext:v8 completion:v16] & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        v12 = *(v9 + 8);
        v11 = *(v9 + 16);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __84__FBSWorkspaceScenesClient__queue_invalidateScene_withTransitionContext_completion___block_invoke_5;
        v14[3] = &unk_1E76BECA8;
        v13 = *(a1 + 48);
        v15 = *(a1 + 56);
        [v11 workspace:v12 willDestroyScene:v10 withTransitionContext:v13 completion:v14];
      }

      else
      {
        [*(a1 + 56) signal];
      }
    }

    os_unfair_lock_lock((*(a1 + 40) + 124));
    [*(*(a1 + 40) + 112) removeObjectForKey:*(a1 + 64)];
    os_unfair_lock_unlock((*(a1 + 40) + 124));
  }

  else
  {
    v6 = *(a1 + 56);

    [v6 signal];
  }
}

void __67__FBSWorkspaceScenesClient__executeCalloutFromHostEvent_withBlock___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = (a1 + 40);
    os_unfair_lock_lock((*(a1 + 40) + 128));
    v4 = [*&(*v3)[22]._os_unfair_lock_opaque indexOfObjectIdenticalTo:*(a1 + 32)];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = *v3 + 32;

      os_unfair_lock_unlock(v5);
      return;
    }

    if (v4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"if present, the next event is always at index 0"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __67__FBSWorkspaceScenesClient__executeCalloutFromHostEvent_withBlock___block_invoke_cold_2(a1);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
    }

    [*(*(a1 + 40) + 88) removeObjectAtIndex:0];
    if (*(a1 + 64) == 1)
    {
      __67__FBSWorkspaceScenesClient__executeCalloutFromHostEvent_withBlock___block_invoke_cold_1(v2, a1 + 40);
    }

    os_unfair_lock_unlock(*v3 + 32);
  }

  v6 = *(*(a1 + 40) + 8);

  [v6 _calloutQueue_executeCalloutFromSource:? withBlock:?];
}

void __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if ([v5 isNonLaunching])
      {
        v6 = FBLogCommon();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_17();
          v13 = 2112;
          v14 = v7;
          _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEFAULT, "<FBSWorkspaceScenesClient:%p %@> attempting delayed handshake from activation handler", v12, 0x16u);
        }

        [(FBSWorkspaceScenesClient *)*(a1 + 32) _queue_sendHandshake];
      }
    }
  }

  v8 = [v3 remoteToken];
  v9 = [FBSSceneHostHandle handleWithAuditToken:v8];
  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  *(v10 + 96) = v9;
}

- (void)_queue_invalidate
{
  v31 = *MEMORY[0x1E69E9840];
  if (self && (*(self + 133) & 1) == 0)
  {
    *(self + 133) = 1;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    allValues = [*(self + 56) allValues];
    v3 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v26;
      do
      {
        v6 = 0;
        do
        {
          if (*v26 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          [(FBSWorkspaceScenesClient *)self _queue_invalidateScene:0 withTransitionContext:0 completion:?];
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v4);
    }

    [*(self + 8) _queue_unregisterSource:self];
    [*(self + 40) invalidate];
    v7 = *(self + 40);
    *(self + 40) = 0;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = *(self + 80);
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v9)
    {
      v15 = v9;
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v8);
          }

          v18 = *(*(&v21 + 1) + 8 * v17);
          v19 = FBSWorkspaceErrorCreate(0, 3uLL, @"service was invalidated : %@", v10, v11, v12, v13, v14, *(self + 48));
          (*(v18 + 16))(v18, 0, v19);

          ++v17;
        }

        while (v15 != v17);
        v15 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    v20 = *(self + 80);
    *(self + 80) = 0;
  }
}

- (void)queue_invalidate
{
  if (self)
  {
    v2 = FBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_13_0(&dword_1A2DBB000, v3, v4, "<FBSWorkspaceScenesClient:%p %@> is explicitly invalidated", v5, v6, v7, v8, v9);
    }

    [(FBSWorkspaceScenesClient *)self _queue_invalidate];
  }
}

- (void)_sceneID:(void *)d destroyWithTransitionContext:(void *)context completion:
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dCopy = d;
  contextCopy = context;
  if (self)
  {
    v10 = [self[7] objectForKey:v7];
    if (v10)
    {
      [(FBSWorkspaceScenesClient *)self _queue_invalidateScene:v10 withTransitionContext:dCopy completion:contextCopy];
    }

    else
    {
      v11 = FBLogSceneClient();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v7;
        _os_log_error_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_ERROR, "No scene exists for identity: %{public}@", buf, 0xCu);
      }

      if (contextCopy)
      {
        v12 = MEMORY[0x1E696ABC0];
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_16();
        v15 = __77__FBSWorkspaceScenesClient__sceneID_destroyWithTransitionContext_completion___block_invoke;
        v16 = &unk_1E76BE348;
        v17 = v7;
        v13 = [v12 bs_errorWithDomain:@"FBSWorkspaceScenesClient" code:1 configuration:v14];
        (*(contextCopy + 2))(contextCopy, v13);
      }
    }
  }
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_232(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  v14[1] = 3221225472;
  v14[2] = __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2;
  v14[3] = &unk_1E76BE9D8;
  v9 = v8;
  v15 = v9;
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = v10;
  v17 = v11;
  v13 = v12;
  v18 = v13;
  if (v7)
  {
    [(FBSWorkspaceScenesClient *)v7 _executeCalloutFromHostEvent:v14 withBlock:?];
    v13 = v18;
  }
}

void __49__FBSWorkspaceScenesClient_scene_sendInvocation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  v10 = v9;
  v12 = v9;
  v11 = v9;
  if (v7)
  {
    OUTLINED_FUNCTION_14(v9);
    v11 = v12;
  }
}

- (void)willTerminateWithTransitionContext:(id)context
{
  contextCopy = context;
  OUTLINED_FUNCTION_2_2();
  v8[1] = 3221225472;
  v8[2] = __63__FBSWorkspaceScenesClient_willTerminateWithTransitionContext___block_invoke;
  v8[3] = &unk_1E76BCD60;
  v8[4] = self;
  v6 = v5;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    [(FBSWorkspaceScenesClient *)self _executeCalloutFromHostEvent:v8 withBlock:?];
    v7 = v9;
  }
}

- (void)createSceneWithIdentity:(id)identity parameters:(id)parameters transitionContext:(id)context completion:(id)completion
{
  identityCopy = identity;
  parametersCopy = parameters;
  contextCopy = context;
  completionCopy = completion;
  v14 = objc_opt_new();
  [(_FBSScenesClientHostEvent *)v14 setIdentity:identityCopy];
  if (v14)
  {
    v14[8] = 1;
  }

  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __92__FBSWorkspaceScenesClient_createSceneWithIdentity_parameters_transitionContext_completion___block_invoke;
  newValue[3] = &unk_1E76BD318;
  v16 = completionCopy;
  v31 = v16;
  if (v14)
  {
    objc_setProperty_nonatomic_copy(v14, v15, newValue, 32);
  }

  v17 = [(FBSWorkspaceScenesClient *)self _createSceneWithIdentity:identityCopy parameters:parametersCopy];
  OUTLINED_FUNCTION_0_2();
  v23 = 3221225472;
  v24 = __92__FBSWorkspaceScenesClient_createSceneWithIdentity_parameters_transitionContext_completion___block_invoke_2;
  v25 = &unk_1E76BD3D8;
  v26 = v14;
  v27 = v18;
  selfCopy = self;
  v29 = contextCopy;
  v19 = contextCopy;
  v20 = v17;
  v21 = v14;
  [(FBSWorkspaceScenesClient *)self _executeCalloutFromHostEvent:v21 withBlock:v22];
}

- (void)sendActions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  v8 = actionsCopy;
  v9 = completionCopy;
  v10 = v9;
  v12 = v9;
  v11 = v9;
  if (self)
  {
    OUTLINED_FUNCTION_14(v9);
    v11 = v12;
  }
}

- (void)sceneID:(id)d sendActions:(id)actions toExtension:(id)extension completion:(id)completion
{
  dCopy = d;
  actionsCopy = actions;
  extensionCopy = extension;
  completionCopy = completion;
  [(FBSWorkspaceScenesClient *)&self->super.isa _queue_connectedSceneWithIdentity:dCopy];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_2();
  v21[1] = 3221225472;
  v21[2] = __71__FBSWorkspaceScenesClient_sceneID_sendActions_toExtension_completion___block_invoke;
  v21[3] = &unk_1E76BEB90;
  v15 = v14;
  v22 = v15;
  selfCopy = self;
  v16 = dCopy;
  v24 = v16;
  v17 = actionsCopy;
  v25 = v17;
  v18 = extensionCopy;
  v26 = v18;
  v19 = completionCopy;
  v27 = v19;
  v20 = v19;
  if (self)
  {
    [(FBSWorkspaceScenesClient *)self _executeCalloutFromHostEvent:v21 withBlock:?];
    v20 = v27;
  }
}

- (id)_queue_connectedSceneWithIdentity:(id *)identity
{
  identityCopy = identity;
  if (identity)
  {
    v3 = [identity[7] objectForKey:a2];
    if (v3 && ([identityCopy[9] containsObject:v3] & 1) == 0)
    {
      identityCopy = v3;
    }

    else
    {
      identityCopy = 0;
    }
  }

  return identityCopy;
}

- (void)_configureReceivedActions:(void *)actions forScene:
{
  v5 = a2;
  actionsCopy = actions;
  v14 = actionsCopy;
  if (self)
  {
    v15 = OUTLINED_FUNCTION_21(actionsCopy, v7, v8, v9, v10, v11, v12, v13, 0, 0, 0, 0, 0, 0, 0, 0, v36, v38);
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        v18 = 0;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(v29 + 8 * v18);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            [v19 setScene:v14];
            isKindOfClass = [v19 setCallOutQueue:*(self + 32)];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = OUTLINED_FUNCTION_21(isKindOfClass, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v37, v39);
      }

      while (v16);
    }
  }
}

- (void)sceneID:(id)d handleInvocation:(id)invocation completion:(id)completion
{
  dCopy = d;
  invocationCopy = invocation;
  completionCopy = completion;
  [(FBSWorkspaceScenesClient *)&self->super.isa _queue_connectedSceneWithIdentity:dCopy];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  v12 = v11;
  v13 = dCopy;
  v14 = invocationCopy;
  v15 = completionCopy;
  v16 = v15;
  v18 = v15;
  v17 = v15;
  if (self)
  {
    OUTLINED_FUNCTION_14(v15);
    v17 = v18;
  }
}

- (void)sceneID:(id)d sendMessage:(id)message completion:(id)completion
{
  dCopy = d;
  messageCopy = message;
  completionCopy = completion;
  [(FBSWorkspaceScenesClient *)&self->super.isa _queue_connectedSceneWithIdentity:dCopy];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_16();
  v12 = v11;
  v13 = dCopy;
  v14 = messageCopy;
  v15 = completionCopy;
  v16 = v15;
  v18 = v15;
  v17 = v15;
  if (self)
  {
    OUTLINED_FUNCTION_14(v15);
    v17 = v18;
  }
}

void __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_341(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) actions];
  [(FBSWorkspaceScenesClient *)v2 _configureReceivedActions:v3 forScene:*(a1 + 48)];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_2;
  v13[3] = &unk_1E76BD3D8;
  v4 = *(a1 + 40);
  v10 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v10;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_4;
  v11[3] = &unk_1E76BCDB0;
  v12 = *(a1 + 56);
  [v5 _callOutQueue_didCreateWithTransitionContext:v4 alternativeCreationCallout:v13 completion:v11];
}

void __94__FBSWorkspaceScenesClient__queue_updateScene_withSettings_diff_transitionContext_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) activeMessageBatch];
  [v2 commitWithReason:@"update-completion"];

  v3 = *(a1 + 40);

  [(_FBSScenesClientHostEvent *)v3 complete];
}

- (void)initWithEndpoint:(char *)a1 queue:calloutQueue:workspace:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithEndpoint:(char *)a1 queue:calloutQueue:workspace:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"provided endpoint is not for a workspace service"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithEndpoint:(char *)a1 queue:calloutQueue:workspace:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"provided endpoint must not be instanced"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithEndpoint:(char *)a1 queue:calloutQueue:workspace:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithIdentifier:(char *)a1 connection:queue:calloutQueue:workspace:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"workspace", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithIdentifier:(char *)a1 connection:queue:calloutQueue:workspace:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"calloutQueue", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithIdentifier:(char *)a1 connection:queue:calloutQueue:workspace:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"queue", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithIdentifier:(char *)a1 connection:queue:calloutQueue:workspace:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"connection", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithIdentifier:(char *)a1 connection:queue:calloutQueue:workspace:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithPeer:(char *)a1 queue:calloutQueue:workspace:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSServiceConnectionClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithPeer:(char *)a1 queue:calloutQueue:workspace:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"provided peer is not for a workspace service"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithPeer:(char *)a1 queue:calloutQueue:workspace:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"provided peer must not be instanced"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithPeer:(char *)a1 queue:calloutQueue:workspace:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OUTLINED_FUNCTION_8_2(a1);
  v5[1] = 3221225472;
  v5[2] = __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_4;
  v5[3] = &unk_1E76BE680;
  *(a1 + 32) = *v6;
  [a3 setInterruptionHandler:a1];
}

void __88__FBSWorkspaceScenesClient__initWithIdentifier_connection_queue_calloutQueue_workspace___block_invoke_4_cold_1(uint64_t *a1)
{
  v2 = FBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_13_0(&dword_1A2DBB000, v3, v4, "<FBSWorkspaceScenesClient:%p %@> attempting immediate handshake from interruption handler", v5, v6, v7, v8, v9);
  }

  [(FBSWorkspaceScenesClient *)*a1 _queue_sendHandshake];
}

- (void)_queue_invalidateScene:(char *)a1 withTransitionContext:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"scene", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)sourceIdentifierForHostEndpoint:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"hostEndpoint", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)createSceneFutureWithDefinition:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identity is not specified"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_createSceneWithIdentity:(const char *)a1 parameters:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v3, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v4, v5, v6, v7, 2u);
}

- (void)_createSceneWithIdentity:(uint64_t)a1 parameters:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v7 = [a2 identityToken];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_createSceneWithIdentity:(void *)a1 parameters:(const char *)a2 .cold.3(void *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 identityToken];
  v4 = [v3 stringWithFormat:@"failed to purge remnant for incoming scene : token=%@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v14 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_createSceneWithIdentity:(char *)a1 parameters:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"parameters", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_createSceneWithIdentity:(char *)a1 parameters:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)activateSceneFuture:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scene is not a client future"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __59__FBSWorkspaceScenesClient_activateSceneFuture_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we shouldn't have an error if we have a proxy : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a2 + 56));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v2 = [a2 succinctDescription];
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_cold_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_240;
  a2[3] = &unk_1E76BD750;
  a2[5] = a3;
  v7 = a4;
  a2[4] = v7;
  if (v6)
  {
    [(FBSWorkspaceScenesClient *)v6 _executeCalloutFromHostEvent:a2 withBlock:?];
    v7 = a2[4];
  }
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 succinctDescription];
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_242_cold_1(uint64_t a1, uint64_t a2)
{
  [(FBSWorkspaceScenesClient *)a2 _remoteTarget];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_15();
  v3(v2);
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_242_cold_2(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 48);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"internal state inconsistency - we should never be pending send blocks for !isNonLaunching (%@) connections"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a2 + 48));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

void __63__FBSWorkspaceScenesClient_requestSceneWithOptions_completion___block_invoke_2_242_cold_3(uint64_t a1, uint64_t a2)
{
  [(FBSWorkspaceScenesClient *)a2 _remoteTarget];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_15();
  v3(v2);
}

void __85__FBSWorkspaceScenesClient_scene_didUpdateClientSettings_withDiff_transitionContext___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __65__FBSWorkspaceScenesClient_scene_didReceiveActions_forExtension___block_invoke_cold_1(uint64_t *a1, uint64_t *a2, uint64_t a3, id *a4)
{
  v15 = [(FBSWorkspaceScenesClient *)*a1 _remoteTarget];
  if (v15)
  {
    v8 = *a2;
    v10 = *(a3 + 56);
    v9 = *(a3 + 64);
    if (v9)
    {
      v11 = NSStringFromClass(v9);
      [v15 sceneID:v8 didReceiveActions:v10 forExtension:v11];
    }

    else
    {
      [v15 sceneID:v8 didReceiveActions:*(a3 + 56) forExtension:0];
    }

    v12 = [*a4 specification];
    v13 = [v12 disablesClientBatching];

    if (v13)
    {
      v14 = [*(*a1 + 40) activeMessageBatch];
      [v14 commitWithReason:@"scene opts out of batching"];
    }
  }
}

- (void)scene:(char *)a1 sendInvocation:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)scene:(uint64_t)a1 sendMessage:(uint64_t)a2 withResponse:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_8_2(a1);
  v5[1] = 3221225472;
  v5[2] = __59__FBSWorkspaceScenesClient_scene_sendMessage_withResponse___block_invoke_6;
  v5[3] = &unk_1E76BD750;
  v7 = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v7;
  if (a3)
  {
    [(FBSWorkspaceScenesClient *)a3 _executeCalloutFromHostEvent:a1 withBlock:?];
  }
}

void __66__FBSWorkspaceScenesClient_scene_invalidateWithTransitionContext___block_invoke_cold_2(id **a1, void **a2, uint64_t a3, void *a4)
{
  [(FBSWorkspaceScenesClient *)*a1 _queue_invalidateScene:0 withTransitionContext:0 completion:?];
  v8 = [*(a3 + 56) error];
  v7 = [(FBSWorkspaceScenesClient *)*a1 _remoteTarget];
  [v7 sceneID:*a4 invalidateWithContext:*(a3 + 56) clientError:v8];
}

- (void)_executeCalloutFromHostEvent:(char *)a1 withBlock:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identity not set on coalescable event"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_executeCalloutFromHostEvent:(char *)a1 withBlock:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"block != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_executeCalloutFromHostEvent:(uint64_t)a1 withBlock:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 128));
  [*(a1 + 88) addObject:a2];

  os_unfair_lock_unlock((a1 + 128));
}

- (void)_queue_updateScene:(char *)a1 withSettings:diff:transitionContext:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"scene", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __71__FBSWorkspaceScenesClient_sceneID_sendActions_toExtension_completion___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1A2DBB000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to deliver actions to extension %{public}@ because that class does not exist.", v2, 0x16u);
}

void __93__FBSWorkspaceScenesClient__callOutQueue_sendDidCreateForScene_transitionContext_completion___block_invoke_337_cold_1(uint64_t a1)
{
  v1 = NSStringFromSelector(*(a1 + 64));
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

void __94__FBSWorkspaceScenesClient__queue_updateScene_withSettings_diff_transitionContext_completion___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v8 = *a1;
  v9 = [*(a2 + 56) actions];
  [(FBSWorkspaceScenesClient *)v8 _configureReceivedActions:v9 forScene:*a3];

  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  if (v12 && *(v12 + 8) == 1)
  {
    v13 = *(v12 + 24);
    if (*(a2 + 64) != v13)
    {
      v14 = [*a3 settings];
      v15 = [v13 settingsByApplyingToMutableCopyOfSettings:v14];

      if ([v14 isEqual:v15])
      {
        [(_FBSScenesClientHostEvent *)*(a2 + 80) complete];

        v10 = 0;
        goto LABEL_8;
      }

      v10 = 0;
      v11 = v15;
    }

    v12 = *(a2 + 80);
  }

  v16 = *a3;
  v17 = *a1;
  v18 = *(a2 + 56);
  *a4 = MEMORY[0x1E69E9820];
  *(a4 + 8) = 3221225472;
  *(a4 + 16) = __94__FBSWorkspaceScenesClient__queue_updateScene_withSettings_diff_transitionContext_completion___block_invoke_3;
  *(a4 + 24) = &unk_1E76BEC30;
  *(a4 + 32) = v17;
  *(a4 + 40) = v12;
  [v16 updater:v17 didUpdateSettings:v11 withDiff:v10 transitionContext:v18 completion:a4];

  v15 = v11;
LABEL_8:
}

void __67__FBSWorkspaceScenesClient__executeCalloutFromHostEvent_withBlock___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v3 = [(_FBSScenesClientHostEvent *)*a1 coalesceEvents:?];
  if ([v3 count])
  {
    [*(*a2 + 88) removeObjectsInArray:v3];
  }
}

void __67__FBSWorkspaceScenesClient__executeCalloutFromHostEvent_withBlock___block_invoke_cold_2(uint64_t a1)
{
  v1 = NSStringFromSelector(*(a1 + 56));
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

@end