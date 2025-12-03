@interface OSLogPreferencesManager
+ (id)sharedManager;
- (OSLogPreferencesManager)init;
- (id)_levelPrefs;
- (int64_t)enabledLevel;
- (int64_t)persistedLevel;
- (void)reset;
- (void)resetAll;
- (void)resetAllProcesses;
- (void)resetAllSubsystems;
- (void)setEnabledLevel:(int64_t)level;
- (void)setPersistedLevel:(int64_t)level;
@end

@implementation OSLogPreferencesManager

- (void)resetAllSubsystems
{
  subsystems = [(OSLogPreferencesManager *)self subsystems];
  [subsystems enumerateObjectsUsingBlock:&__block_literal_global_40];
}

void __45__OSLogPreferencesManager_resetAllSubsystems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[OSLogPreferencesSubsystem alloc] initWithName:v2];

  [(OSLogPreferencesSubsystem *)v3 resetAll];
}

- (void)resetAllProcesses
{
  processes = [(OSLogPreferencesManager *)self processes];
  [processes enumerateObjectsUsingBlock:&__block_literal_global_37];
}

void __44__OSLogPreferencesManager_resetAllProcesses__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[OSLogPreferencesProcess alloc] initWithBundleID:v2];

  [(OSLogPreferencesProcess *)v3 reset];
}

- (void)resetAll
{
  [(OSLogPreferencesManager *)self reset];
  [(OSLogPreferencesManager *)self resetAllProcesses];

  [(OSLogPreferencesManager *)self resetAllSubsystems];
}

- (void)reset
{
  prefs = self->_prefs;
  self->_prefs = 0;

  name = self->_name;

  _OSLogRemovePreferences(1u, name);
}

- (void)setPersistedLevel:(int64_t)level
{
  _levelPrefs = [(OSLogPreferencesManager *)self _levelPrefs];
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

  _OSLogInstallPreferences(1u, self->_name, self->_prefs);
}

- (void)setEnabledLevel:(int64_t)level
{
  _levelPrefs = [(OSLogPreferencesManager *)self _levelPrefs];
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

  _OSLogInstallPreferences(1u, self->_name, self->_prefs);
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
  if (v3 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (int64_t)enabledLevel
{
  v2 = [(NSMutableDictionary *)self->_prefs objectForKey:@"Level"];
  v3 = _LevelForKey(v2, @"Enable");
  if (v3 == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (OSLogPreferencesManager)init
{
  v12.receiver = self;
  v12.super_class = OSLogPreferencesManager;
  v2 = [(OSLogPreferencesManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = @"com.apple.system.logging";

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_prefsdir_path()];
    v6 = [v5 stringByAppendingPathComponent:v3->_name];
    v7 = [v6 stringByAppendingPathExtension:@"plist"];
    prefsFile = v3->_prefsFile;
    v3->_prefsFile = v7;

    v9 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v3->_prefsFile];
    prefs = v3->_prefs;
    v3->_prefs = v9;
  }

  return v3;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_20);
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __40__OSLogPreferencesManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(OSLogPreferencesManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end