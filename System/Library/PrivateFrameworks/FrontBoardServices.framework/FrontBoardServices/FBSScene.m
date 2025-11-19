@interface FBSScene
+ (id)pseudoSceneWithIdentifier:(id)a3 specification:(id)a4;
- (BOOL)_callOutQueue_willDestroyWithTransitionContext:(id)a3 completion:(id)a4;
- (BOOL)conformsToExtension:(Class)a3;
- (BOOL)invalidateSnapshotWithContext:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)performSnapshotWithContext:(id)a3;
- (BOOL)snapshotRequest:(id)a3 performWithContext:(id)a4;
- (BOOL)snapshotRequestAllowSnapshot:(id)a3;
- (BSAuditToken)hostAuditToken;
- (FBSScene)init;
- (FBSSceneClientSettings)clientSettings;
- (FBSSceneDelegate)delegate;
- (FBSSceneHostHandle)hostHandle;
- (FBSSceneSettings)settings;
- (FBSSceneUpdater)updater;
- (FBSWorkspaceService)workspaceService;
- (id)_beginUpdate;
- (id)_createTransitionContext;
- (id)_initWithUpdater:(id)a3 identityToken:(id)a4 identity:(id)a5 parameters:(id)a6 hostHandle:(id)a7;
- (id)_lock_allComponents;
- (id)_observers;
- (id)componentForExtension:(Class)a3 ofClass:(Class)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)display;
- (id)fbsDisplay;
- (id)hostProcess;
- (id)layers;
- (id)openSessionWithName:(id)a3 executionPolicy:(id)a4;
- (id)parameters;
- (id)snapshotRequest;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)targetForInvocation:(id)a3;
- (void)_beginUpdate;
- (void)_callOutQueue_didCreateWithTransitionContext:(id)a3 alternativeCreationCallout:(id)a4 completion:(id)a5;
- (void)_callOutQueue_didUpdateHostHandle:(id)a3;
- (void)_callOutQueue_ensureCoalesceClientSettingsUpdates:(id)a3;
- (void)_callOutQueue_invalidate;
- (void)_callOutQueue_maybeCoalesceClientSettingsUpdates:(id)a3;
- (void)_callOutQueue_updateExtensionsFromSettings:(id)a3 toSettings:(id)a4 withDiff:(id)a5;
- (void)_configureParameters:(id)a3;
- (void)_sendUpdate:(id)a3;
- (void)_updateClientSettings:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)addObserver:(id)a3 withConfiguration:(id)a4;
- (void)agent:(id)a3 registerMessageHandler:(id)a4;
- (void)agent:(id)a3 sendMessage:(id)a4 withResponse:(id)a5;
- (void)attachContext:(id)a3;
- (void)attachLayer:(id)a3;
- (void)closeSession:(id)a3;
- (void)detachContext:(id)a3;
- (void)detachLayer:(id)a3;
- (void)invalidate:(id)a3;
- (void)removeObserver:(id)a3;
- (void)sendActions:(id)a3 toExtension:(Class)a4;
- (void)sendBatchedMessages;
- (void)sendInvocation:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateClientSettings:(id)a3 withTransitionContext:(id)a4;
- (void)updateClientSettingsWithBlock:(id)a3;
- (void)updateClientSettingsWithTransitionBlock:(id)a3;
- (void)updateSettings:(id)a3;
- (void)updater:(id)a3 didReceiveActions:(id)a4 forExtension:(Class)a5;
- (void)updater:(id)a3 didReceiveMessage:(id)a4 withResponse:(id)a5;
- (void)updater:(id)a3 didUpdateSettings:(id)a4 withDiff:(id)a5 transitionContext:(id)a6 completion:(id)a7;
@end

@implementation FBSScene

- (FBSSceneSettings)settings
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_settings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (FBSSceneClientSettings)clientSettings
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_clientSettings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_beginUpdate
{
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_callout_updateDepth)
  {
    [(FBSScene *)a2 _beginUpdate];
  }

  if (self->_callout_sceneUpdate)
  {
    [(FBSScene *)a2 _beginUpdate];
  }

  v4 = objc_opt_new();
  callout_sceneUpdate = self->_callout_sceneUpdate;
  self->_callout_sceneUpdate = v4;

  v6 = v4;
  v7 = [(FBSScene *)self clientSettings];
  v8 = v6[1];
  v6[1] = v7;

  objc_storeStrong(v6 + 3, v6[1]);

  return v6;
}

- (id)_createTransitionContext
{
  v2 = [(FBSSceneDefinition *)self->_definition specification];
  v3 = [objc_msgSend(v2 "transitionContextClass")];

  return v3;
}

- (id)_observers
{
  v3 = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(FBSScene *)self _lock_allComponents];
  [v3 addObjectsFromArray:v4];

  if ([(NSMutableArray *)self->_lock_sceneObservers count])
  {
    [v3 addObjectsFromArray:self->_lock_sceneObservers];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_allComponents
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(NSMapTable *)self->_lock_components count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = NSAllMapTableValues(self->_lock_components);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObjectsFromArray:{*(*(&v10 + 1) + 8 * i), v10}];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (FBSSceneDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (FBSSceneUpdater)updater
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_updater;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (FBSSceneHostHandle)hostHandle
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_hostHandle;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)parameters
{
  v3 = [FBSMutableSceneParameters alloc];
  v4 = [(FBSScene *)self specification];
  v5 = [(FBSSceneParameters *)v3 initWithSpecification:v4];

  os_unfair_lock_lock(&self->_lock);
  [(FBSMutableSceneParameters *)v5 setSettings:self->_lock_settings];
  [(FBSSceneParameters *)v5 setClientSettings:self->_lock_clientSettings];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)_callOutQueue_invalidate
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(FBSScene *)self _observers];
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lock_delegate, 0);
  lock_updater = self->_lock_updater;
  self->_lock_updater = 0;

  lock_sceneObservers = self->_lock_sceneObservers;
  self->_lock_sceneObservers = 0;

  lock_components = self->_lock_components;
  self->_lock_components = 0;

  os_unfair_lock_unlock(&self->_lock);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v24 + 1) + 8 * v11++) invalidate];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_callOutQueue_agentSessions;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v20 + 1) + 8 * v16++) invalidate];
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  callOutQueue_agentSessions = self->_callOutQueue_agentSessions;
  self->_callOutQueue_agentSessions = 0;

  callOutQueue_agentMessageHandler = self->_callOutQueue_agentMessageHandler;
  self->_callOutQueue_agentMessageHandler = 0;

  callOutQueue_agent = self->_callOutQueue_agent;
  self->_callOutQueue_agent = 0;
}

