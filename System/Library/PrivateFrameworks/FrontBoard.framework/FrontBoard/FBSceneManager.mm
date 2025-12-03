@interface FBSceneManager
+ (FBSceneManager)sharedInstance;
+ (id)keyboardScene;
+ (id)observeKeyboardSceneAvailability:(id)availability;
+ (void)_clearKeyboardScene;
+ (void)setKeyboardScene:(id)scene;
- (FBSceneManager)init;
- (id)_initWithProcessManager:(id)manager;
- (id)createLegacySceneFromRemnant:(id)remnant withSettings:(id)settings transitionContext:(id)context;
- (id)createSceneWithDefinition:(id)definition initialParameters:(id)parameters;
- (id)createSceneWithIdentifier:(id)identifier parameters:(id)parameters clientProvider:(id)provider transitionContext:(id)context;
- (id)newSceneIdentityTokenForIdentity:(id)identity;
- (id)sceneFromIdentityTokenStringRepresentation:(id)representation;
- (id)scenesPassingTest:(id)test;
- (void)dealloc;
- (void)destroyScene:(id)scene withTransitionContext:(id)context;
- (void)enumerateScenesWithBlock:(id)block;
@end

@implementation FBSceneManager

+ (FBSceneManager)sharedInstance
{
  v2 = +[FBProcessManager sharedInstance];
  v3 = [v2 legacySceneManagerCreatingIfNecessary:1];

  return v3;
}

+ (id)keyboardScene
{
  BSDispatchQueueAssertMain();
  v2 = __fbKeyboardScene;

  return v2;
}

+ (void)_clearKeyboardScene
{
  v2 = __fbKeyboardScene;
  __fbKeyboardScene = 0;
}

+ (void)setKeyboardScene:(id)scene
{
  v22 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (__fbKeyboardScene)
  {
    [(FBSceneManager(Keyboard) *)a2 setKeyboardScene:self];
  }

  v7 = sceneCopy;
  if (!sceneCopy)
  {
    [FBSceneManager(Keyboard) setKeyboardScene:a2];
  }

  BSDispatchQueueAssertMain();
  if (!__fbKeyboardScene)
  {
    objc_storeStrong(&__fbKeyboardScene, scene);
    v8 = [__availabilityObserverMap copy];
    [__availabilityObserverMap removeAllObjects];
    v9 = __availabilityObserverMap;
    __availabilityObserverMap = 0;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    keyEnumerator = [v8 keyEnumerator];
    v11 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v15 = [v8 objectForKey:*(*(&v17 + 1) + 8 * i)];
          v15[2](v15, __fbKeyboardScene);
        }

        v12 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)observeKeyboardSceneAvailability:(id)availability
{
  availabilityCopy = availability;
  if (!availabilityCopy)
  {
    [FBSceneManager(Keyboard) observeKeyboardSceneAvailability:a2];
  }

  v5 = availabilityCopy;
  BSDispatchQueueAssertMain();
  if (__fbKeyboardScene)
  {
    v5[2](v5);
    v6 = 0;
  }

  else
  {
    if (!__availabilityObserverMap)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:1];
      v8 = __availabilityObserverMap;
      __availabilityObserverMap = v7;
    }

    v9 = objc_alloc(MEMORY[0x1E698E778]);
    v6 = [v9 initWithIdentifier:@"keyboardAvailableObserverToken" forReason:@"observation" queue:MEMORY[0x1E69E96A0] invalidationBlock:&__block_literal_global_3];
    v10 = __availabilityObserverMap;
    v11 = MEMORY[0x1AC572E40](v5);
    [v10 setObject:v11 forKey:v6];
  }

  return v6;
}

- (FBSceneManager)init
{
  v3 = +[FBSceneManager sharedInstance];

  return v3;
}

