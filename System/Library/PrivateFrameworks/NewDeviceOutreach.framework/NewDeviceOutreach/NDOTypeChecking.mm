@interface NDOTypeChecking
+ (BOOL)isNotEmptyString:(id)a3;
+ (void)safeAddValue:(id)a3 forKey:(id)a4 toDictionary:(id)a5;
@end

@implementation NDOTypeChecking

+ (BOOL)isNotEmptyString:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 length] != 0;

  return v4;
}

+ (void)safeAddValue:(id)a3 forKey:(id)a4 toDictionary:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = _NDOLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [NDOTypeChecking safeAddValue:v10 forKey:? toDictionary:?];
    }

    goto LABEL_12;
  }

  if (![NDOTypeChecking isNotEmptyString:v8])
  {
    v10 = _NDOLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446210;
      v16 = "+[NDOTypeChecking safeAddValue:forKey:toDictionary:]";
      v11 = "%{public}s got nil or empty key";
      v12 = v10;
      v13 = 12;
LABEL_11:
      _os_log_impl(&dword_25BD52000, v12, OS_LOG_TYPE_DEFAULT, v11, &v15, v13);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!v7)
  {
    v10 = _NDOLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446466;
      v16 = "+[NDOTypeChecking safeAddValue:forKey:toDictionary:]";
      v17 = 2112;
      v18 = v8;
      v11 = "%{public}s got nil value for key: %@";
      v12 = v10;
      v13 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [v9 setObject:v7 forKey:v8];
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)safeAddValue:(os_log_t)log forKey:toDictionary:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "+[NDOTypeChecking safeAddValue:forKey:toDictionary:]";
  _os_log_debug_impl(&dword_25BD52000, log, OS_LOG_TYPE_DEBUG, "%{public}s got non NSMutableDictionary", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end