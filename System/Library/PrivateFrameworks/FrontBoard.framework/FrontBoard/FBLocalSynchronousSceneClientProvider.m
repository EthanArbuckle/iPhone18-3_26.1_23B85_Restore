@interface FBLocalSynchronousSceneClientProvider
+ (id)sharedInstance;
- (FBLocalSynchronousSceneClientProvider)init;
- (id)_initWithWorkspaceCoupler:(void *)a3 currentProcess:(void *)a4 eventDispatcher:;
- (id)createSceneFutureWithDefinition:(id)a3;
- (id)fbsSceneForScene:(id)a3;
- (id)fbsSceneWithIdentifier:(id)a3;
- (id)registerHost:(id)a3 settings:(id)a4 initialClientSettings:(id)a5 fromRemnant:(id)a6 error:(id *)a7;
- (id)sceneWithIdentity:(id)a3;
- (id)scenes;
- (void)_invalidate;
- (void)_invalidateSceneInfo:(void *)a3 transitionContext:;
- (void)_sendSceneCreateFBSWorkspaceDelegateForSceneInfo:(void *)a1;
- (void)_sendToHost:(void *)a3 updatedClientSettings:(void *)a4 withDiff:(void *)a5 transitionContext:;
- (void)_sendToSceneWithInfo:(void *)a3 updatedSettings:(void *)a4 withDiff:(void *)a5 transitionContext:(void *)a6 completion:;
- (void)activateSceneFuture:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)host:(id)a3 didInvalidateWithTransitionContext:(id)a4 completion:(id)a5;
- (void)host:(id)a3 didReceiveActions:(id)a4 forExtension:(Class)a5;
- (void)host:(id)a3 didUpdateSettings:(id)a4 withDiff:(id)a5 transitionContext:(id)a6 completion:(id)a7;
- (void)host:(id)a3 sendInvocation:(id)a4 withReply:(id)a5;
- (void)requestSceneWithOptions:(id)a3 completion:(id)a4;
- (void)scene:(id)a3 didReceiveActions:(id)a4 forExtension:(Class)a5;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4 withDiff:(id)a5 transitionContext:(id)a6;
- (void)scene:(id)a3 invalidateWithTransitionContext:(id)a4;
- (void)scene:(id)a3 sendInvocation:(id)a4;
- (void)scene:(id)a3 sendMessage:(id)a4 withResponse:(id)a5;
- (void)sendActions:(id)a3 toWorkspaceID:(id)a4 completion:(id)a5;
- (void)unregisterHost:(id)a3;
@end

@implementation FBLocalSynchronousSceneClientProvider

- (FBLocalSynchronousSceneClientProvider)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[FBLocalSynchronousSceneClientProvider init] is unavailable."];
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
    v14 = self;
    v15 = 2114;
    v16 = @"FBLocalSynchronousSceneClientProvider.m";
    v17 = 1024;
    v18 = 73;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithWorkspaceCoupler:(void *)a3 currentProcess:(void *)a4 eventDispatcher:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v11 = v8;
    if (!v11)
    {
      [FBLocalSynchronousSceneClientProvider _initWithWorkspaceCoupler:? currentProcess:? eventDispatcher:?];
    }

    v12 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBLocalSynchronousSceneClientProvider _initWithWorkspaceCoupler:v12 currentProcess:sel__initWithWorkspaceCoupler_currentProcess_eventDispatcher_ eventDispatcher:?];
    }

    if (!v9)
    {
      [FBLocalSynchronousSceneClientProvider _initWithWorkspaceCoupler:? currentProcess:? eventDispatcher:?];
    }

    v13 = v10;
    if (!v13)
    {
      [FBLocalSynchronousSceneClientProvider _initWithWorkspaceCoupler:? currentProcess:? eventDispatcher:?];
    }

    v14 = v13;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBLocalSynchronousSceneClientProvider _initWithWorkspaceCoupler:v14 currentProcess:sel__initWithWorkspaceCoupler_currentProcess_eventDispatcher_ eventDispatcher:?];
    }

    v28.receiver = a1;
    v28.super_class = FBLocalSynchronousSceneClientProvider;
    a1 = objc_msgSendSuper2(&v28, sel_init);
    if (a1)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = a1[1];
      a1[1] = v15;

      v17 = [MEMORY[0x1E695DF90] dictionary];
      v18 = a1[2];
      a1[2] = v17;

      v19 = [MEMORY[0x1E695DF90] dictionary];
      v20 = a1[3];
      a1[3] = v19;

      v21 = [MEMORY[0x1E695DFA8] set];
      v22 = a1[4];
      a1[4] = v21;

      objc_storeStrong(a1 + 5, a3);
      objc_storeStrong(a1 + 6, a2);
      v23 = a1[7];
      a1[7] = 0;

      objc_storeStrong(a1 + 8, a4);
      v24 = a1[6];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __98__FBLocalSynchronousSceneClientProvider__initWithWorkspaceCoupler_currentProcess_eventDispatcher___block_invoke;
      v26[3] = &unk_1E783BE68;
      a1 = a1;
      v27 = a1;
      [v24 _enqueueClientConnectionBlock:v26];
    }
  }

  return a1;
}

void __98__FBLocalSynchronousSceneClientProvider__initWithWorkspaceCoupler_currentProcess_eventDispatcher___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  BSDispatchMain();
}

