@interface _CDSleepForAutoSu
+ (id)defaultTuningConfiguration;
+ (id)readConfigurationFromDefaults;
+ (id)sanitizeTuningConfiguration:(id)configuration;
+ (id)tuningDictionary;
- (_CDSleepForAutoSu)init;
- (_CDSleepForAutoSu)initWithKnowledgeStore:(id)store;
- (id)defaultTimesWhenPredictionUnavailable:(id)unavailable;
- (id)defaultTimesWhenPredictionUnavailable:(id)unavailable withConfig:(id)config;
- (id)getUnlockAndSoftwareUpdateTimes;
- (id)getUnlockAndSoftwareUpdateTimesWithConfig:(id)config referenceDate:(id)date;
- (id)makeDictionaryForEventStreamWhenPredictionTemporarilyUnavailable:(id)unavailable;
- (id)predicitLastUnlockForDay:(id)day;
- (id)predictForDate:(id)date fromState:(id)state;
- (id)predictForDate:(id)date fromState:(id)state withConfig:(id)config;
- (id)predictNextDateForLastUnlockAttemptOfTheDay;
- (id)predictedSleepDictionaryForDate:(id)date;
- (id)predictedSleepDictionaryForDate:(id)date usingKnowledge:(id)knowledge;
- (id)proposeTimesFromRelativeOffsetsForDate:(id)date lastUnlock:(int)unlock suStart:(int)start suEnd:(int)end unrestrictedSleepEnd:(int)sleepEnd config:(id)config;
- (id)retrieveSleepProbabilities:(id)probabilities;
@end

@implementation _CDSleepForAutoSu

- (_CDSleepForAutoSu)init
{
  v3.receiver = self;
  v3.super_class = _CDSleepForAutoSu;
  result = [(_CDSleepForAutoSu *)&v3 init];
  if (result)
  {
    result->_enableCaching = 1;
  }

  return result;
}

- (_CDSleepForAutoSu)initWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v6 = [(_CDSleepForAutoSu *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knowledgeStore, store);
  }

  return v7;
}

- (id)proposeTimesFromRelativeOffsetsForDate:(id)date lastUnlock:(int)unlock suStart:(int)start suEnd:(int)end unrestrictedSleepEnd:(int)sleepEnd config:(id)config
{
  v43[6] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v14 = MEMORY[0x1E695DFE8];
  configCopy = config;
  localTimeZone = [v14 localTimeZone];
  LODWORD(v14) = [localTimeZone secondsFromGMT];

  [dateCopy timeIntervalSinceReferenceDate];
  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:((v17 + 300) + 3600.0 + (((900 * end + 57600) % 86400 + 86400 + 86400 * ((v14 + v17 + 3900) / 86400) - (v14 + v17 + 3900)) % 86400))];
  v19 = 900 * (start - end);
  v20 = 900 * (sleepEnd - end);
  v21 = [v18 dateByAddingTimeInterval:v19];
  v22 = [v18 dateByAddingTimeInterval:(900 * (unlock - end))];
  v23 = [v18 dateByAddingTimeInterval:v20];
  LOBYTE(unlock) = [configCopy allowUnlockBeforeNow];

  if ((unlock & 1) == 0 && [v22 compare:dateCopy] == -1)
  {
    v24 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v41 = 0;
      _os_log_impl(&dword_191750000, v24, OS_LOG_TYPE_INFO, "unlock_start overriden", v41, 2u);
    }

    v25 = dateCopy;
    v22 = v25;
  }

  v26 = [dateCopy dateByAddingTimeInterval:300.0];
  v27 = [v21 compare:v26];

  if (v27 == -1)
  {
    v28 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *v41 = 0;
      _os_log_impl(&dword_191750000, v28, OS_LOG_TYPE_INFO, "su_start overriden", v41, 2u);
    }

    v29 = [dateCopy dateByAddingTimeInterval:300.0];

    v21 = v29;
  }

  v30 = v18;
  v42[0] = @"sleep_query_status";
  v42[1] = @"unlock_start";
  v43[0] = @"ok";
  v43[1] = v22;
  v42[2] = @"su_start";
  v42[3] = @"su_end";
  v43[2] = v21;
  v43[3] = v30;
  v42[4] = @"expiration_time";
  v42[5] = @"unrestricted_sleep_end";
  v43[4] = v30;
  v43[5] = v23;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:6];
  v32 = +[_CDLogging autoSUChannel];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [(_CDSleepForAutoSu *)v31 proposeTimesFromRelativeOffsetsForDate:v32 lastUnlock:v33 suStart:v34 suEnd:v35 unrestrictedSleepEnd:v36 config:v37, v38];
  }

  v39 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)defaultTimesWhenPredictionUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  autoSuConfig = [(_CDSleepForAutoSu *)self autoSuConfig];
  v6 = [(_CDSleepForAutoSu *)self defaultTimesWhenPredictionUnavailable:unavailableCopy withConfig:autoSuConfig];

  return v6;
}

