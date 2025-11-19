@interface OSIBLMAnalyticsHandler
@end

@implementation OSIBLMAnalyticsHandler

uint64_t __41___OSIBLMAnalyticsHandler_sharedInstance__block_invoke()
{
  sharedInstance_instance_3 = objc_alloc_init(_OSIBLMAnalyticsHandler);

  return MEMORY[0x2821F96F8]();
}

void __31___OSIBLMAnalyticsHandler_init__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31___OSIBLMAnalyticsHandler_init__block_invoke_2;
  v5[3] = &unk_2799C1770;
  v6 = *(a1 + 32);
  v4 = a2;
  [v4 setExpirationHandler:v5];
  [*(a1 + 32) extractAndReportMetrics];
  [*(a1 + 32) reportDailyFeatureState];
  [v4 setTaskCompleted];
}

void __31___OSIBLMAnalyticsHandler_init__block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.osintelligence.iblm.dailyAnalytics";
    _os_log_impl(&dword_25D171000, v1, OS_LOG_TYPE_DEFAULT, "Expiration for %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __60___OSIBLMAnalyticsHandler_sendDataToPPS_subsystem_category___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) ppsIDForSubsystem:*(a1 + 40) category:*(a1 + 48)];
  if (*(a1 + 56))
  {
    v3 = v2;
    v4 = [*(a1 + 32) log];
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 56);
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_25D171000, v5, OS_LOG_TYPE_DEFAULT, "Reporting %@ to PPS", &v10, 0xCu);
      }

      v7 = *(a1 + 56);
      PPSSendTelemetry();
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __60___OSIBLMAnalyticsHandler_sendDataToPPS_subsystem_category___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60___OSIBLMAnalyticsHandler_sendDataToPPS_subsystem_category___block_invoke_cold_2();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54___OSIBLMAnalyticsHandler_historicalDrainDataForDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54___OSIBLMAnalyticsHandler_historicalDrainDataForDate___block_invoke_cold_1(v3);
    }
  }
}

void __54___OSIBLMAnalyticsHandler_historicalDrainDataForDate___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = *(*(a1 + 32) + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  v25 = v5;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v7 eventBody];
  [v10 batteryPercentage];
  v12 = v11;
  v13 = [v25 eventBody];
  [v13 batteryPercentage];
  v15 = (v12 - v14);

  if (v15 <= 0)
  {
    v17 = v25;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    v16 = 48;
  }

  else
  {
    v16 = 40;
    v17 = v25;
  }

  *(*(*(a1 + v16) + 8) + 24) += v15;
LABEL_6:
  v18 = [v17 eventBody];
  [v18 batteryPercentage];
  v20 = v19;
  v21 = *(*(*(a1 + 56) + 8) + 24);

  if (v20 < v21)
  {
    v22 = [v25 eventBody];
    [v22 batteryPercentage];
    *(*(*(a1 + 56) + 8) + 24) = v23;
  }

  v8 = (*(*(a1 + 32) + 8) + 40);
  v5 = v25;
LABEL_9:
  v24 = *v8;
  *v8 = v5;

  objc_autoreleasePoolPop(v4);
}

void __58___OSIBLMAnalyticsHandler_historicalPluggedInDataForDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54___OSIBLMAnalyticsHandler_historicalDrainDataForDate___block_invoke_cold_1(v3);
    }
  }
}

void __58___OSIBLMAnalyticsHandler_historicalPluggedInDataForDate___block_invoke_111(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v6 eventBody];
  v5 = [v4 starting];

  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  objc_autoreleasePoolPop(v3);
}

void __58___OSIBLMAnalyticsHandler_historicalPluggedInDataForDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54___OSIBLMAnalyticsHandler_historicalDrainDataForDate___block_invoke_cold_1(v3);
    }
  }
}

