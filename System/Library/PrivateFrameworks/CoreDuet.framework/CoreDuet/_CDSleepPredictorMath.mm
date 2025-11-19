@interface _CDSleepPredictorMath
- (id)predictFrom:(id)a3 withTuning:(id)a4 usingVersion:(int)a5;
@end

@implementation _CDSleepPredictorMath

- (id)predictFrom:(id)a3 withTuning:(id)a4 usingVersion:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DF88] dataWithLength:{4 * objc_msgSend(v7, "count")}];
  v10 = [v7 reverseObjectEnumerator];
  v11 = [v10 allObjects];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __61___CDSleepPredictorMath_predictFrom_withTuning_usingVersion___block_invoke;
  v37[3] = &unk_1E736A730;
  v12 = v9;
  v38 = v12;
  [v11 enumerateObjectsUsingBlock:v37];

  v13 = [MEMORY[0x1E695DF88] dataWithLength:768];
  v14 = [v8 objectForKeyedSubscript:@"kSleepTuningShort"];
  if (v14)
  {
    v15 = [v8 objectForKeyedSubscript:@"kSleepTuningShort"];
    [v15 doubleValue];
    v17 = v16;
  }

  else
  {
    v17 = 0.8;
  }

  v18 = [v8 objectForKeyedSubscript:@"kSleepTuningLong"];
  if (v18)
  {
    v19 = [v8 objectForKeyedSubscript:@"kSleepTuningLong"];
    [v19 doubleValue];
    v21 = v20;
  }

  else
  {
    v21 = 0.7;
  }

  v22 = [v8 objectForKeyedSubscript:@"kSleepTuningRatio"];
  if (v22)
  {
    v23 = [v8 objectForKeyedSubscript:@"kSleepTuningRatio"];
    [v23 doubleValue];
    v25 = v24;
  }

  else
  {
    v25 = 0.5;
  }

  v26 = [v12 mutableBytes];
  v27 = [v7 count];
  if (a5 == 2 && v27 >= 1)
  {
    v28 = v27 & 0x7FFFFFFF;
    v29 = v26;
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

  if (sleepPredictionWithParams([v13 mutableBytes], v26, v27, v17, v21, v25, a5))
  {
    v30 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [_CDSleepPredictorMath predictFrom:v30 withTuning:? usingVersion:?];
    }

    v31 = 0;
  }

  else
  {
    v30 = [MEMORY[0x1E695DF70] array];
    v32 = [v13 bytes];
    for (i = 0; i != 768; i += 8)
    {
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:*(v32 + i)];
      [v30 addObject:v34];
    }

    v35 = [v30 reverseObjectEnumerator];
    v31 = [v35 allObjects];
  }

  return v31;
}

@end