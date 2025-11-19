@interface FBSceneClientHandle
+ (id)handleForScene:(id)a3 clientProcess:(id)a4;
- (id)description;
@end

@implementation FBSceneClientHandle

- (id)description
{
  v2 = [(FBSceneClientHandle *)self processHandle];
  v3 = [v2 description];

  return v3;
}

+ (id)handleForScene:(id)a3 clientProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [FBSceneClientHandle handleForScene:a2 clientProcess:?];
  }

  v8 = v7;
  v9 = [v7 rbsHandle];
  if (![(FBScene *)v6 _isLegacy]|| v9)
  {
    NSClassFromString(&cfstr_Rbsprocesshand_1.isa);
    if (!v9)
    {
      [FBSceneClientHandle handleForScene:a2 clientProcess:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneClientHandle handleForScene:a2 clientProcess:?];
    }
  }

  v10 = objc_alloc_init(FBSceneClientHandle);
  if (v10)
  {
    v11 = [v6 definition];
    v12 = [v11 clientIdentity];
    identity = v10->_identity;
    v10->_identity = v12;

    objc_storeStrong(&v10->_legacyProcess, a4);
  }

  return v10;
}

+ (void)handleForScene:(const char *)a1 clientProcess:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:RBSProcessHandleClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)handleForScene:(const char *)a1 clientProcess:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)handleForScene:(const char *)a1 clientProcess:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"scene != ((void *)0)", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end