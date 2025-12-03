@interface CNUserDefaults
+ (id)inMemoryPreferences;
+ (id)preferencesWithApplicationID:(id)d;
+ (id)standardPreferences;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)userHasOptedOutOfPreference:(id)preference;
- (CNUserDefaults)initWithApplicationID:(id)d;
- (CNUserDefaults)initWithPrimitiveDefaults:(id)defaults;
- (double)doubleForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation CNUserDefaults

+ (id)standardPreferences
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CNUserDefaults_standardPreferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (id)preferencesWithApplicationID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithApplicationID:dCopy];

  return v5;
}

- (CNUserDefaults)initWithApplicationID:(id)d
{
  dCopy = d;
  v5 = [[CNCFPreferencesPrimitiveUserDefaults alloc] initWithApplicationID:dCopy];

  v6 = [(CNUserDefaults *)self initWithPrimitiveDefaults:v5];
  return v6;
}

- (CNUserDefaults)initWithPrimitiveDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v10.receiver = self;
  v10.super_class = CNUserDefaults;
  v6 = [(CNUserDefaults *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primitiveDefaults, defaults);
    v8 = v7;
  }

  return v7;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(CNUserDefaults *)self primitiveObjectForKey:keyCopy];
  if (!v5)
  {
    registeredDefaults = [(CNUserDefaults *)self registeredDefaults];
    v7 = [registeredDefaults objectForKey:keyCopy];
    v5 = [v7 copy];
  }

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  [(CNUserDefaults *)self setPrimitiveObject:object forKey:key];

  [(CNUserDefaults *)self setupAutosync];
}

- (void)removeObjectForKey:(id)key
{
  [(CNUserDefaults *)self primitiveRemoveObjectForKey:key];

  [(CNUserDefaults *)self setupAutosync];
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v9 = 0;
  bOOLValue = [(CNUserDefaults *)self primitiveBoolValueForKey:keyCopy keyExists:&v9];
  if ((v9 & 1) == 0)
  {
    registeredDefaults = [(CNUserDefaults *)self registeredDefaults];
    v7 = [registeredDefaults objectForKey:keyCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v7 BOOLValue];
    }
  }

  return bOOLValue;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  v4 = MEMORY[0x1E695E4D0];
  if (!bool)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  [(CNUserDefaults *)self setObject:*v4 forKey:key];
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  v9 = 0;
  integerValue = [(CNUserDefaults *)self primitiveIntegerValueForKey:keyCopy keyExists:&v9];
  if ((v9 & 1) == 0)
  {
    registeredDefaults = [(CNUserDefaults *)self registeredDefaults];
    v7 = [registeredDefaults objectForKey:keyCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v7 integerValue];
    }
  }

  return integerValue;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(CNUserDefaults *)self setObject:v8 forKey:keyCopy];
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(CNUserDefaults *)self objectForKey:keyCopy];

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

- (void)setDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  [(CNUserDefaults *)self setObject:v8 forKey:keyCopy];
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(CNUserDefaults *)self objectForKey:keyCopy];

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

- (BOOL)userHasOptedOutOfPreference:(id)preference
{
  v5 = 0;
  v3 = [(CNUserDefaults *)self BOOLForKey:preference keyExists:&v5];
  return v5 & ~v3 & 1;
}

+ (id)inMemoryPreferences
{
  v2 = objc_alloc_init(_CNInMemoryUserDefaults);

  return v2;
}

@end