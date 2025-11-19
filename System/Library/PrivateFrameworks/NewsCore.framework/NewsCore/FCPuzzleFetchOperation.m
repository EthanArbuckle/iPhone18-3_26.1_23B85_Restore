@interface FCPuzzleFetchOperation
- (FCPuzzleFetchOperation)init;
- (FCPuzzleFetchOperation)initWithPuzzleIDs:(id)a3 puzzleTypeController:(id)a4 puzzleRecordSource:(id)a5 assetManager:(id)a6 configurationManager:(id)a7 delegate:(id)a8;
- (FCPuzzleFetchOperationDelegate)delegate;
- (id)completeFetchOperation;
- (id)determineAppropriateFetchStepsWithCompletion:(id)a3;
- (id)fetchConfigWithCompletion:(id)a3;
- (id)fetchPuzzleRecordsWithCompletion:(id)a3;
- (void)customizeChildOperation:(id)a3 forFetchStep:(SEL)a4;
@end

@implementation FCPuzzleFetchOperation

- (FCPuzzleFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPuzzleFetchOperation init]";
    v10 = 2080;
    v11 = "FCPuzzleFetchOperation.m";
    v12 = 1024;
    v13 = 45;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPuzzleFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPuzzleFetchOperation)initWithPuzzleIDs:(id)a3 puzzleTypeController:(id)a4 puzzleRecordSource:(id)a5 assetManager:(id)a6 configurationManager:(id)a7 delegate:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v23 = a6;
  v22 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = FCPuzzleFetchOperation;
  v19 = [(FCMultiStepFetchOperation *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_puzzleIDs, a3);
    objc_storeStrong(&v20->_puzzleTypeController, a4);
    objc_storeStrong(&v20->_puzzleRecordSource, a5);
    objc_storeStrong(&v20->_assetManager, a6);
    objc_storeStrong(&v20->_configurationManager, a7);
    objc_storeWeak(&v20->_delegate, v18);
    [(FCMultiStepFetchOperation *)v20 addFetchStep:sel_determineAppropriateFetchStepsWithCompletion_];
  }

  return v20;
}

- (id)determineAppropriateFetchStepsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FCPuzzleFetchOperation *)self configuration];

  if (!v5)
  {
    [(FCMultiStepFetchOperation *)self addNonCriticalFetchStep:sel_fetchConfigWithCompletion_];
  }

  [(FCMultiStepFetchOperation *)self addFetchStep:sel_fetchPuzzleRecordsWithCompletion_];
  v4[2](v4, 0);

  return 0;
}

- (id)fetchConfigWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FCPuzzleFetchOperation *)self configurationManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__FCPuzzleFetchOperation_fetchConfigWithCompletion___block_invoke;
  v8[3] = &unk_1E7C3B248;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  FCCoreConfigurationFetch(v5, v8);

  return 0;
}

void __52__FCPuzzleFetchOperation_fetchConfigWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {

    v6 = 0;
    v7 = 3;
  }

  else
  {
    v7 = 0;
    v6 = v9;
  }

  v10 = v6;
  [*(a1 + 32) setConfiguration:v6];
  v8 = [FCFetchOperationResult resultWithStatus:v7 fetchedObject:v10 error:v5];
  (*(*(a1 + 40) + 16))();
}

- (void)customizeChildOperation:(id)a3 forFetchStep:(SEL)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = FCPuzzleFetchOperation;
  [(FCMultiStepFetchOperation *)&v7 customizeChildOperation:v6 forFetchStep:a4];
  if (sel_fetchPuzzleRecordsWithCompletion_ == a4 && [(FCPuzzleFetchOperation *)self overrideTargetsCachePolicy])
  {
    [v6 setCachePolicy:{-[FCPuzzleFetchOperation targetsCachePolicy](self, "targetsCachePolicy")}];
    [(FCPuzzleFetchOperation *)self targetsMaximumCachedAge];
    [v6 setMaximumCachedAge:?];
  }
}

