@interface _OSIBLMAnalyticsHandler
+ (id)sharedInstance;
+ (int64_t)currentBatteryLevel;
- (PPSTelemetryIdentifier)ppsIDForSubsystem:(id)a3 category:(id)a4;
- (_OSIBLMAnalyticsHandler)init;
- (id)dateFormatter;
- (id)featureEngagementMetricsFromDrainData:(id)a3 engagementData:(id)a4;
- (id)historicalDrainDataForDate:(id)a3;
- (id)historicalEngagementDataForDate:(id)a3;
- (id)historicalPluggedInDataForDate:(id)a3;
- (id)modelStringForModel:(int64_t)a3;
- (void)cancelTask;
- (void)extractAndReportMetrics;
- (void)recordAnalyticsFeatureState:(int64_t)a3 forCategory:(id)a4;
- (void)recordFeatureNotificationState:(int64_t)a3;
- (void)recordFeatureState:(int64_t)a3;
- (void)recordIBLMFirstUserNotificationResponse:(int64_t)a3;
- (void)recordIBLMFirstUserNotificationTrigger:(int64_t)a3;
- (void)recordMitigationUpdateTo:(id)a3 fromPrevious:(id)a4;
- (void)reportDailyFeatureState;
- (void)reportDrainResult:(id)a3 forModel:(int64_t)a4;
- (void)reportNewMitigation:(id)a3;
- (void)sendDataToPPS:(id)a3 subsystem:(id)a4 category:(id)a5;
- (void)submitTask;
@end

@implementation _OSIBLMAnalyticsHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[_OSIBLMAnalyticsHandler sharedInstance];
  }

  v3 = sharedInstance_instance_3;

  return v3;
}

- (_OSIBLMAnalyticsHandler)init
{
  v17.receiver = self;
  v17.super_class = _OSIBLMAnalyticsHandler;
  v2 = [(_OSIBLMAnalyticsHandler *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.osintelligence.iblm.analyticsHandler", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = os_log_create("com.apple.osintelligence", "analyticsHandler");
    log = v2->_log;
    v2->_log = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.osintelligence.iblm.analytics"];
    defaults = v2->_defaults;
    v2->_defaults = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    subsystemToPPSID = v2->_subsystemToPPSID;
    v2->_subsystemToPPSID = v10;

    v12 = [MEMORY[0x277CF0810] sharedScheduler];
    v13 = v2->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __31___OSIBLMAnalyticsHandler_init__block_invoke;
    v15[3] = &unk_2799C1798;
    v16 = v2;
    [v12 registerForTaskWithIdentifier:@"com.apple.osintelligence.iblm.dailyAnalytics" usingQueue:v13 launchHandler:v15];
  }

  return v2;
}

- (void)submitTask
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cancelTask
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (PPSTelemetryIdentifier)ppsIDForSubsystem:(id)a3 category:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v7];
  v9 = [(NSMutableDictionary *)self->_subsystemToPPSID objectForKeyedSubscript:v8];
  v15 = 0;
  if (v9)
  {
    v10 = v9;
    [v9 getValue:&v15 size:8];
LABEL_7:

    goto LABEL_8;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_INFO, "Creating PPS ID for %@", buf, 0xCu);
  }

  v15 = PPSCreateTelemetryIdentifier();
  if (v15)
  {
    v10 = [MEMORY[0x277CCAE60] value:&v15 withObjCType:"^{PPSTelemetryIdentifier=}"];
    [(NSMutableDictionary *)self->_subsystemToPPSID setObject:v10 forKeyedSubscript:v8];
    goto LABEL_7;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [_OSIBLMAnalyticsHandler ppsIDForSubsystem:category:];
  }

