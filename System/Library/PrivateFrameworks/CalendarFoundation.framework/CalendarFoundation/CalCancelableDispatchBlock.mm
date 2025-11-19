@interface CalCancelableDispatchBlock
- (CalCancelableDispatchBlock)initWithBlock:(id)a3 inQueue:(id)a4;
- (void)cancel;
- (void)performAfterDelay:(double)a3;
- (void)performAsync;
@end

@implementation CalCancelableDispatchBlock

- (CalCancelableDispatchBlock)initWithBlock:(id)a3 inQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CalCancelableDispatchBlock initWithBlock:a2 inQueue:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [CalCancelableDispatchBlock initWithBlock:a2 inQueue:self];
LABEL_3:
  v20.receiver = self;
  v20.super_class = CalCancelableDispatchBlock;
  v10 = [(CalCancelableDispatchBlock *)&v20 init];
  if (v10)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __52__CalCancelableDispatchBlock_initWithBlock_inQueue___block_invoke;
    v17 = &unk_1E7EC6A08;
    v19 = v7;
    v11 = v10;
    v18 = v11;
    v12 = dispatch_block_create(0, &v14);
    [v11 setBlock:{v12, v14, v15, v16, v17}];

    objc_storeStrong(v11 + 2, a4);
  }

  return v10;
}

uint64_t __52__CalCancelableDispatchBlock_initWithBlock_inQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  return [v3 setBlock:0];
}

- (void)performAsync
{
  queue = [(CalCancelableDispatchBlock *)self queue];
  v3 = [(CalCancelableDispatchBlock *)self block];
  dispatch_async(queue, v3);
}

- (void)performAfterDelay:(double)a3
{
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  queue = [(CalCancelableDispatchBlock *)self queue];
  v5 = [(CalCancelableDispatchBlock *)self block];
  dispatch_after(v4, queue, v5);
}

- (void)cancel
{
  v3 = [(CalCancelableDispatchBlock *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CalCancelableDispatchBlock *)self block];

  if (v4)
  {
    v5 = [(CalCancelableDispatchBlock *)self block];
    dispatch_block_cancel(v5);

    [(CalCancelableDispatchBlock *)self setBlock:0];
  }

  else
  {
    v6 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CalCancelableDispatchBlock *)v6 cancel];
    }
  }
}

- (void)initWithBlock:(uint64_t)a1 inQueue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalCancelableDispatchBlock.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

- (void)initWithBlock:(uint64_t)a1 inQueue:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalCancelableDispatchBlock.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"queue != nil"}];
}

@end