@interface DAAnalyticsReporter
+ (void)endDailyAnalyticsReporter;
+ (void)reportActiveExchangeOAuthAccountsCount;
+ (void)startDailyAnalyticsReporter;
@end

@implementation DAAnalyticsReporter

+ (void)startDailyAnalyticsReporter
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24844D000, v3, v4, "starting daily Analytics reporter", buf, 2u);
  }

  v5 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__DAAnalyticsReporter_startDailyAnalyticsReporter__block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = a1;
  xpc_activity_register("com.apple.dataaccess.dataaccessd.dailyAnalytics", v5, handler);
}

void __50__DAAnalyticsReporter_startDailyAnalyticsReporter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v5 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__DAAnalyticsReporter_startDailyAnalyticsReporter__block_invoke_1;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
LABEL_10:

    goto LABEL_11;
  }

  if (!state)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_int64(v5, *MEMORY[0x277D86250], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);
    v6 = xpc_activity_copy_criteria(v3);
    if (!v6 || !xpc_equal(v5, v6))
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 0;
        _os_log_impl(&dword_24844D000, v7, v8, "Updating criteria for daily Analytics xpc activity.", buf, 2u);
      }

      xpc_activity_set_criteria(v3, v5);
    }

    goto LABEL_10;
  }

LABEL_11:
}

+ (void)endDailyAnalyticsReporter
{
  xpc_activity_unregister("com.apple.dataaccess.dataaccessd.dailyAnalytics");
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *v4 = 0;
    _os_log_impl(&dword_24844D000, v2, v3, "unregistering daily Analytics reporter", v4, 2u);
  }
}

+ (void)reportActiveExchangeOAuthAccountsCount
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_24844D000, v2, v3, "Reporting Exchange OAuth accounts count", buf, 2u);
  }

  v4 = objc_opt_new();
  v5 = [v4 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C00]];
  if (v5)
  {
    v6 = [v4 accountsWithAccountType:v5];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:@"DAExchangeOAuthSupportedKey"];

          if (v12)
          {
            ++v9;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v22 = @"count";
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v23 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    AnalyticsSendEvent();

    v15 = DALoggingwithCategory();
    if (os_log_type_enabled(v15, v3))
    {
      *buf = 0;
      _os_log_impl(&dword_24844D000, v15, v3, "Reported Exchange OAuth accounts count", buf, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end