@interface CalPreferences
+ (id)log;
- (BOOL)getBooleanPreference:(id)a3 defaultValue:(BOOL)a4;
- (CalPreferences)initWithDomain:(id)a3 store:(id)a4 readOnly:(BOOL)a5;
- (id)getValueForPreference:(id)a3 expectedClass:(Class)a4;
- (int64_t)getIntegerPreference:(id)a3 defaultValue:(int64_t)a4;
- (void)_preferenceChangedExternally:(id)a3;
- (void)_preferenceChangedInternally:(id)a3;
- (void)dealloc;
- (void)registerReflectionForPreferenceWithNotificationName:(id)a3;
- (void)removePreference:(id)a3 notificationName:(id)a4;
- (void)setBooleanPreference:(id)a3 value:(BOOL)a4 notificationName:(id)a5;
- (void)setIntegerPreference:(id)a3 value:(int64_t)a4 notificationName:(id)a5;
- (void)setValueForPreference:(id)a3 value:(id)a4 notificationName:(id)a5;
- (void)unregisterReflectionForPreferenceWithNotificationName:(id)a3;
@end

@implementation CalPreferences

+ (id)log
{
  if (log_onceToken != -1)
  {
    +[CalPreferences log];
  }

  v3 = log_log;

  return v3;
}

uint64_t __21__CalPreferences_log__block_invoke()
{
  log_log = os_log_create("com.apple.calendar", "Preferences");

  return MEMORY[0x1EEE66BB8]();
}

- (CalPreferences)initWithDomain:(id)a3 store:(id)a4 readOnly:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CalPreferences;
  v10 = [(CalPreferences *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_store, a4);
    v11->_readOnly = a5;
    v12 = *MEMORY[0x1E695E8A8];
    if (v8)
    {
      v12 = v8;
    }

    v13 = v12;
    domain = v11->_domain;
    v11->_domain = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredNotificationsToReflect = v11->_registeredNotificationsToReflect;
    v11->_registeredNotificationsToReflect = v15;
  }

  return v11;
}

- (void)dealloc
{
  registeredNotificationsToReflect = self->_registeredNotificationsToReflect;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__CalPreferences_dealloc__block_invoke;
  v5[3] = &unk_1E7EC6900;
  v5[4] = self;
  [(NSMutableSet *)registeredNotificationsToReflect enumerateObjectsUsingBlock:v5];
  v4.receiver = self;
  v4.super_class = CalPreferences;
  [(CalPreferences *)&v4 dealloc];
}

- (void)registerReflectionForPreferenceWithNotificationName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    [CalDistributedNotificationCenter addObserver:self selector:sel__preferenceChangedExternally_ name:v5];
    [(NSMutableSet *)self->_registeredNotificationsToReflect addObject:v5];
  }

  else
  {
    v6 = +[CalPreferences log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CalPreferences registerReflectionForPreferenceWithNotificationName:];
    }
  }
}

- (void)unregisterReflectionForPreferenceWithNotificationName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    [CalDistributedNotificationCenter removeObserver:self name:v5];
    [(NSMutableSet *)self->_registeredNotificationsToReflect removeObject:v5];
  }

  else
  {
    v6 = +[CalPreferences log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CalPreferences registerReflectionForPreferenceWithNotificationName:];
    }
  }
}

- (BOOL)getBooleanPreference:(id)a3 defaultValue:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  v10 = a4;
  if (v6 && [v6 length])
  {
    [(CalPreferencesStore *)self->_store getBoolean:&v10 forDomain:self->_domain key:v7];
    a4 = v10;
  }

  else
  {
    v8 = +[CalPreferences log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CalPreferences getBooleanPreference:defaultValue:];
    }
  }

  return a4;
}

- (void)setBooleanPreference:(id)a3 value:(BOOL)a4 notificationName:(id)a5
{
  v6 = a4;
  v10 = a3;
  v8 = a5;
  if (v10 && !self->_readOnly && [v10 length])
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v6)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(CalPreferencesStore *)self->_store setValue:*v9 forDomain:self->_domain key:v10];
    [(CalPreferences *)self _preferenceChangedInternally:v8];
  }
}

- (int64_t)getIntegerPreference:(id)a3 defaultValue:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  v10 = a4;
  if (v6 && [v6 length])
  {
    [(CalPreferencesStore *)self->_store getInteger:&v10 forDomain:self->_domain key:v7];
    a4 = v10;
  }

  else
  {
    v8 = +[CalPreferences log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CalPreferences getBooleanPreference:defaultValue:];
    }
  }

  return a4;
}

- (void)setIntegerPreference:(id)a3 value:(int64_t)a4 notificationName:(id)a5
{
  v8 = a3;
  valuePtr = a4;
  v9 = a5;
  if (v8 && !self->_readOnly && [v8 length])
  {
    v10 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      [(CalPreferencesStore *)self->_store setValue:v10 forDomain:self->_domain key:v8];
      CFRelease(v11);
    }

    [(CalPreferences *)self _preferenceChangedInternally:v9];
  }
}

- (id)getValueForPreference:(id)a3 expectedClass:(Class)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 length])
  {
    v9 = +[CalPreferences log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CalPreferences getBooleanPreference:defaultValue:];
    }

    goto LABEL_11;
  }

  v15 = 0;
  [(CalPreferencesStore *)self->_store getValue:&v15 forDomain:self->_domain key:v7];
  v8 = v15;
  v9 = v8;
  if (a4 && v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = +[CalPreferences log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543874;
      v17 = v7;
      v18 = 2114;
      v19 = a4;
      v20 = 2114;
      v21 = v13;
      v14 = v13;
      _os_log_error_impl(&dword_1B990D000, v10, OS_LOG_TYPE_ERROR, "Unexpected type for preference [%{public}@] encountered.  Expected type: [%{public}@].  Actual type: [%{public}@]", buf, 0x20u);
    }

LABEL_11:
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setValueForPreference:(id)a3 value:(id)a4 notificationName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_readOnly)
  {
    if (v8 && [v8 length])
    {
      [(CalPreferencesStore *)self->_store setValue:v9 forDomain:self->_domain key:v8];
      [(CalPreferences *)self _preferenceChangedInternally:v10];
    }

    else
    {
      v11 = +[CalPreferences log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CalPreferences getBooleanPreference:defaultValue:];
      }
    }
  }
}

- (void)removePreference:(id)a3 notificationName:(id)a4
{
  if (!self->_readOnly)
  {
    store = self->_store;
    domain = self->_domain;
    v9 = a4;
    [(CalPreferencesStore *)store setValue:0 forDomain:domain key:a3];
    [(CalPreferences *)self _preferenceChangedInternally:v9];
  }
}

- (void)_preferenceChangedExternally:(id)a3
{
  v5 = a3;
  [(CalPreferences *)self _synchronizePreferences];
  if (v5 && [v5 length])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:v5 object:0];
  }
}

- (void)_preferenceChangedInternally:(id)a3
{
  name = a3;
  [(CalPreferences *)self _synchronizePreferences];
  if (name && [(__CFString *)name length])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:name object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
  }
}

@end