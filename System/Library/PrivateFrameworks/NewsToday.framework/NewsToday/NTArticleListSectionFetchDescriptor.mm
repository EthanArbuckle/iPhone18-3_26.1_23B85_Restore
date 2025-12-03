@interface NTArticleListSectionFetchDescriptor
- (NTArticleListSectionFetchDescriptor)init;
- (NTArticleListSectionFetchDescriptor)initWithArticleListConfiguration:(id)configuration;
- (id)assembleResultsWithCatchUpOperation:(id)operation;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer;
- (void)configureCatchUpOperationWithFetchRequest:(id)request;
@end

@implementation NTArticleListSectionFetchDescriptor

- (NTArticleListSectionFetchDescriptor)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTArticleListSectionFetchDescriptor init]";
    v10 = 2080;
    v11 = "NTArticleListSectionFetchDescriptor.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTArticleListSectionFetchDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTArticleListSectionFetchDescriptor)initWithArticleListConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTArticleListSectionFetchDescriptor initWithArticleListConfiguration:];
  }

  v9.receiver = self;
  v9.super_class = NTArticleListSectionFetchDescriptor;
  v5 = [(NTArticleListSectionFetchDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    articleListRequest = v5->_articleListRequest;
    v5->_articleListRequest = v6;
  }

  return v5;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)request
{
  requestCopy = request;
  articleListRequest = [(NTArticleListSectionFetchDescriptor *)self articleListRequest];
  [requestCopy addArticleListRequest:articleListRequest];
}

- (id)assembleResultsWithCatchUpOperation:(id)operation
{
  resultsByArticleListID = [operation resultsByArticleListID];
  articleListRequest = [(NTArticleListSectionFetchDescriptor *)self articleListRequest];
  articleListID = [articleListRequest articleListID];
  v7 = [resultsByArticleListID objectForKeyedSubscript:articleListID];

  return v7;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer
{
  v3 = [MEMORY[0x277D31040] transformationWithSortMethod:0];
  v4 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v3];

  return v4;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items
{
  v5 = [MEMORY[0x277D31018] transformationWithLimit:limit];
  v6 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v5];

  return v6;
}

- (void)initWithArticleListConfiguration:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articleListConfiguration"];
  *buf = 136315906;
  v3 = "[NTArticleListSectionFetchDescriptor initWithArticleListConfiguration:]";
  v4 = 2080;
  v5 = "NTArticleListSectionFetchDescriptor.m";
  v6 = 1024;
  v7 = 29;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end