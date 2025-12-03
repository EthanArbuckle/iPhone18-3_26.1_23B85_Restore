@interface NTFeedTransformationLimit
- (NTFeedTransformationLimit)init;
- (NTFeedTransformationLimit)initWithLimit:(unint64_t)limit;
- (id)transformFeedItems:(id)items;
@end

@implementation NTFeedTransformationLimit

- (NTFeedTransformationLimit)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTFeedTransformationLimit init]";
    v10 = 2080;
    v11 = "NTFeedTransformationUtilities.m";
    v12 = 1024;
    v13 = 79;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTFeedTransformationLimit init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTFeedTransformationLimit)initWithLimit:(unint64_t)limit
{
  v5.receiver = self;
  v5.super_class = NTFeedTransformationLimit;
  result = [(NTFeedTransformationLimit *)&v5 init];
  if (result)
  {
    result->_limit = limit;
  }

  return result;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationLimit transformFeedItems:];
  }

  v5 = [itemsCopy fc_subarrayWithMaxCount:{-[NTFeedTransformationLimit limit](self, "limit")}];

  return v5;
}

- (void)transformFeedItems:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedItems", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end