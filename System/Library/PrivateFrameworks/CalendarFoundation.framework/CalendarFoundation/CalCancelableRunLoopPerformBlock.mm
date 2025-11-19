@interface CalCancelableRunLoopPerformBlock
- (CalCancelableRunLoopPerformBlock)initWithBlock:(id)a3 inRunLoop:(id)a4;
- (void)cancel;
- (void)performAfterDelay:(double)a3;
@end

@implementation CalCancelableRunLoopPerformBlock

- (CalCancelableRunLoopPerformBlock)initWithBlock:(id)a3 inRunLoop:(id)a4
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
    [CalCancelableRunLoopPerformBlock initWithBlock:a2 inRunLoop:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [CalCancelableRunLoopPerformBlock initWithBlock:a2 inRunLoop:self];
LABEL_3:
  v13.receiver = self;
  v13.super_class = CalCancelableRunLoopPerformBlock;
  v10 = [(CalCancelableRunLoopPerformBlock *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_runLoop, a4);
    [(CalCancelableRunLoopPerformBlock *)v11 setBlock:v7];
  }

  return v11;
}

- (void)performAfterDelay:(double)a3
{
  v5 = [(CalCancelableRunLoopPerformBlock *)self runLoop];
  v6 = [v5 getCFRunLoop];
  v7 = *MEMORY[0x1E695D918];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CalCancelableRunLoopPerformBlock_performAfterDelay___block_invoke;
  v9[3] = &unk_1E7EC6970;
  v9[4] = self;
  *&v9[5] = a3;
  CFRunLoopPerformBlock(v6, v7, v9);

  v8 = [(CalCancelableRunLoopPerformBlock *)self runLoop];
  CFRunLoopWakeUp([v8 getCFRunLoop]);
}

void __54__CalCancelableRunLoopPerformBlock_performAfterDelay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) block];

  if (v2)
  {
    v3 = *(a1 + 32);
    v5 = [v3 block];
    v4 = _Block_copy(v5);
    [v3 performSelector:sel__performBlock_ withObject:v4 afterDelay:*(a1 + 40)];
  }
}

- (void)cancel
{
  v3 = [(CalCancelableRunLoopPerformBlock *)self runLoop];
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];

  if (v3 != v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", @"CancelableRunLoopPerformBlock canceled in a different runloop than it started in."}];
  }

  v5 = [(CalCancelableRunLoopPerformBlock *)self block];

  if (v5)
  {
    v6 = MEMORY[0x1E69E58C0];
    v7 = [(CalCancelableRunLoopPerformBlock *)self block];
    v8 = _Block_copy(v7);
    [v6 cancelPreviousPerformRequestsWithTarget:self selector:sel__performBlock_ object:v8];

    [(CalCancelableRunLoopPerformBlock *)self setBlock:0];
  }

  else
  {
    v9 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CalCancelableRunLoopPerformBlock *)v9 cancel];
    }
  }
}

- (void)initWithBlock:(uint64_t)a1 inRunLoop:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalCancelableRunLoopPerformBlock.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

- (void)initWithBlock:(uint64_t)a1 inRunLoop:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalCancelableRunLoopPerformBlock.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"runLoop != nil"}];
}

@end