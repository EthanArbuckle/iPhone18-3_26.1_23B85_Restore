@interface _CDSleepForAutoSu
+ (id)defaultTuningConfiguration;
+ (id)readConfigurationFromDefaults;
+ (id)sanitizeTuningConfiguration:(id)a3;
+ (id)tuningDictionary;
- (_CDSleepForAutoSu)init;
- (_CDSleepForAutoSu)initWithKnowledgeStore:(id)a3;
- (id)defaultTimesWhenPredictionUnavailable:(id)a3;
- (id)defaultTimesWhenPredictionUnavailable:(id)a3 withConfig:(id)a4;
- (id)getUnlockAndSoftwareUpdateTimes;
- (id)getUnlockAndSoftwareUpdateTimesWithConfig:(id)a3 referenceDate:(id)a4;
- (id)makeDictionaryForEventStreamWhenPredictionTemporarilyUnavailable:(id)a3;
- (id)predicitLastUnlockForDay:(id)a3;
- (id)predictForDate:(id)a3 fromState:(id)a4;
- (id)predictForDate:(id)a3 fromState:(id)a4 withConfig:(id)a5;
- (id)predictNextDateForLastUnlockAttemptOfTheDay;
- (id)predictedSleepDictionaryForDate:(id)a3;
- (id)predictedSleepDictionaryForDate:(id)a3 usingKnowledge:(id)a4;
- (id)proposeTimesFromRelativeOffsetsForDate:(id)a3 lastUnlock:(int)a4 suStart:(int)a5 suEnd:(int)a6 unrestrictedSleepEnd:(int)a7 config:(id)a8;
- (id)retrieveSleepProbabilities:(id)a3;
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

- (_CDSleepForAutoSu)initWithKnowledgeStore:(id)a3
{
  v5 = a3;
  v6 = [(_CDSleepForAutoSu *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knowledgeStore, a3);
  }

  return v7;
}

- (id)proposeTimesFromRelativeOffsetsForDate:(id)a3 lastUnlock:(int)a4 suStart:(int)a5 suEnd:(int)a6 unrestrictedSleepEnd:(int)a7 config:(id)a8
{
  v43[6] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = MEMORY[0x1E695DFE8];
  v15 = a8;
  v16 = [v14 localTimeZone];
  LODWORD(v14) = [v16 secondsFromGMT];

  [v13 timeIntervalSinceReferenceDate];
  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:((v17 + 300) + 3600.0 + (((900 * a6 + 57600) % 86400 + 86400 + 86400 * ((v14 + v17 + 3900) / 86400) - (v14 + v17 + 3900)) % 86400))];
  v19 = 900 * (a5 - a6);
  v20 = 900 * (a7 - a6);
  v21 = [v18 dateByAddingTimeInterval:v19];
  v22 = [v18 dateByAddingTimeInterval:(900 * (a4 - a6))];
  v23 = [v18 dateByAddingTimeInterval:v20];
  LOBYTE(a4) = [v15 allowUnlockBeforeNow];

  if ((a4 & 1) == 0 && [v22 compare:v13] == -1)
  {
    v24 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v41 = 0;
      _os_log_impl(&dword_191750000, v24, OS_LOG_TYPE_INFO, "unlock_start overriden", v41, 2u);
    }

    v25 = v13;
    v22 = v25;
  }

  v26 = [v13 dateByAddingTimeInterval:300.0];
  v27 = [v21 compare:v26];

  if (v27 == -1)
  {
    v28 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *v41 = 0;
      _os_log_impl(&dword_191750000, v28, OS_LOG_TYPE_INFO, "su_start overriden", v41, 2u);
    }

    v29 = [v13 dateByAddingTimeInterval:300.0];

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

- (id)defaultTimesWhenPredictionUnavailable:(id)a3
{
  v4 = a3;
  v5 = [(_CDSleepForAutoSu *)self autoSuConfig];
  v6 = [(_CDSleepForAutoSu *)self defaultTimesWhenPredictionUnavailable:v4 withConfig:v5];

  return v6;
}

- (id)defaultTimesWhenPredictionUnavailable:(id)a3 withConfig:(id)a4
{
  v28[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DFE8];
  v7 = a4;
  v8 = [v6 localTimeZone];
  v9 = [v8 secondsFromGMT];

  [v5 timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = v9 + v10;
  v13 = [v7 suStartDefaultTime];
  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:(v11 + 86400 + v13 - v12 + 86400 * ((v12 - v13) / 86400))];
  v15 = v5;
  LODWORD(v12) = [v7 suEndDefaultTimeOffsetFromSuStart];

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

- (id)makeDictionaryForEventStreamWhenPredictionTemporarilyUnavailable:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = [(_CDSleepForAutoSu *)self defaultTimesWhenPredictionUnavailable:v5];

  [v6 setDictionary:v7];
  [v6 setValue:@"temporarily_not_available" forKey:@"sleep_query_status"];

  return v6;
}

- (id)getUnlockAndSoftwareUpdateTimes
{
  v3 = objc_alloc_init(_CDAutoSuConfig);
  autoSuConfig = self->_autoSuConfig;
  self->_autoSuConfig = v3;

  [(_CDAutoSuConfig *)self->_autoSuConfig setParam];
  v5 = objc_autoreleasePoolPush();
  v6 = [(_CDSleepForAutoSu *)self autoSuConfig];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(_CDSleepForAutoSu *)self getUnlockAndSoftwareUpdateTimesWithConfig:v6 referenceDate:v7];

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