void __98__FBLocalSynchronousSceneClientProvider__initWithWorkspaceCoupler_currentProcess_eventDispatcher___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) callOutQueue];
  [v2 assertBarrierOnQueue];

  v3 = *(*(a1 + 32) + 88);
  if (*(a1 + 40))
  {
    if ((*(*(a1 + 32) + 88) & 1) == 0)
    {
      v4 = FBLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "LocalSynchronousSceneClientProvider received workspace creation.", buf, 2u);
      }

      objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
      [*(*(a1 + 32) + 56) _registerSource:?];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [*(*(a1 + 32) + 8) copy];
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v15 + 1) + 8 * v9);
            v11 = FBLogCommon();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              __98__FBLocalSynchronousSceneClientProvider__initWithWorkspaceCoupler_currentProcess_eventDispatcher___block_invoke_2_cold_1(buf, v10, &v20, v11);
            }

            [(FBLocalSynchronousSceneClientProvider *)*(a1 + 32) _sendSceneCreateFBSWorkspaceDelegateForSceneInfo:v10];
            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v7);
      }

      [*(*(a1 + 32) + 8) removeAllObjects];
      v12 = *(a1 + 32);
      v13 = *(v12 + 8);
      *(v12 + 8) = 0;
LABEL_18:
    }
  }

  else if ((*(*(a1 + 32) + 88) & 1) == 0)
  {
    v13 = FBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "LocalSynchronousSceneClientProvider failed to receive workspace creation.", buf, 2u);
    }

    goto LABEL_18;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_sendSceneCreateFBSWorkspaceDelegateForSceneInfo:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 callOutQueue];
    [v4 assertBarrierOnQueue];

    if (v3)
    {
      if (v3[9])
      {
        goto LABEL_4;
      }

      v3[9] = 1;
      v5 = *(v3 + 2);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = a1[7];
    if (!v7)
    {
      [FBLocalSynchronousSceneClientProvider _sendSceneCreateFBSWorkspaceDelegateForSceneInfo:];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__FBLocalSynchronousSceneClientProvider__sendSceneCreateFBSWorkspaceDelegateForSceneInfo___block_invoke;
    v9[3] = &unk_1E783B240;
    v9[4] = a1;
    v8 = v3;
    v10 = v8;
    [v7 _calloutQueue_executeCalloutFromSource:a1 withBlock:v9];
    [(_FBLocalSceneInfo *)v8 setPendingTransitionContext:?];
  }

LABEL_4:
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_invalidate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this instance may not invalidate"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)fbsSceneForScene:(id)a3
{
  v4 = [a3 identity];
  v5 = [(FBLocalSynchronousSceneClientProvider *)self sceneWithIdentity:v4];

  return v5;
}

- (id)fbsSceneWithIdentifier:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity allKeys];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v14 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:v10];
          v15 = v14;
          if (v14)
          {
            v16 = *(v14 + 16);
          }

          else
          {
            v16 = 0;
          }

          v13 = v16;

          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)registerHost:(id)a3 settings:(id)a4 initialClientSettings:(id)a5 fromRemnant:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v16 assertBarrierOnQueue];

  if (v15)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v17 = [v12 identityToken];
  NSClassFromString(&cfstr_Fbssceneidenti_0.isa);
  if (!v17)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v63 = v12;
  v18 = [v12 definition];
  v19 = [v18 identity];

  v20 = v19;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!v20)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v21 = [v63 specification];
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!v21)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v22 = v13;
  NSClassFromString(&cfstr_Fbsscenesettin.isa);
  if (!v22)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  [v21 settingsClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v23 = v14;
  NSClassFromString(&cfstr_Fbssceneclient_0.isa);
  if (!v23)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  [v21 clientSettingsClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v24 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:v20];

  if (v24)
  {
    v53 = MEMORY[0x1E696AEC0];
    v54 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:v20];
    v55 = [v53 stringWithFormat:@"trying to register a local host for an already known identifier : %@ -> previous=%@", v20, v54];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBLocalSynchronousSceneClientProvider registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

LABEL_82:
    [v55 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A27BB8);
  }

  v62 = v17;
  v25 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:v20];
  if (!v25)
  {
    v30 = [MEMORY[0x1E699FB58] parametersForSpecification:v21];
    [v30 setSettings:v22];
    [v30 setClientSettings:v23];
    v31 = v22;
    v32 = v21;
    v33 = objc_alloc(MEMORY[0x1E699FBC8]);
    v34 = [MEMORY[0x1E699FC08] localHandle];
    v35 = v62;
    v27 = [v33 _initWithUpdater:self identityToken:v62 identity:v20 parameters:v30 hostHandle:v34];

    v26 = [[_FBLocalSceneInfo alloc] initWithScene:v27];
    [(NSMutableDictionary *)self->_localSceneInfoByIdentity setObject:v26 forKey:v20];
    v28 = v63;
    [(NSMutableDictionary *)self->_hostsByIdentity setObject:v63 forKey:v20];

    goto LABEL_49;
  }

  v26 = v25;
  v60 = a2;
  v27 = *(v25 + 16);
  if (([(NSMutableSet *)self->_pendingScenes containsObject:v27]& 1) == 0)
  {
    v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already registered scene for %@ is not in the pending set: %@", v20, v27];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBLocalSynchronousSceneClientProvider registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    [v56 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A27C14);
  }

  [(NSMutableSet *)self->_pendingScenes removeObject:v27];
  if ((*(v26 + 9) & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:v27 settings:v60 initialClientSettings:? fromRemnant:? error:?];
  }

  v61 = v21;
  v28 = v63;
  [(NSMutableDictionary *)self->_hostsByIdentity setObject:v63 forKey:v20];
  clientFutureHostsBeingSynchronized = self->_clientFutureHostsBeingSynchronized;
  if (clientFutureHostsBeingSynchronized)
  {
    if ([(NSMutableSet *)clientFutureHostsBeingSynchronized containsObject:v63])
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"somehow already initializing this host? host=%@ : beingInitialized=%@", v63, self->_clientFutureHostsBeingSynchronized];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBLocalSynchronousSceneClientProvider registerHost:settings:initialClientSettings:fromRemnant:error:];
      }

      [v59 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A27D44);
    }

    [(NSMutableSet *)self->_clientFutureHostsBeingSynchronized addObject:v63];
  }

  else
  {
    v36 = [MEMORY[0x1E695DFA8] setWithObject:v63];
    v37 = self->_clientFutureHostsBeingSynchronized;
    self->_clientFutureHostsBeingSynchronized = v36;
  }

  clientFutureScenesBeingSynchronized = self->_clientFutureScenesBeingSynchronized;
  if (!clientFutureScenesBeingSynchronized)
  {
    v39 = [MEMORY[0x1E695DFA8] setWithObject:v27];
    v40 = self->_clientFutureScenesBeingSynchronized;
    self->_clientFutureScenesBeingSynchronized = v39;

    goto LABEL_28;
  }

  if ([(NSMutableSet *)clientFutureScenesBeingSynchronized containsObject:v27])
  {
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"somehow already initializing this scene? scene=%@ : beingInitialized=%@", v27, self->_clientFutureScenesBeingSynchronized];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBLocalSynchronousSceneClientProvider registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    goto LABEL_82;
  }

  [(NSMutableSet *)self->_clientFutureScenesBeingSynchronized addObject:v27];
