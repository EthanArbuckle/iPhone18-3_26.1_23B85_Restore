@interface CRKPlatformInternetDateProvider
+ (id)sharedProvider;
- (CRKPlatformInternetDateProvider)init;
- (id)fetchExistingInternetDate;
- (void)fetchInternetDateWithCompletion:(id)a3;
@end

@implementation CRKPlatformInternetDateProvider

+ (id)sharedProvider
{
  if (sharedProvider_onceToken_0 != -1)
  {
    +[CRKPlatformInternetDateProvider sharedProvider];
  }

  v3 = sharedProvider_sharedProvider;

  return v3;
}

uint64_t __49__CRKPlatformInternetDateProvider_sharedProvider__block_invoke()
{
  sharedProvider_sharedProvider = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (CRKPlatformInternetDateProvider)init
{
  v8.receiver = self;
  v8.super_class = CRKPlatformInternetDateProvider;
  v2 = [(CRKPlatformInternetDateProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    completionQueue = v2->_completionQueue;
    v2->_completionQueue = v3;

    v2->_uptimeAtInternetDateAndTimeFetch = -1.0;
    v5 = objc_opt_new();
    dateFetchingProvider = v2->_dateFetchingProvider;
    v2->_dateFetchingProvider = v5;
  }

  return v2;
}

- (void)fetchInternetDateWithCompletion:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKPlatformInternetDateProvider *)a2 fetchInternetDateWithCompletion:?];
  }

  v6 = [(CRKPlatformInternetDateProvider *)self fetchExistingInternetDate];
  if (v6)
  {
    v7 = _CRKLogGeneral_20();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Cached time found. No attempt to fetch the internet date and time will be made.", buf, 2u);
    }

    v5[2](v5, v6, 0);
  }

  else
  {
    v8 = [(CRKPlatformInternetDateProvider *)self completionQueue];
    v9 = MEMORY[0x245D3AAD0](v5);
    [v8 addObject:v9];

    v10 = [(CRKPlatformInternetDateProvider *)self completionQueue];
    v11 = [v10 count];

    v12 = _CRKLogGeneral_20();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11 < 2)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "No cached time found. Attempting to fetch the internet date and time for the first time.", buf, 2u);
      }

      v12 = [(CRKPlatformInternetDateProvider *)self dateFetchingProvider];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __67__CRKPlatformInternetDateProvider_fetchInternetDateWithCompletion___block_invoke;
      v14[3] = &unk_278DC34A8;
      v14[4] = self;
      [v12 fetchInternetDateWithCompletion:v14];
    }

    else if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "No cached time found, but a fetch for the internet date and time is already in-flight. No attempt to fetch the internet date and time will be made again.", buf, 2u);
    }
  }
}

void __67__CRKPlatformInternetDateProvider_fetchInternetDateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _CRKLogGeneral_20();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__CRKPlatformInternetDateProvider_fetchInternetDateWithCompletion___block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v5;
      _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "Fetched the internet date and time: %{public}@", &v14, 0xCu);
    }

    [*(a1 + 32) setInternetDateAndTime:v5];
    v8 = [MEMORY[0x277CCAC38] processInfo];
    [v8 systemUptime];
    [*(a1 + 32) setUptimeAtInternetDateAndTimeFetch:?];
  }

  while (1)
  {
    v9 = [*(a1 + 32) completionQueue];
    v10 = [v9 count];

    if (!v10)
    {
      break;
    }

    v11 = [*(a1 + 32) completionQueue];
    v12 = [v11 firstObject];

    (v12)[2](v12, v5, v6);
    v13 = [*(a1 + 32) completionQueue];
    [v13 removeObjectAtIndex:0];
  }
}

- (id)fetchExistingInternetDate
{
  v3 = [(CRKPlatformInternetDateProvider *)self internetDateAndTime];
  [(CRKPlatformInternetDateProvider *)self uptimeAtInternetDateAndTimeFetch];
  v5 = 0;
  if (v3)
  {
    v6 = v4;
    if (v4 >= 0.0)
    {
      [v3 timeIntervalSince1970];
      v8 = v7;
      v9 = [MEMORY[0x277CCAC38] processInfo];
      [v9 systemUptime];
      v11 = v10;

      v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8 + v11 - v6];
    }
  }

  return v5;
}

- (void)fetchInternetDateWithCompletion:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKPlatformInternetDateProvider.m" lineNumber:60 description:{@"%@ must be called from the main thread", v4}];
}

void __67__CRKPlatformInternetDateProvider_fetchInternetDateWithCompletion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedFailureReason];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Unable to fetch the internet date and time with error: %{public}@", &v4, 0xCu);
}

@end