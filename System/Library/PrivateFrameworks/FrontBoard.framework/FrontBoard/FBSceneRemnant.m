@interface FBSceneRemnant
- (FBSceneRemnant)init;
- (FBWorkspace)_workspace;
- (NSString)description;
- (id)_initWithIdentity:(id)a3 client:(id)a4 workspace:(id)a5 parameters:(id)a6 assertionQueue:(id)a7 assertion:(id)a8;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FBSceneRemnant

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBSceneRemnant must be invalidated before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_12();
    v6 = NSStringFromClass(v5);
    v7 = 138544642;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"FBSceneRemnant.m";
    v15 = 1024;
    v16 = 28;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (FBSceneRemnant)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBSceneRemnant"];
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
    v16 = @"FBSceneRemnant.m";
    v17 = 1024;
    v18 = 34;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidated signal])
  {
    assertionQueue = self->_assertionQueue;
    if (assertionQueue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__FBSceneRemnant_invalidate__block_invoke;
      block[3] = &unk_1E783B580;
      block[4] = self;
      dispatch_async_and_wait(assertionQueue, block);
    }

    else
    {
      assertion = self->_assertion;

      [(BSSimpleAssertion *)assertion invalidate];
    }
  }
}

- (id)_initWithIdentity:(id)a3 client:(id)a4 workspace:(id)a5 parameters:(id)a6 assertionQueue:(id)a7 assertion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v14;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!v20)
  {
    [FBSceneRemnant _initWithIdentity:a2 client:? workspace:? parameters:? assertionQueue:? assertion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneRemnant _initWithIdentity:a2 client:? workspace:? parameters:? assertionQueue:? assertion:?];
  }

  v21 = v15;
  NSClassFromString(&cfstr_Fbssceneclient.isa);
  if (!v21)
  {
    [FBSceneRemnant _initWithIdentity:a2 client:? workspace:? parameters:? assertionQueue:? assertion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneRemnant _initWithIdentity:a2 client:? workspace:? parameters:? assertionQueue:? assertion:?];
  }

  if (!v16)
  {
    [FBSceneRemnant _initWithIdentity:a2 client:? workspace:? parameters:? assertionQueue:? assertion:?];
  }

  v22 = v17;
  NSClassFromString(&cfstr_Fbssceneparame.isa);
  if (!v22)
  {
    [FBSceneRemnant _initWithIdentity:a2 client:? workspace:? parameters:? assertionQueue:? assertion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneRemnant _initWithIdentity:a2 client:? workspace:? parameters:? assertionQueue:? assertion:?];
  }

  v23 = v19;
  if (v23)
  {
    NSClassFromString(&cfstr_Bssimpleassert.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneRemnant _initWithIdentity:a2 client:? workspace:? parameters:? assertionQueue:? assertion:?];
    }
  }

  v37.receiver = self;
  v37.super_class = FBSceneRemnant;
  v24 = [(FBSceneRemnant *)&v37 init];
  if (v24)
  {
    v25 = objc_alloc_init(MEMORY[0x1E699FB50]);
    [v25 setIdentity:v20];
    [v22 specification];
    obja = a8;
    v27 = v26 = v18;
    [v25 setSpecification:v27];

    v18 = v26;
    [v25 setClientIdentity:v21];
    v28 = [v25 copy];
    definition = v24->_definition;
    v24->_definition = v28;

    objc_storeWeak(&v24->_workspace, v16);
    v30 = [v22 copy];
    parameters = v24->_parameters;
    v24->_parameters = v30;

    objc_storeStrong(&v24->_assertionQueue, a7);
    objc_storeStrong(&v24->_assertion, obja);
    v32 = objc_opt_new();
    invalidated = v24->_invalidated;
    v24->_invalidated = v32;
  }

  return v24;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FBSSceneDefinition *)self->_definition identity];
  v6 = [(FBSSceneDefinition *)self->_definition clientIdentity];
  [(BSSimpleAssertion *)self->_assertion isValid];
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<%@:%p %@ -> %@ valid=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (FBWorkspace)_workspace
{
  WeakRetained = objc_loadWeakRetained(&self->_workspace);

  return WeakRetained;
}

- (void)_initWithIdentity:(char *)a1 client:workspace:parameters:assertionQueue:assertion:.cold.1(char *a1)
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

- (void)_initWithIdentity:(char *)a1 client:workspace:parameters:assertionQueue:assertion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneClientIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentity:(char *)a1 client:workspace:parameters:assertionQueue:assertion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneParametersClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentity:(char *)a1 client:workspace:parameters:assertionQueue:assertion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSSimpleAssertionClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentity:(char *)a1 client:workspace:parameters:assertionQueue:assertion:.cold.5(char *a1)
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

- (void)_initWithIdentity:(char *)a1 client:workspace:parameters:assertionQueue:assertion:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"workspace", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentity:(char *)a1 client:workspace:parameters:assertionQueue:assertion:.cold.7(char *a1)
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

- (void)_initWithIdentity:(char *)a1 client:workspace:parameters:assertionQueue:assertion:.cold.8(char *a1)
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

@end