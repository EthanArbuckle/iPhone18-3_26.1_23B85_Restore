@interface DMCDefaults
+ (BOOL)BOOLForDefaultsKey:(id)a3;
+ (id)dictForDefaultsKey:(id)a3;
+ (id)numberForDefaultsKey:(id)a3;
+ (id)objectForDefaultsKey:(id)a3;
+ (id)stringForDefaultsKey:(id)a3;
@end

@implementation DMCDefaults

+ (id)stringForDefaultsKey:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 stringForKey:v4];

  return v6;
}

+ (id)numberForDefaultsKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 objectForKey:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)dictForDefaultsKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 objectForKey:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)BOOLForDefaultsKey:(id)a3
{
  v3 = [a1 numberForDefaultsKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)objectForDefaultsKey:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end