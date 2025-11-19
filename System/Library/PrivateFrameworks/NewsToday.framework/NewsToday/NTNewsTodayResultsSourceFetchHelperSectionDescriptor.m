@interface NTNewsTodayResultsSourceFetchHelperSectionDescriptor
- (NSString)actionTitle;
- (NSString)backgroundColorDark;
- (NSString)backgroundColorLight;
- (NSString)backingTagID;
- (NSString)compactName;
- (NSString)identifier;
- (NSString)name;
- (NSString)nameColorDark;
- (NSString)nameColorLight;
- (NSString)personalizationFeatureID;
- (NSString)referralBarName;
- (NSString)subidentifier;
- (NSURL)actionURL;
- (NSURL)nameActionURL;
- (NTNewsTodayResultsSourceFetchHelperSectionDescriptor)init;
- (NTNewsTodayResultsSourceFetchHelperSectionDescriptor)initWithSectionDescriptor:(id)a3 parentSectionQueueDescriptor:(id)a4;
- (id)assembleResultsWithCatchUpOperation:(id)a3;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3;
- (int)promotionCriterion;
- (int)readArticlesFilterMethod;
- (int)seenArticlesFilterMethod;
- (int64_t)seenArticlesMinimumTimeSinceFirstSeenToFilter;
- (unint64_t)cachedResultCutoffTime;
- (unint64_t)fallbackOrder;
- (unint64_t)maximumStoriesAllocation;
- (unint64_t)minimumStoriesAllocation;
- (unint64_t)paywalledArticlesMaxCount;
- (unint64_t)supplementalInterSectionFilterOptions;
- (unint64_t)supplementalIntraSectionFilterOptions;
- (void)configureCatchUpOperationWithFetchRequest:(id)a3;
@end

@implementation NTNewsTodayResultsSourceFetchHelperSectionDescriptor

- (NTNewsTodayResultsSourceFetchHelperSectionDescriptor)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTNewsTodayResultsSourceFetchHelperSectionDescriptor init]";
    v10 = 2080;
    v11 = "NTNewsTodayResultsSourceFetchHelper.m";
    v12 = 1024;
    v13 = 125;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTNewsTodayResultsSourceFetchHelperSectionDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTNewsTodayResultsSourceFetchHelperSectionDescriptor)initWithSectionDescriptor:(id)a3 parentSectionQueueDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsSourceFetchHelperSectionDescriptor initWithSectionDescriptor:parentSectionQueueDescriptor:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsSourceFetchHelperSectionDescriptor initWithSectionDescriptor:parentSectionQueueDescriptor:];
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = NTNewsTodayResultsSourceFetchHelperSectionDescriptor;
  v8 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    sectionDescriptor = v8->_sectionDescriptor;
    v8->_sectionDescriptor = v9;

    v11 = [v7 copy];
    parentSectionQueueDescriptor = v8->_parentSectionQueueDescriptor;
    v8->_parentSectionQueueDescriptor = v11;
  }

  return v8;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  [v5 configureCatchUpOperationWithFetchRequest:v4];
}

- (id)assembleResultsWithCatchUpOperation:(id)a3
{
  v4 = a3;
  v5 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v6 = [v5 assembleResultsWithCatchUpOperation:v4];

  return v6;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3
{
  v4 = a3;
  v5 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v6 = [v5 incrementalSortTransformationWithFeedPersonalizer:v4];

  return v6;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v11 = [v10 incrementalLimitTransformationWithFeedPersonalizer:v9 limit:a4 priorFeedItems:v8];

  return v11;
}

- (NSString)identifier
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)subidentifier
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 subidentifier];

  return v3;
}

- (NSString)personalizationFeatureID
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 personalizationFeatureID];

  return v3;
}

- (NSString)name
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 name];

  return v3;
}

- (NSString)compactName
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 compactName];

  return v3;
}

- (NSString)referralBarName
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 referralBarName];

  return v3;
}

- (NSString)nameColorLight
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 nameColorLight];

  return v3;
}

- (NSString)nameColorDark
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 nameColorDark];

  return v3;
}

- (unint64_t)cachedResultCutoffTime
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 cachedResultCutoffTime];

  return v3;
}

- (unint64_t)fallbackOrder
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 fallbackOrder];

  return v3;
}

- (unint64_t)minimumStoriesAllocation
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 minimumStoriesAllocation];

  return v3;
}

- (unint64_t)maximumStoriesAllocation
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 maximumStoriesAllocation];

  return v3;
}

- (int)readArticlesFilterMethod
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 readArticlesFilterMethod];

  return v3;
}

- (int)seenArticlesFilterMethod
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 seenArticlesFilterMethod];

  return v3;
}

- (int64_t)seenArticlesMinimumTimeSinceFirstSeenToFilter
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 seenArticlesMinimumTimeSinceFirstSeenToFilter];

  return v3;
}

- (unint64_t)supplementalInterSectionFilterOptions
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 supplementalInterSectionFilterOptions];

  return v3;
}

- (unint64_t)supplementalIntraSectionFilterOptions
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 supplementalIntraSectionFilterOptions];

  return v3;
}

- (NSString)actionTitle
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 actionTitle];

  return v3;
}

- (NSURL)actionURL
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 actionURL];

  return v3;
}

- (int)promotionCriterion
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 promotionCriterion];

  return v3;
}

- (NSString)backingTagID
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 backingTagID];

  return v3;
}

- (NSURL)nameActionURL
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 nameActionURL];

  return v3;
}

- (NSString)backgroundColorLight
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 backgroundColorLight];

  return v3;
}

- (NSString)backgroundColorDark
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 backgroundColorDark];

  return v3;
}

- (unint64_t)paywalledArticlesMaxCount
{
  v2 = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v3 = [v2 paywalledArticlesMaxCount];

  return v3;
}

- (void)initWithSectionDescriptor:parentSectionQueueDescriptor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithSectionDescriptor:parentSectionQueueDescriptor:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "parentSectionQueueDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end