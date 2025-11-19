@interface LACSetUpStateProvider
+ (LACSetUpStateProvider)sharedInstance;
- (BOOL)hasCompletedSetup;
@end

@implementation LACSetUpStateProvider

+ (LACSetUpStateProvider)sharedInstance
{
  if (sharedInstance_onceToken_21 != -1)
  {
    +[LACSetUpStateProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_19;

  return v3;
}

- (BOOL)hasCompletedSetup
{
  v10 = *MEMORY[0x1E69E9840];
  if (SetupAssistantLibraryCore() && SetupAssistantLibraryCore() && getBYSetupAssistantNeedsToRunSymbolLoc())
  {
    BYSetupAssistantNeedsToRunSymbolLoc = getBYSetupAssistantNeedsToRunSymbolLoc();
    if (!BYSetupAssistantNeedsToRunSymbolLoc)
    {
      +[LACSharingManager isSharingError:];
    }

    v3 = BYSetupAssistantNeedsToRunSymbolLoc() ^ 1;
    v4 = LACLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "hasCompletedSetup: %@", &v8, 0xCu);
    }
  }

  else
  {
    v4 = LACLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(LACSetUpStateProvider *)v4 hasCompletedSetup];
    }

    LOBYTE(v3) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __39__LACSetUpStateProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACSetUpStateProvider);
  v1 = sharedInstance_sharedInstance_19;
  sharedInstance_sharedInstance_19 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end