LABEL_28:
  v41 = [v27 clientSettings];
  if ((BSEqualObjects() & 1) == 0)
  {
    v42 = [MEMORY[0x1E699FBE8] diffFromSettings:v23 toSettings:v41];
    if (v42)
    {
      v43 = FBLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [FBLocalSynchronousSceneClientProvider registerHost:settings:initialClientSettings:fromRemnant:error:];
      }

      [(FBLocalSynchronousSceneClientProvider *)self _sendToHost:v63 updatedClientSettings:v41 withDiff:v42 transitionContext:0];
    }
  }

  v44 = [v27 settings];
  if ((BSEqualObjects() & 1) == 0)
  {
    v45 = [MEMORY[0x1E699FC30] diffFromSettings:v44 toSettings:v22];
    if (v45)
    {
      v46 = FBLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [FBLocalSynchronousSceneClientProvider registerHost:settings:initialClientSettings:fromRemnant:error:];
      }

      [(FBLocalSynchronousSceneClientProvider *)self _sendToSceneWithInfo:v26 updatedSettings:v22 withDiff:v45 transitionContext:0 completion:0];
      v28 = v63;
    }
  }

  if (([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:v28]& 1) == 0)
  {
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"something bad happened that removed the host prematurely from the initializing set : host=%@ beingInitialized=%@", v28, self->_clientFutureHostsBeingSynchronized];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBLocalSynchronousSceneClientProvider registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    [v57 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A27C84);
  }

  v47 = [(NSMutableSet *)self->_clientFutureHostsBeingSynchronized count];
  v48 = self->_clientFutureHostsBeingSynchronized;
  if (v47 == 1)
  {
    self->_clientFutureHostsBeingSynchronized = 0;
  }

  else
  {
    [(NSMutableSet *)v48 removeObject:v28];
  }

  if (([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:v27]& 1) == 0)
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"something bad happened that removed the scene prematurely from the initializing set : scene=%@ beingInitialized=%@", v27, self->_clientFutureScenesBeingSynchronized];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBLocalSynchronousSceneClientProvider registerHost:settings:initialClientSettings:fromRemnant:error:];
    }

    [v58 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A27CE4);
  }

  v49 = [(NSMutableSet *)self->_clientFutureScenesBeingSynchronized count];
  v50 = self->_clientFutureScenesBeingSynchronized;
  v51 = v22;
  if (v49 == 1)
  {
    self->_clientFutureScenesBeingSynchronized = 0;
  }

  else
  {
    [(NSMutableSet *)v50 removeObject:v27];
  }

  v32 = v61;
  v35 = v62;
  v31 = v51;
LABEL_49:

  return self;
}

- (void)_sendToHost:(void *)a3 updatedClientSettings:(void *)a4 withDiff:(void *)a5 transitionContext:
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = [a1 callOutQueue];
    [v12 assertBarrierOnQueue];

    if (a1[88] == 1)
    {
      [FBLocalSynchronousSceneClientProvider _sendToHost:? updatedClientSettings:? withDiff:? transitionContext:?];
    }

    [v13 clientToken:a1 didUpdateClientSettings:v9 withDiff:v10 transitionContext:v11];
  }
}

