@interface CalCancelablePerformSelector
- (CalCancelablePerformSelector)initWithBlock:(id)a3;
- (void)cancel;
- (void)performAfterDelay:(double)a3;
@end

@implementation CalCancelablePerformSelector

- (CalCancelablePerformSelector)initWithBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CalCancelablePerformSelector *)a2 initWithBlock:?];
  }

  v9.receiver = self;
  v9.super_class = CalCancelablePerformSelector;
  v6 = [(CalCancelablePerformSelector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CalCancelablePerformSelector *)v6 setBlock:v5];
  }

  return v7;
}

- (void)performAfterDelay:(double)a3
{
  v5 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [(CalCancelablePerformSelector *)self setRunloop:v5];

  v7 = [(CalCancelablePerformSelector *)self block];
  v6 = _Block_copy(v7);
  [(CalCancelablePerformSelector *)self performSelector:sel__performBlock_ withObject:v6 afterDelay:a3];
}

- (void)cancel
{
  v3 = [(CalCancelablePerformSelector *)self runloop];

  if (!v3)
  {
    v10 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CalCancelablePerformSelector *)v10 cancel];
    }

    goto LABEL_12;
  }

  v4 = [(CalCancelablePerformSelector *)self runloop];
  v5 = [MEMORY[0x1E695DFD0] currentRunLoop];

  if (v4 != v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", @"CancelablePerformSelector canceled in a different runloop than it started in."}];
  }

  v6 = [(CalCancelablePerformSelector *)self block];

  if (!v6)
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
  v8 = [(CalCancelablePerformSelector *)self block];
  v9 = _Block_copy(v8);
  [v7 cancelPreviousPerformRequestsWithTarget:self selector:sel__performBlock_ object:v9];

  [(CalCancelablePerformSelector *)self setBlock:0];
}

- (void)initWithBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalCancelablePerformSelector.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

@end