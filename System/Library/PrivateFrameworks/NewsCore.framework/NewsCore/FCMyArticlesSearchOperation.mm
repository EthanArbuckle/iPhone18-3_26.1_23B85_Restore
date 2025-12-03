@interface FCMyArticlesSearchOperation
- (BOOL)validateOperation;
- (FCMyArticlesSearchOperation)init;
- (id)_cappedFeedItemsFromResponses:(id)responses allFeedItems:(id)items;
- (void)_generateFeedRequestsForFeedRange:(id)range completionHandler:(id)handler;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCMyArticlesSearchOperation

- (FCMyArticlesSearchOperation)init
{
  v3.receiver = self;
  v3.super_class = FCMyArticlesSearchOperation;
  result = [(FCOperation *)&v3 init];
  if (result)
  {
    result->_channelsOnly = 1;
    result->_cachedOnly = 1;
  }

  return result;
}

- (BOOL)validateOperation
{
  v27 = *MEMORY[0x1E69E9840];
  context = [(FCMyArticlesSearchOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"articles search operation requires a context"];
    v19 = 136315906;
    v20 = "[FCMyArticlesSearchOperation validateOperation]";
    v21 = 2080;
    v22 = "FCMyArticlesSearchOperation.m";
    v23 = 1024;
    v24 = 51;
    v25 = 2114;
    v26 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v19, 0x26u);
  }

  feature = [(FCMyArticlesSearchOperation *)self feature];

  if (!feature && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"articles search operation requires a feature"];
    v19 = 136315906;
    v20 = "[FCMyArticlesSearchOperation validateOperation]";
    v21 = 2080;
    v22 = "FCMyArticlesSearchOperation.m";
    v23 = 1024;
    v24 = 52;
    v25 = 2114;
    v26 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v19, 0x26u);
  }

  dateRange = [(FCMyArticlesSearchOperation *)self dateRange];
  if (!dateRange || (v6 = dateRange, -[FCMyArticlesSearchOperation dateRange](self, "dateRange"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isFinite], v7, v6, (v8 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"articles search operation requires a finite date range"];
      v19 = 136315906;
      v20 = "[FCMyArticlesSearchOperation validateOperation]";
      v21 = 2080;
      v22 = "FCMyArticlesSearchOperation.m";
      v23 = 1024;
      v24 = 53;
      v25 = 2114;
      v26 = v16;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v19, 0x26u);
    }
  }

  context2 = [(FCMyArticlesSearchOperation *)self context];
  if (context2)
  {
    feature2 = [(FCMyArticlesSearchOperation *)self feature];
    if (feature2)
    {
      dateRange2 = [(FCMyArticlesSearchOperation *)self dateRange];
      if (dateRange2)
      {
        dateRange3 = [(FCMyArticlesSearchOperation *)self dateRange];
        isFinite = [dateRange3 isFinite];
      }

      else
      {
        isFinite = 0;
      }
    }

    else
    {
      isFinite = 0;
    }
  }

  else
  {
    isFinite = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return isFinite;
}

- (void)performOperation
{
  dateRange = [(FCMyArticlesSearchOperation *)self dateRange];
  v4 = [FCFeedRange feedRangeFromDateRange:dateRange];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__FCMyArticlesSearchOperation_performOperation__block_invoke;
  v5[3] = &unk_1E7C39A48;
  v5[4] = self;
  [(FCMyArticlesSearchOperation *)self _generateFeedRequestsForFeedRange:v4 completionHandler:v5];
}

void __47__FCMyArticlesSearchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 || ![v7 count])
  {
    [*(a1 + 32) finishedPerformingOperationWithError:v9];
  }

  else
  {
    v10 = objc_alloc_init(FCFeedRequestOperation);
    v11 = [*(a1 + 32) context];
    [(FCFeedRequestOperation *)v10 setContext:v11];

    [(FCFeedRequestOperation *)v10 setConfiguration:v8];
    [(FCFeedRequestOperation *)v10 setFeedRequests:v7];
    v12 = [*(a1 + 32) filterOptions];
    v19 = [*(a1 + 32) context];
    v13 = [v19 configurationManager];
    v14 = [v13 configuration];
    v15 = [*(a1 + 32) context];
    v16 = [FCFeedTransformationFilter transformationWithFilterOptions:v12 configuration:v14 context:v15];
    v21[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(FCFeedRequestOperation *)v10 setFeedTransformations:v17];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__FCMyArticlesSearchOperation_performOperation__block_invoke_2;
    v20[3] = &unk_1E7C39A20;
    v20[4] = *(a1 + 32);
    [(FCFeedRequestOperation *)v10 setRequestCompletionHandler:v20];
    [*(a1 + 32) associateChildOperation:v10];
    [(FCOperation *)v10 start];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __47__FCMyArticlesSearchOperation_performOperation__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v9 = a4;
  v8 = [v7 _cappedFeedItemsFromResponses:a2 allFeedItems:a3];
  [*(a1 + 32) setResultFeedItems:v8];

  [*(a1 + 32) finishedPerformingOperationWithError:v9];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  resultFeedItems = [(FCMyArticlesSearchOperation *)self resultFeedItems];

  if (errorCopy)
  {
    if (!resultFeedItems)
    {
      goto LABEL_7;
    }

    selfCopy2 = self;
    v6 = 0;
  }

  else
  {
    if (resultFeedItems)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1E695E0F0];
    selfCopy2 = self;
  }

  [(FCMyArticlesSearchOperation *)selfCopy2 setResultFeedItems:v6];
