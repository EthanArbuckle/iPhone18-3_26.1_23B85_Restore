@interface _CDSleepPredictorMath
- (id)predictFrom:(id)from withTuning:(id)tuning usingVersion:(int)version;
@end

@implementation _CDSleepPredictorMath

- (id)predictFrom:(id)from withTuning:(id)tuning usingVersion:(int)version
{
  fromCopy = from;
  tuningCopy = tuning;
  v9 = [MEMORY[0x1E695DF88] dataWithLength:{4 * objc_msgSend(fromCopy, "count")}];
  reverseObjectEnumerator = [fromCopy reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __61___CDSleepPredictorMath_predictFrom_withTuning_usingVersion___block_invoke;
  v37[3] = &unk_1E736A730;
  v12 = v9;
  v38 = v12;
  [allObjects enumerateObjectsUsingBlock:v37];

  v13 = [MEMORY[0x1E695DF88] dataWithLength:768];
  v14 = [tuningCopy objectForKeyedSubscript:@"kSleepTuningShort"];
  if (v14)
  {
    v15 = [tuningCopy objectForKeyedSubscript:@"kSleepTuningShort"];
    [v15 doubleValue];
    v17 = v16;
  }

  else
  {
    v17 = 0.8;
  }

  v18 = [tuningCopy objectForKeyedSubscript:@"kSleepTuningLong"];
  if (v18)
  {
    v19 = [tuningCopy objectForKeyedSubscript:@"kSleepTuningLong"];
    [v19 doubleValue];
    v21 = v20;
  }

  else
  {
    v21 = 0.7;
  }

  v22 = [tuningCopy objectForKeyedSubscript:@"kSleepTuningRatio"];
  if (v22)
  {
    v23 = [tuningCopy objectForKeyedSubscript:@"kSleepTuningRatio"];
    [v23 doubleValue];
    v25 = v24;
  }

  else
  {
    v25 = 0.5;
  }

  mutableBytes = [v12 mutableBytes];
  v27 = [fromCopy count];
  if (version == 2 && v27 >= 1)
  {
    v28 = v27 & 0x7FFFFFFF;
    v29 = mutableBytes;
    do
    {
      if (*v29 == -1)
      {
        *v29 = 0;
      }

      ++v29;
      --v28;
    }

    while (v28);
  }

  if (sleepPredictionWithParams([v13 mutableBytes], mutableBytes, v27, v17, v21, v25, version))
  {
    array = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      [_CDSleepPredictorMath predictFrom:array withTuning:? usingVersion:?];
    }

    allObjects2 = 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    bytes = [v13 bytes];
    for (i = 0; i != 768; i += 8)
    {
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:*(bytes + i)];
      [array addObject:v34];
    }

    reverseObjectEnumerator2 = [array reverseObjectEnumerator];
    allObjects2 = [reverseObjectEnumerator2 allObjects];
  }

  return allObjects2;
}

@end