- (id)defaultTimesWhenPredictionUnavailable:(id)unavailable withConfig:(id)config
{
  v28[5] = *MEMORY[0x1E69E9840];
  unavailableCopy = unavailable;
  v6 = MEMORY[0x1E695DFE8];
  configCopy = config;
  localTimeZone = [v6 localTimeZone];
  secondsFromGMT = [localTimeZone secondsFromGMT];

  [unavailableCopy timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = secondsFromGMT + v10;
  suStartDefaultTime = [configCopy suStartDefaultTime];
  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:(v11 + 86400 + suStartDefaultTime - v12 + 86400 * ((v12 - suStartDefaultTime) / 86400))];
  v15 = unavailableCopy;
  LODWORD(v12) = [configCopy suEndDefaultTimeOffsetFromSuStart];

  v16 = [v14 dateByAddingTimeInterval:v12];
  v27[0] = @"sleep_query_status";
  v27[1] = @"unlock_start";
  v28[0] = @"next_day_prediction_not_available";
  v28[1] = v15;
  v27[2] = @"su_start";
  v27[3] = @"su_end";
  v28[2] = v14;
  v28[3] = v16;
  v27[4] = @"expiration_time";
  v28[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];
  v18 = +[_CDLogging autoSUChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(_CDSleepForAutoSu *)v17 defaultTimesWhenPredictionUnavailable:v18 withConfig:v19, v20, v21, v22, v23, v24];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)makeDictionaryForEventStreamWhenPredictionTemporarilyUnavailable:(id)unavailable
{
  v4 = MEMORY[0x1E695DF90];
  unavailableCopy = unavailable;
  dictionary = [v4 dictionary];
  v7 = [(_CDSleepForAutoSu *)self defaultTimesWhenPredictionUnavailable:unavailableCopy];

  [dictionary setDictionary:v7];
  [dictionary setValue:@"temporarily_not_available" forKey:@"sleep_query_status"];

  return dictionary;
}

- (id)getUnlockAndSoftwareUpdateTimes
{
  v3 = objc_alloc_init(_CDAutoSuConfig);
  autoSuConfig = self->_autoSuConfig;
  self->_autoSuConfig = v3;

  [(_CDAutoSuConfig *)self->_autoSuConfig setParam];
  v5 = objc_autoreleasePoolPush();
  autoSuConfig = [(_CDSleepForAutoSu *)self autoSuConfig];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [(_CDSleepForAutoSu *)self getUnlockAndSoftwareUpdateTimesWithConfig:autoSuConfig referenceDate:date];

  objc_autoreleasePoolPop(v5);

  return v8;
}

