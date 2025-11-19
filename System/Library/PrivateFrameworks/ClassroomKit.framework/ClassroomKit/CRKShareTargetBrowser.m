@interface CRKShareTargetBrowser
- (BOOL)isClientInvalidationError:(id)a3;
- (CRKShareTargetBrowser)initWithDelegate:(id)a3 queue:(id)a4;
- (id)makeShareTargetsWithDictionaries:(id)a3 taskClient:(id)a4;
- (void)acquireStudentActivityAssertion;
- (void)acquireStudentActivityAssertionOperationDidFail:(id)a3;
- (void)browseForInstructorTargetsOperationDidFail:(id)a3;
- (void)browseForStudentTargetsOperationDidFail:(id)a3;
- (void)client:(id)a3 didInterruptWithError:(id)a4;
- (void)clientDidConnect:(id)a3;
- (void)connectToInstructord;
- (void)connectToStudentd;
- (void)dealloc;
- (void)delegateDidFindTargets:(id)a3;
- (void)delegateDidInterruptWithError:(id)a3;
- (void)delegateDidRemoveTargets:(id)a3;
- (void)invalidateClient:(id)a3;
- (void)resume;
- (void)startBrowsingForInstructorTargets;
- (void)startBrowsingForStudentTargets;
- (void)suspend;
- (void)taskOperation:(id)a3 didPostNotificationWithName:(id)a4 userInfo:(id)a5;
- (void)tearDownInstructorClient;
- (void)tearDownStudentClient;
@end

@implementation CRKShareTargetBrowser

- (void)dealloc
{
  [(CRKShareTargetBrowser *)self invalidate];
  v3.receiver = self;
  v3.super_class = CRKShareTargetBrowser;
  [(CRKShareTargetBrowser *)&v3 dealloc];
}

- (CRKShareTargetBrowser)initWithDelegate:(id)a3 queue:(id)a4
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
    [CRKShareTargetBrowser initWithDelegate:queue:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CRKShareTargetBrowser initWithDelegate:queue:];
LABEL_3:
  v18.receiver = self;
  v18.super_class = CRKShareTargetBrowser;
  v9 = [(CRKShareTargetBrowser *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->mIsValid = 1;
    objc_storeWeak(&v9->mDelegate, v6);
    objc_storeStrong(&v10->mDelegateQueue, a4);
    v11 = objc_opt_new();
    mOperationQueue = v10->mOperationQueue;
    v10->mOperationQueue = v11;

    v13 = objc_opt_new();
    transportFactory = v10->_transportFactory;
    v10->_transportFactory = v13;

    v15 = objc_opt_new();
    shareTargetCollector = v10->_shareTargetCollector;
    v10->_shareTargetCollector = v15;

    [(CRKShareTargetCollector *)v10->_shareTargetCollector setDelegate:v10];
  }

  return v10;
}

- (void)resume
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)suspend
{
  self->mBrowsing = 0;
  [(CRKShareTargetBrowser *)self tearDownStudentClient];

  [(CRKShareTargetBrowser *)self tearDownInstructorClient];
}

- (void)connectToStudentd
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __42__CRKShareTargetBrowser_connectToStudentd__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) studentClient];

  if (v7 == v8)
  {
    if (v6)
    {
      v9 = [v6 domain];
      if ([v9 isEqualToString:@"ClassroomKit.error"])
      {
        v10 = [v6 code];

        if (v10 == 202)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v12 = _CRKLogGeneral_5();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __42__CRKShareTargetBrowser_connectToStudentd__block_invoke_cold_1(v6);
      }

      [*(a1 + 40) delegateDidInterruptWithError:v6];
    }

    else
    {
      v11 = [*(a1 + 40) studentClient];
      [v11 connectWithTransport:v5];
    }
  }

  else
  {
    [v5 invalidate];
  }

LABEL_12:
}

- (void)acquireStudentActivityAssertion
{
  v3 = [(CRKShareTargetBrowser *)self studentClient];
  v4 = objc_opt_new();
  v5 = [v3 prepareTaskOperationForRequest:v4];

  [v5 addTarget:self selector:sel_acquireStudentActivityAssertionOperationDidFail_ forOperationEvents:4];
  [(CATOperationQueue *)self->mOperationQueue addOperation:v5];
}

- (void)acquireStudentActivityAssertionOperationDidFail:(id)a3
{
  v4 = [a3 error];
  if (![(CRKShareTargetBrowser *)self isClientInvalidationError:v4])
  {
    v5 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CRKShareTargetBrowser acquireStudentActivityAssertionOperationDidFail:v4];
    }

    [(CRKShareTargetBrowser *)self delegateDidInterruptWithError:v4];
  }
}

- (void)startBrowsingForStudentTargets
{
  v3 = _CRKLogGeneral_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser starting to browse for student targets", v7, 2u);
  }

  v4 = [(CRKShareTargetBrowser *)self studentClient];
  v5 = objc_opt_new();
  v6 = [v4 prepareTaskOperationForRequest:v5];

  [v6 addTarget:self selector:sel_browseForStudentTargetsOperationDidFail_ forOperationEvents:4];
  [v6 setNotificationDelegate:self];
  [(CATOperationQueue *)self->mOperationQueue addOperation:v6];
}

