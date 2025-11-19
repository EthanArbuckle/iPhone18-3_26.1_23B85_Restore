@interface NTTodayConfigOperation
- (BOOL)validateOperation;
- (NTTodayConfigOperation)init;
- (id)_todayConfigWithConfigJSON:(id)a3 articleListIDs:(id)a4 articleIDs:(id)a5 error:(id *)a6;
- (void)_collectRecordIDsReferencedBySectionConfig:(id)a3 withArticleListIDs:(id)a4 articleIDs:(id)a5;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NTTodayConfigOperation

- (NTTodayConfigOperation)init
{
  v3.receiver = self;
  v3.super_class = NTTodayConfigOperation;
  return [(FCOperation *)&v3 init];
}

- (BOOL)validateOperation
{
  v3 = [(NTTodayConfigOperation *)self configuration];

  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  v4 = [(NTTodayConfigOperation *)self context];

  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  v5 = [(NTTodayConfigOperation *)self widgetConfigID];

  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  v6 = [(NTTodayConfigOperation *)self defaultConfigCompletionHandler];

  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  v7 = [(NTTodayConfigOperation *)self singleTagConfigCompletionHandler];

  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation validateOperation];
  }

  if (v3)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8 && v5 != 0 && v6 != 0 && v7 != 0;
}

- (void)performOperation
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(FCOperation *)self shortOperationDescription];
    v6 = [(NTTodayConfigOperation *)self widgetConfigID];
    *buf = 138543618;
    v33 = v5;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_25BF21000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will request config with ID %@", buf, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D312C0]);
  v8 = [(NTTodayConfigOperation *)self context];
  [v7 setContext:v8];

  v9 = [MEMORY[0x277D30F68] edgeCacheHintForWidgetConfig];
  [v7 setEdgeCacheHint:v9];

  v10 = [(NTTodayConfigOperation *)self widgetConfigID];
  v31 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [v7 setTopLevelRecordIDs:v11];

  [v7 setShouldReturnErrorWhenSomeRecordsMissing:1];
  [v7 setShouldBypassRecordSourcePersistence:1];
  v29[0] = *MEMORY[0x277D307F8];
  v12 = *MEMORY[0x277D30720];
  v28[0] = *MEMORY[0x277D30728];
  v28[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v13;
  v29[1] = *MEMORY[0x277D305A8];
  v27 = *MEMORY[0x277D305A0];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v30[1] = v14;
  v29[2] = *MEMORY[0x277D305C0];
  v15 = *MEMORY[0x277D305B0];
  v26[0] = *MEMORY[0x277D305D8];
  v26[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v16;
  v17 = *MEMORY[0x277D30618];
  v29[3] = *MEMORY[0x277D30660];
  v29[4] = v17;
  v30[3] = MEMORY[0x277CBEBF8];
  v30[4] = MEMORY[0x277CBEBF8];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];
  [v7 setLinkKeysByRecordType:v18];

  [v7 setDynamicCachePolicyBlock:&__block_literal_global_12];
  objc_initWeak(buf, v7);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __42__NTTodayConfigOperation_performOperation__block_invoke_2;
  v23 = &unk_279983828;
  v24 = self;
  objc_copyWeak(&v25, buf);
  [v7 setRecordChainCompletionHandler:&v20];
  [(FCOperation *)self associateChildOperation:v7, v20, v21, v22, v23, v24];
  [v7 start];
  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

void __42__NTTodayConfigOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __42__NTTodayConfigOperation_performOperation__block_invoke_3;
    v31[3] = &unk_279983648;
    v31[4] = *(a1 + 32);
    v32 = v6;
    __42__NTTodayConfigOperation_performOperation__block_invoke_3(v31);
    v8 = v32;
  }

  else
  {
    v28 = [v5 objectForKeyedSubscript:&unk_286D9EDC8];
    v9 = [v28 onlyRecord];
    v10 = [v9 configuration2];
    v11 = *(a1 + 32);
    v12 = [v9 articleListIDs2s];
    v13 = [v9 articleIDs2s];
    v30 = 0;
    v27 = v10;
    v26 = [v11 _todayConfigWithConfigJSON:v10 articleListIDs:v12 articleIDs:v13 error:&v30];
    v14 = v30;

    v25 = v14;
    [*(a1 + 32) setDefaultConfigError:v14];
    v15 = [v9 singleTagConfiguration];
    if (!v15)
    {
      v16 = FCBundle();
      v17 = [v16 URLForResource:@"SingleTagConfiguration" withExtension:@"json"];

      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfURL:v17 encoding:4 error:0];
    }

    v18 = *(a1 + 32);
    v19 = [v9 articleListIDs2s];
    v20 = [v9 articleIDs2s];
    v29 = 0;
    v21 = [v18 _todayConfigWithConfigJSON:v15 articleListIDs:v19 articleIDs:v20 error:&v29];
    v22 = v29;

    [*(a1 + 32) setSingleTagConfigError:v22];
    [*(a1 + 32) setResultDefaultConfig:v26];
    [*(a1 + 32) setResultSingleTagConfig:v21];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v24 = [WeakRetained networkEvents];
    [*(a1 + 32) setNetworkEvents:v24];

    [*(a1 + 32) setResultHeldRecordsByType:v5];
    [*(a1 + 32) finishedPerformingOperationWithError:0];

    v8 = v28;
  }
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(NTTodayConfigOperation *)self defaultConfigCompletionHandler];
  v6 = [(NTTodayConfigOperation *)self resultDefaultConfig];
  v7 = [(NTTodayConfigOperation *)self resultHeldRecordsByType];
  v8 = [(NTTodayConfigOperation *)self defaultConfigError];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  (v5)[2](v5, v6, v7, v10);

  v16 = [(NTTodayConfigOperation *)self singleTagConfigCompletionHandler];
  v11 = [(NTTodayConfigOperation *)self resultSingleTagConfig];
  v12 = [(NTTodayConfigOperation *)self resultHeldRecordsByType];
  v13 = [(NTTodayConfigOperation *)self singleTagConfigError];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v4;
  }

  v16[2](v16, v11, v12, v15);
}

