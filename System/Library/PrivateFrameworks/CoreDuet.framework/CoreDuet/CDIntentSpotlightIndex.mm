@interface CDIntentSpotlightIndex
@end

@implementation CDIntentSpotlightIndex

void __69___CDIntentSpotlightIndex_triggerIndexIncludingAdditions_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexer];
  v3 = [v2 isIndexing];

  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 delay];
    v6 = dispatch_time(0, (v5 * 1000000000.0));
    v7 = [*(a1 + 32) activityQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___CDIntentSpotlightIndex_triggerIndexIncludingAdditions_completion___block_invoke_2;
    block[3] = &unk_1E7368F58;
    v8 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v14 = v8;
    dispatch_after(v6, v7, block);
  }

  else
  {
    v9 = v4;
    objc_sync_enter(v9);
    if ([*(a1 + 32) includeAdditions])
    {
      v10 = [*(a1 + 32) batchSize];
    }

    else
    {
      v10 = 0;
    }

    v12 = [*(a1 + 32) completion];
    [*(a1 + 32) setIncludeAdditions:0];
    [*(a1 + 32) setCompletion:0];
    objc_sync_exit(v9);

    v11 = [*(a1 + 32) indexer];
    [v11 beginIndexingWithBatchSize:v10 completion:v12];
  }
}

@end