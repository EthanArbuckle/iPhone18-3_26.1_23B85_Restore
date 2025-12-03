@interface LACCacheAsync
- (LACCacheAsync)initWithTimeout:(double)timeout block:(id)block;
- (void)valueWithParameter:(id)parameter completion:(id)completion;
@end

@implementation LACCacheAsync

- (LACCacheAsync)initWithTimeout:(double)timeout block:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = LACCacheAsync;
  v7 = [(LACCache *)&v11 initWithTimeout:timeout];
  if (v7)
  {
    v8 = _Block_copy(blockCopy);
    block = v7->_block;
    v7->_block = v8;
  }

  return v7;
}

- (void)valueWithParameter:(id)parameter completion:(id)completion
{
  parameterCopy = parameter;
  completionCopy = completion;
  v8 = [(LACCache *)self cachedValueWithParameter:parameterCopy];
  if (v8)
  {
    completionCopy[2](completionCopy, v8, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    block = self->_block;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__LACCacheAsync_valueWithParameter_completion___block_invoke;
    v10[3] = &unk_1E7A97EC0;
    objc_copyWeak(&v13, &location);
    v11 = parameterCopy;
    v12 = completionCopy;
    block[2](block, v11, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __47__LACCacheAsync_valueWithParameter_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCachedValue:v8 withParameter:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }
}

@end