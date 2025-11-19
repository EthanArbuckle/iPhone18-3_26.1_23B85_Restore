@interface CNFutureCompletionBlocks
- (BOOL)shouldCallImmediately;
- (CNFutureCompletionBlocks)init;
- (void)addCompletionBlock:(id)a3 orCallWithFutureResult:(id)a4;
- (void)addFailureBlock:(id)a3 orCallWithFutureResult:(id)a4;
- (void)addSuccessBlock:(id)a3 orCallWithFutureResult:(id)a4;
- (void)flushCompletionBlocksWithFutureResult:(id)a3;
- (void)setShouldCallImmediately:(BOOL)a3;
@end

@implementation CNFutureCompletionBlocks

- (CNFutureCompletionBlocks)init
{
  v7.receiver = self;
  v7.super_class = CNFutureCompletionBlocks;
  v2 = [(CNFutureCompletionBlocks *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)shouldCallImmediately
{
  v2 = self;
  objc_sync_enter(v2);
  shouldCallImmediately = v2->_shouldCallImmediately;
  objc_sync_exit(v2);

  return shouldCallImmediately;
}

- (void)setShouldCallImmediately:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldCallImmediately = a3;
  objc_sync_exit(obj);
}

- (void)addSuccessBlock:(id)a3 orCallWithFutureResult:(id)a4
{
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__CNFutureCompletionBlocks_addSuccessBlock_orCallWithFutureResult___block_invoke;
  aBlock[3] = &unk_1E6ED70A0;
  v11 = v6;
  v7 = v6;
  v8 = a4;
  v9 = _Block_copy(aBlock);
  [(CNFutureCompletionBlocks *)self addCompletionBlock:v9 orCallWithFutureResult:v8];
}

uint64_t __67__CNFutureCompletionBlocks_addSuccessBlock_orCallWithFutureResult___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)addFailureBlock:(id)a3 orCallWithFutureResult:(id)a4
{
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__CNFutureCompletionBlocks_addFailureBlock_orCallWithFutureResult___block_invoke;
  aBlock[3] = &unk_1E6ED70A0;
  v11 = v6;
  v7 = v6;
  v8 = a4;
  v9 = _Block_copy(aBlock);
  [(CNFutureCompletionBlocks *)self addCompletionBlock:v9 orCallWithFutureResult:v8];
}

uint64_t __67__CNFutureCompletionBlocks_addFailureBlock_orCallWithFutureResult___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)addCompletionBlock:(id)a3 orCallWithFutureResult:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (v7->_shouldCallImmediately)
  {
    objc_sync_exit(v7);

    v7 = [v6 result];
    v8 = [v6 error];
    v11[2](v11, v7, v8);
  }

  else
  {
    completionBlocks = v7->_completionBlocks;
    v10 = [v11 copy];
    [(NSMutableArray *)completionBlocks addObject:v10];

    objc_sync_exit(v7);
  }
}

- (void)flushCompletionBlocksWithFutureResult:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableArray *)v5->_completionBlocks copy];
  [(NSMutableArray *)v5->_completionBlocks removeAllObjects];
  objc_sync_exit(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [v4 result];
        v13 = [v4 error];
        (*(v11 + 16))(v11, v12, v13);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end