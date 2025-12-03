@interface MRMediaSuggestionPreferences
+ (NSArray)allContexts;
- (BOOL)suggestionsDisabledInContext:(id)context;
- (MRMediaSuggestionPreferences)init;
- (id)bundlesDisabledInAllContexts;
- (id)description;
- (id)dictionaryRepresentation;
- (id)disabledBundleIdentifiersInContext:(id)context;
- (id)disabledBundlesForContexts;
- (id)globalDisplayPreferencesForContexts;
- (uint64_t)_updateGlobalToggleState;
- (void)_notifyListener;
- (void)_registerForNotifications;
- (void)_updateGlobalToggleState;
- (void)dealloc;
- (void)initWithGlobalPreferences:(void *)preferences disabledBundlesForContexts:;
- (void)setUserDisplayPreferencesDidChangeCallback:(id)callback;
- (void)snapshot;
@end

@implementation MRMediaSuggestionPreferences

- (uint64_t)_updateGlobalToggleState
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dictionaryRepresentation = [(MRMediaSuggestionPreferences *)selfCopy dictionaryRepresentation];
  v3 = CFPreferencesCopyAppValue(@"ShowWhenListeningEnabled", @"com.apple.suggestions");
  v4 = v3;
  v5 = MEMORY[0x1E695E118];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  [selfCopy[3] setObject:v6 forKeyedSubscript:@"HomeScreen"];
  v7 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v8 = [v7 containsObject:@"com.apple.Home"];

  bOOLValue = [v6 BOOLValue];
  if (bOOLValue)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v8 ^ 1u];
  }

  else
  {
    v10 = MEMORY[0x1E695E110];
  }

  [selfCopy[3] setObject:v10 forKeyedSubscript:@"Home"];
  if (bOOLValue)
  {
  }

  v11 = MEMORY[0x1E695DFA8];
  v12 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v13 = [v11 setWithArray:v12];
  [selfCopy[4] setObject:v13 forKeyedSubscript:@"HomeScreen"];

  v14 = [selfCopy[4] objectForKeyedSubscript:@"HomeScreen"];
  [selfCopy[4] setObject:v14 forKeyedSubscript:@"Home"];

  dictionaryRepresentation2 = [(MRMediaSuggestionPreferences *)selfCopy dictionaryRepresentation];
  v16 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];

  if ((v16 & 1) == 0)
  {
    v19 = _MRLogForCategory(0);
    [(MRMediaSuggestionPreferences *)v19 _updateGlobalToggleState];
  }

  v17 = v16 ^ 1u;

  objc_sync_exit(selfCopy);
  return v17;
}

- (id)dictionaryRepresentation
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    globalDisplayPreferencesForContexts = [(MRMediaSuggestionPreferences *)selfCopy globalDisplayPreferencesForContexts];
    [v2 setObject:globalDisplayPreferencesForContexts forKeyedSubscript:@"globalDisplayPreferencesForContexts"];

    disabledBundlesForContexts = [(MRMediaSuggestionPreferences *)selfCopy disabledBundlesForContexts];
    [v2 setObject:disabledBundlesForContexts forKeyedSubscript:@"disabledBundlesForContexts"];

    bundlesDisabledInAllContexts = [(MRMediaSuggestionPreferences *)selfCopy bundlesDisabledInAllContexts];
    [v2 setObject:bundlesDisabledInAllContexts forKeyedSubscript:@"bundlesDisabledInAllContexts"];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)globalDisplayPreferencesForContexts
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = [selfCopy[3] mutableCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)disabledBundlesForContexts
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = [selfCopy[4] mutableCopy];
    objc_sync_exit(selfCopy);
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
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = selfCopy[4];
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
          v8 = selfCopy[4];
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
    objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRMediaSuggestionPreferences *)selfCopy dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, selfCopy, dictionaryRepresentation];

  objc_sync_exit(selfCopy);

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

- (void)setUserDisplayPreferencesDidChangeCallback:(id)callback
{
  obj = self;
  callbackCopy = callback;
  objc_sync_enter(obj);
  v5 = MEMORY[0x1A58E3570](callbackCopy);

  userDisplayPreferencesDidChangeCallback = obj->_userDisplayPreferencesDidChangeCallback;
  obj->_userDisplayPreferencesDidChangeCallback = v5;

  objc_sync_exit(obj);
}

- (void)snapshot
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = [[MRMediaSuggestionPreferences alloc] initWithGlobalPreferences:selfCopy[4] disabledBundlesForContexts:?];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)suggestionsDisabledInContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_globalDisplayPreferencesForContexts objectForKeyedSubscript:contextCopy];
  bOOLValue = [v6 BOOLValue];

  objc_sync_exit(selfCopy);
  return bOOLValue ^ 1;
}

- (id)disabledBundleIdentifiersInContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_disabledBundlesForContexts objectForKeyedSubscript:contextCopy];
  allObjects = [v6 allObjects];
  v8 = [allObjects copy];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)_registerForNotifications
{
  if (self)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _processNotification, @"com.apple.spotlightui.prefschanged", 0, 1028);

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _processNotification, @"com.apple.suggestions.settingsChanged", 0, 1028);
  }
}

- (void)initWithGlobalPreferences:(void *)preferences disabledBundlesForContexts:
{
  v5 = a2;
  preferencesCopy = preferences;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = MRMediaSuggestionPreferences;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 mutableCopy];
      v8 = self[3];
      self[3] = v7;

      v9 = [preferencesCopy mutableCopy];
      v10 = self[4];
      self[4] = v9;
    }
  }

  return self;
}

- (void)_notifyListener
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = MEMORY[0x1A58E3570](selfCopy[1]);
    objc_sync_exit(selfCopy);

    if (v2)
    {
      v3 = selfCopy[2];
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
  if (os_log_type_enabled(self, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_impl(&dword_1A2860000, self, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestionPreferences] Updated to new state: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end