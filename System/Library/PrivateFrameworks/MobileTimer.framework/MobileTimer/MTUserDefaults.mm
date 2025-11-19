@interface MTUserDefaults
+ (id)_localNotificationForDistributedNotification:(id)a3;
+ (id)sharedUserDefaults;
- (BOOL)BOOLForKey:(id)a3 exists:(BOOL *)a4;
- (MTUserDefaults)initWithUserDefaults:(id)a3;
- (double)timeIntervalForKey:(id)a3 exists:(BOOL *)a4;
- (double)timeIntervalForKey:(id)a3 isValid:(id)a4 defaultValue:(double)a5;
- (float)floatForKey:(id)a3 exists:(BOOL *)a4;
- (id)objectForKey:(id)a3 defaultValue:(id)a4;
- (int64_t)integerForKey:(id)a3 exists:(BOOL *)a4;
- (int64_t)integerForKey:(id)a3 isValid:(id)a4 defaultValue:(int64_t)a5;
- (void)_cleanupObserversForNotification:(id)a3;
- (void)_postNotification:(id)a3;
- (void)distributedNotificationPosted:(id)a3;
- (void)registerNotification:(id)a3 observer:(id)a4;
- (void)removeAllObjects;
- (void)setFloat:(float)a3 forKey:(id)a4 notification:(id)a5;
- (void)setInteger:(int64_t)a3 forKey:(id)a4 notification:(id)a5;
- (void)setObject:(id)a3 forKey:(id)a4 notification:(id)a5;
- (void)setTimeInterval:(double)a3 forKey:(id)a4 notification:(id)a5;
- (void)unregisterNotification:(id)a3 observer:(id)a4;
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

- (MTUserDefaults)initWithUserDefaults:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_userDefaults, a3);
    v8 = objc_opt_new();
    observers = v6->_observers;
    v6->_observers = v8;

    v10 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.mobiletimer.MTUserDefaults", +[MTScheduler defaultPriority]);
    serializer = v6->_serializer;
    v6->_serializer = v10;
  }

  return v6;
}

- (void)setFloat:(float)a3 forKey:(id)a4 notification:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  *&v11 = a3;
  v12 = [v8 numberWithFloat:v11];
  [(MTUserDefaults *)self setObject:v12 forKey:v10 notification:v9];
}

- (float)floatForKey:(id)a3 exists:(BOOL *)a4
{
  v5 = [(MTUserDefaults *)self objectForKey:a3];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  [v5 floatValue];
  v8 = v7;

  return v8;
}

- (BOOL)BOOLForKey:(id)a3 exists:(BOOL *)a4
{
  v5 = [(MTUserDefaults *)self objectForKey:a3];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  v7 = [v5 BOOLValue];

  return v7;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4 notification:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  v11 = [v8 numberWithInteger:a3];
  [(MTUserDefaults *)self setObject:v11 forKey:v10 notification:v9];
}

- (int64_t)integerForKey:(id)a3 exists:(BOOL *)a4
{
  v5 = [(MTUserDefaults *)self objectForKey:a3];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  v7 = [v5 integerValue];

  return v7;
}

- (int64_t)integerForKey:(id)a3 isValid:(id)a4 defaultValue:(int64_t)a5
{
  v8 = a4;
  v12 = 0;
  v9 = [(MTUserDefaults *)self integerForKey:a3 exists:&v12];
  if (v12 != 1 || (v10 = v9, (v8[2](v8, v9) & 1) == 0))
  {
    v10 = a5;
  }

  return v10;
}

- (void)setTimeInterval:(double)a3 forKey:(id)a4 notification:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  v11 = [v8 numberWithDouble:a3];
  [(MTUserDefaults *)self setObject:v11 forKey:v10 notification:v9];
}

- (double)timeIntervalForKey:(id)a3 exists:(BOOL *)a4
{
  v5 = [(MTUserDefaults *)self objectForKey:a3];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  [v5 doubleValue];
  v8 = v7;

  return v8;
}

- (double)timeIntervalForKey:(id)a3 isValid:(id)a4 defaultValue:(double)a5
{
  v8 = a4;
  v12 = 0;
  [(MTUserDefaults *)self timeIntervalForKey:a3 exists:&v12];
  if (v12 != 1 || (v10 = v9, (v8[2](v8) & 1) == 0))
  {
    v10 = a5;
  }

  return v10;
}

- (id)objectForKey:(id)a3 defaultValue:(id)a4
{
  userDefaults = self->_userDefaults;
  v6 = a4;
  v7 = [(NSUserDefaults *)userDefaults objectForKey:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (void)setObject:(id)a3 forKey:(id)a4 notification:(id)a5
{
  userDefaults = self->_userDefaults;
  v9 = a5;
  [(NSUserDefaults *)userDefaults setObject:a3 forKey:a4];
  [(MTUserDefaults *)self _postNotification:v9];
}

- (void)removeAllObjects
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSUserDefaults *)self->_userDefaults dictionaryRepresentation];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (*(*(&v10 + 1) + 8 * v8))
        {
          [(MTUserDefaults *)self removeObjectForKey:?];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_postNotification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = MTLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(MTUserDefaults *)self _postNotification:v4, v5];
    }

    v6 = [MEMORY[0x1E696ABB0] defaultCenter];
    v7 = [objc_opt_class() _distributedNotificationForLocalNotification:v4];
    [v6 postNotificationName:v7 object:0];
  }
}

- (void)registerNotification:(id)a3 observer:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v17 = self;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v6;
    _os_log_debug_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ registering %{public}@ for %{public}@", buf, 0x20u);
  }

  serializer = self->_serializer;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__MTUserDefaults_registerNotification_observer___block_invoke;
  v13[3] = &unk_1E7B0C9A0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
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

- (void)distributedNotificationPosted:(id)a3
{
  v4 = [a3 name];
  v5 = [objc_opt_class() _localNotificationForDistributedNotification:v4];
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

- (void)unregisterNotification:(id)a3 observer:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v17 = self;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v6;
    _os_log_debug_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ unregistering %{public}@ for %{public}@", buf, 0x20u);
  }

  serializer = self->_serializer;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__MTUserDefaults_unregisterNotification_observer___block_invoke;
  v13[3] = &unk_1E7B0C9A0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(NAScheduler *)serializer performBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __50__MTUserDefaults_unregisterNotification_observer___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  [v2 removeObject:*(a1 + 48)];
  [*(a1 + 32) _cleanupObserversForNotification:*(a1 + 40)];
}

- (void)_cleanupObserversForNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = v4;
    v6 = [(NSMutableDictionary *)self->_observers objectForKeyedSubscript:v4];
    v7 = [v6 allObjects];
    v8 = [v7 count];

    v5 = v11;
    if (!v8)
    {
      v9 = [MEMORY[0x1E696ABB0] defaultCenter];
      v10 = [objc_opt_class() _distributedNotificationForLocalNotification:v11];
      [v9 removeObserver:self name:v10 object:0];

      v4 = [(NSMutableDictionary *)self->_observers removeObjectForKey:v11];
      v5 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

+ (id)_localNotificationForDistributedNotification:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"Distributed"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"Distributed", "length")}];
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