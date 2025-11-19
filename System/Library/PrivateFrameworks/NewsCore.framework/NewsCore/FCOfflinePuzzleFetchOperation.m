@interface FCOfflinePuzzleFetchOperation
- (BOOL)validateOperation;
- (FCOfflinePuzzleFetchOperation)init;
- (FCOfflinePuzzleFetchOperation)initWithContext:(id)a3 puzzle:(id)a4;
- (FCOfflinePuzzleFetchOperation)initWithContext:(id)a3 puzzleID:(id)a4;
- (void)_handleArchive:(void *)a1;
- (void)_updateProgress:(double *)a1;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
@end

@implementation FCOfflinePuzzleFetchOperation

- (FCOfflinePuzzleFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCOfflinePuzzleFetchOperation init]";
    v10 = 2080;
    v11 = "FCOfflinePuzzleFetchOperation.m";
    v12 = 1024;
    v13 = 81;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCOfflinePuzzleFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCOfflinePuzzleFetchOperation)initWithContext:(id)a3 puzzleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = FCOfflinePuzzleFetchOperation;
  v9 = [(FCOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    v11 = [v8 copy];
    puzzleID = v10->_puzzleID;
    v10->_puzzleID = v11;

    v13 = objc_alloc_init(FCThreadSafeMutableArray);
    resultInterestTokens = v10->_resultInterestTokens;
    v10->_resultInterestTokens = v13;
  }

  return v10;
}

- (FCOfflinePuzzleFetchOperation)initWithContext:(id)a3 puzzle:(id)a4
{
  v6 = a3;
  v7 = [a4 identifier];
  v8 = [(FCOfflinePuzzleFetchOperation *)self initWithContext:v6 puzzleID:v7];

  return v8;
}

- (BOOL)validateOperation
{
  v14 = *MEMORY[0x1E69E9840];
  if (self && self->_context)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline puzzle fetch operation requires a context"];
      v6 = 136315906;
      v7 = "[FCOfflinePuzzleFetchOperation validateOperation]";
      v8 = 2080;
      v9 = "FCOfflinePuzzleFetchOperation.m";
      v10 = 1024;
      v11 = 109;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);

      LOBYTE(v2) = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)prepareOperation
{
  v2 = self;
  if (self)
  {
    self = self->_context;
  }

  v5 = [(FCOfflinePuzzleFetchOperation *)self appConfigurationManager];
  v3 = [v5 possiblyUnfetchedAppConfiguration];
  v4 = [v3 offlineDownloadsConfig];
  if (v2)
  {
    objc_storeStrong(&v2->_config, v4);
  }
}

- (void)performOperation
{
  v37 = *MEMORY[0x1E69E9840];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__34;
  v27[4] = __Block_byref_object_dispose__34;
  v28 = 0;
  v3 = FCOperationLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FCOperation *)self shortOperationDescription];
    if ([(FCOfflinePuzzleFetchOperation *)self cachedOnly])
    {
      v5 = @"lookup cached";
    }

    else
    {
      v5 = @"fetch";
    }

    if (self)
    {
      v6 = self->_puzzleID;
      config = self->_config;
      v8 = v6;
    }

    else
    {
      v6 = 0;
      v8 = 0;
      config = 0;
    }

    v9 = config;
    v10 = [(FCOfflineDownloadsConfiguration *)v9 useSmallestPuzzleThumbnails];
    v11 = @"normal";
    *buf = 138544130;
    v30 = v4;
    v31 = 2114;
    if (v10)
    {
      v11 = @"small";
    }

    v32 = v5;
    v33 = 2114;
    v34 = v6;
    v35 = 2114;
    v36 = v11;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will %{public}@ puzzle id=%{public}@, thumbnail variant=%{public}@", buf, 0x2Au);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __49__FCOfflinePuzzleFetchOperation_performOperation__block_invoke;
  v26[3] = &unk_1E7C396C0;
  v26[4] = self;
  v12 = [MEMORY[0x1E69B68F8] firstly:v26];
  v13 = zalgo();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __49__FCOfflinePuzzleFetchOperation_performOperation__block_invoke_2;
  v25[3] = &unk_1E7C40388;
  v25[4] = self;
  v25[5] = v27;
  v14 = [v12 thenOn:v13 then:v25];
  v15 = zalgo();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __49__FCOfflinePuzzleFetchOperation_performOperation__block_invoke_3;
  v24[3] = &unk_1E7C403B0;
  v24[4] = self;
  v24[5] = v27;
  v16 = [v14 thenOn:v15 then:v24];
  v17 = zalgo();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __49__FCOfflinePuzzleFetchOperation_performOperation__block_invoke_4;
  v23[3] = &unk_1E7C403D8;
  v23[4] = self;
  v18 = [v16 thenOn:v17 then:v23];
  v19 = zalgo();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__FCOfflinePuzzleFetchOperation_performOperation__block_invoke_5;
  v22[3] = &unk_1E7C36E50;
  v22[4] = self;
  v20 = [v18 errorOn:v19 error:v22];

  _Block_object_dispose(v27, 8);
  v21 = *MEMORY[0x1E69E9840];
}

