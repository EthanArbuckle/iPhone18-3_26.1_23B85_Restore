@interface MIBUDefaultPreferences
+ (BOOL)setObject:(id)object forKey:(id)key;
+ (id)dictionaryRepresentation;
+ (id)objectForKey:(id)key;
@end

@implementation MIBUDefaultPreferences

+ (BOOL)setObject:(id)object forKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  if (MIBUOnceToken != -1)
  {
    +[MIBUDefaultPreferences setObject:forKey:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "+[MIBUDefaultPreferences setObject:forKey:]";
    v15 = 2114;
    v16 = objectCopy;
    v17 = 2114;
    v18 = keyCopy;
    _os_log_impl(&dword_259ABF000, v7, OS_LOG_TYPE_DEFAULT, "%s - Setting %{public}@ for key %{public}@", &v13, 0x20u);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:objectCopy forKey:keyCopy];
  synchronize = [standardUserDefaults synchronize];
  if ((synchronize & 1) == 0)
  {
    if (MIBUOnceToken != -1)
    {
      +[MIBUDefaultPreferences setObject:forKey:];
    }

    v10 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUDefaultPreferences *)objectCopy setObject:keyCopy forKey:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return synchronize;
}

void __43__MIBUDefaultPreferences_setObject_forKey___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __43__MIBUDefaultPreferences_setObject_forKey___block_invoke_cold_1();
  }
}

void __43__MIBUDefaultPreferences_setObject_forKey___block_invoke_3()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __43__MIBUDefaultPreferences_setObject_forKey___block_invoke_cold_1();
  }
}

+ (id)objectForKey:(id)key
{
  v3 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:keyCopy];

  return v6;
}

+ (id)dictionaryRepresentation
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];

  return dictionaryRepresentation;
}

+ (void)setObject:(os_log_t)log forKey:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "+[MIBUDefaultPreferences setObject:forKey:]";
  v6 = 2114;
  v7 = a1;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_259ABF000, log, OS_LOG_TYPE_ERROR, "%s - Failed to set value %{public}@ for key %{public}@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end