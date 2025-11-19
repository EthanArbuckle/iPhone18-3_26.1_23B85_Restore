@interface NTTodayItemOperation
- (BOOL)validateOperation;
- (NTTodayItemOperation)init;
- (id)_extractFeedItemsFromInputs;
- (void)_fetchProtoitemsWithCompletion:(id)a3;
- (void)_saveWithCompletion:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NTTodayItemOperation

- (NTTodayItemOperation)init
{
  v3.receiver = self;
  v3.super_class = NTTodayItemOperation;
  return [(FCOperation *)&v3 init];
}

- (BOOL)validateOperation
{
  v3 = [(NTTodayItemOperation *)self catchUpOperationResultsBySectionDescriptor];

  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayItemOperation validateOperation];
  }

  v4 = [(NTTodayItemOperation *)self appConfiguration];

  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayItemOperation validateOperation];
  }

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  v7 = [(NTTodayItemOperation *)self contentContext];

  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayItemOperation validateOperation];
  }

  if (!v7)
  {
    v6 = 0;
  }

  v8 = [(NTTodayItemOperation *)self feedPersonalizer];

  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayItemOperation validateOperation];
  }

  if (!v8)
  {
    v6 = 0;
  }

  v9 = [(NTTodayItemOperation *)self operationInfo];

  if (!v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayItemOperation validateOperation];
  }

  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NTTodayItemOperation *)self _extractFeedItemsFromInputs];
  [(NTTodayItemOperation *)self setFeedItems:v11];
  if ([v11 count])
  {
    v12 = [(NTTodayItemOperation *)self forYouFetchInfo];

    if (!v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [NTTodayItemOperation validateOperation];
    }

    if (!v12)
    {
      v10 = 0;
    }
  }

  v13 = [(NTTodayItemOperation *)self todayItemCompletion];

  if (!v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayItemOperation validateOperation];
  }

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)performOperation
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__NTTodayItemOperation_performOperation__block_invoke;
  v2[3] = &unk_279982790;
  v2[4] = self;
  [(NTTodayItemOperation *)self _fetchProtoitemsWithCompletion:v2];
}

void __40__NTTodayItemOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    [*(a1 + 32) finishedPerformingOperationWithError:a4];
  }

  else
  {
    v9 = dispatch_group_create();
    v10 = [*(a1 + 32) operationInfo];
    v11 = [*(a1 + 32) contentContext];
    v12 = MEMORY[0x277CBEA60];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __40__NTTodayItemOperation_performOperation__block_invoke_2;
    v30[3] = &unk_2799826A0;
    v13 = v7;
    v31 = v13;
    v14 = v10;
    v32 = v14;
    v15 = [v12 fc_array:v30];
    v16 = NTSharedLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v15;
      _os_log_impl(&dword_25BF21000, v16, OS_LOG_TYPE_INFO, "Start downloading assetHandles: %@", buf, 0xCu);
    }

    [v15 makeObjectsPerformSelector:sel_downloadIfNeededWithGroup_ withObject:v9];
    [*(a1 + 32) qualityOfService];
    v17 = FCDispatchQueueForQualityOfService();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__NTTodayItemOperation_performOperation__block_invoke_28;
    v23[3] = &unk_279982768;
    v18 = *(a1 + 32);
    v24 = v15;
    v25 = v18;
    v26 = v13;
    v27 = v11;
    v28 = v14;
    v29 = v8;
    v19 = v14;
    v20 = v11;
    v21 = v15;
    dispatch_group_notify(v9, v17, v23);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __40__NTTodayItemOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__NTTodayItemOperation_performOperation__block_invoke_3;
  v6[3] = &unk_2799826C8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __40__NTTodayItemOperation_performOperation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) assetHandlesWithOperationInfo:*(a1 + 32)];
        [*(a1 + 40) addObjectsFromArray:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __40__NTTodayItemOperation_performOperation__block_invoke_28(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = NTSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_25BF21000, v2, OS_LOG_TYPE_INFO, "Finished downloading assetHandles: %@", buf, 0xCu);
  }

  v4 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__NTTodayItemOperation_performOperation__block_invoke_30;
  v13[3] = &unk_279982718;
  v5 = *(a1 + 48);
  v14 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v15 = v6;
  v16 = v7;
  v17 = v4;
  v8 = v4;
  v9 = [v5 fc_dictionaryByTransformingValuesWithKeyAndValueBlock:v13];
  [*(a1 + 40) setResultTodayItemsBySectionDescriptor:v9];

  [*(a1 + 40) setResultAssetFileURLsByRemoteURL:v8];
  [*(a1 + 40) setResultRecordsHoldToken:*(a1 + 72)];
  [*(a1 + 40) setResultAssetsHoldToken:*(a1 + 32)];
  v10 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__NTTodayItemOperation_performOperation__block_invoke_3_34;
  v12[3] = &unk_279982740;
  v12[4] = v10;
  [v10 _saveWithCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

id __40__NTTodayItemOperation_performOperation__block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__NTTodayItemOperation_performOperation__block_invoke_2_31;
  v10[3] = &unk_2799826F0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v5;
  v6 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v6;
  v7 = v5;
  v8 = [a3 fc_orderedSetByTransformingWithBlock:v10];

  return v8;
}

