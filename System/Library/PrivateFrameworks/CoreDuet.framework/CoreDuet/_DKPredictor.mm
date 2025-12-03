@interface _DKPredictor
+ (id)defaultPeriodAtDate:(uint64_t)date;
+ (id)deviceActivityLikelihoodQueryPredicate;
+ (id)predictorLog;
+ (id)predictorWithKnowledgeStore:(id)store;
- (id)deviceActivityLikelihood;
- (id)displayOnLikelihood;
- (id)expectedInBedPeriod;
- (id)initWithKnowledgeStore:(id *)store;
- (id)launchLikelihoodPredictionForApp:(id)app;
- (id)localInBedPeriod;
- (id)pluginLikelihood;
- (id)predictionForStreamWithName:(id)name withPredicate:(id)predicate withPredictionType:(unint64_t)type;
- (id)predictionForStreamWithName:(id)name withPredicate:(id)predicate withPredictionType:(unint64_t)type asOfDate:(id)date;
- (id)predictionForStreamWithName:(id)name withPredicate:(id)predicate withPredictionType:(unint64_t)type withDataPartitionType:(unint64_t)partitionType asOfDate:(id)date;
- (id)predictionForStreamsWithNames:(id)names withPredicate:(id)predicate withPredictionType:(unint64_t)type;
- (void)deviceActivityLikelihood;
- (void)displayOnLikelihood;
- (void)pluginLikelihood;
- (void)predictionForStreamsWithNames:(void *)names withPredicate:(uint64_t)predicate withPredictionType:(uint64_t)type withDataPartitionType:(void *)partitionType asOfDate:;
- (void)predictionForStreamsWithNames:(void *)names withPredicate:(uint64_t)predicate withPredictionType:(void *)type asOfDate:;
@end

@implementation _DKPredictor

+ (id)predictorLog
{
  objc_opt_self();
  if (predictorLog_onceToken != -1)
  {
    +[_DKPredictor predictorLog];
  }

  v0 = predictorLog_predictorLog;

  return v0;
}

