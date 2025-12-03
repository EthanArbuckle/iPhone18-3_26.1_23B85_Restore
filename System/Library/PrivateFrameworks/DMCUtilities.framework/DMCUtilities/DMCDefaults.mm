@interface DMCDefaults
+ (BOOL)BOOLForDefaultsKey:(id)key;
+ (id)dictForDefaultsKey:(id)key;
+ (id)numberForDefaultsKey:(id)key;
+ (id)objectForDefaultsKey:(id)key;
+ (id)stringForDefaultsKey:(id)key;
@end

@implementation DMCDefaults

+ (id)stringForDefaultsKey:(id)key
{
  v3 = MEMORY[0x1E695E000];
  keyCopy = key;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults stringForKey:keyCopy];

  return v6;
}

+ (id)numberForDefaultsKey:(id)key
{
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [standardUserDefaults2 objectForKey:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)dictForDefaultsKey:(id)key
{
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [standardUserDefaults2 objectForKey:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)BOOLForDefaultsKey:(id)key
{
  v3 = [self numberForDefaultsKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)objectForDefaultsKey:(id)key
{
  v3 = MEMORY[0x1E695E000];
  keyCopy = key;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:keyCopy];

  return v6;
}

@end