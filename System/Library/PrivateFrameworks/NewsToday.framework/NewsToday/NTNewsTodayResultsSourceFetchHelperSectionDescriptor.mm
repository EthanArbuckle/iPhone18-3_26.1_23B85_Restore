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
- (NTNewsTodayResultsSourceFetchHelperSectionDescriptor)initWithSectionDescriptor:(id)descriptor parentSectionQueueDescriptor:(id)queueDescriptor;
- (id)assembleResultsWithCatchUpOperation:(id)operation;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer;
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
- (void)configureCatchUpOperationWithFetchRequest:(id)request;
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

- (NTNewsTodayResultsSourceFetchHelperSectionDescriptor)initWithSectionDescriptor:(id)descriptor parentSectionQueueDescriptor:(id)queueDescriptor
{
  descriptorCopy = descriptor;
  queueDescriptorCopy = queueDescriptor;
  if (!descriptorCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsSourceFetchHelperSectionDescriptor initWithSectionDescriptor:parentSectionQueueDescriptor:];
    if (queueDescriptorCopy)
    {
      goto LABEL_6;
    }
  }

  else if (queueDescriptorCopy)
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
    v9 = [descriptorCopy copy];
    sectionDescriptor = v8->_sectionDescriptor;
    v8->_sectionDescriptor = v9;

    v11 = [queueDescriptorCopy copy];
    parentSectionQueueDescriptor = v8->_parentSectionQueueDescriptor;
    v8->_parentSectionQueueDescriptor = v11;
  }

  return v8;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)request
{
  requestCopy = request;
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  [sectionDescriptor configureCatchUpOperationWithFetchRequest:requestCopy];
}

- (id)assembleResultsWithCatchUpOperation:(id)operation
{
  operationCopy = operation;
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v6 = [sectionDescriptor assembleResultsWithCatchUpOperation:operationCopy];

  return v6;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer
{
  personalizerCopy = personalizer;
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v6 = [sectionDescriptor incrementalSortTransformationWithFeedPersonalizer:personalizerCopy];

  return v6;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items
{
  itemsCopy = items;
  personalizerCopy = personalizer;
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  v11 = [sectionDescriptor incrementalLimitTransformationWithFeedPersonalizer:personalizerCopy limit:limit priorFeedItems:itemsCopy];

  return v11;
}

- (NSString)identifier
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  identifier = [sectionDescriptor identifier];

  return identifier;
}

- (NSString)subidentifier
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  subidentifier = [sectionDescriptor subidentifier];

  return subidentifier;
}

- (NSString)personalizationFeatureID
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  personalizationFeatureID = [sectionDescriptor personalizationFeatureID];

  return personalizationFeatureID;
}

- (NSString)name
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  name = [sectionDescriptor name];

  return name;
}

- (NSString)compactName
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  compactName = [sectionDescriptor compactName];

  return compactName;
}

- (NSString)referralBarName
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  referralBarName = [sectionDescriptor referralBarName];

  return referralBarName;
}

- (NSString)nameColorLight
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  nameColorLight = [sectionDescriptor nameColorLight];

  return nameColorLight;
}

- (NSString)nameColorDark
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  nameColorDark = [sectionDescriptor nameColorDark];

  return nameColorDark;
}

- (unint64_t)cachedResultCutoffTime
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  cachedResultCutoffTime = [sectionDescriptor cachedResultCutoffTime];

  return cachedResultCutoffTime;
}

- (unint64_t)fallbackOrder
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  fallbackOrder = [sectionDescriptor fallbackOrder];

  return fallbackOrder;
}

- (unint64_t)minimumStoriesAllocation
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  minimumStoriesAllocation = [sectionDescriptor minimumStoriesAllocation];

  return minimumStoriesAllocation;
}

- (unint64_t)maximumStoriesAllocation
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  maximumStoriesAllocation = [sectionDescriptor maximumStoriesAllocation];

  return maximumStoriesAllocation;
}

- (int)readArticlesFilterMethod
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  readArticlesFilterMethod = [sectionDescriptor readArticlesFilterMethod];

  return readArticlesFilterMethod;
}

- (int)seenArticlesFilterMethod
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  seenArticlesFilterMethod = [sectionDescriptor seenArticlesFilterMethod];

  return seenArticlesFilterMethod;
}

- (int64_t)seenArticlesMinimumTimeSinceFirstSeenToFilter
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  seenArticlesMinimumTimeSinceFirstSeenToFilter = [sectionDescriptor seenArticlesMinimumTimeSinceFirstSeenToFilter];

  return seenArticlesMinimumTimeSinceFirstSeenToFilter;
}

- (unint64_t)supplementalInterSectionFilterOptions
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  supplementalInterSectionFilterOptions = [sectionDescriptor supplementalInterSectionFilterOptions];

  return supplementalInterSectionFilterOptions;
}

- (unint64_t)supplementalIntraSectionFilterOptions
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  supplementalIntraSectionFilterOptions = [sectionDescriptor supplementalIntraSectionFilterOptions];

  return supplementalIntraSectionFilterOptions;
}

- (NSString)actionTitle
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  actionTitle = [sectionDescriptor actionTitle];

  return actionTitle;
}

- (NSURL)actionURL
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  actionURL = [sectionDescriptor actionURL];

  return actionURL;
}

- (int)promotionCriterion
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  promotionCriterion = [sectionDescriptor promotionCriterion];

  return promotionCriterion;
}

- (NSString)backingTagID
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  backingTagID = [sectionDescriptor backingTagID];

  return backingTagID;
}

- (NSURL)nameActionURL
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  nameActionURL = [sectionDescriptor nameActionURL];

  return nameActionURL;
}

- (NSString)backgroundColorLight
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  backgroundColorLight = [sectionDescriptor backgroundColorLight];

  return backgroundColorLight;
}

- (NSString)backgroundColorDark
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  backgroundColorDark = [sectionDescriptor backgroundColorDark];

  return backgroundColorDark;
}

- (unint64_t)paywalledArticlesMaxCount
{
  sectionDescriptor = [(NTNewsTodayResultsSourceFetchHelperSectionDescriptor *)self sectionDescriptor];
  paywalledArticlesMaxCount = [sectionDescriptor paywalledArticlesMaxCount];

  return paywalledArticlesMaxCount;
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