- (FBSScene)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBSScene"];
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
    v13 = self;
    v14 = 2114;
    v15 = @"FBSScene.m";
    v16 = 1024;
    v17 = 73;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lock_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (FBSWorkspaceService)workspaceService
{
  v3 = [(FBSScene *)self updater];
  if (v3)
  {
    v4 = [FBSWorkspaceService alloc];
    v5 = [(FBSSceneIdentity *)self->_identity internalWorkspaceIdentifier];
    v6 = [(FBSWorkspaceService *)v4 _initWithTarget:v3 identifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateClientSettings:(id)a3 withTransitionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FBSScene *)self clientSettings];
  v9 = [v6 _progenitor];

  if (v9 != v8)
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FBSScene updateClientSettings:? withTransitionContext:?];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__FBSScene_updateClientSettings_withTransitionContext___block_invoke;
    v18[3] = &unk_1E76BD2A0;
    v19 = v6;
    v6 = [v8 copy:v18];
  }

  if (v7 && ![(FBSSettings *)v7 _isEmpty])
  {
    if (!self->_callout_updateDepth)
    {
      [(FBSScene *)self _sendUpdate:self->_callout_sceneUpdate];
    }

    v13 = [(FBSScene *)self _beginUpdate];
    v14 = [v6 copy];
    v15 = *(v13 + 1);
    *(v13 + 1) = v14;

    objc_storeStrong(v13 + 5, a4);
    [(FBSScene *)self _updateClientSettings:0];
  }

  else
  {
    v12 = [FBSSceneClientSettingsDiff diffFromSettings:v8 toSettings:v6];
    v13 = v12;
    if (v12)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55__FBSScene_updateClientSettings_withTransitionContext___block_invoke_2;
      v16[3] = &unk_1E76BD2C8;
      v13 = v12;
      v17 = v13;
      [(FBSScene *)self _updateClientSettings:v16];
    }
  }
}

- (void)updateClientSettingsWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__FBSScene_updateClientSettingsWithBlock___block_invoke;
    v6[3] = &unk_1E76BD2F0;
    v7 = v4;
    [(FBSScene *)self _updateClientSettings:v6];
  }
}

- (void)updateClientSettingsWithTransitionBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(FBSScene *)self clientSettings];
    v7 = [v5 mutableCopy];

    v6 = v4[2](v4, v7);

    [(FBSScene *)self updateClientSettings:v7 withTransitionContext:v6];
  }
}

- (void)attachLayer:(id)a3
{
  v4 = a3;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__FBSScene_attachLayer___block_invoke;
  v6[3] = &unk_1E76BD2C8;
  v7 = v4;
  v5 = v4;
  [(FBSScene *)self updateClientSettings:v6];
}

- (void)detachLayer:(id)a3
{
  v4 = a3;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__FBSScene_detachLayer___block_invoke;
  v6[3] = &unk_1E76BD2C8;
  v7 = v4;
  v5 = v4;
  [(FBSScene *)self updateClientSettings:v6];
}

- (void)attachContext:(id)a3
{
  v4 = [FBSCAContextSceneLayer layerWithCAContext:a3];
  [(FBSScene *)self attachSceneContext:v4];
}

- (void)detachContext:(id)a3
{
  v4 = [FBSCAContextSceneLayer layerWithCAContext:a3];
  [(FBSScene *)self detachSceneContext:v4];
}

- (id)snapshotRequest
{
  v3 = [FBSSceneSnapshotRequest alloc];
  v4 = [(FBSScene *)self settings];
  v5 = [(FBSSceneSnapshotRequest *)v3 initWithSettings:v4];

  v6 = [(FBSScene *)self identifier];
  [(FBSSceneSnapshotRequest *)v5 setSceneID:v6];

  [(FBSSceneSnapshotRequest *)v5 setDelegate:self];

  return v5;
}

- (BOOL)performSnapshotWithContext:(id)a3
{
  v4 = a3;
  v5 = [(FBSScene *)self snapshotRequest];
  v6 = [v5 performSnapshotWithContext:v4];

  return v6;
}

- (BOOL)invalidateSnapshotWithContext:(id)a3
{
  v4 = [FBSSceneSnapshotRequestHandle handleForRequestType:2 context:a3];
  [v4 performRequestForScene:self];

  return 1;
}

- (void)addObserver:(id)a3 withConfiguration:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (!v12)
  {
    [FBSScene addObserver:a2 withConfiguration:?];
  }

  v8 = [[FBSSceneObserver alloc] initWithObserver:v12];
  if (v7)
  {
    v7[2](v7, v8);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_sceneObservers = self->_lock_sceneObservers;
  if (!lock_sceneObservers)
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = self->_lock_sceneObservers;
    self->_lock_sceneObservers = v10;

    lock_sceneObservers = self->_lock_sceneObservers;
  }

  [(NSMutableArray *)lock_sceneObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableArray *)self->_lock_sceneObservers copy];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 observer];
        v12 = v11;
        if (v11)
        {
          v13 = v11 == a3;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          [(NSMutableArray *)self->_lock_sceneObservers removeObject:v10];
          [v10 invalidate];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if (![(NSMutableArray *)self->_lock_sceneObservers count])
  {
    lock_sceneObservers = self->_lock_sceneObservers;
    self->_lock_sceneObservers = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)display
{
  v2 = [(FBSScene *)self settings];
  v3 = [v2 displayConfiguration];
  v4 = [v3 CADisplay];

  return v4;
}

- (id)fbsDisplay
{
  v2 = [(FBSScene *)self settings];
  v3 = [v2 displayConfiguration];

  return v3;
}

- (id)layers
{
  v2 = [(FBSScene *)self clientSettings];
  v3 = [v2 layers];
  v4 = [v3 array];

  return v4;
}

- (void)_updateClientSettings:(id)a3
{
  v5 = a3;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_callout_updateDepth == 255)
  {
    [FBSScene _updateClientSettings:a2];
  }

  if (self->_callOutQueue_mutationLocked)
  {
    self->_callOutQueue_mutationLocked = 0;
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mutation locked"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBSScene _updateClientSettings:a2];
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
  }

  v6 = self->_callout_sceneUpdate;
  if (!v6)
  {
    v6 = [(FBSScene *)self _beginUpdate];
  }

  callout_updateDepth = self->_callout_updateDepth;
  self->_callout_updateDepth = callout_updateDepth + 1;
  if (v5)
  {
    v8 = v6->_mutableSettings;
    if (!v8)
    {
      v8 = [(FBSSettings *)v6->_settings mutableCopy];
      objc_storeStrong(&v6->_mutableSettings, v8);
    }

    context = v6->_context;
    if (!context)
    {
      v10 = [(FBSScene *)self _createTransitionContext];
      v11 = v6->_context;
      v6->_context = v10;

      context = v6->_context;
    }

    (v5)[2](v5, v8, context);
    if (![(FBSSettings *)v6->_settings isEqual:v8])
    {
      os_unfair_lock_lock(&self->_lock);
      v12 = [(FBSMutableSettings *)v8 _copyClearingProgenitor:0];
      lock_clientSettings = self->_lock_clientSettings;
      self->_lock_clientSettings = v12;

      objc_storeStrong(&v6->_settings, v12);
      os_unfair_lock_unlock(&self->_lock);
    }

    if (v6->_settings == v6->_previousSettings)
    {
      v14 = [(FBSSceneTransitionContext *)v6->_context animationSettings];
      if (v14)
      {
        v15 = v14;
        [(FBSSceneTransitionContext *)v6->_context setAnimationSettings:0];
        v16 = [(FBSSceneDefinition *)self->_definition specification];
        v17 = [v16 _isSignificantTransitionContext:v6->_context];

        if (v17)
        {
          [(FBSSceneTransitionContext *)v6->_context setAnimationSettings:v15];
        }

        else
        {
          v18 = FBLogSceneClient();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [(FBSScene *)self _updateClientSettings:v18];
          }
        }
      }
    }

    callout_updateDepth = self->_callout_updateDepth - 1;
  }

  self->_callout_updateDepth = callout_updateDepth;
  if (!callout_updateDepth)
  {
    if (!self->_callout_coalesceUpdates || (-[FBSSceneDefinition specification](self->_definition, "specification"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 _isSignificantTransitionContext:v6->_context], v19, v20))
    {
      [(FBSScene *)self _sendUpdate:v6];
    }
  }
}

