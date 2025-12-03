@interface FBWorkspaceSceneRequest
- (FBWorkspaceSceneRequest)initWithClientIdentity:(id)identity targetIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (FBWorkspaceSceneRequest)initWithTargetIdentifier:(id)identifier;
- (FBWorkspaceSceneRequest)initWithTargetIdentifier:(id)identifier actions:(id)actions completion:(id)completion;
- (void)_respondWithScene:(id)scene error:(id)error;
- (void)dealloc;
- (void)invalidateWithError:(id)error;
- (void)observeScene:(id)scene;
- (void)respondWithScene:(id)scene;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidInvalidate:(id)invalidate;
@end

@implementation FBWorkspaceSceneRequest

- (FBWorkspaceSceneRequest)initWithTargetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceSceneRequest initWithTargetIdentifier:a2];
    }
  }

  v10.receiver = self;
  v10.super_class = FBWorkspaceSceneRequest;
  v6 = [(FBWorkspaceSceneRequest *)&v10 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    targetIdentifier = v6->_targetIdentifier;
    v6->_targetIdentifier = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (FBWorkspaceSceneRequest)initWithClientIdentity:(id)identity targetIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  identityCopy = identity;
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  v15 = identityCopy;
  if (!v15)
  {
    [FBWorkspaceSceneRequest initWithClientIdentity:a2 targetIdentifier:? options:? completion:?];
  }

  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspaceSceneRequest initWithClientIdentity:v16 targetIdentifier:a2 options:? completion:?];
  }

  v17 = identifierCopy;
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceSceneRequest initWithClientIdentity:v17 targetIdentifier:a2 options:? completion:?];
    }
  }

  v18 = optionsCopy;
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceSceneRequest initWithClientIdentity:v18 targetIdentifier:a2 options:? completion:?];
    }
  }

  if (!completionCopy)
  {
    [FBWorkspaceSceneRequest initWithClientIdentity:a2 targetIdentifier:? options:? completion:?];
  }

  v19 = [(FBWorkspaceSceneRequest *)self initWithTargetIdentifier:v17];
  if (v19)
  {
    v20 = [v16 copy];
    clientIdentity = v19->_clientIdentity;
    v19->_clientIdentity = v20;

    objc_storeStrong(&v19->_options, options);
    v22 = [completionCopy copy];
    lock_completion = v19->_lock_completion;
    v19->_lock_completion = v22;
  }

  return v19;
}

- (FBWorkspaceSceneRequest)initWithTargetIdentifier:(id)identifier actions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  v10 = [(FBWorkspaceSceneRequest *)self initWithTargetIdentifier:identifier];
  if (v10)
  {
    v11 = [actionsCopy copy];
    actions = v10->_actions;
    v10->_actions = v11;

    v13 = [completionCopy copy];
    lock_completion = v10->_lock_completion;
    v10->_lock_completion = v13;
  }

  return v10;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBWorkspaceSceneRequest deallocated without firing its completion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    v7 = 138544642;
    selfCopy = self;
    OUTLINED_FUNCTION_0_0();
    v9 = @"FBWorkspaceSceneRequest.m";
    v10 = 1024;
    v11 = 69;
    v12 = v5;
    v13 = v2;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)observeScene:(id)scene
{
  object = scene;
  if ([object isValid] && (objc_msgSend(object, "isActive") & 1) == 0)
  {
    [object addObserver:self];
    v5 = objc_opt_class();
    objc_setAssociatedObject(object, v5, self, 1);
  }

  else if ([object isActive])
  {
    [(FBWorkspaceSceneRequest *)self respondWithScene:object];
  }

  else
  {
    v4 = FBSceneErrorCreate(2uLL, @"scene already invalidated", 0);
    [(FBWorkspaceSceneRequest *)self invalidateWithError:v4];
  }
}

