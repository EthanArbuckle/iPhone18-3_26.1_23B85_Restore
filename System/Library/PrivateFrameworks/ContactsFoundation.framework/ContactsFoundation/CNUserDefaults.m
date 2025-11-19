@interface CNUserDefaults
+ (id)inMemoryPreferences;
+ (id)preferencesWithApplicationID:(id)a3;
+ (id)standardPreferences;
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)userHasOptedOutOfPreference:(id)a3;
- (CNUserDefaults)initWithApplicationID:(id)a3;
- (CNUserDefaults)initWithPrimitiveDefaults:(id)a3;
- (double)doubleForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CNUserDefaults

+ (id)standardPreferences
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CNUserDefaults_standardPreferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (standardPreferences_cn_once_token_1 != -1)
  {
    dispatch_once(&standardPreferences_cn_once_token_1, block);
  }

  v2 = standardPreferences_cn_once_object_1;

  return v2;
}

uint64_t __37__CNUserDefaults_standardPreferences__block_invoke(uint64_t a1)
{
  standardPreferences_cn_once_object_1 = [objc_alloc(*(a1 + 32)) initWithApplicationID:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)preferencesWithApplicationID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithApplicationID:v4];

  return v5;
}

- (CNUserDefaults)initWithApplicationID:(id)a3
{
  v4 = a3;
  v5 = [[CNCFPreferencesPrimitiveUserDefaults alloc] initWithApplicationID:v4];

  v6 = [(CNUserDefaults *)self initWithPrimitiveDefaults:v5];
  return v6;
}

- (CNUserDefaults)initWithPrimitiveDefaults:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNUserDefaults;
  v6 = [(CNUserDefaults *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primitiveDefaults, a3);
    v8 = v7;
  }

  return v7;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(CNUserDefaults *)self primitiveObjectForKey:v4];
  if (!v5)
  {
    v6 = [(CNUserDefaults *)self registeredDefaults];
    v7 = [v6 objectForKey:v4];
    v5 = [v7 copy];
  }

  return v5;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  [(CNUserDefaults *)self setPrimitiveObject:a3 forKey:a4];

  [(CNUserDefaults *)self setupAutosync];
}

- (void)removeObjectForKey:(id)a3
{
  [(CNUserDefaults *)self primitiveRemoveObjectForKey:a3];

  [(CNUserDefaults *)self setupAutosync];
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(CNUserDefaults *)self primitiveBoolValueForKey:v4 keyExists:&v9];
  if ((v9 & 1) == 0)
  {
    v6 = [(CNUserDefaults *)self registeredDefaults];
    v7 = [v6 objectForKey:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v7 BOOLValue];
    }
  }

  return v5;
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  [(CNUserDefaults *)self setObject:*v4 forKey:a4];
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(CNUserDefaults *)self primitiveIntegerValueForKey:v4 keyExists:&v9];
  if ((v9 & 1) == 0)
  {
    v6 = [(CNUserDefaults *)self registeredDefaults];
    v7 = [v6 objectForKey:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v7 integerValue];
    }
  }

  return v5;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(CNUserDefaults *)self setObject:v8 forKey:v7];
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(CNUserDefaults *)self objectForKey:v4];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(CNUserDefaults *)self setObject:v8 forKey:v7];
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(CNUserDefaults *)self objectForKey:v4];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)userHasOptedOutOfPreference:(id)a3
{
  v5 = 0;
  v3 = [(CNUserDefaults *)self BOOLForKey:a3 keyExists:&v5];
  return v5 & ~v3 & 1;
}

+ (id)inMemoryPreferences
{
  v2 = objc_alloc_init(_CNInMemoryUserDefaults);

  return v2;
}

@end