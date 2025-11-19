@interface NTItemsSectionFetchDescriptor
- (NTItemsSectionFetchDescriptor)init;
- (NTItemsSectionFetchDescriptor)initWithItemsConfiguration:(id)a3;
- (id)assembleResultsWithCatchUpOperation:(id)a3;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3;
- (void)configureCatchUpOperationWithFetchRequest:(id)a3;
@end

@implementation NTItemsSectionFetchDescriptor

- (NTItemsSectionFetchDescriptor)init
{
  v3.receiver = self;
  v3.super_class = NTItemsSectionFetchDescriptor;
  return [(NTItemsSectionFetchDescriptor *)&v3 init];
}

- (NTItemsSectionFetchDescriptor)initWithItemsConfiguration:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTItemsSectionFetchDescriptor initWithItemsConfiguration:];
  }

  v24.receiver = self;
  v24.super_class = NTItemsSectionFetchDescriptor;
  v5 = [(NTItemsSectionFetchDescriptor *)&v24 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemsConfiguration = v5->_itemsConfiguration;
    v5->_itemsConfiguration = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [v4 items];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if (![v14 itemType])
          {
            v15 = [v14 article];
            [v8 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = NTArticleIDsRequestWithArticles(v8);
    itemsArticlesRequest = v5->_itemsArticlesRequest;
    v5->_itemsArticlesRequest = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [(NTItemsSectionFetchDescriptor *)self itemsArticlesRequest];
  [v4 addArticleIDsRequest:v5];
}

- (id)assembleResultsWithCatchUpOperation:(id)a3
{
  v4 = [a3 resultsByArticleIDsRequestID];
  v5 = [(NTItemsSectionFetchDescriptor *)self itemsArticlesRequest];
  v6 = [v5 identifier];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [NTCatchUpOperationResults alloc];
    v7 = [(NTCatchUpOperationResults *)v8 initWithItems:MEMORY[0x277CBEBF8] rankingFeedback:0 supplementalInterestToken:0];
  }

  v9 = [(NTItemsSectionFetchDescriptor *)self itemsConfiguration];
  v10 = [v9 items];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__NTItemsSectionFetchDescriptor_assembleResultsWithCatchUpOperation___block_invoke;
  v15[3] = &unk_279982D50;
  v16 = v7;
  v11 = v7;
  v12 = [v10 fc_arrayByTransformingWithBlock:v15];

  v13 = [(NTCatchUpOperationResults *)v11 copyWithItems:v12];

  return v13;
}

id __69__NTItemsSectionFetchDescriptor_assembleResultsWithCatchUpOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 itemType])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) items];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__NTItemsSectionFetchDescriptor_assembleResultsWithCatchUpOperation___block_invoke_2;
    v7[3] = &unk_279982D28;
    v8 = v3;
    v4 = [v5 fc_firstObjectPassingTest:v7];
  }

  return v4;
}

uint64_t __69__NTItemsSectionFetchDescriptor_assembleResultsWithCatchUpOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 feedTransformationItem];
  v4 = [v3 articleID];
  v5 = [*(a1 + 32) article];
  v6 = [v5 articleID];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3
{
  v3 = [[NTFeedTransformationLimit alloc] initWithLimit:-1];

  return v3;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5
{
  v5 = [[NTFeedTransformationLimit alloc] initWithLimit:a4];

  return v5;
}

- (void)initWithItemsConfiguration:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "itemsConfiguration"];
  *buf = 136315906;
  v3 = "[NTItemsSectionFetchDescriptor initWithItemsConfiguration:]";
  v4 = 2080;
  v5 = "NTItemsSectionFetchDescriptor.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end