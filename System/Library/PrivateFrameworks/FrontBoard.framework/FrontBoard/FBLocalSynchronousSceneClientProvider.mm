@interface FBLocalSynchronousSceneClientProvider
+ (id)sharedInstance;
- (FBLocalSynchronousSceneClientProvider)init;
- (id)_initWithWorkspaceCoupler:(void *)coupler currentProcess:(void *)process eventDispatcher:;
- (id)createSceneFutureWithDefinition:(id)definition;
- (id)fbsSceneForScene:(id)scene;
- (id)fbsSceneWithIdentifier:(id)identifier;
- (id)registerHost:(id)host settings:(id)settings initialClientSettings:(id)clientSettings fromRemnant:(id)remnant error:(id *)error;
- (id)sceneWithIdentity:(id)identity;
- (id)scenes;
- (void)_invalidate;
- (void)_invalidateSceneInfo:(void *)info transitionContext:;
- (void)_sendSceneCreateFBSWorkspaceDelegateForSceneInfo:(void *)info;
- (void)_sendToHost:(void *)host updatedClientSettings:(void *)settings withDiff:(void *)diff transitionContext:;
- (void)_sendToSceneWithInfo:(void *)info updatedSettings:(void *)settings withDiff:(void *)diff transitionContext:(void *)context completion:;
- (void)activateSceneFuture:(id)future completion:(id)completion;
- (void)dealloc;
- (void)host:(id)host didInvalidateWithTransitionContext:(id)context completion:(id)completion;
- (void)host:(id)host didReceiveActions:(id)actions forExtension:(Class)extension;
- (void)host:(id)host didUpdateSettings:(id)settings withDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)host:(id)host sendInvocation:(id)invocation withReply:(id)reply;
- (void)requestSceneWithOptions:(id)options completion:(id)completion;
- (void)scene:(id)scene didReceiveActions:(id)actions forExtension:(Class)extension;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings withDiff:(id)diff transitionContext:(id)context;
- (void)scene:(id)scene invalidateWithTransitionContext:(id)context;
- (void)scene:(id)scene sendInvocation:(id)invocation;
- (void)scene:(id)scene sendMessage:(id)message withResponse:(id)response;
- (void)sendActions:(id)actions toWorkspaceID:(id)d completion:(id)completion;
- (void)unregisterHost:(id)host;
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
    selfCopy = self;
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

- (id)_initWithWorkspaceCoupler:(void *)coupler currentProcess:(void *)process eventDispatcher:
{
  v8 = a2;
  couplerCopy = coupler;
  processCopy = process;
  if (self)
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

    if (!couplerCopy)
    {
      [FBLocalSynchronousSceneClientProvider _initWithWorkspaceCoupler:? currentProcess:? eventDispatcher:?];
    }

    v13 = processCopy;
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

    v28.receiver = self;
    v28.super_class = FBLocalSynchronousSceneClientProvider;
    self = objc_msgSendSuper2(&v28, sel_init);
    if (self)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = self[1];
      self[1] = v15;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v18 = self[2];
      self[2] = dictionary;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v20 = self[3];
      self[3] = dictionary2;

      v21 = [MEMORY[0x1E695DFA8] set];
      v22 = self[4];
      self[4] = v21;

      objc_storeStrong(self + 5, coupler);
      objc_storeStrong(self + 6, a2);
      v23 = self[7];
      self[7] = 0;

      objc_storeStrong(self + 8, process);
      v24 = self[6];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __98__FBLocalSynchronousSceneClientProvider__initWithWorkspaceCoupler_currentProcess_eventDispatcher___block_invoke;
      v26[3] = &unk_1E783BE68;
      self = self;
      selfCopy = self;
      [v24 _enqueueClientConnectionBlock:v26];
    }
  }

  return self;
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