- (id)_todayConfigWithConfigJSON:(id)a3 articleListIDs:(id)a4 articleIDs:(id)a5 error:(id *)a6
{
  v76 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(FCOperation *)self shortOperationDescription];
    *buf = 138543618;
    v73 = v14;
    v74 = 2114;
    v75 = v9;
    _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ received config JSON %{public}@", buf, 0x16u);
  }

  v70 = 0;
  v15 = [MEMORY[0x277CBEAC0] fc_dictionaryFromJSON:v9 error:&v70];
  v16 = v70;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    v19 = 0;
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v23 = [v15 objectForKeyedSubscript:*MEMORY[0x277D30918]];
  if (v23)
  {
    v57 = v15;
    v58 = v10;
    v55 = a6;
    v56 = v9;
    v24 = objc_opt_new();
    v62 = objc_opt_new();
    v61 = objc_opt_new();
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v54 = v23;
    obj = v23;
    v25 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v67;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v67 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = [MEMORY[0x277D35568] sectionConfigWithJSONDictionary:*(*(&v66 + 1) + 8 * i)];
          if (v29)
          {
            [(NTTodayConfigOperation *)self _collectRecordIDsReferencedBySectionConfig:v29 withArticleListIDs:v62 articleIDs:v61];
            if ([v29 queueMembershipsCount])
            {
              v30 = 0;
              do
              {
                v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v29, "queueMembershipAtIndex:", v30)}];
                v32 = [v24 objectForKeyedSubscript:v31];
                if (!v32)
                {
                  v32 = objc_opt_new();
                  [v24 setObject:v32 forKeyedSubscript:v31];
                }

                [v32 addObject:v29];

                ++v30;
              }

              while (v30 < [v29 queueMembershipsCount]);
            }
          }
        }

        v26 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v26);
    }

    v33 = [MEMORY[0x277CBEB98] setWithArray:v58];
    v34 = [MEMORY[0x277CBEB98] setWithArray:v11];
    obja = v33;
    if (([v62 isSubsetOfSet:v33] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [NTTodayConfigOperation _todayConfigWithConfigJSON:articleListIDs:articleIDs:error:];
    }

    v53 = v34;
    if (([v61 isSubsetOfSet:v34] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [NTTodayConfigOperation _todayConfigWithConfigJSON:articleListIDs:articleIDs:error:];
    }

    v35 = [v24 allKeys];
    v36 = [v35 sortedArrayUsingSelector:sel_compare_];

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __85__NTTodayConfigOperation__todayConfigWithConfigJSON_articleListIDs_articleIDs_error___block_invoke;
    v64[3] = &unk_2799837E0;
    v51 = v24;
    v52 = v36;
    v65 = v51;
    v37 = [v36 fc_arrayByTransformingWithBlock:v64];
    v38 = [v57 objectForKeyedSubscript:*MEMORY[0x277D307C0]];
    v39 = [v57 objectForKeyedSubscript:*MEMORY[0x277D30760]];
    v40 = [v57 objectForKeyedSubscript:*MEMORY[0x277D30758]];
    v41 = [v57 objectForKeyedSubscript:*MEMORY[0x277D30750]];
    v42 = *MEMORY[0x277D306A8];
    v43 = [v57 objectForKeyedSubscript:*MEMORY[0x277D306A8]];

    if (v43)
    {
      v44 = MEMORY[0x277D35530];
      v45 = [v57 objectForKeyedSubscript:v42];
      v46 = [v44 bannerConfigWithJSONDictionary:v45];
    }

    else
    {
      v46 = 0;
    }

    v9 = v56;
    v47 = [(NTTodayConfigOperation *)self configuration];
    v48 = v38;
    v49 = v38;
    v50 = v37;
    v19 = [v47 todayConfigWithIdentifier:v48 queueConfigs:v37 backgroundColorLight:v39 backgroundColorDark:v40 audioIndicatorColor:v41 widgetBannerConfig:v46];

    v18 = 0;
    a6 = v55;
    v15 = v57;
    v10 = v58;
    v23 = v54;
    v17 = 0;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D309C8] code:13 userInfo:0];
    v19 = 0;
  }

  if (a6)
  {
LABEL_5:
    v20 = v18;
    *a6 = v18;
  }

