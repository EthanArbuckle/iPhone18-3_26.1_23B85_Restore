@interface CalculateCurrencyCache
+ (CalculateCurrencyCache)shared;
- (BOOL)_needsRefresh;
- (BOOL)_queue_refresh;
- (BOOL)_queue_refresh:(double)_queue_refresh;
- (BOOL)needsRefresh;
- (BOOL)refresh;
- (BOOL)refreshIfNeeded;
- (BOOL)refreshWithTimeOut:(float)out;
- (BOOL)updateCurrencyCacheWithData:(id)data;
- (CalculateCurrencyCache)init;
- (NSDate)lastRefreshDate;
- (NSDictionary)currencyData;
- (id)_consumerSecret;
- (id)createCredential;
- (void)_loadPersistedCurrencyCache;
- (void)_queue_persistCurrencyCache;
@end

@implementation CalculateCurrencyCache

- (BOOL)updateCurrencyCacheWithData:(id)data
{
  v54 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = [dataCopy objectForKey:@"query"];
  v5 = [v4 objectForKey:@"created"];

  if (![v5 length])
  {
    goto LABEL_15;
  }

  v6 = CalculateLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v5;
    _os_log_impl(&dword_1C1E73000, v6, OS_LOG_TYPE_DEFAULT, "Calculate: currency last updated: %@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v7 setCalendar:v8];

  [v7 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  v9 = [v7 dateFromString:v5];
  lastRefreshDate = self->_lastRefreshDate;
  self->_lastRefreshDate = v9;

  if ([(CalculateCurrencyCache *)self _needsRefresh])
  {
    v11 = self->_lastRefreshDate;
    v12 = CalculateLogForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 0;
        v14 = "Calculate: refresh date was too different from system time; setting to now";
LABEL_10:
        _os_log_impl(&dword_1C1E73000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      }
    }

    else if (v13)
    {
      *buf = 0;
      v14 = "Calculate: refresh date was nil; setting to now";
      goto LABEL_10;
    }

    v15 = objc_opt_new();
    v16 = self->_lastRefreshDate;
    self->_lastRefreshDate = v15;
  }

  v17 = CalculateLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_lastRefreshDate;
    *buf = 138543362;
    v53 = v18;
    _os_log_impl(&dword_1C1E73000, v17, OS_LOG_TYPE_DEFAULT, "Calculate: currency refresh date: %{public}@", buf, 0xCu);
  }

LABEL_15:
  v19 = [dataCopy objectForKey:@"query"];
  v20 = [v19 objectForKey:@"results"];
  v21 = [v20 objectForKey:@"item"];
  v22 = [v21 objectForKey:@"response"];
  v23 = [v22 objectForKey:@"finance"];
  v24 = [v23 objectForKey:@"currencies"];
  v25 = [v24 objectForKey:@"currency"];

  v26 = [v25 count];
  if (v26)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v28)
    {
      v29 = v28;
      v42 = v26;
      v43 = v25;
      v44 = v5;
      v45 = dataCopy;
      v30 = *v48;
      do
      {
        v31 = v27;
        for (i = 0; i != v29; ++i)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(v31);
          }

          v33 = *(*(&v47 + 1) + 8 * i);
          v34 = [v33 objectForKey:@"currency_to"];
          v35 = MEMORY[0x1E696AD98];
          v36 = [v33 objectForKey:@"price"];
          [v36 doubleValue];
          v37 = [v35 numberWithDouble:?];

          if ([v34 length])
          {
            v38 = v37 == 0;
          }

          else
          {
            v38 = 1;
          }

          if (!v38)
          {
            [(NSMutableDictionary *)self->_mutableCurrencyCache setObject:v37 forKey:v34];
          }
        }

        v27 = v31;
        v29 = [v31 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v29);
      v5 = v44;
      dataCopy = v45;
      v26 = v42;
      v25 = v43;
    }
  }

  else
  {
    v27 = CalculateLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v25 count];
      *buf = 134217984;
      v53 = v39;
      _os_log_impl(&dword_1C1E73000, v27, OS_LOG_TYPE_DEFAULT, "Calculate: Received response data but the currency data is empty(currency count): %lu", buf, 0xCu);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  return v26 != 0;
}

