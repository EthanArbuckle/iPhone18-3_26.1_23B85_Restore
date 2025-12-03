@interface NTPersonalizedSectionFetchDescriptor
- (NTPersonalizedSectionFetchDescriptor)init;
- (NTPersonalizedSectionFetchDescriptor)initWithPersonalizedConfiguration:(id)configuration;
- (id)assembleResultsWithCatchUpOperation:(id)operation;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer;
- (void)configureCatchUpOperationWithFetchRequest:(id)request;
@end

@implementation NTPersonalizedSectionFetchDescriptor

- (NTPersonalizedSectionFetchDescriptor)init
{
  v3.receiver = self;
  v3.super_class = NTPersonalizedSectionFetchDescriptor;
  return [(NTPersonalizedSectionFetchDescriptor *)&v3 init];
}

- (NTPersonalizedSectionFetchDescriptor)initWithPersonalizedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionFetchDescriptor initWithPersonalizedConfiguration:];
  }

  v18.receiver = self;
  v18.super_class = NTPersonalizedSectionFetchDescriptor;
  v5 = [(NTPersonalizedSectionFetchDescriptor *)&v18 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    personalizedConfiguration = v5->_personalizedConfiguration;
    v5->_personalizedConfiguration = v6;

    mandatoryArticles = [configurationCopy mandatoryArticles];
    v9 = mandatoryArticles;
    v10 = MEMORY[0x277CBEBF8];
    if (!mandatoryArticles)
    {
      mandatoryArticles = MEMORY[0x277CBEBF8];
    }

    v11 = NTArticleIDsRequestWithArticles(mandatoryArticles);
    mandatoryArticleIDsRequest = v5->_mandatoryArticleIDsRequest;
    v5->_mandatoryArticleIDsRequest = v11;

    personalizedArticles = [configurationCopy personalizedArticles];
    v14 = personalizedArticles;
    if (!personalizedArticles)
    {
      personalizedArticles = v10;
    }

    v15 = NTArticleIDsRequestWithArticles(personalizedArticles);
    personalizedArticleIDsRequest = v5->_personalizedArticleIDsRequest;
    v5->_personalizedArticleIDsRequest = v15;
  }

  return v5;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)request
{
  requestCopy = request;
  mandatoryArticleIDsRequest = [(NTPersonalizedSectionFetchDescriptor *)self mandatoryArticleIDsRequest];
  [requestCopy addArticleIDsRequest:mandatoryArticleIDsRequest];

  personalizedArticleIDsRequest = [(NTPersonalizedSectionFetchDescriptor *)self personalizedArticleIDsRequest];
  [requestCopy addArticleIDsRequest:personalizedArticleIDsRequest];
}

- (id)assembleResultsWithCatchUpOperation:(id)operation
{
  resultsByArticleIDsRequestID = [operation resultsByArticleIDsRequestID];
  mandatoryArticleIDsRequest = [(NTPersonalizedSectionFetchDescriptor *)self mandatoryArticleIDsRequest];
  identifier = [mandatoryArticleIDsRequest identifier];
  v7 = [resultsByArticleIDsRequestID objectForKeyedSubscript:identifier];

  personalizedArticleIDsRequest = [(NTPersonalizedSectionFetchDescriptor *)self personalizedArticleIDsRequest];
  identifier2 = [personalizedArticleIDsRequest identifier];
  v10 = [resultsByArticleIDsRequestID objectForKeyedSubscript:identifier2];

  v11 = [v7 resultsByCombiningWithResults:v10];

  return v11;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer
{
  v4 = [MEMORY[0x277D31038] transformationWithPersonalizer:personalizer feedItemScores:0 sortOptions:2 configurationSet:16];
  v5 = [NTPersonalizedSectionSortTransformation alloc];
  mandatoryArticleIDsRequest = [(NTPersonalizedSectionFetchDescriptor *)self mandatoryArticleIDsRequest];
  articleIDs = [mandatoryArticleIDsRequest articleIDs];
  personalizedArticleIDsRequest = [(NTPersonalizedSectionFetchDescriptor *)self personalizedArticleIDsRequest];
  articleIDs2 = [personalizedArticleIDsRequest articleIDs];
  v10 = [(NTPersonalizedSectionSortTransformation *)v5 initWithMandatoryArticleIDs:articleIDs personalizedArticleIDs:articleIDs2 sortTransformation:v4];

  v11 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v10];

  return v11;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items
{
  itemsCopy = items;
  personalizedConfiguration = [(NTPersonalizedSectionFetchDescriptor *)self personalizedConfiguration];
  maxArticlesShown = [personalizedConfiguration maxArticlesShown];
  v10 = [itemsCopy count];

  v11 = maxArticlesShown - v10;
  v12 = [NTPersonalizedSectionLimitTransformation alloc];
  mandatoryArticleIDsRequest = [(NTPersonalizedSectionFetchDescriptor *)self mandatoryArticleIDsRequest];
  articleIDs = [mandatoryArticleIDsRequest articleIDs];
  personalizedArticleIDsRequest = [(NTPersonalizedSectionFetchDescriptor *)self personalizedArticleIDsRequest];
  articleIDs2 = [personalizedArticleIDsRequest articleIDs];
  if (v11 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v11;
  }

  v18 = [(NTPersonalizedSectionLimitTransformation *)v12 initWithMandatoryArticleIDs:articleIDs personalizedArticleIDs:articleIDs2 limit:limitCopy];

  v19 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v18];

  return v19;
}

- (void)initWithPersonalizedConfiguration:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "personalizedConfiguration"];
  *buf = 136315906;
  v3 = "[NTPersonalizedSectionFetchDescriptor initWithPersonalizedConfiguration:]";
  v4 = 2080;
  v5 = "NTPersonalizedSectionFetchDescriptor.m";
  v6 = 1024;
  v7 = 34;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end