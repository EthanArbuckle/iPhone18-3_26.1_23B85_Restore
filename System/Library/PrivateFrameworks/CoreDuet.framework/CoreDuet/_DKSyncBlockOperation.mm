@interface _DKSyncBlockOperation
+ (id)blockOperationWithBlock:(id)block;
- (_DKSyncBlockOperation)initWithBlock:(id)block;
- (id)executionBlocks;
- (void)addExecutionBlock:(id)block;
- (void)main;
@end

@implementation _DKSyncBlockOperation

- (_DKSyncBlockOperation)initWithBlock:(id)block
{
  blockCopy = block;
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

    if (blockCopy)
    {
      v9 = v6->_blocks;
      v10 = MEMORY[0x193B00C50](blockCopy);
      [(NSMutableArray *)v9 addObject:v10];
    }
  }

  return v6;
}

+ (id)blockOperationWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: block is nil", self];
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = blockCopy;
  v6 = [[_DKSyncBlockOperation alloc] initWithBlock:blockCopy];

  return v6;
}

- (id)executionBlocks
{
  os_unfair_lock_lock(&self->super._state + 1);
  v3 = [(NSMutableArray *)self->_blocks copy];
  os_unfair_lock_unlock(&self->super._state + 1);

  return v3;
}

- (void)addExecutionBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
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
  v5 = MEMORY[0x193B00C50](blockCopy);
  [(NSMutableArray *)blocks addObject:v5];

  os_unfair_lock_unlock(&self->super._state + 1);
  [(_DKSyncBlockOperation *)self didChangeValueForKey:@"executionBlocks"];
}

- (void)main
{
  executionBlocks = [(_DKSyncBlockOperation *)self executionBlocks];
  __DKSYNCBLOCKOPERATION_IS_CALLING_EXECUTION_BLOCKS__(executionBlocks);

  os_unfair_lock_lock(&self->super._state + 1);
  blocks = self->_blocks;
  self->_blocks = 0;

  os_unfair_lock_unlock(&self->super._state + 1);
}

@end