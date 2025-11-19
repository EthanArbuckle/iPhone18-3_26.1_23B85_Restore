@interface NTWidgetConfigDataOperation
- (BOOL)validateOperation;
- (void)_finishByConvertingRecordsWithArticlesByID:(id)a3 articleListsByID:(id)a4 tagsByID:(id)a5;
- (void)_finishByFetchingRecordsForArticleIDs:(id)a3 articleListIDs:(id)a4;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NTWidgetConfigDataOperation

- (BOOL)validateOperation
{
  v3 = [(NTWidgetConfigDataOperation *)self widgetConfiguration];

  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTWidgetConfigDataOperation validateOperation];
  }

  v4 = [(NTWidgetConfigDataOperation *)self configuration];

  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTWidgetConfigDataOperation validateOperation];
  }

  v5 = [(NTWidgetConfigDataOperation *)self context];

  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTWidgetConfigDataOperation validateOperation];
  }

  v6 = [(NTWidgetConfigDataOperation *)self widgetConfigDataCompletionHandler];

  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTWidgetConfigDataOperation validateOperation];
  }

  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7 && v5 != 0 && v6 != 0;
}

- (void)performOperation
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 shortOperationDescription];
  v5 = [a2 widgetConfiguration];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_25BF21000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ about to convert config JSON: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(id)a3
{
  v13 = a3;
  v4 = [(NTWidgetConfigDataOperation *)self resultHeldRecordsByType];
  v5 = [v4 objectForKeyedSubscript:&unk_286D9ED50];
  v6 = [v5 allRecordIDs];

  v7 = [(NTWidgetConfigDataOperation *)self resultHeldRecordsByType];
  v8 = [v7 objectForKeyedSubscript:&unk_286D9ED68];
  v9 = [v8 allRecordIDs];

  v10 = [(NTWidgetConfigDataOperation *)self widgetConfigDataCompletionHandler];

  if (v10)
  {
    v11 = [(NTWidgetConfigDataOperation *)self widgetConfigDataCompletionHandler];
    v12 = [(NTWidgetConfigDataOperation *)self resultHeldRecordsByType];
    (v11)[2](v11, v6, v9, v12, v13);
  }
}

- (void)_finishByFetchingRecordsForArticleIDs:(id)a3 articleListIDs:(id)a4
{
  v6 = MEMORY[0x277D31110];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(NTWidgetConfigDataOperation *)self context];
  [v9 setContext:v10];

  v11 = [(NTWidgetConfigDataOperation *)self configuration];
  [v9 setConfiguration:v11];

  v12 = [MEMORY[0x277D30E98] ignoreCacheCachePolicy];
  [v9 setCachePolicyForArticles:v12];

  v13 = [MEMORY[0x277D30E98] ignoreCacheCachePolicy];
  [v9 setCachePolicyForArticleLists:v13];

  [v9 setShouldBypassRecordSourcePersistence:1];
  v14 = [MEMORY[0x277D30F68] edgeCacheHintForWidgetArticles];
  [v9 setEdgeCacheHint:v14];

  [v9 setArticleIDs:v8];
  [v9 setArticleListIDs:v7];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__NTWidgetConfigDataOperation__finishByFetchingRecordsForArticleIDs_articleListIDs___block_invoke;
  v15[3] = &unk_279982BA0;
  v15[4] = self;
  [v9 setHeldRecordsCompletionHandler:v15];
  [(FCOperation *)self associateChildOperation:v9];
  [v9 start];
}

void __84__NTWidgetConfigDataOperation__finishByFetchingRecordsForArticleIDs_articleListIDs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResultHeldRecordsByType:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)_finishByConvertingRecordsWithArticlesByID:(id)a3 articleListsByID:(id)a4 tagsByID:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB18];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 array];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke;
  v44[3] = &unk_279982BC8;
  v44[4] = self;
  v13 = v12;
  v45 = v13;
  [v11 enumerateKeysAndObjectsUsingBlock:v44];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_33;
  v42[3] = &unk_279982BC8;
  v42[4] = self;
  v14 = v13;
  v43 = v14;
  [v10 enumerateKeysAndObjectsUsingBlock:v42];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_34;
  v40[3] = &unk_279982BC8;
  v40[4] = self;
  v15 = v14;
  v41 = v15;
  [v9 enumerateKeysAndObjectsUsingBlock:v40];

  v16 = [(NTWidgetConfigDataOperation *)self context];
  v17 = [v16 convertRecords:v15];

  v18 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [(FCOperation *)self shortOperationDescription];
    v21 = [v17 count];
    *buf = 138543618;
    v47 = v20;
    v48 = 2048;
    v49 = v21;
    _os_log_impl(&dword_25BF21000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ converted %lu records", buf, 0x16u);
  }

  v22 = [MEMORY[0x277CBEB38] dictionary];
  v23 = [MEMORY[0x277CBEB38] dictionary];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_36;
  v37[3] = &unk_279982BF0;
  v24 = v22;
  v38 = v24;
  v25 = v23;
  v39 = v25;
  [v17 enumerateRecordsAndInterestTokensWithBlock:v37];
  v26 = MEMORY[0x277CBEAC0];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_2;
  v34 = &unk_279982C18;
  v35 = v24;
  v36 = v25;
  v27 = v25;
  v28 = v24;
  v29 = [v26 fc_dictionary:&v31];
  [(NTWidgetConfigDataOperation *)self setResultHeldRecordsByType:v29, v31, v32, v33, v34];

  [(FCOperation *)self finishedPerformingOperationWithError:0];
  v30 = *MEMORY[0x277D85DE8];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NTCKRecordFromArticleJSONDictionary(v4);
  v6 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = [v8 shortOperationDescription];
    v11 = 138543874;
    v12 = v10;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_25BF21000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ convert article JSON: %@ into record: %@", &v11, 0x20u);
  }

  [*(a1 + 40) addObject:v5];

  v7 = *MEMORY[0x277D85DE8];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_33(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NTCKRecordFromArticleListJSONDictionary(v4);
  v6 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = [v8 shortOperationDescription];
    v11 = 138543874;
    v12 = v10;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_25BF21000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ convert articleList JSON: %@ into record: %@", &v11, 0x20u);
  }

  [*(a1 + 40) addObject:v5];

  v7 = *MEMORY[0x277D85DE8];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_34(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NTCKRecordFromTagJSONDictionary(v4);
  v6 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = [v8 shortOperationDescription];
    v11 = 138543874;
    v12 = v10;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_25BF21000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ convert tag JSON: %@ into record: %@", &v11, 0x20u);
  }

  [*(a1 + 40) addObject:v5];

  v7 = *MEMORY[0x277D85DE8];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v14 = [v6 base];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "recordType")}];
  v8 = [v14 identifier];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];

    v11 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];
  }

  v12 = [*(a1 + 32) objectForKeyedSubscript:v7];
  [v12 setObject:v6 forKeyedSubscript:v8];

  v13 = [*(a1 + 40) objectForKeyedSubscript:v7];
  [v13 setObject:v5 forKeyedSubscript:v8];
}

void __100__NTWidgetConfigDataOperation__finishByConvertingRecordsWithArticlesByID_articleListsByID_tagsByID___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277D310A0]);
        v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
        v11 = [*(a1 + 40) objectForKeyedSubscript:v8];
        v12 = [v9 initWithRecordsByID:v10 interestTokensByID:v11];

        [v3 setObject:v12 forKeyedSubscript:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)validateOperation
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Today config data operation requires a completion handler."];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end