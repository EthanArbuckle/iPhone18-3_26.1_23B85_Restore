@interface MapsSuggestionsSiri
+ (BOOL)canLearnFromBundleID:(id)a3;
+ (BOOL)isAllowedOnHomeScreen;
+ (BOOL)isAllowedOnLockScreen;
+ (BOOL)isEnabled;
+ (id)isAllowedOnHomeScreenCondition;
+ (id)isAllowedOnLockScreenCondition;
+ (id)isEnabledCondition;
@end

@implementation MapsSuggestionsSiri

+ (BOOL)isEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A1A78];
  v3 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v4 = [v3 containsObject:v2];

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = "YES";
    if (v4)
    {
      v6 = "NO";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "SiriEnabled : %s", &v8, 0xCu);
  }

  return v4 ^ 1;
}

+ (id)isEnabledCondition
{
  if (isEnabledCondition_onceToken != -1)
  {
    +[MapsSuggestionsSiri isEnabledCondition];
  }

  v3 = s_enabledCondition;

  return v3;
}

void __41__MapsSuggestionsSiri_isEnabledCondition__block_invoke()
{
  v0 = [[MapsSuggestionsBlockCondition alloc] initWithName:@"siriEnabledCondition" block:&__block_literal_global_10];
  v1 = s_enabledCondition;
  s_enabledCondition = v0;
}

+ (id)isAllowedOnHomeScreenCondition
{
  if (isAllowedOnHomeScreenCondition_onceToken != -1)
  {
    +[MapsSuggestionsSiri isAllowedOnHomeScreenCondition];
  }

  v3 = s_allowedOnHomeScreenCondition;

  return v3;
}

void __53__MapsSuggestionsSiri_isAllowedOnHomeScreenCondition__block_invoke()
{
  v0 = [[MapsSuggestionsBlockCondition alloc] initWithName:@"siriAllowedOnHomeScreenCondition" block:&__block_literal_global_18_0];
  v1 = s_allowedOnHomeScreenCondition;
  s_allowedOnHomeScreenCondition = v0;
}

+ (id)isAllowedOnLockScreenCondition
{
  if (isAllowedOnLockScreenCondition_onceToken != -1)
  {
    +[MapsSuggestionsSiri isAllowedOnLockScreenCondition];
  }

  v3 = s_allowedOnLockScreenCondition;

  return v3;
}

void __53__MapsSuggestionsSiri_isAllowedOnLockScreenCondition__block_invoke()
{
  v0 = [[MapsSuggestionsBlockCondition alloc] initWithName:@"siriAllowedOnLockScreenCondition" block:&__block_literal_global_25];
  v1 = s_allowedOnLockScreenCondition;
  s_allowedOnLockScreenCondition = v0;
}

+ (BOOL)isAllowedOnHomeScreen
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  v5 = *MEMORY[0x1E69A1A78];
  v6 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v7 = [v6 containsObject:v5];

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "NO";
    if (v4)
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if (!v7)
    {
      v9 = "YES";
    }

    v12 = 136315394;
    v13 = v10;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "allowedOnHomeScreen Global: %s Maps:%s", &v12, 0x16u);
  }

  return (v7 ^ 1) & v4;
}

+ (BOOL)isAllowedOnLockScreen
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyAppValue(@"LockScreenSuggestionsDisabled", @"com.apple.lockscreen.shared");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = *MEMORY[0x1E69A1A78];
  v6 = CFPreferencesCopyAppValue(@"LockscreenSuggestionsDisabledBundles", @"com.apple.duetexpertd");
  v7 = [v6 containsObject:v5];

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "NO";
    if (v4)
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if (!v7)
    {
      v9 = "YES";
    }

    v12 = 136315394;
    v13 = v10;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "allowedOnLockScreen Global: %s Maps:%s", &v12, 0x16u);
  }

  return (v7 ^ 1) & v4;
}

+ (BOOL)canLearnFromBundleID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Can't learn from: %@", &v8, 0xCu);
    }
  }

  return v5 ^ 1;
}

@end