@interface SGQuickResponsesReplyOption
+ (double)totalDisplayedCountForRecords:(id)a3;
+ (double)ucbCombinedForSelected:(double)a3 displayed:(double)a4 actualOptionsDisplayed:(double)a5 matched:(double)a6 imputedDisplayed:(double)a7 imputedOptionsDisplayed:(double)a8 explorationFactor:(double)a9;
+ (double)ucbCombinedWithMeanA:(double)a3 meanB:(double)a4 varianceA:(double)a5 varianceB:(double)a6 explorationFactor:(double)a7;
+ (double)ucbTunedVarianceForMean:(double)a3 displayed:(double)a4 totalDisplayed:(double)a5;
+ (double)ucbWithMean:(double)a3 varianceOfMean:(double)a4 explorationFactor:(double)a5;
+ (id)imputedDisplayedForRecords:(id)a3 config:(id)a4;
+ (id)sortedReplyOptionsForRecords:(id)a3 config:(id)a4;
- (SGQuickResponsesReplyOption)initWithPosition:(unint64_t)a3 records:(id)a4 actualOptionsDisplayedCount:(double)a5 imputedOptionsDisplayedCount:(double)a6 imputedOptionsDisplayed:(id)a7 config:(id)a8;
- (int64_t)compare:(id)a3;
@end

@implementation SGQuickResponsesReplyOption

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(SGQuickResponsesReplyOption *)self ucb];
  v6 = [v4 ucb];
  v7 = [v5 isEqualToNumber:v6];

  if (v7)
  {
    v8 = [(SGQuickResponsesReplyOption *)self position];
    [v4 position];
  }

  else
  {
    v8 = [v4 ucb];
    [(SGQuickResponsesReplyOption *)self ucb];
  }
  v9 = ;
  v10 = [v8 compare:v9];

  return v10;
}

- (SGQuickResponsesReplyOption)initWithPosition:(unint64_t)a3 records:(id)a4 actualOptionsDisplayedCount:(double)a5 imputedOptionsDisplayedCount:(double)a6 imputedOptionsDisplayed:(id)a7 config:(id)a8
{
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v38.receiver = self;
  v38.super_class = SGQuickResponsesReplyOption;
  v17 = [(SGQuickResponsesReplyOption *)&v38 init];
  if (v17)
  {
    v18 = [v14 replyRecords];
    v19 = [v18 objectAtIndexedSubscript:a3];

    [v19 selected];
    v21 = v20;
    [v19 displayed];
    v23 = v22;
    [v19 matched];
    v25 = v24;
    v26 = [v15 objectAtIndexedSubscript:a3];
    [v26 doubleValue];
    v28 = v27;
    v29 = [v16 predictionParams];
    [v29 personalizationExplorationFactor];
    [SGQuickResponsesReplyOption ucbCombinedForSelected:v21 displayed:v23 actualOptionsDisplayed:a5 matched:v25 imputedDisplayed:v28 imputedOptionsDisplayed:a6 explorationFactor:v30];
    v32 = v31;

    v33 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
    position = v17->_position;
    v17->_position = v33;

    v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v32];
    ucb = v17->_ucb;
    v17->_ucb = v35;
  }

  return v17;
}

+ (id)imputedDisplayedForRecords:(id)a3 config:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 totalDisplayed];
  v6 = v5;
  [v4 totalSelected];
  v8 = v7;
  [v4 totalUnmatched];
  v10 = v9;
  v11 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [v4 replyRecords];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = fmax(v6 - v8, 0.0);
    v16 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        [v18 displayed];
        v20 = v19;
        [v18 selected];
        v22 = v21;
        [v18 matched];
        v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v23 + v10 * ((v20 - v22) / v15)];
        [v11 addObject:v24];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (double)totalDisplayedCountForRecords:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 replyRecords];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) displayed];
        v7 = v7 + v9;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)sortedReplyOptionsForRecords:(id)a3 config:(id)a4
{
  v5 = a3;
  v6 = a4;
  [SGQuickResponsesReplyOption totalDisplayedCountForRecords:v5];
  v8 = v7;
  v9 = [SGQuickResponsesReplyOption imputedDisplayedForRecords:v5 config:v6];
  v10 = [v9 valueForKeyPath:@"@sum.self"];
  [v10 doubleValue];
  v12 = v11;

  v13 = objc_opt_new();
  v14 = [v5 replyRecords];
  v15 = [v14 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [[SGQuickResponsesReplyOption alloc] initWithPosition:v16 records:v5 actualOptionsDisplayedCount:v9 imputedOptionsDisplayedCount:v6 imputedOptionsDisplayed:v8 config:v12];
      [v13 addObject:v17];

      ++v16;
      v18 = [v5 replyRecords];
      v19 = [v18 count];
    }

    while (v16 < v19);
  }

  [v13 sortUsingSelector:sel_compare_];

  return v13;
}

+ (double)ucbCombinedForSelected:(double)a3 displayed:(double)a4 actualOptionsDisplayed:(double)a5 matched:(double)a6 imputedDisplayed:(double)a7 imputedOptionsDisplayed:(double)a8 explorationFactor:(double)a9
{
  v12 = a3 / a4;
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  if (a6 / a7 <= 1.0)
  {
    v14 = a6 / a7;
  }

  else
  {
    v14 = 1.0;
  }

  [SGQuickResponsesReplyOption ucbTunedVarianceForMean:"ucbTunedVarianceForMean:displayed:totalDisplayed:" displayed:v13 totalDisplayed:?];
  v16 = v15;
  [SGQuickResponsesReplyOption ucbTunedVarianceForMean:v14 displayed:a7 totalDisplayed:a8];

  [SGQuickResponsesReplyOption ucbCombinedWithMeanA:v13 meanB:v14 varianceA:v16 varianceB:v17 explorationFactor:a9];
  return result;
}

+ (double)ucbCombinedWithMeanA:(double)a3 meanB:(double)a4 varianceA:(double)a5 varianceB:(double)a6 explorationFactor:(double)a7
{
  v7 = 1.0 / a5 / (1.0 / a5 + 1.0 / a6);
  [SGQuickResponsesReplyOption ucbWithMean:(1.0 - v7) * a4 + v7 * a3 varianceOfMean:(1.0 - v7) * a6 + v7 * a5 + v7 * (1.0 - v7) * ((a3 - a4) * (a3 - a4)) explorationFactor:a7];
  return result;
}

+ (double)ucbWithMean:(double)a3 varianceOfMean:(double)a4 explorationFactor:(double)a5
{
  result = sqrt(a4) * a5 + a3;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

+ (double)ucbTunedVarianceForMean:(double)a3 displayed:(double)a4 totalDisplayed:(double)a5
{
  v5 = (1.0 - a3) * a3;
  v6 = log(a5) / a4;
  v7 = v5 + sqrt(v6 + v6);
  if (v7 > 0.25)
  {
    v7 = 0.25;
  }

  return v6 * v7;
}

@end