+ (id)defaultTuningConfiguration
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"kSleepTuningLong";
  v5[1] = @"kSleepTuningShort";
  v6[0] = &unk_1F05EF150;
  v6[1] = &unk_1F05EF160;
  v5[2] = @"kSleepTuningRatio";
  v6[2] = &unk_1F05EF170;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)sanitizeTuningConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy)
  {
    defaultTuningConfiguration = configurationCopy;
  }

  else
  {
    defaultTuningConfiguration = [self defaultTuningConfiguration];
  }

  v7 = defaultTuningConfiguration;

  return v7;
}

+ (id)readConfigurationFromDefaults
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreDuet"];
  v3 = [v2 valueForKey:@"kSleepTuningParameters"];

  return v3;
}

+ (id)tuningDictionary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37___CDSleepForAutoSu_tuningDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (tuningDictionary_onceToken != -1)
  {
    dispatch_once(&tuningDictionary_onceToken, block);
  }

  v2 = tuningDictionary_tuningDict;

  return v2;
}

- (id)predictedSleepDictionaryForDate:(id)date
{
  dateCopy = date;
  v5 = objc_autoreleasePoolPush();
  if (self->_knowledgeStore)
  {
    v6 = [(_CDSleepForAutoSu *)self predictedSleepDictionaryForDate:dateCopy usingKnowledge:?];
  }

  else
  {
    v7 = +[_DKKnowledgeStore knowledgeStore];
    v6 = [(_CDSleepForAutoSu *)self predictedSleepDictionaryForDate:dateCopy usingKnowledge:v7];
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)predictedSleepDictionaryForDate:(id)date usingKnowledge:(id)knowledge
{
  v54[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  knowledgeCopy = knowledge;
  if ([(_CDSleepForAutoSu *)self enableCaching])
  {
    localTimeZone = +[_CDAutoSuCache sharedCache];
    v9 = [localTimeZone cachedPredictedSleepDictionaryForDate:dateCopy];
    if (v9)
    {
      v10 = v9;
      v11 = +[_CDLogging autoSUChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(_CDSleepForAutoSu *)v10 predictedSleepDictionaryForDate:v11 usingKnowledge:v12, v13, v14, v15, v16, v17];
      }

      goto LABEL_19;
    }
  }

  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v11 = [dateCopy cd_dateWithCeilingForAlignment:localTimeZone withOffset:86400.0 inTimeZone:16.0 * 3600.0];
  v39 = [v11 dateByAddingTimeInterval:-(21.0 * 86400.0)];
  v38 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v39 duration:21.0 * 86400.0];
  v18 = [_CDSleepPredictor gatherBitmapHistoryFromStore:knowledgeCopy forPeriod:?];
  v19 = v18;
  if (!v18 || ![v18 count])
  {
    v40 = 0;
    v22 = 0;
    v24 = 0;
LABEL_11:
    v53 = @"_DKDebugMetadataKey-debug";
    v28 = MEMORY[0x1E695E0F0];
    if (v22)
    {
      v28 = v22;
    }

    v51[0] = @"probabilityVector";
    v51[1] = @"predictionPeriodStart";
    v52[0] = v28;
    v52[1] = v11;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v54[0] = v23;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    goto LABEL_14;
  }

  v20 = objc_opt_new();
  tuningDictionary = [objc_opt_class() tuningDictionary];
  v22 = [v20 predictFrom:v19 withTuning:tuningDictionary usingVersion:2];

  v23 = [_CDSleepPredictor findSleepPeriodInDayStarting:v11 FromActivityProbabilities:v22];
  v40 = dateCopy;
  v24 = [v40 dateByAddingTimeInterval:86400.0];
  if (!v23)
  {

    goto LABEL_11;
  }

  endDate = [v23 endDate];

  v36 = +[_DKPeriodMetadataKey periodStart];
  v49[0] = v36;
  startDate = [v23 startDate];
  v50[0] = startDate;
  v34 = +[_DKPeriodMetadataKey periodEnd];
  v49[1] = v34;
  endDate2 = [v23 endDate];
  v50[1] = endDate2;
  v49[2] = @"_DKDebugMetadataKey-debug";
  v47[0] = @"probabilityVector";
  v47[1] = @"predictionPeriodStart";
  v48[0] = v22;
  v48[1] = v11;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v25 = dateCopy;
  v27 = v26 = knowledgeCopy;
  v50[2] = v27;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];

  knowledgeCopy = v26;
  dateCopy = v25;

  v24 = endDate;