- (void)_sendToSceneWithInfo:(void *)a3 updatedSettings:(void *)a4 withDiff:(void *)a5 transitionContext:(void *)a6 completion:
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v16 = [a1 callOutQueue];
    [v16 assertBarrierOnQueue];

    if (a1[88] == 1)
    {
      [FBLocalSynchronousSceneClientProvider _sendToSceneWithInfo:? updatedSettings:? withDiff:? transitionContext:? completion:?];
    }

    if (v11)
    {
      v17 = v11[2];
      if (v11[1])
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __116__FBLocalSynchronousSceneClientProvider__sendToSceneWithInfo_updatedSettings_withDiff_transitionContext_completion___block_invoke_225;
        v27[3] = &unk_1E783CD58;
        v28 = v15;
        [v17 updater:a1 didUpdateSettings:v12 withDiff:v13 transitionContext:v14 completion:v27];

LABEL_10:
        goto LABEL_11;
      }

      *(v11 + 8) = 1;
    }

    else
    {
      v17 = 0;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __116__FBLocalSynchronousSceneClientProvider__sendToSceneWithInfo_updatedSettings_withDiff_transitionContext_completion___block_invoke;
    v29[3] = &unk_1E783BF98;
    v33 = &v34;
    v30 = v11;
    v31 = v14;
    v32 = a1;
    [v17 _callOutQueue_didCreateWithTransitionContext:v31 alternativeCreationCallout:v29 completion:0];
    if ((v35[3] & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"creation callback was not made in scene's didCreate"];
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(sel__sendToSceneWithInfo_updatedSettings_withDiff_transitionContext_completion_);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544642;
        v39 = v22;
        v40 = 2114;
        v41 = v24;
        v42 = 2048;
        v43 = a1;
        v44 = 2114;
        v45 = @"FBLocalSynchronousSceneClientProvider.m";
        v46 = 1024;
        v47 = 550;
        v48 = 2114;
        v49 = v19;
        _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v25 = v19;
      [v19 UTF8String];
      v26 = _bs_set_crash_log_message();
      [FBWorkspaceEventDispatcher registerTarget:v26];
    }

    _Block_object_dispose(&v34, 8);
    if (v15)
    {
      (*(v15 + 2))(v15, 1, 0);
    }

    goto LABEL_10;
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)unregisterHost:(id)a3
{
  v10 = a3;
  v5 = [v10 definition];
  v6 = [v5 identity];

  v7 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v7 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider unregisterHost:a2];
  }

  v8 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:v6];

  if (!v8)
  {
    [(FBLocalSynchronousSceneClientProvider *)v6 unregisterHost:a2];
  }

  v9 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:v6];

  if (v9 != v10)
  {
    [(FBLocalSynchronousSceneClientProvider *)v6 unregisterHost:a2];
  }

  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:v10])
  {
    [(FBLocalSynchronousSceneClientProvider *)v6 unregisterHost:a2];
  }

  [(NSMutableDictionary *)self->_localSceneInfoByIdentity removeObjectForKey:v6];
  [(NSMutableDictionary *)self->_hostsByIdentity removeObjectForKey:v6];
}

- (void)host:(id)a3 didUpdateSettings:(id)a4 withDiff:(id)a5 transitionContext:(id)a6 completion:(id)a7
{
  v24 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v17 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 didUpdateSettings:? withDiff:? transitionContext:? completion:?];
  }

  v18 = [v24 definition];
  v19 = [v18 identity];

  v20 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:v19];
  if (!v20 || (v21 = v20, (v22 = *(v20 + 16)) == 0))
  {
    [FBLocalSynchronousSceneClientProvider host:v19 didUpdateSettings:a2 withDiff:? transitionContext:? completion:?];
  }

  v23 = v22;
  if ([(NSMutableSet *)self->_pendingScenes containsObject:v22])
  {
    [FBLocalSynchronousSceneClientProvider host:v19 didUpdateSettings:a2 withDiff:? transitionContext:? completion:?];
  }

  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:v24])
  {
    [FBLocalSynchronousSceneClientProvider host:v19 didUpdateSettings:a2 withDiff:? transitionContext:? completion:?];
  }

  [(FBLocalSynchronousSceneClientProvider *)self _sendToSceneWithInfo:v21 updatedSettings:v13 withDiff:v14 transitionContext:v15 completion:v16];
}

- (void)host:(id)a3 didInvalidateWithTransitionContext:(id)a4 completion:(id)a5
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v11 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 didInvalidateWithTransitionContext:? completion:?];
  }

  v12 = [v16 definition];
  v13 = [v12 identity];

  v14 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:v13];
  if (!v14)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 didInvalidateWithTransitionContext:? completion:?];
  }

  v15 = v14;
  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:v16])
  {
    [FBLocalSynchronousSceneClientProvider host:v13 didInvalidateWithTransitionContext:a2 completion:?];
  }

  [(FBLocalSynchronousSceneClientProvider *)self _invalidateSceneInfo:v15 transitionContext:v9];
  if (v10)
  {
    v10[2](v10, 1, 0);
  }
}

- (void)host:(id)a3 didReceiveActions:(id)a4 forExtension:(Class)a5
{
  v17 = a3;
  v9 = a4;
  v10 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v10 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 didReceiveActions:? forExtension:?];
  }

  v11 = [v17 definition];
  v12 = [v11 identity];

  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:v17])
  {
    [FBLocalSynchronousSceneClientProvider host:v12 didReceiveActions:a2 forExtension:?];
  }

  v13 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:v12];
  v14 = v13;
  if (v13)
  {
    v15 = *(v13 + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    [v16 updater:self didReceiveActions:v9 forExtension:a5];
  }
}

