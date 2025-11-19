@interface NTPersonalizedSectionFetchDescriptor
- (NTPersonalizedSectionFetchDescriptor)init;
- (NTPersonalizedSectionFetchDescriptor)initWithPersonalizedConfiguration:(id)a3;
- (id)assembleResultsWithCatchUpOperation:(id)a3;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3;
- (void)configureCatchUpOperationWithFetchRequest:(id)a3;
@end

@implementation NTPersonalizedSectionFetchDescriptor

- (NTPersonalizedSectionFetchDescriptor)init
{
  v3.receiver = self;
  v3.super_class = NTPersonalizedSectionFetchDescriptor;
  return [(NTPersonalizedSectionFetchDescriptor *)&v3 init];
}

- (NTPersonalizedSectionFetchDescriptor)initWithPersonalizedConfiguration:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionFetchDescriptor initWithPersonalizedConfiguration:];
  }

  v18.receiver = self;
  v18.super_class = NTPersonalizedSectionFetchDescriptor;
  v5 = [(NTPersonalizedSectionFetchDescriptor *)&v18 init];
  if (v5)
  {
    v6 = [v4 copy];
    personalizedConfiguration = v5->_personalizedConfiguration;
    v5->_personalizedConfiguration = v6;

    v8 = [v4 mandatoryArticles];
    v9 = v8;
    v10 = MEMORY[0x277CBEBF8];
    if (!v8)
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v11 = NTArticleIDsRequestWithArticles(v8);
    mandatoryArticleIDsRequest = v5->_mandatoryArticleIDsRequest;
    v5->_mandatoryArticleIDsRequest = v11;

    v13 = [v4 personalizedArticles];
    v14 = v13;
    if (!v13)
    {
      v13 = v10;
    }

    v15 = NTArticleIDsRequestWithArticles(v13);
    personalizedArticleIDsRequest = v5->_personalizedArticleIDsRequest;
    v5->_personalizedArticleIDsRequest = v15;
  }

  return v5;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [(NTPersonalizedSectionFetchDescriptor *)self mandatoryArticleIDsRequest];
  [v4 addArticleIDsRequest:v5];

  v6 = [(NTPersonalizedSectionFetchDescriptor *)self personalizedArticleIDsRequest];
  [v4 addArticleIDsRequest:v6];
}

- (id)assembleResultsWithCatchUpOperation:(id)a3
{
  v4 = [a3 resultsByArticleIDsRequestID];
  v5 = [(NTPersonalizedSectionFetchDescriptor *)self mandatoryArticleIDsRequest];
  v6 = [v5 identifier];
  v7 = [v4 objectForKeyedSubscript:v6];

  v8 = [(NTPersonalizedSectionFetchDescriptor *)self personalizedArticleIDsRequest];
  v9 = [v8 identifier];
  v10 = [v4 objectForKeyedSubscript:v9];

  v11 = [v7 resultsByCombiningWithResults:v10];

  return v11;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3
{
  v4 = [MEMORY[0x277D31038] transformationWithPersonalizer:a3 feedItemScores:0 sortOptions:2 configurationSet:16];
  v5 = [NTPersonalizedSectionSortTransformation alloc];
  v6 = [(NTPersonalizedSectionFetchDescriptor *)self mandatoryArticleIDsRequest];
  v7 = [v6 articleIDs];
  v8 = [(NTPersonalizedSectionFetchDescriptor *)self personalizedArticleIDsRequest];
  v9 = [v8 articleIDs];
  v10 = [(NTPersonalizedSectionSortTransformation *)v5 initWithMandatoryArticleIDs:v7 personalizedArticleIDs:v9 sortTransformation:v4];

  v11 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v10];

  return v11;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5
{
  v7 = a5;
  v8 = [(NTPersonalizedSectionFetchDescriptor *)self personalizedConfiguration];
  v9 = [v8 maxArticlesShown];
  v10 = [v7 count];

  v11 = v9 - v10;
  v12 = [NTPersonalizedSectionLimitTransformation alloc];
  v13 = [(NTPersonalizedSectionFetchDescriptor *)self mandatoryArticleIDsRequest];
  v14 = [v13 articleIDs];
  v15 = [(NTPersonalizedSectionFetchDescriptor *)self personalizedArticleIDsRequest];
  v16 = [v15 articleIDs];
  if (v11 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v11;
  }

  v18 = [(NTPersonalizedSectionLimitTransformation *)v12 initWithMandatoryArticleIDs:v14 personalizedArticleIDs:v16 limit:v17];

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