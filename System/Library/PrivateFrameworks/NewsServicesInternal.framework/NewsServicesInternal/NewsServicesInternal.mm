id NSSNTPBAnalyticsOsVersionValue()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 systemVersion];

  return v1;
}

void NSSDestroyUserDefaultsDataWithItems(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSSDestroyUserDefaultsDataWithItems_cold_1();
  }

  [v1 enumerateObjectsUsingBlock:&__block_literal_global];
}

void __NSSDestroyUserDefaultsDataWithItems_block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 stickyKeys];
  v4 = [v2 userDefaults];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v4 objectForKey:v11];
        [v5 fc_safelySetObjectAllowingNil:v12 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = [v2 domainName];
  [v4 removePersistentDomainForName:v13];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __NSSDestroyUserDefaultsDataWithItems_block_invoke_2;
  v16[3] = &unk_2799808F0;
  v17 = v4;
  v14 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v16];
  [v14 synchronize];

  v15 = *MEMORY[0x277D85DE8];
}

id NSSDestroyDataContainersWithItems(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSSDestroyDataContainersWithItems_cold_1();
  }

  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 identifier];
        [v8 containerClass];
        container_create_or_lookup_for_current_user();
        v10 = [MEMORY[0x277CCABB0] numberWithBool:container_delete_all_container_content() == 1];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
        [v2 setObject:v10 forKeyedSubscript:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

void sub_25BF0F270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

id NSSNewsWidgetMessageForStaticNewsSection()
{
  v0 = NSSBundleInternal();
  v1 = [v0 localizedStringForKey:@"Editors’ Picks" value:&stru_286D8BB50 table:0];

  return v1;
}

id NSSNewsWidgetMessageForStaticNewsHeadlineTitle()
{
  v0 = NSSBundleInternal();
  v1 = [v0 localizedStringForKey:@"New Planets Found" value:&stru_286D8BB50 table:0];

  return v1;
}

id NSSNewsTagWidgetPlaceholderName()
{
  v0 = NSSBundleInternal();
  v1 = [v0 localizedStringForKey:@"Topic" value:&stru_286D8BB50 table:0];

  return v1;
}

id NSSNewsWidgetIntentsTopHitHeaderName()
{
  v0 = NSSBundleInternal();
  v1 = [v0 localizedStringForKey:@"Top Hit" value:&stru_286D8BB50 table:0];

  return v1;
}

id NSSNewsWidgetIntentsTopicsHeaderName()
{
  v0 = NSSBundleInternal();
  v1 = [v0 localizedStringForKey:@"Topics" value:&stru_286D8BB50 table:0];

  return v1;
}

id NSSNewsWidgetIntentsFollowingHeaderName()
{
  v0 = NSSBundleInternal();
  v1 = [v0 localizedStringForKey:@"Following" value:&stru_286D8BB50 table:0];

  return v1;
}

id NSSNewsWidgetIntentsSuggestedByNewsHeaderName()
{
  v0 = NSSBundleInternal();
  v1 = [v0 localizedStringForKey:@"Suggested" value:&stru_286D8BB50 table:0];

  return v1;
}

id NSSNewsWidgetIntentsSuggestedBySiriHeaderName()
{
  v0 = NSSBundleInternal();
  v1 = [v0 localizedStringForKey:@"Suggested by Siri" value:&stru_286D8BB50 table:0];

  return v1;
}

id NSSNewsAnalyticsPBEventAccumulatorLog()
{
  if (NSSNewsAnalyticsPBEventAccumulatorLog_once != -1)
  {
    NSSNewsAnalyticsPBEventAccumulatorLog_cold_1();
  }

  v1 = NSSNewsAnalyticsPBEventAccumulatorLog_result;

  return v1;
}

uint64_t __NSSNewsAnalyticsPBEventAccumulatorLog_block_invoke()
{
  NSSNewsAnalyticsPBEventAccumulatorLog_result = os_log_create("com.apple.news", "Analytics");

  return MEMORY[0x2821F96F8]();
}

id NSSNTPBAnalyticsUUIDData()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = [v0 UUIDString];
  v2 = FCUUIDStringToUUIDBytes();

  return v2;
}