- (void)host:(id)a3 sendInvocation:(id)a4 withReply:(id)a5
{
  v19 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v11 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 sendInvocation:? withReply:?];
  }

  v12 = [v19 definition];
  v13 = [v12 identity];

  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:v19])
  {
    [FBLocalSynchronousSceneClientProvider host:v13 sendInvocation:a2 withReply:?];
  }

  v14 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:v13];
  v15 = v14;
  if (v14)
  {
    v16 = *(v14 + 16);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    [v9 invokeWithReceiver:v17 replyHandler:v10];
  }

  else if (v10)
  {
    v18 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBLocalSynchronousSceneClientProvider" code:1 configuration:&__block_literal_global_19];
    v10[2](v10, 0, v18);
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4 withDiff:(id)a5 transitionContext:(id)a6
{
  v17 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v14 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider scene:a2 didUpdateClientSettings:? withDiff:? transitionContext:?];
  }

  v15 = [v17 identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:v17])
  {
    [FBLocalSynchronousSceneClientProvider scene:v15 didUpdateClientSettings:a2 withDiff:? transitionContext:?];
  }

  v16 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:v15];
  [(FBLocalSynchronousSceneClientProvider *)self _sendToHost:v16 updatedClientSettings:v11 withDiff:v12 transitionContext:v13];
}

- (void)scene:(id)a3 didReceiveActions:(id)a4 forExtension:(Class)a5
{
  v13 = a3;
  v9 = a4;
  v10 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v10 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider scene:a2 didReceiveActions:? forExtension:?];
  }

  v11 = [v13 identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:v13])
  {
    [FBLocalSynchronousSceneClientProvider scene:v11 didReceiveActions:a2 forExtension:?];
  }

  v12 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:v11];
  [v12 clientToken:self didReceiveActions:v9 forExtension:a5];
}

- (void)scene:(id)a3 sendMessage:(id)a4 withResponse:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v12 identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:v12])
  {
    [FBLocalSynchronousSceneClientProvider scene:v11 sendMessage:a2 withResponse:?];
  }

  if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

- (void)scene:(id)a3 invalidateWithTransitionContext:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v8 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider scene:a2 invalidateWithTransitionContext:?];
  }

  v9 = [v11 identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:v11])
  {
    [FBLocalSynchronousSceneClientProvider scene:v9 invalidateWithTransitionContext:a2];
  }

  v10 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:v9];
  [v10 clientToken:self deactivateWithContext:v7];
}

- (void)scene:(id)a3 sendInvocation:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v8 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider scene:a2 sendInvocation:?];
  }

  v9 = [v12 identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:v12])
  {
    [FBLocalSynchronousSceneClientProvider scene:v9 sendInvocation:a2];
  }

  v10 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:v9];
  v11 = [v7 resolve];
  [v10 clientToken:self handleInvocation:v7 withReply:v11];
}

- (id)scenes
{
  v3 = [MEMORY[0x1E695DFA8] set];
  localSceneInfoByIdentity = self->_localSceneInfoByIdentity;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__FBLocalSynchronousSceneClientProvider_scenes__block_invoke;
  v7[3] = &unk_1E783CC98;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)localSceneInfoByIdentity enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)sendActions:(id)a3 toWorkspaceID:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v12 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider sendActions:a2 toWorkspaceID:? completion:?];
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v14 = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
    v13 = [(FBWorkspaceDomain *)v14 defaultWorkspace];
  }

  v15 = [FBWorkspaceSceneRequest alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__FBLocalSynchronousSceneClientProvider_sendActions_toWorkspaceID_completion___block_invoke;
  v18[3] = &unk_1E783C2D0;
  v19 = v11;
  v16 = v11;
  v17 = [(FBWorkspaceSceneRequest *)v15 initWithTargetIdentifier:v13 actions:v9 completion:v18];
  [(FBWorkspaceEventDispatcher *)self->_eventDispatcher handleLocalSceneRequest:v17];
}

uint64_t __78__FBLocalSynchronousSceneClientProvider_sendActions_toWorkspaceID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0);
  }

  return result;
}

- (id)createSceneFutureWithDefinition:(id)a3
{
  v5 = a3;
  v6 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v6 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider createSceneFutureWithDefinition:a2];
  }

  v7 = [v5 identity];
  v8 = [v7 workspaceIdentifier];

  if (!v8)
  {
    v9 = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
    v10 = [(FBWorkspaceDomain *)v9 defaultWorkspace];

    if (v10)
    {
      v11 = MEMORY[0x1E699FC10];
      v12 = [v7 identifier];
      v13 = [v11 identityForIdentifier:v12 workspaceIdentifier:v10];

      v7 = v13;
    }
  }

  v14 = [v7 workspaceIdentifier];

  if (!v14)
  {
    [(FBLocalSynchronousSceneClientProvider *)v7 createSceneFutureWithDefinition:a2];
  }

  v15 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:v7];

  if (v15)
  {
    [(FBLocalSynchronousSceneClientProvider *)v7 createSceneFutureWithDefinition:a2];
  }

  if ([(FBWorkspaceEventDispatcher *)self->_eventDispatcher canCreateLocalSceneWithIdentity:v7])
  {
    v16 = [v5 parameters];
    [v16 updateSettingsWithBlock:&__block_literal_global_198];
    v17 = MEMORY[0x1E699FC18];
    v18 = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
    v19 = [(FBWorkspaceDomain *)v18 endpointPromise];
    v20 = [(FBWorkspaceEndpointPromise *)v19 endpoint];
    v21 = [v7 workspaceIdentifier];
    v22 = [v7 identifier];
    v23 = [v17 tokenWithHostEndpoint:v20 workspace:v21 identifier:v22];

    v24 = objc_alloc(MEMORY[0x1E699FBC8]);
    v25 = [MEMORY[0x1E699FC08] localHandle];
    v26 = [v24 _initWithUpdater:self identityToken:v23 identity:v7 parameters:v16 hostHandle:v25];

    v27 = [[_FBLocalSceneInfo alloc] initWithScene:v26];
    [(NSMutableDictionary *)self->_localSceneInfoByIdentity setObject:v27 forKey:v7];
    [(NSMutableSet *)self->_pendingScenes addObject:v26];
  }

  else
  {
    v28 = FBLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(FBLocalSynchronousSceneClientProvider *)v7 createSceneFutureWithDefinition:v28];
    }

    v26 = 0;
  }

  return v26;
}

