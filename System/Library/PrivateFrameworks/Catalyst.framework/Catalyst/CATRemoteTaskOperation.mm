@interface CATRemoteTaskOperation
+ (id)invalidRemoteTaskWithRequest:(id)a3 error:(id)a4;
- (CATRemoteTaskOperation)initWithRequest:(id)a3 client:(id)a4;
- (CATRemoteTaskOperation)initWithRequest:(id)a3 clientError:(id)a4;
- (void)cancel;
- (void)cancelOperationIfNeeded;
- (void)clientFailedWithError:(id)a3;
- (void)fetchProgress;
- (void)main;
- (void)operationWillFinish;
- (void)postNotificationWithName:(id)a3 userInfo:(id)a4;
- (void)processMessage:(id)a3;
- (void)processNotificationWithName:(id)a3 userInfo:(id)a4;
- (void)updateCompletedUnitCount:(int64_t)a3 andTotalUnitCount:(int64_t)a4;
- (void)updateProgressWithRemoteProgress:(id)a3;
@end

@implementation CATRemoteTaskOperation

+ (id)invalidRemoteTaskWithRequest:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [CATRemoteTaskOperation alloc];
  v8 = v7;
  if (v6)
  {
    v9 = [(CATRemoteTaskOperation *)v7 initWithRequest:v5 clientError:v6];
  }

  else
  {
    v10 = CATErrorWithCodeAndUserInfo(501, 0);
    v9 = [(CATRemoteTaskOperation *)v8 initWithRequest:v5 clientError:v10];
  }

  return v9;
}

- (CATRemoteTaskOperation)initWithRequest:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CATRemoteTaskOperation initWithRequest:client:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CATRemoteTaskOperation initWithRequest:client:];
LABEL_3:
  v12.receiver = self;
  v12.super_class = CATRemoteTaskOperation;
  v9 = [(CATTaskOperation *)&v12 initWithRequest:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a4);
  }

  return v10;
}

- (CATRemoteTaskOperation)initWithRequest:(id)a3 clientError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CATRemoteTaskOperation initWithRequest:clientError:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CATRemoteTaskOperation initWithRequest:clientError:];
LABEL_3:
  v12.receiver = self;
  v12.super_class = CATRemoteTaskOperation;
  v9 = [(CATTaskOperation *)&v12 initWithRequest:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mClientError, a4);
  }

  return v10;
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = CATRemoteTaskOperation;
  [(CATRemoteTaskOperation *)&v6 cancel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__CATRemoteTaskOperation_cancel__block_invoke;
  v5[3] = &unk_278DA72D0;
  v5[4] = self;
  v3 = v5;
  v4 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_6;
  block[3] = &unk_278DA7208;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)cancelOperationIfNeeded
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if ([(CATOperation *)self isExecuting])
  {
    v4 = [CATTaskMessageCancel alloc];
    v5 = [(CATOperation *)self UUID];
    v7 = [(CATTaskMessage *)v4 initWithTaskUUID:v5];

    v6 = [(CATRemoteTaskOperation *)self client];
    [v6 remoteTaskOperation:self preparedMessage:v7];
  }
}

- (void)operationWillFinish
{
  v4.receiver = self;
  v4.super_class = CATRemoteTaskOperation;
  [(CATOperation *)&v4 operationWillFinish];
  client = self->_client;
  self->_client = 0;
}

- (void)main
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __30__CATRemoteTaskOperation_main__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    if (*(*(a1 + 32) + 400))
    {
      v10.receiver = *(a1 + 32);
      v10.super_class = CATRemoteTaskOperation;
      objc_msgSendSuper2(&v10, sel_endOperationWithError_);
    }

    else
    {
      v2 = [CATTaskMessageStart alloc];
      v3 = [*(a1 + 32) UUID];
      v4 = [*(a1 + 32) request];
      v5 = [(CATTaskMessageStart *)v2 initWithTaskUUID:v3 request:v4];

      v6 = [*(a1 + 32) client];
      [v6 remoteTaskOperation:*(a1 + 32) preparedMessage:v5];

      if (!v5)
      {
        v7 = *(a1 + 32);
        v8 = CATErrorWithCodeAndUserInfo(402, 0);
        v9.receiver = v7;
        v9.super_class = CATRemoteTaskOperation;
        objc_msgSendSuper2(&v9, sel_endOperationWithError_, v8);
      }
    }
  }
}

- (void)processNotificationWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CATTaskOperation *)self canSendNotificationWithName:v6 userInfo:v7])
  {
    v8 = [(CATTaskOperation *)self notificationDelegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_5:

      goto LABEL_10;
    }

    v9 = [(CATTaskOperation *)self canSendNotificationWithName:v6 userInfo:v7];

    if (v9)
    {
      v8 = [(CATTaskOperation *)self notificationDelegate];
      [v8 taskOperation:self didPostNotificationWithName:v6 userInfo:v7];
      goto LABEL_5;
    }
  }

  else
  {
    if (_CATLogGeneral_onceToken_6 != -1)
    {
      [CATRemoteTaskOperation processNotificationWithName:userInfo:];
    }

    v10 = _CATLogGeneral_logObj_6;
    if (os_log_type_enabled(_CATLogGeneral_logObj_6, OS_LOG_TYPE_ERROR))
    {
      [(CATRemoteTaskOperation *)self processNotificationWithName:v6 userInfo:v10];
    }
  }

