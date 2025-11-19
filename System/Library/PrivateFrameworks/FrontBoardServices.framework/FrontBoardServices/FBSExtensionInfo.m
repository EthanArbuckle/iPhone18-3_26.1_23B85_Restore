@interface FBSExtensionInfo
- (id)_initWithBundleIdentifier:(id)a3 url:(id)a4;
- (id)_initWithBundleProxy:(id)a3 url:(id)a4;
- (id)_initWithPlugInKitProxy:(id)a3;
@end

@implementation FBSExtensionInfo

- (id)_initWithBundleIdentifier:(id)a3 url:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this is initializer is unavailable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    v18 = self;
    v19 = 2114;
    v20 = @"FBSExtensionInfo.m";
    v21 = 1024;
    v22 = 17;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithBundleProxy:(id)a3 url:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSExtensionInfo _initWithBundleProxy:v7 url:a2];
  }

  v9 = [(FBSExtensionInfo *)self _initWithPlugInKitProxy:v7];

  return v9;
}

- (id)_initWithPlugInKitProxy:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBSExtensionInfo _initWithPlugInKitProxy:a2];
  }

  v6 = v5;
  v15.receiver = self;
  v15.super_class = FBSExtensionInfo;
  v7 = [(FBSBundleInfo *)&v15 _initWithBundleProxy:v5 overrideURL:0];
  if (v7)
  {
    v8 = [v6 protocol];
    v9 = [v8 copy];
    v10 = v7[8];
    v7[8] = v9;

    v11 = [v6 pluginIdentifier];
    v12 = [v11 copy];
    v13 = v7[9];
    v7[9] = v12;
  }

  return v7;
}

- (void)_initWithBundleProxy:(uint64_t)a1 url:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"proxy must be of type LSPlugInKitProxy : proxy=%@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    v9 = @"FBSExtensionInfo.m";
    v10 = 1024;
    v11 = 22;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithPlugInKitProxy:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"proxy"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v8 = @"FBSExtensionInfo.m";
    v9 = 1024;
    v10 = 27;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end