@interface EMServerConfiguration
+ (BOOL)isCacheRecentLastRefreshDate:(id *)a3;
+ (BOOL)refresh;
+ (id)_cachedPropertyList;
+ (id)_dateFormatter;
+ (id)cachedPropertyList;
+ (id)getValueForKey:(id)a3;
+ (id)getValueForKey:(id)a3 refreshIfNeeded:(BOOL)a4;
+ (void)_assertNotMainThread;
+ (void)_savePropertyList:(id)a3 withDate:(id)a4;
+ (void)clearCache;
+ (void)overrideWithPropertyList:(id)a3;
+ (void)refreshAsync;
@end

@implementation EMServerConfiguration

+ (void)refreshAsync
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

  v5 = dispatch_queue_create("com.apple.mail.serverConfiguration.networkOperations", v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EMServerConfiguration_refreshAsync__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v5, block);
}

uint64_t __37__EMServerConfiguration_refreshAsync__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCacheRecent];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 refresh];
  }

  return result;
}

+ (id)_cachedPropertyList
{
  v3 = [a1 _userDefaults];
  v4 = [a1 _userDefaultsKey];
  v5 = [v3 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];

  return v2;
}

void ___ef_log_EMServerConfiguration_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMServerConfiguration");
  v1 = _ef_log_EMServerConfiguration_log;
  _ef_log_EMServerConfiguration_log = v0;
}

+ (void)_assertNotMainThread
{
  if (pthread_main_np())
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:a1 file:@"EMServerConfiguration.m" lineNumber:39 description:@"Current thread is main"];
  }
}

+ (BOOL)refresh
{
  [a1 _assertNotMainThread];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = MEMORY[0x1E695AC78];
  v5 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  v6 = [v4 sessionWithConfiguration:v5];

  v7 = [a1 _configurationLocation];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__EMServerConfiguration_refresh__block_invoke;
  v11[3] = &unk_1E826FA60;
  v13 = &v15;
  v14 = a1;
  v8 = v3;
  v12 = v8;
  v9 = [v6 dataTaskWithURL:v7 completionHandler:v11];
  [v9 resume];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v3;
}

void __32__EMServerConfiguration_refresh__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v15 = _ef_log_EMServerConfiguration();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v10 localizedDescription];
      __32__EMServerConfiguration_refresh__block_invoke_cold_1(v16, buf, v15);
    }

    v11 = v15;
    goto LABEL_9;
  }

  v18 = 0;
  v11 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v18];
  v10 = v18;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = *(a1 + 48);
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v11];
    v14 = [MEMORY[0x1E695DF00] now];
    [v12 _savePropertyList:v13 withDate:v14];

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v15 = _ef_log_EMServerConfiguration();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_1C6655000, v15, OS_LOG_TYPE_DEFAULT, "downloadPropertyList success: %@", buf, 0xCu);
    }

LABEL_9:
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v17 = *MEMORY[0x1E69E9840];
}

+ (void)_savePropertyList:(id)a3 withDate:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [a1 _dateFormatter];
  v9 = [v8 stringFromDate:v6];

  [v7 setValue:v9 forKey:@"EMServerConfiguration-propertyListLastDownloadTime"];
  v10 = [a1 _userDefaults];
  v11 = [a1 _userDefaultsKey];
  [v10 setObject:v7 forKey:v11];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EMServerConfiguration__savePropertyList_withDate___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_savePropertyList_withDate__onceToken != -1)
  {
    dispatch_once(&_savePropertyList_withDate__onceToken, block);
  }
}

void __52__EMServerConfiguration__savePropertyList_withDate___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [*(a1 + 32) _userDefaultsKey];
  [v3 removeObjectForKey:v2];
}

+ (id)getValueForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 _cachedPropertyList];
  v6 = [v5 valueForKey:v4];

  return v6;
}

+ (id)getValueForKey:(id)a3 refreshIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && ([a1 isCacheRecent] & 1) == 0)
  {
    [a1 refreshAsync];
  }

  v7 = [a1 _cachedPropertyList];
  v8 = [v7 valueForKey:v6];

  return v8;
}

+ (id)cachedPropertyList
{
  v2 = [a1 _cachedPropertyList];
  v3 = [v2 mutableCopy];
  [v3 removeObjectForKey:@"EMServerConfiguration-propertyListLastDownloadTime"];

  return v3;
}

+ (BOOL)isCacheRecentLastRefreshDate:(id *)a3
{
  v5 = [a1 getValueForKey:@"EMServerConfiguration-propertyListLastDownloadTime" refreshIfNeeded:0];
  v6 = [a1 _dateFormatter];
  v7 = [v6 dateFromString:v5];

  if (a3)
  {
    v8 = v7;
    *a3 = v7;
  }

  if (v7)
  {
    [a1 _cacheValidityInterval];
    v9 = [v7 ef_isMoreThanTimeIntervalAgo:?] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (void)clearCache
{
  v3 = _ef_log_EMServerConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Clearing out the cached property list", v6, 2u);
  }

  v4 = [a1 _userDefaults];
  v5 = [a1 _userDefaultsKey];
  [v4 setObject:0 forKey:v5];
}

+ (void)overrideWithPropertyList:(id)a3
{
  v4 = a3;
  v5 = _ef_log_EMServerConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Overriding with custom property list", v7, 2u);
  }

  v6 = [MEMORY[0x1E695DF00] distantFuture];
  [a1 _savePropertyList:v4 withDate:v6];
}

void __32__EMServerConfiguration_refresh__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "downloadPropertyList error: %@", buf, 0xCu);
}

@end