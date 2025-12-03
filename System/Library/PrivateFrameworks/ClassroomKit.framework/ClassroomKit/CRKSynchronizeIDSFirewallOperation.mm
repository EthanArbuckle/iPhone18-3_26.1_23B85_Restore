@interface CRKSynchronizeIDSFirewallOperation
- (CRKSynchronizeIDSFirewallOperation)initWithIDSPrimitives:(id)primitives localStorage:(id)storage trustedRosterAppleIDs:(id)ds;
- (id)operationToAddAllowedAppleIDs:(id)ds;
- (id)operationToFetchAllowedAppleIDs;
- (id)operationToRemoveAllowedAppleIDs:(id)ds;
- (void)addAllowedAppleIDs;
- (void)cancel;
- (void)computeChanges;
- (void)fetchAllowedAppleIDs;
- (void)finishWithError:(id)error;
- (void)main;
- (void)operationToAddAllowedAppleIDsDidFinish:(id)finish;
- (void)operationToFetchAppleIDsDidFinish:(id)finish;
- (void)operationToRemoveAllowedAppleIDsDidFinish:(id)finish;
- (void)removeAllowedAppleIDs;
- (void)run;
@end

@implementation CRKSynchronizeIDSFirewallOperation

- (CRKSynchronizeIDSFirewallOperation)initWithIDSPrimitives:(id)primitives localStorage:(id)storage trustedRosterAppleIDs:(id)ds
{
  primitivesCopy = primitives;
  storageCopy = storage;
  dsCopy = ds;
  v17.receiver = self;
  v17.super_class = CRKSynchronizeIDSFirewallOperation;
  v12 = [(CRKSynchronizeIDSFirewallOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_IDSPrimitives, primitives);
    objc_storeStrong(&v13->_localStorage, storage);
    v14 = [dsCopy copy];
    trustedRosterAppleIDs = v13->_trustedRosterAppleIDs;
    v13->_trustedRosterAppleIDs = v14;
  }

  return v13;
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CRKSynchronizeIDSFirewallOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKSynchronizeIDSFirewallOperation;
  [(CRKSynchronizeIDSFirewallOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CRKSynchronizeIDSFirewallOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__CRKSynchronizeIDSFirewallOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) fetchAllowedAppleIDsOperation];
    [v2 cancel];

    v3 = [*(a1 + 32) addAllowedAppleIDsOperation];
    [v3 cancel];

    v4 = [*(a1 + 32) removeAllowedAppleIDsOperation];
    [v4 cancel];

    v5 = *(a1 + 32);
    v6 = CATErrorWithCodeAndUserInfo();
    [v5 finishWithError:v6];
  }
}

- (void)run
{
  OUTLINED_FUNCTION_1_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_1();
  [v2 handleFailureInMethod:v1 object:? file:? lineNumber:? description:?];
}

- (void)fetchAllowedAppleIDs
{
  operationToFetchAllowedAppleIDs = [(CRKSynchronizeIDSFirewallOperation *)self operationToFetchAllowedAppleIDs];
  [(CRKSynchronizeIDSFirewallOperation *)self setFetchAllowedAppleIDsOperation:operationToFetchAllowedAppleIDs];
  [operationToFetchAllowedAppleIDs addTarget:self selector:sel_operationToFetchAppleIDsDidFinish_ forOperationEvents:6];
  crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
  [crk_backgroundQueue addOperation:operationToFetchAllowedAppleIDs];
}

- (void)operationToFetchAppleIDsDidFinish:(id)finish
{
  finishCopy = finish;
  if ([(CRKSynchronizeIDSFirewallOperation *)self isExecuting])
  {
    error = [finishCopy error];

    if (error)
    {
      error2 = [finishCopy error];
      [(CRKSynchronizeIDSFirewallOperation *)self finishWithError:error2];
    }

    else
    {
      error2 = [finishCopy resultObject];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [CRKSynchronizeIDSFirewallOperation operationToFetchAppleIDsDidFinish:];
      }

      localStorage = [(CRKSynchronizeIDSFirewallOperation *)self localStorage];
      [localStorage setAllowedAppleIDs:error2];

      [(CRKSynchronizeIDSFirewallOperation *)self computeChanges];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)computeChanges
{
  OUTLINED_FUNCTION_1_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addAllowedAppleIDs
{
  OUTLINED_FUNCTION_1_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)operationToAddAllowedAppleIDsDidFinish:(id)finish
{
  finishCopy = finish;
  if ([(CRKSynchronizeIDSFirewallOperation *)self isExecuting])
  {
    error = [finishCopy error];

    if (error)
    {
      error2 = [finishCopy error];
      [(CRKSynchronizeIDSFirewallOperation *)self finishWithError:error2];
    }

    else
    {
      [(CRKSynchronizeIDSFirewallOperation *)self removeAllowedAppleIDs];
    }
  }
}

- (void)removeAllowedAppleIDs
{
  OUTLINED_FUNCTION_1_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)operationToRemoveAllowedAppleIDsDidFinish:(id)finish
{
  finishCopy = finish;
  if ([(CRKSynchronizeIDSFirewallOperation *)self isExecuting])
  {
    error = [finishCopy error];
    [(CRKSynchronizeIDSFirewallOperation *)self finishWithError:error];
  }
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKSynchronizeIDSFirewallOperation finishWithError:];
  }

  if (errorCopy)
  {
    localStorage = [(CRKSynchronizeIDSFirewallOperation *)self localStorage];
    [localStorage setAllowedAppleIDs:0];

    [(CRKSynchronizeIDSFirewallOperation *)self endOperationWithError:errorCopy];
  }

  else
  {
    trustedRosterAppleIDs = [(CRKSynchronizeIDSFirewallOperation *)self trustedRosterAppleIDs];
    localStorage2 = [(CRKSynchronizeIDSFirewallOperation *)self localStorage];
    [localStorage2 setAllowedAppleIDs:trustedRosterAppleIDs];

    [(CRKSynchronizeIDSFirewallOperation *)self endOperationWithResultObject:0];
  }
}

