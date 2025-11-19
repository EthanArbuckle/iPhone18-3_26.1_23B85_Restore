@interface MIBUDefaultPreferences
+ (BOOL)setObject:(id)a3 forKey:(id)a4;
+ (id)dictionaryRepresentation;
+ (id)objectForKey:(id)a3;
@end

@implementation MIBUDefaultPreferences

+ (BOOL)setObject:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
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
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_259ABF000, v7, OS_LOG_TYPE_DEFAULT, "%s - Setting %{public}@ for key %{public}@", &v13, 0x20u);
  }

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 setObject:v5 forKey:v6];
  v9 = [v8 synchronize];
  if ((v9 & 1) == 0)
  {
    if (MIBUOnceToken != -1)
    {
      +[MIBUDefaultPreferences setObject:forKey:];
    }

    v10 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUDefaultPreferences *)v5 setObject:v6 forKey:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
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

+ (id)objectForKey:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 dictionaryRepresentation];

  return v3;
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