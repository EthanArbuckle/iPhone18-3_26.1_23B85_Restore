@interface CalAsyncBlockQueue
- (CalAsyncBlockQueue)initWithBlockPerformer:(id)a3;
- (void)cancelAllPendingBlocks;
- (void)performAfterDelay:(double)a3 block:(id)a4;
- (void)performAsync:(id)a3;
@end

@implementation CalAsyncBlockQueue

- (CalAsyncBlockQueue)initWithBlockPerformer:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CalAsyncBlockQueue *)a2 initWithBlockPerformer:?];
  }

  v12.receiver = self;
  v12.super_class = CalAsyncBlockQueue;
  v7 = [(CalAsyncBlockQueue *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_blockPerformer, a3);
    v9 = [MEMORY[0x1E695DFA8] set];
    pendingBlocks = v8->_pendingBlocks;
    v8->_pendingBlocks = v9;
  }

  return v8;
}

- (void)performAsync:(id)a3
{
  v4 = a3;
  v5 = [(CalAsyncBlockQueue *)self blockPerformer];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __35__CalAsyncBlockQueue_performAsync___block_invoke;
  v12 = &unk_1E7EC6A30;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = [v5 performAsync:&v9];

  v8 = [(CalAsyncBlockQueue *)self pendingBlocks:v9];
  [v8 addObject:v7];
}

uint64_t __35__CalAsyncBlockQueue_performAsync___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 pendingBlocks];
  [v5 removeObject:v4];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)performAfterDelay:(double)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(CalAsyncBlockQueue *)self blockPerformer];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __46__CalAsyncBlockQueue_performAfterDelay_block___block_invoke;
  v14 = &unk_1E7EC6A30;
  v15 = self;
  v16 = v6;
  v8 = v6;
  v9 = [v7 performAfterDelay:&v11 block:a3];

  v10 = [(CalAsyncBlockQueue *)self pendingBlocks:v11];
  [v10 addObject:v9];
}

uint64_t __46__CalAsyncBlockQueue_performAfterDelay_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 pendingBlocks];
  [v5 removeObject:v4];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)cancelAllPendingBlocks
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CalAsyncBlockQueue *)self pendingBlocks];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [(CalAsyncBlockQueue *)self pendingBlocks];
  [v8 removeAllObjects];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithBlockPerformer:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalAsyncBlockQueue.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"blockPerformer != nil"}];
}

@end