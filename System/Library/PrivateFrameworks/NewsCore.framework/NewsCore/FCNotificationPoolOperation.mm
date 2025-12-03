@interface FCNotificationPoolOperation
- (FCNotificationPoolOperation)init;
- (FCNotificationPoolOperation)initWithContext:(id)context contentVariantProvider:(id)provider;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCNotificationPoolOperation

- (FCNotificationPoolOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNotificationPoolOperation init]";
    v10 = 2080;
    v11 = "FCNotificationPoolOperation.m";
    v12 = 1024;
    v13 = 47;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNotificationPoolOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNotificationPoolOperation)initWithContext:(id)context contentVariantProvider:(id)provider
{
  contextCopy = context;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = FCNotificationPoolOperation;
  v9 = [(FCOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_contentVariantProvider, provider);
  }

  return v10;
}

- (void)performOperation
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__FCNotificationPoolOperation_performOperation__block_invoke;
  v13[3] = &unk_1E7C396C0;
  v13[4] = self;
  v3 = [MEMORY[0x1E69B68F8] firstly:v13];
  v4 = zalgo();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__FCNotificationPoolOperation_performOperation__block_invoke_2;
  v12[3] = &unk_1E7C3B298;
  v12[4] = self;
  v5 = [v3 thenOn:v4 then:v12];
  v6 = zalgo();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__FCNotificationPoolOperation_performOperation__block_invoke_3;
  v11[3] = &unk_1E7C3B2C0;
  v11[4] = self;
  v7 = [v5 thenOn:v6 then:v11];
  v8 = zalgo();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__FCNotificationPoolOperation_performOperation__block_invoke_10;
  v10[3] = &unk_1E7C36E50;
  v10[4] = self;
  v9 = [v7 errorOn:v8 error:v10];
}

id __47__FCNotificationPoolOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(v1 + 384) configurationManager];
    v3 = FCCoreConfigurationPromise(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __47__FCNotificationPoolOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NewsCoreUserDefaults();
  v5 = [v4 BOOLForKey:@"simulate_notification_pool_with_esl"];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = v3;
    if (v6)
    {
      v8 = objc_alloc(MEMORY[0x1E69B68F8]);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v9 = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke;
LABEL_6:
      v14 = v9;
      v15 = &unk_1E7C3B310;
      v16 = v6;
      v17 = v7;
      v10 = [v8 initWithResolver:&v12];

      goto LABEL_7;
    }
  }

  else
  {
    v7 = v3;
    if (v6)
    {
      v8 = objc_alloc(MEMORY[0x1E69B68F8]);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v9 = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke;
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

uint64_t __47__FCNotificationPoolOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 shortOperationDescription];
    v13 = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = [v4 count];
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will finish with %lu notification items", &v13, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    objc_storeStrong((v9 + 400), a2);
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
  }

  [v10 finishedPerformingOperationWithError:0];

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)operationWillFinishWithError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  itemHandler = [(FCNotificationPoolOperation *)self itemHandler];

  if (itemHandler)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    if (self)
    {
      resultNotificationItems = self->_resultNotificationItems;
    }

    else
    {
      resultNotificationItems = 0;
    }

    v7 = resultNotificationItems;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          itemHandler2 = [(FCNotificationPoolOperation *)self itemHandler];
          itemHandler2[2](itemHandler2, v12);

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  completionHandler = [(FCNotificationPoolOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(FCNotificationPoolOperation *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_2;
  v43[3] = &unk_1E7C3C728;
  v7 = *(a1 + 40);
  v43[4] = *(a1 + 32);
  v44 = v7;
  v8 = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_2(v43);
  if ([v8 count])
  {
    v9 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 shortOperationDescription];
      *buf = 138543618;
      v46 = v12;
      v47 = 2114;
      v48 = v8;
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch from notification item list IDs: %{public}@", buf, 0x16u);
    }

    v13 = objc_alloc_init(FCCKBatchedMultiFetchQueryOperation);
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 384);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 internalContentContext];
    v17 = [v16 contentDatabase];
    [(FCCKBatchedMultiFetchQueryOperation *)v13 setDatabase:v17];

    v18 = +[FCEdgeCacheHint edgeCacheHintForNotificationPool];
    v20 = v18;
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v19, v18, 424);

      objc_storeStrong(&v13->_recordIDs, v8);
      v13->_maxBatchSize = 1;
    }

    else
    {
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_24;
    v40[3] = &unk_1E7C36D40;
    v40[4] = *(a1 + 32);
    v21 = [MEMORY[0x1E695DEC8] fc_array:v40];
    [(FCCKBatchedMultiFetchQueryOperation *)v13 setRecordSpecs:v21];

    v22 = objc_opt_new();
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_2_29;
    newValue[3] = &unk_1E7C36D68;
    v24 = v22;
    v39 = v24;
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v23, newValue, 448);
    }

    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_3_31;
    v33 = &unk_1E7C3C750;
    v25 = v6;
    v26 = *(a1 + 32);
    v34 = v24;
    v35 = v26;
    v36 = v25;
    v37 = v5;
    v28 = v24;
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v27, &v30, 464);
    }

    [*(a1 + 32) associateChildOperation:{v13, v30, v31, v32, v33}];
    [(FCOperation *)v13 start];
  }

  else
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_5;
    v41[3] = &unk_1E7C37BC0;
    v41[4] = *(a1 + 32);
    v42 = v5;
    __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_5(v41);
  }

  v29 = *MEMORY[0x1E69E9840];
}

