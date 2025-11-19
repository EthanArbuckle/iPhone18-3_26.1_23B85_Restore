@interface FBSceneManager
+ (FBSceneManager)sharedInstance;
+ (id)keyboardScene;
+ (id)observeKeyboardSceneAvailability:(id)a3;
+ (void)_clearKeyboardScene;
+ (void)setKeyboardScene:(id)a3;
- (FBSceneManager)init;
- (id)_initWithProcessManager:(id)a3;
- (id)createLegacySceneFromRemnant:(id)a3 withSettings:(id)a4 transitionContext:(id)a5;
- (id)createSceneWithDefinition:(id)a3 initialParameters:(id)a4;
- (id)createSceneWithIdentifier:(id)a3 parameters:(id)a4 clientProvider:(id)a5 transitionContext:(id)a6;
- (id)newSceneIdentityTokenForIdentity:(id)a3;
- (id)sceneFromIdentityTokenStringRepresentation:(id)a3;
- (id)scenesPassingTest:(id)a3;
- (void)dealloc;
- (void)destroyScene:(id)a3 withTransitionContext:(id)a4;
- (void)enumerateScenesWithBlock:(id)a3;
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

+ (void)setKeyboardScene:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (__fbKeyboardScene)
  {
    [(FBSceneManager(Keyboard) *)a2 setKeyboardScene:a1];
  }

  v7 = v6;
  if (!v6)
  {
    [FBSceneManager(Keyboard) setKeyboardScene:a2];
  }

  BSDispatchQueueAssertMain();
  if (!__fbKeyboardScene)
  {
    objc_storeStrong(&__fbKeyboardScene, a3);
    v8 = [__availabilityObserverMap copy];
    [__availabilityObserverMap removeAllObjects];
    v9 = __availabilityObserverMap;
    __availabilityObserverMap = 0;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v8 keyEnumerator];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [v8 objectForKey:*(*(&v17 + 1) + 8 * i)];
          v15[2](v15, __fbKeyboardScene);
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)observeKeyboardSceneAvailability:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [FBSceneManager(Keyboard) observeKeyboardSceneAvailability:a2];
  }

  v5 = v4;
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

- (id)_initWithProcessManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FBSceneManager;
  v5 = [(FBSceneManager *)&v9 init];
  if (v5)
  {
    v6 = [[FBSceneWorkspace alloc] _initWithProcessManager:v4 identifier:@"FBSceneManager"];
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
    NSStringFromSelector(a1);
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

- (void)enumerateScenesWithBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(FBSceneWorkspace *)self->_workspace allScenes];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 0;
      v4[2](v4, v10, &v12);
      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)scenesPassingTest:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__FBSceneManager_scenesPassingTest___block_invoke;
    v7[3] = &unk_1E783CBD0;
    v9 = v4;
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

- (id)sceneFromIdentityTokenStringRepresentation:(id)a3
{
  v5 = a3;
  if (!v5)
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
  v6 = v5;
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

- (id)createSceneWithDefinition:(id)a3 initialParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 clientIdentity];
  if (([v8 isLocal] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69C75F0], "identityOfCurrentProcess"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", v8), v9, v10))
  {
    v11 = [(FBWorkspaceEventDispatcher *)self->_workspace domain];
    v12 = [v11 syncLocalSceneClientProvider];
  }

  else
  {
    v11 = [(FBWorkspaceEventDispatcher *)self->_workspace domain];
    v13 = [v8 processIdentity];
    v14 = [v11 processForIdentity:v13];
    v12 = [v14 workspace];
  }

  if (v12)
  {
    v15 = [v7 settings];
    v16 = [v7 clientSettings];
    v17 = [(FBSceneManager *)self _createSceneWithDefinition:v6 settings:v15 initialClientSettings:v16 transitionContext:0 fromRemnant:0 usingClientProvider:v12 completion:0];
  }

  else
  {
    v18 = FBLogScene();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(FBSceneManager *)v6 createSceneWithDefinition:v8 initialParameters:v18];
    }

    v17 = 0;
  }

  return v17;
}

- (id)createSceneWithIdentifier:(id)a3 parameters:(id)a4 clientProvider:(id)a5 transitionContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v13;
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
    v19 = [v16 process];
    v20 = [v19 identity];
    v21 = [v18 identityForProcessIdentity:v20];
  }

  else
  {
    v21 = [MEMORY[0x1E699FBD8] localIdentity];
  }

  v22 = [MEMORY[0x1E699FB50] definition];
  v23 = [MEMORY[0x1E699FC10] identityForIdentifier:v11];
  [v22 setIdentity:v23];

  [v22 setClientIdentity:v21];
  v24 = [v12 specification];
  [v22 setSpecification:v24];

  v25 = [v12 settings];
  v26 = [v12 clientSettings];
  v27 = [(FBSceneManager *)self _createSceneWithDefinition:v22 settings:v25 initialClientSettings:v26 transitionContext:v14 fromRemnant:0 usingClientProvider:v16 completion:0];

  return v27;
}

- (id)createLegacySceneFromRemnant:(id)a3 withSettings:(id)a4 transitionContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
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

  v13 = [v12 _workspace];
  if (v13)
  {
    v14 = [v12 _assertion];
    v15 = [v14 isValid];

    if (v15)
    {
      v16 = [v12 definition];
      v17 = [v12 _clientSettings];
      v18 = [(FBSceneManager *)self _createSceneWithDefinition:v16 settings:v10 initialClientSettings:v17 transitionContext:v11 fromRemnant:v12 usingClientProvider:v13 completion:0];

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

- (void)destroyScene:(id)a3 withTransitionContext:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneManager destroyScene:withTransitionContext:]");
  }

  if (!v10)
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

    [v9 deactivateWithTransitionContext:v7];
  }
}

- (id)newSceneIdentityTokenForIdentity:(id)a3
{
  workspace = self->_workspace;
  v4 = [a3 identifier];
  v5 = [(FBSceneWorkspace *)workspace sceneIdentityTokenForIdentifier:v4];

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