LABEL_7:
  searchCompletionHandler = [(FCMyArticlesSearchOperation *)self searchCompletionHandler];

  v9 = errorCopy;
  if (searchCompletionHandler)
  {
    searchCompletionHandler2 = [(FCMyArticlesSearchOperation *)self searchCompletionHandler];
    resultFeedItems2 = [(FCMyArticlesSearchOperation *)self resultFeedItems];
    resultFeedContextByFeedID = [(FCMyArticlesSearchOperation *)self resultFeedContextByFeedID];
    (searchCompletionHandler2)[2](searchCompletionHandler2, resultFeedItems2, resultFeedContextByFeedID, errorCopy);

    v9 = errorCopy;
  }

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (void)_generateFeedRequestsForFeedRange:(id)range completionHandler:(id)handler
{
  rangeCopy = range;
  handlerCopy = handler;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__11;
  v41[4] = __Block_byref_object_dispose__11;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__11;
  v39[4] = __Block_byref_object_dispose__11;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__11;
  v37[4] = __Block_byref_object_dispose__11;
  v38 = 0;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  context = [(FCMyArticlesSearchOperation *)self context];
  configurationManager = [context configurationManager];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke;
  v33[3] = &unk_1E7C39A70;
  v35 = v41;
  v36 = v39;
  v9 = v6;
  v34 = v9;
  FCCoreConfigurationFetch(configurationManager, v33);

  dispatch_group_enter(v9);
  context2 = [(FCMyArticlesSearchOperation *)self context];
  tagController = [context2 tagController];
  context3 = [(FCMyArticlesSearchOperation *)self context];
  subscriptionList = [context3 subscriptionList];
  allSubscribedTagIDs = [subscriptionList allSubscribedTagIDs];
  allObjects = [allSubscribedTagIDs allObjects];
  qualityOfService = [(FCMyArticlesSearchOperation *)self qualityOfService];
  v17 = FCDispatchQueueForQualityOfService([(FCMyArticlesSearchOperation *)self qualityOfService]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke_2;
  v30[3] = &unk_1E7C39A98;
  v32 = v37;
  v18 = v9;
  v31 = v18;
  [tagController fetchTagsForTagIDs:allObjects qualityOfService:qualityOfService callbackQueue:v17 completionHandler:v30];

  v19 = FCDispatchQueueForQualityOfService([(FCMyArticlesSearchOperation *)self qualityOfService]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke_3;
  block[3] = &unk_1E7C39B10;
  v26 = handlerCopy;
  v27 = v37;
  v28 = v39;
  v29 = v41;
  block[4] = self;
  v25 = rangeCopy;
  v20 = rangeCopy;
  v21 = handlerCopy;
  dispatch_group_notify(v18, v19, block);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(v41, 8);
}

void __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = a1[4];

  dispatch_group_leave(v12);
}

void __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allValues];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 purchaseController];
  v4 = [v3 allPurchasedTagIDs];

  if ([*(a1 + 32) channelsOnly])
  {
    v5 = [*(*(*(a1 + 56) + 8) + 40) fc_arrayOfObjectsPassingTest:&__block_literal_global_18];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v8 = *(*(*(a1 + 64) + 8) + 40) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke_5;
    aBlock[3] = &unk_1E7C39AE8;
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v32 = v10;
    aBlock[4] = v11;
    v12 = v4;
    v13 = *(a1 + 72);
    v30 = v12;
    v33 = v13;
    v31 = *(a1 + 40);
    v24 = _Block_copy(aBlock);
    v23 = *(*(*(a1 + 56) + 8) + 40);
    v28 = [*(a1 + 32) context];
    v27 = [v28 subscriptionList];
    v22 = [v27 mutedTagIDs];
    v26 = [*(a1 + 32) context];
    v25 = [v26 purchaseController];
    v14 = [v25 allPurchasedTagIDs];
    v15 = [*(a1 + 32) context];
    v16 = [v15 bundleSubscriptionManager];
    v17 = *(*(*(a1 + 72) + 8) + 40);
    v18 = [*(a1 + 32) context];
    v19 = [*(a1 + 32) context];
    v20 = [v19 pptContext];
    LOBYTE(v21) = [v20 isRunningPPT] ^ 1;
    +[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:](FCForYouQueryUtilities, "fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:", v23, v22, v14, v16, v17, v18, v21, [*(a1 + 32) qualityOfService], v24);
  }

  else
  {
    v9 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }
}