- (void)_sendSceneCreateFBSWorkspaceDelegateForSceneInfo:(void *)info
{
  v3 = a2;
  if (info)
  {
    callOutQueue = [info callOutQueue];
    [callOutQueue assertBarrierOnQueue];

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
    v7 = info[7];
    if (!v7)
    {
      [FBLocalSynchronousSceneClientProvider _sendSceneCreateFBSWorkspaceDelegateForSceneInfo:];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__FBLocalSynchronousSceneClientProvider__sendSceneCreateFBSWorkspaceDelegateForSceneInfo___block_invoke;
    v9[3] = &unk_1E783B240;
    v9[4] = info;
    v8 = v3;
    v10 = v8;
    [v7 _calloutQueue_executeCalloutFromSource:info withBlock:v9];
    [(_FBLocalSceneInfo *)v8 setPendingTransitionContext:?];
  }

LABEL_4:
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
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
    NSStringFromSelector(self);
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

- (id)fbsSceneForScene:(id)scene
{
  identity = [scene identity];
  v5 = [(FBLocalSynchronousSceneClientProvider *)self sceneWithIdentity:identity];

  return v5;
}

- (id)fbsSceneWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_localSceneInfoByIdentity allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:identifierCopy];

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

      v7 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (id)registerHost:(id)host settings:(id)settings initialClientSettings:(id)clientSettings fromRemnant:(id)remnant error:(id *)error
{
  hostCopy = host;
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  remnantCopy = remnant;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (remnantCopy)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  identityToken = [hostCopy identityToken];
  NSClassFromString(&cfstr_Fbssceneidenti_0.isa);
  if (!identityToken)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v63 = hostCopy;
  definition = [hostCopy definition];
  identity = [definition identity];

  v20 = identity;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!v20)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  specification = [v63 specification];
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!specification)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v22 = settingsCopy;
  NSClassFromString(&cfstr_Fbsscenesettin.isa);
  if (!v22)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  [specification settingsClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  v23 = clientSettingsCopy;
  NSClassFromString(&cfstr_Fbssceneclient_0.isa);
  if (!v23)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider registerHost:a2 settings:? initialClientSettings:? fromRemnant:? error:?];
  }

  [specification clientSettingsClass];
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

  v62 = identityToken;
  v25 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:v20];
  if (!v25)
  {
    v30 = [MEMORY[0x1E699FB58] parametersForSpecification:specification];
    [v30 setSettings:v22];
    [v30 setClientSettings:v23];
    v31 = v22;
    v32 = specification;
    v33 = objc_alloc(MEMORY[0x1E699FBC8]);
    localHandle = [MEMORY[0x1E699FC08] localHandle];
    v35 = v62;
    v27 = [v33 _initWithUpdater:self identityToken:v62 identity:v20 parameters:v30 hostHandle:localHandle];

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

  v61 = specification;
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
  clientSettings = [v27 clientSettings];
  if ((BSEqualObjects() & 1) == 0)
  {
    v42 = [MEMORY[0x1E699FBE8] diffFromSettings:v23 toSettings:clientSettings];
    if (v42)
    {
      v43 = FBLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [FBLocalSynchronousSceneClientProvider registerHost:settings:initialClientSettings:fromRemnant:error:];
      }

      [(FBLocalSynchronousSceneClientProvider *)self _sendToHost:v63 updatedClientSettings:clientSettings withDiff:v42 transitionContext:0];
    }
  }

  settings = [v27 settings];
  if ((BSEqualObjects() & 1) == 0)
  {
    v45 = [MEMORY[0x1E699FC30] diffFromSettings:settings toSettings:v22];
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

- (void)_sendToHost:(void *)host updatedClientSettings:(void *)settings withDiff:(void *)diff transitionContext:
{
  v13 = a2;
  hostCopy = host;
  settingsCopy = settings;
  diffCopy = diff;
  if (self)
  {
    callOutQueue = [self callOutQueue];
    [callOutQueue assertBarrierOnQueue];

    if (self[88] == 1)
    {
      [FBLocalSynchronousSceneClientProvider _sendToHost:? updatedClientSettings:? withDiff:? transitionContext:?];
    }

    [v13 clientToken:self didUpdateClientSettings:hostCopy withDiff:settingsCopy transitionContext:diffCopy];
  }
}

- (void)_sendToSceneWithInfo:(void *)info updatedSettings:(void *)settings withDiff:(void *)diff transitionContext:(void *)context completion:
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = a2;
  infoCopy = info;
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  if (self)
  {
    callOutQueue = [self callOutQueue];
    [callOutQueue assertBarrierOnQueue];

    if (self[88] == 1)
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
        v28 = contextCopy;
        [v17 updater:self didUpdateSettings:infoCopy withDiff:settingsCopy transitionContext:diffCopy completion:v27];

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
    v31 = diffCopy;
    selfCopy = self;
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
        selfCopy2 = self;
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
    if (contextCopy)
    {
      (*(contextCopy + 2))(contextCopy, 1, 0);
    }

    goto LABEL_10;
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)unregisterHost:(id)host
{
  hostCopy = host;
  definition = [hostCopy definition];
  identity = [definition identity];

  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider unregisterHost:a2];
  }

  v8 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:identity];

  if (!v8)
  {
    [(FBLocalSynchronousSceneClientProvider *)identity unregisterHost:a2];
  }

  v9 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:identity];

  if (v9 != hostCopy)
  {
    [(FBLocalSynchronousSceneClientProvider *)identity unregisterHost:a2];
  }

  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:hostCopy])
  {
    [(FBLocalSynchronousSceneClientProvider *)identity unregisterHost:a2];
  }

  [(NSMutableDictionary *)self->_localSceneInfoByIdentity removeObjectForKey:identity];
  [(NSMutableDictionary *)self->_hostsByIdentity removeObjectForKey:identity];
}