- (void)respondWithScene:(id)scene
{
  sceneCopy = scene;
  actions = self->_actions;
  v7 = sceneCopy;
  if (v7 || !actions)
  {
    NSClassFromString(&cfstr_Fbscene.isa);
    if (!v7)
    {
      [FBWorkspaceSceneRequest respondWithScene:a2];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceSceneRequest respondWithScene:a2];
    }
  }

  [(FBWorkspaceSceneRequest *)self _respondWithScene:v7 error:0];
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  NSClassFromString(&cfstr_Nserror.isa);
  if (!errorCopy)
  {
    [FBWorkspaceSceneRequest invalidateWithError:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspaceSceneRequest invalidateWithError:a2];
  }

  [(FBWorkspaceSceneRequest *)self _respondWithScene:0 error:errorCopy];
}

- (void)_respondWithScene:(id)scene error:(id)error
{
  sceneCopy = scene;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  lock_responded = self->_lock_responded;
  v10 = MEMORY[0x1AC572E40](self->_lock_completion);
  lock_completion = self->_lock_completion;
  self->_lock_completion = 0;

  self->_lock_responded = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_responded)
  {
    errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to respond to previously invalidated request with scene=%@ error=%@", sceneCopy, errorCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBWorkspaceSceneRequest *)a2 _respondWithScene:errorCopy error:?];
    }

    [errorCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
  }

  else
  {
    if (errorCopy)
    {
      v12 = FBLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(FBWorkspaceSceneRequest *)self _respondWithScene:errorCopy error:v12];
      }
    }

    if (v10)
    {
      (v10)[2](v10, sceneCopy, errorCopy);
    }
  }
}

- (void)sceneDidActivate:(id)activate
{
  object = activate;
  [(FBWorkspaceSceneRequest *)self respondWithScene:object];
  [object removeObserver:self];
  v4 = objc_opt_class();
  objc_setAssociatedObject(object, v4, 0, 1);
}

- (void)sceneDidInvalidate:(id)invalidate
{
  object = invalidate;
  v4 = FBSceneErrorCreate(2uLL, @"scene explicitly invalidated", 0);
  [(FBWorkspaceSceneRequest *)self invalidateWithError:v4];

  [object removeObserver:self];
  v5 = objc_opt_class();
  objc_setAssociatedObject(object, v5, 0, 1);
}

- (void)initWithTargetIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(void *)a1 targetIdentifier:(const char *)a2 options:completion:.cold.1(void *a1, const char *a2)
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
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"clientIdentity", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_1_0();
    v15 = @"FBWorkspaceSceneRequest.m";
    v16 = 1024;
    v17 = 45;
    v18 = v12;
    v19 = v8;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v14);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(void *)a1 targetIdentifier:(const char *)a2 options:completion:.cold.2(void *a1, const char *a2)
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
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"targetIdentifier", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_1_0();
    v15 = @"FBWorkspaceSceneRequest.m";
    v16 = 1024;
    v17 = 46;
    v18 = v12;
    v19 = v8;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v14);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(void *)a1 targetIdentifier:(const char *)a2 options:completion:.cold.3(void *a1, const char *a2)
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
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"options", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_1_0();
    v15 = @"FBWorkspaceSceneRequest.m";
    v16 = 1024;
    v17 = 47;
    v18 = v12;
    v19 = v8;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v14);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(char *)a1 targetIdentifier:options:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"completion", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(const char *)a1 targetIdentifier:options:completion:.cold.5(const char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v13 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"clientIdentity", v12, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)respondWithScene:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSceneClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)respondWithScene:(char *)a1 .cold.2(char *a1)
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

- (void)invalidateWithError:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSErrorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidateWithError:(char *)a1 .cold.2(char *a1)
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

- (void)_respondWithScene:(NSObject *)a3 error:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 descriptionWithMultilinePrefix:0];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_ERROR, "Request for workspace %{public}@ failed: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_respondWithScene:(uint64_t)a3 error:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v10 = 138544642;
  v11 = v4;
  OUTLINED_FUNCTION_0_0();
  v12 = @"FBWorkspaceSceneRequest.m";
  v13 = 1024;
  v14 = 121;
  v15 = v7;
  v16 = a3;
  OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10);

  v9 = *MEMORY[0x1E69E9840];
}

@end