@interface FBSWorkspace
+ (id)_findDomainSpecification;
+ (id)_startWorkspaceListener;
+ (id)defaultShellEndpoint;
+ (void)_findDomainSpecification;
+ (void)startViewServiceDomain;
- (FBSWorkspace)init;
- (FBSWorkspace)initWithSerialQueue:(id)a3;
- (NSArray)scenes;
- (id)_initWithCoupler:(id)a3 options:(id)a4;
- (id)_queue_scenesClientForEndpoint:(int)a3 creatingIfNecessary:;
- (id)defaultService;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)pseudoSceneWithIdentifier:(id)a3 specification:(id)a4;
- (id)sceneWithIdentifier:(id)a3;
- (id)serviceForEndpoint:(id)a3 withIdentifier:(id)a4;
- (id)succinctDescription;
- (void)_calloutQueue_executeCalloutFromSource:(id)a3 withBlock:(id)a4;
- (void)_invalidateWithCompletion:(id)a3;
- (void)_queue_registerSource:(id)a3;
- (void)_queue_unregisterSource:(id)a3;
- (void)_registerSource:(id)a3;
- (void)_registerSourceEndpoint:(id)a3;
- (void)_registerSourcePeer:(id)a3;
- (void)_scenesClientForEndpoint:(void *)a1;
- (void)dealloc;
- (void)enumerateScenesWithBlock:(id)a3;
- (void)monitor:(id)a3 willLoseEndpoint:(id)a4;
- (void)requestDestructionOfScene:(id)a3 withCompletion:(id)a4;
- (void)requestSceneCreationWithIdentifier:(id)a3 initialClientSettings:(id)a4 completion:(id)a5;
- (void)requestSceneCreationWithInitialClientSettings:(id)a3 completion:(id)a4;
- (void)requestSceneFromEndpoint:(id)a3 withOptions:(id)a4 completion:(id)a5;
@end

@implementation FBSWorkspace

+ (id)defaultShellEndpoint
{
  objc_opt_self();
  if (defaultShellEndpoint_onceToken != -1)
  {
    +[FBSWorkspace defaultShellEndpoint];
  }

  v0 = defaultShellEndpoint___DefaultShellEndpoint;

  return v0;
}

void __36__FBSWorkspace_defaultShellEndpoint__block_invoke()
{
  v0 = [off_1E76BC9E0 environmentAliases];
  v1 = [off_1E76BCA30 defaultShellMachName];
  v2 = [v0 resolveMachService:v1];

  v3 = +[FBSWorkspaceServiceSpecification identifier];
  v4 = [off_1E76BCA30 endpointForMachName:v2 service:v3 instance:0];
  v5 = defaultShellEndpoint___DefaultShellEndpoint;
  defaultShellEndpoint___DefaultShellEndpoint = v4;

  if (!defaultShellEndpoint___DefaultShellEndpoint)
  {
    v6 = FBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __36__FBSWorkspace_defaultShellEndpoint__block_invoke_cold_1(v2, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

+ (id)_findDomainSpecification
{
  v2 = +[FBSWorkspaceServiceSpecification identifier];
  v3 = [off_1E76BCA60 bootstrapConfiguration];
  v4 = [v3 domainsContainingServiceIdentifier:v2];
  if ([v4 count])
  {
    if ([v4 count] != 1)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must have one and only one domain specify %@ : bootstrapConfigurationDomains=%@", v2, v4];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[FBSWorkspace _findDomainSpecification];
      }

      [v16 UTF8String];
      _bs_set_crash_log_message();
    }

    v5 = [v4 anyObject];
  }

  else
  {
    v5 = 0;
  }

  v6 = [off_1E76BC9E0 environmentAliases];
  v7 = [off_1E76BCA30 defaultShellMachName];
  v8 = [v6 resolveMachService:v7];

  v9 = [v3 domainForMachName:v8];
  if (v9)
  {
    v10 = v9 == v5;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"if we own the defaultShellMachName (%@) then %@ must be registered there", v8, v2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[FBSWorkspace _findDomainSpecification];
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
  }

  if (!v5)
  {
    v11 = [off_1E76BCA60 viewServiceConfiguration];
    v12 = [v11 domainsContainingServiceIdentifier:v2];
    if ([v12 count])
    {
      if ([v12 count] != 1)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must have one and only one domain specify %@ : viewServiceConfigurationDomains=%@", v2, v12];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          +[FBSWorkspace _findDomainSpecification];
        }

        [v17 UTF8String];
        _bs_set_crash_log_message();
      }

      v5 = [v12 anyObject];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (void)startViewServiceDomain
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to find workspace-service defining domain"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (id)_startWorkspaceListener
{
  objc_opt_self();
  v0 = NSClassFromString(&cfstr_Fbworkspacedom.isa);
  if (v0)
  {
    v1 = [(objc_class *)v0 startWorkspaceDomainListener];
  }

  else
  {
    v2 = FBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(FBSWorkspace *)v2 _startWorkspaceListener:v3];
    }

    v1 = 0;
  }

  return v1;
}

