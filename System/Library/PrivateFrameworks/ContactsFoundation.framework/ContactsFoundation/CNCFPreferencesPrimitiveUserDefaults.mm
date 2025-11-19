@interface CNCFPreferencesPrimitiveUserDefaults
- (BOOL)primitiveBoolValueForKey:(id)a3 keyExists:(BOOL *)a4;
- (CNCFPreferencesPrimitiveUserDefaults)initWithApplicationID:(id)a3;
- (__CFString)CFApplicationID;
- (id)primitiveObjectForKey:(id)a3;
- (int64_t)primitiveIntegerValueForKey:(id)a3 keyExists:(BOOL *)a4;
- (void)primitiveRemoveObjectForKey:(id)a3;
- (void)setPrimitiveObject:(id)a3 forKey:(id)a4;
- (void)setupAutosync;
@end

@implementation CNCFPreferencesPrimitiveUserDefaults

- (__CFString)CFApplicationID
{
  if (self->_applicationID)
  {
    return self->_applicationID;
  }

  else
  {
    return *MEMORY[0x1E695E8A8];
  }
}

- (CNCFPreferencesPrimitiveUserDefaults)initWithApplicationID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNCFPreferencesPrimitiveUserDefaults;
  v5 = [(CNCFPreferencesPrimitiveUserDefaults *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    applicationID = v5->_applicationID;
    v5->_applicationID = v6;

    v5->_autosyncTimerIsActive = 0;
    v8 = v5;
  }

  return v5;
}

- (id)primitiveObjectForKey:(id)a3
{
  v4 = a3;
  v5 = CFPreferencesCopyAppValue(v4, [(CNCFPreferencesPrimitiveUserDefaults *)self CFApplicationID]);

  return v5;
}

- (void)setPrimitiveObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  value = a3;
  CFPreferencesSetAppValue(v6, value, [(CNCFPreferencesPrimitiveUserDefaults *)self CFApplicationID]);
}

- (int64_t)primitiveIntegerValueForKey:(id)a3 keyExists:(BOOL *)a4
{
  v6 = a3;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v6, [(CNCFPreferencesPrimitiveUserDefaults *)self CFApplicationID], a4);

  return AppIntegerValue;
}

- (BOOL)primitiveBoolValueForKey:(id)a3 keyExists:(BOOL *)a4
{
  v6 = a3;
  LODWORD(a4) = CFPreferencesGetAppBooleanValue(v6, [(CNCFPreferencesPrimitiveUserDefaults *)self CFApplicationID], a4);

  return a4 != 0;
}

- (void)primitiveRemoveObjectForKey:(id)a3
{
  key = a3;
  CFPreferencesSetAppValue(key, 0, [(CNCFPreferencesPrimitiveUserDefaults *)self CFApplicationID]);
}

- (void)setupAutosync
{
  v4 = 0;
  atomic_compare_exchange_strong(&self->_autosyncTimerIsActive, &v4, 0xFFFFFFFFFFFFFFFFLL);
  if (!v4)
  {
    block[9] = v2;
    block[10] = v3;
    v6 = dispatch_time(0, 15000000000);
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__CNCFPreferencesPrimitiveUserDefaults_setupAutosync__block_invoke;
    block[3] = &unk_1E6ED5830;
    block[4] = self;
    dispatch_after(v6, v7, block);
  }
}

@end