LABEL_8:
  v12 = v15;

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)sendDataToPPS:(id)a3 subsystem:(id)a4 category:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60___OSIBLMAnalyticsHandler_sendDataToPPS_subsystem_category___block_invoke;
  v15[3] = &unk_2799C1A08;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (id)historicalDrainDataForDate:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 100;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__3;
  v26[4] = __Block_byref_object_dispose__3;
  v27 = 0;
  v6 = [OSIUtilities midnightDateFrom:v4];
  v23 = v5;
  v7 = [v6 dateByAddingTimeInterval:86340.0];
  v8 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v6 endDate:v7 maxEvents:0 lastN:0 reversed:0];
  v9 = BiomeLibrary();
  v10 = [v9 Device];
  v11 = [v10 Power];
  v12 = [v11 BatteryLevel];
  v13 = [v12 publisherWithOptions:v8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54___OSIBLMAnalyticsHandler_historicalDrainDataForDate___block_invoke;
  v25[3] = &unk_2799C1A30;
  v25[4] = self;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54___OSIBLMAnalyticsHandler_historicalDrainDataForDate___block_invoke_107;
  v24[3] = &unk_2799C1A58;
  v24[4] = v26;
  v24[5] = &v36;
  v24[6] = &v32;
  v24[7] = &v28;
  v14 = [v13 sinkWithCompletion:v25 receiveInput:v24];

  v15 = v37[3];
  v16 = v33[3];
  v17 = objc_opt_new();
  v18 = [MEMORY[0x277CCABB0] numberWithLong:v37[3]];
  [v17 setObject:v18 forKeyedSubscript:@"dailyDrain"];

  v19 = [MEMORY[0x277CCABB0] numberWithLong:-v33[3]];
  [v17 setObject:v19 forKeyedSubscript:@"dailyChargeUp"];

  v20 = [MEMORY[0x277CCABB0] numberWithLong:v16 + v15];
  [v17 setObject:v20 forKeyedSubscript:@"dailyBatteryLevelConsumed"];

  v21 = [MEMORY[0x277CCABB0] numberWithLong:v29[3]];
  [v17 setObject:v21 forKeyedSubscript:@"dailyMinBatteryLevel"];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v17;
}

- (id)historicalPluggedInDataForDate:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__3;
  v39[4] = __Block_byref_object_dispose__3;
  v40 = 0;
  v6 = [OSIUtilities midnightDateFrom:v4];
  v26 = v5;
  v27 = [v6 dateByAddingTimeInterval:86340.0];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v7 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:v6 maxEvents:1 lastN:0 reversed:1];
  v8 = BiomeLibrary();
  v9 = [v8 Device];
  v10 = [v9 Power];
  v11 = [v10 PluggedIn];
  v12 = [v11 publisherWithOptions:v7];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __58___OSIBLMAnalyticsHandler_historicalPluggedInDataForDate___block_invoke;
  v36[3] = &unk_2799C1A30;
  v36[4] = self;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __58___OSIBLMAnalyticsHandler_historicalPluggedInDataForDate___block_invoke_111;
  v35[3] = &unk_2799C1A80;
  v35[4] = v37;
  v13 = [v12 sinkWithCompletion:v36 receiveInput:v35];

  v14 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v6 endDate:v27 maxEvents:0 lastN:0 reversed:0];
  v15 = BiomeLibrary();
  v16 = [v15 Device];
  v17 = [v16 Power];
  v18 = [v17 PluggedIn];
  v19 = [v18 publisherWithOptions:v14];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __58___OSIBLMAnalyticsHandler_historicalPluggedInDataForDate___block_invoke_2;
  v34[3] = &unk_2799C1A30;
  v34[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __58___OSIBLMAnalyticsHandler_historicalPluggedInDataForDate___block_invoke_112;
  v28[3] = &unk_2799C1AA8;
  v30 = v39;
  v31 = &v41;
  v32 = &v45;
  v33 = v37;
  v20 = v6;
  v29 = v20;
  v21 = [v19 sinkWithCompletion:v34 receiveInput:v28];

  v22 = objc_opt_new();
  v23 = [MEMORY[0x277CCABB0] numberWithLong:v46[3] / 60];
  [v22 setObject:v23 forKeyedSubscript:@"dailyPluggedInTime"];

  v24 = [MEMORY[0x277CCABB0] numberWithLong:v42[3]];
  [v22 setObject:v24 forKeyedSubscript:@"dailyPluggedInCount"];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v22;
}

- (id)historicalEngagementDataForDate:(id)a3
{
  v4 = a3;
  v5 = [OSIUtilities midnightDateFrom:v4];
  v6 = [(_OSIBLMAnalyticsHandler *)self dateFormatter];
  v7 = [v6 stringFromDate:v5];

  v8 = [(_OSIBLMAnalyticsHandler *)self defaults];
  v9 = [v8 objectForKey:@"historicalIBLMEngagement"];

  v10 = 0.0;
  if (v9 && ([v9 objectForKeyedSubscript:v7], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v9 objectForKeyedSubscript:v7];
    v13 = [v12 objectForKeyedSubscript:@"dailyEngagementDurationMins"];
    [v13 doubleValue];
    v10 = v14;

    v15 = [v12 objectForKeyedSubscript:@"dailyEngagementCount"];
    v16 = [v15 integerValue];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_opt_new();
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  [v17 setObject:v18 forKeyedSubscript:@"dailyEngagementDurationMins"];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
  [v17 setObject:v19 forKeyedSubscript:@"dailyEngagementCount"];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:v16 != 0];
  [v17 setObject:v20 forKeyedSubscript:@"didEngage"];

  v21 = [MEMORY[0x277CBEB38] dictionary];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59___OSIBLMAnalyticsHandler_historicalEngagementDataForDate___block_invoke;
  v25[3] = &unk_2799C1AD0;
  v25[4] = self;
  v26 = v4;
  v27 = v21;
  v22 = v21;
  v23 = v4;
  [v9 enumerateKeysAndObjectsUsingBlock:v25];
  [(NSUserDefaults *)self->_defaults setObject:v22 forKey:@"historicalIBLMEngagement"];

  return v17;
}