id __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 392);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 preferredContentVariant];
  if (v4 == 1)
  {
    v6 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 40) paidNotificationItemListIDs];
      goto LABEL_10;
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_10;
    }

    v5 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 40) freeNotificationItemListIDs];
      goto LABEL_10;
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_5(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will end early because there are no notification item list IDs", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_24(uint64_t a1, void *a2)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, @"NotificationItemList", 16);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 384);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 internalContentContext];
  v10 = [v9 notificationItemListRecordSource];
  v12 = [v10 desiredKeys];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v11, v12, 24);
  }

  v40[0] = @"notificationItemIDs";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v13, v14, 32);
  }

  [v3 addObject:v6];
  v15 = objc_opt_new();
  v17 = v15;
  if (v15)
  {
    objc_setProperty_nonatomic_copy(v15, v16, @"NotificationItem", 16);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 384);
  }

  else
  {
    v19 = 0;
  }

  v20 = [v19 internalContentContext];
  v21 = [v20 notificationItemRecordSource];
  v23 = [v21 desiredKeys];
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v22, v23, 24);
  }

  v39 = @"articleID";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v24, v25, 32);
  }

  [v3 addObject:v17];
  v26 = objc_opt_new();
  v28 = v26;
  if (v26)
  {
    objc_setProperty_nonatomic_copy(v26, v27, @"Article", 16);
  }

  v29 = MEMORY[0x1E69B6E30];
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(v30 + 384);
  }

  else
  {
    v31 = 0;
  }

  v32 = [v31 internalContentContext];
  v33 = [v32 articleRecordSource];
  v34 = [v29 keysForArticleRecordWithRecordSource:v33];
  v36 = v34;
  if (v28)
  {
    objc_setProperty_nonatomic_copy(v28, v35, v34, 24);

    objc_setProperty_nonatomic_copy(v28, v37, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v28];

  v38 = *MEMORY[0x1E69E9840];
}

void __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_3_31(uint64_t a1, uint64_t a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = [*(a1 + 32) readOnlyArray];
    v7 = [v6 fc_dictionaryWithKeyBlock:&__block_literal_global_36_0];
    v8 = [v6 fc_dictionaryWithKeyBlock:&__block_literal_global_38_1];
    v43 = v6;
    v9 = [v6 fc_arrayOfObjectsPassingTest:&__block_literal_global_41_0];
    v48 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v9;
    v46 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (!v46)
    {
      goto LABEL_31;
    }

    v45 = *v60;
    v50 = v7;
    v51 = v8;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v60 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v10;
        v11 = *(*(&v59 + 1) + 8 * v10);
        v12 = *(a1 + 40);
        if (v12)
        {
          v12 = v12[48];
        }

        v13 = v12;
        v14 = [v13 internalContentContext];
        v15 = [v14 notificationItemListRecordSource];
        v16 = [v15 recordFromCKRecord:v11];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v49 = v16;
        v52 = [v16 notificationItemIDs];
        v8 = v51;
        v54 = [v52 countByEnumeratingWithState:&v55 objects:v69 count:16];
        if (v54)
        {
          v53 = *v56;
          do
          {
            v17 = 0;
            do
            {
              if (*v56 != v53)
              {
                objc_enumerationMutation(v52);
              }

              v18 = [v8 objectForKeyedSubscript:*(*(&v55 + 1) + 8 * v17)];
              v19 = *(a1 + 40);
              if (v19)
              {
                v20 = *(v19 + 384);
              }

              else
              {
                v20 = 0;
              }

              v21 = [v20 internalContentContext];
              v22 = [v21 notificationItemRecordSource];
              v23 = [v22 recordFromCKRecord:v18];

              v24 = [v23 articleID];

              if (v24)
              {
                v25 = [v23 articleID];
                v26 = [v7 objectForKeyedSubscript:v25];

                v27 = *(a1 + 40);
                v28 = v26;
                v29 = v28;
                v30 = 0;
                v31 = v28;
                if (v27 && v28)
                {
                  v32 = a1;
                  v33 = MEMORY[0x1E69B6E30];
                  v34 = *(v27 + 384);
                  v35 = [v34 contentStoreFrontID];
                  v36 = [*(v27 + 384) internalContentContext];
                  v37 = [v36 articleRecordSource];
                  v30 = [v33 feedItemFromCKRecord:v29 storefrontID:v35 recordSource:v37];

                  if (v30)
                  {
                    v38 = objc_alloc(MEMORY[0x1E69B6EC8]);
                    v39 = [v49 notificationSource];
                    v40 = [v49 algoID];
                    v31 = [v38 initWithRecord:v23 feedItem:v30 source:v39 algoID:v40];

                    [v48 addObject:v31];
                    a1 = v32;
                    v7 = v50;
                    v8 = v51;
                    goto LABEL_22;
                  }

                  a1 = v32;
                  v7 = v50;
                  v8 = v51;
                }

                else
                {
LABEL_22:
                }
              }

              ++v17;
            }

            while (v54 != v17);
            v41 = [v52 countByEnumeratingWithState:&v55 objects:v69 count:16];
            v54 = v41;
          }

          while (v41);
        }

        v10 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (!v46)
      {
LABEL_31:

        (*(*(a1 + 56) + 16))();
        v5 = v43;
        v4 = 0;
        goto LABEL_32;
      }
    }
  }

  v63 = MEMORY[0x1E69E9820];
  v64 = 3221225472;
  v65 = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_4_32;
  v66 = &unk_1E7C37778;
  v68 = *(a1 + 48);
  v67 = v4;
  v68[2](v68, v67);

  v5 = v68;
