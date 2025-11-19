@interface FCLatestStoriesOperation
- (FCLatestStoriesOperation)initWithContext:(id)a3 dateRange:(id)a4 totalLimit:(unint64_t)a5 perFeedLimit:(unint64_t)a6;
- (id)_constructFeedRequestsFromTags:(id)a3;
- (void)_fetchTagsForQueryingWithCompletionHandler:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
@end

@implementation FCLatestStoriesOperation

- (FCLatestStoriesOperation)initWithContext:(id)a3 dateRange:(id)a4 totalLimit:(unint64_t)a5 perFeedLimit:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = FCLatestStoriesOperation;
  v13 = [(FCOperation *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, a3);
    objc_storeStrong(&v14->_dateRange, a4);
    v14->_totalLimit = a5;
    v14->_perFeedLimit = a6;
  }

  return v14;
}

- (void)prepareOperation
{
  v6 = [(FCLatestStoriesOperation *)self context];
  v3 = [v6 configurationManager];
  v4 = [v3 configuration];
  configuration = self->_configuration;
  self->_configuration = v4;
}

- (void)performOperation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__FCLatestStoriesOperation_performOperation__block_invoke;
  v2[3] = &unk_1E7C37750;
  v2[4] = self;
  [(FCLatestStoriesOperation *)self _fetchTagsForQueryingWithCompletionHandler:v2];
}

void __44__FCLatestStoriesOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [*(a1 + 32) _constructFeedRequestsFromTags:v5];
    v8 = [v7 allRequests];
    v9 = [v7 feedContextByFeedID];
    v10 = objc_alloc_init(FCFeedRequestOperation);
    v11 = [*(a1 + 32) configuration];
    [(FCFeedRequestOperation *)v10 setConfiguration:v11];

    v12 = [*(a1 + 32) context];
    [(FCFeedRequestOperation *)v10 setContext:v12];

    [(FCFeedRequestOperation *)v10 setFeedRequests:v8];
    -[FCFeedRequestOperation setMaxCount:](v10, "setMaxCount:", [*(a1 + 32) totalLimit]);
    [(FCFeedRequestOperation *)v10 setOptions:[(FCFeedRequestOperation *)v10 options]| 0xE];
    [(FCFeedRequestOperation *)v10 setOptions:[(FCFeedRequestOperation *)v10 options]| 0x10];
    v13 = [FCFeedDatabase temporaryFeedDatabaseWithEndpoint:1];
    [(FCFeedRequestOperation *)v10 setFeedDatabase:v13];

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __44__FCLatestStoriesOperation_performOperation__block_invoke_3;
    v18 = &unk_1E7C39650;
    v19 = *(a1 + 32);
    v20 = v9;
    v14 = v9;
    [(FCFeedRequestOperation *)v10 setRequestCompletionHandler:&v15];
    [*(a1 + 32) associateChildOperation:{v10, v15, v16, v17, v18, v19}];
    [(FCOperation *)v10 start];
  }

  else
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __44__FCLatestStoriesOperation_performOperation__block_invoke_2;
    v24 = &unk_1E7C36C58;
    v25 = *(a1 + 32);
    v26 = v6;
    [v25 finishedPerformingOperationWithError:v26];
  }
}

void __44__FCLatestStoriesOperation_performOperation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(FCFeedItemHeadlinesOperation);
  v6 = [*(a1 + 32) context];
  [(FCFeedItemHeadlinesOperation *)v5 setContext:v6];

  v7 = [*(a1 + 32) configuration];
  [(FCFeedItemHeadlinesOperation *)v5 setConfiguration:v7];

  [(FCFeedItemHeadlinesOperation *)v5 setFeedItems:v4];
  v8 = [*(a1 + 32) context];
  v9 = [v8 feedPersonalizer];
  [(FCFeedItemHeadlinesOperation *)v5 setPersonalizer:v9];

  [(FCFeedItemHeadlinesOperation *)v5 setFeedPersonalizationConfigurationSet:0];
  [(FCFeedItemHeadlinesOperation *)v5 setFeedContextByFeedID:*(a1 + 40)];
  [(FCFeedItemHeadlinesOperation *)v5 setCachedOnly:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__FCLatestStoriesOperation_performOperation__block_invoke_4;
  v10[3] = &unk_1E7C37750;
  v10[4] = *(a1 + 32);
  [(FCFeedItemHeadlinesOperation *)v5 setHeadlinesCompletionHandler:v10];
  [*(a1 + 32) associateChildOperation:v5];
  [(FCOperation *)v5 start];
}

void __44__FCLatestStoriesOperation_performOperation__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResultHeadlines:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)operationWillFinishWithError:(id)a3
{
  v7 = a3;
  v4 = [(FCLatestStoriesOperation *)self headlinesCompletionHandler];

  if (v4)
  {
    v5 = [(FCLatestStoriesOperation *)self headlinesCompletionHandler];
    v6 = [(FCLatestStoriesOperation *)self resultHeadlines];
    (v5)[2](v5, v6, v7);
  }
}

- (void)_fetchTagsForQueryingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FCLatestStoriesOperation *)self context];
  v6 = [v5 subscriptionList];
  v7 = FCDispatchQueueForQualityOfService([(FCLatestStoriesOperation *)self qualityOfService]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__FCLatestStoriesOperation__fetchTagsForQueryingWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7C3B860;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v6 performFirstSyncWithCallbackQueue:v7 completion:v9];
}

void __71__FCLatestStoriesOperation__fetchTagsForQueryingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = [*(a1 + 32) context];
  v16 = [v17 subscriptionList];
  v12 = [v16 allSubscribedTagIDs];
  v15 = [*(a1 + 32) context];
  v14 = [v15 subscriptionList];
  v11 = [v14 mutedTagIDs];
  v13 = [*(a1 + 32) context];
  v2 = [v13 purchaseController];
  v3 = [v2 allPurchasedTagIDs];
  v4 = [*(a1 + 32) context];
  v5 = [v4 bundleSubscriptionManager];
  v6 = [*(a1 + 32) configuration];
  v7 = [*(a1 + 32) context];
  v8 = [*(a1 + 32) context];
  v9 = [v8 pptContext];
  LOBYTE(v10) = [v9 isRunningPPT] ^ 1;
  +[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:](FCForYouQueryUtilities, "fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:", v12, v11, v3, v5, v6, v7, v10, [*(a1 + 32) qualityOfService], *(a1 + 40));
}

- (id)_constructFeedRequestsFromTags:(id)a3
{
  v4 = a3;
  v5 = [(FCLatestStoriesOperation *)self dateRange];
  v6 = [FCFeedRange feedRangeFromDateRange:v5];

  v7 = [(FCLatestStoriesOperation *)self context];
  v8 = [v7 purchaseController];
  v9 = [v8 allPurchasedTagIDs];
  v10 = [(FCLatestStoriesOperation *)self context];
  v11 = [v10 bundleSubscriptionManager];
  v12 = [(FCLatestStoriesOperation *)self configuration];
  v13 = [(FCLatestStoriesOperation *)self perFeedLimit];
  v14 = [FCForYouQueryUtilities feedRequestsForTags:v4 tagBinProvider:&__block_literal_global_33 hiddenFeedIDs:MEMORY[0x1E695E0F0] purchasedTagIDs:v9 bundleSubscriptionProvider:v11 configuration:v12 maxCount:v13 feedRange:v6 sidecar:0 options:2];

  return v14;
}

@end