id NSSNTPBAnalyticsAppBuildNumberValue()
{
  v0 = NewsCoreUserDefaults();
  v1 = [v0 objectForKey:*MEMORY[0x277D30980]];

  if ([v1 length])
  {
    v2 = [@"999" stringByAppendingString:v1];
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 objectForInfoDictionaryKey:@"CFBundleVersion"];
    v2 = [v4 stringValue];
  }

  return v2;
}

id NSSNTPBAnalyticsAppVersionValue()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  return v1;
}

uint64_t NSSNTPBAnalyticsContentEnvironmentValue()
{
  EndpointEnvironment = FCDefaultsReadEndpointEnvironment();
  if (EndpointEnvironment > 9)
  {
    return 1;
  }

  else
  {
    return dword_25BF18DE8[EndpointEnvironment];
  }
}

uint64_t NSSNTPBAnalyticsCellularRadioAccessTechnologyValue()
{
  v0 = [MEMORY[0x277D31140] sharedNetworkReachability];
  v1 = [v0 cellularRadioAccessTechnology];

  return v1;
}

id NSSNTPBAnalyticsCountryCodeValue()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x277CBE690]];

  return v1;
}

id NSSNTPBAnalyticsDevicePlatformValue()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 systemName];

  return v1;
}

id NSSNTPBAnalyticsLanguageCodeValue()
{
  v0 = [MEMORY[0x277D30DC8] sharedAccount];
  v1 = [v0 primaryLanguageCode];

  return v1;
}

uint64_t NSSNTPBAnalyticsOsInstallVariantValue()
{
  if (NFInternalBuild())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t NSSNTPBAnalyticsReachabilityStatusValue()
{
  v0 = [MEMORY[0x277D31140] sharedNetworkReachability];
  v1 = [v0 reachabilityStatus];

  return v1;
}

uint64_t NSSNTPBAnalyticsUtcOffsetValue()
{
  v0 = [MEMORY[0x277CBEBB0] localTimeZone];
  v1 = [v0 secondsFromGMT];

  return v1;
}

uint64_t NSSNTPBAnalyticsPrivateDataSyncOnValue()
{
  v0 = [MEMORY[0x277D30DC8] sharedAccount];
  v1 = [v0 isPrivateDataSyncingEnabled];

  return v1;
}

uint64_t NSSNTPBAnalyticsSignedIntoIcloudValue()
{
  v0 = [MEMORY[0x277D30DC8] sharedAccount];
  v1 = [v0 isUserSignedInToiCloud];

  return v1;
}

id NSSNTPBAnalyticsUserStorefrontIdValue()
{
  v0 = [MEMORY[0x277D30DC8] sharedAccount];
  v1 = [v0 contentStoreFrontID];

  return v1;
}

id NSSBundleInternal()
{
  if (NSSBundleInternal_onceToken != -1)
  {
    NSSBundleInternal_cold_1();
  }

  v1 = NSSBundleInternal_sNSSBundle;

  return v1;
}

uint64_t __NSSBundleInternal_block_invoke()
{
  NSSBundleInternal_sNSSBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void NSSTerminateNewsWithCompletion(void *a1)
{
  v3 = a1;
  SFKillProcessNamed();
  v1 = *MEMORY[0x277D313F8];
  SFKillProcessNamed();
  v2 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 1, &__block_literal_global_2);
    v2 = v3;
  }
}

uint64_t __NSSTerminateNewsWithCompletion_block_invoke()
{
  SFKillProcessNamed();
  v0 = *MEMORY[0x277D313F8];

  return SFKillProcessNamed();
}