- (FBSWorkspace)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is unavailable on FBSWorkspace"];
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
    v15 = @"FBSWorkspace.m";
    v16 = 1024;
    v17 = 208;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSWorkspace)initWithSerialQueue:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-initWithQueue: is unavailable on FBSWorkspace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"FBSWorkspace.m";
    v18 = 1024;
    v19 = 218;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithCoupler:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  if (!v9)
  {
    [FBSWorkspace _initWithCoupler:a2 options:?];
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBSWorkspace *)v10 _initWithCoupler:a2 options:self];
  }

  if (!v8)
  {
    [FBSWorkspace _initWithCoupler:a2 options:?];
  }

  v11 = [v8 delegate];

  if (!v11)
  {
    [FBSWorkspace _initWithCoupler:a2 options:?];
  }

  v38.receiver = self;
  v38.super_class = FBSWorkspace;
  v12 = [(FBSWorkspace *)&v38 init];
  if (v12)
  {
    v13 = [v8 delegate];
    delegate = v12->_delegate;
    v12->_delegate = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queue_identifierToScenesSource = v12->_queue_identifierToScenesSource;
    v12->_queue_identifierToScenesSource = v15;

    v17 = +[FBSWorkspaceScenesClient serviceQuality];
    v18 = [off_1E76BCA48 queueWithName:@"com.apple.frontboardservices.workspace" serviceQuality:v17];
    queue = v12->_queue;
    v12->_queue = v18;

    v20 = [v8 callOutQueue];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      callOutQueue = v12->_callOutQueue;
      v12->_callOutQueue = v22;
    }

    else
    {
      callOutQueue = +[FBSWorkspaceScenesClient serviceQuality];
      v24 = [off_1E76BCA48 queueWithName:@"com.apple.frontboardservices.workspace.defaultCallOut" serviceQuality:callOutQueue];
      v25 = v12->_callOutQueue;
      v12->_callOutQueue = v24;
    }

    v26 = [off_1E76BCA20 queueWithDispatchQueue:v12->_queue targetQueue:v12->_callOutQueue];
    serviceQueue = v12->_serviceQueue;
    v12->_serviceQueue = v26;

    v28 = [[FBSPseudoSceneUpdater alloc] _initWithCallOutQueue:v12->_callOutQueue];
    psuedoSceneUpdater = v12->_psuedoSceneUpdater;
    v12->_psuedoSceneUpdater = v28;

    v12->_isSingleton = [v10 _isSharedInstance];
    if ([v8 isEndpointMonitoringEnabled])
    {
      v30 = +[FBSWorkspaceServiceSpecification identifier];
      v31 = [off_1E76BCA38 monitorForService:v30];
      connectionEndpointMonitor = v12->_connectionEndpointMonitor;
      v12->_connectionEndpointMonitor = v31;

      [(BSServiceConnectionEndpointMonitor *)v12->_connectionEndpointMonitor setDelegate:v12];
      [(BSServiceConnectionEndpointMonitor *)v12->_connectionEndpointMonitor activate];
    }

    else
    {
      v33 = FBLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&dword_1A2DBB000, v33, OS_LOG_TYPE_DEFAULT, "FBSWorkspace: endpoint monitoring is disabled.", v37, 2u);
      }
    }

    if ([v8 isDefaultShellEndpointEnabled])
    {
      v34 = +[FBSWorkspace defaultShellEndpoint];
      defaultShellEndpoint = v12->_defaultShellEndpoint;
      v12->_defaultShellEndpoint = v34;
    }

    else
    {
      defaultShellEndpoint = FBLogCommon();
      if (os_log_type_enabled(defaultShellEndpoint, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&dword_1A2DBB000, defaultShellEndpoint, OS_LOG_TYPE_DEFAULT, "FBSWorkspace: default shell endpoint is disabled.", v37, 2u);
      }
    }

    [(FBSWorkspaceCoupler *)v10 _setWorkspace:v12];
    if (v12->_defaultShellEndpoint)
    {
      [(FBSWorkspace *)v12 _registerSourceEndpoint:?];
    }
  }

  return v12;
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
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_invalidateWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_isSingleton)
  {
    [FBSWorkspace _invalidateWithCompletion:a2];
  }

  v6 = v5;
  v7 = FBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = self;
    _os_log_impl(&dword_1A2DBB000, v7, OS_LOG_TYPE_DEFAULT, "FBSWorkspace:%p invalidating.", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__FBSWorkspace__invalidateWithCompletion___block_invoke;
  v10[3] = &unk_1E76BDA90;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v10];
}