id __49__FCOfflinePuzzleFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  [(FCOfflinePuzzleFetchOperation *)*(a1 + 32) _updateProgress:?];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke;
    v6[3] = &unk_1E7C39ED0;
    v6[4] = v2;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateProgress:(double *)a1
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && ([a1 isFinished] & 1) == 0)
  {
    if (a1[57] > a2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fetch progress should never go backward"];
      *buf = 136315906;
      v11 = "[FCOfflinePuzzleFetchOperation _updateProgress:]";
      v12 = 2080;
      v13 = "FCOfflinePuzzleFetchOperation.m";
      v14 = 1024;
      v15 = 308;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    a1[57] = a2;
    v4 = [a1 progressQueue];

    v5 = [a1 progressHandler];

    if (v4)
    {
      if (v5)
      {
        v6 = [a1 progressQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__FCOfflinePuzzleFetchOperation__updateProgress___block_invoke_57;
        block[3] = &unk_1E7C36EA0;
        block[4] = a1;
        dispatch_async(v6, block);
LABEL_11:
      }
    }

    else if (v5)
    {
      v6 = [a1 progressHandler];
      (*(v6 + 16))(a1[57]);
      goto LABEL_11;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __49__FCOfflinePuzzleFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [(FCOfflinePuzzleFetchOperation *)*(a1 + 32) _updateProgress:?];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69B68F8]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__FCOfflinePuzzleFetchOperation__promiseThumbnailsForPuzzleRecords___block_invoke;
    v10[3] = &unk_1E7C3B310;
    v11 = v6;
    v12 = v5;
    v8 = [v7 initWithResolver:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __49__FCOfflinePuzzleFetchOperation_performOperation__block_invoke_3(uint64_t a1)
{
  [(FCOfflinePuzzleFetchOperation *)*(a1 + 32) _updateProgress:?];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v4 = objc_alloc(MEMORY[0x1E69B68F8]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke;
    v7[3] = &unk_1E7C3B310;
    v8 = v3;
    v9 = v2;
    v5 = [v4 initWithResolver:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(FCOfflinePuzzleFetchOperation *)self _updateProgress:?];
  }

  v5 = [(FCOfflinePuzzleFetchOperation *)self fetchCompletionQueue];

  v6 = [(FCOfflinePuzzleFetchOperation *)self fetchCompletionHandler];

  if (v5)
  {
    if (v6)
    {
      v7 = [(FCOfflinePuzzleFetchOperation *)self fetchCompletionQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __62__FCOfflinePuzzleFetchOperation_operationWillFinishWithError___block_invoke;
      v12[3] = &unk_1E7C36C58;
      v12[4] = self;
      v13 = v4;
      dispatch_async(v7, v12);
    }
  }

  else if (v6)
  {
    v8 = [(FCOfflinePuzzleFetchOperation *)self fetchCompletionHandler];
    if (self)
    {
      resultInterestTokens = self->_resultInterestTokens;
    }

    else
    {
      resultInterestTokens = 0;
    }

    v10 = resultInterestTokens;
    v11 = [(FCThreadSafeMutableArray *)v10 readOnlyArray];
    (v8)[2](v8, v11, v4);
  }
}

void __62__FCOfflinePuzzleFetchOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) fetchCompletionHandler];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[56];
  }

  v3 = v2;
  v4 = [v3 readOnlyArray];
  v5[2](v5, v4, *(a1 + 40));
}

void __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCRecordChainFetchOperation);
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 424);
  }

  else
  {
    v10 = 0;
  }

  [(FCRecordChainFetchOperation *)v7 setContext:v10];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[54];
  }

  v31[0] = v11;
  v12 = MEMORY[0x1E695DEC8];
  v13 = v11;
  v14 = [v12 arrayWithObjects:v31 count:1];

  [(FCRecordChainFetchOperation *)v8 setTopLevelRecordIDs:v14];
  v29[0] = @"Puzzle";
  v28 = @"puzzleTypeID";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v29[1] = @"PuzzleType";
  v30[0] = v15;
  v30[1] = MEMORY[0x1E695E0F0];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  [(FCRecordChainFetchOperation *)v8 setLinkKeysByRecordType:v16];

  if ([*(a1 + 32) cachedOnly])
  {
    v17 = +[FCCachePolicy cachedOnlyCachePolicy];
    [(FCRecordChainFetchOperation *)v8 setCachePolicy:v17];
  }

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_2;
  v24 = &unk_1E7C40450;
  v25 = *(a1 + 32);
  v26 = v6;
  v27 = v5;
  v18 = v5;
  v19 = v6;
  [(FCRecordChainFetchOperation *)v8 setRecordChainCompletionHandler:&v21];
  [*(a1 + 32) associateChildOperation:{v8, v21, v22, v23, v24, v25}];
  [(FCOperation *)v8 start];

  v20 = *MEMORY[0x1E69E9840];
}

