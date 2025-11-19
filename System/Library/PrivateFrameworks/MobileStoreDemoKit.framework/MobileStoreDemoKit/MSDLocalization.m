@interface MSDLocalization
+ (BOOL)getChannelWarningKeys:(id *)a3 andPlaceHolderWarnings:(id *)a4 forDeviceClass:(id)a5;
+ (BOOL)getRetailWarningKeys:(id *)a3 andPlaceHolderWarnings:(id *)a4 forDeviceClass:(id)a5;
+ (BOOL)getWarningKeys:(id *)a3 andPlaceHolderWarnings:(id *)a4 forOwnershipWarningFlag:(id)a5;
+ (id)getLocalizedOwnershipWarnings:(id)a3;
+ (id)sharedInstance;
+ (void)fillInMissingLocales:(id)a3 withOwnershipWarningMsg:(id)a4;
- (MSDLocalization)init;
- (id)localizedStringWithKey:(id)a3 defaultString:(id)a4;
- (void)init;
@end

@implementation MSDLocalization

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[MSDLocalization sharedInstance];
  }

  v3 = sharedInstance_shared_2;

  return v3;
}

uint64_t __33__MSDLocalization_sharedInstance__block_invoke()
{
  sharedInstance_shared_2 = objc_alloc_init(MSDLocalization);

  return MEMORY[0x2821F96F8]();
}

- (MSDLocalization)init
{
  v16.receiver = self;
  v16.super_class = MSDLocalization;
  v2 = [(MSDLocalization *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/Applications/StoreDemoViewService.app"];
    v4 = v3;
    if (v3)
    {
      v5 = MEMORY[0x277CCA8D8];
      v6 = [v3 localizations];
      v7 = [MEMORY[0x277CBEAF8] preferredLanguages];
      v8 = [v5 preferredLocalizationsFromArray:v6 forPreferences:v7];

      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v4 pathForResource:@"Localizable" ofType:@"strings" inDirectory:@"." forLocalization:v9];

      v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v10];
      localizationTable = v2->_localizationTable;
      v2->_localizationTable = v11;
    }

    else
    {
      v13 = defaultLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(MSDLocalization *)v13 init];
      }

      v8 = v2->_localizationTable;
      v2->_localizationTable = 0;
    }

    v14 = v2;
  }

  return v2;
}

