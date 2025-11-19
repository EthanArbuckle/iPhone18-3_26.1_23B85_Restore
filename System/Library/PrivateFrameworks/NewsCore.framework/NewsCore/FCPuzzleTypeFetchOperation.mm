@interface FCPuzzleTypeFetchOperation
- (FCPuzzleTypeFetchOperation)init;
- (FCPuzzleTypeFetchOperation)initWithPuzzleTypeIDs:(id)a3 puzzleTypeRecordSource:(id)a4 assetManager:(id)a5 context:(id)a6 delegate:(id)a7;
- (FCPuzzleTypeFetchOperationDelegate)delegate;
- (id)completeFetchOperation;
- (id)fetchPuzzleTypeRecordsWithCompletion:(id)a3;
- (void)customizeChildOperation:(id)a3 forFetchStep:(SEL)a4;
@end

@implementation FCPuzzleTypeFetchOperation

- (id)completeFetchOperation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(FCPuzzleTypeFetchOperation *)self heldPuzzleTypeRecords];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __52__FCPuzzleTypeFetchOperation_completeFetchOperation__block_invoke;
  v13 = &unk_1E7C44928;
  v14 = self;
  v5 = v3;
  v15 = v5;
  [v4 enumerateRecordsAndInterestTokensWithBlock:&v10];

  v6 = [(FCPuzzleTypeFetchOperation *)self delegate:v10];
  if (v6)
  {
    v7 = [v5 allValues];
    [v6 puzzleTypeFetchOperation:self didFetchPuzzleTypes:v7];
  }

  v8 = v5;

  return v5;
}

void __52__FCPuzzleTypeFetchOperation_completeFetchOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [FCPuzzleType alloc];
  v8 = [*(a1 + 32) assetManager];
  v9 = [*(a1 + 32) context];
  v12 = [(FCPuzzleType *)v7 initWithPuzzleTypeRecord:v6 assetManager:v8 context:v9 interestToken:v5];

  v10 = *(a1 + 40);
  v11 = [(FCPuzzleType *)v12 identifier];
  [v10 setObject:v12 forKey:v11];
}

- (FCPuzzleTypeFetchOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FCPuzzleTypeFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPuzzleTypeFetchOperation init]";
    v10 = 2080;
    v11 = "FCPuzzleTypeFetchOperation.m";
    v12 = 1024;
    v13 = 37;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPuzzleTypeFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPuzzleTypeFetchOperation)initWithPuzzleTypeIDs:(id)a3 puzzleTypeRecordSource:(id)a4 assetManager:(id)a5 context:(id)a6 delegate:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = FCPuzzleTypeFetchOperation;
  v17 = [(FCMultiStepFetchOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_puzzleTypeIDs, a3);
    objc_storeStrong(&v18->_puzzleTypeRecordSource, a4);
    objc_storeStrong(&v18->_assetManager, a5);
    objc_storeStrong(&v18->_context, a6);
    objc_storeWeak(&v18->_delegate, v16);
    [(FCMultiStepFetchOperation *)v18 addFetchStep:sel_fetchPuzzleTypeRecordsWithCompletion_];
  }

  return v18;
}

- (void)customizeChildOperation:(id)a3 forFetchStep:(SEL)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = FCPuzzleTypeFetchOperation;
  [(FCMultiStepFetchOperation *)&v7 customizeChildOperation:v6 forFetchStep:a4];
  if (sel_fetchPuzzleTypeRecordsWithCompletion_ == a4 && [(FCPuzzleTypeFetchOperation *)self overrideTargetsCachePolicy])
  {
    [v6 setCachePolicy:{-[FCPuzzleTypeFetchOperation targetsCachePolicy](self, "targetsCachePolicy")}];
    [(FCPuzzleTypeFetchOperation *)self targetsMaximumCachedAge];
    [v6 setMaximumCachedAge:?];
  }
}

- (id)fetchPuzzleTypeRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FCPuzzleTypeFetchOperation *)self puzzleTypeRecordSource];
  v6 = [(FCPuzzleTypeFetchOperation *)self puzzleTypeIDs];
  v7 = [v5 fetchOperationForRecordsWithIDs:v6];

  [v7 setCachePolicy:{-[FCFetchOperation cachePolicy](self, "cachePolicy")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__FCPuzzleTypeFetchOperation_fetchPuzzleTypeRecordsWithCompletion___block_invoke;
  v10[3] = &unk_1E7C37B98;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 setFetchCompletionBlock:v10];

  return v7;
}

void __67__FCPuzzleTypeFetchOperation_fetchPuzzleTypeRecordsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 fetchedObject];
  [*(a1 + 32) setHeldPuzzleTypeRecords:v3];

  (*(*(a1 + 40) + 16))();
}

@end