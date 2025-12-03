@interface FBSWorkspaceInitializationOptions
+ (id)optionsWithDelegate:(id)delegate;
- (FBSWorkspaceInitializationOptions)init;
- (id)_initWithDelegate:(id)delegate;
- (void)setValue:(id)value forKey:(id)key;
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
    selfCopy = self;
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

- (id)_initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    [(FBSWorkspaceInitializationOptions *)a2 _initWithDelegate:?];
  }

  v7 = delegateCopy;
  v11.receiver = self;
  v11.super_class = FBSWorkspaceInitializationOptions;
  v8 = [(FBSWorkspaceInitializationOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, delegate);
    *&v9->_endpointMonitoringEnabled = 257;
  }

  return v9;
}

+ (id)optionsWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[FBSWorkspaceInitializationOptions alloc] _initWithDelegate:delegateCopy];

  return v4;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"_disableEndpointMonitoring"])
  {
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [valueCopy BOOLValue];
    }

    else
    {
      bOOLValue = valueCopy != 0;
    }

    [(FBSWorkspaceInitializationOptions *)self setEndpointMonitoringEnabled:bOOLValue ^ 1u];
    [(FBSWorkspaceInitializationOptions *)self setDefaultShellEndpointEnabled:bOOLValue ^ 1u];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FBSWorkspaceInitializationOptions;
    [(FBSWorkspaceInitializationOptions *)&v9 setValue:valueCopy forKey:keyCopy];
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