LABEL_6:

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

id __85__NTTodayConfigOperation__todayConfigWithConfigJSON_articleListIDs_articleIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setWidgetVisibleSectionsLimit:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(a1 + 32) objectForKeyedSubscript:{v3, 0}];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addTodaySectionConfigs:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_collectRecordIDsReferencedBySectionConfig:(id)a3 withArticleListIDs:(id)a4 articleIDs:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:];
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
    [NTTodayConfigOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:];
  }

LABEL_6:
  v10 = [v7 sectionType];
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      v12 = [v7 personalizedTodaySectionConfig];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v27 = [v12 mandatoryArticles];
      v28 = [v27 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v48;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [*(*(&v47 + 1) + 8 * i) articleID];
            [v9 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v47 objects:v57 count:16];
        }

        while (v29);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v18 = [v12 personalizedArticles];
      v33 = [v18 countByEnumeratingWithState:&v43 objects:v56 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v44;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v44 != v35)
            {
              objc_enumerationMutation(v18);
            }

            v37 = [*(*(&v43 + 1) + 8 * j) articleID];
            [v9 addObject:v37];
          }

          v34 = [v18 countByEnumeratingWithState:&v43 objects:v56 count:16];
        }

        while (v34);
      }
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_46;
      }

      v12 = [v7 itemsTodaySectionConfig];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = [v12 items];
      v19 = [v18 countByEnumeratingWithState:&v39 objects:v55 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v40;
        do
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v40 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v39 + 1) + 8 * k);
            if (![v23 itemType])
            {
              v24 = [v23 article];
              v25 = [v24 articleID];
              [v9 addObject:v25];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v39 objects:v55 count:16];
        }

        while (v20);
      }
    }

LABEL_45:
    goto LABEL_46;
  }

  if (!v10)
  {
    v26 = [v7 articleListTodaySectionConfig];
    v12 = [v26 articleListID];

    [v8 addObject:v12];
    goto LABEL_45;
  }

  if (v10 == 3)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = [v7 articleIDsTodaySectionConfig];
    v12 = [v11 articles];

    v13 = [v12 countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v52;
      do
      {
        for (m = 0; m != v14; ++m)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v51 + 1) + 8 * m) articleID];
          [v9 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v14);
    }

    goto LABEL_45;
  }

LABEL_46:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)validateOperation
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Today config operation requires a single tag config handler."];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_todayConfigWithConfigJSON:articleListIDs:articleIDs:error:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"articleListRecords must be in sync!"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_todayConfigWithConfigJSON:articleListIDs:articleIDs:error:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"articleRecords must be in sync!"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articleListIDs"];
  *buf = 136315906;
  v3 = "[NTTodayConfigOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:]";
  v4 = 2080;
  v5 = "NTTodayConfigOperation.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articleIDs"];
  *buf = 136315906;
  v3 = "[NTTodayConfigOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:]";
  v4 = 2080;
  v5 = "NTTodayConfigOperation.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end