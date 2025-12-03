@interface OSLogPreferencesSubsystem
- (BOOL)_signpostAllowStreamingForCategory:(id)category;
- (BOOL)_signpostBacktracesEnabledForCategory:(id)category;
- (BOOL)_signpostEnabledForCategory:(id)category;
- (BOOL)_signpostPersistedForCategory:(id)category;
- (BOOL)isLocked;
- (NSArray)categories;
- (OSLogPreferencesSubsystem)initWithName:(id)name;
- (id)_levelPrefsForCategory:(id)category;
- (id)_prefsForCategory:(id)category;
- (int64_t)_defaultEnabledLevelForCategory:(id)category;
- (int64_t)_defaultPersistedLevelForCategory:(id)category;
- (int64_t)_enabledLevelForCategory:(id)category;
- (int64_t)_persistedLevelForCategory:(id)category;
- (int64_t)effectiveEnabledLevel;
- (int64_t)effectivePersistedLevel;
- (void)_resetCategory:(id)category;
- (void)_setEnabledLevel:(int64_t)level forCategory:(id)category;
- (void)_setPersistedLevel:(int64_t)level forCategory:(id)category;
- (void)reset;
- (void)resetAll;
- (void)setEnabledLevel:(int64_t)level;
- (void)setPersistedLevel:(int64_t)level;
@end

@implementation OSLogPreferencesSubsystem

- (void)_resetCategory:(id)category
{
  [(NSMutableDictionary *)self->_prefs removeObjectForKey:category];
  if ([(NSMutableDictionary *)self->_prefs count])
  {
    prefs = self->_prefs;
    name = self->_name;

    _OSLogInstallPreferences(3u, name, prefs);
  }

  else
  {
    v6 = self->_prefs;
    self->_prefs = 0;

    v7 = self->_name;

    _OSLogRemovePreferences(3u, v7);
  }
}

- (void)_setPersistedLevel:(int64_t)level forCategory:(id)category
{
  v6 = [(OSLogPreferencesSubsystem *)self _levelPrefsForCategory:category];
  if (level > 4)
  {
    v7 = @"inherit";
  }

  else
  {
    v7 = off_2787AEBC8[level];
  }

  v9 = v6;
  [v6 setObject:v7 forKey:@"Persist"];
  if (_LevelForKey(v9, @"Enable") < level)
  {
    if (level > 4)
    {
      v8 = @"inherit";
    }

    else
    {
      v8 = off_2787AEBC8[level];
    }

    [v9 setObject:v8 forKey:@"Enable"];
  }

  _OSLogInstallPreferences(3u, self->_name, self->_prefs);
}

- (void)_setEnabledLevel:(int64_t)level forCategory:(id)category
{
  v6 = [(OSLogPreferencesSubsystem *)self _levelPrefsForCategory:category];
  if (level > 4)
  {
    v7 = @"inherit";
  }

  else
  {
    v7 = off_2787AEBC8[level];
  }

  v9 = v6;
  [v6 setObject:v7 forKey:@"Enable"];
  if (_LevelForKey(v9, @"Persist") > level)
  {
    if (level > 4)
    {
      v8 = @"inherit";
    }

    else
    {
      v8 = off_2787AEBC8[level];
    }

    [v9 setObject:v8 forKey:@"Persist"];
  }

  _OSLogInstallPreferences(3u, self->_name, self->_prefs);
}

- (id)_levelPrefsForCategory:(id)category
{
  v3 = [(OSLogPreferencesSubsystem *)self _prefsForCategory:category];
  dictionary = [v3 objectForKey:@"Level"];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [v3 setObject:dictionary forKey:@"Level"];
  }

  return dictionary;
}

- (id)_prefsForCategory:(id)category
{
  categoryCopy = category;
  prefs = self->_prefs;
  if (!prefs)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7 = self->_prefs;
    self->_prefs = dictionary;

    prefs = self->_prefs;
  }

  dictionary2 = [(NSMutableDictionary *)prefs objectForKey:categoryCopy];
  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_prefs setObject:dictionary2 forKey:categoryCopy];
  }

  return dictionary2;
}