void __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke_6;
    aBlock[3] = &unk_1E7C39AC0;
    aBlock[4] = *(a1 + 32);
    v27 = _Block_copy(aBlock);
    v28 = *(a1 + 40);
    v6 = [*(a1 + 32) context];
    v7 = [v6 bundleSubscriptionManager];
    v8 = *(*(*(a1 + 64) + 8) + 40);
    v9 = v5;
    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) sidecar];
    v12 = [*(a1 + 32) context];
    v13 = [v12 pptContext];
    LOBYTE(v26) = [v13 isRunningPPT];
    v25 = v10;
    v5 = v9;
    v14 = [FCForYouQueryUtilities feedRequestsForTags:v9 tagBinProvider:v27 hiddenFeedIDs:MEMORY[0x1E695E0F0] allowPaidBundleFeed:1 purchasedTagIDs:v28 bundleSubscriptionProvider:v7 configuration:v8 maxCount:0 feedRange:v25 sidecar:v11 isRunningPPT:v26];

    v15 = [v14 feedContextByFeedID];
    [*(a1 + 32) setResultFeedContextByFeedID:v15];

    v16 = [v14 allRequests];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          [v21 setCachedOnly:{objc_msgSend(*(a1 + 32), "cachedOnly")}];
          v22 = [*(a1 + 32) feature];
          [v21 setRequiredFeature:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v18);
    }

    v23 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __83__FCMyArticlesSearchOperation__generateFeedRequestsForFeedRange_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  if ([a2 tagType] != 1)
  {
    return 3;
  }

  v3 = [*(a1 + 32) context];
  v4 = FCFeedBinForTopicsInForYou(v3);

  return v4;
}

- (id)_cappedFeedItemsFromResponses:(id)responses allFeedItems:(id)items
{
  responsesCopy = responses;
  itemsCopy = items;
  if (-[FCMyArticlesSearchOperation maxFeedItems](self, "maxFeedItems") && (v8 = [itemsCopy count], v8 > -[FCMyArticlesSearchOperation maxFeedItems](self, "maxFeedItems")))
  {
    array = [MEMORY[0x1E695DF70] array];
    v10 = [responsesCopy sortedArrayUsingSelector:sel_compareFeedItemCount_];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__FCMyArticlesSearchOperation__cappedFeedItemsFromResponses_allFeedItems___block_invoke_2;
    v15[3] = &unk_1E7C39B38;
    v15[4] = self;
    v11 = array;
    v16 = v11;
    v17 = responsesCopy;
    [v10 enumerateObjectsUsingBlock:v15];
    v12 = v17;
    v13 = v11;
  }

  else
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __74__FCMyArticlesSearchOperation__cappedFeedItemsFromResponses_allFeedItems___block_invoke;
    v21 = &unk_1E7C36F98;
    v22 = itemsCopy;
    v10 = v22;
    v13 = v10;
  }

  return v13;
}

void __74__FCMyArticlesSearchOperation__cappedFeedItemsFromResponses_allFeedItems___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 maxFeedItems];
  v8 = v7 - [*(a1 + 40) count];
  v9 = v8 / ([*(a1 + 48) count] - a3);
  v10 = [v6 feedItems];
  v11 = [v10 count];

  if (v9 >= v11)
  {
    v15 = *(a1 + 40);
    v16 = [v6 feedItems];

    [v15 addObjectsFromArray:v16];
  }

  else
  {
    v12 = [v6 feedItems];

    v16 = [v12 sortedArrayUsingSelector:sel_compareGlobalUserFeedbackDescending_];

    v13 = *(a1 + 40);
    v14 = [v16 fc_subarrayWithMaxCount:v9];
    [v13 addObjectsFromArray:v14];
  }
}

@end