void __42__FBSWorkspace__invalidateWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 73) & 1) == 0)
  {
    *(v2 + 73) = 1;
    [*(*(a1 + 32) + 56) invalidate];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(*(a1 + 32) + 48) allValues];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(FBSWorkspaceScenesClient *)v8 queue_invalidate];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = 0;
  }

  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 24) performAsync:?];
  }
}

- (id)defaultService
{
  v3 = [(FBSWorkspace *)self defaultShellEndpoint];
  v4 = [(FBSWorkspace *)self serviceForEndpoint:v3 withIdentifier:0];

  return v4;
}

- (id)serviceForEndpoint:(id)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(FBSWorkspace *)self _scenesClientForEndpoint:a3];
  if (v7)
  {
    v8 = [[FBSWorkspaceService alloc] _initWithTarget:v7 identifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_scenesClientForEndpoint:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__3;
    v15 = __Block_byref_object_dispose__3;
    v16 = 0;
    if (v3)
    {
      v5 = a1[1];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__FBSWorkspace__scenesClientForEndpoint___block_invoke;
      v8[3] = &unk_1E76BDCD8;
      v10 = &v11;
      v8[4] = a1;
      v9 = v3;
      [v5 performAsyncAndWait:v8];

      v6 = v12[5];
    }

    else
    {
      v6 = 0;
    }

    a1 = v6;
    _Block_object_dispose(&v11, 8);
  }

  return a1;
}

- (void)requestSceneFromEndpoint:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FBSWorkspace *)self defaultServiceForEndpoint:v8];
  v12 = v11;
  if (v11)
  {
    [v11 requestSceneWithOptions:v9 completion:v10];
  }

  else
  {
    callOutQueue = self->_callOutQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__FBSWorkspace_requestSceneFromEndpoint_withOptions_completion___block_invoke;
    v14[3] = &unk_1E76BD750;
    v16 = v10;
    v15 = v8;
    [(BSServiceQueue *)callOutQueue performAsync:v14];
  }
}

void __64__FBSWorkspace_requestSceneFromEndpoint_withOptions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  v9 = FBSWorkspaceErrorCreate(0, 3uLL, @"could not connect to endpoint %@", a4, a5, a6, a7, a8, *(a1 + 32));
  (*(v8 + 16))(v8, 0, v9);
}

- (NSArray)scenes
{
  v3 = [MEMORY[0x1E695DF70] array];
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __22__FBSWorkspace_scenes__block_invoke;
  v9[3] = &unk_1E76BCD60;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __22__FBSWorkspace_scenes__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __22__FBSWorkspace_scenes__block_invoke_2;
  v2[3] = &unk_1E76BDBF8;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __22__FBSWorkspace_scenes__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = [a3 scenes];
  v4 = [v5 allObjects];
  [v3 addObjectsFromArray:v4];
}

