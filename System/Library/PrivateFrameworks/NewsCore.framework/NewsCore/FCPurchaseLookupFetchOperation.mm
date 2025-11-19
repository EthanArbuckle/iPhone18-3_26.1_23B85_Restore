@interface FCPurchaseLookupFetchOperation
- (FCPurchaseLookupFetchOperation)init;
- (FCPurchaseLookupFetchOperation)initWithPurchaseIDs:(id)a3 contentContext:(id)a4;
- (id)_prefixedPurchasedIDs:(id)a3;
- (id)processFetchedResults:(id)a3 error:(id)a4;
- (void)performOperation;
@end

@implementation FCPurchaseLookupFetchOperation

- (void)performOperation
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  if (([v4 isEqualToString:@"com.apple.stocks.widget"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"com.apple.news.widget"))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__FCPurchaseLookupFetchOperation_performOperation__block_invoke;
    v14[3] = &unk_1E7C36EA0;
    v14[4] = self;
    __50__FCPurchaseLookupFetchOperation_performOperation__block_invoke(v14);
  }

  else
  {
    v5 = objc_alloc_init(FCRecordChainFetchOperation);
    v6 = [(FCPurchaseLookupFetchOperation *)self contentContext];
    [(FCRecordChainFetchOperation *)v5 setContext:v6];

    v7 = [FCCachePolicy cachePolicyWithSoftMaxAge:900.0];
    [(FCRecordChainFetchOperation *)v5 setCachePolicy:v7];

    v8 = [(FCPurchaseLookupFetchOperation *)self purchaseIDs];
    v9 = [(FCPurchaseLookupFetchOperation *)self _prefixedPurchasedIDs:v8];
    [(FCRecordChainFetchOperation *)v5 setTopLevelRecordIDs:v9];

    v15 = @"PurchaseLookup";
    v16[0] = MEMORY[0x1E695E0F0];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [(FCRecordChainFetchOperation *)v5 setLinkKeysByRecordType:v10];

    v11 = +[FCEdgeCacheHint edgeCacheHintForPurchaseLookup];
    [(FCRecordChainFetchOperation *)v5 setEdgeCacheHint:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__FCPurchaseLookupFetchOperation_performOperation__block_invoke_2;
    v13[3] = &unk_1E7C39358;
    v13[4] = self;
    [(FCRecordChainFetchOperation *)v5 setRecordChainCompletionHandler:v13];
    [(FCOperation *)self associateChildOperation:v5];
    [(FCOperation *)v5 start];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __50__FCPurchaseLookupFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Error when fetching purchase lookup record error=%{public}@", &v13, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = [v5 allValues];
  v10 = [v9 fc_onlyObject];
  v11 = [v8 processFetchedResults:v10 error:v6];
  [v8 finishExecutingWithFetchedObject:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (FCPurchaseLookupFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPurchaseLookupFetchOperation init]";
    v10 = 2080;
    v11 = "FCPurchaseLookupFetchOperation.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPurchaseLookupFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPurchaseLookupFetchOperation)initWithPurchaseIDs:(id)a3 contentContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCPurchaseLookupFetchOperation;
  v9 = [(FCFetchOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_purchaseIDs, a3);
    objc_storeStrong(&v10->_contentContext, a4);
  }

  return v10;
}

void __50__FCPurchaseLookupFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:41 userInfo:0];
  [*(a1 + 32) finishedPerformingOperationWithError:v2];
}

- (id)_prefixedPurchasedIDs:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__FCPurchaseLookupFetchOperation__prefixedPurchasedIDs___block_invoke;
  v9[3] = &unk_1E7C393D0;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __56__FCPurchaseLookupFetchOperation__prefixedPurchasedIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"IAP-", a2];
  [v2 addObject:v3];
}

- (id)processFetchedResults:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__85;
  v22 = __Block_byref_object_dispose__85;
  v23 = [MEMORY[0x1E696AEC0] string];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__FCPurchaseLookupFetchOperation_processFetchedResults_error___block_invoke;
  v14[3] = &unk_1E7C46F30;
  v9 = v7;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  v17 = &v18;
  [v5 enumerateRecordsAndInterestTokensWithBlock:v14];
  v11 = [FCPurchaseLookupFetchOperationResult alloc];
  v12 = [(FCPurchaseLookupFetchOperationResult *)v11 initWithChannelIDsByPurchaseID:v9 bundleChannelIDsByPurchaseID:v10 bundleChannelIDsVersion:v19[5] error:v6];

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __62__FCPurchaseLookupFetchOperation_processFetchedResults_error___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 base];
  v5 = [v4 identifier];

  if ([v5 hasPrefix:@"IAP-"])
  {
    v6 = [v5 substringFromIndex:{objc_msgSend(@"IAP-", "length")}];
    v7 = [v3 channelTagIDs];

    if (v7)
    {
      v8 = a1[4];
      v9 = [v3 channelTagIDs];
      v10 = [v9 copy];
      [v8 setObject:v10 forKey:v6];
    }

    v11 = [v3 bundleChannelTagIDs];

    if (v11)
    {
      v12 = a1[5];
      v13 = [v3 bundleChannelTagIDs];
      v14 = [v13 copy];
      [v12 setObject:v14 forKey:v6];
    }
  }

  else
  {
    v15 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "Purchase lookup identifier should have prefix IAP- but found %@", &v22, 0xCu);
    }
  }

  v16 = [v3 bundleChannelTagIDsVersion];

  if (v16)
  {
    v17 = [v3 bundleChannelTagIDsVersion];
    v18 = [v17 copy];
    v19 = *(a1[6] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end