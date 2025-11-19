@interface FCArticleStreamingResults
- (void)fetchObjectsUpToCount:(unint64_t)a3 qualityOfService:(int64_t)a4 batchSize:(unint64_t)a5 completion:(id)a6;
@end

@implementation FCArticleStreamingResults

- (void)fetchObjectsUpToCount:(unint64_t)a3 qualityOfService:(int64_t)a4 batchSize:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [(FCStreamingResults *)self serialQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__FCArticleStreamingResults_fetchObjectsUpToCount_qualityOfService_batchSize_completion___block_invoke;
  v13[3] = &unk_1E7C41758;
  v15 = a3;
  v16 = a5;
  v17 = a4;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 enqueueBlockForMainThread:v13];
}

void __89__FCArticleStreamingResults_fetchObjectsUpToCount_qualityOfService_batchSize_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) count];
  if (*(a1 + 48) <= v4 || (v5 = v4, [*(a1 + 32) underlyingStream], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isFinished"), v6, (v7 & 1) != 0))
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }

    v3[2](v3);
  }

  else
  {
    if (*(a1 + 48) - v5 >= *(a1 + 56))
    {
      v9 = *(a1 + 56);
    }

    else
    {
      v9 = *(a1 + 48) - v5;
    }

    objc_opt_class();
    v10 = [*(a1 + 32) underlyingStream];
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __89__FCArticleStreamingResults_fetchObjectsUpToCount_qualityOfService_batchSize_completion___block_invoke_2;
    v18[3] = &unk_1E7C43370;
    v15 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v16 = *(a1 + 48);
    v21 = v5;
    v22 = v16;
    v23 = v14;
    v24 = v13;
    v19 = v15;
    v20 = v3;
    v17 = [v12 fetchMoreResultsWithLimit:v9 qualityOfService:v14 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:v18];
  }
}

void __89__FCArticleStreamingResults_fetchObjectsUpToCount_qualityOfService_batchSize_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = a2;
  v11 = [v8 results];
  v12 = [v11 count];
  v13 = *(a1 + 56);

  if (v12 != v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"async results are out of sync"];
    v18 = 136315906;
    v19 = "[FCArticleStreamingResults fetchObjectsUpToCount:qualityOfService:batchSize:completion:]_block_invoke_2";
    v20 = 2080;
    v21 = "FCArticleStreamingResults.m";
    v22 = 1024;
    v23 = 42;
    v24 = 2114;
    v25 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v18, 0x26u);
  }

  v14 = [*(a1 + 32) results];
  [v14 addObjectsFromArray:v10];

  [*(a1 + 32) setFeedbackResult:v9];
  if (v7)
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v7);
    }
  }

  else
  {
    [*(a1 + 32) fetchObjectsUpToCount:*(a1 + 64) qualityOfService:*(a1 + 72) batchSize:*(a1 + 80) completion:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

@end