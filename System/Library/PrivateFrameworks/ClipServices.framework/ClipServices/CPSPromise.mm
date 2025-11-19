@interface CPSPromise
+ (id)promise;
- (CPSPromise)init;
- (void)_finishWithResult:(id)a3 error:(id)a4;
- (void)_flushCompletionBlocks;
- (void)addCompletionBlock:(id)a3;
@end

@implementation CPSPromise

+ (id)promise
{
  v2 = objc_alloc_init(CPSPromise);

  return v2;
}

- (CPSPromise)init
{
  v8.receiver = self;
  v8.super_class = CPSPromise;
  v2 = [(CPSPromise *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    stateLock = v2->_stateLock;
    v2->_stateLock = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v5;
  }

  return v2;
}

- (void)addCompletionBlock:(id)a3
{
  v6 = a3;
  [(NSConditionLock *)self->_stateLock lock];
  if ([(CPSPromise *)self _isFinished])
  {
    [(NSConditionLock *)self->_stateLock unlock];
    v6[2](v6, self->_result, self->_error);
  }

  else
  {
    completionBlocks = self->_completionBlocks;
    v5 = MEMORY[0x245D3D5F0](v6);
    [(NSMutableArray *)completionBlocks addObject:v5];

    [(NSConditionLock *)self->_stateLock unlock];
  }
}

- (void)_finishWithResult:(id)a3 error:(id)a4
{
  v8 = a3;
  v7 = a4;
  [(NSConditionLock *)self->_stateLock lock];
  if ([(CPSPromise *)self _isFinished])
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    objc_storeStrong(&self->_result, a3);
    objc_storeStrong(&self->_error, a4);
    [(NSConditionLock *)self->_stateLock unlockWithCondition:1];
    [(CPSPromise *)self _flushCompletionBlocks];
  }
}

- (void)_flushCompletionBlocks
{
  v17 = *MEMORY[0x277D85DE8];
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(NSMutableArray *)self->_completionBlocks copy];
  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  [(NSConditionLock *)self->_stateLock unlock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        result = self->_result;
        error = self->_error;
        (*(*(*(&v12 + 1) + 8 * v8) + 16))(*(*(&v12 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end