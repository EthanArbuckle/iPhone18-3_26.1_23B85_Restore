@interface _CATArbitratorWaitToken
- (BOOL)whenStateIs:(int)a3 atomicallySwapWith:(int)a4;
- (_CATArbitratorWaitToken)initWithDelegateQueue:(id)a3 completionBlock:(id)a4;
- (void)cancel;
- (void)performCompletionBlock;
- (void)resume;
@end

@implementation _CATArbitratorWaitToken

- (_CATArbitratorWaitToken)initWithDelegateQueue:(id)a3 completionBlock:(id)a4
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
    [_CATArbitratorWaitToken initWithDelegateQueue:completionBlock:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [_CATArbitratorWaitToken initWithDelegateQueue:completionBlock:];
LABEL_3:
  v18.receiver = self;
  v18.super_class = _CATArbitratorWaitToken;
  v10 = [(_CATArbitratorWaitToken *)&v18 init];
  if (v10)
  {
    v11 = objc_opt_new();
    mTokenByKey = v10->mTokenByKey;
    v10->mTokenByKey = v11;

    objc_storeStrong(&v10->mDelegateQueue, a3);
    v13 = MEMORY[0x245D2F510](v9);
    mCompletionBlock = v10->mCompletionBlock;
    v10->mCompletionBlock = v13;

    v15 = dispatch_group_create();
    mGroup = v10->mGroup;
    v10->mGroup = v15;
  }

  return v10;
}

- (void)resume
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy_;
  v5[4] = __Block_byref_object_dispose_;
  v6 = self;
  mDelegateQueue = v6->mDelegateQueue;
  mGroup = v6->mGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33___CATArbitratorWaitToken_resume__block_invoke;
  block[3] = &unk_278DA7148;
  block[4] = v5;
  dispatch_group_notify(mGroup, mDelegateQueue, block);
  _Block_object_dispose(v5, 8);
}

- (void)performCompletionBlock
{
  if ([(_CATArbitratorWaitToken *)self whenStateIs:0 atomicallySwapWith:2])
  {
    v3 = objc_opt_new();
    mTokenByKey = self->mTokenByKey;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49___CATArbitratorWaitToken_performCompletionBlock__block_invoke;
    v12[3] = &unk_278DA7170;
    v13 = v3;
    v5 = v3;
    [(NSMutableDictionary *)mTokenByKey enumerateKeysAndObjectsUsingBlock:v12];
    v6 = [v5 copy];
  }

  else
  {
    if ([(_CATArbitratorWaitToken *)self whenStateIs:1 atomicallySwapWith:2])
    {
      v7 = [(NSMutableDictionary *)self->mTokenByKey allValues];
      [v7 makeObjectsPerformSelector:sel_invalidate];
    }

    v6 = 0;
  }

  (*(self->mCompletionBlock + 2))();
  mCompletionBlock = self->mCompletionBlock;
  self->mCompletionBlock = 0;

  [(NSMutableDictionary *)self->mTokenByKey removeAllObjects];
  v9 = self->mTokenByKey;
  self->mTokenByKey = 0;

  mDelegateQueue = self->mDelegateQueue;
  self->mDelegateQueue = 0;

  mGroup = self->mGroup;
  self->mGroup = 0;
}

- (void)cancel
{
  if ([(_CATArbitratorWaitToken *)self whenStateIs:0 atomicallySwapWith:1])
  {
    v3 = [(NSMutableDictionary *)self->mTokenByKey allValues];
    [v3 makeObjectsPerformSelector:sel_cancel];
  }
}

- (BOOL)whenStateIs:(int)a3 atomicallySwapWith:(int)a4
{
  v4 = a3;
  atomic_compare_exchange_strong(&self->mState, &v4, a4);
  return v4 == a3;
}

- (void)initWithDelegateQueue:completionBlock:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"delegateQueue" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegateQueue:completionBlock:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"completionBlock" object:? file:? lineNumber:? description:?];
}

- (void)waitForRegistrationEntry:forKey:exclusive:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"entry" object:? file:? lineNumber:? description:?];
}

@end