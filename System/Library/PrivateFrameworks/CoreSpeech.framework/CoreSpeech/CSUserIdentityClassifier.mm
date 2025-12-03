@interface CSUserIdentityClassifier
+ (id)pickTopScoringProfileIdFromScores:(id)scores;
+ (id)stringFromClassificationCategory:(unint64_t)category;
+ (unint64_t)classifyUserIdentityFor:(id)for withScores:(id)scores lowScoreThreshold:(int64_t)threshold highScoreThreshold:(int64_t)scoreThreshold confidentThreshold:(int64_t)confidentThreshold scoreDiffThreshold:(int64_t)diffThreshold;
+ (unint64_t)classifyUserIdentityFor:(id)for withScores:(id)scores withAsset:(id)asset withPhId:(unint64_t)id;
@end

@implementation CSUserIdentityClassifier

+ (id)stringFromClassificationCategory:(unint64_t)category
{
  categoryCopy = category;
  if (category < 5)
  {
    return *(&off_10024E520 + category);
  }

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "+[CSUserIdentityClassifier stringFromClassificationCategory:]";
    v8 = 1026;
    v9 = categoryCopy;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s ERR: Incorrect category %{public}d passed", &v6, 0x12u);
  }

  return @"Unknown";
}

+ (unint64_t)classifyUserIdentityFor:(id)for withScores:(id)scores withAsset:(id)asset withPhId:(unint64_t)id
{
  assetCopy = asset;
  scoresCopy = scores;
  forCopy = for;
  v12 = [assetCopy multiUserLowScoreThresholdForPhId:id];
  v13 = [assetCopy multiUserHighScoreThresholdForPhId:id];
  v14 = [assetCopy multiUserConfidentScoreThresholdForPhId:id];
  v15 = [assetCopy multiUserDeltaScoreThresholdForPhId:id];

  v16 = [CSUserIdentityClassifier classifyUserIdentityFor:forCopy withScores:scoresCopy lowScoreThreshold:v12 highScoreThreshold:v13 confidentThreshold:v14 scoreDiffThreshold:v15];
  return v16;
}

+ (unint64_t)classifyUserIdentityFor:(id)for withScores:(id)scores lowScoreThreshold:(int64_t)threshold highScoreThreshold:(int64_t)scoreThreshold confidentThreshold:(int64_t)confidentThreshold scoreDiffThreshold:(int64_t)diffThreshold
{
  forCopy = for;
  scoresCopy = scores;
  v15 = scoresCopy;
  if (forCopy && scoresCopy && ([scoresCopy objectForKeyedSubscript:forCopy], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v17 = [v15 objectForKeyedSubscript:forCopy];
    integerValue = [v17 integerValue];

    if ([v15 count] == 1)
    {
      v19 = 4;
      v20 = 3;
      if (integerValue <= scoreThreshold)
      {
        v20 = 1;
      }

      if (integerValue < confidentThreshold)
      {
        v19 = v20;
      }

      if (integerValue > threshold)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v24 = [v15 mutableCopy];
      [v24 removeObjectForKey:forCopy];
      v27 = [CSUserIdentityClassifier pickTopScoringProfileIdFromScores:v24];
      v25 = [v15 objectForKeyedSubscript:?];
      integerValue2 = [v25 integerValue];

      if (integerValue <= threshold)
      {
        v21 = 0;
      }

      else if (integerValue - integerValue2 <= diffThreshold)
      {
        v21 = 2;
      }

      else if (integerValue >= confidentThreshold)
      {
        v21 = 4;
      }

      else if (integerValue <= scoreThreshold)
      {
        v21 = 1;
      }

      else
      {
        v21 = 3;
      }
    }
  }

  else
  {
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v29 = "+[CSUserIdentityClassifier classifyUserIdentityFor:withScores:lowScoreThreshold:highScoreThreshold:confidentThreshold:scoreDiffThreshold:]";
      v30 = 2114;
      v31 = forCopy;
      v32 = 2114;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s ERR: invalid arguments passed %{public}@ %{public}@", buf, 0x20u);
    }

    v21 = 0;
  }

  return v21;
}

+ (id)pickTopScoringProfileIdFromScores:(id)scores
{
  scoresCopy = scores;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [scoresCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v17;
  v8 = -1000;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(scoresCopy);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      v11 = [scoresCopy objectForKeyedSubscript:v10];
      integerValue = [v11 integerValue];

      if (integerValue > v8)
      {
        v13 = v10;

        v8 = integerValue;
        v6 = v13;
      }
    }

    v5 = [scoresCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
  }

  while (v5);
  if (!v6)
  {
LABEL_11:
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "+[CSUserIdentityClassifier pickTopScoringProfileIdFromScores:]";
      v22 = 2114;
      v23 = scoresCopy;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s ERR: topScoringUser is nil from %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

@end