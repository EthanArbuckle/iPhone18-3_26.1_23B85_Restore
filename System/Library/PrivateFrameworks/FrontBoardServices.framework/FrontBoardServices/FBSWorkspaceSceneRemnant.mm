@interface FBSWorkspaceSceneRemnant
- (FBSWorkspaceSceneRemnant)init;
- (FBSWorkspaceSceneRemnant)initWithBSXPCCoder:(id)coder;
- (id)_initWithIdentity:(id)identity parameters:(id)parameters;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation FBSWorkspaceSceneRemnant

- (FBSWorkspaceSceneRemnant)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBSWorkspaceSceneRemnant"];
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
    v15 = @"FBSWorkspaceSceneRemnant.m";
    v16 = 1024;
    v17 = 25;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithIdentity:(id)identity parameters:(id)parameters
{
  identityCopy = identity;
  parametersCopy = parameters;
  v9 = identityCopy;
  NSClassFromString(&cfstr_Fbssceneidenti_0.isa);
  if (!v9)
  {
    [FBSWorkspaceSceneRemnant _initWithIdentity:a2 parameters:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSWorkspaceSceneRemnant _initWithIdentity:a2 parameters:?];
  }

  if (([v9 isValid] & 1) == 0)
  {
    [FBSWorkspaceSceneRemnant _initWithIdentity:a2 parameters:?];
  }

  internalWorkspaceIdentifier = [v9 internalWorkspaceIdentifier];
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!internalWorkspaceIdentifier)
  {
    [FBSWorkspaceSceneRemnant _initWithIdentity:a2 parameters:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSWorkspaceSceneRemnant _initWithIdentity:a2 parameters:?];
  }

  v11 = parametersCopy;
  NSClassFromString(&cfstr_Fbssceneparame.isa);
  if (!v11)
  {
    [FBSWorkspaceSceneRemnant _initWithIdentity:a2 parameters:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSWorkspaceSceneRemnant _initWithIdentity:a2 parameters:?];
  }

  v18.receiver = self;
  v18.super_class = FBSWorkspaceSceneRemnant;
  v12 = [(FBSWorkspaceSceneRemnant *)&v18 init];
  if (v12)
  {
    v13 = [v9 copy];
    identity = v12->_identity;
    v12->_identity = v13;

    v15 = [v11 copy];
    parameters = v12->_parameters;
    v12->_parameters = v15;
  }

  return v12;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  identity = self->_identity;
  coderCopy = coder;
  [coderCopy encodeObject:identity forKey:@"i"];
  [coderCopy encodeObject:self->_parameters forKey:@"p"];
}

- (FBSWorkspaceSceneRemnant)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FBSWorkspaceSceneRemnant;
  v5 = [(FBSWorkspaceSceneRemnant *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    parameters = v5->_parameters;
    v5->_parameters = v8;
  }

  return v5;
}

- (void)_initWithIdentity:(char *)a1 parameters:.cold.1(char *a1)
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

- (void)_initWithIdentity:(char *)a1 parameters:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[identity isValid]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithIdentity:(char *)a1 parameters:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithIdentity:(char *)a1 parameters:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneParametersClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithIdentity:(char *)a1 parameters:.cold.5(char *a1)
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

- (void)_initWithIdentity:(char *)a1 parameters:.cold.6(char *a1)
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

- (void)_initWithIdentity:(char *)a1 parameters:.cold.7(char *a1)
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

@end