void __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_3;
    v24 = &unk_1E7C37778;
    v26 = *(a1 + 40);
    v25 = v6;
    v26[2](v26, v25);

    v7 = v26;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:&unk_1F2E70428];
    if ([v7 count])
    {
      v8 = [v5 objectForKeyedSubscript:&unk_1F2E70440];
      if ([v8 count])
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_2_39;
        aBlock[3] = &unk_1E7C40428;
        aBlock[4] = *(a1 + 32);
        v9 = _Block_copy(aBlock);
        v9[2](v9, v7);
        v9[2](v9, v8);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_4;
        v15[3] = &unk_1E7C40428;
        v15[4] = *(a1 + 32);
        v10 = _Block_copy(v15);
        v10[2](v10, v7);
        v10[2](v10, v8);
        v11 = *(a1 + 48);
        v12 = [v7 onlyRecord];
        v13 = [v8 onlyRecord];
        v14 = [FCPair pairWithFirst:v12 second:v13];
        (*(v11 + 16))(v11, v14);
      }

      else
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_38;
        v17[3] = &unk_1E7C379C8;
        v18 = *(a1 + 40);
        __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_38(v17);
      }
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_34;
      v19[3] = &unk_1E7C379C8;
      v20 = *(a1 + 40);
      __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_34(v19);
      v8 = v20;
    }
  }
}

void __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_notAvailableError];
  (*(v1 + 16))(v1, v2);
}

void __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_notAvailableError];
  (*(v1 + 16))(v1, v2);
}

void __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_2_39(uint64_t a1, void *a2)
{
  v3 = [a2 interestTokensByID];
  v4 = [v3 allValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_3_40;
  v5[3] = &unk_1E7C40400;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

uint64_t __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_3_40(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 448) addObject:a2];
    }
  }

  return result;
}

void __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 recordsByID];
  v4 = [v3 allValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_5;
  v5[3] = &unk_1E7C393D0;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __54__FCOfflinePuzzleFetchOperation__promisePuzzleRecords__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [FCContentArchive archiveWithRecord:a2];
  [(FCOfflinePuzzleFetchOperation *)v2 _handleArchive:v3];
}

- (void)_handleArchive:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = [a1 archiveQueue];

    v6 = [a1 archiveHandler];

    if (v5)
    {
      if (v6)
      {
        v7 = [a1 archiveQueue];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __48__FCOfflinePuzzleFetchOperation__handleArchive___block_invoke_2;
        v9[3] = &unk_1E7C36C58;
        v9[4] = a1;
        v10 = v4;
        dispatch_async(v7, v9);
      }
    }

    else if (v6)
    {
      v8 = [a1 archiveHandler];
      (v8)[2](v8, v4);
    }
  }
}

