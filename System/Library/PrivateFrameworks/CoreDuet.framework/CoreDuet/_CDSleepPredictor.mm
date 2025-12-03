@interface _CDSleepPredictor
+ (id)array:(id)array filter:(id)filter;
+ (id)array:(id)array map:(id)map;
+ (id)array:(id)array reduce:(id)reduce withInitialValue:(id)value;
+ (id)arrayWithObject:(id)object repeated:(unint64_t)repeated;
+ (id)fetchDeviceInUseDateIntervalsFromStore:(id)store whichIntersectInterval:(id)interval;
+ (id)findAllSleepPeriodsInDayStarting:(id)starting FromActivityProbabilities:(id)probabilities;
+ (id)findSleepPeriodInDayStarting:(id)starting FromActivityProbabilities:(id)probabilities;
+ (id)gatherBitmapHistoryFromStore:(id)store forPeriod:(id)period;
+ (id)generateActivityBitmapFor:(id)for unlockedIntervals:(id)intervals eventsAvailableInterval:(id)interval;
+ (id)indexSetFromUnionOf:(id)of;
+ (id)predicateForInUseVaue;
+ (void)mutableArray:(id)array replaceObjectsAtIndexes:(id)indexes withObjectFromBlock:(id)block;
@end

@implementation _CDSleepPredictor

+ (id)array:(id)array reduce:(id)reduce withInitialValue:(id)value
{
  arrayCopy = array;
  reduceCopy = reduce;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  valueCopy = value;
  v21 = valueCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51___CDSleepPredictor_array_reduce_withInitialValue___block_invoke;
  v13[3] = &unk_1E7367F48;
  v15 = &v16;
  v10 = reduceCopy;
  v14 = v10;
  [arrayCopy enumerateObjectsUsingBlock:v13];
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

+ (id)indexSetFromUnionOf:(id)of
{
  v4 = MEMORY[0x1E696AD50];
  ofCopy = of;
  indexSet = [v4 indexSet];
  v7 = [self array:ofCopy reduce:&__block_literal_global_12 withInitialValue:indexSet];

  return v7;
}

+ (id)arrayWithObject:(id)object repeated:(unint64_t)repeated
{
  objectCopy = object;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:repeated];
  if (repeated)
  {
    v7 = 0;
    do
    {
      [v6 setObject:objectCopy atIndexedSubscript:v7++];
    }

    while (repeated != v7);
  }

  v8 = [v6 copy];

  return v8;
}

