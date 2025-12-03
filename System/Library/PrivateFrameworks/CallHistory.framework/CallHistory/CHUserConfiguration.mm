@interface CHUserConfiguration
+ (id)registeredDefaults;
+ (id)userDefaults;
- (BOOL)propertyNameForKeyPath:(id)path;
- (CHUserConfiguration)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setKeepCallsTimeIntervalType:(int64_t)type;
- (void)synchronize;
@end

@implementation CHUserConfiguration

+ (id)registeredDefaults
{
  if (registeredDefaults_onceToken != -1)
  {
    +[CHUserConfiguration registeredDefaults];
  }

  v3 = registeredDefaults_sRegisteredDefaults;

  return v3;
}

void __41__CHUserConfiguration_registeredDefaults__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"cloudKitEnabled";
  v3[1] = @"keepCallsTimeIntervalType";
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = &unk_1F43A2D40;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = registeredDefaults_sRegisteredDefaults;
  registeredDefaults_sRegisteredDefaults = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)userDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CHUserConfiguration_userDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (userDefaults_onceToken != -1)
  {
    dispatch_once(&userDefaults_onceToken, block);
  }

  v2 = userDefaults_sUserDefaults;

  return v2;
}

void __35__CHUserConfiguration_userDefaults__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.CallHistory"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CallHistory"];
  }

  v6 = userDefaults_sUserDefaults;
  userDefaults_sUserDefaults = v5;

  v7 = userDefaults_sUserDefaults;
  v8 = [*(a1 + 32) registeredDefaults];
  [v7 registerDefaults:v8];
}

- (CHUserConfiguration)init
{
  userDefaults = [objc_opt_class() userDefaults];
  [userDefaults addObserver:self forKeyPath:@"cloudKitEnabled" options:0 context:&CHUserConfigurationKeyValueObserverContext];
  [userDefaults addObserver:self forKeyPath:@"keepCallsTimeIntervalType" options:0 context:&CHUserConfigurationKeyValueObserverContext];
  v6.receiver = self;
  v6.super_class = CHUserConfiguration;
  v4 = [(CHConfiguration *)&v6 initWithDataSource:userDefaults];

  return v4;
}

- (void)dealloc
{
  dataSource = [(CHConfiguration *)self dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataSource;
    [v4 removeObserver:self forKeyPath:@"cloudKitEnabled" context:&CHUserConfigurationKeyValueObserverContext];
    [v4 removeObserver:self forKeyPath:@"keepCallsTimeIntervalType" context:&CHUserConfigurationKeyValueObserverContext];
  }

  v5.receiver = self;
  v5.super_class = CHUserConfiguration;
  [(CHUserConfiguration *)&v5 dealloc];
}

- (void)setKeepCallsTimeIntervalType:(int64_t)type
{
  dataSource = [(CHConfiguration *)self dataSource];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [dataSource setObject:v4 forKey:@"keepCallsTimeIntervalType"];
}

- (void)synchronize
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithObject:@"keepCallsTimeIntervalType"];
  v3 = ch_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = @"com.apple.CallHistory";
    _os_log_impl(&dword_1C3E90000, v3, OS_LOG_TYPE_DEFAULT, "Synchronizing user configuration for %{public}@ to Apple Watch", &buf, 0xCu);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getNPSManagerClass_softClass;
  v11 = getNPSManagerClass_softClass;
  if (!getNPSManagerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v13 = __getNPSManagerClass_block_invoke;
    v14 = &unk_1E81DC190;
    v15 = &v8;
    __getNPSManagerClass_block_invoke(&buf);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = objc_alloc_init(v4);
  [v6 synchronizeUserDefaultsDomain:@"com.apple.CallHistory" keys:{v2, v8}];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  v11 = ch_framework_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = pathCopy;
    v17 = 2114;
    v18 = objectCopy;
    _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_DEFAULT, "Received a key-value observing notification for key path (%{public}@) object (%{public}@).", buf, 0x16u);
  }

  if (context == &CHUserConfigurationKeyValueObserverContext)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(CHUserConfiguration *)self propertyNameForKeyPath:pathCopy])
      {
        delegateController = [(CHConfiguration *)self delegateController];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __70__CHUserConfiguration_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v14[3] = &unk_1E81DCF68;
        v14[4] = self;
        [delegateController enumerateDelegatesUsingBlock:v14];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __70__CHUserConfiguration_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__CHUserConfiguration_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v9[3] = &unk_1E81DBE38;
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    dispatch_async(v6, v9);
  }
}

- (BOOL)propertyNameForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"cloudKitEnabled"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"keepCallsTimeIntervalType"];
  }

  return v4;
}

@end