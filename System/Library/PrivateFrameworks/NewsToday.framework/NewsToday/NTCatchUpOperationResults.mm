@interface NTCatchUpOperationResults
- (BOOL)isEqual:(id)equal;
- (NTCatchUpOperationResults)init;
- (NTCatchUpOperationResults)initWithFeedItems:(id)items supplementalInterestToken:(id)token feedContextByFeedID:(id)d;
- (NTCatchUpOperationResults)initWithHeadlines:(id)headlines rankingFeedback:(id)feedback actionURLsByArticleID:(id)d;
- (NTCatchUpOperationResults)initWithItems:(id)items rankingFeedback:(id)feedback supplementalInterestToken:(id)token;
- (id)copyWithItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resultsByCombiningWithResults:(id)results;
- (unint64_t)hash;
@end

@implementation NTCatchUpOperationResults

- (NTCatchUpOperationResults)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTCatchUpOperationResults init]";
    v10 = 2080;
    v11 = "NTCatchUpOperation.m";
    v12 = 1024;
    v13 = 33;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTCatchUpOperationResults init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTCatchUpOperationResults)initWithHeadlines:(id)headlines rankingFeedback:(id)feedback actionURLsByArticleID:(id)d
{
  headlinesCopy = headlines;
  feedbackCopy = feedback;
  dCopy = d;
  if (!headlinesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults initWithHeadlines:rankingFeedback:actionURLsByArticleID:];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__NTCatchUpOperationResults_initWithHeadlines_rankingFeedback_actionURLsByArticleID___block_invoke;
  v15[3] = &unk_279982E70;
  v16 = dCopy;
  v11 = dCopy;
  v12 = [headlinesCopy fc_arrayByTransformingWithBlock:v15];
  v13 = [(NTCatchUpOperationResults *)self initWithItems:v12 rankingFeedback:feedbackCopy supplementalInterestToken:0];

  return v13;
}

NTFeedTransformationHeadlineItem *__85__NTCatchUpOperationResults_initWithHeadlines_rankingFeedback_actionURLsByArticleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NTFeedTransformationHeadlineItem alloc];
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = *(a1 + 32);
  v7 = [v3 articleID];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [(NTFeedTransformationHeadlineItem *)v4 initWithHeadline:v3 cacheExpirationDate:v5 actionURL:v8];

  return v9;
}

- (NTCatchUpOperationResults)initWithFeedItems:(id)items supplementalInterestToken:(id)token feedContextByFeedID:(id)d
{
  itemsCopy = items;
  tokenCopy = token;
  dCopy = d;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults initWithFeedItems:supplementalInterestToken:feedContextByFeedID:];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__NTCatchUpOperationResults_initWithFeedItems_supplementalInterestToken_feedContextByFeedID___block_invoke;
  v15[3] = &unk_279982E98;
  v16 = dCopy;
  v11 = dCopy;
  v12 = [itemsCopy fc_arrayByTransformingWithBlock:v15];
  v13 = [(NTCatchUpOperationResults *)self initWithItems:v12 rankingFeedback:0 supplementalInterestToken:tokenCopy];

  return v13;
}

NTFeedTransformationFeedItem *__93__NTCatchUpOperationResults_initWithFeedItems_supplementalInterestToken_feedContextByFeedID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 feedID];
  v5 = [v2 fc_safeObjectForKey:v4];

  v6 = [NTFeedTransformationFeedItem alloc];
  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v5 channelID];
  v9 = [(NTFeedTransformationFeedItem *)v6 initWithFeedItem:v3 cacheExpirationDate:v7 surfacedByChannelID:v8];

  return v9;
}

- (NTCatchUpOperationResults)initWithItems:(id)items rankingFeedback:(id)feedback supplementalInterestToken:(id)token
{
  itemsCopy = items;
  feedbackCopy = feedback;
  tokenCopy = token;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults initWithItems:rankingFeedback:supplementalInterestToken:];
  }

  v17.receiver = self;
  v17.super_class = NTCatchUpOperationResults;
  v11 = [(NTCatchUpOperationResults *)&v17 init];
  if (v11)
  {
    v12 = [itemsCopy copy];
    items = v11->_items;
    v11->_items = v12;

    v14 = [feedbackCopy copy];
    rankingFeedback = v11->_rankingFeedback;
    v11->_rankingFeedback = v14;

    objc_storeStrong(&v11->_supplementalInterestToken, token);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NTCatchUpOperationResults allocWithZone:zone];
  items = [(NTCatchUpOperationResults *)self items];
  rankingFeedback = [(NTCatchUpOperationResults *)self rankingFeedback];
  supplementalInterestToken = [(NTCatchUpOperationResults *)self supplementalInterestToken];
  v8 = [(NTCatchUpOperationResults *)v4 initWithItems:items rankingFeedback:rankingFeedback supplementalInterestToken:supplementalInterestToken];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    items = [(NTCatchUpOperationResults *)self items];
    items2 = [v5 items];
    if ([items isEqual:items2])
    {
      rankingFeedback = [(NTCatchUpOperationResults *)self rankingFeedback];
      rankingFeedback2 = [v5 rankingFeedback];
      v10 = [rankingFeedback isEqual:rankingFeedback2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  items = [(NTCatchUpOperationResults *)self items];
  v4 = [items hash];
  rankingFeedback = [(NTCatchUpOperationResults *)self rankingFeedback];
  v6 = [rankingFeedback hash];

  return v6 ^ v4;
}

- (id)copyWithItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults copyWithItems:];
  }

  v5 = [NTCatchUpOperationResults alloc];
  rankingFeedback = [(NTCatchUpOperationResults *)self rankingFeedback];
  supplementalInterestToken = [(NTCatchUpOperationResults *)self supplementalInterestToken];
  v8 = [(NTCatchUpOperationResults *)v5 initWithItems:itemsCopy rankingFeedback:rankingFeedback supplementalInterestToken:supplementalInterestToken];

  return v8;
}

- (id)resultsByCombiningWithResults:(id)results
{
  resultsCopy = results;
  if (!resultsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults resultsByCombiningWithResults:];
  }

  rankingFeedback = [(NTCatchUpOperationResults *)self rankingFeedback];

  if (rankingFeedback && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults resultsByCombiningWithResults:];
  }

  rankingFeedback2 = [resultsCopy rankingFeedback];

  if (rankingFeedback2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults resultsByCombiningWithResults:];
  }

  v7 = [NTCatchUpOperationResults alloc];
  v8 = MEMORY[0x277CBEA60];
  items = [resultsCopy items];
  items2 = [(NTCatchUpOperationResults *)self items];
  v11 = [v8 fc_arrayByAddingObjectsFromArray:items toArray:items2];
  supplementalInterestToken = [(NTCatchUpOperationResults *)self supplementalInterestToken];
  v13 = [(NTCatchUpOperationResults *)v7 initWithItems:v11 rankingFeedback:0 supplementalInterestToken:supplementalInterestToken];

  return v13;
}

- (void)initWithHeadlines:rankingFeedback:actionURLsByArticleID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headlines", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeedItems:supplementalInterestToken:feedContextByFeedID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedItems", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithItems:rankingFeedback:supplementalInterestToken:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "items", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyWithItems:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "items", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resultsByCombiningWithResults:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "otherResults", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resultsByCombiningWithResults:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "self.rankingFeedback == nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resultsByCombiningWithResults:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "otherResults.rankingFeedback == nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end