@interface FCUserFacingTagSearchOperation
- (BOOL)validateOperation;
- (id)_fetchResultsForTagType:(unint64_t)a3 batchSize:(unint64_t)a4;
- (id)_fetchResultsForUserFacingTopicsWithInitialChannels:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCUserFacingTagSearchOperation

- (BOOL)validateOperation
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(FCUserFacingTagSearchOperation *)self contentContext];

  if (!v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tag search operation requires a content context"];
    v6 = 136315906;
    v7 = "[FCUserFacingTagSearchOperation validateOperation]";
    v8 = 2080;
    v9 = "FCUserFacingTagSearchOperation.m";
    v10 = 1024;
    v11 = 32;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }

  result = v2 != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v3 = [(FCUserFacingTagSearchOperation *)self userFacingTagOptions];
  if (v3)
  {
    v4 = v3;
    v5 = [(FCUserFacingTagSearchOperation *)self batchSize];
    v6 = 20;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__FCUserFacingTagSearchOperation_performOperation__block_invoke_2;
    v14[3] = &unk_1E7C3CB30;
    if (v5 > 0x14)
    {
      v6 = v5;
    }

    v14[4] = self;
    v14[5] = v6;
    v7 = [MEMORY[0x1E69B68F8] firstly:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__FCUserFacingTagSearchOperation_performOperation__block_invoke_3;
    v13[3] = &unk_1E7C3CB78;
    v13[4] = self;
    v13[5] = v4;
    v8 = [v7 then:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__FCUserFacingTagSearchOperation_performOperation__block_invoke_6;
    v12[3] = &unk_1E7C3CBA0;
    v12[4] = self;
    v9 = [v8 then:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__FCUserFacingTagSearchOperation_performOperation__block_invoke_7;
    v11[3] = &unk_1E7C36E50;
    v11[4] = self;
    v10 = [v9 error:v11];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__FCUserFacingTagSearchOperation_performOperation__block_invoke;
    v15[3] = &unk_1E7C36EA0;
    v15[4] = self;
    __50__FCUserFacingTagSearchOperation_performOperation__block_invoke(v15);
  }
}

void __50__FCUserFacingTagSearchOperation_performOperation__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setChannelSearchResults:v2];

  v3 = objc_opt_new();
  [*(a1 + 32) setTopicSearchResults:v3];
}

id __50__FCUserFacingTagSearchOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 underlyingStream];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  v8 = [v3 array];

  v9 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v10 fc_arrayByTransformingWithBlock:&__block_literal_global_48];
    v13 = [[FCTransformedStream alloc] initWithStream:v7 transformBlock:&__block_literal_global_48];
    v14 = [[FCStreamingResults alloc] initWithResults:v12 followedByStream:v13];
    [*(a1 + 32) setChannelSearchResults:v14];

    v11 = *(a1 + 40);
  }

  if ((v11 & 2) != 0)
  {
    v15 = [*(a1 + 32) _fetchResultsForUserFacingTopicsWithInitialChannels:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void *__50__FCUserFacingTagSearchOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 userFacingTagType] == 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t __50__FCUserFacingTagSearchOperation_performOperation__block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setTopicSearchResults:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:0];
  return 0;
}

- (void)operationWillFinishWithError:(id)a3
{
  v8 = a3;
  v4 = [(FCUserFacingTagSearchOperation *)self searchResultsBlock];

  if (v4)
  {
    v5 = [(FCUserFacingTagSearchOperation *)self searchResultsBlock];
    v6 = [(FCUserFacingTagSearchOperation *)self channelSearchResults];
    v7 = [(FCUserFacingTagSearchOperation *)self topicSearchResults];
    (v5)[2](v5, v6, v7, v8);
  }
}

- (id)_fetchResultsForUserFacingTopicsWithInitialChannels:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__FCUserFacingTagSearchOperation__fetchResultsForUserFacingTopicsWithInitialChannels___block_invoke;
  v9[3] = &unk_1E7C3B310;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithResolver:v9];

  return v7;
}

void __86__FCUserFacingTagSearchOperation__fetchResultsForUserFacingTopicsWithInitialChannels___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__FCUserFacingTagSearchOperation__fetchResultsForUserFacingTopicsWithInitialChannels___block_invoke_2;
  v17[3] = &unk_1E7C396C0;
  v17[4] = *(a1 + 32);
  v7 = [MEMORY[0x1E69B68F8] firstly:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__FCUserFacingTagSearchOperation__fetchResultsForUserFacingTopicsWithInitialChannels___block_invoke_3;
  v14[3] = &unk_1E7C3CBC8;
  v15 = *(a1 + 40);
  v16 = v5;
  v8 = v5;
  v9 = [v7 then:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__FCUserFacingTagSearchOperation__fetchResultsForUserFacingTopicsWithInitialChannels___block_invoke_5;
  v12[3] = &unk_1E7C39F48;
  v13 = v6;
  v10 = v6;
  v11 = [v9 error:v12];
}

uint64_t __86__FCUserFacingTagSearchOperation__fetchResultsForUserFacingTopicsWithInitialChannels___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 batchSize];

  return [v1 _fetchResultsForTagType:1 batchSize:v2];
}

uint64_t __86__FCUserFacingTagSearchOperation__fetchResultsForUserFacingTopicsWithInitialChannels___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fc_arrayOfObjectsPassingTest:&__block_literal_global_16_0];
  v5 = [v3 underlyingStream];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  v9 = MEMORY[0x1E695DEC8];
  v10 = [v3 array];
  v11 = [v9 fc_arrayByAddingObjectsFromArray:v10 toArray:v4];

  v12 = [[FCStreamingResults alloc] initWithResults:v11 followedByStream:v8];
  (*(*(a1 + 40) + 16))();

  return 0;
}

- (id)_fetchResultsForTagType:(unint64_t)a3 batchSize:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x1E69B68F8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__FCUserFacingTagSearchOperation__fetchResultsForTagType_batchSize___block_invoke;
  v10[3] = &unk_1E7C3CC18;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = a4;
  v8 = [v7 initWithResolver:v10];

  return v8;
}

void __68__FCUserFacingTagSearchOperation__fetchResultsForTagType_batchSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) contentContext];
  [v7 setContentContext:v8];

  v9 = [*(a1 + 32) searchString];
  [v7 setSearchString:v9];

  [v7 setTagType:*(a1 + 40)];
  [v7 setBatchSize:*(a1 + 48)];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __68__FCUserFacingTagSearchOperation__fetchResultsForTagType_batchSize___block_invoke_2;
  v15 = &unk_1E7C3CBF0;
  v16 = v6;
  v17 = v5;
  v10 = v5;
  v11 = v6;
  [v7 setSearchResultsBlock:&v12];
  [*(a1 + 32) associateChildOperation:{v7, v12, v13, v14, v15}];
  [v7 start];
}

void __68__FCUserFacingTagSearchOperation__fetchResultsForTagType_batchSize___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v6 = *(a1 + 32);
    v5 = v4;
    v6[2](v6, v5);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end