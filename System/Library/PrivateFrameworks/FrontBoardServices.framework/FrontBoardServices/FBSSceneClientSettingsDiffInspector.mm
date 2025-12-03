@interface FBSSceneClientSettingsDiffInspector
- (FBSSceneClientSettingsDiffInspector)init;
- (void)observeProperty:(SEL)property withBlock:(id)block;
@end

@implementation FBSSceneClientSettingsDiffInspector

- (FBSSceneClientSettingsDiffInspector)init
{
  if (init_onceToken_0 != -1)
  {
    [FBSSceneClientSettingsDiffInspector init];
  }

  v4.receiver = self;
  v4.super_class = FBSSceneClientSettingsDiffInspector;
  return [(FBSSettingsDiffInspector *)&v4 init];
}

void __43__FBSSceneClientSettingsDiffInspector_init__block_invoke()
{
  v0 = objc_alloc_init(FBSSceneClientSettings);
}

- (void)observeProperty:(SEL)property withBlock:(id)block
{
  blockCopy = block;
  if (!property)
  {
    [FBSSceneClientSettingsDiffInspector observeProperty:a2 withBlock:self];
  }

  v11 = blockCopy;
  v8 = objc_opt_class();
  v9 = FBSSettingForExtensionSelector(v8, property);
  if (!v9)
  {
    [(FBSSceneClientSettingsDiffInspector *)property observeProperty:a2 withBlock:self];
  }

  v10 = v9;
  [(FBSSettingsDiffInspector *)self observeSetting:v9 withBlock:v11];
}

- (void)observeProperty:(uint64_t)a3 withBlock:.cold.1(const char *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a1);
  v7 = [v5 stringWithFormat:@"no setting found for %@", v6];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    v16 = a3;
    v17 = 2114;
    v18 = @"FBSSceneClientSettingsDiffInspector.m";
    v19 = 1024;
    v20 = 30;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
}

- (void)observeProperty:(const char *)a1 withBlock:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"getter != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSSceneClientSettingsDiffInspector.m";
    v16 = 1024;
    v17 = 28;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end