- (id)_initWithProcessManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = FBSceneManager;
  v5 = [(FBSceneManager *)&v9 init];
  if (v5)
  {
    v6 = [[FBSceneWorkspace alloc] _initWithProcessManager:managerCopy identifier:@"FBSceneManager"];
    workspace = v5->_workspace;
    v5->_workspace = v6;
  }

  return v5;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBSceneManager should not deallocate"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    v7 = @"FBSceneManager.m";
    v8 = 1024;
    v9 = 47;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enumerateScenesWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allScenes = [(FBSceneWorkspace *)self->_workspace allScenes];
  v6 = [allScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(allScenes);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 0;
      blockCopy[2](blockCopy, v10, &v12);
      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)scenesPassingTest:(id)test
{
  testCopy = test;
  v5 = [MEMORY[0x1E695DFA8] set];
  if (testCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__FBSceneManager_scenesPassingTest___block_invoke;
    v7[3] = &unk_1E783CBD0;
    v9 = testCopy;
    v8 = v5;
    [(FBSceneManager *)self enumerateScenesWithBlock:v7];
  }

  return v5;
}

void __36__FBSceneManager_scenesPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)sceneFromIdentityTokenStringRepresentation:(id)representation
{
  representationCopy = representation;
  if (!representationCopy)
  {
    [FBSceneManager sceneFromIdentityTokenStringRepresentation:a2];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__FBSceneManager_sceneFromIdentityTokenStringRepresentation___block_invoke;
  v9[3] = &unk_1E783CBF8;
  v6 = representationCopy;
  v10 = v6;
  v11 = &v12;
  [(FBSceneManager *)self enumerateScenesWithBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__FBSceneManager_sceneFromIdentityTokenStringRepresentation___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 identityToken];
  v7 = [v6 stringRepresentation];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)createSceneWithDefinition:(id)definition initialParameters:(id)parameters
{
  definitionCopy = definition;
  parametersCopy = parameters;
  clientIdentity = [definitionCopy clientIdentity];
  if (([clientIdentity isLocal] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69C75F0], "identityOfCurrentProcess"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", clientIdentity), v9, v10))
  {
    domain = [(FBWorkspaceEventDispatcher *)self->_workspace domain];
    syncLocalSceneClientProvider = [domain syncLocalSceneClientProvider];
  }

  else
  {
    domain = [(FBWorkspaceEventDispatcher *)self->_workspace domain];
    processIdentity = [clientIdentity processIdentity];
    v14 = [domain processForIdentity:processIdentity];
    syncLocalSceneClientProvider = [v14 workspace];
  }

  if (syncLocalSceneClientProvider)
  {
    settings = [parametersCopy settings];
    clientSettings = [parametersCopy clientSettings];
    v17 = [(FBSceneManager *)self _createSceneWithDefinition:definitionCopy settings:settings initialClientSettings:clientSettings transitionContext:0 fromRemnant:0 usingClientProvider:syncLocalSceneClientProvider completion:0];
  }

  else
  {
    v18 = FBLogScene();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(FBSceneManager *)definitionCopy createSceneWithDefinition:clientIdentity initialParameters:v18];
    }

    v17 = 0;
  }

  return v17;
}

- (id)createSceneWithIdentifier:(id)identifier parameters:(id)parameters clientProvider:(id)provider transitionContext:(id)context
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  providerCopy = provider;
  contextCopy = context;
  v15 = providerCopy;
  if (!v15)
  {
    [FBSceneManager createSceneWithIdentifier:a2 parameters:? clientProvider:? transitionContext:?];
  }

  v16 = v15;
  if (([v15 conformsToProtocol:&unk_1F1C19098] & 1) == 0)
  {
    [FBSceneManager createSceneWithIdentifier:a2 parameters:? clientProvider:? transitionContext:?];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = MEMORY[0x1E699FBD8];
  if (isKindOfClass)
  {
    process = [v16 process];
    identity = [process identity];
    localIdentity = [v18 identityForProcessIdentity:identity];
  }

  else
  {
    localIdentity = [MEMORY[0x1E699FBD8] localIdentity];
  }

  definition = [MEMORY[0x1E699FB50] definition];
  v23 = [MEMORY[0x1E699FC10] identityForIdentifier:identifierCopy];
  [definition setIdentity:v23];

  [definition setClientIdentity:localIdentity];
  specification = [parametersCopy specification];
  [definition setSpecification:specification];

  settings = [parametersCopy settings];
  clientSettings = [parametersCopy clientSettings];
  v27 = [(FBSceneManager *)self _createSceneWithDefinition:definition settings:settings initialClientSettings:clientSettings transitionContext:contextCopy fromRemnant:0 usingClientProvider:v16 completion:0];

  return v27;
}