- (void)_sendUpdate:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_callout_sceneUpdate != v5)
  {
    [FBSScene _sendUpdate:a2];
  }

  p_isa = &v5->super.isa;
  if (v5)
  {
    [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
    v7 = p_isa[1];
    v8 = p_isa[3];
    v9 = p_isa[5];
    os_unfair_lock_lock(&self->_lock);
    aSelector = a2;
    if (self->_everActivated)
    {
      lock_updater = self->_lock_updater;
    }

    else
    {
      lock_updater = 0;
    }

    v11 = lock_updater;
    if (v8 != v7)
    {
      v12 = v8;
      v13 = [(FBSSettings *)v7 _copyClearingProgenitor:0];
      lock_clientSettings = self->_lock_clientSettings;
      self->_lock_clientSettings = v13;

      v15 = v13;
      objc_storeStrong(p_isa + 1, v13);
      v7 = v15;
      v8 = v12;
    }

    os_unfair_lock_unlock(&self->_lock);
    v41 = v8;
    if (v11)
    {
      v16 = [FBSSceneClientSettingsDiff diffFromSettings:v8 toSettings:v7];
      if (v16 || (-[FBSSceneDefinition specification](self->_definition, "specification"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 _isSignificantTransitionContext:v9], v17, v18))
      {
        self->_callOutQueue_mutationLocked = 1;
        objc_storeStrong(p_isa + 4, v16);
        if (!v9)
        {
          v19 = [(FBSScene *)self _createTransitionContext];
          v20 = p_isa[5];
          p_isa[5] = v19;

          v9 = v19;
        }

        if (self->_calloutQueue_animationFence && [v16 containsProperty:sel_layers])
        {
          v21 = [(BKSAnimationFenceHandle *)self->_calloutQueue_animationFence copy];
          [v9 setAnimationFence:v21];
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v22 = [(FBSScene *)self _observers];
        v23 = [v22 countByEnumeratingWithState:&v47 objects:v63 count:16];
        if (v23)
        {
          v24 = *v48;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v48 != v24)
              {
                objc_enumerationMutation(v22);
              }

              [*(*(&v47 + 1) + 8 * i) scene:self didUpdateClientSettings:p_isa];
            }

            v23 = [v22 countByEnumeratingWithState:&v47 objects:v63 count:16];
          }

          while (v23);
        }

        if (self->_hasAgent)
        {
          v26 = objc_alloc_init(FBSSceneEvent);
          [(FBSSceneEvent *)v26 setClientSettingsDiff:v16];
          [(FBSSceneEvent *)v26 setTransitionContext:v9];
          [(FBSSceneEvent *)v26 setSource:2];
          v43 = 0;
          v44 = &v43;
          v45 = 0x2020000000;
          v46 = 0;
          callOutQueue_agent = self->_callOutQueue_agent;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __24__FBSScene__sendUpdate___block_invoke;
          v42[3] = &unk_1E76BD340;
          v42[4] = self;
          v42[5] = &v43;
          [(FBSSceneClientAgent *)callOutQueue_agent scene:self reviewEvent:v26 withCompletion:v42];
          if ((v44[3] & 1) == 0)
          {
            v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"agent callout's completion was not called in scope : event=%@ agent=%@", v26, self->_callOutQueue_agent];
            v34 = MEMORY[0x1E69E9C10];
            v35 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v36 = NSStringFromSelector(aSelector);
              v37 = objc_opt_class();
              v38 = NSStringFromClass(v37);
              *buf = 138544642;
              v52 = v36;
              v53 = 2114;
              v54 = v38;
              v55 = 2048;
              v56 = self;
              v57 = 2114;
              v58 = @"FBSScene.m";
              v59 = 1024;
              v60 = 455;
              v61 = 2114;
              v62 = v33;
              _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v39 = v33;
            [v33 UTF8String];
            _bs_set_crash_log_message();
          }

          _Block_object_dispose(&v43, 8);
        }

        self->_callOutQueue_mutationLocked = 0;
        v28 = [v9 actions];
        if ([v28 count])
        {
          v29 = [v28 fbs_singleLineDescriptionOfBSActions];
          v30 = FBLogSceneClient();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [(FBSScene *)self identity];
            *buf = 138543618;
            v52 = v31;
            v53 = 2114;
            v54 = v29;
            _os_log_impl(&dword_1A2DBB000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) in update: %{public}@", buf, 0x16u);
          }
        }

        [(FBSSceneUpdater *)v11 scene:self didUpdateClientSettings:v7 withDiff:v16 transitionContext:v9];
      }
    }

    callout_sceneUpdate = self->_callout_sceneUpdate;
    self->_callout_sceneUpdate = 0;
  }
}

void __24__FBSScene__sendUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 8) assertBarrierOnQueue];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __24__FBSScene__sendUpdate___block_invoke_2;
    v5[3] = &unk_1E76BD318;
    v6 = v3;
    [v4 performAsync:v5];
  }
}

void __24__FBSScene__sendUpdate___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

+ (id)pseudoSceneWithIdentifier:(id)a3 specification:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FBSWorkspaceCoupler _sharedInstance];
  v8 = [v7 _workspace];
  v9 = [v8 pseudoSceneWithIdentifier:v6 specification:v5];

  return v9;
}

- (void)updateSettings:(id)a3
{
  v9 = a3;
  v5 = [(FBSScene *)self updater];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSScene updateSettings:a2];
  }

  v6 = [(FBSScene *)self settings];
  v7 = [v6 mutableCopy];

  v8 = [(FBSScene *)self _createTransitionContext];
  v9[2](v9, v7, v8);
  [(FBSScene *)self updater:v5 didUpdateSettings:v7 withDiff:0 transitionContext:v8 completion:&__block_literal_global_1];
}

- (void)invalidate:(id)a3
{
  v6 = a3;
  v4 = [(FBSScene *)self updater];
  if (v4)
  {
    if (v6)
    {
      v5 = [(FBSScene *)self _createTransitionContext];
      v6[2](v6, v5);
    }

    else
    {
      v5 = 0;
    }

    [v4 scene:self invalidateWithTransitionContext:v5];
  }
}

- (void)sendBatchedMessages
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_updater;
  os_unfair_lock_unlock(&self->_lock);
  [(FBSSceneUpdater *)v3 sendBatchedMessages];
}

- (BSAuditToken)hostAuditToken
{
  v2 = [(FBSScene *)self hostHandle];
  v3 = [v2 auditToken];

  return v3;
}

