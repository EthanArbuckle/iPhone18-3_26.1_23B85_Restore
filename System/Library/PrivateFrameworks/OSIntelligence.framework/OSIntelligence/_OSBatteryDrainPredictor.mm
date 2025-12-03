@interface _OSBatteryDrainPredictor
+ (id)behaviorDescription:(int64_t)description;
+ (id)predictor;
- (BOOL)highBatteryDrainComparedtoHourlyAggregate;
- (_OSBatteryDrainPredictor)init;
- (id)drainPerDayFromDate:(id)date forNumberOfDays:(int)days;
- (id)firstBatteryLevelDate;
- (id)lastBatteryLevelDate;
- (int64_t)historicalClassification;
- (int64_t)lastBatteryLevelValue;
- (void)logCompletion:(id)completion;
- (void)recordIntelligentLPMThreshold:(int64_t)threshold threshold:(int64_t)a4;
@end

@implementation _OSBatteryDrainPredictor

- (_OSBatteryDrainPredictor)init
{
  v6.receiver = self;
  v6.super_class = _OSBatteryDrainPredictor;
  v2 = [(_OSBatteryDrainPredictor *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "batteryDrainPrediction");
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

+ (id)predictor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)behaviorDescription:(int64_t)description
{
  if ((description - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2799C1CE8[description - 1];
  }
}

- (int64_t)historicalClassification
{
  v29 = *MEMORY[0x277D85DE8];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [currentCalendar components:28 fromDate:v4];
  v6 = [currentCalendar dateFromComponents:v5];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v6 sinceDate:-604800.0];
  v8 = [(_OSBatteryDrainPredictor *)self drainPerDayFromDate:v7 forNumberOfDays:7];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Drain per day: %@", buf, 0xCu);
  }

  allValues = [v8 allValues];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v22 + 1) + 8 * i) intValue] > 90)
        {
          ++v13;
        }
      }

      v12 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v16 = self->_log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v28) = v13;
    _os_log_impl(&dword_25D171000, v16, OS_LOG_TYPE_DEFAULT, "Number of days that cross the threshold %d", buf, 8u);
  }

  v17 = 2;
  v18 = 3;
  if (v13 >= 8)
  {
    v18 = 0;
  }

  if (v13 >= 5)
  {
    v17 = v18;
  }

  if (v13 >= 2)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)logCompletion:(id)completion
{
  completionCopy = completion;
  state = [completionCopy state];
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (state)
  {
    if (v7)
    {
      [(_OSBatteryDrainPredictor *)log logCompletion:completionCopy];
    }
  }

  else if (v7)
  {
    [(_OSBatteryDrainPredictor *)log logCompletion:v8, v9, v10, v11, v12, v13, v14];
  }
}

