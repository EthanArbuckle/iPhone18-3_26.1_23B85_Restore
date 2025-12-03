@interface MTPromiseCompletionBlocks
- (MTPromiseCompletionBlocks)init;
- (void)addCompletionBlock:(id)block;
- (void)addErrorBlock:(id)block;
- (void)addSuccessBlock:(id)block;
- (void)callCompletionBlock:(id)block withPromiseResult:(id)result;
- (void)callErrorBlock:(id)block withPromiseResult:(id)result;
- (void)callSuccessBlock:(id)block withPromiseResult:(id)result;
- (void)flushCompletionBlocksWithPromiseResult:(id)result;
@end

@implementation MTPromiseCompletionBlocks

- (MTPromiseCompletionBlocks)init
{
  v6.receiver = self;
  v6.super_class = MTPromiseCompletionBlocks;
  v2 = [(MTPromiseCompletionBlocks *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v3;
  }

  return v2;
}

- (void)addCompletionBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  completionBlocks = selfCopy->_completionBlocks;
  v6 = [blockCopy copy];
  [(NSMutableArray *)completionBlocks addObject:v6];

  objc_sync_exit(selfCopy);
}

- (void)addErrorBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MTPromiseCompletionBlocks_addErrorBlock___block_invoke;
  v6[3] = &unk_2798CD598;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MTPromiseCompletionBlocks *)self addCompletionBlock:v6];
}

uint64_t __43__MTPromiseCompletionBlocks_addErrorBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__MTPromiseCompletionBlocks_addSuccessBlock___block_invoke;
  v6[3] = &unk_2798CD598;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MTPromiseCompletionBlocks *)self addCompletionBlock:v6];
}

uint64_t __45__MTPromiseCompletionBlocks_addSuccessBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)callCompletionBlock:(id)block withPromiseResult:(id)result
{
  resultCopy = result;
  blockCopy = block;
  result = [resultCopy result];
  error = [resultCopy error];

  (*(block + 2))(blockCopy, result, error);
}

- (void)callErrorBlock:(id)block withPromiseResult:(id)result
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__MTPromiseCompletionBlocks_callErrorBlock_withPromiseResult___block_invoke;
  v8[3] = &unk_2798CD598;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MTPromiseCompletionBlocks *)self callCompletionBlock:v8 withPromiseResult:result];
}

uint64_t __62__MTPromiseCompletionBlocks_callErrorBlock_withPromiseResult___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)callSuccessBlock:(id)block withPromiseResult:(id)result
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__MTPromiseCompletionBlocks_callSuccessBlock_withPromiseResult___block_invoke;
  v8[3] = &unk_2798CD598;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MTPromiseCompletionBlocks *)self callCompletionBlock:v8 withPromiseResult:result];
}

uint64_t __64__MTPromiseCompletionBlocks_callSuccessBlock_withPromiseResult___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)flushCompletionBlocksWithPromiseResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableArray *)selfCopy->_completionBlocks copy];
  [(NSMutableArray *)selfCopy->_completionBlocks removeAllObjects];
  objc_sync_exit(selfCopy);

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
        result = [resultCopy result];
        error = [resultCopy error];
        (*(v11 + 16))(v11, result, error);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end