void __58___OSIBLMAnalyticsHandler_historicalPluggedInDataForDate___block_invoke_112(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v21 = v3;
  v5 = [v21 eventBody];
  v6 = [v5 starting];

  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v6)
  {
    if (v7)
    {
      v13 = MEMORY[0x277CBEAA8];
      [v7 timestamp];
      v12 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
      v14 = MEMORY[0x277CBEAA8];
      [v21 timestamp];
      v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
      [v15 timeIntervalSinceDate:v12];
      *(*(*(a1 + 56) + 8) + 24) = (v16 + *(*(*(a1 + 56) + 8) + 24));
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = 0;
    }

    else
    {
      if (*(*(*(a1 + 64) + 8) + 24) != 1)
      {
        goto LABEL_11;
      }

      v19 = MEMORY[0x277CBEAA8];
      v15 = *(a1 + 32);
      [v21 timestamp];
      v12 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
      [v12 timeIntervalSinceDate:v15];
      *(*(*(a1 + 56) + 8) + 24) = (v20 + *(*(*(a1 + 56) + 8) + 24));
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    goto LABEL_10;
  }

  if (!v7 || ([v7 eventBody], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "starting"), v8, (v9 & 1) == 0))
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v10 = *(*(a1 + 40) + 8);
    v11 = v21;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
LABEL_10:
  }

LABEL_11:

  objc_autoreleasePoolPop(v4);
}

void __59___OSIBLMAnalyticsHandler_historicalEngagementDataForDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) dateFormatter];
  v7 = [v6 dateFromString:v9];

  [v7 timeIntervalSinceDate:*(a1 + 40)];
  if (v8 >= 0.0)
  {
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v9];
  }
}

uint64_t __40___OSIBLMAnalyticsHandler_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatter_formatter_0;
  dateFormatter_formatter_0 = v0;

  [dateFormatter_formatter_0 setDateStyle:1];
  v2 = dateFormatter_formatter_0;

  return [v2 setTimeStyle:3];
}

void __65___OSIBLMAnalyticsHandler_recordMitigationUpdateTo_fromPrevious___block_invoke(id *a1)
{
  v23 = os_transaction_create();
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [OSIUtilities midnightDateFrom:v2];

  v4 = [a1[4] defaults];
  v5 = [v4 objectForKey:@"historicalIBLMEngagement"];
  v6 = [v5 mutableCopy];

  if ([a1[5] level] || objc_msgSend(a1[6], "level") < 0)
  {
    if ([a1[5] level] < 0)
    {
      goto LABEL_11;
    }

    v7 = [a1[4] defaults];
    v8 = [MEMORY[0x277CBEAA8] date];
    [v7 setObject:v8 forKey:@"lastEngagementDate"];
    goto LABEL_9;
  }

  v9 = [a1[4] defaults];
  v7 = [v9 objectForKey:@"lastEngagementDate"];

  if (v7)
  {
    v10 = [a1[4] dateFormatter];
    v8 = [v10 stringFromDate:v3];

    [v7 timeIntervalSinceNow];
    v12 = v11;
    v13 = [v6 objectForKeyedSubscript:v8];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = objc_opt_new();
    }

    v15 = MEMORY[0x277CCABB0];
    v16 = [v14 objectForKeyedSubscript:@"dailyEngagementDurationMins"];
    [v16 doubleValue];
    v18 = [v15 numberWithDouble:v17 + v12 / -60.0];
    [v14 setObject:v18 forKeyedSubscript:@"dailyEngagementDurationMins"];

    v19 = MEMORY[0x277CCABB0];
    v20 = [v14 objectForKeyedSubscript:@"dailyEngagementCount"];
    v21 = [v19 numberWithInteger:{objc_msgSend(v20, "integerValue") + 1}];
    [v14 setObject:v21 forKeyedSubscript:@"dailyEngagementCount"];

    [v6 setObject:v14 forKeyedSubscript:v8];
    v22 = [a1[4] defaults];
    [v22 setObject:v6 forKey:@"historicalIBLMEngagement"];

LABEL_9:
  }

LABEL_11:
}

void __54___OSIBLMAnalyticsHandler_historicalDrainDataForDate___block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_25D171000, v3, v4, "Error getting biome battery events - %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end