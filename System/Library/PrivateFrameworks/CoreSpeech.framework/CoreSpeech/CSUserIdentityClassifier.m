@interface CSUserIdentityClassifier
+ (id)pickTopScoringProfileIdFromScores:(id)a3;
+ (id)stringFromClassificationCategory:(unint64_t)a3;
+ (unint64_t)classifyUserIdentityFor:(id)a3 withScores:(id)a4 lowScoreThreshold:(int64_t)a5 highScoreThreshold:(int64_t)a6 confidentThreshold:(int64_t)a7 scoreDiffThreshold:(int64_t)a8;
+ (unint64_t)classifyUserIdentityFor:(id)a3 withScores:(id)a4 withAsset:(id)a5 withPhId:(unint64_t)a6;
@end

@implementation CSUserIdentityClassifier

+ (id)stringFromClassificationCategory:(unint64_t)a3
{
  v3 = a3;
  if (a3 < 5)
  {
    return *(&off_10024E520 + a3);
  }

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "+[CSUserIdentityClassifier stringFromClassificationCategory:]";
    v8 = 1026;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s ERR: Incorrect category %{public}d passed", &v6, 0x12u);
  }

  return @"Unknown";
}

+ (unint64_t)classifyUserIdentityFor:(id)a3 withScores:(id)a4 withAsset:(id)a5 withPhId:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v9 multiUserLowScoreThresholdForPhId:a6];
  v13 = [v9 multiUserHighScoreThresholdForPhId:a6];
  v14 = [v9 multiUserConfidentScoreThresholdForPhId:a6];
  v15 = [v9 multiUserDeltaScoreThresholdForPhId:a6];

  v16 = [CSUserIdentityClassifier classifyUserIdentityFor:v11 withScores:v10 lowScoreThreshold:v12 highScoreThreshold:v13 confidentThreshold:v14 scoreDiffThreshold:v15];
  return v16;
}

+ (unint64_t)classifyUserIdentityFor:(id)a3 withScores:(id)a4 lowScoreThreshold:(int64_t)a5 highScoreThreshold:(int64_t)a6 confidentThreshold:(int64_t)a7 scoreDiffThreshold:(int64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = v14;
  if (v13 && v14 && ([v14 objectForKeyedSubscript:v13], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v17 = [v15 objectForKeyedSubscript:v13];
    v18 = [v17 integerValue];

    if ([v15 count] == 1)
    {
      v19 = 4;
      v20 = 3;
      if (v18 <= a6)
      {
        v20 = 1;
      }

      if (v18 < a7)
      {
        v19 = v20;
      }

      if (v18 > a5)
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
      [v24 removeObjectForKey:v13];
      v27 = [CSUserIdentityClassifier pickTopScoringProfileIdFromScores:v24];
      v25 = [v15 objectForKeyedSubscript:?];
      v26 = [v25 integerValue];

      if (v18 <= a5)
      {
        v21 = 0;
      }

      else if (v18 - v26 <= a8)
      {
        v21 = 2;
      }

      else if (v18 >= a7)
      {
        v21 = 4;
      }

      else if (v18 <= a6)
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
      v31 = v13;
      v32 = 2114;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s ERR: invalid arguments passed %{public}@ %{public}@", buf, 0x20u);
    }

    v21 = 0;
  }

  return v21;
}

+ (id)pickTopScoringProfileIdFromScores:(id)a3
{
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      v11 = [v3 objectForKeyedSubscript:v10];
      v12 = [v11 integerValue];

      if (v12 > v8)
      {
        v13 = v10;

        v8 = v12;
        v6 = v13;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
      v23 = v3;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s ERR: topScoringUser is nil from %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

@end