- (id)sceneWithIdentifier:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];
  v7 = [v6 objectForKey:@"FBSWorkspaceCalloutScenesSourceKey"];

  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__FBSWorkspace_sceneWithIdentifier___block_invoke;
  v13[3] = &unk_1E76BDC20;
  v9 = v7;
  v14 = v9;
  v10 = v4;
  v15 = v10;
  v16 = &v17;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __36__FBSWorkspace_sceneWithIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(a1 + 32) scenes];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          v8 = [v7 identifier];
          v9 = [v8 isEqualToString:*(a1 + 40)];

          if (v9)
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
            goto LABEL_12;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)enumerateScenesWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(FBSWorkspace *)self scenes];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__FBSWorkspace_enumerateScenesWithBlock___block_invoke;
    v6[3] = &unk_1E76BDC48;
    v7 = v4;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

- (void)requestSceneCreationWithInitialClientSettings:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setInitialClientSettings:v7];

  defaultShellEndpoint = self->_defaultShellEndpoint;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__FBSWorkspace_requestSceneCreationWithInitialClientSettings_completion___block_invoke;
  v11[3] = &unk_1E76BDC70;
  v12 = v6;
  v10 = v6;
  [(FBSWorkspace *)self requestSceneFromEndpoint:defaultShellEndpoint withOptions:v8 completion:v11];
}

uint64_t __73__FBSWorkspace_requestSceneCreationWithInitialClientSettings_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestSceneCreationWithIdentifier:(id)a3 initialClientSettings:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setIdentifier:v10];

  [v11 setInitialClientSettings:v9];
  defaultShellEndpoint = self->_defaultShellEndpoint;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__FBSWorkspace_requestSceneCreationWithIdentifier_initialClientSettings_completion___block_invoke;
  v14[3] = &unk_1E76BDC70;
  v15 = v8;
  v13 = v8;
  [(FBSWorkspace *)self requestSceneFromEndpoint:defaultShellEndpoint withOptions:v11 completion:v14];
}

uint64_t __84__FBSWorkspace_requestSceneCreationWithIdentifier_initialClientSettings_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestDestructionOfScene:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    callOutQueue = self->_callOutQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__FBSWorkspace_requestDestructionOfScene_withCompletion___block_invoke;
    v8[3] = &unk_1E76BD318;
    v9 = v5;
    [(BSServiceQueue *)callOutQueue performAsync:v8];
  }
}

- (void)_registerSourceEndpoint:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBSWorkspace _registerSourceEndpoint:a2];
  }

  v7 = v5;
  v6 = [(FBSWorkspace *)self _scenesClientForEndpoint:v5];
}

- (void)_registerSourcePeer:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__FBSWorkspace__registerSourcePeer___block_invoke;
  v7[3] = &unk_1E76BCD60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v7];
}

void __36__FBSWorkspace__registerSourcePeer___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 73) == 1)
  {
    v2 = FBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __36__FBSWorkspace__registerSourcePeer___block_invoke_cold_2(a1, v2, v3, v4, v5, v6, v7, v8);
    }

    v9 = *(*(a1 + 32) + 24);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __36__FBSWorkspace__registerSourcePeer___block_invoke_191;
    v24[3] = &unk_1E76BCDB0;
    v25 = *(a1 + 40);
    [v9 performAfter:v24 withBlock:0.1];
    v10 = v25;
  }

  else
  {
    v11 = [FBSWorkspaceScenesClient alloc];
    v13 = *(a1 + 40);
    v12 = (a1 + 40);
    v14 = [(FBSWorkspaceScenesClient *)&v11->super.isa initWithPeer:v13 queue:*(*(v12 - 1) + 1) calloutQueue:*(*(v12 - 1) + 2) workspace:*(v12 - 1)];
    v10 = v14;
    if (v14)
    {
      v15 = [v14 identifier];
      v16 = FBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v15;
        _os_log_impl(&dword_1A2DBB000, v16, OS_LOG_TYPE_DEFAULT, "FBSWorkspace connected to peer : %@", buf, 0xCu);
      }

      [(FBSWorkspaceScenesClient *)v10 queue_activate];
    }

    else
    {
      v17 = FBLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __36__FBSWorkspace__registerSourcePeer___block_invoke_cold_1(v12, v17, v18, v19, v20, v21, v22, v23);
      }

      [*v12 invalidate];
    }
  }
}

- (void)_registerSource:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__FBSWorkspace__registerSource___block_invoke;
  v7[3] = &unk_1E76BCD60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v7];
}

