@interface FBSProcessAssertion
- (BOOL)isActivated;
- (FBSProcess)process;
- (FBSProcessAssertion)initWithName:(id)name process:(id)process policy:(id)policy;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FBSProcessAssertion

- (FBSProcessAssertion)initWithName:(id)name process:(id)process policy:(id)policy
{
  nameCopy = name;
  processCopy = process;
  policyCopy = policy;
  v12 = processCopy;
  if (!v12)
  {
    [FBSProcessAssertion initWithName:a2 process:? policy:?];
  }

  v13 = v12;
  if (([v12 conformsToProtocol:&unk_1F15BB948] & 1) == 0)
  {
    [FBSProcessAssertion initWithName:a2 process:? policy:?];
  }

  v14 = nameCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v14)
  {
    [FBSProcessAssertion initWithName:a2 process:? policy:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSProcessAssertion initWithName:a2 process:? policy:?];
  }

  v15 = policyCopy;
  NSClassFromString(&cfstr_Fbsprocessexec_1.isa);
  if (!v15)
  {
    [FBSProcessAssertion initWithName:a2 process:? policy:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSProcessAssertion initWithName:a2 process:? policy:?];
  }

  v21.receiver = self;
  v21.super_class = FBSProcessAssertion;
  v16 = [(FBSProcessAssertion *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_policy, policy);
    objc_storeWeak(&v17->_process, v13);
    v18 = [v14 copy];
    name = v17->_name;
    v17->_name = v18;
  }

  return v17;
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
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_invalidated == YES", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (BOOL)isActivated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activationCount != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)activate
{
  v55 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_invalidated)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_invalidated == NO"];
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v44 = v17;
      v45 = 2114;
      v46 = v19;
      v47 = 2048;
      v48 = obj;
      v49 = 2114;
      v50 = @"FBSProcessAssertion.m";
      v51 = 1024;
      v52 = 63;
      v53 = 2114;
      v54 = v14;
      _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
  }

  v3 = obj->_policy;
  NSClassFromString(&cfstr_Fbsprocessexec_1.isa);
  if (!v3)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v44 = v24;
      v45 = 2114;
      v46 = v26;
      v47 = 2048;
      v48 = obj;
      v49 = 2114;
      v50 = @"FBSProcessAssertion.m";
      v51 = 1024;
      v52 = 64;
      v53 = 2114;
      v54 = v21;
      _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v21;
    [v21 UTF8String];
    _bs_set_crash_log_message();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSProcessExecutionPolicyClass]"];
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      v44 = v31;
      v45 = 2114;
      v46 = v33;
      v47 = 2048;
      v48 = obj;
      v49 = 2114;
      v50 = @"FBSProcessAssertion.m";
      v51 = 1024;
      v52 = 64;
      v53 = 2114;
      v54 = v28;
      _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v34 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
  }

  v4 = obj;
  activationCount = obj->_activationCount;
  obj->_activationCount = activationCount + 1;
  if (!activationCount)
  {
    if (obj->_assertion)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_assertion == nil"];
      v36 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v38 = NSStringFromSelector(a2);
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138544642;
        v44 = v38;
        v45 = 2114;
        v46 = v40;
        v47 = 2048;
        v48 = obj;
        v49 = 2114;
        v50 = @"FBSProcessAssertion.m";
        v51 = 1024;
        v52 = 68;
        v53 = 2114;
        v54 = v35;
        _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v41 = v35;
      [v35 UTF8String];
      _bs_set_crash_log_message();
    }

    v6 = objc_alloc(MEMORY[0x1E698D038]);
    WeakRetained = objc_loadWeakRetained(&obj->_process);
    v8 = [WeakRetained pid];
    strategy = [(FBSProcessExecutionPolicy *)obj->_policy strategy];
    flags = [strategy flags];
    strategy2 = [(FBSProcessExecutionPolicy *)obj->_policy strategy];
    v12 = [v6 initWithPID:v8 flags:flags reason:objc_msgSend(strategy2 name:"reason") withHandler:{obj->_name, 0}];
    assertion = obj->_assertion;
    obj->_assertion = v12;

    v4 = obj;
  }

  objc_sync_exit(v4);
}

- (void)deactivate
{
  v27 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  v3 = obj;
  if (!obj->_invalidated)
  {
    activationCount = obj->_activationCount;
    if (!activationCount)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_activationCount > 0"];
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v16 = v10;
        v17 = 2114;
        v18 = v12;
        v19 = 2048;
        v20 = obj;
        v21 = 2114;
        v22 = @"FBSProcessAssertion.m";
        v23 = 1024;
        v24 = 79;
        v25 = 2114;
        v26 = v7;
        _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v7;
      [v7 UTF8String];
      _bs_set_crash_log_message();
    }

    v5 = activationCount - 1;
    obj->_activationCount = v5;
    if (!v5)
    {
      [(BKSProcessAssertion *)obj->_assertion invalidate];
      assertion = obj->_assertion;
      obj->_assertion = 0;

      v3 = obj;
    }
  }

  objc_sync_exit(v3);
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  obj->_activationCount = 0;
  obj->_invalidated = 1;
  objc_storeWeak(&obj->_process, 0);
  [(BKSProcessAssertion *)obj->_assertion invalidate];
  assertion = obj->_assertion;
  obj->_assertion = 0;

  objc_sync_exit(obj);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSProcessAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:@"name"];
  activationCount = self->_activationCount;
  if (activationCount > 1)
  {
    v7 = [v3 appendUnsignedInteger:? withName:?];
  }

  else
  {
    v6 = [v3 appendBool:activationCount == 1 withName:@"active"];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSProcessAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSProcessAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__FBSProcessAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __61__FBSProcessAssertion_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) strategy];
  v4 = [v2 appendObject:v3 withName:@"strategy"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"bksAssertion" skipIfNil:1];
}

- (FBSProcess)process
{
  WeakRetained = objc_loadWeakRetained(&self->_process);

  return WeakRetained;
}

- (void)initWithName:(char *)a1 process:policy:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(FBSProcess)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithName:(char *)a1 process:policy:.cold.2(char *a1)
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

- (void)initWithName:(char *)a1 process:policy:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSProcessExecutionPolicyClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithName:(char *)a1 process:policy:.cold.4(char *a1)
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

- (void)initWithName:(char *)a1 process:policy:.cold.5(char *a1)
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

- (void)initWithName:(char *)a1 process:policy:.cold.6(char *a1)
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