LABEL_32:

  v42 = *MEMORY[0x1E69E9840];
}

id __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_5_33(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 recordType];
  if ([v3 isEqualToString:@"Article"])
  {
    v4 = [v2 recordID];
    v5 = [v4 recordName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 recordType];
  if ([v3 isEqualToString:@"NotificationItem"])
  {
    v4 = [v2 recordID];
    v5 = [v4 recordName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"NotificationItemList"];

  return v3;
}

void __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 shortOperationDescription];
    *buf = 138543362;
    v34 = v10;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ will simulate notification pool using global ESL inventory", buf, 0xCu);
  }

  v11 = [FCGlobalCuratedESLArticlesOperation alloc];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 384);
    v14 = *(v12 + 392);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = *(a1 + 40);
  v16 = v13;
  v17 = [(FCGlobalCuratedESLArticlesOperation *)v11 initWithContext:v16 configuration:v15 contentVariantProvider:v14];

  v18 = objc_opt_new();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_47;
  v31[3] = &unk_1E7C3C778;
  v19 = v18;
  v32 = v19;
  [(FCGlobalCuratedESLArticlesOperation *)v17 setFeedItemHandler:v31];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_2;
  v27 = &unk_1E7C3C7C8;
  v28 = v19;
  v29 = v6;
  v30 = v5;
  v20 = v5;
  v21 = v19;
  v22 = v6;
  [(FCGlobalCuratedESLArticlesOperation *)v17 setCompletionHandler:&v24];
  [*(a1 + 32) associateChildOperation:{v17, v24, v25, v26, v27}];
  [(FCOperation *)v17 start];

  v23 = *MEMORY[0x1E69E9840];
}

void __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_3;
    v14 = &unk_1E7C37778;
    v16 = *(a1 + 40);
    v15 = v3;
    v16[2](v16, v15);

    v4 = v16;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [*(a1 + 32) readOnlyArray];
    v7 = [v6 fc_subarrayWithMaxCount:2000];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_4;
    v9[3] = &unk_1E7C3C7A0;
    v10 = v5;
    v4 = v5;
    v8 = [v7 fc_arrayByTransformingWithBlock:v9];

    (*(*(a1 + 48) + 16))();
  }
}

id __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B6EC8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = FCRandomNotificationItemCloudKitID();
  v7 = [v4 articleID];
  v8 = [v4 clusterID];
  LODWORD(v12) = 0;
  LODWORD(v11) = 7;
  v9 = [v5 initWithIdentifier:v6 canonicalID:v7 clusterID:v8 notabilityScores:*(a1 + 32) suppressIfFollowingTagIDs:MEMORY[0x1E695E0F0] targetMinNewsVersion:0 targetDeviceTypes:v11 feedItem:v4 source:v12 algoID:@"client_simulation"];

  return v9;
}

@end