- (void)_loadPersistedCurrencyCache
{
  v3 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v3)
  {
    v4 = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__CalculateCurrencyCache__loadPersistedCurrencyCache__block_invoke;
    aBlock[3] = &__block_descriptor_40_e18_B16__0__NSString_8l;
    aBlock[4] = v3;
    v5 = _Block_copy(aBlock);
    v6 = (*(v5 + 16))(v5, @"com.apple.security.app-sandbox");
    v7 = (*(v5 + 16))(v5, @"user-preference-read");
    v8 = (*(v5 + 16))(v5, @"file-read-data");
    CFRelease(v4);
    if (!v6 || (v7 & 1) != 0 || (v8 & 1) != 0)
    {
      CFPreferencesAppSynchronize(@"com.apple.calculateframework");
      v10 = CFPreferencesCopyAppValue(@"currencyCache", @"com.apple.calculateframework");
      v9 = v10;
      if (v10 && [v10 count]>= 0xB)
      {
        v11 = CFPreferencesCopyAppValue(@"currencyCacheRefreshDate", @"com.apple.calculateframework");
        if (v11)
        {
          objc_storeStrong(&self->_currencyData, v9);
          objc_storeStrong(&self->_lastRefreshDate, v11);
        }
      }
    }

    else
    {
      v9 = CalculateLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C1E73000, v9, OS_LOG_TYPE_DEFAULT, "Calculate: currency load failed; insufficient entitlements", buf, 2u);
      }
    }
  }

  else
  {
    v5 = CalculateLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C1E73000, v5, OS_LOG_TYPE_DEFAULT, "Calculate: unexpected NULL from SecTaskCreateFromSelf", buf, 2u);
    }
  }
}

uint64_t __53__CalculateCurrencyCache__loadPersistedCurrencyCache__block_invoke(uint64_t a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(*(a1 + 32), a2, 0);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_queue_persistCurrencyCache
{
  v3 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v3)
  {
    v4 = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__CalculateCurrencyCache__queue_persistCurrencyCache__block_invoke;
    aBlock[3] = &__block_descriptor_40_e18_B16__0__NSString_8l;
    aBlock[4] = v3;
    v5 = _Block_copy(aBlock);
    v6 = (*(v5 + 16))(v5, @"com.apple.security.app-sandbox");
    v7 = (*(v5 + 16))(v5, @"user-preference-write");
    v8 = (*(v5 + 16))(v5, @"file-write-data");
    CFRelease(v4);
    v9 = CalculateLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!v6 || (v7 & 1) != 0 || (v8 & 1) != 0)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_1C1E73000, v9, OS_LOG_TYPE_DEFAULT, "Calculate: successfully updated currency exchange rates", buf, 2u);
      }

      CFPreferencesSetAppValue(@"currencyCacheRefreshDate", self->_lastRefreshDate, @"com.apple.calculateframework");
      CFPreferencesSetAppValue(@"currencyCache", self->_currencyData, @"com.apple.calculateframework");
      CFPreferencesAppSynchronize(@"com.apple.calculateframework");
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_1C1E73000, v9, OS_LOG_TYPE_DEFAULT, "Calculate: currency persist failed; insufficient entitlements", buf, 2u);
      }
    }
  }

  else
  {
    v5 = CalculateLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C1E73000, v5, OS_LOG_TYPE_DEFAULT, "Calculate: unexpected NULL from SecTaskCreateFromSelf", buf, 2u);
    }
  }
}

uint64_t __53__CalculateCurrencyCache__queue_persistCurrencyCache__block_invoke(uint64_t a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(*(a1 + 32), a2, 0);
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)_queue_refresh
{
  [(CalculateCurrencyCache *)self timeout];

  return [(CalculateCurrencyCache *)self _queue_refresh:?];
}