void NSSTerminateAppsAndAllPluginsWithBundleIDs(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSSTerminateAppsAndAllPluginsWithBundleIDs_cold_1();
  }

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __NSSTerminateAppsAndAllPluginsWithBundleIDs_block_invoke;
  v14[3] = &unk_279980C88;
  v7 = v5;
  v15 = v7;
  v8 = v6;
  v16 = v8;
  [v3 enumerateObjectsUsingBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __NSSTerminateAppsAndAllPluginsWithBundleIDs_block_invoke_3;
  v12[3] = &unk_279980CB0;
  v13 = v8;
  v9 = v8;
  v10 = MEMORY[0x25F882600](v12);
  v11 = v10;
  if (v4)
  {
    v4[2](v4, v7, v10);
  }

  else
  {
    (*(v10 + 16))(v10);
  }
}

void __NSSTerminateAppsAndAllPluginsWithBundleIDs_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CEEEB0]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __NSSTerminateAppsAndAllPluginsWithBundleIDs_block_invoke_2;
  v10 = &unk_279980C60;
  v11 = *(a1 + 32);
  v12 = v3;
  v5 = v3;
  v6 = [v4 initWithBundleIdentifier:v5 efficacy:3 name:@"com.apple.newsservices.termination" withHandler:&v7];
  [*(a1 + 40) addObject:{v6, v7, v8, v9, v10}];
}

void __NSSTerminateAppsAndAllPluginsWithBundleIDs_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

void NSSTerminateNewsd(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSSTerminateNewsd_cold_1();
  }

  v2 = *MEMORY[0x277D313F8];
  SFKillProcessNamed();
  v1[2](v1, 1, &__block_literal_global_48);
}

void NSSTerminateNewsProcessesWithItems(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSSTerminateNewsProcessesWithItems_cold_1();
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v5 = [v3 fc_dictionaryOfSortedObjectsWithKeyBlock:&__block_literal_global_52];
  v6 = [v5 objectForKeyedSubscript:&unk_286D8E4B8];
  v7 = [v6 fc_setByTransformingWithBlock:&__block_literal_global_56];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = &__block_literal_global_59;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __NSSTerminateNewsProcessesWithItems_block_invoke_2;
  v11[3] = &unk_279980CF8;
  v11[4] = &v12;
  v11[5] = &v18;
  NSSTerminateAppsAndAllPluginsWithBundleIDs(v7, v11);
  v8 = [v5 objectForKeyedSubscript:&unk_286D8E4D0];
  v9 = [v8 count];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __NSSTerminateNewsProcessesWithItems_block_invoke_63;
    v10[3] = &unk_279980D20;
    v10[4] = &v12;
    v10[5] = &v18;
    NSSTerminateNewsd(v10);
  }

  if (v4)
  {
    v4[2](v4, *(v19 + 24), v13[5]);
  }

  else
  {
    (*(v13[5] + 16))();
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
}

uint64_t __NSSTerminateNewsProcessesWithItems_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 processType];

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x25F882600](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __NSSTerminateNewsProcessesWithItems_block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = FCBlockConjunction();
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 40) + 8);
  if (*(v7 + 24))
  {
    v8 = [v9 allValues];
    *(*(*(a1 + 40) + 8) + 24) = [v8 containsObject:MEMORY[0x277CBEC28]] ^ 1;
  }

  else
  {
    *(v7 + 24) = 0;
  }
}

void __NSSTerminateNewsProcessesWithItems_block_invoke_63(uint64_t a1, char a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = FCBlockConjunction();
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 40) + 8) + 24) &= a2;
}

void sub_25BF14E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BF14FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NTPBExternalAnalyticsEventTypeFromExternalEventURLQueryParameter(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"articleView"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"streamView"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"widgetView"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void NSSDestroyUserDefaultsDataWithItems_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "items", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NSSDestroyDataContainersWithItems_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "items", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NSSTerminateAppsAndAllPluginsWithBundleIDs_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "bundleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NSSTerminateNewsd_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NSSTerminateNewsProcessesWithItems_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "items", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}