- (id)_initWithUpdater:(id)a3 identityToken:(id)a4 identity:(id)a5 parameters:(id)a6 hostHandle:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v21 = a2;
    v17 = [v12 callOutQueue];
    NSClassFromString(&cfstr_Bsservicequeue.isa);
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {

        v18 = v13;
        NSClassFromString(&cfstr_Fbssceneidenti.isa);
        if (v18)
        {
          if (objc_opt_isKindOfClass())
          {

            v19 = v14;
            NSClassFromString(&cfstr_Fbssceneidenti_0.isa);
            if (v19)
            {
              if (objc_opt_isKindOfClass())
              {

                [v19 identifier];
                objc_claimAutoreleasedReturnValue();
                [v18 identifier];
                objc_claimAutoreleasedReturnValue();
                BSEqualObjects();
              }

              [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
            }

            [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
          }

          [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
        }

        [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
      }

      [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
    }

    [FBSScene _initWithUpdater:v21 identityToken:? identity:? parameters:? hostHandle:?];
  }

  [FBSScene _initWithUpdater:a2 identityToken:? identity:? parameters:? hostHandle:?];
}

- (void)_configureParameters:(id)a3
{
  v12 = a3;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_everActivated)
  {
    [FBSScene _configureParameters:a2];
  }

  v5 = [(FBSScene *)self parameters];
  v12[2](v12, v5);
  os_unfair_lock_lock(&self->_lock);
  v6 = [v5 settings];
  v7 = [v6 copy];
  lock_settings = self->_lock_settings;
  self->_lock_settings = v7;

  v9 = [v5 clientSettings];
  v10 = [v9 _copyClearingProgenitor:0];
  lock_clientSettings = self->_lock_clientSettings;
  self->_lock_clientSettings = v10;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_callOutQueue_didUpdateHostHandle:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_lock_hostHandle, a3);
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(FBSScene *)self _observers];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) scene:self didUpdateHostHandle:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_callOutQueue_didCreateWithTransitionContext:(id)a3 alternativeCreationCallout:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  self->_everActivated = 1;
  v11 = [(FBSScene *)self settings];
  v12 = [FBSSceneSettingsDiff diffFromSettings:0 toSettings:v11];
  v13 = [v8 actions];
  if ([v13 count])
  {
    v14 = FBLogSceneClient();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(FBSScene *)self loggingIdentifier];
      v16 = [v13 fbs_singleLineDescriptionOfBSActions];
      *buf = 138543618;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      _os_log_impl(&dword_1A2DBB000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s) in scene-create: %{public}@", buf, 0x16u);
    }
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke;
  v22[3] = &unk_1E76BD388;
  v22[4] = self;
  v23 = v12;
  v24 = v8;
  v25 = v11;
  v26 = v10;
  v27 = v9;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v8;
  v21 = v12;
  [(FBSScene *)self _callOutQueue_maybeCoalesceClientSettingsUpdates:v22];
}

