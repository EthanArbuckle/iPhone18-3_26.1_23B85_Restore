@interface MTUserDefaults
+ (id)_localNotificationForDistributedNotification:(id)notification;
+ (id)sharedUserDefaults;
- (BOOL)BOOLForKey:(id)key exists:(BOOL *)exists;
- (MTUserDefaults)initWithUserDefaults:(id)defaults;
- (double)timeIntervalForKey:(id)key exists:(BOOL *)exists;
- (double)timeIntervalForKey:(id)key isValid:(id)valid defaultValue:(double)value;
- (float)floatForKey:(id)key exists:(BOOL *)exists;
- (id)objectForKey:(id)key defaultValue:(id)value;
- (int64_t)integerForKey:(id)key exists:(BOOL *)exists;
- (int64_t)integerForKey:(id)key isValid:(id)valid defaultValue:(int64_t)value;
- (void)_cleanupObserversForNotification:(id)notification;
- (void)_postNotification:(id)notification;
- (void)distributedNotificationPosted:(id)posted;
- (void)registerNotification:(id)notification observer:(id)observer;
- (void)removeAllObjects;
- (void)setFloat:(float)float forKey:(id)key notification:(id)notification;
- (void)setInteger:(int64_t)integer forKey:(id)key notification:(id)notification;
- (void)setObject:(id)object forKey:(id)key notification:(id)notification;
- (void)setTimeInterval:(double)interval forKey:(id)key notification:(id)notification;
- (void)unregisterNotification:(id)notification observer:(id)observer;
@end

@implementation MTUserDefaults

void __36__MTUserDefaults_sharedUserDefaults__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v0 bundleIdentifier];

  v1 = [v7 isEqualToString:@"com.apple.mobiletimerd"];
  v2 = [MTUserDefaults alloc];
  if (v1)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobiletimerd"];
  }

  v4 = v3;
  v5 = [(MTUserDefaults *)v2 initWithUserDefaults:v3];
  v6 = sharedUserDefaults_sharedUserDefaults;
  sharedUserDefaults_sharedUserDefaults = v5;
}

+ (id)sharedUserDefaults
{
  if (sharedUserDefaults_onceToken != -1)
  {
    +[MTUserDefaults sharedUserDefaults];
  }

  v3 = sharedUserDefaults_sharedUserDefaults;

  return v3;
}

- (MTUserDefaults)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v13.receiver = self;
  v13.super_class = MTUserDefaults;
  v6 = [(MTUserDefaults *)&v13 init];
  if (v6)
  {
    v7 = MTLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(MTUserDefaults *)v6 initWithUserDefaults:v7];
    }

    objc_storeStrong(&v6->_userDefaults, defaults);
    v8 = objc_opt_new();
    observers = v6->_observers;
    v6->_observers = v8;

    v10 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.mobiletimer.MTUserDefaults", +[MTScheduler defaultPriority]);
    serializer = v6->_serializer;
    v6->_serializer = v10;
  }

  return v6;
}

- (void)setFloat:(float)float forKey:(id)key notification:(id)notification
{
  v8 = MEMORY[0x1E696AD98];
  notificationCopy = notification;
  keyCopy = key;
  *&v11 = float;
  v12 = [v8 numberWithFloat:v11];
  [(MTUserDefaults *)self setObject:v12 forKey:keyCopy notification:notificationCopy];
}

- (float)floatForKey:(id)key exists:(BOOL *)exists
{
  v5 = [(MTUserDefaults *)self objectForKey:key];
  v6 = v5;
  if (exists)
  {
    *exists = v5 != 0;
  }

  [v5 floatValue];
  v8 = v7;

  return v8;
}

- (BOOL)BOOLForKey:(id)key exists:(BOOL *)exists
{
  v5 = [(MTUserDefaults *)self objectForKey:key];
  v6 = v5;
  if (exists)
  {
    *exists = v5 != 0;
  }

  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setInteger:(int64_t)integer forKey:(id)key notification:(id)notification
{
  v8 = MEMORY[0x1E696AD98];
  notificationCopy = notification;
  keyCopy = key;
  v11 = [v8 numberWithInteger:integer];
  [(MTUserDefaults *)self setObject:v11 forKey:keyCopy notification:notificationCopy];
}

- (int64_t)integerForKey:(id)key exists:(BOOL *)exists
{
  v5 = [(MTUserDefaults *)self objectForKey:key];
  v6 = v5;
  if (exists)
  {
    *exists = v5 != 0;
  }

  integerValue = [v5 integerValue];

  return integerValue;
}

- (int64_t)integerForKey:(id)key isValid:(id)valid defaultValue:(int64_t)value
{
  validCopy = valid;
  v12 = 0;
  v9 = [(MTUserDefaults *)self integerForKey:key exists:&v12];
  if (v12 != 1 || (valueCopy = v9, (validCopy[2](validCopy, v9) & 1) == 0))
  {
    valueCopy = value;
  }

  return valueCopy;
}

- (void)setTimeInterval:(double)interval forKey:(id)key notification:(id)notification
{
  v8 = MEMORY[0x1E696AD98];
  notificationCopy = notification;
  keyCopy = key;
  v11 = [v8 numberWithDouble:interval];
  [(MTUserDefaults *)self setObject:v11 forKey:keyCopy notification:notificationCopy];
}

- (double)timeIntervalForKey:(id)key exists:(BOOL *)exists
{
  v5 = [(MTUserDefaults *)self objectForKey:key];
  v6 = v5;
  if (exists)
  {
    *exists = v5 != 0;
  }

  [v5 doubleValue];
  v8 = v7;

  return v8;
}

- (double)timeIntervalForKey:(id)key isValid:(id)valid defaultValue:(double)value
{
  validCopy = valid;
  v12 = 0;
  [(MTUserDefaults *)self timeIntervalForKey:key exists:&v12];
  if (v12 != 1 || (valueCopy = v9, (validCopy[2](validCopy) & 1) == 0))
  {
    valueCopy = value;
  }

  return valueCopy;
}

- (id)objectForKey:(id)key defaultValue:(id)value
{
  userDefaults = self->_userDefaults;
  valueCopy = value;
  v7 = [(NSUserDefaults *)userDefaults objectForKey:key];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v9;
}

- (void)setObject:(id)object forKey:(id)key notification:(id)notification
{
  userDefaults = self->_userDefaults;
  notificationCopy = notification;
  [(NSUserDefaults *)userDefaults setObject:object forKey:key];
  [(MTUserDefaults *)self _postNotification:notificationCopy];
}

- (void)removeAllObjects
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dictionaryRepresentation = [(NSUserDefaults *)self->_userDefaults dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        if (*(*(&v10 + 1) + 8 * v8))
        {
          [(MTUserDefaults *)self removeObjectForKey:?];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_postNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    v5 = MTLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(MTUserDefaults *)self _postNotification:notificationCopy, v5];
    }

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    v7 = [objc_opt_class() _distributedNotificationForLocalNotification:notificationCopy];
    [defaultCenter postNotificationName:v7 object:0];
  }
}