+ (id)array:(id)array map:(id)map
{
  mapCopy = map;
  v6 = MEMORY[0x1E695DF70];
  arrayCopy = array;
  v8 = [v6 arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __31___CDSleepPredictor_array_map___block_invoke;
  v14[3] = &unk_1E7367F90;
  v9 = v8;
  v15 = v9;
  v16 = mapCopy;
  v10 = mapCopy;
  [arrayCopy enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

+ (id)array:(id)array filter:(id)filter
{
  filterCopy = filter;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34___CDSleepPredictor_array_filter___block_invoke;
  v11[3] = &unk_1E7367FB8;
  v12 = filterCopy;
  v6 = filterCopy;
  arrayCopy = array;
  v8 = [arrayCopy indexesOfObjectsPassingTest:v11];
  v9 = [arrayCopy objectsAtIndexes:v8];

  return v9;
}

+ (void)mutableArray:(id)array replaceObjectsAtIndexes:(id)indexes withObjectFromBlock:(id)block
{
  arrayCopy = array;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78___CDSleepPredictor_mutableArray_replaceObjectsAtIndexes_withObjectFromBlock___block_invoke;
  v11[3] = &unk_1E7367FE0;
  v12 = arrayCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = arrayCopy;
  [indexes enumerateIndexesUsingBlock:v11];
}

+ (id)generateActivityBitmapFor:(id)for unlockedIntervals:(id)intervals eventsAvailableInterval:(id)interval
{
  forCopy = for;
  intervalsCopy = intervals;
  intervalCopy = interval;
  [forCopy duration];
  v12 = (v11 / 900.0);
  v13 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v14 = [self arrayWithObject:v13 repeated:v12];

  v31 = v14;
  v15 = [v14 mutableCopy];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __89___CDSleepPredictor_generateActivityBitmapFor_unlockedIntervals_eventsAvailableInterval___block_invoke;
  v38[3] = &unk_1E7368008;
  v16 = forCopy;
  v39 = v16;
  v40 = v12;
  v17 = MEMORY[0x193B00C50](v38);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __89___CDSleepPredictor_generateActivityBitmapFor_unlockedIntervals_eventsAvailableInterval___block_invoke_2;
  v34[3] = &unk_1E7368030;
  v18 = v17;
  v36 = v18;
  v30 = v16;
  v35 = v30;
  v37 = v12;
  v33 = intervalsCopy;
  v29 = [self array:intervalsCopy map:v34];
  v28 = [self indexSetFromUnionOf:?];
  [self mutableArray:v15 replaceObjectsAtIndexes:? withObjectFromBlock:?];
  startDate = [intervalCopy startDate];
  v32 = intervalCopy;
  endDate = [intervalCopy endDate];
  v21 = (*(v18 + 2))(v18, startDate);
  v22 = (*(v18 + 2))(v18, endDate);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
      [v15 setObject:v24 atIndexedSubscript:i];
    }
  }

  v25 = v22 + 1;
  if (v22 + 1 < v12)
  {
    do
    {
      v26 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
      [v15 setObject:v26 atIndexedSubscript:v25];

      ++v25;
    }

    while (v12 != v25);
  }

  return v15;
}

+ (id)predicateForInUseVaue
{
  v2 = +[_DKBoolCategory no];
  v3 = [_DKQuery predicateForEventsWithCategoryValue:v2];

  return v3;
}

+ (id)fetchDeviceInUseDateIntervalsFromStore:(id)store whichIntersectInterval:(id)interval
{
  v31[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  intervalCopy = interval;
  v7 = objc_alloc_init(_DKEventQuery);
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDSleepPredictor.m"];
  v9 = [v8 stringByAppendingFormat:@":%d", 166];
  [(_DKQuery *)v7 setClientName:v9];

  [(_DKQuery *)v7 setTracker:&__block_literal_global_20];
  v10 = +[_DKSystemEventStreams deviceInUseProxyStream];
  v31[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [(_DKEventQuery *)v7 setEventStreams:v11];

  [(_DKEventQuery *)v7 setOffset:0];
  [(_DKEventQuery *)v7 setLimit:0];
  v12 = [_DKQuery startDateSortDescriptorAscending:1];
  v30 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [(_DKEventQuery *)v7 setSortDescriptors:v13];

  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v16 = [_DKQuery predicateForEventsIntersectingDateRangeFrom:startDate to:endDate];

  v17 = +[_CDSleepPredictor predicateForInUseVaue];
  v18 = MEMORY[0x1E696AB28];
  v29[0] = v16;
  v29[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v20 = [v18 andPredicateWithSubpredicates:v19];
  [(_DKEventQuery *)v7 setPredicate:v20];

  [(_DKEventQuery *)v7 setResultType:2];
  v21 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    +[_CDSleepPredictor fetchDeviceInUseDateIntervalsFromStore:whichIntersectInterval:];
  }

  v28 = 0;
  v22 = [storeCopy executeQuery:v7 error:&v28];
  v23 = v28;
  if (v23)
  {
    v24 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      +[_CDSleepPredictor fetchDeviceInUseDateIntervalsFromStore:whichIntersectInterval:];
    }

    v25 = 0;
  }

  else
  {
    v25 = v22;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)gatherBitmapHistoryFromStore:(id)store forPeriod:(id)period
{
  storeCopy = store;
  periodCopy = period;
  v8 = +[_DKSystemEventStreams deviceInUseProxyStream];
  v9 = [self fetchFirstEventDateIntervalFromStore:storeCopy forStream:v8 sortDateAscending:1 intersectingInterval:periodCopy];

  if (v9)
  {
    v10 = +[_DKSystemEventStreams deviceInUseProxyStream];
    v11 = [self fetchFirstEventDateIntervalFromStore:storeCopy forStream:v10 sortDateAscending:0 intersectingInterval:periodCopy];

    if (v11)
    {
      v12 = [self fetchDeviceInUseDateIntervalsFromStore:storeCopy whichIntersectInterval:periodCopy];
      v13 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [_CDSleepPredictor gatherBitmapHistoryFromStore:v12 forPeriod:v13];
      }

      v14 = objc_alloc(MEMORY[0x1E696AB80]);
      startDate = [v9 startDate];
      endDate = [v11 endDate];
      v17 = [v14 initWithStartDate:startDate endDate:endDate];

      v18 = [self generateActivityBitmapFor:periodCopy unlockedIntervals:v12 eventsAvailableInterval:v17];
    }

    else
    {
      v12 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[_CDSleepPredictor gatherBitmapHistoryFromStore:forPeriod:];
      }

      v18 = 0;
    }
  }

  else
  {
    v11 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[_CDSleepPredictor gatherBitmapHistoryFromStore:forPeriod:];
    }

    v18 = 0;
  }

  return v18;
}

+ (id)findSleepPeriodInDayStarting:(id)starting FromActivityProbabilities:(id)probabilities
{
  v4 = [self findAllSleepPeriodsInDayStarting:starting FromActivityProbabilities:probabilities];
  if (![v4 count])
  {
    v8 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Sleep Prediction: final stage: no sleep periods predicted";
      v10 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v11 = 0;
    goto LABEL_10;
  }

  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 duration];
  v7 = v6;

  if (v7 < 14400.0)
  {
    v8 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v9 = "Sleep Prediction: final stage: detected sleep too short";
      v10 = &v13;
LABEL_7:
      _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v11 = [v4 objectAtIndexedSubscript:0];
LABEL_10:

  return v11;
}

+ (id)findAllSleepPeriodsInDayStarting:(id)starting FromActivityProbabilities:(id)probabilities
{
  startingCopy = starting;
  v7 = [self array:probabilities map:&__block_literal_global_36];
  v8 = [v7 indexesOfObjectsPassingTest:&__block_literal_global_39];
  array = [MEMORY[0x1E695DF70] array];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80___CDSleepPredictor_findAllSleepPeriodsInDayStarting_FromActivityProbabilities___block_invoke_3;
  v21[3] = &unk_1E73680B8;
  v22 = array;
  v10 = array;
  [v8 enumerateRangesUsingBlock:v21];
  v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_44];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __80___CDSleepPredictor_findAllSleepPeriodsInDayStarting_FromActivityProbabilities___block_invoke_5;
  v19 = &unk_1E7368100;
  v20 = startingCopy;
  v12 = startingCopy;
  v13 = MEMORY[0x193B00C50](&v16);
  v14 = [self array:v11 map:{v13, v16, v17, v18, v19}];

  return v14;
}

+ (void)fetchDeviceInUseDateIntervalsFromStore:whichIntersectInterval:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_191750000, v1, OS_LOG_TYPE_DEBUG, "Executing query for unlock events on store %@ in date range %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)fetchDeviceInUseDateIntervalsFromStore:whichIntersectInterval:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)gatherBitmapHistoryFromStore:(void *)a1 forPeriod:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Obtained %lu screen unlock events", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end