void __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[2])
  {
    v3 = objc_alloc_init(FBSSceneEvent);
    [(FBSSceneEvent *)v3 setSettingsDiff:*(a1 + 40)];
    [(FBSSceneEvent *)v3 setTransitionContext:*(a1 + 48)];
    [(FBSSceneEvent *)v3 setSource:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 16) _configureWithScene:?];
    }

    v4 = *(a1 + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke_2;
    v23[3] = &unk_1E76BCD60;
    v23[4] = v4;
    v24 = *(a1 + 56);
    [v4 _callOutQueue_ensureCoalesceClientSettingsUpdates:v23];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke_3;
    v21[3] = &unk_1E76BD318;
    v22 = *(a1 + 64);
    [v6 scene:v5 didInitializeWithEvent:v3 completion:v21];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke_4;
    v19[3] = &unk_1E76BCD60;
    v19[4] = v2;
    v20 = *(a1 + 56);
    [v2 _callOutQueue_ensureCoalesceClientSettingsUpdates:v19];
    v7 = *(a1 + 72);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  os_unfair_lock_lock((*(a1 + 32) + 56));
  v8 = [*(a1 + 32) _lock_allComponents];
  os_unfair_lock_unlock((*(a1 + 32) + 56));
  if ([v8 count])
  {
    v9 = objc_opt_new();
    objc_storeStrong(v9 + 1, *(a1 + 56));
    objc_storeStrong(v9 + 4, *(a1 + 40));
    objc_storeStrong(v9 + 5, *(a1 + 48));
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14++) scene:*(a1 + 32) didUpdateSettings:{v9, v15}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

uint64_t __95__FBSScene__callOutQueue_didCreateWithTransitionContext_alternativeCreationCallout_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_callOutQueue_willDestroyWithTransitionContext:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (!v6)
  {
    v6 = [(FBSScene *)self _createTransitionContext];
  }

  v8 = [(FBSScene *)self _observers];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v19 + 1) + 8 * i) sceneWillInvalidate:self];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (self->_callOutQueue_agent)
  {
    v13 = objc_alloc_init(FBSSceneEvent);
    [(FBSSceneEvent *)v13 setTransitionContext:v6];
    [(FBSSceneEvent *)v13 setSource:1];
    callOutQueue_agent = self->_callOutQueue_agent;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__FBSScene__callOutQueue_willDestroyWithTransitionContext_completion___block_invoke;
    v17[3] = &unk_1E76BD318;
    v18 = v7;
    [(FBSSceneClientAgent *)callOutQueue_agent scene:self willInvalidateWithEvent:v13 completion:v17];

    v15 = self->_callOutQueue_agent != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __70__FBSScene__callOutQueue_willDestroyWithTransitionContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_callOutQueue_maybeCoalesceClientSettingsUpdates:(id)a3
{
  v5 = a3;
  if (self->_callout_coalesceUpdates)
  {
    [FBSScene _callOutQueue_maybeCoalesceClientSettingsUpdates:a2];
  }

  v8 = v5;
  v6 = [(FBSScene *)self specification];
  v7 = [v6 disablesClientBatching];

  if (v7)
  {
    v8[2]();
  }

  else
  {
    self->_callout_coalesceUpdates = 1;
    v8[2]();
    self->_callout_coalesceUpdates = 0;
    [(FBSScene *)self _sendUpdate:self->_callout_sceneUpdate];
  }
}

- (void)_callOutQueue_ensureCoalesceClientSettingsUpdates:(id)a3
{
  if (self->_callout_coalesceUpdates)
  {
    v4 = *(a3 + 2);

    v4(a3);
  }

  else
  {
    self->_callout_coalesceUpdates = 1;
    (*(a3 + 2))(a3, a2);
    self->_callout_coalesceUpdates = 0;
    callout_sceneUpdate = self->_callout_sceneUpdate;

    [(FBSScene *)self _sendUpdate:callout_sceneUpdate];
  }
}

- (void)_callOutQueue_updateExtensionsFromSettings:(id)a3 toSettings:(id)a4 withDiff:(id)a5
{
  v123 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!self->_callout_coalesceUpdates)
  {
    [FBSScene _callOutQueue_updateExtensionsFromSettings:a2 toSettings:? withDiff:?];
  }

  if (self->_callOutQueue_mutationLocked)
  {
    [FBSScene _callOutQueue_updateExtensionsFromSettings:a2 toSettings:? withDiff:?];
  }

  v70 = v10;
  v71 = v9;
  v69 = v11;
  if (v9 && ![(FBSSettingsDiff *)v11 _containsKey:?])
  {
    v73 = 0;
    v16 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v12 = [v9 _allSceneExtensions];
    v13 = [v10 _allSceneExtensions];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v108 objects:v122 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v109;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v109 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v108 + 1) + 8 * i);
          if (([v12 containsObject:v19] & 1) == 0)
          {
            FBSRealizeSceneExtension(v19);
            if (!v16)
            {
              v16 = [MEMORY[0x1E695DF70] array];
            }

            [v16 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v108 objects:v122 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v20 = v12;
    v21 = [v20 countByEnumeratingWithState:&v104 objects:v121 count:16];
    if (v21)
    {
      v22 = v21;
      v73 = 0;
      v23 = *v105;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v105 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v104 + 1) + 8 * j);
          if (([v13 containsObject:v25] & 1) == 0)
          {
            v26 = v73;
            if (!v73)
            {
              v26 = [MEMORY[0x1E695DF70] array];
            }

            v73 = v26;
            [v26 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v104 objects:v121 count:16];
      }

      while (v22);
    }

    else
    {
      v73 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v16;
  v82 = self;
  v75 = [obj countByEnumeratingWithState:&v100 objects:v120 count:16];
  if (v75)
  {
    v74 = *v101;
    do
    {
      v27 = 0;
      do
      {
        if (*v101 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v77 = v27;
        v28 = *(*(&v100 + 1) + 8 * v27);
        v29 = FBLogSceneClient();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v53 = [(FBSScene *)self loggingIdentifier];
          *buf = 138412546;
          v117 = v53;
          v118 = 2112;
          v119 = v28;
          _os_log_debug_impl(&dword_1A2DBB000, v29, OS_LOG_TYPE_DEBUG, "[%@] Adding extension: %@", buf, 0x16u);
        }

        v30 = [[FBSComponentScene alloc] initWithScene:self extension:v28];
        v83 = [MEMORY[0x1E695DF70] array];
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v31 = v28;
        v32 = [v28 clientComponents];
        v33 = [v32 countByEnumeratingWithState:&v96 objects:v115 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v97;
          v80 = v30;
          do
          {
            for (k = 0; k != v34; ++k)
            {
              if (*v97 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = objc_alloc(*(*(&v96 + 1) + 8 * k));
              if (objc_opt_respondsToSelector())
              {
                v38 = [v37 initWithScene:v30];
              }

              else
              {
                v38 = [v37 init];
              }

              v39 = v38;
              if (v38)
              {
                v40 = FBLogSceneClient();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  v42 = [(FBSScene *)v82 loggingIdentifier];
                  v43 = [off_1E76BC9B0 succinctDescriptionForObject:v39];
                  *buf = 138412546;
                  v117 = v42;
                  v118 = 2112;
                  v119 = v43;
                  _os_log_debug_impl(&dword_1A2DBB000, v40, OS_LOG_TYPE_DEBUG, "[%@] Instantiated component: %@", buf, 0x16u);

                  v30 = v80;
                }

                v41 = [[FBSSceneObserver alloc] initWithComponent:v39 extension:v31];
                [v83 addObject:v41];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v96 objects:v115 count:16];
          }

          while (v34);
        }

        self = v82;
        if ([v83 count])
        {
          os_unfair_lock_lock(&v82->_lock);
          lock_components = v82->_lock_components;
          if (!lock_components)
          {
            v45 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
            v46 = v82->_lock_components;
            v82->_lock_components = v45;

            lock_components = v82->_lock_components;
          }

          [(NSMapTable *)lock_components setObject:v83 forKey:v31, v69];
          os_unfair_lock_unlock(&v82->_lock);
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v47 = v83;
          v48 = [v47 countByEnumeratingWithState:&v92 objects:v114 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v93;
            do
            {
              for (m = 0; m != v49; ++m)
              {
                if (*v93 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = [*(*(&v92 + 1) + 8 * m) component];
                if (objc_opt_respondsToSelector())
                {
                  [v52 setScene:v30];
                }
              }

              v49 = [v47 countByEnumeratingWithState:&v92 objects:v114 count:16];
            }

            while (v49);
          }
        }

        v27 = v77 + 1;
      }

      while ((v77 + 1) != v75);
      v75 = [obj countByEnumeratingWithState:&v100 objects:v120 count:16];
    }

    while (v75);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v76 = v73;
  v79 = [v76 countByEnumeratingWithState:&v88 objects:v113 count:16];
  if (v79)
  {
    v78 = *v89;
    do
    {
      v54 = 0;
      do
      {
        if (*v89 != v78)
        {
          objc_enumerationMutation(v76);
        }

        v55 = *(*(&v88 + 1) + 8 * v54);
        v56 = FBLogSceneClient();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v68 = [(FBSScene *)self loggingIdentifier];
          *buf = 138412546;
          v117 = v68;
          v118 = 2112;
          v119 = v55;
          _os_log_debug_impl(&dword_1A2DBB000, v56, OS_LOG_TYPE_DEBUG, "[%@] Removing extension: %@", buf, 0x16u);
        }

        v81 = v54;

        os_unfair_lock_lock(&self->_lock);
        v57 = [(NSMapTable *)self->_lock_components objectForKey:v55];
        [(NSMapTable *)self->_lock_components removeObjectForKey:v55];
        if (![(NSMapTable *)self->_lock_components count])
        {
          v58 = self->_lock_components;
          self->_lock_components = 0;
        }

        os_unfair_lock_unlock(&self->_lock);
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v59 = v57;
        v60 = [v59 countByEnumeratingWithState:&v84 objects:v112 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = *v85;
          do
          {
            for (n = 0; n != v61; ++n)
            {
              if (*v85 != v62)
              {
                objc_enumerationMutation(v59);
              }

              v64 = [*(*(&v84 + 1) + 8 * n) component];
              [v64 invalidate];
              v65 = FBLogSceneClient();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                v66 = [(FBSScene *)v82 loggingIdentifier];
                v67 = [off_1E76BC9B0 succinctDescriptionForObject:v64];
                *buf = 138412546;
                v117 = v66;
                v118 = 2112;
                v119 = v67;
                _os_log_debug_impl(&dword_1A2DBB000, v65, OS_LOG_TYPE_DEBUG, "[%@] Invalidated component: %@", buf, 0x16u);
              }
            }

            v61 = [v59 countByEnumeratingWithState:&v84 objects:v112 count:16];
          }

          while (v61);
        }

        self = v82;
        v54 = v81 + 1;
      }

      while (v81 + 1 != v79);
      v79 = [v76 countByEnumeratingWithState:&v88 objects:v113 count:16];
    }

    while (v79);
  }
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if ([v5 isProxy])
  {
    v6 = [v5 forwardingTargetForSelector:a2];

    v5 = v6;
  }

  v9.receiver = self;
  v9.super_class = FBSScene;
  v7 = [(FBSScene *)&v9 isEqual:v5];

  return v7;
}

- (id)succinctDescription
{
  v2 = [(FBSScene *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_identity withName:0];
  v5 = [(FBSScene *)self updater];
  v6 = [v3 appendBool:v5 != 0 withName:@"valid"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSScene *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSScene *)self succinctDescriptionBuilder];
  os_unfair_lock_lock(&self->_lock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__FBSScene_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  os_unfair_lock_unlock(&self->_lock);
  v7 = v6;

  return v6;
}

void __50__FBSScene_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"settings" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"clientSettings" skipIfNil:1];
  v4 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 144) hostProcess];
  v5 = [v4 appendObject:v6 withName:@"hostProcess"];
}

- (void)updater:(id)a3 didUpdateSettings:(id)a4 withDiff:(id)a5 transitionContext:(id)a6 completion:(id)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  os_unfair_lock_lock(&self->_lock);
  v15 = self->_lock_settings;
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  if (!v11 && v12)
  {
    v11 = [v12 settingsByApplyingToMutableCopyOfSettings:self->_lock_settings];
LABEL_4:
    v17 = [v11 copy];
    lock_settings = self->_lock_settings;
    self->_lock_settings = v17;

    goto LABEL_5;
  }

  if (v11 && !v12)
  {
    BSEqualObjects();
  }

  if (v11 | v12)
  {
    goto LABEL_4;
  }

  v12 = 0;
