@interface OSLogPreferencesCategory
- (BOOL)isLocked;
- (BOOL)signpostAllowStreaming;
- (BOOL)signpostBacktracesEnabled;
- (BOOL)signpostEnabled;
- (BOOL)signpostPersisted;
- (OSLogPreferencesCategory)initWithName:(id)a3 subsystem:(id)a4;
- (int64_t)defaultEnabledLevel;
- (int64_t)defaultPersistedLevel;
- (int64_t)effectiveEnabledLevel;
- (int64_t)effectivePersistedLevel;
- (int64_t)enabledLevel;
- (int64_t)persistedLevel;
- (void)reset;
- (void)setEnabledLevel:(int64_t)a3;
- (void)setPersistedLevel:(int64_t)a3;
@end

@implementation OSLogPreferencesCategory

- (void)reset
{
  if (![(OSLogPreferencesCategory *)self isLocked])
  {
    v4 = [(OSLogPreferencesCategory *)self subsystem];
    v3 = [(OSLogPreferencesCategory *)self name];
    [v4 _resetCategory:v3];
  }
}

- (void)setPersistedLevel:(int64_t)a3
{
  if (![(OSLogPreferencesCategory *)self isLocked])
  {
    v6 = [(OSLogPreferencesCategory *)self subsystem];
    v5 = [(OSLogPreferencesCategory *)self name];
    [v6 _setPersistedLevel:a3 forCategory:v5];
  }
}

- (void)setEnabledLevel:(int64_t)a3
{
  if (![(OSLogPreferencesCategory *)self isLocked])
  {
    v6 = [(OSLogPreferencesCategory *)self subsystem];
    v5 = [(OSLogPreferencesCategory *)self name];
    [v6 _setEnabledLevel:a3 forCategory:v5];
  }
}

- (BOOL)signpostAllowStreaming
{
  v3 = [(OSLogPreferencesCategory *)self subsystem];
  v4 = [(OSLogPreferencesCategory *)self name];
  v5 = [v3 _signpostAllowStreamingForCategory:v4];

  return v5;
}

- (BOOL)signpostBacktracesEnabled
{
  v3 = [(OSLogPreferencesCategory *)self subsystem];
  v4 = [(OSLogPreferencesCategory *)self name];
  v5 = [v3 _signpostBacktracesEnabledForCategory:v4];

  return v5;
}

- (BOOL)signpostPersisted
{
  v3 = [(OSLogPreferencesCategory *)self subsystem];
  v4 = [(OSLogPreferencesCategory *)self name];
  v5 = [v3 _signpostPersistedForCategory:v4];

  return v5;
}

- (BOOL)signpostEnabled
{
  v3 = [(OSLogPreferencesCategory *)self subsystem];
  v4 = [(OSLogPreferencesCategory *)self name];
  v5 = [v3 _signpostEnabledForCategory:v4];

  return v5;
}

- (int64_t)persistedLevel
{
  v3 = [(OSLogPreferencesCategory *)self subsystem];
  v4 = [(OSLogPreferencesCategory *)self name];
  v5 = [v3 _persistedLevelForCategory:v4];

  return v5;
}

- (int64_t)enabledLevel
{
  v3 = [(OSLogPreferencesCategory *)self subsystem];
  v4 = [(OSLogPreferencesCategory *)self name];
  v5 = [v3 _enabledLevelForCategory:v4];

  return v5;
}

- (int64_t)defaultPersistedLevel
{
  v3 = [(OSLogPreferencesCategory *)self subsystem];
  v4 = [(OSLogPreferencesCategory *)self name];
  v5 = [v3 _defaultPersistedLevelForCategory:v4];

  return v5;
}

- (int64_t)defaultEnabledLevel
{
  v3 = [(OSLogPreferencesCategory *)self subsystem];
  v4 = [(OSLogPreferencesCategory *)self name];
  v5 = [v3 _defaultEnabledLevelForCategory:v4];

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
      v4 = [(OSLogPreferencesCategory *)self subsystem];
      v5 = [v4 effectivePersistedLevel];

      return v5;
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
      v4 = [(OSLogPreferencesCategory *)self subsystem];
      v5 = [v4 effectiveEnabledLevel];

      return v5;
    }
  }

  return result;
}

- (BOOL)isLocked
{
  v2 = [(OSLogPreferencesCategory *)self subsystem];
  v3 = [v2 isLocked];

  return v3;
}

- (OSLogPreferencesCategory)initWithName:(id)a3 subsystem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = OSLogPreferencesCategory;
  v8 = [(OSLogPreferencesCategory *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_subsystem, a4);
  }

  return v8;
}

@end