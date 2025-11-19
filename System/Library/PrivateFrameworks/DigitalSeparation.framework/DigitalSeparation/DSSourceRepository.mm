@interface DSSourceRepository
+ (BOOL)runtimeFeatureFlagsEnabledFor:(id)a3;
+ (DSSourceRepository)repositoryWithURL:(id)a3;
+ (void)initialize;
- (DSSourceRepository)init;
- (DSSourceRepository)initWithSources:(id)a3;
- (NSArray)sources;
- (id)objectForKeyedSubscript:(id)a3;
@end

@implementation DSSourceRepository

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLog_2 = os_log_create("com.apple.DigitalSeparation", "DSSourceRepository");

    MEMORY[0x2821F96F8]();
  }
}

- (DSSourceRepository)init
{
  v11.receiver = self;
  v11.super_class = DSSourceRepository;
  v2 = [(DSSourceRepository *)&v11 init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 URLsForDirectory:5 inDomains:8];
  v6 = [v5 firstObject];

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"DigitalSeparation" isDirectory:1 relativeToURL:v6];
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"SharingSources" isDirectory:1 relativeToURL:v7];
  v9 = [objc_opt_class() repositoryWithURL:v8];

  return v9;
}

+ (DSSourceRepository)repositoryWithURL:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v3 = DSLog_2;
  if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v52 = v42;
    _os_log_impl(&dword_248C40000, v3, OS_LOG_TYPE_INFO, "Searching %{public}@ for sharing sources", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 enumeratorAtURL:v43 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:1 errorHandler:&__block_literal_global_5];

  v44 = [MEMORY[0x277CBEB38] dictionary];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v6)
  {
    v7 = *v48;
    do
    {
      v8 = 0;
      do
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [MEMORY[0x277CCA8D8] bundleWithURL:*(*(&v47 + 1) + 8 * v8)];
        if (v9)
        {
          v10 = DSLog_2;
          if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v52 = v9;
            _os_log_impl(&dword_248C40000, v10, OS_LOG_TYPE_INFO, "Found potential source %{public}@", buf, 0xCu);
          }

          v11 = [(__CFString *)v9 principalClass];
          v12 = objc_alloc_init(v11);
          if ([v12 conformsToProtocol:&unk_285BA67B0])
          {
            v13 = v12;
            v14 = [v13 name];
            if (!v14)
            {
              v20 = DSLog_2;
              if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
              {
                v21 = v20;
                v22 = NSStringFromClass(v11);
                *buf = 138543618;
                v52 = v9;
                v53 = 2114;
                v54 = v22;
                _os_log_error_impl(&dword_248C40000, v21, OS_LOG_TYPE_ERROR, "Source from %{public}@ with class %{public}@ doesn't have a name", buf, 0x16u);
              }

              goto LABEL_35;
            }

            if (([a1 runtimeFeatureFlagsEnabledFor:v14] & 1) == 0)
            {
              v23 = DSLog_2;
              if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v52 = v9;
                v53 = 2114;
                v54 = v14;
                _os_log_error_impl(&dword_248C40000, v23, OS_LOG_TYPE_ERROR, "Runtime feature flags for %{public}@ with name %{public}@ are not enabled, not adding bundle.", buf, 0x16u);
              }

              goto LABEL_35;
            }

            if ([DSSourceWrapper shouldEnumerateResourceNamesForSource:v13])
            {
              v15 = [DSSourceWrapper wrapMultiSource:v13];
              [v44 addEntriesFromDictionary:v15];

              v16 = DSLog_2;
              if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_DEFAULT))
              {
                v17 = v16;
                v18 = [v13 name];
                *buf = 138543618;
                v52 = v18;
                v53 = 2114;
                v54 = v9;
                _os_log_impl(&dword_248C40000, v17, OS_LOG_TYPE_DEFAULT, "Adding sharing sub sources %{public}@ from %{public}@", buf, 0x16u);
              }

              goto LABEL_35;
            }

            v24 = [v44 objectForKeyedSubscript:v14];

            if (v24)
            {
              v25 = [(__CFString *)v9 bundleIdentifier];
              v26 = DSLog_2;
              if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_DEFAULT))
              {
                v27 = v26;
                v28 = [v13 name];
                *buf = 138543618;
                v52 = v25;
                v53 = 2114;
                v54 = v28;
                _os_log_impl(&dword_248C40000, v27, OS_LOG_TYPE_DEFAULT, "Found additional bundle %{public}@ for source %{public}@", buf, 0x16u);
              }

              if (v14 != @"com.apple.DigitalSeparation.FindMy")
              {
                v29 = DSLog_2;
                if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
                {
                  v36 = v29;
                  v37 = [v13 name];
                  *buf = 138543618;
                  v52 = v25;
                  v53 = 2114;
                  v54 = v37;
                  _os_log_error_impl(&dword_248C40000, v36, OS_LOG_TYPE_ERROR, "Duplicate implementation %{public}@ is unexpected for %{public}@, not adding bundle.", buf, 0x16u);
                }

LABEL_30:

LABEL_35:
                goto LABEL_36;
              }

              if (([(__CFString *)v25 containsString:@"FindMyPeopleDigitalSeparation"]& 1) == 0)
              {
                v35 = DSLog_2;
                if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v52 = v9;
                  _os_log_impl(&dword_248C40000, v35, OS_LOG_TYPE_DEFAULT, "Ignoring deprecated FindMy bundle %{public}@", buf, 0xCu);
                }

                goto LABEL_30;
              }
            }

            [v44 setObject:v13 forKeyedSubscript:v14];
            v32 = DSLog_2;
            if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v32;
              v34 = [v13 name];
              *buf = 138543618;
              v52 = v34;
              v53 = 2114;
              v54 = v9;
              _os_log_impl(&dword_248C40000, v33, OS_LOG_TYPE_DEFAULT, "Adding sharing source for %{public}@ from %{public}@", buf, 0x16u);
            }

            goto LABEL_35;
          }

          v19 = DSLog_2;
          if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
          {
            v30 = v19;
            v31 = NSStringFromClass(v11);
            *buf = 138543618;
            v52 = v9;
            v53 = 2114;
            v54 = v31;
            _os_log_error_impl(&dword_248C40000, v30, OS_LOG_TYPE_ERROR, "Found bundle %{public}@ whose principal class %{public}@ does not conform to DSSource", buf, 0x16u);
          }
        }

LABEL_36:

        ++v8;
      }

      while (v6 != v8);
      v38 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      v6 = v38;
    }

    while (v38);
  }

  v39 = [[DSSourceRepository alloc] initWithSources:v44];
  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

uint64_t __40__DSSourceRepository_repositoryWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = DSLog_2;
  if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
  {
    __40__DSSourceRepository_repositoryWithURL___block_invoke_cold_1(v4, v5, v6);
  }

  return 0;
}

+ (BOOL)runtimeFeatureFlagsEnabledFor:(id)a3
{
  if (![a3 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"])
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (DSSourceRepository)initWithSources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DSSourceRepository;
  v5 = [(DSSourceRepository *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DSSourceRepository *)v5 setSourcesByName:v4];
  }

  return v6;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(DSSourceRepository *)self sourcesByName];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (NSArray)sources
{
  v2 = [(DSSourceRepository *)self sourcesByName];
  v3 = [v2 allValues];

  return v3;
}

void __40__DSSourceRepository_repositoryWithURL___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_248C40000, log, OS_LOG_TYPE_ERROR, "Failed to enumerate %{public}@ because %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end