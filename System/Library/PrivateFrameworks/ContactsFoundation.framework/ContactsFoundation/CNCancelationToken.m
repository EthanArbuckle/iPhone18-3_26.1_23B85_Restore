@interface CNCancelationToken
+ (id)tokenWithCancelationBlock:(id)a3;
+ (id)tokenWrappingCancelable:(id)a3;
- (BOOL)isCanceled;
- (CNCancelationToken)init;
- (id)nts_cancel;
- (void)addCancelable:(id)a3;
- (void)addCancelationBlock:(id)a3;
- (void)callCancelationBlocks:(id)a3;
- (void)cancel;
- (void)performBlock:(id)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  isCanceled = v2->_isCanceled;
  objc_sync_exit(v2);

  return isCanceled;
}

- (void)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CNCancelationToken *)v2 nts_cancel];
  objc_sync_exit(v2);

  [(CNCancelationToken *)v2 callCancelationBlocks:v3];
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

+ (id)tokenWithCancelationBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CNWrappingCancelableToken);
  [(CNCancelationToken *)v4 addCancelationBlock:v3];

  return v4;
}

+ (id)tokenWrappingCancelable:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CNCancelationToken_tokenWrappingCancelable___block_invoke;
  v8[3] = &unk_1E6ED5830;
  v9 = v4;
  v5 = v4;
  v6 = [a1 tokenWithCancelationBlock:v8];

  return v6;
}

- (void)addCancelationBlock:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_isCanceled)
  {
    objc_sync_exit(v4);

    v8[2]();
  }

  else
  {
    cancelationBlocks = v4->_cancelationBlocks;
    v6 = [v8 copy];
    v7 = _Block_copy(v6);
    [(NSMutableArray *)cancelationBlocks addObject:v7];

    objc_sync_exit(v4);
  }
}

- (void)addCancelable:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v8 = v4;
  v6 = v4;
  [(CNCancelationToken *)self addCancelationBlock:v7];
}

- (void)performBlock:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  isCanceled = v4->_isCanceled;
  objc_sync_exit(v4);

  v6 = v7;
  if (v7 && !isCanceled)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)callCancelationBlocks:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end