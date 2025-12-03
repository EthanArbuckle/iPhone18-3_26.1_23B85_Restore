@interface OSLogPreferencesProcess
- (BOOL)isLocked;
- (OSLogPreferencesProcess)initWithBundleID:(id)d;
- (id)_levelPrefs;
- (int64_t)defaultEnabledLevel;
- (int64_t)defaultPersistedLevel;
- (int64_t)effectiveEnabledLevel;
- (int64_t)effectivePersistedLevel;
- (int64_t)enabledLevel;
- (int64_t)persistedLevel;
- (void)reset;
- (void)setEnabledLevel:(int64_t)level;
- (void)setPersistedLevel:(int64_t)level;
@end

@implementation OSLogPreferencesProcess

- (void)reset
{
  if (![(OSLogPreferencesProcess *)self isLocked])
  {
    prefs = self->_prefs;
    self->_prefs = 0;

    bundleID = self->_bundleID;

    _OSLogRemovePreferences(2u, bundleID);
  }
}

- (void)setPersistedLevel:(int64_t)level
{
  if (![(OSLogPreferencesProcess *)self isLocked])
  {
    _levelPrefs = [(OSLogPreferencesProcess *)self _levelPrefs];
    if (level > 4)
    {
      v6 = @"inherit";
    }

    else
    {
      v6 = off_2787AEBC8[level];
    }

    v8 = _levelPrefs;
    [_levelPrefs setObject:v6 forKey:@"Persist"];
    if (_LevelForKey(v8, @"Enable") < level)
    {
      if (level > 4)
      {
        v7 = @"inherit";
      }

      else
      {
        v7 = off_2787AEBC8[level];
      }

      [v8 setObject:v7 forKey:@"Enable"];
    }

    _OSLogInstallPreferences(2u, self->_bundleID, self->_prefs);
  }
}

- (void)setEnabledLevel:(int64_t)level
{
  if (![(OSLogPreferencesProcess *)self isLocked])
  {
    _levelPrefs = [(OSLogPreferencesProcess *)self _levelPrefs];
    if (level > 4)
    {
      v6 = @"inherit";
    }

    else
    {
      v6 = off_2787AEBC8[level];
    }

    v8 = _levelPrefs;
    [_levelPrefs setObject:v6 forKey:@"Enable"];
    if (_LevelForKey(v8, @"Persist") > level)
    {
      if (level > 4)
      {
        v7 = @"inherit";
      }

      else
      {
        v7 = off_2787AEBC8[level];
      }

      [v8 setObject:v7 forKey:@"Persist"];
    }

    _OSLogInstallPreferences(2u, self->_bundleID, self->_prefs);
  }
}

- (id)_levelPrefs
{
  prefs = self->_prefs;
  if (!prefs)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_prefs;
    self->_prefs = dictionary;

    prefs = self->_prefs;
  }

  dictionary2 = [(NSMutableDictionary *)prefs objectForKey:@"Level"];
  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_prefs setObject:dictionary2 forKey:@"Level"];
  }

  return dictionary2;
}

- (int64_t)persistedLevel
{
  v2 = [(NSMutableDictionary *)self->_prefs objectForKey:@"Level"];
  v3 = _LevelForKey(v2, @"Persist");

  return v3;
}

- (int64_t)enabledLevel
{
  v2 = [(NSMutableDictionary *)self->_prefs objectForKey:@"Level"];
  v3 = _LevelForKey(v2, @"Enable");

  return v3;
}

- (int64_t)defaultPersistedLevel
{
  v3 = [(NSDictionary *)self->_internalPrefs objectForKey:@"Level"];
  v4 = _LevelForKey(v3, @"Persist");
  if (v4 == 1)
  {
    v5 = [(NSDictionary *)self->_systemPrefs objectForKey:@"Level"];

    v6 = _LevelForKey(v5, @"Persist");
    v3 = v5;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (int64_t)defaultEnabledLevel
{
  v3 = [(NSDictionary *)self->_internalPrefs objectForKey:@"Level"];
  v4 = _LevelForKey(v3, @"Enable");
  if (v4 == 1)
  {
    v5 = [(NSDictionary *)self->_systemPrefs objectForKey:@"Level"];

    v6 = _LevelForKey(v5, @"Enable");
    v3 = v5;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (int64_t)effectivePersistedLevel
{
  result = [(OSLogPreferencesProcess *)self persistedLevel];
  if (result == 1)
  {
    result = [(OSLogPreferencesProcess *)self defaultPersistedLevel];
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
  result = [(OSLogPreferencesProcess *)self enabledLevel];
  if (result == 1)
  {
    result = [(OSLogPreferencesProcess *)self defaultEnabledLevel];
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

- (OSLogPreferencesProcess)initWithBundleID:(id)d
{
  dCopy = d;
  v30.receiver = self;
  v30.super_class = OSLogPreferencesProcess;
  v5 = [(OSLogPreferencesProcess *)&v30 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_sysprefsdir_path()];
    v9 = [v8 stringByAppendingPathComponent:@"Processes"];
    v10 = [v9 stringByAppendingPathComponent:dCopy];
    v11 = [v10 stringByAppendingPathExtension:@"plist"];
    systemPrefsFile = v5->_systemPrefsFile;
    v5->_systemPrefsFile = v11;

    v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5->_systemPrefsFile];
    systemPrefs = v5->_systemPrefs;
    v5->_systemPrefs = v13;

    if (_os_trace_is_development_build())
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_intprefsdir_path()];
      v16 = [v15 stringByAppendingPathComponent:@"Processes"];
      v17 = [v16 stringByAppendingPathComponent:dCopy];
      v18 = [v17 stringByAppendingPathExtension:@"plist"];
      internalPrefsFile = v5->_internalPrefsFile;
      v5->_internalPrefsFile = v18;

      v20 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5->_internalPrefsFile];
      internalPrefs = v5->_internalPrefs;
      v5->_internalPrefs = v20;
    }

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_prefsdir_path()];
    v23 = [v22 stringByAppendingPathComponent:@"Processes"];
    v24 = [v23 stringByAppendingPathComponent:dCopy];
    v25 = [v24 stringByAppendingPathExtension:@"plist"];
    prefsFile = v5->_prefsFile;
    v5->_prefsFile = v25;

    v27 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v5->_prefsFile];
    prefs = v5->_prefs;
    v5->_prefs = v27;
  }

  return v5;
}

@end