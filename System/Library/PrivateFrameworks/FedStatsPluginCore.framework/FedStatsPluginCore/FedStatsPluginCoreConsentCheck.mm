@interface FedStatsPluginCoreConsentCheck
+ (BOOL)checkConsentConfigurationItem:(id)a3;
+ (BOOL)isConsentedForUseCase:(id)a3;
+ (id)sharedInstance;
- (FedStatsPluginCoreConsentCheck)initWithConsentConfiguration:(id)a3;
@end

@implementation FedStatsPluginCoreConsentCheck

- (FedStatsPluginCoreConsentCheck)initWithConsentConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsPluginCoreConsentCheck;
  v6 = [(FedStatsPluginCoreConsentCheck *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_consentConfiguration, a3);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[FedStatsPluginCoreConsentCheck sharedInstance];
  }

  v3 = sharedInstance_consentChecker;

  return v3;
}

void __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke()
{
  v38[6] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = +[FedStatsPluginLog logger];
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG);
  if (!v0)
  {
    if (v2)
    {
      __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_7();
    }

    goto LABEL_36;
  }

  if (v2)
  {
    __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke_cold_1(v0, v1);
  }

  v1 = [v0 URLForResource:@"FedStatsPluginCoreConsentConfiguration" withExtension:@"plist"];
  if (!v1)
  {
    v4 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_6();
    }

    goto LABEL_35;
  }

  v3 = 0x277CBE000uLL;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v1];
  if (!v4)
  {
    v22 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_5();
    }

    goto LABEL_35;
  }

  v38[0] = @"needsDnU";
  v38[1] = @"needsLocation";
  v38[2] = @"needsIHA";
  v38[3] = @"needsIDV";
  v38[4] = @"needsCNAI";
  v38[5] = @"needsCommSafety";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:6];
  v6 = sharedInstance_kFedStatsPluginCoreConsentConfigurationAllowedKeys;
  sharedInstance_kFedStatsPluginCoreConsentConfigurationAllowedKeys = v5;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = v4;
  v7 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = *v33;
  v10 = 0x277CCA000uLL;
  v26 = *v33;
  while (2)
  {
    v11 = 0;
    v27 = v8;
    do
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v32 + 1) + 8 * v11);
      v13 = *(v10 + 3240);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_2();
        }

        goto LABEL_34;
      }

      v14 = [v4 objectForKey:v12];
      v15 = *(v3 + 2752);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_3();
        }

LABEL_34:
        goto LABEL_35;
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v14;
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v14);
            }

            if (([sharedInstance_kFedStatsPluginCoreConsentConfigurationAllowedKeys containsObject:{*(*(&v28 + 1) + 8 * i), v26}] & 1) == 0)
            {
              v23 = +[FedStatsPluginLog logger];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_4();
              }

              goto LABEL_34;
            }
          }

          v17 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      ++v11;
      v9 = v26;
      v3 = 0x277CBE000;
      v10 = 0x277CCA000;
    }

    while (v11 != v27);
    v8 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v20 = [[FedStatsPluginCoreConsentCheck alloc] initWithConsentConfiguration:v4];
  v21 = sharedInstance_consentChecker;
  sharedInstance_consentChecker = v20;

LABEL_35:
LABEL_36:

  v24 = *MEMORY[0x277D85DE8];
}

+ (BOOL)checkConsentConfigurationItem:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"needsDnU"];
  v5 = v4;
  if (v4 && ![v4 BOOLValue])
  {
    v7 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
    }

LABEL_11:

    v10 = [v3 objectForKey:@"needsLocation"];
    v7 = v10;
    if (v10 && [v10 BOOLValue]&& !+[FedStatsPluginCoreConsentCheckHelper checkLocation])
    {
      v12 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }

      v9 = 0;
      goto LABEL_45;
    }

    v11 = [v3 objectForKey:@"needsIHA"];
    v12 = v11;
    if (v11 && [v11 BOOLValue]&& !+[FedStatsPluginCoreConsentCheckHelper checkIHA])
    {
      v14 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }

      v9 = 0;
      goto LABEL_44;
    }

    v13 = [v3 objectForKey:@"needsIDV"];
    v14 = v13;
    if (v13 && [v13 BOOLValue]&& !+[FedStatsPluginCoreConsentCheckHelper checkIDV])
    {
      v16 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }

      v9 = 0;
      goto LABEL_43;
    }

    v15 = [v3 objectForKey:@"needsCNAI"];
    v16 = v15;
    if (v15 && [v15 BOOLValue]&& !+[FedStatsPluginCoreConsentCheckHelper checkChinaAIEligibility])
    {
      v18 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }
    }

    else
    {
      v17 = [v3 objectForKey:@"needsCommSafety"];
      v18 = v17;
      if (!v17 || ![v17 BOOLValue]|| +[FedStatsPluginCoreConsentCheckHelper checkCommSafety])
      {
        v9 = 1;
LABEL_42:

LABEL_43:
LABEL_44:

LABEL_45:
        goto LABEL_46;
      }

      v19 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
      }
    }

    v9 = 0;
    goto LABEL_42;
  }

  v6 = +[FedStatsPluginCoreConsentCheckHelper checkDnU];
  v7 = +[FedStatsPluginLog logger];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
    }

    goto LABEL_11;
  }

  if (v8)
  {
    +[FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:];
  }

  v9 = 0;
LABEL_46:

  return v9;
}

+ (BOOL)isConsentedForUseCase:(id)a3
{
  v3 = a3;
  v4 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[FedStatsPluginCoreConsentCheck isConsentedForUseCase:];
  }

  v5 = +[FedStatsPluginCoreConsentCheck sharedInstance];
  v6 = +[FedStatsPluginLog logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsPluginCoreConsentCheck isConsentedForUseCase:];
    }

    v8 = [v5 consentConfiguration];
    v7 = [v8 objectForKey:v3];

    if (!v7)
    {
      v9 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginCoreConsentCheck isConsentedForUseCase:];
      }
    }

    v10 = [FedStatsPluginCoreConsentCheck checkConsentConfigurationItem:v7];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[FedStatsPluginCoreConsentCheck isConsentedForUseCase:];
    }

    v10 = 0;
  }

  return v10;
}

void __48__FedStatsPluginCoreConsentCheck_sharedInstance__block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isConsentedForUseCase:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end