- (void)activateSceneFuture:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v9 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider activateSceneFuture:a2 completion:?];
  }

  localSceneInfoByIdentity = self->_localSceneInfoByIdentity;
  v11 = [v7 identity];
  v12 = [(NSMutableDictionary *)localSceneInfoByIdentity objectForKey:v11];

  if (!v12)
  {
    [FBLocalSynchronousSceneClientProvider activateSceneFuture:a2 completion:?];
  }

  if (([(NSMutableSet *)self->_pendingScenes containsObject:v7]& 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider activateSceneFuture:a2 completion:?];
  }

  v13 = objc_opt_new();
  v14 = [v7 identifier];
  [v13 setIdentifier:v14];

  v15 = [v7 identity];
  v16 = [v15 workspaceIdentifier];
  [v13 setWorkspaceIdentifier:v16];

  v17 = [v7 specification];
  [v13 setSpecification:v17];

  v18 = [v7 settings];
  [v13 setInitialSettings:v18];

  v19 = [v7 clientSettings];
  [v13 setInitialClientSettings:v19];

  v20 = [v7 settings];
  [v13 setClientFuture:{objc_msgSend(v20, "isClientFuture")}];

  v21 = [v7 settings];
  [(FBLocalSynchronousSceneClientProvider *)self _sendToSceneWithInfo:v12 updatedSettings:v21 withDiff:0 transitionContext:0 completion:0];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __72__FBLocalSynchronousSceneClientProvider_activateSceneFuture_completion___block_invoke;
  v25[3] = &unk_1E783CCE0;
  v25[4] = self;
  v26 = v12;
  v27 = v7;
  v28 = v8;
  v22 = v8;
  v23 = v7;
  v24 = v12;
  [(FBLocalSynchronousSceneClientProvider *)self requestSceneWithOptions:v13 completion:v25];
}

void __72__FBLocalSynchronousSceneClientProvider_activateSceneFuture_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    __72__FBLocalSynchronousSceneClientProvider_activateSceneFuture_completion___block_invoke_cold_1(a1);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v5 == 0, v5);
  }
}

- (void)requestSceneWithOptions:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [v9 assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider requestSceneWithOptions:a2 completion:?];
  }

  v10 = [v7 workspaceIdentifier];

  if (!v10)
  {
    v11 = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
    v12 = [(FBWorkspaceDomain *)v11 defaultWorkspace];

    if (v12)
    {
      [v7 setWorkspaceIdentifier:v12];
    }
  }

  v13 = [v7 workspaceIdentifier];
  if (!v13)
  {
    [FBLocalSynchronousSceneClientProvider requestSceneWithOptions:completion:];
  }

  v14 = v13;
  v15 = [MEMORY[0x1E699FBD8] localIdentity];
  v16 = [FBWorkspaceSceneRequest alloc];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__FBLocalSynchronousSceneClientProvider_requestSceneWithOptions_completion___block_invoke;
  v19[3] = &unk_1E783CD30;
  v20 = v8;
  v21 = a2;
  v19[4] = self;
  v17 = v8;
  v18 = [(FBWorkspaceSceneRequest *)v16 initWithClientIdentity:v15 targetIdentifier:v14 options:v7 completion:v19];
  [(FBWorkspaceEventDispatcher *)self->_eventDispatcher handleLocalSceneRequest:v18];
}

void __76__FBLocalSynchronousSceneClientProvider_requestSceneWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v10;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  BSDispatchMain();
}

void __76__FBLocalSynchronousSceneClientProvider_requestSceneWithOptions_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) fbsSceneForScene:?];
    if (!v2)
    {
      __76__FBLocalSynchronousSceneClientProvider_requestSceneWithOptions_completion___block_invoke_2_cold_1(a1, (a1 + 40));
    }

    v3 = v2;
    v4 = *(a1 + 56);
    if (!v4)
    {
      goto LABEL_8;
    }

    v7 = v3;
    (*(v4 + 16))(v4);
  }

  else
  {
    v5 = *(a1 + 56);
    if (!v5)
    {
      return;
    }

    v6 = *(a1 + 48);
    v7 = FBSWorkspaceErrorCreate();
    (*(v5 + 16))(v5);
  }

  v3 = v7;
LABEL_8:
}