- (id)featureEngagementMetricsFromDrainData:(id)a3 engagementData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if ([v5 count] && objc_msgSend(v7, "count"))
    {
      v9 = [v5 objectForKeyedSubscript:@"dailyDrain"];
      [v9 doubleValue];
      v11 = v10;

      v12 = [v7 objectForKeyedSubscript:@"didEngage"];
      v13 = [v12 BOOLValue];

      v8 = objc_opt_new();
      [v8 setObject:&unk_286EB8BB8 forKeyedSubscript:@"engagementTruePositive"];
      [v8 setObject:&unk_286EB8BB8 forKeyedSubscript:@"engagementTrueNegative"];
      [v8 setObject:&unk_286EB8BB8 forKeyedSubscript:@"engagementFalsePositive"];
      [v8 setObject:&unk_286EB8BB8 forKeyedSubscript:@"engagementFalseNegative"];
      if (v11 > 90.0 && ((v13 ^ 1) & 1) == 0)
      {
        [v8 setObject:&unk_286EB8BD0 forKeyedSubscript:@"engagementTruePositive"];
      }

      if (!((v11 <= 90.0) | v13 & 1))
      {
        [v8 setObject:&unk_286EB8BD0 forKeyedSubscript:@"engagementFalseNegative"];
      }

      if (!((v11 > 90.0) | (v13 ^ 1) & 1))
      {
        [v8 setObject:&unk_286EB8BD0 forKeyedSubscript:@"engagementFalsePositive"];
      }

      if (!((v11 > 90.0) | v13 & 1))
      {
        [v8 setObject:&unk_286EB8BD0 forKeyedSubscript:@"engagementTrueNegative"];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)extractAndReportMetrics
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v4 = objc_opt_new();
  v5 = [(_OSIBLMAnalyticsHandler *)self historicalDrainDataForDate:v3];
  [v4 addEntriesFromDictionary:v5];
  v6 = [(_OSIBLMAnalyticsHandler *)self historicalEngagementDataForDate:v3];
  [v4 addEntriesFromDictionary:v6];
  v18 = [(_OSIBLMAnalyticsHandler *)self featureEngagementMetricsFromDrainData:v5 engagementData:v6];
  [v4 addEntriesFromDictionary:?];
  v7 = [(_OSIBLMAnalyticsHandler *)self historicalPluggedInDataForDate:v3];
  [v4 addEntriesFromDictionary:v7];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{+[_OSIBLMState isIBLMSupported](_OSIBLMState, "isIBLMSupported")}];
  [v4 setObject:v8 forKeyedSubscript:@"isFeatureSupported"];

  v9 = MEMORY[0x277CCABB0];
  v10 = +[_OSIBLMState sharedInstance];
  v11 = [v9 numberWithBool:{objc_msgSend(v10, "isIBLMCurrentlyEnabled")}];
  [v4 setObject:v11 forKeyedSubscript:@"isFeatureEnabled"];

  v12 = MEMORY[0x277CCABB0];
  v13 = +[_OSIBLMState sharedInstance];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "isIBLMNotificationsCurrentlyEnabled")}];
  [v4 setObject:v14 forKeyedSubscript:@"isFeatureNotificationEnabled"];

  v15 = v4;
  AnalyticsSendEventLazy();
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v15;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Sending IBLM CA event: %@", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)reportDailyFeatureState
{
  v3 = +[_OSIBLMState sharedInstance];
  v4 = [v3 isIBLMCurrentlyEnabled];

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [(_OSIBLMAnalyticsHandler *)self recordAnalyticsFeatureState:v5 forCategory:@"IBLMFeatureState"];
  v6 = +[_OSIBLMState sharedInstance];
  v7 = [v6 isIBLMNotificationsCurrentlyEnabled];

  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  [(_OSIBLMAnalyticsHandler *)self recordAnalyticsFeatureState:v8 forCategory:@"IBLMFeatureNotificationState"];
}