id __40__NTTodayItemOperation_performOperation__block_invoke_2_31(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  v8 = [v6 todayData];
  v9 = [v7 itemWithContentContext:v3 operationInfo:v4 sectionDescriptor:v5 todayData:v8 assetFileURLsByRemoteURL:a1[8]];

  return v9;
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v9 = [(NTTodayItemOperation *)self todayItemCompletion];
  v5 = [(NTTodayItemOperation *)self resultTodayItemsBySectionDescriptor];
  v6 = [(NTTodayItemOperation *)self resultAssetFileURLsByRemoteURL];
  v7 = [(NTTodayItemOperation *)self resultRecordsHoldToken];
  v8 = [(NTTodayItemOperation *)self resultAssetsHoldToken];
  v9[2](v9, v5, v6, v7, v8, v4);
}

- (void)_saveWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayItemOperation _saveWithCompletion:];
  }

  v5 = [(NTTodayItemOperation *)self contentContext];
  v6 = [v5 assetManager];
  [v6 save];

  v7 = [(NTTodayItemOperation *)self contentContext];
  v8 = [v7 feedDatabase];

  if (v8)
  {
    [v8 saveWithCompletionHandler:v4];
  }

  else
  {
    v9 = v4;
    v9[2]();
  }
}

- (id)_extractFeedItemsFromInputs
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__NTTodayItemOperation__extractFeedItemsFromInputs__block_invoke;
  v4[3] = &unk_279982830;
  v4[4] = self;
  v2 = [MEMORY[0x277CBEA60] fc_array:v4];

  return v2;
}

void __51__NTTodayItemOperation__extractFeedItemsFromInputs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) catchUpOperationResultsBySectionDescriptor];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__NTTodayItemOperation__extractFeedItemsFromInputs__block_invoke_2;
  v6[3] = &unk_279982808;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __51__NTTodayItemOperation__extractFeedItemsFromInputs__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 items];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__NTTodayItemOperation__extractFeedItemsFromInputs__block_invoke_3;
  v5[3] = &unk_2799827E0;
  v6 = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __51__NTTodayItemOperation__extractFeedItemsFromInputs__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 needsFeedItemHeadlinesFetch])
  {
    v3 = *(a1 + 32);
    v4 = [v5 feedItemForHeadlineFetch];
    [v3 addObject:v4];
  }
}

- (void)_fetchProtoitemsWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayItemOperation _fetchProtoitemsWithCompletion:];
  }

  v5 = [(NTTodayItemOperation *)self forYouFetchInfo];
  v6 = [(NTTodayItemOperation *)self feedItems];
  v7 = objc_opt_new();
  v8 = [(NTTodayItemOperation *)self appConfiguration];
  [v7 setConfiguration:v8];

  v9 = [(NTTodayItemOperation *)self contentContext];
  [v7 setContext:v9];

  v10 = [(NTTodayItemOperation *)self feedPersonalizer];
  [v7 setPersonalizer:v10];

  [v7 setFeedItems:v6];
  v11 = [v5 feedContextByFeedID];
  [v7 setFeedContextByFeedID:v11];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke;
  v22[3] = &unk_279982858;
  v23 = v5;
  v12 = v5;
  [v7 setRapidUpdateRefreshTest:v22];
  [v7 setShouldFilterHeadlinesWithoutSourceChannels:1];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2;
  v18 = &unk_279982960;
  v19 = v6;
  v20 = self;
  v21 = v4;
  v13 = v4;
  v14 = v6;
  [v7 setHeadlinesMapCompletionHandler:&v15];
  [(FCOperation *)self associateChildOperation:v7, v15, v16, v17, v18];
  [v7 start];
}