uint64_t __116__FBLocalSynchronousSceneClientProvider__sendToSceneWithInfo_updatedSettings_withDiff_transitionContext_completion___block_invoke_225(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void __90__FBLocalSynchronousSceneClientProvider__sendSceneCreateFBSWorkspaceDelegateForSceneInfo___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 56) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    __90__FBLocalSynchronousSceneClientProvider__sendSceneCreateFBSWorkspaceDelegateForSceneInfo___block_invoke_cold_1(v2, a1);
  }
}

void __80__FBLocalSynchronousSceneClientProvider__invalidateSceneInfo_transitionContext___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _callOutQueue_willDestroyWithTransitionContext:*(a1 + 40) completion:0] & 1) == 0)
  {
    v2 = [*(*(a1 + 48) + 56) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(*(a1 + 48) + 56) delegate];
      [v4 workspace:*(*(a1 + 48) + 56) willDestroyScene:*(a1 + 32) withTransitionContext:*(a1 + 40) completion:&__block_literal_global_241];
    }
  }
}

+ (id)sharedInstance
{
  v2 = +[FBProcessManager sharedInstance];
  v3 = [v2 syncLocalSceneClientProvider];

  return v3;
}

- (void)_invalidateSceneInfo:(void *)a3 transitionContext:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 callOutQueue];
    [v7 assertBarrierOnQueue];

    if (v5)
    {
      v8 = v5[2];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = v9;
    v11 = *(a1 + 56);
    if (v11)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __80__FBLocalSynchronousSceneClientProvider__invalidateSceneInfo_transitionContext___block_invoke;
      v12[3] = &unk_1E783B300;
      v13 = v9;
      v14 = v6;
      v15 = a1;
      [v11 _calloutQueue_executeCalloutFromSource:a1 withBlock:v12];
    }

    else
    {
      [*(a1 + 8) removeObject:v5];
      [v10 _callOutQueue_willDestroyWithTransitionContext:v6 completion:0];
    }

    [v10 _callOutQueue_invalidate];
  }
}

uint64_t __47__FBLocalSynchronousSceneClientProvider_scenes__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    a3 = *(a3 + 16);
  }

  return [v3 addObject:a3];
}

- (id)sceneWithIdentity:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void __116__FBLocalSynchronousSceneClientProvider__sendToSceneWithInfo_updatedSettings_withDiff_transitionContext_completion___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = 1;
  [(_FBLocalSceneInfo *)*(a1 + 32) setPendingTransitionContext:?];
  v2 = *(a1 + 48);
  if (*(v2 + 56))
  {
    v3 = *(a1 + 32);

    [(FBLocalSynchronousSceneClientProvider *)v2 _sendSceneCreateFBSWorkspaceDelegateForSceneInfo:v3];
  }

  else if (([*(v2 + 8) containsObject:*(a1 + 32)] & 1) == 0)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(a1 + 32);

    [v4 addObject:v5];
  }
}

