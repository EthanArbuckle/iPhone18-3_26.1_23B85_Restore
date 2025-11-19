@interface NTPersonalizedSectionSortTransformation
- (NTPersonalizedSectionSortTransformation)init;
- (NTPersonalizedSectionSortTransformation)initWithMandatoryArticleIDs:(id)a3 personalizedArticleIDs:(id)a4 sortTransformation:(id)a5;
- (id)transformFeedItems:(id)a3;
@end

@implementation NTPersonalizedSectionSortTransformation

- (NTPersonalizedSectionSortTransformation)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTPersonalizedSectionSortTransformation init]";
    v10 = 2080;
    v11 = "NTPersonalizedSectionTransformations.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTPersonalizedSectionSortTransformation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTPersonalizedSectionSortTransformation)initWithMandatoryArticleIDs:(id)a3 personalizedArticleIDs:(id)a4 sortTransformation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionSortTransformation initWithMandatoryArticleIDs:personalizedArticleIDs:sortTransformation:];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionSortTransformation initWithMandatoryArticleIDs:personalizedArticleIDs:sortTransformation:];
  }

LABEL_6:
  if ([v8 intersectsOrderedSet:v9] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionSortTransformation initWithMandatoryArticleIDs:personalizedArticleIDs:sortTransformation:];
    if (v10)
    {
      goto LABEL_11;
    }
  }

  else if (v10)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionSortTransformation initWithMandatoryArticleIDs:personalizedArticleIDs:sortTransformation:];
  }

LABEL_11:
  v17.receiver = self;
  v17.super_class = NTPersonalizedSectionSortTransformation;
  v11 = [(NTPersonalizedSectionSortTransformation *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    mandatoryArticleIDs = v11->_mandatoryArticleIDs;
    v11->_mandatoryArticleIDs = v12;

    v14 = [v9 copy];
    personalizedArticleIDs = v11->_personalizedArticleIDs;
    v11->_personalizedArticleIDs = v14;

    objc_storeStrong(&v11->_sortTransformation, a5);
  }

  return v11;
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionSortTransformation transformFeedItems:];
  }

  v5 = [(NTPersonalizedSectionSortTransformation *)self mandatoryArticleIDs];
  v6 = [(NTPersonalizedSectionSortTransformation *)self personalizedArticleIDs];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__NTPersonalizedSectionSortTransformation_transformFeedItems___block_invoke;
  v20[3] = &unk_279983850;
  v9 = v5;
  v21 = v9;
  v22 = v7;
  v23 = v6;
  v24 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  [v4 enumerateObjectsUsingBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__NTPersonalizedSectionSortTransformation_transformFeedItems___block_invoke_22;
  v18[3] = &unk_279983878;
  v19 = v9;
  v13 = v9;
  [v12 sortUsingComparator:v18];
  v14 = [(NTPersonalizedSectionSortTransformation *)self sortTransformation];
  v15 = [v14 transformFeedItems:v10];

  v16 = [MEMORY[0x277CBEA60] fc_arrayByAddingObjectsFromArray:v15 toArray:v12];

  return v16;
}

void __62__NTPersonalizedSectionSortTransformation_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 articleID];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = *(a1 + 40);
LABEL_5:
    [v5 addObject:v3];
    goto LABEL_8;
  }

  if ([*(a1 + 48) containsObject:v4])
  {
    v5 = *(a1 + 56);
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __62__NTPersonalizedSectionSortTransformation_transformFeedItems___block_invoke_cold_1();
  }

LABEL_8:
}

uint64_t __62__NTPersonalizedSectionSortTransformation_transformFeedItems___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 articleID];
  v9 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", v8)}];
  v10 = MEMORY[0x277CCABB0];
  v11 = *(a1 + 32);
  v12 = [v7 articleID];

  v13 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "indexOfObject:", v12)}];
  v14 = [v9 compare:v13];

  return v14;
}

- (void)initWithMandatoryArticleIDs:personalizedArticleIDs:sortTransformation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "mandatoryArticleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithMandatoryArticleIDs:personalizedArticleIDs:sortTransformation:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "personalizedArticleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithMandatoryArticleIDs:personalizedArticleIDs:sortTransformation:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "![mandatoryArticleIDs intersectsOrderedSet:personalizedArticleIDs]", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithMandatoryArticleIDs:personalizedArticleIDs:sortTransformation:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sortTransformation", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
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

void __62__NTPersonalizedSectionSortTransformation_transformFeedItems___block_invoke_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Case unsupported"];
  v2 = 136315906;
  v3 = "[NTPersonalizedSectionSortTransformation transformFeedItems:]_block_invoke";
  v4 = 2080;
  v5 = "NTPersonalizedSectionTransformations.m";
  v6 = 1024;
  v7 = 85;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end