- (BOOL)_queue_refresh:(double)_queue_refresh
{
  [(NSLock *)self->_lock lock];
  lastRefreshTimeInternal = self->_lastRefreshTimeInternal;
  [(NSLock *)self->_lock unlock];
  if (CFAbsoluteTimeGetCurrent() - lastRefreshTimeInternal >= 5.0)
  {
    v7 = MEMORY[0x1E696AD68];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:@"https://apple-finance.query.yahoo.com/v1/yql/applewf/currencies?lang=en&region=US&format=json"];
    v9 = [v7 requestWithURL:v8];

    [v9 setHTTPMethod:@"GET"];
    [v9 setValue:@"JSON" forHTTPHeaderField:@"Content-Type"];
    [v9 setValue:@"no-cache" forHTTPHeaderField:@"Cache-Control"];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[CalculateCurrencyCache uuid](self, "uuid")];
    [v9 setValue:v10 forHTTPHeaderField:@"X-Client-ID"];

    [v9 setTimeoutInterval:_queue_refresh];
    createCredential = [(CalculateCurrencyCache *)self createCredential];
    v12 = [objc_alloc(MEMORY[0x1E69B7B68]) initWithCredential:createCredential];
    v13 = dispatch_group_create();
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    dispatch_group_enter(v13);
    mEMORY[0x1E696AF78] = [MEMORY[0x1E696AF78] sharedSession];
    v15 = [v12 signedURLRequestWithRequest:v9];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__CalculateCurrencyCache__queue_refresh___block_invoke;
    v19[3] = &unk_1E815C070;
    v19[4] = self;
    v21 = &v22;
    v16 = v13;
    v20 = v16;
    v17 = [mEMORY[0x1E696AF78] dataTaskWithRequest:v15 completionHandler:v19];

    [v17 resume];
    dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    v6 = *(v23 + 24);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void __41__CalculateCurrencyCache__queue_refresh___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (!v6 || v7)
  {
    v14 = CalculateLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v8;
      _os_log_error_impl(&dword_1C1E73000, v14, OS_LOG_TYPE_ERROR, "Calculate: currency refresh failed, error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [*(*(a1 + 32) + 96) lock];
    v9 = CalculateLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C1E73000, v9, OS_LOG_TYPE_DEFAULT, "Calculate: currency refresh succeed", buf, 2u);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = *(a1 + 32);
    v12 = *(v11 + 72);
    *(v11 + 72) = v10;

    v23 = 0;
    v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:4 error:&v23];
    v14 = v23;
    if (v14 || ![*(a1 + 32) updateCurrencyCacheWithData:v13])
    {
      v21 = CalculateLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v14;
        _os_log_error_impl(&dword_1C1E73000, v21, OS_LOG_TYPE_ERROR, "Calculate: JSON parsing error:%{public}@ or currency data update error", buf, 0xCu);
      }
    }

    else
    {
      v15 = [*(*(a1 + 32) + 72) copy];
      v16 = *(a1 + 32);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v18 = *(a1 + 32);
      v19 = *(v18 + 72);
      *(v18 + 72) = 0;

      v20 = CalculateLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C1E73000, v20, OS_LOG_TYPE_DEFAULT, "Calculate: save new currency data to disk", buf, 2u);
      }

      [*(a1 + 32) _queue_persistCurrencyCache];
      *(*(a1 + 32) + 88) = CFAbsoluteTimeGetCurrent();
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    [*(*(a1 + 32) + 96) unlock];
  }

  dispatch_group_leave(*(a1 + 40));
  v22 = *MEMORY[0x1E69E9840];
}

- (id)createCredential
{
  v3 = objc_alloc_init(MEMORY[0x1E69B7B60]);
  _consumerKey = [(CalculateCurrencyCache *)self _consumerKey];
  [v3 setConsumerKey:_consumerKey];

  _consumerSecret = [(CalculateCurrencyCache *)self _consumerSecret];
  [v3 setConsumerSecret:_consumerSecret];

  return v3;
}

