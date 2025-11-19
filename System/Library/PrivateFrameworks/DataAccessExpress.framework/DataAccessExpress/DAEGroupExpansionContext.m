@interface DAEGroupExpansionContext
- (DAEGroupExpansionContext)initWithCompletionBlock:(id)a3;
- (void)finishedWithError:(id)a3;
@end

@implementation DAEGroupExpansionContext

- (DAEGroupExpansionContext)initWithCompletionBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DAEGroupExpansionContext;
  v5 = [(DAEGroupExpansionContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    completionBlock = v5->_completionBlock;
    v5->_completionBlock = v6;
  }

  return v5;
}

- (void)finishedWithError:(id)a3
{
  v4 = a3;
  if (self->_completionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v6 = queue;
    }

    else
    {
      v6 = dispatch_get_global_queue(0, 0);
    }

    v7 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__DAEGroupExpansionContext_finishedWithError___block_invoke;
    v8[3] = &unk_27851FED8;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

uint64_t __46__DAEGroupExpansionContext_finishedWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  return (*(*(v2 + 40) + 16))();
}

@end