void __32__FBSWorkspace__registerSource___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[73] == 1)
  {
    v3 = FBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) identifier];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "FBSWorkspace ignoring registration of source after invalidation : %@", &v6, 0xCu);
    }
  }

  else
  {
    v5 = *(a1 + 40);

    [v2 _queue_registerSource:v5];
  }
}

- (id)pseudoSceneWithIdentifier:(id)a3 specification:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBSWorkspace pseudoSceneWithIdentifier:a2 specification:?];
  }

  v9 = v8;
  if (!v8)
  {
    [FBSWorkspace pseudoSceneWithIdentifier:a2 specification:?];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PseudoScene:%@", v7];
  v11 = [FBSScene alloc];
  psuedoSceneUpdater = self->_psuedoSceneUpdater;
  v13 = [FBSSceneIdentityToken pseudoTokenWithIdentifier:v10];
  v14 = [FBSSceneIdentity identityForIdentifier:v10];
  v15 = [FBSSceneParameters parametersForSpecification:v9];
  v16 = +[FBSSceneHostHandle localHandle];
  v17 = [(FBSScene *)v11 _initWithUpdater:psuedoSceneUpdater identityToken:v13 identity:v14 parameters:v15 hostHandle:v16];

  return v17;
}

- (void)_queue_registerSource:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(BSServiceDispatchQueue *)self->_queue assertBarrierOnQueue];
  if (self->_queue_invalidated)
  {
    [FBSWorkspace _queue_registerSource:a2];
  }

  v6 = FBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEFAULT, "FBSWorkspace registering source: %@", &v10, 0xCu);
  }

  queue_identifierToScenesSource = self->_queue_identifierToScenesSource;
  v9 = [v5 identifier];
  [(NSMutableDictionary *)queue_identifierToScenesSource setObject:v5 forKey:v9];
}

- (void)_queue_unregisterSource:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(BSServiceDispatchQueue *)self->_queue assertBarrierOnQueue];
  v5 = FBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1A2DBB000, v5, OS_LOG_TYPE_DEFAULT, "FBSWorkspace unregistering source: %@", &v9, 0xCu);
  }

  queue_identifierToScenesSource = self->_queue_identifierToScenesSource;
  v8 = [v4 identifier];
  [(NSMutableDictionary *)queue_identifierToScenesSource removeObjectForKey:v8];
}

- (void)_calloutQueue_executeCalloutFromSource:(id)a3 withBlock:(id)a4
{
  v13 = a3;
  v7 = a4;
  if (!v7)
  {
    [FBSWorkspace _calloutQueue_executeCalloutFromSource:a2 withBlock:?];
  }

  v8 = v7;
  [(BSServiceQueue *)self->_callOutQueue assertBarrierOnQueue];
  v9 = [MEMORY[0x1E696AF00] currentThread];
  v10 = [v9 threadDictionary];

  v11 = [v10 objectForKey:@"FBSWorkspaceCalloutScenesSourceKey"];
  [v10 setObject:v13 forKey:@"FBSWorkspaceCalloutScenesSourceKey"];
  v12 = objc_autoreleasePoolPush();
  v8[2](v8);
  objc_autoreleasePoolPop(v12);
  if (v11)
  {
    [v10 setObject:v11 forKey:@"FBSWorkspaceCalloutScenesSourceKey"];
  }

  else
  {
    [v10 removeObjectForKey:@"FBSWorkspaceCalloutScenesSourceKey"];
  }
}

- (void)monitor:(id)a3 willLoseEndpoint:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = FBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A2DBB000, v5, OS_LOG_TYPE_DEFAULT, "FBSWorkspace lost endpoint : %@", &v6, 0xCu);
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSWorkspace *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = [off_1E76BC9B0 builderWithObject:self];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  queue = self->_queue;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __54__FBSWorkspace_descriptionBuilderWithMultilinePrefix___block_invoke;
  v34[3] = &unk_1E76BCD60;
  v34[4] = self;
  v7 = v5;
  v35 = v7;
  [(BSServiceDispatchQueue *)queue performAsyncAndWait:v34];
  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_219];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    v27 = v4;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = objc_opt_class();
          v16 = v14;
          if (v15)
          {
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }

          v19 = v17;

          v20 = [v19 instance];
          if (v20)
          {
            v21 = MEMORY[0x1E696AEC0];
            v22 = [v19 targetDescription];

            v18 = [v21 stringWithFormat:@"%@:%@", v22, v20];
            v19 = v22;
          }

          else
          {
            v18 = [v19 targetDescription];
          }

          v4 = v27;
        }

        else
        {
          v18 = [v14 description];
        }

        v23 = [v7 objectForKey:v14];
        v24 = [v23 allObjects];
        v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_225];

        [v29 appendArraySection:v25 withName:v18 multilinePrefix:v4 skipIfEmpty:0];
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v11);
  }

  return v29;
}

