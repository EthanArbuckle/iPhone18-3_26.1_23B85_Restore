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
    v3 = objc_alloc_init(NSMutableArray);
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
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000965C;
  v5[3] = &unk_100020530;
  blockCopy = block;
  v4 = blockCopy;
  [(MTPromiseCompletionBlocks *)self addCompletionBlock:v5];
}

- (void)addSuccessBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000970C;
  v5[3] = &unk_100020530;
  blockCopy = block;
  v4 = blockCopy;
  [(MTPromiseCompletionBlocks *)self addCompletionBlock:v5];
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
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000985C;
  v7[3] = &unk_100020530;
  blockCopy = block;
  v6 = blockCopy;
  [(MTPromiseCompletionBlocks *)self callCompletionBlock:v7 withPromiseResult:result];
}

- (void)callSuccessBlock:(id)block withPromiseResult:(id)result
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000991C;
  v7[3] = &unk_100020530;
  blockCopy = block;
  v6 = blockCopy;
  [(MTPromiseCompletionBlocks *)self callCompletionBlock:v7 withPromiseResult:result];
}

- (void)flushCompletionBlocksWithPromiseResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableArray *)selfCopy->_completionBlocks copy];
  [(NSMutableArray *)selfCopy->_completionBlocks removeAllObjects];
  objc_sync_exit(selfCopy);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        result = [resultCopy result];
        error = [resultCopy error];
        (*(v11 + 16))(v11, result, error);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

@end