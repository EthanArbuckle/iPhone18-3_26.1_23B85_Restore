@interface MXSourceUtilities
+ (BOOL)anyClientsAvailable;
+ (BOOL)isAppAnalyticsEnabled;
+ (BOOL)isMetricKitClient:(id)client;
+ (BOOL)isMetricKitClient:(id)client forUser:(unsigned int)user;
+ (id)regionFormat;
@end

@implementation MXSourceUtilities

+ (id)regionFormat
{
  if (regionFormat_onceToken != -1)
  {
    +[MXSourceUtilities regionFormat];
  }

  v3 = regionFormat_regionFormat;

  return v3;
}

void __33__MXSourceUtilities_regionFormat__block_invoke()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  if (v0)
  {
    v2 = v0;
    v1 = [v0 objectForKey:*MEMORY[0x277CBE690]];
    if (v1)
    {
      objc_storeStrong(&regionFormat_regionFormat, v1);
    }

    v0 = v2;
  }
}

+ (BOOL)isMetricKitClient:(id)client
{
  clientCopy = client;
  v14 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:clientCopy error:&v14];
  v5 = v14;
  if (v5)
  {
    containingBundleRecord = _MXSourceUtilitiesLog();
    if (os_log_type_enabled(containingBundleRecord, OS_LOG_TYPE_ERROR))
    {
      +[MXSourceUtilities isMetricKitClient:];
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v7 = _MXSourceUtilitiesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[MXSourceUtilities isMetricKitClient:];
    }

    containingBundleRecord = [v4 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];

    clientCopy = bundleIdentifier;
  }

LABEL_9:
  v9 = CFPreferencesCopyValue(@"MXClientDataRetrieved", @"com.apple.metrickitd", @"mobile", *MEMORY[0x277CBF030]);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:clientCopy];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isMetricKitClient:(id)client forUser:(unsigned int)user
{
  clientCopy = client;
  v15 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:clientCopy error:&v15];
  v6 = v15;
  if (v6)
  {
    containingBundleRecord = _MXSourceUtilitiesLog();
    if (os_log_type_enabled(containingBundleRecord, OS_LOG_TYPE_ERROR))
    {
      +[MXSourceUtilities isMetricKitClient:];
    }

    bundleIdentifier = clientCopy;
  }

  else
  {
    bundleIdentifier = clientCopy;
    if (!v5)
    {
      goto LABEL_10;
    }

    v9 = _MXSourceUtilitiesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[MXSourceUtilities isMetricKitClient:];
    }

    containingBundleRecord = [v5 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
  }

LABEL_10:
  v10 = CFPreferencesCopyValue(@"MXClientDataRetrieved", @"com.apple.metrickitd", @"mobile", *MEMORY[0x277CBF030]);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:bundleIdentifier];
    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)isAppAnalyticsEnabled
{
  if (isAppAnalyticsEnabled_onceToken != -1)
  {
    +[MXSourceUtilities isAppAnalyticsEnabled];
  }

  return isAppAnalyticsEnabled_appAnalyticsEnabled;
}

uint64_t __42__MXSourceUtilities_isAppAnalyticsEnabled__block_invoke()
{
  result = AppAnalyticsEnabled();
  isAppAnalyticsEnabled_appAnalyticsEnabled = result;
  return result;
}

+ (BOOL)anyClientsAvailable
{
  v2 = CFPreferencesCopyValue(@"MXClientsAvailable", @"com.apple.metrickitd", @"mobile", *MEMORY[0x277CBF010]);
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

uint64_t __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 processImagePath];
  v5 = [v4 stringByDeletingLastPathComponent];

  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v5];
  v7 = [v6 bundleIdentifier];
  if (([v7 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_cold_1(v7, (a1 + 32));
    }

    v16 = *(a1 + 32);
    AnalyticsSendEventLazy();
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count] < 0x64)
  {
    v8 = objc_alloc(MEMORY[0x277CD7A38]);
    v9 = [v3 subsystem];
    v10 = [v3 category];
    v11 = [v3 name];
    v12 = [v3 beginDate];
    LOBYTE(v15) = 0;
    v13 = [v8 initWithSubSystem:v9 category:v10 name:v11 beginTimeStamp:v12 endTimeStamp:0 duration:0 isInterval:v15];

    if (v13)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_cold_2();
  }

  return 1;
}

id __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_29(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"clientOfInterest";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 endEvent];
  v5 = [v4 processImagePath];
  v6 = [v5 stringByDeletingLastPathComponent];

  v7 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
  v8 = [v7 bundleIdentifier];
  if (([v8 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_37_cold_1(v8, (a1 + 32));
    }

    v26 = *(a1 + 32);
    AnalyticsSendEventLazy();
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count] < 0x64)
  {
    v23 = v8;
    v24 = v7;
    v25 = v6;
    v9 = objc_alloc(MEMORY[0x277CD7A38]);
    v10 = [v3 subsystem];
    v11 = [v3 category];
    v12 = [v3 name];
    v13 = [v3 beginDate];
    v14 = [v3 endDate];
    v15 = objc_alloc(MEMORY[0x277CCAB10]);
    [v3 durationMs];
    v17 = v16;
    v18 = [MEMORY[0x277CCADD0] milliseconds];
    v19 = [v15 initWithDoubleValue:v18 unit:v17];
    LOBYTE(v22) = 1;
    v20 = [v9 initWithSubSystem:v10 category:v11 name:v12 beginTimeStamp:v13 endTimeStamp:v14 duration:v19 isInterval:v22];

    if (v20)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v20];
    }

    v7 = v24;
    v6 = v25;
    v8 = v23;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_cold_2();
  }

  return 1;
}

id __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_38(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"clientOfInterest";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)isMetricKitClient:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_5(v1 v2)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)isMetricKitClient:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_5(v1 v2)];
  v4 = [v3 bundleIdentifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)getSignpostDataforPid:(void *)a1 forClient:(void *)a2 andEventTimestamp:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_258D9F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Reading signposts with Start Timestamp : %@ and End Timestamp %@", buf, 0x16u);
}

+ (void)getSignpostDataforPid:(void *)a1 forClient:(uint8_t *)buf andEventTimestamp:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_258D9F000, log, OS_LOG_TYPE_ERROR, "MXSignpost Readback failed to start with error %@", buf, 0xCu);
}

void __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_37_cold_1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

@end