uint64_t __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke(uint64_t a1, double a2)
{
  if (a2 >= 30.0)
  {
    return [*(a1 + 32) attemptedCachedOnly] ^ 1;
  }

  else
  {
    return 0;
  }
}

void __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v7 < [*(a1 + 32) count])
  {
    v8 = *(a1 + 32);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_3;
    v36[3] = &unk_279982880;
    v37 = v5;
    v9 = [v8 fc_arrayOfObjectsPassingTest:v36];
    v10 = [v9 count];
    v11 = MEMORY[0x277D30B40];
    if (v10)
    {
      v12 = *MEMORY[0x277D30B40];
      if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_ERROR))
      {
        __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2_cold_1(a1, v12);
      }
    }

    else
    {
      v14 = [*(a1 + 32) fc_arrayByTransformingWithBlock:&__block_literal_global];
      v15 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 40);
        v29 = v15;
        v30 = [v28 shortOperationDescription];
        v31 = *(a1 + 32);
        *buf = 138543874;
        v41 = v30;
        v42 = 2114;
        v43 = v14;
        v44 = 2114;
        v45 = v31;
        _os_log_error_impl(&dword_25BF21000, v29, OS_LOG_TYPE_ERROR, "%{public}@ has duplicate feed items, articleIDs=%{public}@, items=%{public}@", buf, 0x20u);
      }
    }

    v16 = &v37;
    v17 = [MEMORY[0x277CBEB38] dictionary];
    v18 = [*(a1 + 40) catchUpOperationResultsBySectionDescriptor];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_48;
    v34[3] = &unk_279982808;
    v19 = v17;
    v35 = v19;
    [v18 enumerateKeysAndObjectsUsingBlock:v34];

    v20 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2_cold_2((a1 + 40), v20);
    }

    v21 = [v9 fc_arrayByTransformingWithBlock:&__block_literal_global_54];
    v38 = *MEMORY[0x277D309D0];
    v39 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v23 = [MEMORY[0x277CCA9B8] fc_partialFailureErrorWithUserInfo:v22];

    v13 = 0;
    goto LABEL_14;
  }

  if (!v6)
  {
    v24 = [*(a1 + 40) catchUpOperationResultsBySectionDescriptor];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2_57;
    v32[3] = &unk_279982938;
    v16 = v33;
    v25 = v5;
    v26 = *(a1 + 40);
    v33[0] = v25;
    v33[1] = v26;
    v13 = [v24 fc_dictionaryByTransformingValuesWithKeyAndValueBlock:v32];

    v23 = 0;
LABEL_14:

    v6 = v23;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:
  (*(*(a1 + 48) + 16))(*(a1 + 48), v13, v5, v6);

  v27 = *MEMORY[0x277D85DE8];
}

BOOL __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

void __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 items];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2_49;
  v8[3] = &unk_2799828C8;
  v9 = *(a1 + 32);
  v10 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2_49(uint64_t a1, void *a2)
{
  v3 = [a2 feedItemForHeadlineFetch];
  if (v3)
  {
    v13 = v3;
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) identifier];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB18] array];
    }

    v9 = v8;

    v10 = [v13 identifier];
    [v9 addObject:v10];

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) identifier];
    [v11 setObject:v9 forKeyedSubscript:v12];

    v3 = v13;
  }
}

id __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2_57(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 items];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_3_58;
  v9[3] = &unk_279982910;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = [v4 fc_arrayByTransformingWithBlock:v9];

  return v7;
}

id __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_3_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 feedItemForHeadlineFetch];
  if (v4)
  {
    v5 = [*(a1 + 32) objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 40) appConfiguration];
  v7 = [v3 protoitemWithFetchedFeedItemHeadline:v5 configuration:v6];

  return v7;
}

- (void)validateOperation
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"today item operation requires a completion"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  *buf = 136315906;
  v3 = "[NTTodayItemOperation _saveWithCompletion:]";
  v4 = 2080;
  v5 = "NTTodayItemOperation.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_fetchProtoitemsWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  *buf = 136315906;
  v3 = "[NTTodayItemOperation _fetchProtoitemsWithCompletion:]";
  v4 = 2080;
  v5 = "NTTodayItemOperation.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

void __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 shortOperationDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6(&dword_25BF21000, v5, v6, "%{public}@ is missing headlines for feed items: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __55__NTTodayItemOperation__fetchProtoitemsWithCompletion___block_invoke_2_cold_2(void **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 shortOperationDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6(&dword_25BF21000, v5, v6, "%{public}@ will fail with input sections: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end