- (id)operationToFetchAllowedAppleIDs
{
  iDSPrimitives = [(CRKSynchronizeIDSFirewallOperation *)self IDSPrimitives];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CRKSynchronizeIDSFirewallOperation_operationToFetchAllowedAppleIDs__block_invoke;
  v6[3] = &unk_278DC1140;
  v7 = iDSPrimitives;
  v3 = iDSPrimitives;
  v4 = [CRKBlockOperation blockOperationWithBlock:v6];

  return v4;
}

void __69__CRKSynchronizeIDSFirewallOperation_operationToFetchAllowedAppleIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__CRKSynchronizeIDSFirewallOperation_operationToFetchAllowedAppleIDs__block_invoke_2;
  v10[3] = &unk_278DC1118;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 fetchFirewallAllowedAppleIDs:v10];
}

uint64_t __69__CRKSynchronizeIDSFirewallOperation_operationToFetchAllowedAppleIDs__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (id)operationToAddAllowedAppleIDs:(id)ds
{
  dsCopy = ds;
  iDSPrimitives = [(CRKSynchronizeIDSFirewallOperation *)self IDSPrimitives];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__CRKSynchronizeIDSFirewallOperation_operationToAddAllowedAppleIDs___block_invoke;
  v10[3] = &unk_278DC1190;
  v11 = dsCopy;
  v12 = iDSPrimitives;
  v6 = iDSPrimitives;
  v7 = dsCopy;
  v8 = [CRKBlockOperation blockOperationWithBlock:v10];

  return v8;
}

void __68__CRKSynchronizeIDSFirewallOperation_operationToAddAllowedAppleIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) count])
  {
    v7 = _CRKLogASM_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) crk_stableDescription];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to IDS firewall.", buf, 0xCu);
    }

    v11 = a1 + 32;
    v9 = *(a1 + 32);
    v10 = *(v11 + 8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__CRKSynchronizeIDSFirewallOperation_operationToAddAllowedAppleIDs___block_invoke_32;
    v12[3] = &unk_278DC1168;
    v13 = v6;
    v14 = v5;
    [v10 addAllowedAppleIDsToFirewall:v9 completion:v12];
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

uint64_t __68__CRKSynchronizeIDSFirewallOperation_operationToAddAllowedAppleIDs___block_invoke_32(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = *(a1 + 40);
  }

  return (*(v2 + 16))();
}

- (id)operationToRemoveAllowedAppleIDs:(id)ds
{
  dsCopy = ds;
  iDSPrimitives = [(CRKSynchronizeIDSFirewallOperation *)self IDSPrimitives];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__CRKSynchronizeIDSFirewallOperation_operationToRemoveAllowedAppleIDs___block_invoke;
  v10[3] = &unk_278DC1190;
  v11 = dsCopy;
  v12 = iDSPrimitives;
  v6 = iDSPrimitives;
  v7 = dsCopy;
  v8 = [CRKBlockOperation blockOperationWithBlock:v10];

  return v8;
}

void __71__CRKSynchronizeIDSFirewallOperation_operationToRemoveAllowedAppleIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) count])
  {
    v7 = _CRKLogASM_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) crk_stableDescription];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ from IDS firewall.", buf, 0xCu);
    }

    v11 = a1 + 32;
    v9 = *(a1 + 32);
    v10 = *(v11 + 8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__CRKSynchronizeIDSFirewallOperation_operationToRemoveAllowedAppleIDs___block_invoke_34;
    v12[3] = &unk_278DC1168;
    v13 = v6;
    v14 = v5;
    [v10 removeAllowedAppleIDsFromFirewall:v9 completion:v12];
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

uint64_t __71__CRKSynchronizeIDSFirewallOperation_operationToRemoveAllowedAppleIDs___block_invoke_34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = *(a1 + 40);
  }

  return (*(v2 + 16))();
}

- (void)operationToFetchAppleIDsDidFinish:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKSynchronizeIDSFirewallOperation operationToFetchAppleIDsDidFinish:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CRKSynchronizeIDSFirewallOperation.m" lineNumber:113 description:{@"expected %@, got %@", v2, v4}];
}

- (void)finishWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_1();
  [v2 handleFailureInMethod:v1 object:? file:? lineNumber:? description:?];
}

@end