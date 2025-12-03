@interface FBDisplayManager
+ (FBSDisplayConfiguration)mainConfiguration;
+ (FBSDisplayIdentity)mainIdentity;
+ (id)sharedInstance;
- (FBDisplayManager)init;
- (FBDisplayManager)initWithInitializationCompletion:(id)completion;
- (FBDisplayManager)initWithTransformer:(id)transformer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FBDisplayManager

+ (id)sharedInstance
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__FBDisplayManager_sharedInstance__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (sharedInstance_onceToken_5 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5, v4);
  }

  v2 = sharedInstance___sharedInstance_0;

  return v2;
}

+ (FBSDisplayIdentity)mainIdentity
{
  sharedInstance = [self sharedInstance];
  mainIdentity = [sharedInstance mainIdentity];

  return mainIdentity;
}

+ (FBSDisplayConfiguration)mainConfiguration
{
  sharedInstance = [self sharedInstance];
  mainConfiguration = [sharedInstance mainConfiguration];

  return mainConfiguration;
}

- (FBDisplayManager)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed - call +sharedInstance instead"];
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
    selfCopy = self;
    v15 = 2114;
    v16 = @"FBDisplayManager.m";
    v17 = 1024;
    v18 = 21;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (FBDisplayManager)initWithInitializationCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-initWithInitializationCompletion: is not allowed - call +sharedInstance instead"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"FBDisplayManager.m";
    v19 = 1024;
    v20 = 26;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (FBDisplayManager)initWithTransformer:(id)transformer
{
  transformerCopy = transformer;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-initWithTransformer: is not allowed - call +sharedInstance instead"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"FBDisplayManager.m";
    v19 = 1024;
    v20 = 31;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)invalidate
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you cannot invalidate FBDisplayManager"];
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
    v15 = @"FBDisplayManager.m";
    v16 = 1024;
    v17 = 36;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __34__FBDisplayManager_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 bs_safeStringForKey:@"FBDisplayManagerTransformer"];

  if (v4)
  {
    v9 = objc_alloc_init(NSClassFromString(v4));
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      __34__FBDisplayManager_sharedInstance__block_invoke_cold_1(a1);
    }
  }

  else
  {
    v9 = 0;
  }

  if (UIKitLibraryCore() && (v5 = getUIApplicationClass()) != 0)
  {
    v6 = [v5 displayManagerObserver];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(FBSDisplayMonitor *)[FBDisplayManager alloc] _initWithBookendObserver:v6 transformer:v9];
  v8 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v7;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this singleton must be not deallocated"];
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
    v15 = @"FBDisplayManager.m";
    v16 = 1024;
    v17 = 62;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __34__FBDisplayManager_sharedInstance__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transformer specified must conform to <FBSDisplayTransformer>."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = *(a1 + 40);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 40);
    v8 = 138544642;
    v9 = v3;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = @"FBDisplayManager.m";
    v16 = 1024;
    v17 = 48;
    v18 = 2114;
    v19 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end