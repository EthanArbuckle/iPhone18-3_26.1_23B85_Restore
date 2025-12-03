@interface CNCancelationToken
+ (id)tokenWithCancelationBlock:(id)block;
+ (id)tokenWrappingCancelable:(id)cancelable;
- (BOOL)isCanceled;
- (CNCancelationToken)init;
- (id)nts_cancel;
- (void)addCancelable:(id)cancelable;
- (void)addCancelationBlock:(id)block;
- (void)callCancelationBlocks:(id)blocks;
- (void)cancel;
- (void)performBlock:(id)block;
@end

@implementation CNCancelationToken

- (CNCancelationToken)init
{
  v7.receiver = self;
  v7.super_class = CNCancelationToken;
  v2 = [(CNCancelationToken *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cancelationBlocks = v2->_cancelationBlocks;
    v2->_cancelationBlocks = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)isCanceled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCanceled = selfCopy->_isCanceled;
  objc_sync_exit(selfCopy);

  return isCanceled;
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nts_cancel = [(CNCancelationToken *)selfCopy nts_cancel];
  objc_sync_exit(selfCopy);

  [(CNCancelationToken *)selfCopy callCancelationBlocks:nts_cancel];
}

- (id)nts_cancel
{
  if (self->_isCanceled)
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  else
  {
    self->_isCanceled = 1;
    v2 = [(NSMutableArray *)self->_cancelationBlocks copy];
    cancelationBlocks = self->_cancelationBlocks;
    self->_cancelationBlocks = 0;
  }

  return v2;
}

+ (id)tokenWithCancelationBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(CNWrappingCancelableToken);
  [(CNCancelationToken *)v4 addCancelationBlock:blockCopy];

  return v4;
}

+ (id)tokenWrappingCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CNCancelationToken_tokenWrappingCancelable___block_invoke;
  v8[3] = &unk_1E6ED5830;
  v9 = cancelableCopy;
  v5 = cancelableCopy;
  v6 = [self tokenWithCancelationBlock:v8];

  return v6;
}

- (void)addCancelationBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isCanceled)
  {
    objc_sync_exit(selfCopy);

    blockCopy[2]();
  }

  else
  {
    cancelationBlocks = selfCopy->_cancelationBlocks;
    v6 = [blockCopy copy];
    v7 = _Block_copy(v6);
    [(NSMutableArray *)cancelationBlocks addObject:v7];

    objc_sync_exit(selfCopy);
  }
}

- (void)addCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  if (!cancelableCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_4 != -1)
    {
      [CNCancelationToken addCancelable:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_4;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_4, OS_LOG_TYPE_FAULT))
    {
      [CNCancelationToken addCancelable:v5];
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CNCancelationToken_addCancelable___block_invoke;
  v7[3] = &unk_1E6ED5830;
  v8 = cancelableCopy;
  v6 = cancelableCopy;
  [(CNCancelationToken *)self addCancelationBlock:v7];
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCanceled = selfCopy->_isCanceled;
  objc_sync_exit(selfCopy);

  v6 = blockCopy;
  if (blockCopy && !isCanceled)
  {
    (*(blockCopy + 2))(blockCopy);
    v6 = blockCopy;
  }
}

- (void)callCancelationBlocks:(id)blocks
{
  v14 = *MEMORY[0x1E69E9840];
  blocksCopy = blocks;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [blocksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(blocksCopy);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [blocksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end