- (void)host:(id)host didUpdateSettings:(id)settings withDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  hostCopy = host;
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  completionCopy = completion;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 didUpdateSettings:? withDiff:? transitionContext:? completion:?];
  }

  definition = [hostCopy definition];
  identity = [definition identity];

  v20 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:identity];
  if (!v20 || (v21 = v20, (v22 = *(v20 + 16)) == 0))
  {
    [FBLocalSynchronousSceneClientProvider host:identity didUpdateSettings:a2 withDiff:? transitionContext:? completion:?];
  }

  v23 = v22;
  if ([(NSMutableSet *)self->_pendingScenes containsObject:v22])
  {
    [FBLocalSynchronousSceneClientProvider host:identity didUpdateSettings:a2 withDiff:? transitionContext:? completion:?];
  }

  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:hostCopy])
  {
    [FBLocalSynchronousSceneClientProvider host:identity didUpdateSettings:a2 withDiff:? transitionContext:? completion:?];
  }

  [(FBLocalSynchronousSceneClientProvider *)self _sendToSceneWithInfo:v21 updatedSettings:settingsCopy withDiff:diffCopy transitionContext:contextCopy completion:completionCopy];
}

- (void)host:(id)host didInvalidateWithTransitionContext:(id)context completion:(id)completion
{
  hostCopy = host;
  contextCopy = context;
  completionCopy = completion;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 didInvalidateWithTransitionContext:? completion:?];
  }

  definition = [hostCopy definition];
  identity = [definition identity];

  v14 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:identity];
  if (!v14)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 didInvalidateWithTransitionContext:? completion:?];
  }

  v15 = v14;
  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:hostCopy])
  {
    [FBLocalSynchronousSceneClientProvider host:identity didInvalidateWithTransitionContext:a2 completion:?];
  }

  [(FBLocalSynchronousSceneClientProvider *)self _invalidateSceneInfo:v15 transitionContext:contextCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)host:(id)host didReceiveActions:(id)actions forExtension:(Class)extension
{
  hostCopy = host;
  actionsCopy = actions;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 didReceiveActions:? forExtension:?];
  }

  definition = [hostCopy definition];
  identity = [definition identity];

  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:hostCopy])
  {
    [FBLocalSynchronousSceneClientProvider host:identity didReceiveActions:a2 forExtension:?];
  }

  v13 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:identity];
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
    [v16 updater:self didReceiveActions:actionsCopy forExtension:extension];
  }
}