- (id)createLegacySceneFromRemnant:(id)remnant withSettings:(id)settings transitionContext:(id)context
{
  remnantCopy = remnant;
  settingsCopy = settings;
  contextCopy = context;
  v12 = remnantCopy;
  NSClassFromString(&cfstr_Fbsceneremnant_1.isa);
  if (!v12)
  {
    [FBSceneManager createLegacySceneFromRemnant:a2 withSettings:? transitionContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneManager createLegacySceneFromRemnant:a2 withSettings:? transitionContext:?];
  }

  if ([v12 _hasBeenInvalidated])
  {
    [FBSceneManager createLegacySceneFromRemnant:a2 withSettings:? transitionContext:?];
  }

  _workspace = [v12 _workspace];
  if (_workspace)
  {
    _assertion = [v12 _assertion];
    isValid = [_assertion isValid];

    if (isValid)
    {
      definition = [v12 definition];
      _clientSettings = [v12 _clientSettings];
      v18 = [(FBSceneManager *)self _createSceneWithDefinition:definition settings:settingsCopy initialClientSettings:_clientSettings transitionContext:contextCopy fromRemnant:v12 usingClientProvider:_workspace completion:0];

      if ([v18 isValid])
      {
        goto LABEL_9;
      }
    }
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (void)destroyScene:(id)scene withTransitionContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneManager destroyScene:withTransitionContext:]");
  }

  if (!sceneCopy)
  {
    [FBSceneManager destroyScene:a2 withTransitionContext:?];
  }

  v8 = [(FBSceneManager *)self sceneWithIdentifier:?];
  v9 = v8;
  if (v8)
  {
    if (([(FBScene *)v8 _isLegacy]& 1) == 0)
    {
      [FBSceneManager destroyScene:a2 withTransitionContext:?];
    }

    [v9 deactivateWithTransitionContext:contextCopy];
  }
}

- (id)newSceneIdentityTokenForIdentity:(id)identity
{
  workspace = self->_workspace;
  identifier = [identity identifier];
  v5 = [(FBSceneWorkspace *)workspace sceneIdentityTokenForIdentifier:identifier];

  return v5;
}

- (void)sceneFromIdentityTokenStringRepresentation:(char *)a1 .cold.1(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"tokenString", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)createSceneWithDefinition:(NSObject *)a3 initialParameters:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 identity];
  v6 = [a2 processIdentity];
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_ERROR, "scene %{public}@ cannot be created because there is no running process for %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)createSceneWithIdentifier:(char *)a1 parameters:clientProvider:transitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(FBSceneClientProvider)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)createSceneWithIdentifier:(char *)a1 parameters:clientProvider:transitionContext:.cold.2(char *a1)
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

- (void)createLegacySceneFromRemnant:(char *)a1 withSettings:transitionContext:.cold.1(char *a1)
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

- (void)createLegacySceneFromRemnant:(char *)a1 withSettings:transitionContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot create a scene from an invalidated remnant"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    v7 = @"FBSceneManager.m";
    v8 = 1024;
    v9 = 208;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)createLegacySceneFromRemnant:(char *)a1 withSettings:transitionContext:.cold.3(char *a1)
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

- (void)destroyScene:(char *)a1 withTransitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[scene _isLegacy]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)destroyScene:(char *)a1 withTransitionContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"sceneIdentifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end