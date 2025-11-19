@interface NTCatchUpOperationResults
- (BOOL)isEqual:(id)a3;
- (NTCatchUpOperationResults)init;
- (NTCatchUpOperationResults)initWithFeedItems:(id)a3 supplementalInterestToken:(id)a4 feedContextByFeedID:(id)a5;
- (NTCatchUpOperationResults)initWithHeadlines:(id)a3 rankingFeedback:(id)a4 actionURLsByArticleID:(id)a5;
- (NTCatchUpOperationResults)initWithItems:(id)a3 rankingFeedback:(id)a4 supplementalInterestToken:(id)a5;
- (id)copyWithItems:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)resultsByCombiningWithResults:(id)a3;
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

- (NTCatchUpOperationResults)initWithHeadlines:(id)a3 rankingFeedback:(id)a4 actionURLsByArticleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults initWithHeadlines:rankingFeedback:actionURLsByArticleID:];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__NTCatchUpOperationResults_initWithHeadlines_rankingFeedback_actionURLsByArticleID___block_invoke;
  v15[3] = &unk_279982E70;
  v16 = v10;
  v11 = v10;
  v12 = [v8 fc_arrayByTransformingWithBlock:v15];
  v13 = [(NTCatchUpOperationResults *)self initWithItems:v12 rankingFeedback:v9 supplementalInterestToken:0];

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

- (NTCatchUpOperationResults)initWithFeedItems:(id)a3 supplementalInterestToken:(id)a4 feedContextByFeedID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults initWithFeedItems:supplementalInterestToken:feedContextByFeedID:];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__NTCatchUpOperationResults_initWithFeedItems_supplementalInterestToken_feedContextByFeedID___block_invoke;
  v15[3] = &unk_279982E98;
  v16 = v10;
  v11 = v10;
  v12 = [v8 fc_arrayByTransformingWithBlock:v15];
  v13 = [(NTCatchUpOperationResults *)self initWithItems:v12 rankingFeedback:0 supplementalInterestToken:v9];

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

- (NTCatchUpOperationResults)initWithItems:(id)a3 rankingFeedback:(id)a4 supplementalInterestToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults initWithItems:rankingFeedback:supplementalInterestToken:];
  }

  v17.receiver = self;
  v17.super_class = NTCatchUpOperationResults;
  v11 = [(NTCatchUpOperationResults *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    items = v11->_items;
    v11->_items = v12;

    v14 = [v9 copy];
    rankingFeedback = v11->_rankingFeedback;
    v11->_rankingFeedback = v14;

    objc_storeStrong(&v11->_supplementalInterestToken, a5);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NTCatchUpOperationResults allocWithZone:a3];
  v5 = [(NTCatchUpOperationResults *)self items];
  v6 = [(NTCatchUpOperationResults *)self rankingFeedback];
  v7 = [(NTCatchUpOperationResults *)self supplementalInterestToken];
  v8 = [(NTCatchUpOperationResults *)v4 initWithItems:v5 rankingFeedback:v6 supplementalInterestToken:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    v6 = [(NTCatchUpOperationResults *)self items];
    v7 = [v5 items];
    if ([v6 isEqual:v7])
    {
      v8 = [(NTCatchUpOperationResults *)self rankingFeedback];
      v9 = [v5 rankingFeedback];
      v10 = [v8 isEqual:v9];
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
  v3 = [(NTCatchUpOperationResults *)self items];
  v4 = [v3 hash];
  v5 = [(NTCatchUpOperationResults *)self rankingFeedback];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithItems:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults copyWithItems:];
  }

  v5 = [NTCatchUpOperationResults alloc];
  v6 = [(NTCatchUpOperationResults *)self rankingFeedback];
  v7 = [(NTCatchUpOperationResults *)self supplementalInterestToken];
  v8 = [(NTCatchUpOperationResults *)v5 initWithItems:v4 rankingFeedback:v6 supplementalInterestToken:v7];

  return v8;
}

- (id)resultsByCombiningWithResults:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults resultsByCombiningWithResults:];
  }

  v5 = [(NTCatchUpOperationResults *)self rankingFeedback];

  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults resultsByCombiningWithResults:];
  }

  v6 = [v4 rankingFeedback];

  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationResults resultsByCombiningWithResults:];
  }

  v7 = [NTCatchUpOperationResults alloc];
  v8 = MEMORY[0x277CBEA60];
  v9 = [v4 items];
  v10 = [(NTCatchUpOperationResults *)self items];
  v11 = [v8 fc_arrayByAddingObjectsFromArray:v9 toArray:v10];
  v12 = [(NTCatchUpOperationResults *)self supplementalInterestToken];
  v13 = [(NTCatchUpOperationResults *)v7 initWithItems:v11 rankingFeedback:0 supplementalInterestToken:v12];

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