- (void)browseForStudentTargetsOperationDidFail:(id)a3
{
  v4 = [a3 error];
  if (![(CRKShareTargetBrowser *)self isClientInvalidationError:v4])
  {
    v5 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CRKShareTargetBrowser browseForStudentTargetsOperationDidFail:v4];
    }

    [(CRKShareTargetBrowser *)self delegateDidInterruptWithError:v4];
  }
}

- (void)connectToInstructord
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __45__CRKShareTargetBrowser_connectToInstructord__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) instructorClient];

  if (v7 == v8)
  {
    if (v6)
    {
      v9 = [v6 domain];
      if ([v9 isEqualToString:@"ClassroomKit.error"])
      {
        v10 = [v6 code];

        if (v10 == 101)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v12 = _CRKLogGeneral_5();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __45__CRKShareTargetBrowser_connectToInstructord__block_invoke_cold_1(v6);
      }

      [*(a1 + 40) delegateDidInterruptWithError:v6];
    }

    else
    {
      v11 = [*(a1 + 40) instructorClient];
      [v11 connectWithTransport:v5];
    }
  }

  else
  {
    [v5 invalidate];
  }

LABEL_12:
}

- (void)startBrowsingForInstructorTargets
{
  v3 = _CRKLogGeneral_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser starting to browse for instructor targets", v7, 2u);
  }

  v4 = [(CRKShareTargetBrowser *)self instructorClient];
  v5 = objc_opt_new();
  v6 = [v4 prepareTaskOperationForRequest:v5];

  [v6 addTarget:self selector:sel_browseForInstructorTargetsOperationDidFail_ forOperationEvents:4];
  [v6 setNotificationDelegate:self];
  [(CATOperationQueue *)self->mOperationQueue addOperation:v6];
}

- (void)browseForInstructorTargetsOperationDidFail:(id)a3
{
  v4 = [a3 error];
  if (![(CRKShareTargetBrowser *)self isClientInvalidationError:v4])
  {
    v5 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CRKShareTargetBrowser browseForInstructorTargetsOperationDidFail:v4];
    }

    [(CRKShareTargetBrowser *)self delegateDidInterruptWithError:v4];
  }
}

- (void)clientDidConnect:(id)a3
{
  v4 = a3;
  v5 = [(CRKShareTargetBrowser *)self studentClient];

  if (v5 == v4)
  {
    v8 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser did connect to studentd", buf, 2u);
    }

    [(CRKShareTargetBrowser *)self acquireStudentActivityAssertion];
    [(CRKShareTargetBrowser *)self startBrowsingForStudentTargets];
  }

  else
  {
    v6 = [(CRKShareTargetBrowser *)self instructorClient];

    if (v6 == v4)
    {
      v7 = _CRKLogGeneral_5();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser did connect to instructord", v9, 2u);
      }

      [(CRKShareTargetBrowser *)self startBrowsingForInstructorTargets];
    }
  }
}

- (void)client:(id)a3 didInterruptWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  if (![v8 isEqualToString:*MEMORY[0x277CF9518]])
  {

    goto LABEL_6;
  }

  v9 = [v7 code];

  if (v9 != 302 || ([v7 userInfo], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"kCATErrorMessageNameKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"CATTaskMessageProgressUpdate"), v11, v10, (v12 & 1) == 0))
  {
LABEL_6:
    v13 = [(CRKShareTargetBrowser *)self studentClient];

    if (v13 == v6)
    {
      v16 = _CRKLogGeneral_5();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CRKShareTargetBrowser client:v7 didInterruptWithError:?];
      }

      [(CRKShareTargetBrowser *)self tearDownStudentClient];
    }

    else
    {
      v14 = [(CRKShareTargetBrowser *)self instructorClient];

      if (v14 != v6)
      {
        goto LABEL_15;
      }

      v15 = _CRKLogGeneral_5();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CRKShareTargetBrowser client:v7 didInterruptWithError:?];
      }

      [(CRKShareTargetBrowser *)self tearDownInstructorClient];
    }

    [(CRKShareTargetBrowser *)self delegateDidInterruptWithError:v7];
  }

LABEL_15:
}

- (void)tearDownStudentClient
{
  v3 = [(CRKShareTargetBrowser *)self studentClient];

  if (v3)
  {
    v4 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser is tearing down studentd task client", v7, 2u);
    }

    v5 = [(CRKShareTargetBrowser *)self shareTargetCollector];
    [v5 studentTargetsDidChange:MEMORY[0x277CBEBF8]];

    v6 = [(CRKShareTargetBrowser *)self studentClient];
    [(CRKShareTargetBrowser *)self setStudentClient:0];
    [(CRKShareTargetBrowser *)self invalidateClient:v6];
  }
}

