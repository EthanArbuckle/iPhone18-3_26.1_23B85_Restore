@interface FCMyArticlesPrewarmer
+ (BOOL)prewarmDateRange:(id)a3 context:(id)a4;
@end

@implementation FCMyArticlesPrewarmer

+ (BOOL)prewarmDateRange:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[FCMyArticlesRequest lastRequestIssued];
  if (v8)
  {
    v9 = [FCFeedRange feedRangeFromDateRange:v6];
    v10 = [v8 feedIDs];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__FCMyArticlesPrewarmer_prewarmDateRange_context___block_invoke_2;
    v18[3] = &unk_1E7C38D38;
    v19 = v9;
    v11 = v9;
    v12 = [v10 fc_arrayByTransformingWithBlock:v18];

    v13 = [a1 prewarmRequestKeyForDateRange:v6];
    v14 = [[FCFeedPrewarmRequest alloc] initWithRequestKey:v13 feedRequests:v12 options:1 edgeCacheHint:0];
    v15 = [v7 internalContentContext];
    v16 = [v15 feedPrewarmer];
    [v16 startPrewarmingRequest:v14];
  }

  return v8 != 0;
}

FCFeedRequest *__50__FCMyArticlesPrewarmer_prewarmDateRange_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(FCFeedRequest);
  [(FCFeedRequest *)v4 setFeedID:v3];

  [(FCFeedRequest *)v4 setFeedRange:*(a1 + 32)];

  return v4;
}

@end