@interface CLKUIAnalogHandFactoryCache
+ (id)sharedInstance;
+ (void)purge;
@end

@implementation CLKUIAnalogHandFactoryCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CLKUIAnalogHandFactoryCache sharedInstance];
  }

  v3 = sharedInstance_cache;

  return v3;
}

void __45__CLKUIAnalogHandFactoryCache_sharedInstance__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = [MEMORY[0x1E698E7F8] optionsWithContainerPathProvider:v0];
  v2 = [[CLKUIAnalogHandFactoryCache alloc] initWithUniqueIdentifier:@"com.apple.ClockKitUI.configurableHands" options:v1];
  v3 = sharedInstance_cache;
  sharedInstance_cache = v2;

  v4 = CLKBuildVersion();
  v5 = CFPreferencesCopyAppValue(@"HandFactoryCachedBuild", *MEMORY[0x1E695B4D8]);
  if (!v5 || ([v4 isEqual:v5] & 1) == 0)
  {
    v6 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1E49C8000, v6, OS_LOG_TYPE_DEFAULT, "Clearing hand cache (%@ -> %@)", buf, 0x16u);
    }

    v7 = sharedInstance_cache;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__CLKUIAnalogHandFactoryCache_sharedInstance__block_invoke_63;
    v8[3] = &unk_1E8762C10;
    v9 = v4;
    [v7 removeAllImagesWithCompletion:v8];
  }
}

+ (void)purge
{
  sharedInstance = [self sharedInstance];
  [sharedInstance removeAllImagesWithCompletion:0];
}

@end