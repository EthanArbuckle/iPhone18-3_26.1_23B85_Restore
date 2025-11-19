@interface FCTagSearchRecordStream
- (FCTagSearchRecordStream)init;
- (id)fetchMoreResultsWithLimit:(unint64_t)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
@end

@implementation FCTagSearchRecordStream

- (FCTagSearchRecordStream)init
{
  v6.receiver = self;
  v6.super_class = FCTagSearchRecordStream;
  v2 = [(FCTagSearchRecordStream *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    encounteredRecordIDs = v2->_encounteredRecordIDs;
    v2->_encounteredRecordIDs = v3;
  }

  return v2;
}

- (id)fetchMoreResultsWithLimit:(unint64_t)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  if ([(FCTagSearchRecordStream *)self isFinished])
  {
    v12 = 0;
    if (v10 && v11)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __102__FCTagSearchRecordStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke;
      block[3] = &unk_1E7C379C8;
      v27 = v11;
      dispatch_async(v10, block);

      v12 = 0;
    }
  }

  else
  {
    if ([(FCTagSearchRecordStream *)self fetching]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't ask a stream for more results while it's fetching"];
      *buf = 136315906;
      v29 = "[FCTagSearchRecordStream fetchMoreResultsWithLimit:qualityOfService:callbackQueue:completionHandler:]";
      v30 = 2080;
      v31 = "FCTagSearchOperation.m";
      v32 = 1024;
      v33 = 249;
      v34 = 2114;
      v35 = v18;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    [(FCTagSearchRecordStream *)self setFetching:1];
    v13 = [(FCTagSearchRecordStream *)self operationConstructor];
    v14 = [(FCTagSearchRecordStream *)self cursor];
    v12 = (v13)[2](v13, v14);

    if (v12)
    {
      v12[47] = a3;
    }

    [v12 setRelativePriority:1];
    [v12 setQualityOfService:a4];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __102__FCTagSearchRecordStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_119;
    v22 = &unk_1E7C459A0;
    v23 = self;
    v25 = v11;
    v24 = v10;
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v15, &v19, 424);
    }

    [v12 start];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

void __102__FCTagSearchRecordStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_119(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E695DFD8];
  v11 = [v7 fc_arrayByTransformingWithBlock:&__block_literal_global_123];
  v12 = [v10 setWithArray:v11];

  if ([v7 count])
  {
    v13 = [*(a1 + 32) encounteredRecordIDs];
    v14 = [v12 isSubsetOfSet:v13];

    if (v14)
    {

      v8 = 0;
    }
  }

  v15 = [v12 count];
  if (!v9 && !v15)
  {

    v8 = 0;
  }

  v16 = [*(a1 + 32) encounteredRecordIDs];
  [v16 unionSet:v12];

  [*(a1 + 32) setCursor:v8];
  [*(a1 + 32) setFinished:v8 == 0];
  [*(a1 + 32) setFetching:0];
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__FCTagSearchRecordStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_3;
    block[3] = &unk_1E7C3A060;
    v22 = v17;
    v20 = v7;
    v21 = v9;
    dispatch_async(v18, block);
  }
}

@end