LABEL_14:

  if ([(_CDSleepForAutoSu *)self enableCaching])
  {
    v29 = +[_CDAutoSuCache sharedCache];
    v30 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v42 = v10;
      v43 = 2112;
      v44 = v40;
      v45 = 2112;
      v46 = v24;
      _os_log_debug_impl(&dword_191750000, v30, OS_LOG_TYPE_DEBUG, "Caching prediction %@ valid between [%@, %@]", buf, 0x20u);
    }

    [v29 setCachedPredictedSleepDictionary:v10 validityStartDate:v40 validityEndDate:v24];
  }

LABEL_19:
  v31 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)getUnlockAndSoftwareUpdateTimesWithConfig:(id)config referenceDate:(id)date
{
  configCopy = config;
  dateCopy = date;
  v8 = [(_CDSleepForAutoSu *)self predictedSleepDictionaryForDate:dateCopy];
  if (v8)
  {
    v9 = [(_CDSleepForAutoSu *)self predictForDate:dateCopy fromState:v8 withConfig:configCopy];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v9 = [(_CDSleepForAutoSu *)self makeDictionaryForEventStreamWhenPredictionTemporarilyUnavailable:date];
  }

  return v9;
}

- (id)retrieveSleepProbabilities:(id)probabilities
{
  if (probabilities)
  {
    v3 = [probabilities objectForKeyedSubscript:@"_DKDebugMetadataKey-debug"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"probabilityVector"];
      v6 = v5;
      if (v5)
      {
        if ([v5 count])
        {
          if ([v6 count]== 96)
          {
            v6 = v6;
            v7 = v6;
LABEL_20:

            goto LABEL_21;
          }

          v8 = +[_CDLogging autoSUChannel];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [_CDSleepForAutoSu retrieveSleepProbabilities:];
          }
        }

        else
        {
          v8 = +[_CDLogging autoSUChannel];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [_CDSleepForAutoSu retrieveSleepProbabilities:];
          }
        }
      }

      else
      {
        v8 = +[_CDLogging autoSUChannel];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [_CDSleepForAutoSu retrieveSleepProbabilities:];
        }
      }
    }

    else
    {
      v6 = +[_CDLogging autoSUChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [_CDSleepForAutoSu retrieveSleepProbabilities:];
      }
    }

    v7 = 0;
    goto LABEL_20;
  }

  v4 = +[_CDLogging autoSUChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [_CDSleepForAutoSu retrieveSleepProbabilities:];
  }

  v7 = 0;
LABEL_21:

  return v7;
}

- (id)predictForDate:(id)date fromState:(id)state
{
  stateCopy = state;
  dateCopy = date;
  autoSuConfig = [(_CDSleepForAutoSu *)self autoSuConfig];
  v9 = [(_CDSleepForAutoSu *)self predictForDate:dateCopy fromState:stateCopy withConfig:autoSuConfig];

  return v9;
}

