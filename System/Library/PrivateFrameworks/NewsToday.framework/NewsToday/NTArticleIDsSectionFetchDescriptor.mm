@interface NTArticleIDsSectionFetchDescriptor
- (NTArticleIDsSectionFetchDescriptor)init;
- (NTArticleIDsSectionFetchDescriptor)initWithArticleIDsConfiguration:(id)configuration;
- (id)assembleResultsWithCatchUpOperation:(id)operation;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer;
- (void)configureCatchUpOperationWithFetchRequest:(id)request;
@end

@implementation NTArticleIDsSectionFetchDescriptor

- (NTArticleIDsSectionFetchDescriptor)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTArticleIDsSectionFetchDescriptor init]";
    v10 = 2080;
    v11 = "NTArticleIDsSectionFetchDescriptor.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTArticleIDsSectionFetchDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTArticleIDsSectionFetchDescriptor)initWithArticleIDsConfiguration:(id)configuration
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTArticleIDsSectionFetchDescriptor initWithArticleIDsConfiguration:];
  }

  v22.receiver = self;
  v22.super_class = NTArticleIDsSectionFetchDescriptor;
  v5 = [(NTArticleIDsSectionFetchDescriptor *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    articles = [configurationCopy articles];
    v8 = [articles countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(articles);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = objc_opt_new();
          [v13 setItemType:0];
          [v13 setArticle:v12];
          [v6 addItems:v13];
        }

        v9 = [articles countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    v14 = [[NTItemsSectionFetchDescriptor alloc] initWithItemsConfiguration:v6];
    privateFetchDescriptor = v5->_privateFetchDescriptor;
    v5->_privateFetchDescriptor = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)request
{
  requestCopy = request;
  privateFetchDescriptor = [(NTArticleIDsSectionFetchDescriptor *)self privateFetchDescriptor];
  [privateFetchDescriptor configureCatchUpOperationWithFetchRequest:requestCopy];
}

- (id)assembleResultsWithCatchUpOperation:(id)operation
{
  operationCopy = operation;
  privateFetchDescriptor = [(NTArticleIDsSectionFetchDescriptor *)self privateFetchDescriptor];
  v6 = [privateFetchDescriptor assembleResultsWithCatchUpOperation:operationCopy];

  return v6;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer
{
  personalizerCopy = personalizer;
  privateFetchDescriptor = [(NTArticleIDsSectionFetchDescriptor *)self privateFetchDescriptor];
  v6 = [privateFetchDescriptor incrementalSortTransformationWithFeedPersonalizer:personalizerCopy];

  return v6;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items
{
  itemsCopy = items;
  personalizerCopy = personalizer;
  privateFetchDescriptor = [(NTArticleIDsSectionFetchDescriptor *)self privateFetchDescriptor];
  v11 = [privateFetchDescriptor incrementalLimitTransformationWithFeedPersonalizer:personalizerCopy limit:limit priorFeedItems:itemsCopy];

  return v11;
}

- (void)initWithArticleIDsConfiguration:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articleIDsConfiguration"];
  *buf = 136315906;
  v3 = "[NTArticleIDsSectionFetchDescriptor initWithArticleIDsConfiguration:]";
  v4 = 2080;
  v5 = "NTArticleIDsSectionFetchDescriptor.m";
  v6 = 1024;
  v7 = 29;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end