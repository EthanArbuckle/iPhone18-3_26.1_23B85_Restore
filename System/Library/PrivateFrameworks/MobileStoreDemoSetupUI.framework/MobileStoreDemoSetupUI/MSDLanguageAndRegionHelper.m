@interface MSDLanguageAndRegionHelper
+ (id)sharedInstance;
- (BOOL)_isCurrentDeviceLanguage:(id)a3 andRegion:(id)a4;
- (BOOL)_isCurrentDevicePreferredLanguage:(id)a3 andRegion:(id)a4;
- (BOOL)isSiriEnabled;
- (id)_preferredLocalizedLanguageCodeFromArray:(id)a3;
- (id)_systemLocalizedLanguageCodeFromArray:(id)a3;
- (id)getCurrentDeviceLanguage;
- (id)getCurrentDevicePreferredLanguage;
- (id)getCurrentDeviceRegion;
- (id)getCurrentLocaleCode;
- (id)getSiriLanguage;
- (int)setDeviceLanguage:(id)a3 andRegion:(id)a4 matchToSystemLanguage:(BOOL)a5;
- (int)setSiriLanguage:(id)a3;
@end

@implementation MSDLanguageAndRegionHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[MSDLanguageAndRegionHelper sharedInstance];
  }

  v3 = sharedInstance_shared_0;

  return v3;
}

uint64_t __44__MSDLanguageAndRegionHelper_sharedInstance__block_invoke()
{
  sharedInstance_shared_0 = objc_alloc_init(MSDLanguageAndRegionHelper);

  return MEMORY[0x2821F96F8]();
}

- (int)setDeviceLanguage:(id)a3 andRegion:(id)a4 matchToSystemLanguage:(BOOL)a5
{
  v5 = a5;
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = defaultLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v12)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_259BCA000, v11, OS_LOG_TYPE_DEFAULT, "Comparing to the nearest system language", &v21, 2u);
    }

    v27[0] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v14 = [(MSDLanguageAndRegionHelper *)self _systemLocalizedLanguageCodeFromArray:v13];

    v15 = [(MSDLanguageAndRegionHelper *)self _isCurrentDeviceLanguage:v14 andRegion:v9];
  }

  else
  {
    if (v12)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_259BCA000, v11, OS_LOG_TYPE_DEFAULT, "Comparing to any localized language variant", &v21, 2u);
    }

    v15 = [(MSDLanguageAndRegionHelper *)self _isCurrentDevicePreferredLanguage:v10 andRegion:v9];
    v14 = v10;
  }

  v16 = defaultLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543874;
    v22 = v10;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_259BCA000, v16, OS_LOG_TYPE_DEFAULT, "Setting device language to %{public}@ (%{public}@) and region code to %{public}@.", &v21, 0x20u);
  }

  if (v15)
  {
    v17 = defaultLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543874;
      v22 = v10;
      v23 = 2114;
      v24 = v14;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&dword_259BCA000, v17, OS_LOG_TYPE_DEFAULT, "Device already has language %{public}@ (%{public}@) and region %{public}@", &v21, 0x20u);
    }

    v18 = 2;
  }

  else
  {
    [MEMORY[0x277D218C8] setRegion:v9];
    [MEMORY[0x277D218C8] setLanguage:v14];
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)getCurrentDeviceLanguage
{
  v3 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = [(MSDLanguageAndRegionHelper *)self _systemLocalizedLanguageCodeFromArray:v3];

  return v4;
}

- (id)getCurrentDevicePreferredLanguage
{
  v2 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v3 = [v2 firstObject];

  return v3;
}

- (id)getCurrentDeviceRegion
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 countryCode];

  return v3;
}

- (id)getCurrentLocaleCode
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MSDLanguageAndRegionHelper *)self getCurrentDevicePreferredLanguage];
  v5 = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
  v6 = [v3 stringWithFormat:@"%@_%@", v4, v5];

  return v6;
}

- (int)setSiriLanguage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(MSDLanguageAndRegionHelper *)self isSiriEnabled])
  {
    v5 = defaultLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "Enabling Siri", buf, 2u);
    }

    [(MSDLanguageAndRegionHelper *)self setSiriIsEnabled:1];
  }

  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v4;
    _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "Setting Siri language to %{public}@", buf, 0xCu);
  }

  v7 = [(MSDLanguageAndRegionHelper *)self getSiriLanguage];

  if (v7 == v4)
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v4;
      _os_log_impl(&dword_259BCA000, v10, OS_LOG_TYPE_DEFAULT, "Device already has a Siri language of %{public}@", buf, 0xCu);
    }

    v15 = 2;
  }

  else
  {
    v8 = dispatch_semaphore_create(0);
    v9 = [MEMORY[0x277CEF3A8] sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46__MSDLanguageAndRegionHelper_setSiriLanguage___block_invoke;
    v18[3] = &unk_2798F1C48;
    v10 = v8;
    v19 = v10;
    [v9 setLanguage:v4 withCompletion:v18];

    v11 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = defaultLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MSDLanguageAndRegionHelper setSiriLanguage:v12];
      }
    }

    v13 = [(MSDLanguageAndRegionHelper *)self getSiriLanguage];

    if (v13 == v4)
    {
      v15 = 0;
    }

    else
    {
      v14 = defaultLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(MSDLanguageAndRegionHelper *)v4 setSiriLanguage:v14];
      }

      v15 = 1;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

intptr_t __46__MSDLanguageAndRegionHelper_setSiriLanguage___block_invoke(uint64_t a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Siri language change complete", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getSiriLanguage
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 languageCode];

  return v3;
}

- (BOOL)isSiriEnabled
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

- (BOOL)_isCurrentDeviceLanguage:(id)a3 andRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceLanguage];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
    v11 = [v10 isEqualToString:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_isCurrentDevicePreferredLanguage:(id)a3 andRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSDLanguageAndRegionHelper *)self getCurrentDevicePreferredLanguage];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
    v11 = [v10 isEqualToString:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_systemLocalizedLanguageCodeFromArray:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  v6 = [v4 systemLanguages];
  v7 = [v3 preferredLocalizationsFromArray:v6 forPreferences:v5];

  v8 = [v7 firstObject];

  return v8;
}

- (id)_preferredLocalizedLanguageCodeFromArray:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [MEMORY[0x277CBEAF8] availableLocaleIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v18 + 1) + 8 * i)];
        v11 = [v10 languageIdentifier];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = MEMORY[0x277CCA8D8];
  v13 = [v4 copy];
  v14 = [v12 preferredLocalizationsFromArray:v13 forPreferences:v3];
  v15 = [v14 firstObject];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)setSiriLanguage:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 getSiriLanguage];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_259BCA000, a3, OS_LOG_TYPE_ERROR, "Failed to set the Siri language to %{public}@, the device Siri language remains set to %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end