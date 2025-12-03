@interface CalPreferences
+ (id)log;
- (BOOL)getBooleanPreference:(id)preference defaultValue:(BOOL)value;
- (CalPreferences)initWithDomain:(id)domain store:(id)store readOnly:(BOOL)only;
- (id)getValueForPreference:(id)preference expectedClass:(Class)class;
- (int64_t)getIntegerPreference:(id)preference defaultValue:(int64_t)value;
- (void)_preferenceChangedExternally:(id)externally;
- (void)_preferenceChangedInternally:(id)internally;
- (void)dealloc;
- (void)registerReflectionForPreferenceWithNotificationName:(id)name;
- (void)removePreference:(id)preference notificationName:(id)name;
- (void)setBooleanPreference:(id)preference value:(BOOL)value notificationName:(id)name;
- (void)setIntegerPreference:(id)preference value:(int64_t)value notificationName:(id)name;
- (void)setValueForPreference:(id)preference value:(id)value notificationName:(id)name;
- (void)unregisterReflectionForPreferenceWithNotificationName:(id)name;
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

- (CalPreferences)initWithDomain:(id)domain store:(id)store readOnly:(BOOL)only
{
  domainCopy = domain;
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = CalPreferences;
  v10 = [(CalPreferences *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_store, store);
    v11->_readOnly = only;
    v12 = *MEMORY[0x1E695E8A8];
    if (domainCopy)
    {
      v12 = domainCopy;
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

- (void)registerReflectionForPreferenceWithNotificationName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy && [nameCopy length])
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

- (void)unregisterReflectionForPreferenceWithNotificationName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy && [nameCopy length])
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

- (BOOL)getBooleanPreference:(id)preference defaultValue:(BOOL)value
{
  preferenceCopy = preference;
  v7 = preferenceCopy;
  valueCopy = value;
  if (preferenceCopy && [preferenceCopy length])
  {
    [(CalPreferencesStore *)self->_store getBoolean:&valueCopy forDomain:self->_domain key:v7];
    value = valueCopy;
  }

  else
  {
    v8 = +[CalPreferences log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CalPreferences getBooleanPreference:defaultValue:];
    }
  }

  return value;
}

- (void)setBooleanPreference:(id)preference value:(BOOL)value notificationName:(id)name
{
  valueCopy = value;
  preferenceCopy = preference;
  nameCopy = name;
  if (preferenceCopy && !self->_readOnly && [preferenceCopy length])
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!valueCopy)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(CalPreferencesStore *)self->_store setValue:*v9 forDomain:self->_domain key:preferenceCopy];
    [(CalPreferences *)self _preferenceChangedInternally:nameCopy];
  }
}

- (int64_t)getIntegerPreference:(id)preference defaultValue:(int64_t)value
{
  preferenceCopy = preference;
  v7 = preferenceCopy;
  valueCopy = value;
  if (preferenceCopy && [preferenceCopy length])
  {
    [(CalPreferencesStore *)self->_store getInteger:&valueCopy forDomain:self->_domain key:v7];
    value = valueCopy;
  }

  else
  {
    v8 = +[CalPreferences log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CalPreferences getBooleanPreference:defaultValue:];
    }
  }

  return value;
}

- (void)setIntegerPreference:(id)preference value:(int64_t)value notificationName:(id)name
{
  preferenceCopy = preference;
  valuePtr = value;
  nameCopy = name;
  if (preferenceCopy && !self->_readOnly && [preferenceCopy length])
  {
    v10 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      [(CalPreferencesStore *)self->_store setValue:v10 forDomain:self->_domain key:preferenceCopy];
      CFRelease(v11);
    }

    [(CalPreferences *)self _preferenceChangedInternally:nameCopy];
  }
}

- (id)getValueForPreference:(id)preference expectedClass:(Class)class
{
  v22 = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  v7 = preferenceCopy;
  if (!preferenceCopy || ![preferenceCopy length])
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
  if (class && v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = +[CalPreferences log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543874;
      v17 = v7;
      v18 = 2114;
      classCopy = class;
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

- (void)setValueForPreference:(id)preference value:(id)value notificationName:(id)name
{
  preferenceCopy = preference;
  valueCopy = value;
  nameCopy = name;
  if (!self->_readOnly)
  {
    if (preferenceCopy && [preferenceCopy length])
    {
      [(CalPreferencesStore *)self->_store setValue:valueCopy forDomain:self->_domain key:preferenceCopy];
      [(CalPreferences *)self _preferenceChangedInternally:nameCopy];
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

- (void)removePreference:(id)preference notificationName:(id)name
{
  if (!self->_readOnly)
  {
    store = self->_store;
    domain = self->_domain;
    nameCopy = name;
    [(CalPreferencesStore *)store setValue:0 forDomain:domain key:preference];
    [(CalPreferences *)self _preferenceChangedInternally:nameCopy];
  }
}

- (void)_preferenceChangedExternally:(id)externally
{
  externallyCopy = externally;
  [(CalPreferences *)self _synchronizePreferences];
  if (externallyCopy && [externallyCopy length])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:externallyCopy object:0];
  }
}

- (void)_preferenceChangedInternally:(id)internally
{
  name = internally;
  [(CalPreferences *)self _synchronizePreferences];
  if (name && [(__CFString *)name length])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:name object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
  }
}

@end