- (id)launchLikelihoodPredictionForApp:(id)app
{
  v27[2] = *MEMORY[0x1E69E9840];
  appCopy = app;
  v5 = _os_activity_create(&dword_191750000, "CoreDuet: launchLikelihoodPredictionForApp", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  if (appCopy)
  {
    v6 = [_DKQuery predicateForEventsWithStringValue:appCopy];
  }

  else
  {
    v6 = 0;
  }

  v7 = [_DKEventQuery predicateForEventsOfMinimumDuration:5.0];
  v8 = v7;
  if (v6)
  {
    v27[0] = v6;
    v27[1] = v7;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v27;
    v11 = 2;
  }

  else
  {
    v26 = v7;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v26;
    v11 = 1;
  }

  v12 = [v9 arrayWithObjects:v10 count:v11];
  v13 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v12];
  v14 = +[_DKSystemEventStreams appInFocusStream];
  v15 = [_DKPredictionQuery predictionQueryForStream:v14 withPredicate:v13 withPredictionType:0];

  knowledgeStore = self->_knowledgeStore;
  v24 = 0;
  v17 = [(_DKKnowledgeQuerying *)knowledgeStore executeQuery:v15 error:&v24];
  v18 = v24;
  if (v18)
  {
    objc_opt_class();
    v19 = +[_DKPredictor predictorLog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictor launchLikelihoodPredictionForApp:];
    }

    v20 = +[_DKPredictionTimeline predictionUnavailable];
  }

  else
  {
    v20 = v17;
  }

  v21 = v20;

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)pluginLikelihood
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_191750000, "CoreDuet: pluginLikelihood", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  v4 = [_DKQuery predicateForEventsWithIntegerValue:1];
  v5 = [_DKEventQuery predicateForEventsOfMinimumDuration:300.0];
  v6 = MEMORY[0x1E696AB28];
  v21[0] = v4;
  v21[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];

  v9 = +[_DKSystemEventStreams deviceIsPluggedInStream];
  v10 = [_DKPredictionQuery predictionQueryForStream:v9 withPredicate:v8 withPredictionType:1];

  knowledgeStore = self->_knowledgeStore;
  v19 = 0;
  v12 = [(_DKKnowledgeQuerying *)knowledgeStore executeQuery:v10 error:&v19];
  v13 = v19;
  if (v13)
  {
    objc_opt_class();
    v14 = +[_DKPredictor predictorLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictor pluginLikelihood];
    }

    v15 = +[_DKPredictionTimeline predictionUnavailable];
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)displayOnLikelihood
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_191750000, "CoreDuet: displayOnLikelihood", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  v4 = [_DKQuery predicateForEventsWithIntegerValue:1];
  v5 = MEMORY[0x1E696AB28];
  v20[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v7 = [v5 andPredicateWithSubpredicates:v6];

  v8 = +[_DKSystemEventStreams displayIsBacklit];
  v9 = [_DKPredictionQuery predictionQueryForStream:v8 withPredicate:v7 withPredictionType:0];

  knowledgeStore = self->_knowledgeStore;
  v18 = 0;
  v11 = [(_DKKnowledgeQuerying *)knowledgeStore executeQuery:v9 error:&v18];
  v12 = v18;
  if (v12)
  {
    objc_opt_class();
    v13 = +[_DKPredictor predictorLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictor displayOnLikelihood];
    }

    v14 = +[_DKPredictionTimeline predictionUnavailable];
  }

  else
  {
    v14 = v11;
  }

  v15 = v14;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)deviceActivityLikelihoodQueryPredicate
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_191750000, "CoreDuet: deviceActivityLikelihoodQueryPredicate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  v3 = [_DKQuery predicateForEventsExcludingIntegerValue:0];
  v4 = [_DKQuery predicateForEventsExcludingIntegerValue:8];
  v5 = MEMORY[0x1E696AB28];
  v11[0] = v3;
  v11[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v5 andPredicateWithSubpredicates:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)deviceActivityLikelihood
{
  v3 = _os_activity_create(&dword_191750000, "CoreDuet: deviceActivityLikelihood", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  deviceActivityLikelihoodQueryPredicate = [objc_opt_class() deviceActivityLikelihoodQueryPredicate];
  v5 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v6 = [_DKPredictionQuery predictionQueryForStream:v5 withPredicate:deviceActivityLikelihoodQueryPredicate withPredictionType:0];

  [v6 setMinimumDaysOfHistory:3];
  [v6 setSlotDuration:900];
  [v6 setPartitionType:2];
  [v6 setUseHistoricalHistogram:1];
  knowledgeStore = self->_knowledgeStore;
  v17 = 0;
  v8 = [(_DKKnowledgeQuerying *)knowledgeStore executeQuery:v6 error:&v17];
  v9 = v17;
  if (v9)
  {
    objc_opt_class();
    v10 = +[_DKPredictor predictorLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictor deviceActivityLikelihood];
    }

    v11 = +[_DKPredictionTimeline predictionUnavailable];
  }

  else
  {
    v12 = objc_alloc_init(_DKPredictionQueryFeedback);
    v13 = self->_knowledgeStore;
    startHistogram = [v8 startHistogram];
    endHistogram = [v8 endHistogram];
    [(_DKPredictionQueryFeedback *)v12 logPredictionQueryFeedback:startHistogram endHistogram:endHistogram withStorage:v13];

    [v8 setStartHistogram:0];
    [v8 setEndHistogram:0];
    v11 = v8;
  }

  return v11;
}

- (id)predictionForStreamWithName:(id)name withPredicate:(id)predicate withPredictionType:(unint64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v8 = MEMORY[0x1E695DEC8];
  predicateCopy = predicate;
  nameCopy2 = name;
  v11 = [v8 arrayWithObjects:&nameCopy count:1];
  date = [MEMORY[0x1E695DF00] date];

  v13 = [(_DKPredictor *)self predictionForStreamsWithNames:v11 withPredicate:predicateCopy withPredictionType:type asOfDate:date];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)predictionForStreamWithName:(id)name withPredicate:(id)predicate withPredictionType:(unint64_t)type withDataPartitionType:(unint64_t)partitionType asOfDate:(id)date
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = name;
  v12 = MEMORY[0x1E695DEC8];
  dateCopy = date;
  predicateCopy = predicate;
  nameCopy = name;
  v16 = [v12 arrayWithObjects:v20 count:1];

  v17 = [(_DKPredictor *)self predictionForStreamsWithNames:v16 withPredicate:predicateCopy withPredictionType:type withDataPartitionType:partitionType asOfDate:dateCopy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)defaultPeriodAtDate:(uint64_t)date
{
  v2 = a2;
  objc_opt_self();
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [currentCalendar components:32 fromDate:v2];
  if ([v4 hour] <= 6)
  {
    v5 = [v2 dateByAddingTimeInterval:-86400.0];

    v2 = v5;
  }

  v6 = [currentCalendar startOfDayForDate:v2];
  v7 = [v6 dateByAddingTimeInterval:72000.0];

  v8 = [v7 dateByAddingTimeInterval:39600.0];
  v9 = [_CDDateRange periodWithStart:v7 end:v8];

  return v9;
}

