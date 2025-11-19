@interface _FBLocalSceneInfo
- (id)initWithScene:(id *)a1;
- (void)setPendingTransitionContext:(uint64_t)a1;
@end

@implementation _FBLocalSceneInfo

- (id)initWithScene:(id *)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
      [_FBLocalSceneInfo initWithScene:?];
    }

    v8.receiver = a1;
    v8.super_class = _FBLocalSceneInfo;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    a1 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 2, a2);
    }
  }

  return a1;
}

- (void)setPendingTransitionContext:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)initWithScene:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"scene != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end