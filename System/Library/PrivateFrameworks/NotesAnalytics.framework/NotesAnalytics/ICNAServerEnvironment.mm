@interface ICNAServerEnvironment
+ (NSURL)fallbackDefaultTargetURLFromPrefs;
+ (id)defaultAMSBag;
+ (id)ic_defaultBagKeySet;
- (ICNAServerEnvironment)init;
- (id)fallbackDefaultTargetURL;
- (void)init;
@end

@implementation ICNAServerEnvironment

+ (NSURL)fallbackDefaultTargetURLFromPrefs
{
  v2 = sFallbackDefaultURLFromPrefs;
  if (!sFallbackDefaultURLFromPrefs)
  {
    mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    v4 = [mEMORY[0x277D36180] URLForKey:@"analyticsFallbackDefaultURL"];
    v5 = [v4 copy];
    v6 = sFallbackDefaultURLFromPrefs;
    sFallbackDefaultURLFromPrefs = v5;

    v2 = sFallbackDefaultURLFromPrefs;
  }

  return v2;
}

- (ICNAServerEnvironment)init
{
  v17.receiver = self;
  v17.super_class = ICNAServerEnvironment;
  v2 = [(ICNAServerEnvironment *)&v17 init];
  if (!v2)
  {
    return v2;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICNAServerEnvironment setServerEnvironmentType:](v2, "setServerEnvironmentType:", [standardUserDefaults integerForKey:@"analyticsInternalServerEnvironmentType"]);

  serverEnvironmentType = [(ICNAServerEnvironment *)v2 serverEnvironmentType];
  if (serverEnvironmentType <= 2)
  {
    if (serverEnvironmentType)
    {
      if (serverEnvironmentType == 1)
      {
        v10 = [MEMORY[0x277CBEBC0] URLWithString:@"https://devel.notes-analytics-events.newsapps.apple.com/analyticseventsv2/async"];
        [(ICNAServerEnvironment *)v2 setTargetURL:v10];

        v6 = @"mobilenotes-dev";
      }

      else
      {
        v5 = [MEMORY[0x277CBEBC0] URLWithString:@"https://qa.notes-analytics-events.newsapps.apple.com/analyticseventsv2/async"];
        [(ICNAServerEnvironment *)v2 setTargetURL:v5];

        v6 = @"mobilenotes-qa";
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(serverEnvironmentType)
  {
    case 3u:
      v9 = [MEMORY[0x277CBEBC0] URLWithString:@"https://test.notes-analytics-events.newsapps.apple.com/analyticseventsv2/async"];
      [(ICNAServerEnvironment *)v2 setTargetURL:v9];

      v6 = @"mobilenotes-test";
LABEL_13:
      [(ICNAServerEnvironment *)v2 setAaEndPointTypeName:v6];
      break;
    case 4u:
      v11 = [MEMORY[0x277CBEBC0] URLWithString:@"https://staging.notes-analytics-events.newsapps.apple.com/analyticseventsv2/async"];
      [(ICNAServerEnvironment *)v2 setTargetURL:v11];

      v6 = @"mobilenotes-staging";
      goto LABEL_13;
    case 5u:
LABEL_9:
      fallbackDefaultTargetURL = [(ICNAServerEnvironment *)v2 fallbackDefaultTargetURL];
      [(ICNAServerEnvironment *)v2 setTargetURL:fallbackDefaultTargetURL];

      [(ICNAServerEnvironment *)v2 setAaEndPointTypeName:@"mobilenotes-production"];
      objc_initWeak(&location, v2);
      v8 = dispatch_get_global_queue(17, 0);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __29__ICNAServerEnvironment_init__block_invoke;
      v14[3] = &unk_2799AF408;
      objc_copyWeak(&v15, &location);
      dispatch_async(v8, v14);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      break;
  }

  v12 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(ICNAServerEnvironment *)v2 init];
  }

  return v2;
}

void __29__ICNAServerEnvironment_init__block_invoke(uint64_t a1)
{
  v2 = +[ICNAServerEnvironment defaultAMSBag];
  v3 = [v2 URLForKey:@"app-analytics-url"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ICNAServerEnvironment_init__block_invoke_2;
  v4[3] = &unk_2799AF628;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 valueWithCompletion:v4];
  objc_destroyWeak(&v5);
}

void __29__ICNAServerEnvironment_init__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setTargetURL:v6];

    v9 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    [v9 setURL:v6 forKey:@"analyticsFallbackDefaultURL"];

    v10 = [v6 copy];
    v11 = sFallbackDefaultURLFromPrefs;
    sFallbackDefaultURLFromPrefs = v10;
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __29__ICNAServerEnvironment_init__block_invoke_2_cold_1(v7, v12);
    }
  }
}

- (id)fallbackDefaultTargetURL
{
  targetURL = [(ICNAServerEnvironment *)self targetURL];
  if (!targetURL)
  {
    targetURL = [objc_opt_class() fallbackDefaultTargetURLFromPrefs];
    if (!targetURL)
    {
      targetURL = [MEMORY[0x277CBEBC0] URLWithString:@"https://notes-analytics-events.apple.com/analyticseventsv2/async"];
    }
  }

  return targetURL;
}

+ (id)defaultAMSBag
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ICNAServerEnvironment_defaultAMSBag__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultAMSBag_onceToken != -1)
  {
    dispatch_once(&defaultAMSBag_onceToken, block);
  }

  v2 = defaultAMSBag_defaultBag;

  return v2;
}

uint64_t __38__ICNAServerEnvironment_defaultAMSBag__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CEE408];
  v2 = [*(a1 + 32) ic_defaultBagKeySet];
  [v1 registerBagKeySet:v2 forProfile:@"Notes" profileVersion:@"1"];

  defaultAMSBag_defaultBag = [MEMORY[0x277CEE3F8] bagForProfile:@"Notes" profileVersion:@"1"];

  return MEMORY[0x2821F96F8]();
}

+ (id)ic_defaultBagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x277CEE5E0]);
  [v2 addBagKey:@"app-analytics-url" valueType:5];
  v3 = [v2 copy];

  return v3;
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  targetURL = [self targetURL];
  v5 = 138412290;
  v6 = targetURL;
  _os_log_debug_impl(&dword_25C6BF000, a2, OS_LOG_TYPE_DEBUG, "Analytics Server URL is %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __29__ICNAServerEnvironment_init__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25C6BF000, a2, OS_LOG_TYPE_ERROR, "No URL found for Upload Session Processor: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end