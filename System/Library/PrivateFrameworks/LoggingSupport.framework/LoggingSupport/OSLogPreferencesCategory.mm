@interface OSLogPreferencesCategory
- (BOOL)isLocked;
- (BOOL)signpostAllowStreaming;
- (BOOL)signpostBacktracesEnabled;
- (BOOL)signpostEnabled;
- (BOOL)signpostPersisted;
- (OSLogPreferencesCategory)initWithName:(id)name subsystem:(id)subsystem;
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

@implementation OSLogPreferencesCategory

- (void)reset
{
  if (![(OSLogPreferencesCategory *)self isLocked])
  {
    subsystem = [(OSLogPreferencesCategory *)self subsystem];
    name = [(OSLogPreferencesCategory *)self name];
    [subsystem _resetCategory:name];
  }
}

- (void)setPersistedLevel:(int64_t)level
{
  if (![(OSLogPreferencesCategory *)self isLocked])
  {
    subsystem = [(OSLogPreferencesCategory *)self subsystem];
    name = [(OSLogPreferencesCategory *)self name];
    [subsystem _setPersistedLevel:level forCategory:name];
  }
}

- (void)setEnabledLevel:(int64_t)level
{
  if (![(OSLogPreferencesCategory *)self isLocked])
  {
    subsystem = [(OSLogPreferencesCategory *)self subsystem];
    name = [(OSLogPreferencesCategory *)self name];
    [subsystem _setEnabledLevel:level forCategory:name];
  }
}

- (BOOL)signpostAllowStreaming
{
  subsystem = [(OSLogPreferencesCategory *)self subsystem];
  name = [(OSLogPreferencesCategory *)self name];
  v5 = [subsystem _signpostAllowStreamingForCategory:name];

  return v5;
}

- (BOOL)signpostBacktracesEnabled
{
  subsystem = [(OSLogPreferencesCategory *)self subsystem];
  name = [(OSLogPreferencesCategory *)self name];
  v5 = [subsystem _signpostBacktracesEnabledForCategory:name];

  return v5;
}

- (BOOL)signpostPersisted
{
  subsystem = [(OSLogPreferencesCategory *)self subsystem];
  name = [(OSLogPreferencesCategory *)self name];
  v5 = [subsystem _signpostPersistedForCategory:name];

  return v5;
}

- (BOOL)signpostEnabled
{
  subsystem = [(OSLogPreferencesCategory *)self subsystem];
  name = [(OSLogPreferencesCategory *)self name];
  v5 = [subsystem _signpostEnabledForCategory:name];

  return v5;
}

- (int64_t)persistedLevel
{
  subsystem = [(OSLogPreferencesCategory *)self subsystem];
  name = [(OSLogPreferencesCategory *)self name];
  v5 = [subsystem _persistedLevelForCategory:name];

  return v5;
}

- (int64_t)enabledLevel
{
  subsystem = [(OSLogPreferencesCategory *)self subsystem];
  name = [(OSLogPreferencesCategory *)self name];
  v5 = [subsystem _enabledLevelForCategory:name];

  return v5;
}

- (int64_t)defaultPersistedLevel
{
  subsystem = [(OSLogPreferencesCategory *)self subsystem];
  name = [(OSLogPreferencesCategory *)self name];
  v5 = [subsystem _defaultPersistedLevelForCategory:name];

  return v5;
}

- (int64_t)defaultEnabledLevel
{
  subsystem = [(OSLogPreferencesCategory *)self subsystem];
  name = [(OSLogPreferencesCategory *)self name];
  v5 = [subsystem _defaultEnabledLevelForCategory:name];

  return v5;
}

- (int64_t)effectivePersistedLevel
{
  result = [(OSLogPreferencesCategory *)self persistedLevel];
  if (result == 1)
  {
    result = [(OSLogPreferencesCategory *)self defaultPersistedLevel];
    if (result == 1)
    {
      subsystem = [(OSLogPreferencesCategory *)self subsystem];
      effectivePersistedLevel = [subsystem effectivePersistedLevel];

      return effectivePersistedLevel;
    }
  }

  return result;
}

- (int64_t)effectiveEnabledLevel
{
  result = [(OSLogPreferencesCategory *)self enabledLevel];
  if (result == 1)
  {
    result = [(OSLogPreferencesCategory *)self defaultEnabledLevel];
    if (result == 1)
    {
      subsystem = [(OSLogPreferencesCategory *)self subsystem];
      effectiveEnabledLevel = [subsystem effectiveEnabledLevel];

      return effectiveEnabledLevel;
    }
  }

  return result;
}

- (BOOL)isLocked
{
  subsystem = [(OSLogPreferencesCategory *)self subsystem];
  isLocked = [subsystem isLocked];

  return isLocked;
}

- (OSLogPreferencesCategory)initWithName:(id)name subsystem:(id)subsystem
{
  nameCopy = name;
  subsystemCopy = subsystem;
  v12.receiver = self;
  v12.super_class = OSLogPreferencesCategory;
  v8 = [(OSLogPreferencesCategory *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_subsystem, subsystem);
  }

  return v8;
}

@end