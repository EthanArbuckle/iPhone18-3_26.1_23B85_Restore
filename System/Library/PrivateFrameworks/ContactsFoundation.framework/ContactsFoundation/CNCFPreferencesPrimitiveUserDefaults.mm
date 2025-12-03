@interface CNCFPreferencesPrimitiveUserDefaults
- (BOOL)primitiveBoolValueForKey:(id)key keyExists:(BOOL *)exists;
- (CNCFPreferencesPrimitiveUserDefaults)initWithApplicationID:(id)d;
- (__CFString)CFApplicationID;
- (id)primitiveObjectForKey:(id)key;
- (int64_t)primitiveIntegerValueForKey:(id)key keyExists:(BOOL *)exists;
- (void)primitiveRemoveObjectForKey:(id)key;
- (void)setPrimitiveObject:(id)object forKey:(id)key;
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

- (CNCFPreferencesPrimitiveUserDefaults)initWithApplicationID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CNCFPreferencesPrimitiveUserDefaults;
  v5 = [(CNCFPreferencesPrimitiveUserDefaults *)&v10 init];
  if (v5)
  {
    v6 = [dCopy copy];
    applicationID = v5->_applicationID;
    v5->_applicationID = v6;

    v5->_autosyncTimerIsActive = 0;
    v8 = v5;
  }

  return v5;
}

- (id)primitiveObjectForKey:(id)key
{
  keyCopy = key;
  v5 = CFPreferencesCopyAppValue(keyCopy, [(CNCFPreferencesPrimitiveUserDefaults *)self CFApplicationID]);

  return v5;
}

- (void)setPrimitiveObject:(id)object forKey:(id)key
{
  keyCopy = key;
  value = object;
  CFPreferencesSetAppValue(keyCopy, value, [(CNCFPreferencesPrimitiveUserDefaults *)self CFApplicationID]);
}

- (int64_t)primitiveIntegerValueForKey:(id)key keyExists:(BOOL *)exists
{
  keyCopy = key;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(keyCopy, [(CNCFPreferencesPrimitiveUserDefaults *)self CFApplicationID], exists);

  return AppIntegerValue;
}

- (BOOL)primitiveBoolValueForKey:(id)key keyExists:(BOOL *)exists
{
  keyCopy = key;
  LODWORD(exists) = CFPreferencesGetAppBooleanValue(keyCopy, [(CNCFPreferencesPrimitiveUserDefaults *)self CFApplicationID], exists);

  return exists != 0;
}

- (void)primitiveRemoveObjectForKey:(id)key
{
  key = key;
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