- (id)localizedStringWithKey:(id)a3 defaultString:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MSDLocalization *)self localizationTable];

  if (v8)
  {
    v9 = [(MSDLocalization *)self localizationTable];
    v10 = [v9 objectForKey:v6];

    v11 = v10;
    if (!v10)
    {
      v12 = defaultLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [MEMORY[0x277CBEAF8] preferredLanguages];
        v17 = 138543618;
        v18 = v6;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "Localization lookup failed for key %{public}@, preferred languages %{public}@", &v17, 0x16u);
      }

      v11 = v7;
    }

    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getLocalizedOwnershipWarnings:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "+[MSDLocalization getLocalizedOwnershipWarnings:]";
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "%s - ownershipWarningFlag:  %{public}@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke;
  block[3] = &unk_2798EF790;
  v12 = v3;
  v5 = getLocalizedOwnershipWarnings__onceToken;
  v6 = v3;
  if (v5 != -1)
  {
    dispatch_once(&getLocalizedOwnershipWarnings__onceToken, block);
  }

  v7 = getLocalizedOwnershipWarnings__localizedOwnershipWarnings;
  v8 = getLocalizedOwnershipWarnings__localizedOwnershipWarnings;

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileStoreDemoKit.framework"];
  v29 = [MEMORY[0x277CBEB38] dictionary];
  v3 = 0x281DDE000uLL;
  v37 = 0;
  v38 = 0;
  v4 = [MSDLocalization getWarningKeys:&v38 andPlaceHolderWarnings:&v37 forOwnershipWarningFlag:*(a1 + 32)];
  v5 = v38;
  v6 = v37;
  if (v2)
  {
    v7 = !v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = defaultLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_1();
    }
  }

  else
  {
    v9 = [v2 localizations];
    v8 = v9;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = defaultLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_2();
      }

      v28 = v6;

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = v8;
      v32 = [v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v32)
      {
        v31 = *v34;
        *&v11 = 138543362;
        v27 = v11;
        obj = v8;
        do
        {
          v12 = 0;
          do
          {
            if (*v34 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v33 + 1) + 8 * v12);
            v14 = [v5 objectForKey:{@"Title", v27}];
            v15 = [v2 localizedStringForKey:v14 value:0 table:0 localization:v13];

            v16 = [v5 objectForKey:@"Body"];
            v17 = [v2 localizedStringForKey:v16 value:0 table:0 localization:v13];

            v18 = [v5 objectForKey:@"Link"];
            v19 = [v2 localizedStringForKey:v18 value:0 table:0 localization:v13];

            if (!v19 || ([v5 objectForKey:@"Link"], v20 = objc_claimAutoreleasedReturnValue(), v21 = -[__CFString isEqualToString:](v19, "isEqualToString:", v20), v20, v21))
            {

              v19 = &stru_286AD9A18;
            }

            if (v15 && v17)
            {
              v41[0] = @"Title";
              v41[1] = @"Body";
              v42[0] = v15;
              v42[1] = v17;
              v41[2] = @"Link";
              v42[2] = v19;
              v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
              [v29 setObject:v22 forKey:v13];
              if ([v13 isEqualToString:@"en"])
              {
                v22 = v22;

                v28 = v22;
              }
            }

            else
            {
              v22 = defaultLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = v27;
                v40 = v13;
                _os_log_error_impl(&dword_259B7D000, v22, OS_LOG_TYPE_ERROR, "ERROR - Either title, body or link localized text is missing for locale:  %{public}@", buf, 0xCu);
              }
            }

            ++v12;
          }

          while (v32 != v12);
          v8 = obj;
          v32 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v32);
      }

      v3 = 0x281DDE000;
      v6 = v28;
    }

    else
    {
      v23 = defaultLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_3();
      }
    }
  }

  [v3 + 2456 fillInMissingLocales:v29 withOwnershipWarningMsg:v6];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v29];
  v25 = getLocalizedOwnershipWarnings__localizedOwnershipWarnings;
  getLocalizedOwnershipWarnings__localizedOwnershipWarnings = v24;

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)fillInMissingLocales:(id)a3 withOwnershipWarningMsg:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (fillInMissingLocales_withOwnershipWarningMsg__onceToken != -1)
  {
    +[MSDLocalization fillInMissingLocales:withOwnershipWarningMsg:];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = fillInMissingLocales_withOwnershipWarningMsg__defaultLocales;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v5 objectForKey:{v12, v15}];

        if (!v13)
        {
          [v5 setObject:v6 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __64__MSDLocalization_fillInMissingLocales_withOwnershipWarningMsg___block_invoke()
{
  v0 = fillInMissingLocales_withOwnershipWarningMsg__defaultLocales;
  fillInMissingLocales_withOwnershipWarningMsg__defaultLocales = &unk_286AE1768;
}

+ (BOOL)getWarningKeys:(id *)a3 andPlaceHolderWarnings:(id *)a4 forOwnershipWarningFlag:(id)a5
{
  v7 = a5;
  *a3 = 0;
  *a4 = 0;
  v8 = MGGetStringAnswer();
  v9 = v8;
  if (!v8)
  {
    +[MSDLocalization getWarningKeys:andPlaceHolderWarnings:forOwnershipWarningFlag:];
LABEL_16:
    v11 = 0;
    goto LABEL_12;
  }

  if (([v8 isEqualToString:@"iPhone"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iPad") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iPod") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"Watch") & 1) == 0)
  {
    +[MSDLocalization getWarningKeys:andPlaceHolderWarnings:forOwnershipWarningFlag:];
    goto LABEL_16;
  }

  if (([v7 isEqualToString:@"2"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"1") & 1) == 0)
  {
    +[MSDLocalization getWarningKeys:andPlaceHolderWarnings:forOwnershipWarningFlag:];
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"2"])
  {
    v10 = [MSDLocalization getChannelWarningKeys:a3 andPlaceHolderWarnings:a4 forDeviceClass:v9];
  }

  else
  {
    v10 = [MSDLocalization getRetailWarningKeys:a3 andPlaceHolderWarnings:a4 forDeviceClass:v9];
  }

  v11 = v10;
LABEL_12:

  return v11;
}