- (void)host:(id)host sendInvocation:(id)invocation withReply:(id)reply
{
  hostCopy = host;
  invocationCopy = invocation;
  replyCopy = reply;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider host:a2 sendInvocation:? withReply:?];
  }

  definition = [hostCopy definition];
  identity = [definition identity];

  if ([(NSMutableSet *)self->_clientFutureHostsBeingSynchronized containsObject:hostCopy])
  {
    [FBLocalSynchronousSceneClientProvider host:identity sendInvocation:a2 withReply:?];
  }

  v14 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:identity];
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
    [invocationCopy invokeWithReceiver:v17 replyHandler:replyCopy];
  }

  else if (replyCopy)
  {
    v18 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBLocalSynchronousSceneClientProvider" code:1 configuration:&__block_literal_global_19];
    replyCopy[2](replyCopy, 0, v18);
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings withDiff:(id)diff transitionContext:(id)context
{
  sceneCopy = scene;
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider scene:a2 didUpdateClientSettings:? withDiff:? transitionContext:?];
  }

  identity = [sceneCopy identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:sceneCopy])
  {
    [FBLocalSynchronousSceneClientProvider scene:identity didUpdateClientSettings:a2 withDiff:? transitionContext:?];
  }

  v16 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:identity];
  [(FBLocalSynchronousSceneClientProvider *)self _sendToHost:v16 updatedClientSettings:settingsCopy withDiff:diffCopy transitionContext:contextCopy];
}

- (void)scene:(id)scene didReceiveActions:(id)actions forExtension:(Class)extension
{
  sceneCopy = scene;
  actionsCopy = actions;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider scene:a2 didReceiveActions:? forExtension:?];
  }

  identity = [sceneCopy identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:sceneCopy])
  {
    [FBLocalSynchronousSceneClientProvider scene:identity didReceiveActions:a2 forExtension:?];
  }

  v12 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:identity];
  [v12 clientToken:self didReceiveActions:actionsCopy forExtension:extension];
}

- (void)scene:(id)scene sendMessage:(id)message withResponse:(id)response
{
  sceneCopy = scene;
  messageCopy = message;
  responseCopy = response;
  identity = [sceneCopy identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:sceneCopy])
  {
    [FBLocalSynchronousSceneClientProvider scene:identity sendMessage:a2 withResponse:?];
  }

  if (responseCopy)
  {
    (*(responseCopy + 2))(responseCopy, 0, 0);
  }
}

- (void)scene:(id)scene invalidateWithTransitionContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider scene:a2 invalidateWithTransitionContext:?];
  }

  identity = [sceneCopy identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:sceneCopy])
  {
    [FBLocalSynchronousSceneClientProvider scene:identity invalidateWithTransitionContext:a2];
  }

  v10 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:identity];
  [v10 clientToken:self deactivateWithContext:contextCopy];
}

- (void)scene:(id)scene sendInvocation:(id)invocation
{
  sceneCopy = scene;
  invocationCopy = invocation;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider scene:a2 sendInvocation:?];
  }

  identity = [sceneCopy identity];
  if ([(NSMutableSet *)self->_clientFutureScenesBeingSynchronized containsObject:sceneCopy])
  {
    [FBLocalSynchronousSceneClientProvider scene:identity sendInvocation:a2];
  }

  v10 = [(NSMutableDictionary *)self->_hostsByIdentity objectForKey:identity];
  resolve = [invocationCopy resolve];
  [v10 clientToken:self handleInvocation:invocationCopy withReply:resolve];
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

