@interface MTPromiseCompletionBlocks
- (MTPromiseCompletionBlocks)init;
- (void)addCompletionBlock:(id)a3;
- (void)addErrorBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
- (void)callCompletionBlock:(id)a3 withPromiseResult:(id)a4;
- (void)callErrorBlock:(id)a3 withPromiseResult:(id)a4;
- (void)callSuccessBlock:(id)a3 withPromiseResult:(id)a4;
- (void)flushCompletionBlocksWithPromiseResult:(id)a3;
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

- (void)addCompletionBlock:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  completionBlocks = v4->_completionBlocks;
  v6 = [v7 copy];
  [(NSMutableArray *)completionBlocks addObject:v6];

  objc_sync_exit(v4);
}

- (void)addErrorBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000965C;
  v5[3] = &unk_100020530;
  v6 = a3;
  v4 = v6;
  [(MTPromiseCompletionBlocks *)self addCompletionBlock:v5];
}

- (void)addSuccessBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000970C;
  v5[3] = &unk_100020530;
  v6 = a3;
  v4 = v6;
  [(MTPromiseCompletionBlocks *)self addCompletionBlock:v5];
}

- (void)callCompletionBlock:(id)a3 withPromiseResult:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [v5 result];
  v7 = [v5 error];

  (*(a3 + 2))(v6, v8, v7);
}

- (void)callErrorBlock:(id)a3 withPromiseResult:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000985C;
  v7[3] = &unk_100020530;
  v8 = a3;
  v6 = v8;
  [(MTPromiseCompletionBlocks *)self callCompletionBlock:v7 withPromiseResult:a4];
}

- (void)callSuccessBlock:(id)a3 withPromiseResult:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000991C;
  v7[3] = &unk_100020530;
  v8 = a3;
  v6 = v8;
  [(MTPromiseCompletionBlocks *)self callCompletionBlock:v7 withPromiseResult:a4];
}

- (void)flushCompletionBlocksWithPromiseResult:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableArray *)v5->_completionBlocks copy];
  [(NSMutableArray *)v5->_completionBlocks removeAllObjects];
  objc_sync_exit(v5);

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
        v12 = [v4 result];
        v13 = [v4 error];
        (*(v11 + 16))(v11, v12, v13);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

@end