@interface FBSWorkspaceInitializationOptions
+ (id)optionsWithDelegate:(id)a3;
- (FBSWorkspaceInitializationOptions)init;
- (id)_initWithDelegate:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation FBSWorkspaceInitializationOptions

- (FBSWorkspaceInitializationOptions)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBSWorkspaceInitializationOptions"];
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
    v13 = self;
    v14 = 2114;
    v15 = @"FBSWorkspaceInitializationOptions.m";
    v16 = 1024;
    v17 = 16;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithDelegate:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(FBSWorkspaceInitializationOptions *)a2 _initWithDelegate:?];
  }

  v7 = v6;
  v11.receiver = self;
  v11.super_class = FBSWorkspaceInitializationOptions;
  v8 = [(FBSWorkspaceInitializationOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, a3);
    *&v9->_endpointMonitoringEnabled = 257;
  }

  return v9;
}

+ (id)optionsWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[FBSWorkspaceInitializationOptions alloc] _initWithDelegate:v3];

  return v4;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"_disableEndpointMonitoring"])
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 BOOLValue];
    }

    else
    {
      v8 = v6 != 0;
    }

    [(FBSWorkspaceInitializationOptions *)self setEndpointMonitoringEnabled:v8 ^ 1u];
    [(FBSWorkspaceInitializationOptions *)self setDefaultShellEndpointEnabled:v8 ^ 1u];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FBSWorkspaceInitializationOptions;
    [(FBSWorkspaceInitializationOptions *)&v9 setValue:v6 forKey:v7];
  }
}

- (void)_initWithDelegate:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"delegate"];
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
    v15 = @"FBSWorkspaceInitializationOptions.m";
    v16 = 1024;
    v17 = 21;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end