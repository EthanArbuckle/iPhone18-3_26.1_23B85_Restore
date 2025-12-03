@interface FBSceneClientHandle
+ (id)handleForScene:(id)scene clientProcess:(id)process;
- (id)description;
@end

@implementation FBSceneClientHandle

- (id)description
{
  processHandle = [(FBSceneClientHandle *)self processHandle];
  v3 = [processHandle description];

  return v3;
}

+ (id)handleForScene:(id)scene clientProcess:(id)process
{
  sceneCopy = scene;
  processCopy = process;
  if (!sceneCopy)
  {
    [FBSceneClientHandle handleForScene:a2 clientProcess:?];
  }

  v8 = processCopy;
  rbsHandle = [processCopy rbsHandle];
  if (![(FBScene *)sceneCopy _isLegacy]|| rbsHandle)
  {
    NSClassFromString(&cfstr_Rbsprocesshand_1.isa);
    if (!rbsHandle)
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
    definition = [sceneCopy definition];
    clientIdentity = [definition clientIdentity];
    identity = v10->_identity;
    v10->_identity = clientIdentity;

    objc_storeStrong(&v10->_legacyProcess, process);
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