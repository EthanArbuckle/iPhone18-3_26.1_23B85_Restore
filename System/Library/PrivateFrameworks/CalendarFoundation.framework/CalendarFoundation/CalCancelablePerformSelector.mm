@interface CalCancelablePerformSelector
- (CalCancelablePerformSelector)initWithBlock:(id)block;
- (void)cancel;
- (void)performAfterDelay:(double)delay;
@end

@implementation CalCancelablePerformSelector

- (CalCancelablePerformSelector)initWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [(CalCancelablePerformSelector *)a2 initWithBlock:?];
  }

  v9.receiver = self;
  v9.super_class = CalCancelablePerformSelector;
  v6 = [(CalCancelablePerformSelector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CalCancelablePerformSelector *)v6 setBlock:blockCopy];
  }

  return v7;
}

- (void)performAfterDelay:(double)delay
{
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [(CalCancelablePerformSelector *)self setRunloop:currentRunLoop];

  block = [(CalCancelablePerformSelector *)self block];
  v6 = _Block_copy(block);
  [(CalCancelablePerformSelector *)self performSelector:sel__performBlock_ withObject:v6 afterDelay:delay];
}

- (void)cancel
{
  runloop = [(CalCancelablePerformSelector *)self runloop];

  if (!runloop)
  {
    v10 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CalCancelablePerformSelector *)v10 cancel];
    }

    goto LABEL_12;
  }

  runloop2 = [(CalCancelablePerformSelector *)self runloop];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];

  if (runloop2 != currentRunLoop)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", @"CancelablePerformSelector canceled in a different runloop than it started in."}];
  }

  block = [(CalCancelablePerformSelector *)self block];

  if (!block)
  {
    v10 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CalCancelablePerformSelector *)v10 cancel];
    }

LABEL_12:

    return;
  }

  v7 = MEMORY[0x1E69E58C0];
  block2 = [(CalCancelablePerformSelector *)self block];
  v9 = _Block_copy(block2);
  [v7 cancelPreviousPerformRequestsWithTarget:self selector:sel__performBlock_ object:v9];

  [(CalCancelablePerformSelector *)self setBlock:0];
}

- (void)initWithBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalCancelablePerformSelector.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

@end