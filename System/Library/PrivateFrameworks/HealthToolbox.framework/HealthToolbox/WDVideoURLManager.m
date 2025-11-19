@interface WDVideoURLManager
+ (id)_baseURLForIdentifier:(id)a3;
+ (id)_parseJSON:(id)a3;
+ (id)preferredLanguageFromLanguages:(id)a3 languagePreferences:(id)a4;
+ (void)_fetchPreferredURLForIdentifier:(id)a3 completion:(id)a4;
+ (void)_fetchRawManifestForIdentifier:(id)a3 completion:(id)a4;
+ (void)fetchURLForVideoWithIdentifier:(id)a3 handler:(id)a4;
@end

@implementation WDVideoURLManager

+ (void)fetchURLForVideoWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__WDVideoURLManager_fetchURLForVideoWithIdentifier_handler___block_invoke;
  v10[3] = &unk_2796E7B70;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [a1 _fetchPreferredURLForIdentifier:v9 completion:v10];
}

void __60__WDVideoURLManager_fetchURLForVideoWithIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__WDVideoURLManager_fetchURLForVideoWithIdentifier_handler___block_invoke_2;
  v10[3] = &unk_2796E7B48;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __60__WDVideoURLManager_fetchURLForVideoWithIdentifier_handler___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_251E85000, v2, OS_LOG_TYPE_DEFAULT, "Fetched URL for %@: %@", &v9, 0x16u);
  }

  v5 = a1[6];
  v6 = a1[5];
  result = (*(a1[7] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)_fetchPreferredURLForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__WDVideoURLManager__fetchPreferredURLForIdentifier_completion___block_invoke;
  v10[3] = &unk_2796E7B98;
  v12 = v7;
  v13 = a1;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  [a1 _fetchRawManifestForIdentifier:v9 completion:v10];
}

void __64__WDVideoURLManager__fetchPreferredURLForIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 48) _parseJSON:a2];
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v18 = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v3;
      _os_log_impl(&dword_251E85000, v4, OS_LOG_TYPE_DEFAULT, "Received JSON dictionary for identifier %{public}@: %{public}@", &v18, 0x16u);
    }

    v6 = [v3 objectForKeyedSubscript:@"languages"];
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v9 = [v7 preferredLanguageFromLanguages:v6 languagePreferences:v8];

    _HKInitializeLogging();
    v10 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_251E85000, v10, OS_LOG_TYPE_DEFAULT, "Chose language code %{public}@", &v18, 0xCu);
    }

    v11 = [*(a1 + 48) _baseURLForIdentifier:*(a1 + 32)];
    v12 = [v11 URLByAppendingPathComponent:v9];
    v13 = [v12 URLByAppendingPathComponent:@"stream.m3u8"];

    (*(*(a1 + 40) + 16))();
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = *(*(a1 + 40) + 16);
    v17 = *MEMORY[0x277D85DE8];

    v16();
  }
}

+ (id)preferredLanguageFromLanguages:(id)a3 languagePreferences:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v7 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v5 forPreferences:v6];
    v8 = [v7 firstObject];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = @"en";
      _os_log_impl(&dword_251E85000, v9, OS_LOG_TYPE_DEFAULT, "Received empty array of languages, returning %{public}@", &v12, 0xCu);
    }

    v8 = @"en";
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_parseJSON:(id)a3
{
  v5 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v5];

  return v3;
}

+ (void)_fetchRawManifestForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a1 _baseURLForIdentifier:a3];
  v8 = [v7 URLByAppendingPathComponent:@"manifest.json"];

  v9 = [MEMORY[0x277CCAD30] sharedSession];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__WDVideoURLManager__fetchRawManifestForIdentifier_completion___block_invoke;
  v12[3] = &unk_2796E7BC0;
  v13 = v6;
  v10 = v6;
  v11 = [v9 dataTaskWithURL:v8 completionHandler:v12];

  [v11 resume];
}

void __63__WDVideoURLManager__fetchRawManifestForIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  (*(*(a1 + 32) + 16))();
}

+ (id)_baseURLForIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 stringForKey:*MEMORY[0x277CCE498]];

  v7 = [v6 hk_stripLeadingTrailingWhitespace];
  v8 = [v7 hk_copyNonEmptyString];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"https://health-assets.cdn-apple.com/videos";
  }

  v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  v11 = [v10 URLByAppendingPathComponent:v4];

  _HKInitializeLogging();
  v12 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 absoluteString];
    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&dword_251E85000, v12, OS_LOG_TYPE_DEFAULT, "Server base URL: %@", &v16, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

@end