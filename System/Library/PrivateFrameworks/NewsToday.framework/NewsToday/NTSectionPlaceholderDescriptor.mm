@interface NTSectionPlaceholderDescriptor
- (NTSectionPlaceholderDescriptor)init;
- (NTSectionPlaceholderDescriptor)initWithName:(id)a3 nameColorLight:(id)a4 nameColorDark:(id)a5 minimumStoriesAllocation:(unint64_t)a6 maximumStoriesAllocation:(unint64_t)a7 backingTagID:(id)a8;
- (id)assembleResultsWithCatchUpOperation:(id)a3;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3;
@end

@implementation NTSectionPlaceholderDescriptor

- (NTSectionPlaceholderDescriptor)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTSectionPlaceholderDescriptor init]";
    v10 = 2080;
    v11 = "NTSectionPlaceholderDescriptor.m";
    v12 = 1024;
    v13 = 44;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTSectionPlaceholderDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTSectionPlaceholderDescriptor)initWithName:(id)a3 nameColorLight:(id)a4 nameColorDark:(id)a5 minimumStoriesAllocation:(unint64_t)a6 maximumStoriesAllocation:(unint64_t)a7 backingTagID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v32.receiver = self;
  v32.super_class = NTSectionPlaceholderDescriptor;
  v18 = [(NTSectionPlaceholderDescriptor *)&v32 init];
  if (v18)
  {
    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v19 UUIDString];
    identifier = v18->_identifier;
    v18->_identifier = v20;

    v22 = [v14 copy];
    name = v18->_name;
    v18->_name = v22;

    v24 = [v15 copy];
    nameColorLight = v18->_nameColorLight;
    v18->_nameColorLight = v24;

    if (v16)
    {
      v26 = v16;
    }

    else
    {
      v26 = v15;
    }

    v27 = [v26 copy];
    nameColorDark = v18->_nameColorDark;
    v18->_nameColorDark = v27;

    v18->_maximumStoriesAllocation = a7;
    v18->_minimumStoriesAllocation = a6;
    v29 = [v17 copy];
    backingTagID = v18->_backingTagID;
    v18->_backingTagID = v29;
  }

  return v18;
}

- (id)assembleResultsWithCatchUpOperation:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v11 = "[NTSectionPlaceholderDescriptor assembleResultsWithCatchUpOperation:]";
    v12 = 2080;
    v13 = "NTSectionPlaceholderDescriptor.m";
    v14 = 1024;
    v15 = 76;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTSectionPlaceholderDescriptor assembleResultsWithCatchUpOperation:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5
{
  v5 = [[NTFeedTransformationLimit alloc] initWithLimit:a4];

  return v5;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3
{
  v3 = [NTFeedTransformationItemFeedTransformation alloc];
  v4 = [MEMORY[0x277D31010] sharedInstance];
  v5 = [(NTFeedTransformationItemFeedTransformation *)v3 initWithFeedItemTransformation:v4];

  return v5;
}

@end