- (id)dateFormatter
{
  if (dateFormatter_onceToken_0 != -1)
  {
    [_OSIBLMAnalyticsHandler dateFormatter];
  }

  v3 = dateFormatter_formatter_0;

  return v3;
}

- (id)modelStringForModel:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"StatMedian";
  }

  if (a3 == 1)
  {
    return @"MLP12N12";
  }

  else
  {
    return v3;
  }
}

- (void)reportDrainResult:(id)a3 forModel:(int64_t)a4
{
  v14 = a3;
  v6 = objc_opt_new();
  v7 = [(_OSIBLMAnalyticsHandler *)self modelStringForModel:a4];
  [v6 setObject:v7 forKeyedSubscript:@"Model"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "isHighDrain")}];
  [v6 setObject:v8 forKeyedSubscript:@"Decision"];

  if (a4 == 2)
  {
    v12 = MEMORY[0x277CCABB0];
    [v14 batteryDifference];
    v11 = [v12 numberWithDouble:?];
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v9 = MEMORY[0x277CCABB0];
    [v14 confidence];
    v11 = [v9 numberWithInteger:(v10 * 100.0)];
  }

  v13 = v11;
  [v6 setObject:v11 forKeyedSubscript:@"Value"];

LABEL_6:
  [(_OSIBLMAnalyticsHandler *)self sendDataToPPS:v6 subsystem:@"OSIPrediction" category:@"IBLMPredictionAlgorithmOutput"];
}

- (void)reportNewMitigation:(id)a3
{
  v4 = a3;
  v9 = objc_opt_new();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "level")}];
  [v9 setObject:v5 forKeyedSubscript:@"FeatureEngagementState"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 decisionMaker];

  v8 = [v6 numberWithInteger:v7];
  [v9 setObject:v8 forKeyedSubscript:@"DecisionMaker"];

  [(_OSIBLMAnalyticsHandler *)self sendDataToPPS:v9 subsystem:@"OSIPrediction" category:@"IBLMFeatureEngagement"];
}

- (void)recordMitigationUpdateTo:(id)a3 fromPrevious:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___OSIBLMAnalyticsHandler_recordMitigationUpdateTo_fromPrevious___block_invoke;
  block[3] = &unk_2799C1B20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)recordFeatureState:(int64_t)a3
{
  if (a3 >= 2)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_OSIBLMAnalyticsHandler recordFeatureState:];
    }
  }

  else
  {

    [_OSIBLMAnalyticsHandler recordAnalyticsFeatureState:"recordAnalyticsFeatureState:forCategory:" forCategory:?];
  }
}

- (void)recordFeatureNotificationState:(int64_t)a3
{
  if (a3 >= 2)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_OSIBLMAnalyticsHandler recordFeatureState:];
    }
  }

  else
  {

    [_OSIBLMAnalyticsHandler recordAnalyticsFeatureState:"recordAnalyticsFeatureState:forCategory:" forCategory:?];
  }
}

- (void)recordAnalyticsFeatureState:(int64_t)a3 forCategory:(id)a4
{
  v6 = a4;
  v8 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v8 setObject:v7 forKeyedSubscript:@"FeatureState"];

  [(_OSIBLMAnalyticsHandler *)self sendDataToPPS:v8 subsystem:@"OSIPrediction" category:v6];
}

+ (int64_t)currentBatteryLevel
{
  v2 = [MEMORY[0x277CFE318] userContext];
  v3 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [MEMORY[0x277CFE338] batteryPercentageKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  return v7;
}

- (void)recordIBLMFirstUserNotificationResponse:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{+[_OSIBLMAnalyticsHandler currentBatteryLevel](_OSIBLMAnalyticsHandler, "currentBatteryLevel")}];
  [v5 setObject:v6 forKeyedSubscript:@"batteryLevel"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v7 forKeyedSubscript:@"notificationResponse"];

  v8 = v5;
  AnalyticsSendEventLazy();
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Sending IBLM User Notification CA event: %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)recordIBLMFirstUserNotificationTrigger:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{+[_OSIBLMAnalyticsHandler currentBatteryLevel](_OSIBLMAnalyticsHandler, "currentBatteryLevel")}];
  [v5 setObject:v6 forKeyedSubscript:@"batteryLevel"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v7 forKeyedSubscript:@"notificationTrigger"];

  v8 = v5;
  AnalyticsSendEventLazy();
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Sending IBLM User Notification CA event: %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)recordFeatureState:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end