LABEL_5:
  v38 = self->_lock_settings;
  os_unfair_lock_unlock(&self->_lock);
  v19 = [v13 animationFence];
  v20 = [v19 copy];
  calloutQueue_animationFence = self->_calloutQueue_animationFence;
  self->_calloutQueue_animationFence = v20;

  v22 = self->_callOutQueue_agent;
  v23 = objc_opt_class();
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke;
  v48[3] = &unk_1E76BD3B0;
  v49 = v14;
  v50 = v23;
  v48[4] = self;
  v39 = v14;
  v24 = [off_1E76BC9A0 sentinelWithSignalCount:2 signalHandler:v48];
  v25 = [v13 actions];
  if ([v25 count])
  {
    v26 = FBLogSceneClient();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      [(FBSScene *)self loggingIdentifier];
      v27 = v37 = v15;
      v28 = [v25 fbs_singleLineDescriptionOfBSActions];
      *buf = 138543618;
      v52 = v27;
      v53 = 2114;
      v54 = v28;
      _os_log_impl(&dword_1A2DBB000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s) in scene-update: %{public}@", buf, 0x16u);

      v15 = v37;
    }
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_129;
  v40[3] = &unk_1E76BD450;
  v40[4] = self;
  v41 = v15;
  v42 = v38;
  v43 = v12;
  v44 = v13;
  v45 = v22;
  v46 = v24;
  v47 = WeakRetained;
  v29 = WeakRetained;
  v30 = v24;
  v31 = v22;
  v32 = v13;
  v33 = v12;
  v34 = v38;
  v35 = v15;
  [(FBSScene *)self _callOutQueue_maybeCoalesceClientSettingsUpdates:v40];
  [v30 signal];
  [(BKSAnimationFenceHandle *)self->_calloutQueue_animationFence invalidate];
  v36 = self->_calloutQueue_animationFence;
  self->_calloutQueue_animationFence = 0;
}

void __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isComplete])
  {
    if ([v3 isFailed])
    {
      v4 = FBLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_cold_1(a1);
      }
    }

    v5 = *(a1 + 40);
    if ([v3 isFailed])
    {
      (*(v5 + 16))(v5, 0);
    }

    else
    {
      v6 = objc_opt_new();
      (*(v5 + 16))(v5, v6);
    }
  }
}

void __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_129(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[116] == 1)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_2;
    v24[3] = &unk_1E76BD3D8;
    v24[4] = v2;
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    [v2 _callOutQueue_ensureCoalesceClientSettingsUpdates:v24];

    v2 = *(a1 + 32);
  }

  if (v2[113] == 1)
  {
    v3 = objc_alloc_init(FBSSceneEvent);
    [(FBSSceneEvent *)v3 setSettingsDiff:*(a1 + 56)];
    [(FBSSceneEvent *)v3 setTransitionContext:*(a1 + 64)];
    [(FBSSceneEvent *)v3 setSource:1];
    v4 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_3;
    v22[3] = &unk_1E76BD400;
    v5 = *(a1 + 72);
    v23 = *(a1 + 80);
    [v5 scene:v4 handleEvent:v3 withCompletion:v22];
  }

  else
  {
    v6 = *(a1 + 88);
    if (v6)
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_4;
      v20[3] = &unk_1E76BD428;
      v21 = *(a1 + 80);
      [v6 scene:v2 didUpdateWithDiff:v7 transitionContext:v8 completion:v20];
    }

    else
    {
      [*(a1 + 80) signal];
    }
  }

  v9 = [*(a1 + 32) _observers];
  if ([v9 count])
  {
    v10 = objc_opt_new();
    objc_storeStrong(v10 + 1, *(a1 + 48));
    objc_storeStrong(v10 + 3, *(a1 + 40));
    objc_storeStrong(v10 + 4, *(a1 + 56));
    objc_storeStrong(v10 + 5, *(a1 + 64));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) scene:*(a1 + 32) didUpdateSettings:{v10, v16}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v28 count:16];
      }

      while (v13);
    }
  }
}

- (void)updater:(id)a3 didReceiveActions:(id)a4 forExtension:(Class)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a4;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (a5 && ![(FBSScene *)self conformsToExtension:a5])
  {
    v17 = FBLogSceneClient();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FBSScene updater:a5 didReceiveActions:? forExtension:?];
    }
  }

  else
  {
    v8 = [v7 bs_map:&__block_literal_global_133];
    v9 = [v8 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];

    v11 = FBLogSceneClient();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    v54 = a5;
    v51 = v10;
    if (a5)
    {
      if (v12)
      {
        v13 = [(FBSScene *)self loggingIdentifier];
        v14 = NSStringFromClass(a5);
        *buf = 138543874;
        v69 = v13;
        v70 = 2114;
        v71 = v14;
        v72 = 2114;
        v73 = v10;
        _os_log_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s) for %{public}@: %{public}@", buf, 0x20u);

        a5 = v54;
      }

      p_lock = &self->_lock;
      os_unfair_lock_lock(&self->_lock);
      v16 = [(NSMapTable *)self->_lock_components objectForKey:a5];
      WeakRetained = 0;
      v53 = 0;
    }

    else
    {
      if (v12)
      {
        v18 = [(FBSScene *)self loggingIdentifier];
        *buf = 138543618;
        v69 = v18;
        v70 = 2114;
        v71 = v10;
        _os_log_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s): %{public}@", buf, 0x16u);
      }

      p_lock = &self->_lock;
      os_unfair_lock_lock(&self->_lock);
      WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
      v53 = [(NSMutableArray *)self->_lock_sceneObservers copy];
      v16 = [(FBSScene *)self _lock_allComponents];
    }

    os_unfair_lock_unlock(p_lock);
    v50 = v7;
    v19 = [v7 mutableCopy];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v16;
    v20 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    v56 = self;
    if (v20)
    {
      v21 = v20;
      v22 = *v63;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v63 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v62 + 1) + 8 * i);
          if (a5)
          {
            [v24 scene:self handlePrivateActions:v19];
          }

          else
          {
            [v24 scene:self handleActions:v19];
          }
          v25 = ;
          if ([v25 count])
          {
            v26 = FBLogCommon();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [(FBSScene *)self loggingIdentifier];
              v28 = [v24 component];
              v29 = [off_1E76BC9B0 succinctDescriptionForObject:v28];
              v30 = [v25 bs_reduce:&stru_1F1595B30 block:&__block_literal_global_143];
              *buf = 138543874;
              v69 = v27;
              v70 = 2114;
              v71 = v29;
              v72 = 2112;
              v73 = v30;
              _os_log_impl(&dword_1A2DBB000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Component %{public}@ handled action(s): %@", buf, 0x20u);

              self = v56;
              a5 = v54;
            }

            [v19 minusSet:v25];
            if (![v19 count])
            {

              goto LABEL_28;
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    if ([v19 count])
    {
      if (a5)
      {
        v31 = FBLogSceneClient();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v46 = [(FBSScene *)self loggingIdentifier];
          v47 = NSStringFromClass(a5);
          v48 = [v19 bs_map:&__block_literal_global_149];
          *buf = 138543874;
          v69 = v46;
          v70 = 2114;
          v71 = v47;
          v72 = 2114;
          v73 = v48;
          _os_log_error_impl(&dword_1A2DBB000, v31, OS_LOG_TYPE_ERROR, "[%{public}@] Extension %{public}@ did not handle actions: %{public}@", buf, 0x20u);
        }
      }

      v32 = [v19 copy];

      v49 = v32;
      if (self->_hasAgent)
      {
        v33 = [(FBSScene *)self _createTransitionContext];
        [v33 setActions:v32];
        v34 = objc_alloc_init(FBSSceneEvent);
        [(FBSSceneEvent *)v34 setTransitionContext:v33];
        [(FBSSceneEvent *)v34 setSource:1];
        [(FBSSceneClientAgent *)self->_callOutQueue_agent scene:self handleEvent:v34 withCompletion:0];
      }

      else
      {
        [WeakRetained scene:self didReceiveActions:v32];
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v55 = v53;
      v35 = [v55 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v59;
        while (2)
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v59 != v37)
            {
              objc_enumerationMutation(v55);
            }

            v39 = *(*(&v58 + 1) + 8 * j);
            v40 = [v39 scene:self handleActions:v19];
            if ([v40 count])
            {
              v41 = FBLogCommon();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = [(FBSScene *)self loggingIdentifier];
                v43 = [v39 observer];
                v44 = [off_1E76BC9B0 succinctDescriptionForObject:v43];
                v45 = [v40 bs_reduce:&stru_1F1595B30 block:&__block_literal_global_152];
                *buf = 138543874;
                v69 = v42;
                v70 = 2114;
                v71 = v44;
                v72 = 2112;
                v73 = v45;
                _os_log_impl(&dword_1A2DBB000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observer %{public}@ handled action(s): %@", buf, 0x20u);

                self = v56;
              }

              [v19 minusSet:v40];
              if (![v19 count])
              {

                goto LABEL_50;
              }
            }
          }

          v36 = [v55 countByEnumeratingWithState:&v58 objects:v66 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }
      }

LABEL_50:

      v7 = v49;
    }

    else
    {
      v7 = v50;
    }

    v17 = v51;
  }
}