- (void)sendActions:(id)actions toWorkspaceID:(id)d completion:(id)completion
{
  actionsCopy = actions;
  dCopy = d;
  completionCopy = completion;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider sendActions:a2 toWorkspaceID:? completion:?];
  }

  if (dCopy)
  {
    defaultWorkspace = dCopy;
  }

  else
  {
    domain = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
    defaultWorkspace = [(FBWorkspaceDomain *)domain defaultWorkspace];
  }

  v15 = [FBWorkspaceSceneRequest alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__FBLocalSynchronousSceneClientProvider_sendActions_toWorkspaceID_completion___block_invoke;
  v18[3] = &unk_1E783C2D0;
  v19 = completionCopy;
  v16 = completionCopy;
  v17 = [(FBWorkspaceSceneRequest *)v15 initWithTargetIdentifier:defaultWorkspace actions:actionsCopy completion:v18];
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

- (id)createSceneFutureWithDefinition:(id)definition
{
  definitionCopy = definition;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider createSceneFutureWithDefinition:a2];
  }

  identity = [definitionCopy identity];
  workspaceIdentifier = [identity workspaceIdentifier];

  if (!workspaceIdentifier)
  {
    domain = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
    defaultWorkspace = [(FBWorkspaceDomain *)domain defaultWorkspace];

    if (defaultWorkspace)
    {
      v11 = MEMORY[0x1E699FC10];
      identifier = [identity identifier];
      v13 = [v11 identityForIdentifier:identifier workspaceIdentifier:defaultWorkspace];

      identity = v13;
    }
  }

  workspaceIdentifier2 = [identity workspaceIdentifier];

  if (!workspaceIdentifier2)
  {
    [(FBLocalSynchronousSceneClientProvider *)identity createSceneFutureWithDefinition:a2];
  }

  v15 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:identity];

  if (v15)
  {
    [(FBLocalSynchronousSceneClientProvider *)identity createSceneFutureWithDefinition:a2];
  }

  if ([(FBWorkspaceEventDispatcher *)self->_eventDispatcher canCreateLocalSceneWithIdentity:identity])
  {
    parameters = [definitionCopy parameters];
    [parameters updateSettingsWithBlock:&__block_literal_global_198];
    v17 = MEMORY[0x1E699FC18];
    domain2 = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
    endpointPromise = [(FBWorkspaceDomain *)domain2 endpointPromise];
    endpoint = [(FBWorkspaceEndpointPromise *)endpointPromise endpoint];
    workspaceIdentifier3 = [identity workspaceIdentifier];
    identifier2 = [identity identifier];
    v23 = [v17 tokenWithHostEndpoint:endpoint workspace:workspaceIdentifier3 identifier:identifier2];

    v24 = objc_alloc(MEMORY[0x1E699FBC8]);
    localHandle = [MEMORY[0x1E699FC08] localHandle];
    v26 = [v24 _initWithUpdater:self identityToken:v23 identity:identity parameters:parameters hostHandle:localHandle];

    v27 = [[_FBLocalSceneInfo alloc] initWithScene:v26];
    [(NSMutableDictionary *)self->_localSceneInfoByIdentity setObject:v27 forKey:identity];
    [(NSMutableSet *)self->_pendingScenes addObject:v26];
  }

  else
  {
    v28 = FBLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(FBLocalSynchronousSceneClientProvider *)identity createSceneFutureWithDefinition:v28];
    }

    v26 = 0;
  }

  return v26;
}