LABEL_10:
}

- (void)fetchProgress
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__CATRemoteTaskOperation_fetchProgress__block_invoke;
  v4[3] = &unk_278DA72D0;
  v4[4] = self;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_6;
  block[3] = &unk_278DA7208;
  v6 = v2;
  dispatch_async(v3, block);
}

void __39__CATRemoteTaskOperation_fetchProgress__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [CATTaskMessageFetchProgress alloc];
    v3 = [*(a1 + 32) UUID];
    v5 = [(CATTaskMessage *)v2 initWithTaskUUID:v3];

    v4 = [*(a1 + 32) client];
    [v4 remoteTaskOperation:*(a1 + 32) preparedMessage:v5];
  }
}

- (void)postNotificationWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__CATRemoteTaskOperation_postNotificationWithName_userInfo___block_invoke;
  v13[3] = &unk_278DA7280;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v13;
  v9 = v7;
  v10 = v6;
  v11 = CATGetCatalystQueue();
  v12 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_6;
  block[3] = &unk_278DA7208;
  v17 = v12;
  dispatch_async(v11, block);
}

void __60__CATRemoteTaskOperation_postNotificationWithName_userInfo___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [CATNotificationMessage alloc];
    v3 = [*(a1 + 32) UUID];
    v5 = [(CATNotificationMessage *)v2 initWithTaskUUID:v3 name:*(a1 + 40) userInfo:*(a1 + 48)];

    v4 = [*(a1 + 32) client];
    [v4 remoteTaskOperation:*(a1 + 32) preparedMessage:v5];
  }
}

- (void)processMessage:(id)a3
{
  v12 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v12 progress];
    [(CATRemoteTaskOperation *)self updateProgressWithRemoteProgress:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v12;
      v7 = [v6 completedUnitCount];
      v8 = [v6 totalUnitCount];

      [(CATRemoteTaskOperation *)self updateCompletedUnitCount:v7 andTotalUnitCount:v8];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v12;
        v10 = [v9 name];
        v11 = [v9 userInfo];

        [(CATRemoteTaskOperation *)self processNotificationWithName:v10 userInfo:v11];
      }
    }
  }
}

- (void)clientFailedWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CATRemoteTaskOperation clientFailedWithError:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__CATRemoteTaskOperation_clientFailedWithError___block_invoke;
  v9[3] = &unk_278DA7470;
  v9[4] = self;
  v10 = v4;
  v5 = v9;
  v6 = v4;
  v7 = CATGetCatalystQueue();
  v8 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_6;
  block[3] = &unk_278DA7208;
  v12 = v8;
  dispatch_async(v7, block);
}

void __48__CATRemoteTaskOperation_clientFailedWithError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 endOperationWithError:v3];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = (*(a1 + 32) + 400);

    objc_storeStrong(v5, v4);
  }
}

- (void)updateCompletedUnitCount:(int64_t)a3 andTotalUnitCount:(int64_t)a4
{
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  if ([(CATOperation *)self totalUnitCount]!= a4)
  {
    [(CATOperation *)self setTotalUnitCount:a4];
  }

  if ([(CATOperation *)self completedUnitCount]!= a3)
  {

    [(CATOperation *)self setCompletedUnitCount:a3];
  }
}

- (void)updateProgressWithRemoteProgress:(id)a3
{
  v14 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(CATOperation *)self isExecuting])
  {
    v5 = [(CATRemoteTaskOperation *)self remotePhase];
    if (!v5 || (v6 = v5, v7 = [v14 phase], -[CATRemoteTaskOperation remotePhase](self, "remotePhase"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "unsignedIntegerValue"), v8, v6, v7 != v9))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "phase")}];
      [(CATRemoteTaskOperation *)self setRemotePhase:v10];
    }

    v11 = [v14 completedUnitCount];
    if (v11 != [(CATOperation *)self completedUnitCount])
    {
      -[CATOperation setCompletedUnitCount:](self, "setCompletedUnitCount:", [v14 completedUnitCount]);
    }

    v12 = [v14 totalUnitCount];
    if (v12 != [(CATOperation *)self totalUnitCount])
    {
      -[CATOperation setTotalUnitCount:](self, "setTotalUnitCount:", [v14 totalUnitCount]);
    }

    if ([v14 state] == 1)
    {
      v13 = [v14 resultObject];
      [(CATOperation *)self endOperationWithResultObject:v13];
    }

    else
    {
      if ([v14 state] != 2)
      {
        goto LABEL_14;
      }

      v13 = [v14 error];
      [(CATOperation *)self endOperationWithError:v13];
    }
  }

LABEL_14:
}

- (void)initWithRequest:client:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)initWithRequest:client:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)initWithRequest:clientError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)initWithRequest:clientError:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"error" object:? file:? lineNumber:? description:?];
}

- (void)processNotificationWithName:(os_log_t)log userInfo:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24329F000, log, OS_LOG_TYPE_ERROR, "%@ dropping notification '%@', either the client didn't expect it, or it wasn't allowlisted", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)clientFailedWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"error" object:? file:? lineNumber:? description:?];
}

@end