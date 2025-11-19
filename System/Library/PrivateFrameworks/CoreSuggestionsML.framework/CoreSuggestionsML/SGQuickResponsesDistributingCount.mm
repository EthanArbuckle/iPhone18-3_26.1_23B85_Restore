@interface SGQuickResponsesDistributingCount
+ (id)numResponsesForScores:(id)a3 responseCount:(unint64_t)a4 config:(id)a5;
+ (id)probsForClasses:(id)a3 withCount:(unint64_t)a4;
+ (unint64_t)responsesToFillForResponseCount:(unint64_t)a3 config:(id)a4;
+ (unint64_t)validClassesForClassCount:(unint64_t)a3 responseCount:(unint64_t)a4 config:(id)a5;
@end

@implementation SGQuickResponsesDistributingCount

+ (id)probsForClasses:(id)a3 withCount:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  if (a4)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v7];
      [v9 value];
      v8 = v8 + v10;

      ++v7;
    }

    while (a4 != v7);
    v11 = 0;
    do
    {
      v12 = [v5 objectAtIndexedSubscript:v11];
      [v12 value];
      v14 = v13 / v8;

      v15 = [SGQuickResponsesClassScore alloc];
      v16 = [v5 objectAtIndexedSubscript:v11];
      v17 = -[SGQuickResponsesClassScore initWithValue:index:](v15, "initWithValue:index:", [v16 index], v14);

      [v6 addObject:v17];
      ++v11;
    }

    while (a4 != v11);
  }

  return v6;
}

+ (unint64_t)responsesToFillForResponseCount:(unint64_t)a3 config:(id)a4
{
  v7 = a4;
  v8 = [v7 predictionParams];
  [v8 responsesBonus];
  v10 = v9;

  v11 = [v7 replies];

  v12 = [v11 maxDistinctReplies];
  v13 = (v10 * ((v12 - a3) & ~((v12 - a3) >> 63)));
  if (v12 <= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v12;
  }

  v15 = v13 + a3;
  if (__CFADD__(v13, a3) || v15 > v14)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesRanking.m" lineNumber:276 description:{@"responsesToFill %d out of range [%d, %d]", v15, a3, v14}];
  }

  return v15;
}

+ (unint64_t)validClassesForClassCount:(unint64_t)a3 responseCount:(unint64_t)a4 config:(id)a5
{
  v8 = [a5 predictionParams];
  [v8 classDiscount];
  v10 = v9;

  v11 = vcvtpd_u64_f64((1.0 - v10) * (a3 - 1));
  v12 = v11 + 1;
  if (v11 >= a3)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesRanking.m" lineNumber:262 description:{@"validClasses %d out of range [1, %d]", v12, a3}];
  }

  return v12;
}

+ (id)numResponsesForScores:(id)a3 responseCount:(unint64_t)a4 config:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v8 replies];
  }

  else
  {
    v11 = 0;
  }

  v12 = +[SGQuickResponsesDistributingCount validClassesForClassCount:responseCount:config:](SGQuickResponsesDistributingCount, "validClassesForClassCount:responseCount:config:", [v7 count], a4, v8);
  v13 = [SGQuickResponsesDistributingCount responsesToFillForResponseCount:a4 config:v8];
  v32 = v7;
  v14 = [SGQuickResponsesDistributingCount probsForClasses:v7 withCount:v12];
  v33 = v8;
  v15 = [v8 predictionParams];
  v34 = [v15 isPerCategory];

  v16 = objc_opt_new();
  if (v12 && a4)
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
      v24 = [v23 index];

      if (v11)
      {
        if (v34)
        {
          [v11 categoryStyleGroups];
        }

        else
        {
          [v11 semanticClasses];
        }
        v25 = ;
        v27 = [v25 objectAtIndexedSubscript:v24];
        v26 = [v27 count];
      }

      else
      {
        v25 = [v33 replies];
        v26 = [v25 replyCountForIndex:v24];
      }

      v28 = vcvtpd_u64_f64(v22 * v18);
      if (v26 < v28)
      {
        v28 = v26;
      }

      if (a4 - v17 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = a4 - v17;
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

    while (v17 < a4);
  }

  return v16;
}

@end