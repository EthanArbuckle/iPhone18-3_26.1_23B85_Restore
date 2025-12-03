@interface SGQuickResponsesDistributingCount
+ (id)numResponsesForScores:(id)scores responseCount:(unint64_t)count config:(id)config;
+ (id)probsForClasses:(id)classes withCount:(unint64_t)count;
+ (unint64_t)responsesToFillForResponseCount:(unint64_t)count config:(id)config;
+ (unint64_t)validClassesForClassCount:(unint64_t)count responseCount:(unint64_t)responseCount config:(id)config;
@end

@implementation SGQuickResponsesDistributingCount

+ (id)probsForClasses:(id)classes withCount:(unint64_t)count
{
  classesCopy = classes;
  v6 = objc_opt_new();
  if (count)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      v9 = [classesCopy objectAtIndexedSubscript:v7];
      [v9 value];
      v8 = v8 + v10;

      ++v7;
    }

    while (count != v7);
    v11 = 0;
    do
    {
      v12 = [classesCopy objectAtIndexedSubscript:v11];
      [v12 value];
      v14 = v13 / v8;

      v15 = [SGQuickResponsesClassScore alloc];
      v16 = [classesCopy objectAtIndexedSubscript:v11];
      v17 = -[SGQuickResponsesClassScore initWithValue:index:](v15, "initWithValue:index:", [v16 index], v14);

      [v6 addObject:v17];
      ++v11;
    }

    while (count != v11);
  }

  return v6;
}

+ (unint64_t)responsesToFillForResponseCount:(unint64_t)count config:(id)config
{
  configCopy = config;
  predictionParams = [configCopy predictionParams];
  [predictionParams responsesBonus];
  v10 = v9;

  replies = [configCopy replies];

  maxDistinctReplies = [replies maxDistinctReplies];
  v13 = (v10 * ((maxDistinctReplies - count) & ~((maxDistinctReplies - count) >> 63)));
  if (maxDistinctReplies <= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = maxDistinctReplies;
  }

  v15 = v13 + count;
  if (__CFADD__(v13, count) || v15 > countCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesRanking.m" lineNumber:276 description:{@"responsesToFill %d out of range [%d, %d]", v15, count, countCopy}];
  }

  return v15;
}

+ (unint64_t)validClassesForClassCount:(unint64_t)count responseCount:(unint64_t)responseCount config:(id)config
{
  predictionParams = [config predictionParams];
  [predictionParams classDiscount];
  v10 = v9;

  v11 = vcvtpd_u64_f64((1.0 - v10) * (count - 1));
  v12 = v11 + 1;
  if (v11 >= count)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesRanking.m" lineNumber:262 description:{@"validClasses %d out of range [1, %d]", v12, count}];
  }

  return v12;
}

+ (id)numResponsesForScores:(id)scores responseCount:(unint64_t)count config:(id)config
{
  scoresCopy = scores;
  configCopy = config;
  replies = [configCopy replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    replies2 = [configCopy replies];
  }

  else
  {
    replies2 = 0;
  }

  v12 = +[SGQuickResponsesDistributingCount validClassesForClassCount:responseCount:config:](SGQuickResponsesDistributingCount, "validClassesForClassCount:responseCount:config:", [scoresCopy count], count, configCopy);
  v13 = [SGQuickResponsesDistributingCount responsesToFillForResponseCount:count config:configCopy];
  v32 = scoresCopy;
  v14 = [SGQuickResponsesDistributingCount probsForClasses:scoresCopy withCount:v12];
  v33 = configCopy;
  predictionParams = [configCopy predictionParams];
  isPerCategory = [predictionParams isPerCategory];

  v16 = objc_opt_new();
  if (v12 && count)
  {
    v17 = 0;
    v18 = v13;
    v19 = 1;
    do
    {
      v20 = [v14 objectAtIndexedSubscript:v19 - 1];
      [v20 value];
      v22 = v21;

      v23 = [v14 objectAtIndexedSubscript:v19 - 1];
      index = [v23 index];

      if (replies2)
      {
        if (isPerCategory)
        {
          [replies2 categoryStyleGroups];
        }

        else
        {
          [replies2 semanticClasses];
        }
        replies3 = ;
        v27 = [replies3 objectAtIndexedSubscript:index];
        v26 = [v27 count];
      }

      else
      {
        replies3 = [v33 replies];
        v26 = [replies3 replyCountForIndex:index];
      }

      v28 = vcvtpd_u64_f64(v22 * v18);
      if (v26 < v28)
      {
        v28 = v26;
      }

      if (count - v17 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = count - v17;
      }

      v30 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v29];
      [v16 addObject:v30];

      if (v19 >= v12)
      {
        break;
      }

      v17 += v29;
      ++v19;
    }

    while (v17 < count);
  }

  return v16;
}

@end