- (id)_consumerSecret
{
  string = [MEMORY[0x1E696AD60] string];
  for (i = 0; i != 40; ++i)
  {
    [string appendFormat:@"%c", consumerSecret[i]];
  }

  return string;
}

- (NSDictionary)currencyData
{
  [(NSLock *)self->_lock lock];
  v3 = self->_currencyData;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (BOOL)needsRefresh
{
  [(NSLock *)self->_lock lock];
  _needsRefresh = [(CalculateCurrencyCache *)self _needsRefresh];
  [(NSLock *)self->_lock unlock];
  return _needsRefresh;
}

- (BOOL)_needsRefresh
{
  [(NSDate *)self->_lastRefreshDate timeIntervalSinceReferenceDate];
  v4 = vabdd_f64(CFAbsoluteTimeGetCurrent(), v3);
  [(CalculateCurrencyCache *)self refreshInterval];
  return v4 > v5;
}

- (NSDate)lastRefreshDate
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSDate *)self->_lastRefreshDate copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (BOOL)refreshWithTimeOut:(float)out
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = dispatch_semaphore_create(0);
  serializer = [(CalculateCurrencyCache *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__CalculateCurrencyCache_refreshWithTimeOut___block_invoke;
  v9[3] = &unk_1E815C048;
  v10 = v5;
  v11 = &v13;
  outCopy = out;
  v9[4] = self;
  v7 = v5;
  dispatch_async(serializer, v9);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(serializer) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return serializer;
}

intptr_t __45__CalculateCurrencyCache_refreshWithTimeOut___block_invoke(uint64_t a1)
{
  v2 = CalculateLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C1E73000, v2, OS_LOG_TYPE_DEFAULT, "Calculate: start refreshing currency rates", v4, 2u);
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _queue_refresh:*(a1 + 56)];
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)refreshIfNeeded
{
  [(CalculateCurrencyCache *)self _reloadPersistedCurrencyCacheForTesting];
  if (![(CalculateCurrencyCache *)self needsRefresh])
  {
    return 1;
  }

  return [(CalculateCurrencyCache *)self refresh];
}

- (BOOL)refresh
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_semaphore_create(0);
  serializer = [(CalculateCurrencyCache *)self serializer];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CalculateCurrencyCache_refresh__block_invoke;
  block[3] = &unk_1E815C020;
  v8 = v3;
  v9 = &v10;
  block[4] = self;
  v5 = v3;
  dispatch_async(serializer, block);

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(serializer) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return serializer;
}

intptr_t __33__CalculateCurrencyCache_refresh__block_invoke(uint64_t a1)
{
  v2 = CalculateLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C1E73000, v2, OS_LOG_TYPE_DEFAULT, "Calculate: start refreshing currency rates", v4, 2u);
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _queue_refresh];
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (CalculateCurrencyCache)init
{
  v10.receiver = self;
  v10.super_class = CalculateCurrencyCache;
  v2 = [(CalculateCurrencyCache *)&v10 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    *(v2 + 1) = [date hash];

    v4 = dispatch_queue_create("com.apple.framework.calculate.currency-cache", 0);
    v5 = *(v2 + 10);
    *(v2 + 10) = v4;

    v6 = *(v2 + 2);
    *(v2 + 2) = 0;

    *(v2 + 24) = xmmword_1C1F58C40;
    v7 = objc_opt_new();
    v8 = *(v2 + 12);
    *(v2 + 12) = v7;

    [v2 _loadPersistedCurrencyCache];
  }

  return v2;
}

+ (CalculateCurrencyCache)shared
{
  if (shared_onceToken[0] != -1)
  {
    dispatch_once(shared_onceToken, &__block_literal_global_14);
  }

  v3 = shared_shared;

  return v3;
}

uint64_t __32__CalculateCurrencyCache_shared__block_invoke()
{
  shared_shared = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end