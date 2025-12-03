@interface SGQuickResponsesReplyOption
+ (double)totalDisplayedCountForRecords:(id)records;
+ (double)ucbCombinedForSelected:(double)selected displayed:(double)displayed actualOptionsDisplayed:(double)optionsDisplayed matched:(double)matched imputedDisplayed:(double)imputedDisplayed imputedOptionsDisplayed:(double)imputedOptionsDisplayed explorationFactor:(double)factor;
+ (double)ucbCombinedWithMeanA:(double)a meanB:(double)b varianceA:(double)varianceA varianceB:(double)varianceB explorationFactor:(double)factor;
+ (double)ucbTunedVarianceForMean:(double)mean displayed:(double)displayed totalDisplayed:(double)totalDisplayed;
+ (double)ucbWithMean:(double)mean varianceOfMean:(double)ofMean explorationFactor:(double)factor;
+ (id)imputedDisplayedForRecords:(id)records config:(id)config;
+ (id)sortedReplyOptionsForRecords:(id)records config:(id)config;
- (SGQuickResponsesReplyOption)initWithPosition:(unint64_t)position records:(id)records actualOptionsDisplayedCount:(double)count imputedOptionsDisplayedCount:(double)displayedCount imputedOptionsDisplayed:(id)displayed config:(id)config;
- (int64_t)compare:(id)compare;
@end

@implementation SGQuickResponsesReplyOption

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = [(SGQuickResponsesReplyOption *)self ucb];
  v6 = [compareCopy ucb];
  v7 = [v5 isEqualToNumber:v6];

  if (v7)
  {
    position = [(SGQuickResponsesReplyOption *)self position];
    [compareCopy position];
  }

  else
  {
    position = [compareCopy ucb];
    [(SGQuickResponsesReplyOption *)self ucb];
  }
  v9 = ;
  v10 = [position compare:v9];

  return v10;
}

- (SGQuickResponsesReplyOption)initWithPosition:(unint64_t)position records:(id)records actualOptionsDisplayedCount:(double)count imputedOptionsDisplayedCount:(double)displayedCount imputedOptionsDisplayed:(id)displayed config:(id)config
{
  recordsCopy = records;
  displayedCopy = displayed;
  configCopy = config;
  v38.receiver = self;
  v38.super_class = SGQuickResponsesReplyOption;
  v17 = [(SGQuickResponsesReplyOption *)&v38 init];
  if (v17)
  {
    replyRecords = [recordsCopy replyRecords];
    v19 = [replyRecords objectAtIndexedSubscript:position];

    [v19 selected];
    v21 = v20;
    [v19 displayed];
    v23 = v22;
    [v19 matched];
    v25 = v24;
    v26 = [displayedCopy objectAtIndexedSubscript:position];
    [v26 doubleValue];
    v28 = v27;
    predictionParams = [configCopy predictionParams];
    [predictionParams personalizationExplorationFactor];
    [SGQuickResponsesReplyOption ucbCombinedForSelected:v21 displayed:v23 actualOptionsDisplayed:count matched:v25 imputedDisplayed:v28 imputedOptionsDisplayed:displayedCount explorationFactor:v30];
    v32 = v31;

    v33 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:position];
    position = v17->_position;
    v17->_position = v33;

    v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v32];
    ucb = v17->_ucb;
    v17->_ucb = v35;
  }

  return v17;
}

+ (id)imputedDisplayedForRecords:(id)records config:(id)config
{
  v32 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  [recordsCopy totalDisplayed];
  v6 = v5;
  [recordsCopy totalSelected];
  v8 = v7;
  [recordsCopy totalUnmatched];
  v10 = v9;
  v11 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  replyRecords = [recordsCopy replyRecords];
  v13 = [replyRecords countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(replyRecords);
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

      v14 = [replyRecords countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (double)totalDisplayedCountForRecords:(id)records
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  replyRecords = [records replyRecords];
  v4 = [replyRecords countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(replyRecords);
        }

        [*(*(&v12 + 1) + 8 * i) displayed];
        v7 = v7 + v9;
      }

      v5 = [replyRecords countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (id)sortedReplyOptionsForRecords:(id)records config:(id)config
{
  recordsCopy = records;
  configCopy = config;
  [SGQuickResponsesReplyOption totalDisplayedCountForRecords:recordsCopy];
  v8 = v7;
  v9 = [SGQuickResponsesReplyOption imputedDisplayedForRecords:recordsCopy config:configCopy];
  v10 = [v9 valueForKeyPath:@"@sum.self"];
  [v10 doubleValue];
  v12 = v11;

  v13 = objc_opt_new();
  replyRecords = [recordsCopy replyRecords];
  v15 = [replyRecords count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [[SGQuickResponsesReplyOption alloc] initWithPosition:v16 records:recordsCopy actualOptionsDisplayedCount:v9 imputedOptionsDisplayedCount:configCopy imputedOptionsDisplayed:v8 config:v12];
      [v13 addObject:v17];

      ++v16;
      replyRecords2 = [recordsCopy replyRecords];
      v19 = [replyRecords2 count];
    }

    while (v16 < v19);
  }

  [v13 sortUsingSelector:sel_compare_];

  return v13;
}

+ (double)ucbCombinedForSelected:(double)selected displayed:(double)displayed actualOptionsDisplayed:(double)optionsDisplayed matched:(double)matched imputedDisplayed:(double)imputedDisplayed imputedOptionsDisplayed:(double)imputedOptionsDisplayed explorationFactor:(double)factor
{
  v12 = selected / displayed;
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  if (matched / imputedDisplayed <= 1.0)
  {
    v14 = matched / imputedDisplayed;
  }

  else
  {
    v14 = 1.0;
  }

  [SGQuickResponsesReplyOption ucbTunedVarianceForMean:"ucbTunedVarianceForMean:displayed:totalDisplayed:" displayed:v13 totalDisplayed:?];
  v16 = v15;
  [SGQuickResponsesReplyOption ucbTunedVarianceForMean:v14 displayed:imputedDisplayed totalDisplayed:imputedOptionsDisplayed];

  [SGQuickResponsesReplyOption ucbCombinedWithMeanA:v13 meanB:v14 varianceA:v16 varianceB:v17 explorationFactor:factor];
  return result;
}

+ (double)ucbCombinedWithMeanA:(double)a meanB:(double)b varianceA:(double)varianceA varianceB:(double)varianceB explorationFactor:(double)factor
{
  v7 = 1.0 / varianceA / (1.0 / varianceA + 1.0 / varianceB);
  [SGQuickResponsesReplyOption ucbWithMean:(1.0 - v7) * b + v7 * a varianceOfMean:(1.0 - v7) * varianceB + v7 * varianceA + v7 * (1.0 - v7) * ((a - b) * (a - b)) explorationFactor:factor];
  return result;
}

+ (double)ucbWithMean:(double)mean varianceOfMean:(double)ofMean explorationFactor:(double)factor
{
  result = sqrt(ofMean) * factor + mean;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

+ (double)ucbTunedVarianceForMean:(double)mean displayed:(double)displayed totalDisplayed:(double)totalDisplayed
{
  v5 = (1.0 - mean) * mean;
  v6 = log(totalDisplayed) / displayed;
  v7 = v5 + sqrt(v6 + v6);
  if (v7 > 0.25)
  {
    v7 = 0.25;
  }

  return v6 * v7;
}

@end