void __68__FCOfflinePuzzleFetchOperation__promiseThumbnailsForPuzzleRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) first];
  v8 = [*(a1 + 32) second];
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = v9[55];
    v9 = v9[53];
  }

  else
  {
    v10 = 0;
  }

  v11 = v9;
  v12 = v10;
  v13 = [v11 assetManager];
  v14 = FCOfflineThumbnailAssetHandlesForPuzzleRecords(v7, v8, v12, v13);

  v15 = [[FCAssetsFetchOperation alloc] initWithAssetHandles:v14];
  if ([*(a1 + 40) cachedOnly])
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [(FCFetchOperation *)v15 setCachePolicy:v16];
  [(FCFetchOperation *)v15 setShouldFailOnMissingObjects:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__FCOfflinePuzzleFetchOperation__promiseThumbnailsForPuzzleRecords___block_invoke_2;
  v26[3] = &unk_1E7C40478;
  v26[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v15 setInterestTokenHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __68__FCOfflinePuzzleFetchOperation__promiseThumbnailsForPuzzleRecords___block_invoke_3;
  v25[3] = &unk_1E7C404A0;
  v25[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v15 setArchiveHandler:v25];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __68__FCOfflinePuzzleFetchOperation__promiseThumbnailsForPuzzleRecords___block_invoke_4;
  v22 = &unk_1E7C404C8;
  v23 = v6;
  v24 = v5;
  v17 = v5;
  v18 = v6;
  [(FCFetchOperation *)v15 setFetchCompletionBlock:&v19];
  [*(a1 + 40) associateChildOperation:{v15, v19, v20, v21, v22}];
  [(FCOperation *)v15 start];
}

uint64_t __68__FCOfflinePuzzleFetchOperation__promiseThumbnailsForPuzzleRecords___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 448) addObject:a2];
    }
  }

  return result;
}

void __68__FCOfflinePuzzleFetchOperation__promiseThumbnailsForPuzzleRecords___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v7 = MEMORY[0x1E69E9820];
    v9 = *(a1 + 32);
    v8 = v3;
    v4 = [v8 error];
    v9[2](v9, v4);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [v3 fetchedObject];
    (*(v5 + 16))(v5, v6);
  }
}

void __68__FCOfflinePuzzleFetchOperation__promiseThumbnailsForPuzzleRecords___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695DEC8];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_2;
  v25[3] = &unk_1E7C36D40;
  v26 = *(a1 + 32);
  v8 = [v7 fc_array:v25];
  v9 = [FCResourcesFetchOperation alloc];
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 424);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(FCResourcesFetchOperation *)v9 initWithContext:v11 resourceIDs:v8 downloadAssets:1];
  [(FCFetchOperation *)v12 setShouldFailOnMissingObjects:1];
  if ([*(a1 + 40) cachedOnly])
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [(FCFetchOperation *)v12 setCachePolicy:v13];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_3;
  v24[3] = &unk_1E7C40478;
  v24[4] = *(a1 + 40);
  [(FCResourcesFetchOperation *)v12 setInterestTokenHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_4;
  v23[3] = &unk_1E7C404A0;
  v23[4] = *(a1 + 40);
  [(FCResourcesFetchOperation *)v12 setArchiveHandler:v23];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_5;
  v19 = &unk_1E7C3B740;
  v20 = *(a1 + 40);
  v21 = v6;
  v22 = v5;
  v14 = v5;
  v15 = v6;
  [(FCFetchOperation *)v12 setFetchCompletionBlock:&v16];
  [*(a1 + 40) associateChildOperation:{v12, v16, v17, v18, v19, v20}];
  [(FCOperation *)v12 start];
}

void __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 first];
  v6 = [v5 dataResourceID];
  [v4 fc_safelyAddObject:v6];

  v8 = [*(a1 + 32) second];
  v7 = [v8 engineResourceID];
  [v4 fc_safelyAddObject:v7];
}

uint64_t __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 448) addObject:a2];
    }
  }

  return result;
}

void __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_6;
    v7[3] = &unk_1E7C39F98;
    v8 = v3;
    v4 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = v4;
    __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_6(v7);
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [v3 fetchedObject];
    (*(v5 + 16))(v5, v6);
  }
}

void __71__FCOfflinePuzzleFetchOperation__promiseDataResourcesForPuzzleRecords___block_invoke_6(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) status] == 1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *(a1 + 48);
    v14 = [*(a1 + 40) errorUserInfo];
    v4 = [v2 fc_operationCancelledErrorWithAdditionalUserInfo:?];
    (*(v3 + 16))(v3, v4);

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = v6;
      v12 = [v10 shortOperationDescription];
      v13 = [*(a1 + 32) missingObjectDescriptions];
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch ANF resources: %{public}@", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) error];
    (*(v7 + 16))(v7, v8);

    v9 = *MEMORY[0x1E69E9840];
  }
}

void __49__FCOfflinePuzzleFetchOperation__updateProgress___block_invoke_57(uint64_t a1)
{
  v2 = [*(a1 + 32) progressHandler];
  v4 = *(a1 + 32);
  if (v4)
  {
    v3.n128_u64[0] = *(v4 + 456);
  }

  else
  {
    v3.n128_u64[0] = 0;
  }

  v5 = v2;
  (*(v2 + 16))(v3);
}

void __48__FCOfflinePuzzleFetchOperation__handleArchive___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) archiveHandler];
  v2[2](v2, *(a1 + 40));
}

@end