+ (id)sanitizeTuningConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [a1 defaultTuningConfiguration];
  }

  v7 = v6;

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
  block[4] = a1;
  if (tuningDictionary_onceToken != -1)
  {
    dispatch_once(&tuningDictionary_onceToken, block);
  }

  v2 = tuningDictionary_tuningDict;

  return v2;
}

- (id)predictedSleepDictionaryForDate:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (self->_knowledgeStore)
  {
    v6 = [(_CDSleepForAutoSu *)self predictedSleepDictionaryForDate:v4 usingKnowledge:?];
  }

  else
  {
    v7 = +[_DKKnowledgeStore knowledgeStore];
    v6 = [(_CDSleepForAutoSu *)self predictedSleepDictionaryForDate:v4 usingKnowledge:v7];
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)predictedSleepDictionaryForDate:(id)a3 usingKnowledge:(id)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(_CDSleepForAutoSu *)self enableCaching])
  {
    v8 = +[_CDAutoSuCache sharedCache];
    v9 = [v8 cachedPredictedSleepDictionaryForDate:v6];
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

  v8 = [MEMORY[0x1E695DFE8] localTimeZone];
  v11 = [v6 cd_dateWithCeilingForAlignment:v8 withOffset:86400.0 inTimeZone:16.0 * 3600.0];
  v39 = [v11 dateByAddingTimeInterval:-(21.0 * 86400.0)];
  v38 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v39 duration:21.0 * 86400.0];
  v18 = [_CDSleepPredictor gatherBitmapHistoryFromStore:v7 forPeriod:?];
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
  v21 = [objc_opt_class() tuningDictionary];
  v22 = [v20 predictFrom:v19 withTuning:v21 usingVersion:2];

  v23 = [_CDSleepPredictor findSleepPeriodInDayStarting:v11 FromActivityProbabilities:v22];
  v40 = v6;
  v24 = [v40 dateByAddingTimeInterval:86400.0];
  if (!v23)
  {

    goto LABEL_11;
  }

  v37 = [v23 endDate];

  v36 = +[_DKPeriodMetadataKey periodStart];
  v49[0] = v36;
  v35 = [v23 startDate];
  v50[0] = v35;
  v34 = +[_DKPeriodMetadataKey periodEnd];
  v49[1] = v34;
  v33 = [v23 endDate];
  v50[1] = v33;
  v49[2] = @"_DKDebugMetadataKey-debug";
  v47[0] = @"probabilityVector";
  v47[1] = @"predictionPeriodStart";
  v48[0] = v22;
  v48[1] = v11;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v25 = v6;
  v27 = v26 = v7;
  v50[2] = v27;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];

  v7 = v26;
  v6 = v25;

  v24 = v37;
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

- (id)getUnlockAndSoftwareUpdateTimesWithConfig:(id)a3 referenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_CDSleepForAutoSu *)self predictedSleepDictionaryForDate:v7];
  if (v8)
  {
    v9 = [(_CDSleepForAutoSu *)self predictForDate:v7 fromState:v8 withConfig:v6];
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] date];
    v9 = [(_CDSleepForAutoSu *)self makeDictionaryForEventStreamWhenPredictionTemporarilyUnavailable:v10];
  }

  return v9;
}

- (id)retrieveSleepProbabilities:(id)a3
{
  if (a3)
  {
    v3 = [a3 objectForKeyedSubscript:@"_DKDebugMetadataKey-debug"];
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

- (id)predictForDate:(id)a3 fromState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDSleepForAutoSu *)self autoSuConfig];
  v9 = [(_CDSleepForAutoSu *)self predictForDate:v7 fromState:v6 withConfig:v8];

  return v9;
}

- (id)predictForDate:(id)a3 fromState:(id)a4 withConfig:(id)a5
{
  v35[96] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(_CDSleepForAutoSu *)self retrieveSleepProbabilities:a4];
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
    if (findAutoSuPlanByProbability(v35, buf, &v28 + 1, &v28, &v27 + 1, &v27, v9) != -1 && ![v9 alwaysFallBackToDefault])
    {
      v21 = [(_CDSleepForAutoSu *)self proposeTimesFromRelativeOffsetsForDate:v8 lastUnlock:*buf suStart:HIDWORD(v28) suEnd:v28 unrestrictedSleepEnd:v27 config:v9];
      if ([v9 alwaysReturnUnlockNow])
      {
        v29[0] = @"sleep_query_status";
        v22 = [v21 objectForKeyedSubscript:?];
        v30[0] = v22;
        v30[1] = v8;
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

  v18 = [(_CDSleepForAutoSu *)self defaultTimesWhenPredictionUnavailable:v8];
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)predicitLastUnlockForDay:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_CDAutoSuConfig);
  [(_CDAutoSuConfig *)v5 setParam];
  [(_CDAutoSuConfig *)v5 setAlwaysReturnUnlockNow:0];
  [(_CDAutoSuConfig *)v5 setAllowUnlockBeforeNow:1];
  v6 = [(_CDSleepForAutoSu *)self getUnlockAndSoftwareUpdateTimesWithConfig:v5 referenceDate:v4];
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
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(_CDSleepForAutoSu *)self predicitLastUnlockForDay:v3];
  v5 = v4;
  if (v4 && ([v4 earlierDate:v3], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToDate:", v5), v6, !v7))
  {
    v10 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    v9 = [v8 dateByAddingUnit:16 value:1 toDate:v3 options:0];

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