+ (BOOL)getChannelWarningKeys:(id *)a3 andPlaceHolderWarnings:(id *)a4 forDeviceClass:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:@"PropertyClaimTitle_Channel" forKey:@"Title"];
  [v8 setObject:@"PropertyClaimLink_Channel" forKey:@"Link"];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  [v9 setObject:@"Property of Apple Authorized Reseller" forKey:@"Title"];
  [v9 setObject:&stru_286AD9A18 forKey:@"Link"];
  if ([v7 isEqualToString:@"iPhone"])
  {
    v10 = @"This iPhone cannot be used and is not for sale.";
    v11 = @"PropertyClaimBody_iPhone_Channel";
LABEL_9:
    [v8 setObject:v11 forKey:@"Body"];
    [v9 setObject:v10 forKey:@"Body"];
    goto LABEL_10;
  }

  if ([v7 isEqualToString:@"iPad"])
  {
    v10 = @"This iPad cannot be used and is not for sale.";
    v11 = @"PropertyClaimBody_iPad_Channel";
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"iPod"])
  {
    v10 = @"This iPod cannot be used and is not for sale.";
    v11 = @"PropertyClaimBody_iPod_Channel";
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"Watch"])
  {
    v10 = @"This Apple Watch cannot be used and is not for sale.";
    v11 = @"PropertyClaimBody_AppleWatch_Channel";
    goto LABEL_9;
  }

LABEL_10:
  *a3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
  *a4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];

  return 1;
}

+ (BOOL)getRetailWarningKeys:(id *)a3 andPlaceHolderWarnings:(id *)a4 forDeviceClass:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:@"PropertyClaimTitle_Retail" forKey:@"Title"];
  [v8 setObject:@"PropertyClaimLink_Retail" forKey:@"Link"];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  [v9 setObject:@"Property of Apple" forKey:@"Title"];
  [v9 setObject:@"apple.com/retail" forKey:@"Link"];
  if ([v7 isEqualToString:@"iPhone"])
  {
    v10 = @"This iPhone cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v11 = @"PropertyClaimBody_iPhone_Retail";
LABEL_9:
    [v8 setObject:v11 forKey:@"Body"];
    [v9 setObject:v10 forKey:@"Body"];
    goto LABEL_10;
  }

  if ([v7 isEqualToString:@"iPad"])
  {
    v10 = @"This iPad cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v11 = @"PropertyClaimBody_iPad_Retail";
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"iPod"])
  {
    v10 = @"This iPod cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v11 = @"PropertyClaimBody_iPod_Retail";
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"Watch"])
  {
    v10 = @"This Apple Watch cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v11 = @"PropertyClaimBody_AppleWatch_Retail";
    goto LABEL_9;
  }

LABEL_10:
  *a3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
  *a4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];

  return 1;
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = @"/Applications/StoreDemoViewService.app";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "Could not load localization bundle at %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v3 = @"/System/Library/PrivateFrameworks/MobileStoreDemoKit.framework";
  _os_log_error_impl(&dword_259B7D000, v0, OS_LOG_TYPE_ERROR, "%s - Failed to load bundle %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  _os_log_debug_impl(&dword_259B7D000, v1, OS_LOG_TYPE_DEBUG, "%s - allLocalizations = %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_3()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v3 = @"/System/Library/PrivateFrameworks/MobileStoreDemoKit.framework";
  _os_log_error_impl(&dword_259B7D000, v0, OS_LOG_TYPE_ERROR, "%s - Failed to get all localizations or localizations is in wrong format.  Bundle:  %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)getWarningKeys:andPlaceHolderWarnings:forOwnershipWarningFlag:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

+ (void)getWarningKeys:andPlaceHolderWarnings:forOwnershipWarningFlag:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

+ (void)getWarningKeys:andPlaceHolderWarnings:forOwnershipWarningFlag:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end