- (void)registerNotification:(id)notification observer:(id)observer
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  observerCopy = observer;
  v8 = MTLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    selfCopy = self;
    v18 = 2114;
    v19 = observerCopy;
    v20 = 2114;
    v21 = notificationCopy;
    _os_log_debug_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ registering %{public}@ for %{public}@", buf, 0x20u);
  }

  serializer = self->_serializer;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__MTUserDefaults_registerNotification_observer___block_invoke;
  v13[3] = &unk_1E7B0C9A0;
  v13[4] = self;
  v14 = notificationCopy;
  v15 = observerCopy;
  v10 = observerCopy;
  v11 = notificationCopy;
  [(NAScheduler *)serializer performBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __48__MTUserDefaults_registerNotification_observer___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v7 = v2;
  if (v2)
  {
    [v2 addObject:a1[6]];
  }

  else
  {
    v3 = [MEMORY[0x1E696ABB0] defaultCenter];
    v4 = a1[4];
    v5 = [objc_opt_class() _distributedNotificationForLocalNotification:a1[5]];
    [v3 addObserver:v4 selector:sel_distributedNotificationPosted_ name:v5 object:0];

    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [v6 addObject:a1[6]];
    [*(a1[4] + 24) setObject:v6 forKeyedSubscript:a1[5]];
  }
}

- (void)distributedNotificationPosted:(id)posted
{
  name = [posted name];
  v5 = [objc_opt_class() _localNotificationForDistributedNotification:name];
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MTUserDefaults_distributedNotificationPosted___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(NAScheduler *)serializer performBlock:v8];
}

void __48__MTUserDefaults_distributedNotificationPosted___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _cleanupObserversForNotification:*(a1 + 40)];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          v7 = [v6 notificationObject];
        }

        else
        {
          v7 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [v6 notificationCenter];
        }

        else
        {
          [MEMORY[0x1E696AD88] defaultCenter];
        }
        v8 = ;
        v9 = MTLogForCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          *buf = 138543874;
          v26 = v13;
          v27 = 2114;
          v28 = v14;
          v29 = 2114;
          v30 = v7;
          _os_log_debug_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ posting %{public}@ for %{public}@", buf, 0x20u);
        }

        v10 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __48__MTUserDefaults_distributedNotificationPosted___block_invoke_34;
        v17[3] = &unk_1E7B0C9A0;
        v18 = v8;
        v19 = *(a1 + 40);
        v20 = v7;
        v11 = v7;
        v12 = v8;
        [v10 performBlock:v17];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v3);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)unregisterNotification:(id)notification observer:(id)observer
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  observerCopy = observer;
  v8 = MTLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    selfCopy = self;
    v18 = 2114;
    v19 = observerCopy;
    v20 = 2114;
    v21 = notificationCopy;
    _os_log_debug_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ unregistering %{public}@ for %{public}@", buf, 0x20u);
  }

  serializer = self->_serializer;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__MTUserDefaults_unregisterNotification_observer___block_invoke;
  v13[3] = &unk_1E7B0C9A0;
  v13[4] = self;
  v14 = notificationCopy;
  v15 = observerCopy;
  v10 = observerCopy;
  v11 = notificationCopy;
  [(NAScheduler *)serializer performBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __50__MTUserDefaults_unregisterNotification_observer___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  [v2 removeObject:*(a1 + 48)];
  [*(a1 + 32) _cleanupObserversForNotification:*(a1 + 40)];
}

- (void)_cleanupObserversForNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (notificationCopy)
  {
    v11 = notificationCopy;
    v6 = [(NSMutableDictionary *)self->_observers objectForKeyedSubscript:notificationCopy];
    allObjects = [v6 allObjects];
    v8 = [allObjects count];

    v5 = v11;
    if (!v8)
    {
      defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
      v10 = [objc_opt_class() _distributedNotificationForLocalNotification:v11];
      [defaultCenter removeObserver:self name:v10 object:0];

      notificationCopy = [(NSMutableDictionary *)self->_observers removeObjectForKey:v11];
      v5 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](notificationCopy, v5);
}

+ (id)_localNotificationForDistributedNotification:(id)notification
{
  notificationCopy = notification;
  if ([notificationCopy hasPrefix:@"Distributed"])
  {
    v4 = [notificationCopy substringFromIndex:{objc_msgSend(@"Distributed", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithUserDefaults:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ initializing...", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_postNotification:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_DEBUG, "%{public}@ broadcasting %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end