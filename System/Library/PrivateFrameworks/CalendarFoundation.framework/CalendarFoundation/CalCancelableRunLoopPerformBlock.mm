@interface CalCancelableRunLoopPerformBlock
- (CalCancelableRunLoopPerformBlock)initWithBlock:(id)block inRunLoop:(id)loop;
- (void)cancel;
- (void)performAfterDelay:(double)delay;
@end

@implementation CalCancelableRunLoopPerformBlock

- (CalCancelableRunLoopPerformBlock)initWithBlock:(id)block inRunLoop:(id)loop
{
  blockCopy = block;
  loopCopy = loop;
  v9 = loopCopy;
  if (blockCopy)
  {
    if (loopCopy)
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
    objc_storeStrong(&v10->_runLoop, loop);
    [(CalCancelableRunLoopPerformBlock *)v11 setBlock:blockCopy];
  }

  return v11;
}

- (void)performAfterDelay:(double)delay
{
  runLoop = [(CalCancelableRunLoopPerformBlock *)self runLoop];
  getCFRunLoop = [runLoop getCFRunLoop];
  v7 = *MEMORY[0x1E695D918];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CalCancelableRunLoopPerformBlock_performAfterDelay___block_invoke;
  v9[3] = &unk_1E7EC6970;
  v9[4] = self;
  *&v9[5] = delay;
  CFRunLoopPerformBlock(getCFRunLoop, v7, v9);

  runLoop2 = [(CalCancelableRunLoopPerformBlock *)self runLoop];
  CFRunLoopWakeUp([runLoop2 getCFRunLoop]);
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
  runLoop = [(CalCancelableRunLoopPerformBlock *)self runLoop];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];

  if (runLoop != currentRunLoop)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", @"CancelableRunLoopPerformBlock canceled in a different runloop than it started in."}];
  }

  block = [(CalCancelableRunLoopPerformBlock *)self block];

  if (block)
  {
    v6 = MEMORY[0x1E69E58C0];
    block2 = [(CalCancelableRunLoopPerformBlock *)self block];
    v8 = _Block_copy(block2);
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