- (id)localInBedPeriod
{
  v3 = _os_activity_create(&dword_191750000, "CoreDuet: localInBedPeriod", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v3, &v8);
  os_activity_scope_leave(&v8);

  deviceActivityLikelihood = [(_DKPredictor *)self deviceActivityLikelihood];
  if ([deviceActivityLikelihood isUnavailable])
  {
    date = [MEMORY[0x1E695DF00] date];
    v6 = [_DKPredictor defaultPeriodAtDate:date];
  }

  else
  {
    v6 = [deviceActivityLikelihood largestDateRangeWithValuesBetween:0.0 and:0.1 ofMinimumDuration:21600.0];
  }

  return v6;
}

- (id)expectedInBedPeriod
{
  v3 = _os_activity_create(&dword_191750000, "CoreDuet: expectedInBedPeriod", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  os_activity_scope_leave(&v6);

  localInBedPeriod = [(_DKPredictor *)self localInBedPeriod];

  return localInBedPeriod;
}

- (id)initWithKnowledgeStore:(id *)store
{
  v4 = a2;
  if (store)
  {
    v7.receiver = store;
    v7.super_class = _DKPredictor;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    store = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return store;
}

+ (id)predictorWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v5 = [(_DKPredictor *)[self alloc] initWithKnowledgeStore:storeCopy];

  return v5;
}

- (void)predictionForStreamsWithNames:(void *)names withPredicate:(uint64_t)predicate withPredictionType:(void *)type asOfDate:
{
  if (self)
  {
    self = [(_DKPredictor *)self predictionForStreamsWithNames:a2 withPredicate:names withPredictionType:predicate withDataPartitionType:1 asOfDate:type];
    v5 = vars8;
  }

  return self;
}

- (id)predictionForStreamsWithNames:(id)names withPredicate:(id)predicate withPredictionType:(unint64_t)type
{
  v8 = MEMORY[0x1E695DF00];
  predicateCopy = predicate;
  namesCopy = names;
  date = [v8 date];
  v12 = [(_DKPredictor *)self predictionForStreamsWithNames:namesCopy withPredicate:predicateCopy withPredictionType:type asOfDate:date];

  return v12;
}

- (id)predictionForStreamWithName:(id)name withPredicate:(id)predicate withPredictionType:(unint64_t)type asOfDate:(id)date
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = name;
  v10 = MEMORY[0x1E695DEC8];
  dateCopy = date;
  predicateCopy = predicate;
  nameCopy = name;
  v14 = [v10 arrayWithObjects:v18 count:1];

  v15 = [(_DKPredictor *)self predictionForStreamsWithNames:v14 withPredicate:predicateCopy withPredictionType:type asOfDate:dateCopy];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)predictionForStreamsWithNames:(void *)names withPredicate:(uint64_t)predicate withPredictionType:(uint64_t)type withDataPartitionType:(void *)partitionType asOfDate:
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a2;
  namesCopy = names;
  partitionTypeCopy = partitionType;
  if (self)
  {
    v12 = _os_activity_create(&dword_191750000, "CoreDuet: predictionForStreamsWithNames", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v12, state);
    os_activity_scope_leave(state);

    context = objc_autoreleasePoolPush();
    array = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = v9;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [_DKEventStream eventStreamWithName:*(*(&v35 + 1) + 8 * i)];
          [array addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v16);
    }

    v20 = [array copy];
    v21 = namesCopy;
    v22 = [_DKPredictionQuery predictionQueryForStreams:v20 withPredicate:namesCopy withPredictionType:predicate];

    [v22 setAsOfDate:partitionTypeCopy];
    [v22 setPartitionType:type];
    v23 = self[1];
    v34 = 0;
    v24 = [v23 executeQuery:v22 error:&v34];
    v25 = v34;
    if (v25)
    {
      objc_opt_class();
      v26 = +[_DKPredictor predictorLog];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *state = 138412546;
        *&state[4] = v25;
        *&state[12] = 2112;
        *&state[14] = v22;
        _os_log_error_impl(&dword_191750000, v26, OS_LOG_TYPE_ERROR, "Error executing timeline query: %@ (%@)", state, 0x16u);
      }

      v27 = +[_DKPredictionTimeline predictionUnavailable];
    }

    else
    {
      v27 = v24;
    }

    self = v27;
    v9 = v31;

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v21 = namesCopy;
  }

  v28 = *MEMORY[0x1E69E9840];

  return self;
}

- (void)launchLikelihoodPredictionForApp:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_191750000, v1, OS_LOG_TYPE_ERROR, "Error executing timeline query for likelihood of %@ launch: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)pluginLikelihood
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error executing plugin likelihood query: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)displayOnLikelihood
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error executing display likelihood query: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deviceActivityLikelihood
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error executing activity likelihood query: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end