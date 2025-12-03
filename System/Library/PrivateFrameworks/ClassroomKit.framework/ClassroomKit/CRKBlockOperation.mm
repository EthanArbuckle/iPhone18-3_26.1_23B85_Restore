@interface CRKBlockOperation
+ (id)blockOperationWithBlock:(id)block;
- (CRKBlockOperation)initWithOperationBlock:(id)block;
- (void)cancel;
- (void)main;
@end

@implementation CRKBlockOperation

- (CRKBlockOperation)initWithOperationBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = CRKBlockOperation;
  v5 = [(CRKBlockOperation *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](blockCopy);
    operationBlock = v5->_operationBlock;
    v5->_operationBlock = v6;
  }

  return v5;
}

+ (id)blockOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [objc_alloc(objc_opt_class()) initWithOperationBlock:blockCopy];

  return v4;
}

- (void)cancel
{
  v7.receiver = self;
  v7.super_class = CRKBlockOperation;
  [(CRKBlockOperation *)&v7 cancel];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEB88];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__CRKBlockOperation_cancel__block_invoke;
  v4[3] = &unk_278DC1870;
  objc_copyWeak(&v5, &location);
  [v3 cat_performBlockOnMainRunLoop:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __27__CRKBlockOperation_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isExecuting])
  {
    v1 = CATErrorWithCodeAndUserInfo();
    [WeakRetained endOperationWithError:v1];
  }
}

- (void)main
{
  objc_initWeak(&location, self);
  operationBlock = [(CRKBlockOperation *)self operationBlock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__CRKBlockOperation_main__block_invoke;
  v6[3] = &unk_278DC28D8;
  objc_copyWeak(&v7, &location);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__CRKBlockOperation_main__block_invoke_2;
  v4[3] = &unk_278DC2900;
  objc_copyWeak(&v5, &location);
  (operationBlock)[2](operationBlock, v6, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __25__CRKBlockOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isExecuting])
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 endOperationWithResultObject:v5];
  }
}

void __25__CRKBlockOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isExecuting])
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 endOperationWithError:v5];
  }
}

@end