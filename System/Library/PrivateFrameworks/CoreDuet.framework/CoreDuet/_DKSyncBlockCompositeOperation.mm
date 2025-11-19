@interface _DKSyncBlockCompositeOperation
+ (uint64_t)blockCompositeOperationWithBlock:(uint64_t)a1;
- (_DWORD)initWithParent:(void *)a3 block:;
- (id)executionBlocks;
- (void)main;
@end

@implementation _DKSyncBlockCompositeOperation

+ (uint64_t)blockCompositeOperationWithBlock:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: block is nil", v3];
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v5);
  }

  [(_DKSyncBlockCompositeOperation *)v2 blockCompositeOperationWithBlock:?];
  return v6;
}

- (id)executionBlocks
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_blocks copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)main
{
  v3 = [(_DKSyncBlockCompositeOperation *)self executionBlocks];
  __DKSYNCBLOCKOPERATION_IS_CALLING_EXECUTION_BLOCKS__(v3);

  os_unfair_lock_lock(&self->_lock);
  blocks = self->_blocks;
  self->_blocks = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (_DWORD)initWithParent:(void *)a3 block:
{
  v5 = a3;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = _DKSyncBlockCompositeOperation;
    v6 = objc_msgSendSuper2(&v13, sel_initWithParent_, a2);
    v7 = v6;
    if (v6)
    {
      v6[74] = 0;
      v8 = objc_opt_new();
      v9 = *(v7 + 38);
      *(v7 + 38) = v8;

      if (v5)
      {
        v10 = *(v7 + 38);
        v11 = MEMORY[0x193B00C50](v5);
        [v10 addObject:v11];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (_DWORD)blockCompositeOperationWithBlock:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = [_DKSyncBlockCompositeOperation alloc];
  if (v4)
  {
    v5 = [(_DKSyncBlockCompositeOperation *)v4 initWithParent:a1 block:?];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;

  return v5;
}

@end