- (id)predictForDate:(id)date fromState:(id)state withConfig:(id)config
{
  v35[96] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  configCopy = config;
  v10 = [(_CDSleepForAutoSu *)self retrieveSleepProbabilities:state];
  if (v10)
  {
    v11 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_CDSleepForAutoSu predictForDate:v11 fromState:? withConfig:?];
    }

    for (i = 0; i != 96; ++i)
    {
      v13 = [v10 objectAtIndex:i];
      [v13 doubleValue];
      v15 = 1.0 - v14;
      *&v35[i] = 1.0 - v14;

      v16 = +[_CDLogging autoSUChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v32 = i;
        v33 = 2048;
        v34 = v15;
        _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "Prob[%d] = %f", buf, 0x12u);
      }
    }

    *buf = 0;
    v27 = 0;
    v28 = 0;
    if (findAutoSuPlanByProbability(v35, buf, &v28 + 1, &v28, &v27 + 1, &v27, configCopy) != -1 && ![configCopy alwaysFallBackToDefault])
    {
      v21 = [(_CDSleepForAutoSu *)self proposeTimesFromRelativeOffsetsForDate:dateCopy lastUnlock:*buf suStart:HIDWORD(v28) suEnd:v28 unrestrictedSleepEnd:v27 config:configCopy];
      if ([configCopy alwaysReturnUnlockNow])
      {
        v29[0] = @"sleep_query_status";
        v22 = [v21 objectForKeyedSubscript:?];
        v30[0] = v22;
        v30[1] = dateCopy;
        v29[1] = @"unlock_start";
        v29[2] = @"su_start";
        v23 = [v21 objectForKeyedSubscript:?];
        v30[2] = v23;
        v29[3] = @"su_end";
        v24 = [v21 objectForKeyedSubscript:?];
        v30[3] = v24;
        v29[4] = @"expiration_time";
        v25 = [v21 objectForKeyedSubscript:?];
        v30[4] = v25;
        v29[5] = @"unrestricted_sleep_end";
        v26 = [v21 objectForKeyedSubscript:?];
        v30[5] = v26;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:6];
      }

      else
      {
        v18 = v21;
      }

      goto LABEL_14;
    }

    v17 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_CDSleepForAutoSu predictForDate:fromState:withConfig:];
    }
  }

  v18 = [(_CDSleepForAutoSu *)self defaultTimesWhenPredictionUnavailable:dateCopy];
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)predicitLastUnlockForDay:(id)day
{
  dayCopy = day;
  v5 = objc_alloc_init(_CDAutoSuConfig);
  [(_CDAutoSuConfig *)v5 setParam];
  [(_CDAutoSuConfig *)v5 setAlwaysReturnUnlockNow:0];
  [(_CDAutoSuConfig *)v5 setAllowUnlockBeforeNow:1];
  v6 = [(_CDSleepForAutoSu *)self getUnlockAndSoftwareUpdateTimesWithConfig:v5 referenceDate:dayCopy];
  v7 = [v6 objectForKeyedSubscript:@"sleep_query_status"];
  v8 = [v7 isEqualToString:@"ok"];

  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"unlock_start"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)predictNextDateForLastUnlockAttemptOfTheDay
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [(_CDSleepForAutoSu *)self predicitLastUnlockForDay:date];
  v5 = v4;
  if (v4 && ([v4 earlierDate:date], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToDate:", v5), v6, !v7))
  {
    v10 = v5;
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v9 = [currentCalendar dateByAddingUnit:16 value:1 toDate:date options:0];

    v10 = [(_CDSleepForAutoSu *)self predicitLastUnlockForDay:v9];
  }

  return v10;
}

- (void)proposeTimesFromRelativeOffsetsForDate:(uint64_t)a3 lastUnlock:(uint64_t)a4 suStart:(uint64_t)a5 suEnd:(uint64_t)a6 unrestrictedSleepEnd:(uint64_t)a7 config:(uint64_t)a8 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_191750000, a2, a3, "(non-default) proposed_times = %@\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)defaultTimesWhenPredictionUnavailable:(uint64_t)a3 withConfig:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_191750000, a2, a3, "(default) proposed_times = %@\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)predictedSleepDictionaryForDate:(uint64_t)a3 usingKnowledge:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_191750000, a2, a3, "Returning cached prediction %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)retrieveSleepProbabilities:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveSleepProbabilities:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveSleepProbabilities:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveSleepProbabilities:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveSleepProbabilities:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)predictForDate:(os_log_t)log fromState:withConfig:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = 96;
  _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "Listing %d probabilities (0: wake; 1: sleep)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)predictForDate:fromState:withConfig:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end