NSString *__51__FBSScene_updater_didReceiveActions_forExtension___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

id __51__FBSScene_updater_didReceiveActions_forExtension___block_invoke_140(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [off_1E76BC9B0 succinctDescriptionForObject:a3];
  if ([v4 length])
  {
    v6 = [v4 stringByAppendingFormat:@", %@", v5];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

id __51__FBSScene_updater_didReceiveActions_forExtension___block_invoke_150(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [off_1E76BC9B0 succinctDescriptionForObject:a3];
  if ([v4 length])
  {
    v6 = [v4 stringByAppendingFormat:@", %@", v5];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (void)updater:(id)a3 didReceiveMessage:(id)a4 withResponse:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_hasAgent && (v9 = MEMORY[0x1A58E80F0](self->_callOutQueue_agentMessageHandler)) != 0)
  {
    v10 = v9;
    if (v8)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__FBSScene_updater_didReceiveMessage_withResponse___block_invoke;
      v11[3] = &unk_1E76BD4B8;
      v11[4] = self;
      v12 = v8;
      (v10)[2](v10, v7, v11);
    }

    else
    {
      (*(v9 + 16))(v9, v7, 0);
    }
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

void __51__FBSScene_updater_didReceiveMessage_withResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  [v3 assertBarrierOnQueue];
  (*(*(a1 + 40) + 16))();
}

- (id)hostProcess
{
  v2 = [(FBSScene *)self updater];
  v3 = [v2 hostProcess];

  return v3;
}

- (id)openSessionWithName:(id)a3 executionPolicy:(id)a4
{
  callOutQueue = self->_callOutQueue;
  v7 = a4;
  v8 = a3;
  [(BSServiceQueue *)callOutQueue assertBarrierOnQueue];
  v9 = [[FBSSceneActivitySession alloc] initWithName:v8 scene:self executionPolicy:v7];

  if (v9)
  {
    [(NSMutableArray *)self->_callOutQueue_agentSessions addObject:v9];
  }

  [(FBSSceneActivitySession *)v9 open];

  return v9;
}

- (void)closeSession:(id)a3
{
  v4 = a3;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (v4 && [(NSMutableArray *)self->_callOutQueue_agentSessions containsObject:v4])
  {
    [v4 close];
    [v4 invalidate];
    [(NSMutableArray *)self->_callOutQueue_agentSessions removeObject:v4];
  }
}

- (void)agent:(id)a3 registerMessageHandler:(id)a4
{
  v10 = a3;
  v7 = a4;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (!v10 || self->_callOutQueue_agent != v10)
  {
    [FBSScene agent:a2 registerMessageHandler:?];
  }

  if (self->_callOutQueue_agentMessageHandler != v7)
  {
    v8 = [v7 copy];
    callOutQueue_agentMessageHandler = self->_callOutQueue_agentMessageHandler;
    self->_callOutQueue_agentMessageHandler = v8;
  }
}

- (void)agent:(id)a3 sendMessage:(id)a4 withResponse:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (self->_callOutQueue_agent != v9)
  {
    [FBSScene agent:a2 sendMessage:? withResponse:?];
  }

  v12 = v10;
  NSClassFromString(&cfstr_Fbsscenemessag.isa);
  if (!v12)
  {
    [FBSScene agent:a2 sendMessage:? withResponse:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSScene agent:a2 sendMessage:? withResponse:?];
  }

  if (v11)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __43__FBSScene_agent_sendMessage_withResponse___block_invoke;
    v20 = &unk_1E76BD508;
    v21 = self;
    v22 = v11;
    v13 = MEMORY[0x1A58E80F0](&v17);
  }

  else
  {
    v13 = 0;
  }

  v14 = [(FBSScene *)self updater:v17];
  v15 = v14;
  if (v14)
  {
    [v14 scene:self sendMessage:v12 withResponse:v13];
  }

  else if (v13)
  {
    v16 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:2];
    (v13)[2](v13, 0, v16);
  }
}

void __43__FBSScene_agent_sendMessage_withResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__FBSScene_agent_sendMessage_withResponse___block_invoke_2;
  v11[3] = &unk_1E76BD4E0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 performAsync:v11];
}

- (BOOL)snapshotRequestAllowSnapshot:(id)a3
{
  v3 = [(FBSScene *)self delegate];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)snapshotRequest:(id)a3 performWithContext:(id)a4
{
  v6 = a4;
  [a3 setDelegate:0];
  v7 = [FBSSceneSnapshotRequestHandle handleForRequestType:1 context:v6];

  [v7 performRequestForScene:self];
  return 1;
}

- (BOOL)conformsToExtension:(Class)a3
{
  v5 = [(FBSScene *)self settings];
  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [(FBSSceneDefinition *)self->_definition specification];
    v7 = FBSGetDefaultExtensions(v6);
    v8 = [v7 containsObject:a3];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v5 _allSceneExtensions];
      v9 = [v10 containsObject:a3];
    }
  }

  else
  {
    v9 = [v5 conformsToExtension:a3];
  }

  return v9;
}

