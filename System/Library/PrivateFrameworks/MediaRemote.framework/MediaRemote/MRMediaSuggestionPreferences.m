@interface MRMediaSuggestionPreferences
+ (NSArray)allContexts;
- (BOOL)suggestionsDisabledInContext:(id)a3;
- (MRMediaSuggestionPreferences)init;
- (id)bundlesDisabledInAllContexts;
- (id)description;
- (id)dictionaryRepresentation;
- (id)disabledBundleIdentifiersInContext:(id)a3;
- (id)disabledBundlesForContexts;
- (id)globalDisplayPreferencesForContexts;
- (uint64_t)_updateGlobalToggleState;
- (void)_notifyListener;
- (void)_registerForNotifications;
- (void)_updateGlobalToggleState;
- (void)dealloc;
- (void)initWithGlobalPreferences:(void *)a3 disabledBundlesForContexts:;
- (void)setUserDisplayPreferencesDidChangeCallback:(id)a3;
- (void)snapshot;
@end

@implementation MRMediaSuggestionPreferences

- (uint64_t)_updateGlobalToggleState
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = [(MRMediaSuggestionPreferences *)v1 dictionaryRepresentation];
  v3 = CFPreferencesCopyAppValue(@"ShowWhenListeningEnabled", @"com.apple.suggestions");
  v4 = v3;
  v5 = MEMORY[0x1E695E118];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  [v1[3] setObject:v6 forKeyedSubscript:@"HomeScreen"];
  v7 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v8 = [v7 containsObject:@"com.apple.Home"];

  v9 = [v6 BOOLValue];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v8 ^ 1u];
  }

  else
  {
    v10 = MEMORY[0x1E695E110];
  }

  [v1[3] setObject:v10 forKeyedSubscript:@"Home"];
  if (v9)
  {
  }

  v11 = MEMORY[0x1E695DFA8];
  v12 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v13 = [v11 setWithArray:v12];
  [v1[4] setObject:v13 forKeyedSubscript:@"HomeScreen"];

  v14 = [v1[4] objectForKeyedSubscript:@"HomeScreen"];
  [v1[4] setObject:v14 forKeyedSubscript:@"Home"];

  v15 = [(MRMediaSuggestionPreferences *)v1 dictionaryRepresentation];
  v16 = [v2 isEqualToDictionary:v15];

  if ((v16 & 1) == 0)
  {
    v19 = _MRLogForCategory(0);
    [(MRMediaSuggestionPreferences *)v19 _updateGlobalToggleState];
  }

  v17 = v16 ^ 1u;

  objc_sync_exit(v1);
  return v17;
}

- (id)dictionaryRepresentation
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [(MRMediaSuggestionPreferences *)v1 globalDisplayPreferencesForContexts];
    [v2 setObject:v3 forKeyedSubscript:@"globalDisplayPreferencesForContexts"];

    v4 = [(MRMediaSuggestionPreferences *)v1 disabledBundlesForContexts];
    [v2 setObject:v4 forKeyedSubscript:@"disabledBundlesForContexts"];

    v5 = [(MRMediaSuggestionPreferences *)v1 bundlesDisabledInAllContexts];
    [v2 setObject:v5 forKeyedSubscript:@"bundlesDisabledInAllContexts"];

    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)globalDisplayPreferencesForContexts
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1[3] mutableCopy];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)disabledBundlesForContexts
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1[4] mutableCopy];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)bundlesDisabledInAllContexts
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v1[4];
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = 0;
      v5 = *v13;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          v8 = v1[4];
          if (v4)
          {
            v9 = [v8 objectForKeyedSubscript:v7];
            [v4 intersectSet:v9];
          }

          else
          {
            v9 = [v8 objectForKeyedSubscript:{v7, v12}];
            v4 = [v9 mutableCopy];
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v3);

      if (v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v4 = objc_opt_new();
LABEL_16:
    objc_sync_exit(v1);

    goto LABEL_17;
  }

  v4 = 0;
LABEL_17:
  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (NSArray)allContexts
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"HomeScreen";
  v5[1] = @"Home";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MRMediaSuggestionPreferences)init
{
  v11.receiver = self;
  v11.super_class = MRMediaSuggestionPreferences;
  v2 = [(MRMediaSuggestionPreferences *)&v11 init];
  if (v2)
  {
    v4 = objc_opt_new();
    globalDisplayPreferencesForContexts = v2->_globalDisplayPreferencesForContexts;
    v2->_globalDisplayPreferencesForContexts = v4;

    v6 = objc_opt_new();
    disabledBundlesForContexts = v2->_disabledBundlesForContexts;
    v2->_disabledBundlesForContexts = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.MediaRemote.MRMediaSuggestionPreferences.callbackQueue", v8);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;

    [(MRMediaSuggestionPreferences *)v2 _updateGlobalToggleState];
    [(MRMediaSuggestionPreferences *)v2 _registerForNotifications];
  }

  return v2;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRMediaSuggestionPreferences *)v2 dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, v2, v5];

  objc_sync_exit(v2);

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = MRMediaSuggestionPreferences;
  [(MRMediaSuggestionPreferences *)&v4 dealloc];
}

- (void)setUserDisplayPreferencesDidChangeCallback:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  v5 = MEMORY[0x1A58E3570](v4);

  userDisplayPreferencesDidChangeCallback = obj->_userDisplayPreferencesDidChangeCallback;
  obj->_userDisplayPreferencesDidChangeCallback = v5;

  objc_sync_exit(obj);
}

- (void)snapshot
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [[MRMediaSuggestionPreferences alloc] initWithGlobalPreferences:v1[4] disabledBundlesForContexts:?];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)suggestionsDisabledInContext:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_globalDisplayPreferencesForContexts objectForKeyedSubscript:v4];
  v7 = [v6 BOOLValue];

  objc_sync_exit(v5);
  return v7 ^ 1;
}

- (id)disabledBundleIdentifiersInContext:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_disabledBundlesForContexts objectForKeyedSubscript:v4];
  v7 = [v6 allObjects];
  v8 = [v7 copy];

  objc_sync_exit(v5);

  return v8;
}

- (void)_registerForNotifications
{
  if (a1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, _processNotification, @"com.apple.spotlightui.prefschanged", 0, 1028);

    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, _processNotification, @"com.apple.suggestions.settingsChanged", 0, 1028);
  }
}

- (void)initWithGlobalPreferences:(void *)a3 disabledBundlesForContexts:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = MRMediaSuggestionPreferences;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v7 = [v5 mutableCopy];
      v8 = a1[3];
      a1[3] = v7;

      v9 = [v6 mutableCopy];
      v10 = a1[4];
      a1[4] = v9;
    }
  }

  return a1;
}

- (void)_notifyListener
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = MEMORY[0x1A58E3570](v1[1]);
    objc_sync_exit(v1);

    if (v2)
    {
      v3 = v1[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__MRMediaSuggestionPreferences__notifyListener__block_invoke;
      block[3] = &unk_1E769AD58;
      v5 = v2;
      dispatch_async(v3, block);
    }
  }
}

- (void)_updateGlobalToggleState
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_impl(&dword_1A2860000, a1, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestionPreferences] Updated to new state: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end