- (void)tearDownInstructorClient
{
  v3 = [(CRKShareTargetBrowser *)self instructorClient];

  if (v3)
  {
    v4 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser is tearing down instructord task client", v7, 2u);
    }

    v5 = [(CRKShareTargetBrowser *)self shareTargetCollector];
    [v5 instructorTargetsDidChange:MEMORY[0x277CBEBF8]];

    v6 = [(CRKShareTargetBrowser *)self instructorClient];
    [(CRKShareTargetBrowser *)self setInstructorClient:0];
    [(CRKShareTargetBrowser *)self invalidateClient:v6];
  }
}

- (void)invalidateClient:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  [v3 invalidate];
}

- (void)taskOperation:(id)a3 didPostNotificationWithName:(id)a4 userInfo:(id)a5
{
  v15 = a3;
  v8 = a5;
  if ([a4 isEqualToString:@"CRKShareTargetsDidChangeNotificationName"])
  {
    v9 = [v15 client];
    v10 = [v8 objectForKeyedSubscript:@"ShareTargets"];
    v11 = [(CRKShareTargetBrowser *)self makeShareTargetsWithDictionaries:v10 taskClient:v9];
    v12 = [(CRKShareTargetBrowser *)self studentClient];

    if (v9 == v12)
    {
      v14 = [(CRKShareTargetBrowser *)self shareTargetCollector];
      [v14 studentTargetsDidChange:v11];
    }

    else
    {
      v13 = [(CRKShareTargetBrowser *)self instructorClient];

      if (v9 != v13)
      {
LABEL_7:

        goto LABEL_8;
      }

      v14 = [(CRKShareTargetBrowser *)self shareTargetCollector];
      [v14 instructorTargetsDidChange:v11];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)makeShareTargetsWithDictionaries:(id)a3 taskClient:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CRKShareTargetBrowser_makeShareTargetsWithDictionaries_taskClient___block_invoke;
  v9[3] = &unk_278DC2420;
  v10 = v5;
  v6 = v5;
  v7 = [a3 crk_mapUsingBlock:v9];

  return v7;
}

CRKShareTarget *__69__CRKShareTargetBrowser_makeShareTargetsWithDictionaries_taskClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CRKShareTarget alloc] initWithDictionary:v3];

  [(CRKShareTarget *)v4 setTaskClient:*(a1 + 32)];

  return v4;
}

- (BOOL)isClientInvalidationError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CF9518]])
  {
    v5 = [v3 code] == 503;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)delegateDidInterruptWithError:(id)a3
{
  v4 = a3;
  mDelegateQueue = self->mDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CRKShareTargetBrowser_delegateDidInterruptWithError___block_invoke;
  v7[3] = &unk_278DC1320;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mDelegateQueue, v7);
}

void __55__CRKShareTargetBrowser_delegateDidInterruptWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained shareTargetBrowser:*(a1 + 32) didInterruptWithError:*(a1 + 40)];
}

- (void)delegateDidFindTargets:(id)a3
{
  v4 = a3;
  mDelegateQueue = self->mDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CRKShareTargetBrowser_delegateDidFindTargets___block_invoke;
  v7[3] = &unk_278DC1320;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mDelegateQueue, v7);
}

void __48__CRKShareTargetBrowser_delegateDidFindTargets___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained shareTargetBrowser:*(a1 + 32) didFindTargets:*(a1 + 40)];
}

- (void)delegateDidRemoveTargets:(id)a3
{
  v4 = a3;
  mDelegateQueue = self->mDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CRKShareTargetBrowser_delegateDidRemoveTargets___block_invoke;
  v7[3] = &unk_278DC1320;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mDelegateQueue, v7);
}

void __50__CRKShareTargetBrowser_delegateDidRemoveTargets___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained shareTargetBrowser:*(a1 + 32) didRemoveTargets:*(a1 + 40)];
}

- (void)initWithDelegate:queue:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

void __42__CRKShareTargetBrowser_connectToStudentd__block_invoke_cold_1(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Share target browser failed to fetch studentd endpoint: %{public}@", v4, v5, v6, v7, v8);
}

- (void)acquireStudentActivityAssertionOperationDidFail:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Classroom: Share target browser student activity assertion failed: %{public}@", v4, v5, v6, v7, v8);
}

- (void)browseForStudentTargetsOperationDidFail:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Classroom: Share target browser failed to fetch student targets: %{public}@", v4, v5, v6, v7, v8);
}

void __45__CRKShareTargetBrowser_connectToInstructord__block_invoke_cold_1(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Classroom: Share target browser failed to fetch instructor transport: %{public}@", v4, v5, v6, v7, v8);
}

- (void)browseForInstructorTargetsOperationDidFail:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Classroom: Share target browser failed to fetch instructor targets: %{public}@", v4, v5, v6, v7, v8);
}

- (void)client:(void *)a1 didInterruptWithError:.cold.1(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Classroom: Share target browser instructor connection interrupted: %{public}@", v4, v5, v6, v7, v8);
}

- (void)client:(void *)a1 didInterruptWithError:.cold.2(void *a1)
{
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Classroom: Share target browser student connection interrupted: %{public}@", v4, v5, v6, v7, v8);
}

@end