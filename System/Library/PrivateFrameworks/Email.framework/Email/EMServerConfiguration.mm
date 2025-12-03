@interface EMServerConfiguration
+ (BOOL)isCacheRecentLastRefreshDate:(id *)date;
+ (BOOL)refresh;
+ (id)_cachedPropertyList;
+ (id)_dateFormatter;
+ (id)cachedPropertyList;
+ (id)getValueForKey:(id)key;
+ (id)getValueForKey:(id)key refreshIfNeeded:(BOOL)needed;
+ (void)_assertNotMainThread;
+ (void)_savePropertyList:(id)list withDate:(id)date;
+ (void)clearCache;
+ (void)overrideWithPropertyList:(id)list;
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
  block[4] = self;
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
  _userDefaults = [self _userDefaults];
  _userDefaultsKey = [self _userDefaultsKey];
  v5 = [_userDefaults objectForKey:_userDefaultsKey];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMServerConfiguration.m" lineNumber:39 description:@"Current thread is main"];
  }
}

+ (BOOL)refresh
{
  [self _assertNotMainThread];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = MEMORY[0x1E695AC78];
  defaultSessionConfiguration = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  v6 = [v4 sessionWithConfiguration:defaultSessionConfiguration];

  _configurationLocation = [self _configurationLocation];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__EMServerConfiguration_refresh__block_invoke;
  v11[3] = &unk_1E826FA60;
  v13 = &v15;
  selfCopy = self;
  v8 = v3;
  v12 = v8;
  v9 = [v6 dataTaskWithURL:_configurationLocation completionHandler:v11];
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

+ (void)_savePropertyList:(id)list withDate:(id)date
{
  dateCopy = date;
  v7 = [list mutableCopy];
  _dateFormatter = [self _dateFormatter];
  v9 = [_dateFormatter stringFromDate:dateCopy];

  [v7 setValue:v9 forKey:@"EMServerConfiguration-propertyListLastDownloadTime"];
  _userDefaults = [self _userDefaults];
  _userDefaultsKey = [self _userDefaultsKey];
  [_userDefaults setObject:v7 forKey:_userDefaultsKey];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EMServerConfiguration__savePropertyList_withDate___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (id)getValueForKey:(id)key
{
  keyCopy = key;
  _cachedPropertyList = [self _cachedPropertyList];
  v6 = [_cachedPropertyList valueForKey:keyCopy];

  return v6;
}

+ (id)getValueForKey:(id)key refreshIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  keyCopy = key;
  if (neededCopy && ([self isCacheRecent] & 1) == 0)
  {
    [self refreshAsync];
  }

  _cachedPropertyList = [self _cachedPropertyList];
  v8 = [_cachedPropertyList valueForKey:keyCopy];

  return v8;
}

+ (id)cachedPropertyList
{
  _cachedPropertyList = [self _cachedPropertyList];
  v3 = [_cachedPropertyList mutableCopy];
  [v3 removeObjectForKey:@"EMServerConfiguration-propertyListLastDownloadTime"];

  return v3;
}

+ (BOOL)isCacheRecentLastRefreshDate:(id *)date
{
  v5 = [self getValueForKey:@"EMServerConfiguration-propertyListLastDownloadTime" refreshIfNeeded:0];
  _dateFormatter = [self _dateFormatter];
  v7 = [_dateFormatter dateFromString:v5];

  if (date)
  {
    v8 = v7;
    *date = v7;
  }

  if (v7)
  {
    [self _cacheValidityInterval];
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

  _userDefaults = [self _userDefaults];
  _userDefaultsKey = [self _userDefaultsKey];
  [_userDefaults setObject:0 forKey:_userDefaultsKey];
}

+ (void)overrideWithPropertyList:(id)list
{
  listCopy = list;
  v5 = _ef_log_EMServerConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Overriding with custom property list", v7, 2u);
  }

  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [self _savePropertyList:listCopy withDate:distantFuture];
}

void __32__EMServerConfiguration_refresh__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "downloadPropertyList error: %@", buf, 0xCu);
}

@end