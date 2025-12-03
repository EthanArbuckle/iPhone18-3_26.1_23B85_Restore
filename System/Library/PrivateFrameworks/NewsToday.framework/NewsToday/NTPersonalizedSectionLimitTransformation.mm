@interface NTPersonalizedSectionLimitTransformation
- (NTPersonalizedSectionLimitTransformation)init;
- (NTPersonalizedSectionLimitTransformation)initWithMandatoryArticleIDs:(id)ds personalizedArticleIDs:(id)iDs limit:(unint64_t)limit;
- (id)transformFeedItems:(id)items;
@end

@implementation NTPersonalizedSectionLimitTransformation

- (NTPersonalizedSectionLimitTransformation)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTPersonalizedSectionLimitTransformation init]";
    v10 = 2080;
    v11 = "NTPersonalizedSectionTransformations.m";
    v12 = 1024;
    v13 = 117;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTPersonalizedSectionLimitTransformation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTPersonalizedSectionLimitTransformation)initWithMandatoryArticleIDs:(id)ds personalizedArticleIDs:(id)iDs limit:(unint64_t)limit
{
  dsCopy = ds;
  iDsCopy = iDs;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionLimitTransformation initWithMandatoryArticleIDs:personalizedArticleIDs:limit:];
    if (iDsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionLimitTransformation initWithMandatoryArticleIDs:personalizedArticleIDs:limit:];
  }

LABEL_6:
  if ([dsCopy intersectsOrderedSet:iDsCopy] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionLimitTransformation initWithMandatoryArticleIDs:personalizedArticleIDs:limit:];
  }

  v16.receiver = self;
  v16.super_class = NTPersonalizedSectionLimitTransformation;
  v10 = [(NTPersonalizedSectionLimitTransformation *)&v16 init];
  if (v10)
  {
    v11 = [dsCopy copy];
    mandatoryArticleIDs = v10->_mandatoryArticleIDs;
    v10->_mandatoryArticleIDs = v11;

    v13 = [iDsCopy copy];
    personalizedArticleIDs = v10->_personalizedArticleIDs;
    v10->_personalizedArticleIDs = v13;

    v10->_limit = limit;
  }

  return v10;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPersonalizedSectionLimitTransformation transformFeedItems:];
  }

  mandatoryArticleIDs = [(NTPersonalizedSectionLimitTransformation *)self mandatoryArticleIDs];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __63__NTPersonalizedSectionLimitTransformation_transformFeedItems___block_invoke;
  v19 = &unk_2799838A0;
  v6 = mandatoryArticleIDs;
  v20 = v6;
  v21 = &v22;
  [itemsCopy enumerateObjectsWithOptions:2 usingBlock:&v16];
  v7 = [(NTPersonalizedSectionLimitTransformation *)self limit:v16];
  v8 = v23[3];
  v9 = v8 + 1;
  v10 = v7 - (v8 + 1);
  if (v7 <= v8 + 1)
  {
    v14 = [itemsCopy fc_subarrayUpToCountInclusive:v7];
  }

  else
  {
    v11 = [itemsCopy fc_subarrayUpToCountInclusive:v8 + 1];
    v12 = [itemsCopy fc_safeSubarrayWithCountFromBack:{objc_msgSend(itemsCopy, "count") - v9}];
    v13 = [v12 fc_subarrayWithMaxCount:v10];

    v14 = [MEMORY[0x277CBEA60] fc_arrayByAddingObjectsFromArray:v13 toArray:v11];
  }

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __63__NTPersonalizedSectionLimitTransformation_transformFeedItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [a2 articleID];
  LODWORD(v7) = [v7 containsObject:v8];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)initWithMandatoryArticleIDs:personalizedArticleIDs:limit:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "mandatoryArticleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithMandatoryArticleIDs:personalizedArticleIDs:limit:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "personalizedArticleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithMandatoryArticleIDs:personalizedArticleIDs:limit:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "![mandatoryArticleIDs intersectsOrderedSet:personalizedArticleIDs]", v7, 2u);

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

@end