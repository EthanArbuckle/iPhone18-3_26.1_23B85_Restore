@interface NTFeedTransformationItemFeedTransformation
- (NTFeedTransformationItemFeedTransformation)init;
- (NTFeedTransformationItemFeedTransformation)initWithFeedItemTransformation:(id)a3;
- (id)transformFeedItems:(id)a3;
@end

@implementation NTFeedTransformationItemFeedTransformation

- (NTFeedTransformationItemFeedTransformation)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTFeedTransformationItemFeedTransformation init]";
    v10 = 2080;
    v11 = "NTFeedTransformationUtilities.m";
    v12 = 1024;
    v13 = 25;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTFeedTransformationItemFeedTransformation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTFeedTransformationItemFeedTransformation)initWithFeedItemTransformation:(id)a3
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationItemFeedTransformation initWithFeedItemTransformation:];
  }

  v9.receiver = self;
  v9.super_class = NTFeedTransformationItemFeedTransformation;
  v6 = [(NTFeedTransformationItemFeedTransformation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedItemTransformation, a3);
  }

  return v7;
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationItemFeedTransformation transformFeedItems:];
  }

  if ([v4 fc_containsObjectPassingTest:&__block_literal_global_8] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationItemFeedTransformation transformFeedItems:];
  }

  v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v6 = objc_opt_new();
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __65__NTFeedTransformationItemFeedTransformation_transformFeedItems___block_invoke_18;
  v16 = &unk_2799828C8;
  v17 = v5;
  v18 = v6;
  v7 = v6;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:&v13];
  v9 = [(NTFeedTransformationItemFeedTransformation *)self feedItemTransformation:v13];
  v10 = [v9 transformFeedItems:v7];

  v11 = [v8 fc_objectsForKeys:v10];

  return v11;
}

BOOL __65__NTFeedTransformationItemFeedTransformation_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 feedTransformationItem];
  v3 = v2 == 0;

  return v3;
}

void __65__NTFeedTransformationItemFeedTransformation_transformFeedItems___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 feedTransformationItem];
  [*(a1 + 32) setObject:v3 forKey:v4];

  [*(a1 + 40) addObject:v4];
}

- (void)initWithFeedItemTransformation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedItemTransformation", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)transformFeedItems:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "items", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)transformFeedItems:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "![items fc_containsObjectPassingTest:^BOOL(id<NTFeedTransformationItem> item) { return item.feedTransformationItem == nil; }]", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end