- (BOOL)_signpostAllowStreamingForCategory:(id)category
{
  categoryCopy = category;
  v5 = [(NSMutableDictionary *)self->_prefs objectForKeyedSubscript:categoryCopy];
  v6 = [v5 objectForKeyedSubscript:@"Signpost-Allow-Streaming"];

  if (v6 || (-[NSDictionary objectForKeyedSubscript:](self->_systemPrefs, "objectForKeyedSubscript:", categoryCopy), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:@"Signpost-Allow-Streaming"], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_signpostBacktracesEnabledForCategory:(id)category
{
  categoryCopy = category;
  v5 = [(NSMutableDictionary *)self->_prefs objectForKey:categoryCopy];
  v6 = [v5 objectForKey:@"Signpost-Backtraces-Enabled"];

  if (v6 || (-[NSDictionary objectForKey:](self->_systemPrefs, "objectForKey:", categoryCopy), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKey:@"Signpost-Backtraces-Enabled"], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = [categoryCopy isEqualToString:@"DynamicStackTracing"];
  }

  return bOOLValue;
}

- (BOOL)_signpostPersistedForCategory:(id)category
{
  categoryCopy = category;
  v5 = [(NSMutableDictionary *)self->_prefs objectForKey:categoryCopy];
  v6 = [v5 objectForKey:@"Signpost-Persisted"];

  if (v6 || (-[NSDictionary objectForKey:](self->_systemPrefs, "objectForKey:", categoryCopy), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKey:@"Signpost-Persisted"], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_signpostEnabledForCategory:(id)category
{
  categoryCopy = category;
  v5 = [(NSMutableDictionary *)self->_prefs objectForKey:categoryCopy];
  v6 = [v5 objectForKey:@"Signpost-Enabled"];

  if (v6 || (-[NSDictionary objectForKey:](self->_systemPrefs, "objectForKey:", categoryCopy), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKey:@"Signpost-Enabled"], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    LOBYTE(v8) = [v6 BOOLValue];
  }

  else if ([categoryCopy isEqualToString:@"DynamicTracing"])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [categoryCopy isEqualToString:@"DynamicStackTracing"] ^ 1;
  }

  return v8;
}

- (int64_t)_persistedLevelForCategory:(id)category
{
  v3 = [(NSMutableDictionary *)self->_prefs objectForKey:category];
  v4 = [v3 objectForKey:@"Level"];

  v5 = _LevelForKey(v4, @"Persist");
  return v5;
}

- (int64_t)_enabledLevelForCategory:(id)category
{
  v3 = [(NSMutableDictionary *)self->_prefs objectForKey:category];
  v4 = [v3 objectForKey:@"Level"];

  v5 = _LevelForKey(v4, @"Enable");
  return v5;
}

- (int64_t)_defaultPersistedLevelForCategory:(id)category
{
  categoryCopy = category;
  v5 = [(NSDictionary *)self->_internalPrefs objectForKey:categoryCopy];
  v6 = [v5 objectForKey:@"Level"];

  v7 = _LevelForKey(v6, @"Persist");
  if (v7 == 1)
  {
    v8 = [(NSDictionary *)self->_systemPrefs objectForKey:categoryCopy];
    v9 = [v8 objectForKey:@"Level"];

    v10 = _LevelForKey(v9, @"Persist");
    v6 = v9;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (int64_t)_defaultEnabledLevelForCategory:(id)category
{
  categoryCopy = category;
  v5 = [(NSDictionary *)self->_internalPrefs objectForKey:categoryCopy];
  v6 = [v5 objectForKey:@"Level"];

  v7 = _LevelForKey(v6, @"Enable");
  if (v7 == 1)
  {
    v8 = [(NSDictionary *)self->_systemPrefs objectForKey:categoryCopy];
    v9 = [v8 objectForKey:@"Level"];

    v10 = _LevelForKey(v9, @"Enable");
    v6 = v9;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (void)resetAll
{
  if (![(OSLogPreferencesSubsystem *)self isLocked])
  {
    prefs = self->_prefs;
    self->_prefs = 0;

    name = self->_name;

    _OSLogRemovePreferences(3u, name);
  }
}

- (void)reset
{
  if (![(OSLogPreferencesSubsystem *)self isLocked])
  {

    [(OSLogPreferencesSubsystem *)self _resetCategory:@"DEFAULT-OPTIONS"];
  }
}

- (void)setPersistedLevel:(int64_t)level
{
  if (![(OSLogPreferencesSubsystem *)self isLocked])
  {

    [(OSLogPreferencesSubsystem *)self _setPersistedLevel:level forCategory:@"DEFAULT-OPTIONS"];
  }
}

- (void)setEnabledLevel:(int64_t)level
{
  if (![(OSLogPreferencesSubsystem *)self isLocked])
  {

    [(OSLogPreferencesSubsystem *)self _setEnabledLevel:level forCategory:@"DEFAULT-OPTIONS"];
  }
}

- (int64_t)effectivePersistedLevel
{
  result = [(OSLogPreferencesSubsystem *)self persistedLevel];
  if (result == 1)
  {
    result = [(OSLogPreferencesSubsystem *)self defaultPersistedLevel];
    if (result == 1)
    {
      v4 = +[OSLogPreferencesManager sharedManager];
      persistedLevel = [v4 persistedLevel];

      return persistedLevel;
    }
  }

  return result;
}

- (int64_t)effectiveEnabledLevel
{
  result = [(OSLogPreferencesSubsystem *)self enabledLevel];
  if (result == 1)
  {
    result = [(OSLogPreferencesSubsystem *)self defaultEnabledLevel];
    if (result == 1)
    {
      v4 = +[OSLogPreferencesManager sharedManager];
      enabledLevel = [v4 enabledLevel];

      return enabledLevel;
    }
  }

  return result;
}

- (BOOL)isLocked
{
  v2 = [(NSMutableDictionary *)self->_prefs objectForKey:@"Locked"];
  v3 = v2 != 0;

  return v3;
}

- (NSArray)categories
{
  array = [MEMORY[0x277CBEB18] array];
  systemPrefs = self->_systemPrefs;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__OSLogPreferencesSubsystem_categories__block_invoke;
  v17[3] = &unk_2787AEB60;
  v5 = array;
  v18 = v5;
  [(NSDictionary *)systemPrefs enumerateKeysAndObjectsUsingBlock:v17];
  internalPrefs = self->_internalPrefs;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__OSLogPreferencesSubsystem_categories__block_invoke_2;
  v15[3] = &unk_2787AEB60;
  v7 = v5;
  v16 = v7;
  [(NSDictionary *)internalPrefs enumerateKeysAndObjectsUsingBlock:v15];
  prefs = self->_prefs;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__OSLogPreferencesSubsystem_categories__block_invoke_3;
  v13[3] = &unk_2787AEB60;
  v9 = v7;
  v14 = v9;
  [(NSMutableDictionary *)prefs enumerateKeysAndObjectsUsingBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

void __39__OSLogPreferencesSubsystem_categories__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqualToString:@"DEFAULT-OPTIONS"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"Locked") & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __39__OSLogPreferencesSubsystem_categories__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqualToString:@"DEFAULT-OPTIONS"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"Locked") & 1) == 0 && (objc_msgSend(*(a1 + 32), "containsObject:", v3) & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __39__OSLogPreferencesSubsystem_categories__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqualToString:@"DEFAULT-OPTIONS"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"Locked") & 1) == 0 && (objc_msgSend(*(a1 + 32), "containsObject:", v3) & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (OSLogPreferencesSubsystem)initWithName:(id)name
{
  nameCopy = name;
  v38.receiver = self;
  v38.super_class = OSLogPreferencesSubsystem;
  v5 = [(OSLogPreferencesSubsystem *)&v38 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = nameCopy;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_app_cryptex_sysprefsdir_path()];
    v10 = [v9 stringByAppendingPathComponent:@"Subsystems"];
    v11 = [v10 stringByAppendingPathComponent:v8];
    v12 = [v11 stringByAppendingPathExtension:@"plist"];

    v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v12];
    if (!v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_os_cryptex_sysprefsdir_path()];
      v15 = [v14 stringByAppendingPathComponent:@"Subsystems"];
      v16 = [v15 stringByAppendingPathComponent:v8];
      v17 = [v16 stringByAppendingPathExtension:@"plist"];

      v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v17];
      if (v13)
      {
        v12 = v17;
      }

      else
      {
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_sysprefsdir_path()];
        v19 = [v18 stringByAppendingPathComponent:@"Subsystems"];
        v20 = [v19 stringByAppendingPathComponent:v8];
        v12 = [v20 stringByAppendingPathExtension:@"plist"];

        v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v12];
      }
    }

    v21 = v13;

    systemPrefs = v5->_systemPrefs;
    v5->_systemPrefs = v21;

    if (_os_trace_is_development_build())
    {
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_intprefsdir_path()];
      v24 = [v23 stringByAppendingPathComponent:@"Subsystems"];
      v25 = [v24 stringByAppendingPathComponent:v8];
      v26 = [v25 stringByAppendingPathExtension:@"plist"];
      internalPrefsFile = v5->_internalPrefsFile;
      v5->_internalPrefsFile = v26;

      v28 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5->_internalPrefsFile];
      internalPrefs = v5->_internalPrefs;
      v5->_internalPrefs = v28;
    }

    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_prefsdir_path()];
    v31 = [v30 stringByAppendingPathComponent:@"Subsystems"];
    v32 = [v31 stringByAppendingPathComponent:v8];
    v33 = [v32 stringByAppendingPathExtension:@"plist"];
    prefsFile = v5->_prefsFile;
    v5->_prefsFile = v33;

    v35 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5->_prefsFile];
    prefs = v5->_prefs;
    v5->_prefs = v35;
  }

  return v5;
}

@end