- (void)activateSceneFuture:(id)future completion:(id)completion
{
  futureCopy = future;
  completionCopy = completion;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider activateSceneFuture:a2 completion:?];
  }

  localSceneInfoByIdentity = self->_localSceneInfoByIdentity;
  identity = [futureCopy identity];
  v12 = [(NSMutableDictionary *)localSceneInfoByIdentity objectForKey:identity];

  if (!v12)
  {
    [FBLocalSynchronousSceneClientProvider activateSceneFuture:a2 completion:?];
  }

  if (([(NSMutableSet *)self->_pendingScenes containsObject:futureCopy]& 1) == 0)
  {
    [FBLocalSynchronousSceneClientProvider activateSceneFuture:a2 completion:?];
  }

  v13 = objc_opt_new();
  identifier = [futureCopy identifier];
  [v13 setIdentifier:identifier];

  identity2 = [futureCopy identity];
  workspaceIdentifier = [identity2 workspaceIdentifier];
  [v13 setWorkspaceIdentifier:workspaceIdentifier];

  specification = [futureCopy specification];
  [v13 setSpecification:specification];

  settings = [futureCopy settings];
  [v13 setInitialSettings:settings];

  clientSettings = [futureCopy clientSettings];
  [v13 setInitialClientSettings:clientSettings];

  settings2 = [futureCopy settings];
  [v13 setClientFuture:{objc_msgSend(settings2, "isClientFuture")}];

  settings3 = [futureCopy settings];
  [(FBLocalSynchronousSceneClientProvider *)self _sendToSceneWithInfo:v12 updatedSettings:settings3 withDiff:0 transitionContext:0 completion:0];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __72__FBLocalSynchronousSceneClientProvider_activateSceneFuture_completion___block_invoke;
  v25[3] = &unk_1E783CCE0;
  v25[4] = self;
  v26 = v12;
  v27 = futureCopy;
  v28 = completionCopy;
  v22 = completionCopy;
  v23 = futureCopy;
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

- (void)requestSceneWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  callOutQueue = [(FBLocalSynchronousSceneClientProvider *)self callOutQueue];
  [callOutQueue assertBarrierOnQueue];

  if (self->_invalidated)
  {
    [FBLocalSynchronousSceneClientProvider requestSceneWithOptions:a2 completion:?];
  }

  workspaceIdentifier = [optionsCopy workspaceIdentifier];

  if (!workspaceIdentifier)
  {
    domain = [(FBWorkspaceEventDispatcher *)self->_eventDispatcher domain];
    defaultWorkspace = [(FBWorkspaceDomain *)domain defaultWorkspace];

    if (defaultWorkspace)
    {
      [optionsCopy setWorkspaceIdentifier:defaultWorkspace];
    }
  }

  workspaceIdentifier2 = [optionsCopy workspaceIdentifier];
  if (!workspaceIdentifier2)
  {
    [FBLocalSynchronousSceneClientProvider requestSceneWithOptions:completion:];
  }

  v14 = workspaceIdentifier2;
  localIdentity = [MEMORY[0x1E699FBD8] localIdentity];
  v16 = [FBWorkspaceSceneRequest alloc];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__FBLocalSynchronousSceneClientProvider_requestSceneWithOptions_completion___block_invoke;
  v19[3] = &unk_1E783CD30;
  v20 = completionCopy;
  v21 = a2;
  v19[4] = self;
  v17 = completionCopy;
  v18 = [(FBWorkspaceSceneRequest *)v16 initWithClientIdentity:localIdentity targetIdentifier:v14 options:optionsCopy completion:v19];
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
  syncLocalSceneClientProvider = [v2 syncLocalSceneClientProvider];

  return syncLocalSceneClientProvider;
}

- (void)_invalidateSceneInfo:(void *)info transitionContext:
{
  v5 = a2;
  infoCopy = info;
  if (self)
  {
    callOutQueue = [self callOutQueue];
    [callOutQueue assertBarrierOnQueue];

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
    v11 = *(self + 56);
    if (v11)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __80__FBLocalSynchronousSceneClientProvider__invalidateSceneInfo_transitionContext___block_invoke;
      v12[3] = &unk_1E783B300;
      v13 = v9;
      v14 = infoCopy;
      selfCopy = self;
      [v11 _calloutQueue_executeCalloutFromSource:self withBlock:v12];
    }

    else
    {
      [*(self + 8) removeObject:v5];
      [v10 _callOutQueue_willDestroyWithTransitionContext:infoCopy completion:0];
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

- (id)sceneWithIdentity:(id)identity
{
  v3 = [(NSMutableDictionary *)self->_localSceneInfoByIdentity objectForKey:identity];
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