- (id)fetchPuzzleRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FCPuzzleFetchOperation *)self puzzleRecordSource];
  v6 = [(FCPuzzleFetchOperation *)self puzzleIDs];
  v7 = [v5 fetchOperationForRecordsWithIDs:v6];

  [v7 setCachePolicy:{-[FCFetchOperation cachePolicy](self, "cachePolicy")}];
  [(FCFetchOperation *)self maximumCachedAge];
  [v7 setMaximumCachedAge:?];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke;
  v10[3] = &unk_1E7C37B98;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 setFetchCompletionBlock:v10];

  return v7;
}

void __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchedObject];
  [*(a1 + 32) setHeldPuzzleRecords:v4];

  v5 = [*(a1 + 32) heldPuzzleRecords];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [*(a1 + 32) interestTokenHandler];

    if (v7)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke_3;
      aBlock[3] = &unk_1E7C40428;
      aBlock[4] = *(a1 + 32);
      v8 = _Block_copy(aBlock);
      v9 = [*(a1 + 32) heldPuzzleRecords];
      v8[2](v8, v9);
    }

    v10 = objc_opt_new();
    v11 = [*(a1 + 32) heldPuzzleRecords];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke_5;
    v23[3] = &unk_1E7C47008;
    v24 = v10;
    v12 = v10;
    [v11 enumerateRecordsAndInterestTokensWithBlock:v23];

    v13 = [*(a1 + 32) puzzleTypeController];
    v14 = [v12 allObjects];
    v15 = [*(a1 + 32) qualityOfService];
    v16 = [*(a1 + 32) fetchCompletionQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke_6;
    v20[3] = &unk_1E7C47030;
    v17 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v3;
    v22 = v17;
    v18 = v3;
    [v13 fetchPuzzleTypesForPuzzleTypeIDs:v14 cachePolicy:0 qualityOfService:v15 callbackQueue:v16 completionHandler:v20];
  }

  else
  {
    aBlock[5] = MEMORY[0x1E69E9820];
    aBlock[6] = 3221225472;
    aBlock[7] = __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke_2;
    aBlock[8] = &unk_1E7C37778;
    v19 = *(a1 + 40);
    aBlock[9] = v3;
    aBlock[10] = v19;
    v12 = v3;
    v19[2](v19, v12);

    v18 = v19;
  }
}

void __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 interestTokensByID];
  v4 = [v3 allValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke_4;
  v5[3] = &unk_1E7C40400;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 interestTokenHandler];
  v4[2](v4, v3);
}

void __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 puzzleTypeID];
  [v2 addObject:v3];
}

uint64_t __59__FCPuzzleFetchOperation_fetchPuzzleRecordsWithCompletion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setFetchedPuzzleTypes:a2];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (id)completeFetchOperation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(FCPuzzleFetchOperation *)self configuration];
  v5 = [v4 puzzlesConfig];

  v6 = [v5 difficultyDescriptions];
  v7 = [(FCPuzzleFetchOperation *)self heldPuzzleRecords];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__FCPuzzleFetchOperation_completeFetchOperation__block_invoke;
  v14[3] = &unk_1E7C3BAC0;
  v14[4] = self;
  v15 = v6;
  v8 = v3;
  v16 = v8;
  v9 = v6;
  [v7 enumerateRecordsAndInterestTokensWithBlock:v14];

  v10 = [(FCPuzzleFetchOperation *)self delegate];
  if (v10)
  {
    v11 = [v8 allValues];
    [v10 puzzleFetchOperation:self didFetchPuzzles:v11];
  }

  v12 = v8;

  return v8;
}

void __48__FCPuzzleFetchOperation_completeFetchOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 536);
  v7 = [v14 puzzleTypeID];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = [FCPuzzle alloc];
    v10 = [*(a1 + 32) assetManager];
    v11 = [(FCPuzzle *)v9 initWithPuzzleRecord:v14 puzzleType:v8 assetManager:v10 interestToken:v5 difficultyDescriptions:*(a1 + 40)];

    v12 = *(a1 + 48);
    v13 = [(FCPuzzle *)v11 identifier];
    [v12 setObject:v11 forKey:v13];
  }
}

- (FCPuzzleFetchOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end