- (id)drainPerDayFromDate:(id)date forNumberOfDays:(int)days
{
  v43 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  selfCopy = self;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(_OSBatteryDrainPredictor *)log drainPerDayFromDate:v6 forNumberOfDays:v7, v8, v9, v10, v11, v12];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [currentCalendar components:28 fromDate:dateCopy];
  v34 = [currentCalendar dateFromComponents:v13];

  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (days >= 1)
  {
    v15 = 0;
    *&v14 = 138412546;
    v30 = v14;
    do
    {
      v16 = [v34 dateByAddingTimeInterval:{v15 * 86400.0, v30}];
      v17 = [v16 dateByAddingTimeInterval:86399.0];
      v18 = selfCopy->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = v30;
        *&buf[4] = v16;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        _os_log_debug_impl(&dword_25D171000, v18, OS_LOG_TYPE_DEBUG, "Processing events from %@ to %@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v40 = __Block_byref_object_copy__5;
      v41 = __Block_byref_object_dispose__5;
      v42 = objc_alloc_init(_dayDrainInfo);
      v19 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v16 endDate:v17 maxEvents:0 lastN:0 reversed:0];
      v20 = BiomeLibrary();
      device = [v20 Device];
      power = [device Power];
      batteryLevel = [power BatteryLevel];
      v24 = [batteryLevel publisherWithOptions:v19];
      v25 = [v24 filterWithIsIncluded:&__block_literal_global_8];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __64___OSBatteryDrainPredictor_drainPerDayFromDate_forNumberOfDays___block_invoke_2;
      v38[3] = &unk_2799C1A30;
      v38[4] = selfCopy;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __64___OSBatteryDrainPredictor_drainPerDayFromDate_forNumberOfDays___block_invoke_3;
      v37[3] = &unk_2799C1A80;
      v37[4] = buf;
      v26 = [v25 sinkWithCompletion:v38 receiveInput:v37];

      v27 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(*(*&buf[8] + 40), "drainSoFar")}];
      [v33 setObject:v27 forKeyedSubscript:v16];

      _Block_object_dispose(buf, 8);
      ++v15;
    }

    while (days != v15);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)lastBatteryLevelDate
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v3 = BiomeLibrary();
  device = [v3 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  publisher = [batteryLevel publisher];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48___OSBatteryDrainPredictor_lastBatteryLevelDate__block_invoke;
  v12[3] = &unk_2799C1A30;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48___OSBatteryDrainPredictor_lastBatteryLevelDate__block_invoke_58;
  v11[3] = &unk_2799C1A80;
  v11[4] = &v13;
  v8 = [publisher sinkWithCompletion:v12 receiveInput:v11];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)firstBatteryLevelDate
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v3 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:5 lastN:0 reversed:0];
  v4 = BiomeLibrary();
  device = [v4 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  v8 = [batteryLevel publisherWithOptions:v3];
  v9 = [v8 filterWithIsIncluded:&__block_literal_global_60];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49___OSBatteryDrainPredictor_firstBatteryLevelDate__block_invoke_2;
  v14[3] = &unk_2799C1A30;
  v14[4] = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49___OSBatteryDrainPredictor_firstBatteryLevelDate__block_invoke_61;
  v13[3] = &unk_2799C1CA8;
  v13[4] = &v15;
  v10 = [v9 sinkWithCompletion:v14 shouldContinue:v13];

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (int64_t)lastBatteryLevelValue
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v3 = BiomeLibrary();
  device = [v3 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  publisher = [batteryLevel publisher];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49___OSBatteryDrainPredictor_lastBatteryLevelValue__block_invoke;
  v12[3] = &unk_2799C1A30;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49___OSBatteryDrainPredictor_lastBatteryLevelValue__block_invoke_62;
  v11[3] = &unk_2799C1A80;
  v11[4] = &v13;
  v8 = [publisher sinkWithCompletion:v12 receiveInput:v11];

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v9;
}

- (BOOL)highBatteryDrainComparedtoHourlyAggregate
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(_OSBatteryDrainPredictor *)self historicalClassification]!= 3)
  {
    goto LABEL_4;
  }

  if (![(_OSBatteryDrainPredictor *)self didReachEngagementThresholds])
  {
    goto LABEL_4;
  }

  v3 = [MEMORY[0x277CBEAA8] now];
  firstBatteryLevelDate = [(_OSBatteryDrainPredictor *)self firstBatteryLevelDate];
  [v3 timeIntervalSinceDate:firstBatteryLevelDate];
  v6 = v5 / 86400.0;

  if (v6 >= 28.0)
  {
    v7 = +[_OSBatteryPredictor predictor];
    v28 = 0;
    v18 = [v7 typicalBatteryLevelWithReferenceDays:0 aggregatedOverTimeWidth:60 withError:&v28];
    v19 = v28;
    lastBatteryLevelValue = [(_OSBatteryDrainPredictor *)self lastBatteryLevelValue];
    lastBatteryLevelDate = [(_OSBatteryDrainPredictor *)self lastBatteryLevelDate];
    v22 = lastBatteryLevelDate;
    if (lastBatteryLevelValue == -1 || !lastBatteryLevelDate || v19)
    {
      currentCalendar = [(_OSBatteryDrainPredictor *)self log];
      if (os_log_type_enabled(currentCalendar, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v30 = v19;
        v31 = 2048;
        v32 = lastBatteryLevelValue;
        v33 = 2112;
        v34 = v22;
        _os_log_error_impl(&dword_25D171000, currentCalendar, OS_LOG_TYPE_ERROR, "highBatteryDrainComparedtoHourlyAggregate failed error: %@ lastValue: %ld lastDate: %@", buf, 0x20u);
      }

      v15 = 0;
    }

    else
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v24 = [currentCalendar components:96 fromDate:v22];
      v25 = [v18 objectAtIndexedSubscript:{objc_msgSend(v24, "hour")}];
      v26 = [v25 intValue] - lastBatteryLevelValue;

      [(_OSBatteryDrainPredictor *)self recordIntelligentLPMThreshold:lastBatteryLevelValue threshold:v26];
      v27 = [(_OSBatteryDrainPredictor *)self log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v30 = lastBatteryLevelValue;
        v31 = 2048;
        v32 = v26;
        v33 = 2112;
        v34 = v18;
        _os_log_impl(&dword_25D171000, v27, OS_LOG_TYPE_DEFAULT, "highBatteryDrainComparedtoHourlyAggregate lastBatteryLevelValue: %ld currentDelta: %ld resultArray: %@", buf, 0x20u);
      }

      v15 = v26 > 12;
    }
  }

  else
  {
LABEL_4:
    v7 = [(_OSBatteryDrainPredictor *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(_OSBatteryDrainPredictor *)v7 highBatteryDrainComparedtoHourlyAggregate:v8];
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)recordIntelligentLPMThreshold:(int64_t)threshold threshold:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D85DD0];
  AnalyticsSendEventLazy();
  v6 = [(_OSBatteryDrainPredictor *)self log:v8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = a4;
    _os_log_impl(&dword_25D171000, v6, OS_LOG_TYPE_DEFAULT, "Sending Intelligent LPM CA event: %ld", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logCompletion:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v5 = [v4 description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25D171000, v3, OS_LOG_TYPE_DEBUG, "Error: %s\n", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end