- (void)sendActions:(id)a3 toExtension:(Class)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (!self->_everActivated)
  {
    [FBSScene sendActions:a2 toExtension:?];
  }

  objc_opt_class();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v9)
  {
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [FBSScene sendActions:v12 toExtension:a2];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v9);
  }

  if ([v8 count])
  {
    v13 = [(FBSScene *)self updater];
    if (v13)
    {
      if (self->_callout_coalesceUpdates && self->_callout_sceneUpdate)
      {
        [(FBSScene *)self _sendUpdate:?];
      }

      if (self->_hasAgent)
      {
        v14 = [(FBSScene *)self _createTransitionContext];
        [v14 setActions:v8];
        v15 = objc_alloc_init(FBSSceneEvent);
        [(FBSSceneEvent *)v15 setTransitionContext:v14];
        [(FBSSceneEvent *)v15 setSource:2];
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        callOutQueue_agent = self->_callOutQueue_agent;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __36__FBSScene_sendActions_toExtension___block_invoke;
        v30[3] = &unk_1E76BD340;
        v30[4] = self;
        v30[5] = &v31;
        [(FBSSceneClientAgent *)callOutQueue_agent scene:self reviewEvent:v15 withCompletion:v30];
        if ((v32[3] & 1) == 0)
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"agent callout's completion was not called in scope : event=%@ agent=%@", v15, self->_callOutQueue_agent];
          v24 = MEMORY[0x1E69E9C10];
          v25 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v26 = NSStringFromSelector(a2);
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            *buf = 138544642;
            v40 = v26;
            v41 = 2114;
            v42 = v28;
            v43 = 2048;
            v44 = self;
            v45 = 2114;
            v46 = @"FBSScene.m";
            v47 = 1024;
            v48 = 1256;
            v49 = 2114;
            v50 = v23;
            _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v29 = v23;
          [v23 UTF8String];
          _bs_set_crash_log_message();
        }

        _Block_object_dispose(&v31, 8);
      }

      v17 = [v8 fbs_singleLineDescriptionOfBSActions];
      v18 = FBLogSceneClient();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (a4)
      {
        if (v19)
        {
          v20 = [(FBSScene *)self identity];
          v21 = NSStringFromClass(a4);
          *buf = 138543874;
          v40 = v20;
          v41 = 2114;
          v42 = v21;
          v43 = 2114;
          v44 = v17;
          _os_log_impl(&dword_1A2DBB000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) to %{public}@: %{public}@", buf, 0x20u);
        }
      }

      else if (v19)
      {
        v22 = [(FBSScene *)self identity];
        *buf = 138543618;
        v40 = v22;
        v41 = 2114;
        v42 = v17;
        _os_log_impl(&dword_1A2DBB000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s): %{public}@", buf, 0x16u);
      }

      [v13 scene:self didReceiveActions:v8 forExtension:a4];
    }
  }
}

void __36__FBSScene_sendActions_toExtension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 8) assertBarrierOnQueue];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__FBSScene_sendActions_toExtension___block_invoke_2;
    v5[3] = &unk_1E76BD318;
    v6 = v3;
    [v4 performAsync:v5];
  }
}

void __36__FBSScene_sendActions_toExtension___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] sceneMessageErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)sendInvocation:(id)a3
{
  v7 = a3;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  if (!self->_everActivated)
  {
    [FBSScene sendInvocation:a2];
  }

  v5 = [(FBSScene *)self updater];
  if (v5)
  {
    v6 = v7;
    if (self->_callout_coalesceUpdates && self->_callout_sceneUpdate)
    {
      [(FBSScene *)self _sendUpdate:?];
      v6 = v7;
    }

    [v5 scene:self sendInvocation:v6];
  }

  else
  {
    [v7 cannotResolveForReason:@"Scene is not valid"];
  }
}

- (id)targetForInvocation:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  os_unfair_lock_lock(&self->_lock);
  v5 = -[NSMapTable objectForKey:](self->_lock_components, "objectForKey:", [v4 extension]);
  v6 = [v5 copy];

  os_unfair_lock_unlock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v14 + 1) + 8 * v11) component];
      if ([v4 compatibleWithTarget:v12])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

- (id)componentForExtension:(Class)a3 ofClass:(Class)a4
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMapTable *)self->_lock_components objectForKey:a3];
  v8 = [v7 copy];

  os_unfair_lock_unlock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [*(*(&v18 + 1) + 8 * v13) component];
      if (a4)
      {
        v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  return v16;
}

- (void)activateWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(FBSScene *)self _callOutQueue];
  [v6 assertBarrierOnQueue];

  if ([(FBSScene *)self everActivated])
  {
    [FBSScene(FBSWorkspaceService) activateWithCompletion:a2];
  }

  v7 = [(FBSScene *)self updater];
  v8 = v7;
  if (v7)
  {
    [v7 activateSceneFuture:self completion:v5];
  }

  else if (v5)
  {
    v9 = [(FBSScene *)self _callOutQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__FBSScene_FBSWorkspaceService__activateWithCompletion___block_invoke;
    v10[3] = &unk_1E76BD318;
    v11 = v5;
    [v9 performAsync:v10];
  }
}

void __56__FBSScene_FBSWorkspaceService__activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v10 = FBSWorkspaceErrorCreate(0, 1uLL, @"scene cannot be activated because it was already invalidated", a4, a5, a6, a7, a8, v9);
  (*(v8 + 16))(v8, 0, v10);
}

- (void)updateClientSettings:(void *)a1 withTransitionContext:.cold.1(void *a1)
{
  v6 = [a1 identity];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)addObserver:(char *)a1 withConfiguration:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"observer != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_beginUpdate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot begin a new update while one is ongoing"];
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

- (void)_updateClientSettings:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 loggingIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Ignoring update containing only animation settings.", &v4, 0xCu);
}

- (void)_updateClientSettings:(const char *)a1 .cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v3, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v4, v5, v6, v7, 2u);
}

- (void)_updateClientSettings:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"too many nested updates"];
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

- (void)_sendUpdate:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid scene update"];
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

- (void)updateSettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"it is not appropriate to call -updateSettings: on this scene"];
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

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSServiceQueueClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneIdentityTokenClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"BSEqualObjects([identity identifier], [identityToken identifier])", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSpecificationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithUpdater:(int)a1 identityToken:(Class)aClass identity:parameters:hostHandle:.cold.6(int a1, Class aClass)
{
  v2 = NSStringFromClass(aClass);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_initWithUpdater:(objc_class *)a1 identityToken:(const char *)a2 identity:parameters:hostHandle:.cold.7(objc_class *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = NSStringFromClass(a1);
  v4 = [v3 stringWithFormat:@"agent class %@ failed to allocate"];

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

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.8(char *a1)
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

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.9(char *a1)
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

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.10(char *a1)
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

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.11(char *a1)
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

- (void)_initWithUpdater:(char *)a1 identityToken:identity:parameters:hostHandle:.cold.12(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"updater", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_configureParameters:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot update parameters after activation"];
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

- (void)_callOutQueue_maybeCoalesceClientSettingsUpdates:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_callout_coalesceUpdates", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_callOutQueue_updateExtensionsFromSettings:(char *)a1 toSettings:withDiff:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extensions should only be updated while coalescing"];
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

- (void)_callOutQueue_updateExtensionsFromSettings:(char *)a1 toSettings:withDiff:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_callOutQueue_mutationLocked == NO", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __76__FBSScene_updater_didUpdateSettings_withDiff_transitionContext_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) loggingIdentifier];
  v3 = NSStringFromClass(*(a1 + 48));
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)updater:(void *)a1 didReceiveActions:(objc_class *)a2 forExtension:.cold.1(void *a1, objc_class *a2)
{
  v3 = [a1 loggingIdentifier];
  v4 = NSStringFromClass(a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)agent:(char *)a1 registerMessageHandler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"agent && (agent == _callOutQueue_agent)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)agent:(char *)a1 sendMessage:withResponse:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"agent == _callOutQueue_agent", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)agent:(char *)a1 sendMessage:withResponse:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneMessageClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)agent:(char *)a1 sendMessage:withResponse:.cold.3(char *a1)
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

- (void)sendActions:(char *)a1 toExtension:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send actions until activated"];
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

- (void)sendActions:(uint64_t)a1 toExtension:(char *)a2 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only actions of type BSAction can be sent : tried to send %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v13, v14);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)sendInvocation:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send invocations until activated"];
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

@end