void __54__FBSWorkspace_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__FBSWorkspace_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v2[3] = &unk_1E76BDBF8;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __54__FBSWorkspace_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 scenes];
  if (v6)
  {
    [v5 setObject:v6 forKey:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
    [v5 setObject:v7 forKey:v8];
  }
}

uint64_t __54__FBSWorkspace_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v10 = [v5 compare:v4];
  }

  else
  {
    v7 = objc_opt_class();

    v5 = NSStringFromClass(v7);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 compare:v9];
  }

  return v10;
}

uint64_t __54__FBSWorkspace_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)succinctDescription
{
  v2 = [(FBSWorkspace *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

uint64_t __41__FBSWorkspace__scenesClientForEndpoint___block_invoke(uint64_t a1)
{
  v2 = [(FBSWorkspace *)*(a1 + 32) _queue_scenesClientForEndpoint:1 creatingIfNecessary:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)_queue_scenesClientForEndpoint:(int)a3 creatingIfNecessary:
{
  v5 = a2;
  if (a1)
  {
    [*(a1 + 8) assertBarrierOnQueue];
    v6 = [FBSWorkspaceScenesClient sourceIdentifierForHostEndpoint:v5];
    v7 = [*(a1 + 48) objectForKey:v6];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (!v11 && a3)
    {
      if ((*(a1 + 73) & 1) == 0)
      {
        v12 = [[FBSWorkspaceScenesClient alloc] initWithEndpoint:v5 queue:*(a1 + 8) calloutQueue:*(a1 + 16) workspace:a1];
        if (v12)
        {
          v11 = v12;
          v21 = [*(a1 + 48) objectForKey:v6];
          v22 = objc_opt_class();
          v23 = v21;
          if (v22)
          {
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          if (v11 != v25)
          {
            [FBSWorkspace _queue_scenesClientForEndpoint:? creatingIfNecessary:?];
          }

          [FBSWorkspace _queue_scenesClientForEndpoint:v11 creatingIfNecessary:v5];
          goto LABEL_15;
        }

        v13 = FBLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(FBSWorkspace *)v5 _queue_scenesClientForEndpoint:v13 creatingIfNecessary:v14, v15, v16, v17, v18, v19];
        }
      }

      v11 = 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (void)_initWithCoupler:(uint64_t)a3 options:.cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"coupler", v7, v9];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"FBSWorkspace.m";
    v22 = 1024;
    v23 = 228;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithCoupler:(char *)a1 options:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[options delegate]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithCoupler:(char *)a1 options:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"options", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithCoupler:(const char *)a1 options:.cold.4(const char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, @"coupler", v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_invalidateWithCompletion:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this instance may not invalidate"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)_findDomainSpecification
{
  OUTLINED_FUNCTION_9_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_registerSourceEndpoint:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"endpoint", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)pseudoSceneWithIdentifier:(void *)a1 specification:(char *)a2 .cold.1(void *a1, char *a2)
{
  v3 = [a1 stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"specification", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)pseudoSceneWithIdentifier:(char *)a1 specification:.cold.2(char *a1)
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

- (void)_queue_registerSource:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"after invalidation, we should be killing all internal registration attempts before we get here"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_calloutQueue_executeCalloutFromSource:(char *)a1 withBlock:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"callout", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_queue_scenesClientForEndpoint:(char *)a1 creatingIfNecessary:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"source must be registered immediately"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_queue_scenesClientForEndpoint:(uint64_t)a1 creatingIfNecessary:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = FBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_impl(&dword_1A2DBB000, v4, OS_LOG_TYPE_DEFAULT, "FBSWorkspace connected to endpoint : %@", &v5, 0xCu);
  }

  [(FBSWorkspaceScenesClient *)a1 queue_activate];
}

@end