- (void)_initWithWorkspaceCoupler:(void *)a1 currentProcess:(const char *)a2 eventDispatcher:.cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"workspaceCoupler", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_1_0();
    v14 = @"FBLocalSynchronousSceneClientProvider.m";
    v15 = 1024;
    v16 = 80;
    v17 = v12;
    v18 = v8;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithWorkspaceCoupler:(void *)a1 currentProcess:(const char *)a2 eventDispatcher:.cold.2(void *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"eventDispatcher", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_1_0();
    v14 = @"FBLocalSynchronousSceneClientProvider.m";
    v15 = 1024;
    v16 = 82;
    v17 = v12;
    v18 = v8;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithWorkspaceCoupler:(char *)a1 currentProcess:eventDispatcher:.cold.3(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"eventDispatcher", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithWorkspaceCoupler:(char *)a1 currentProcess:eventDispatcher:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"currentProcess", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithWorkspaceCoupler:(char *)a1 currentProcess:eventDispatcher:.cold.5(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"workspaceCoupler", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __98__FBLocalSynchronousSceneClientProvider__initWithWorkspaceCoupler_currentProcess_eventDispatcher___block_invoke_2_cold_1(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  if (a2)
  {
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 succinctDescription];
  *a1 = 138543362;
  *a3 = v9;
  _os_log_impl(&dword_1A89DD000, a4, OS_LOG_TYPE_DEFAULT, "LocalSynchronousSceneClientProvider sending scene create for: %{public}@", a1, 0xCu);
}

- (void)_sendSceneCreateFBSWorkspaceDelegateForSceneInfo:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v1 = MEMORY[0x1E696AEC0];
  v11 = [v2 identityToken];
  v3 = [v1 stringWithFormat:@"cannot note creation of %@ without a reference to the workspace"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(v0);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_9();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"synchronous-local scenes cannot have remnants"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
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
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneIdentityTokenClass]", v10, v11);
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
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.4(char *a1)
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
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"settings of an unexpected class"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
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
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneClientSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.8(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initialClientSettings of an unexpected class"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.9()
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

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.10()
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

- (void)registerHost:(uint64_t)a1 settings:(char *)a2 initialClientSettings:fromRemnant:error:.cold.11(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must have already sent the scene create: %@"];
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

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.12()
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

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.13()
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

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.14()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_11_1(&dword_1A89DD000, v0, v1, "Local scene future %{public}@ has out-of-date clientSettings : %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.15()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_11_1(&dword_1A89DD000, v0, v1, "Local scene future %{public}@ was activated with modified settings : %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.16()
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

- (void)registerHost:settings:initialClientSettings:fromRemnant:error:.cold.17()
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.18(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
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
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.20(char *a1)
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.21(char *a1)
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.22(char *a1)
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

- (void)registerHost:(char *)a1 settings:initialClientSettings:fromRemnant:error:.cold.23(char *a1)
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

- (void)_sendToHost:(char *)a1 updatedClientSettings:withDiff:transitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_sendToSceneWithInfo:(char *)a1 updatedSettings:withDiff:transitionContext:completion:.cold.2(char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)unregisterHost:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trying to unregister a local host for a mismatched identifier : %@"];
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

- (void)unregisterHost:(uint64_t)a1 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trying to unregister a local host during the sync phase of connection : %@"];
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

- (void)unregisterHost:(uint64_t)a1 .cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trying to unregister a local scene for an unknown identifier : %@"];
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

- (void)unregisterHost:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)host:(uint64_t)a1 didUpdateSettings:(char *)a2 withDiff:transitionContext:completion:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot currently support updating from a local host during the sync phase of connection : %@"];
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

- (void)host:(uint64_t)a1 didUpdateSettings:(char *)a2 withDiff:transitionContext:completion:.cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot update from a local host while the scene is still pending : %@"];
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

- (void)host:(uint64_t)a1 didUpdateSettings:(char *)a2 withDiff:transitionContext:completion:.cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Scene info for %@ was expected, but not found."];
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

- (void)host:(char *)a1 didUpdateSettings:withDiff:transitionContext:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)host:(uint64_t)a1 didInvalidateWithTransitionContext:(char *)a2 completion:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot currently support invalidating from a local host during the sync phase of connection : %@"];
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

- (void)host:(char *)a1 didInvalidateWithTransitionContext:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must have a scene for it to be invalidated."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)host:(char *)a1 didInvalidateWithTransitionContext:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)host:(uint64_t)a1 didReceiveActions:(char *)a2 forExtension:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot currently support actions from a local host during the sync phase of connection : %@"];
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

- (void)host:(char *)a1 didReceiveActions:forExtension:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)host:(uint64_t)a1 sendInvocation:(char *)a2 withReply:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot currently support actions from a local host during the sync phase of connection : %@"];
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

- (void)host:(char *)a1 sendInvocation:withReply:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)scene:(uint64_t)a1 didUpdateClientSettings:(char *)a2 withDiff:transitionContext:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot currently support updates from a local scene during the sync phase of connection : %@"];
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

- (void)scene:(char *)a1 didUpdateClientSettings:withDiff:transitionContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)scene:(uint64_t)a1 didReceiveActions:(char *)a2 forExtension:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot currently support actions from a local scene during the sync phase of connection : %@"];
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

- (void)scene:(char *)a1 didReceiveActions:forExtension:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)scene:(uint64_t)a1 sendMessage:(char *)a2 withResponse:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot currently support messages from a local scene during the sync phase of connection : %@"];
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

- (void)scene:(uint64_t)a1 invalidateWithTransitionContext:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot currently support invalidations from a local scene during the sync phase of connection : %@"];
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

- (void)scene:(char *)a1 invalidateWithTransitionContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)scene:(uint64_t)a1 sendInvocation:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot currently support invocations from a local scene during the sync phase of connection : %@"];
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

- (void)scene:(char *)a1 sendInvocation:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(char *)a1 toWorkspaceID:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)createSceneFutureWithDefinition:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already tracking a scene with identity %@"];
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

- (void)createSceneFutureWithDefinition:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 workspaceIdentifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "Cannot create a local scene future for workspace %@.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)createSceneFutureWithDefinition:(uint64_t)a1 .cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create a local scene future with identity=%@ as no default workspace is defined."];
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

- (void)createSceneFutureWithDefinition:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateSceneFuture:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_pendingScenes containsObject:scene]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateSceneFuture:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"info != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateSceneFuture:(char *)a1 completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t __72__FBLocalSynchronousSceneClientProvider_activateSceneFuture_completion___block_invoke_cold_1(uint64_t a1)
{
  [(FBLocalSynchronousSceneClientProvider *)*(a1 + 32) _invalidateSceneInfo:0 transitionContext:?];
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 48) identity];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 32);
  v5 = *(a1 + 48);

  return [v4 removeObject:v5];
}

- (void)requestSceneWithOptions:completion:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v1 = MEMORY[0x1E696AEC0];
  v11 = [v2 identifier];
  v3 = [v1 stringWithFormat:@"Cannot request a local scene with identifier=%@ as no default workspace is defined."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(v0);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_9();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)requestSceneWithOptions:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"illegal operation after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __76__FBLocalSynchronousSceneClientProvider_requestSceneWithOptions_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no FBSScene for active FBScene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 64));
    v6 = *a2;
    v7 = objc_opt_class();
    v13 = NSStringFromClass(v7);
    v14 = *a2;
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__FBLocalSynchronousSceneClientProvider__sendSceneCreateFBSWorkspaceDelegateForSceneInfo___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = [*(*a1 + 56) delegate];
  v4 = *(*a1 + 56);
  v5 = *(a2 + 40);
  if (v5)
  {
    v5 = v5[2];
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  v8 = v5;
  [v9 workspace:v4 didCreateScene:v8 withTransitionContext:v7 completion:&__block_literal_global_236];
}

@end