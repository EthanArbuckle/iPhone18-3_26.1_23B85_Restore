@interface _DKSyncBlockOperation
+ (id)blockOperationWithBlock:(id)a3;
- (_DKSyncBlockOperation)initWithBlock:(id)a3;
- (id)executionBlocks;
- (void)addExecutionBlock:(id)a3;
- (void)main;
@end

@implementation _DKSyncBlockOperation

- (_DKSyncBlockOperation)initWithBlock:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _DKSyncBlockOperation;
  v5 = [(_DKSyncOperation *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *(&v5->super._state + 1) = 0;
    v7 = objc_opt_new();
    blocks = v6->_blocks;
    v6->_blocks = v7;

    if (v4)
    {
      v9 = v6->_blocks;
      v10 = MEMORY[0x193B00C50](v4);
      [(NSMutableArray *)v9 addObject:v10];
    }
  }

  return v6;
}

+ (id)blockOperationWithBlock:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: block is nil", a1];
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = v4;
  v6 = [[_DKSyncBlockOperation alloc] initWithBlock:v4];

  return v6;
}

- (id)executionBlocks
{
  os_unfair_lock_lock(&self->super._state + 1);
  v3 = [(NSMutableArray *)self->_blocks copy];
  os_unfair_lock_unlock(&self->super._state + 1);

  return v3;
}

- (void)addExecutionBlock:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: block is nil", self];
LABEL_10:
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }

  if ([(_DKSyncOperation *)self isExecuting]|| [(_DKSyncOperation *)self isFinished]|| [(_DKSyncBlockOperation *)self isCancelled])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: blocks cannot be added after the operation has started executing or finished or cancelled", self];
    goto LABEL_10;
  }

  [(_DKSyncBlockOperation *)self willChangeValueForKey:@"executionBlocks"];
  os_unfair_lock_lock(&self->super._state + 1);
  blocks = self->_blocks;
  v5 = MEMORY[0x193B00C50](v7);
  [(NSMutableArray *)blocks addObject:v5];

  os_unfair_lock_unlock(&self->super._state + 1);
  [(_DKSyncBlockOperation *)self didChangeValueForKey:@"executionBlocks"];
}

- (void)main
{
  v3 = [(_DKSyncBlockOperation *)self executionBlocks];
  __DKSYNCBLOCKOPERATION_IS_CALLING_EXECUTION_BLOCKS__(v3);

  os_unfair_lock_lock(&self->super._state + 1);
  blocks = self->_blocks;
  self->_blocks = 0;

  os_unfair_lock_unlock(&self->super._state + 1);
}

@end