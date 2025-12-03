@interface CRKShareTargetBrowser
- (BOOL)isClientInvalidationError:(id)error;
- (CRKShareTargetBrowser)initWithDelegate:(id)delegate queue:(id)queue;
- (id)makeShareTargetsWithDictionaries:(id)dictionaries taskClient:(id)client;
- (void)acquireStudentActivityAssertion;
- (void)acquireStudentActivityAssertionOperationDidFail:(id)fail;
- (void)browseForInstructorTargetsOperationDidFail:(id)fail;
- (void)browseForStudentTargetsOperationDidFail:(id)fail;
- (void)client:(id)client didInterruptWithError:(id)error;
- (void)clientDidConnect:(id)connect;
- (void)connectToInstructord;
- (void)connectToStudentd;
- (void)dealloc;
- (void)delegateDidFindTargets:(id)targets;
- (void)delegateDidInterruptWithError:(id)error;
- (void)delegateDidRemoveTargets:(id)targets;
- (void)invalidateClient:(id)client;
- (void)resume;
- (void)startBrowsingForInstructorTargets;
- (void)startBrowsingForStudentTargets;
- (void)suspend;
- (void)taskOperation:(id)operation didPostNotificationWithName:(id)name userInfo:(id)info;
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

- (CRKShareTargetBrowser)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = queueCopy;
  if (delegateCopy)
  {
    if (queueCopy)
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
    objc_storeWeak(&v9->mDelegate, delegateCopy);
    objc_storeStrong(&v10->mDelegateQueue, queue);
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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
  studentClient = [(CRKShareTargetBrowser *)self studentClient];
  v4 = objc_opt_new();
  v5 = [studentClient prepareTaskOperationForRequest:v4];

  [v5 addTarget:self selector:sel_acquireStudentActivityAssertionOperationDidFail_ forOperationEvents:4];
  [(CATOperationQueue *)self->mOperationQueue addOperation:v5];
}

- (void)acquireStudentActivityAssertionOperationDidFail:(id)fail
{
  error = [fail error];
  if (![(CRKShareTargetBrowser *)self isClientInvalidationError:error])
  {
    v5 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CRKShareTargetBrowser acquireStudentActivityAssertionOperationDidFail:error];
    }

    [(CRKShareTargetBrowser *)self delegateDidInterruptWithError:error];
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

  studentClient = [(CRKShareTargetBrowser *)self studentClient];
  v5 = objc_opt_new();
  v6 = [studentClient prepareTaskOperationForRequest:v5];

  [v6 addTarget:self selector:sel_browseForStudentTargetsOperationDidFail_ forOperationEvents:4];
  [v6 setNotificationDelegate:self];
  [(CATOperationQueue *)self->mOperationQueue addOperation:v6];
}

- (void)browseForStudentTargetsOperationDidFail:(id)fail
{
  error = [fail error];
  if (![(CRKShareTargetBrowser *)self isClientInvalidationError:error])
  {
    v5 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CRKShareTargetBrowser browseForStudentTargetsOperationDidFail:error];
    }

    [(CRKShareTargetBrowser *)self delegateDidInterruptWithError:error];
  }
}

- (void)connectToInstructord
{
  OUTLINED_FUNCTION_1_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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

  instructorClient = [(CRKShareTargetBrowser *)self instructorClient];
  v5 = objc_opt_new();
  v6 = [instructorClient prepareTaskOperationForRequest:v5];

  [v6 addTarget:self selector:sel_browseForInstructorTargetsOperationDidFail_ forOperationEvents:4];
  [v6 setNotificationDelegate:self];
  [(CATOperationQueue *)self->mOperationQueue addOperation:v6];
}

- (void)browseForInstructorTargetsOperationDidFail:(id)fail
{
  error = [fail error];
  if (![(CRKShareTargetBrowser *)self isClientInvalidationError:error])
  {
    v5 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CRKShareTargetBrowser browseForInstructorTargetsOperationDidFail:error];
    }

    [(CRKShareTargetBrowser *)self delegateDidInterruptWithError:error];
  }
}

- (void)clientDidConnect:(id)connect
{
  connectCopy = connect;
  studentClient = [(CRKShareTargetBrowser *)self studentClient];

  if (studentClient == connectCopy)
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
    instructorClient = [(CRKShareTargetBrowser *)self instructorClient];

    if (instructorClient == connectCopy)
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

- (void)client:(id)client didInterruptWithError:(id)error
{
  clientCopy = client;
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CF9518]])
  {

    goto LABEL_6;
  }

  code = [errorCopy code];

  if (code != 302 || ([errorCopy userInfo], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"kCATErrorMessageNameKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"CATTaskMessageProgressUpdate"), v11, v10, (v12 & 1) == 0))
  {
LABEL_6:
    studentClient = [(CRKShareTargetBrowser *)self studentClient];

    if (studentClient == clientCopy)
    {
      v16 = _CRKLogGeneral_5();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CRKShareTargetBrowser client:errorCopy didInterruptWithError:?];
      }

      [(CRKShareTargetBrowser *)self tearDownStudentClient];
    }

    else
    {
      instructorClient = [(CRKShareTargetBrowser *)self instructorClient];

      if (instructorClient != clientCopy)
      {
        goto LABEL_15;
      }

      v15 = _CRKLogGeneral_5();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CRKShareTargetBrowser client:errorCopy didInterruptWithError:?];
      }

      [(CRKShareTargetBrowser *)self tearDownInstructorClient];
    }

    [(CRKShareTargetBrowser *)self delegateDidInterruptWithError:errorCopy];
  }

LABEL_15:
}

- (void)tearDownStudentClient
{
  studentClient = [(CRKShareTargetBrowser *)self studentClient];

  if (studentClient)
  {
    v4 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser is tearing down studentd task client", v7, 2u);
    }

    shareTargetCollector = [(CRKShareTargetBrowser *)self shareTargetCollector];
    [shareTargetCollector studentTargetsDidChange:MEMORY[0x277CBEBF8]];

    studentClient2 = [(CRKShareTargetBrowser *)self studentClient];
    [(CRKShareTargetBrowser *)self setStudentClient:0];
    [(CRKShareTargetBrowser *)self invalidateClient:studentClient2];
  }
}

- (void)tearDownInstructorClient
{
  instructorClient = [(CRKShareTargetBrowser *)self instructorClient];

  if (instructorClient)
  {
    v4 = _CRKLogGeneral_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "Classroom: Share target browser is tearing down instructord task client", v7, 2u);
    }

    shareTargetCollector = [(CRKShareTargetBrowser *)self shareTargetCollector];
    [shareTargetCollector instructorTargetsDidChange:MEMORY[0x277CBEBF8]];

    instructorClient2 = [(CRKShareTargetBrowser *)self instructorClient];
    [(CRKShareTargetBrowser *)self setInstructorClient:0];
    [(CRKShareTargetBrowser *)self invalidateClient:instructorClient2];
  }
}

- (void)invalidateClient:(id)client
{
  clientCopy = client;
  [clientCopy setDelegate:0];
  [clientCopy invalidate];
}

- (void)taskOperation:(id)operation didPostNotificationWithName:(id)name userInfo:(id)info
{
  operationCopy = operation;
  infoCopy = info;
  if ([name isEqualToString:@"CRKShareTargetsDidChangeNotificationName"])
  {
    client = [operationCopy client];
    v10 = [infoCopy objectForKeyedSubscript:@"ShareTargets"];
    v11 = [(CRKShareTargetBrowser *)self makeShareTargetsWithDictionaries:v10 taskClient:client];
    studentClient = [(CRKShareTargetBrowser *)self studentClient];

    if (client == studentClient)
    {
      shareTargetCollector = [(CRKShareTargetBrowser *)self shareTargetCollector];
      [shareTargetCollector studentTargetsDidChange:v11];
    }

    else
    {
      instructorClient = [(CRKShareTargetBrowser *)self instructorClient];

      if (client != instructorClient)
      {
LABEL_7:

        goto LABEL_8;
      }

      shareTargetCollector = [(CRKShareTargetBrowser *)self shareTargetCollector];
      [shareTargetCollector instructorTargetsDidChange:v11];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)makeShareTargetsWithDictionaries:(id)dictionaries taskClient:(id)client
{
  clientCopy = client;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CRKShareTargetBrowser_makeShareTargetsWithDictionaries_taskClient___block_invoke;
  v9[3] = &unk_278DC2420;
  v10 = clientCopy;
  v6 = clientCopy;
  v7 = [dictionaries crk_mapUsingBlock:v9];

  return v7;
}

CRKShareTarget *__69__CRKShareTargetBrowser_makeShareTargetsWithDictionaries_taskClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CRKShareTarget alloc] initWithDictionary:v3];

  [(CRKShareTarget *)v4 setTaskClient:*(a1 + 32)];

  return v4;
}

- (BOOL)isClientInvalidationError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CF9518]])
  {
    v5 = [errorCopy code] == 503;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)delegateDidInterruptWithError:(id)error
{
  errorCopy = error;
  mDelegateQueue = self->mDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CRKShareTargetBrowser_delegateDidInterruptWithError___block_invoke;
  v7[3] = &unk_278DC1320;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(mDelegateQueue, v7);
}

void __55__CRKShareTargetBrowser_delegateDidInterruptWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained shareTargetBrowser:*(a1 + 32) didInterruptWithError:*(a1 + 40)];
}

- (void)delegateDidFindTargets:(id)targets
{
  targetsCopy = targets;
  mDelegateQueue = self->mDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CRKShareTargetBrowser_delegateDidFindTargets___block_invoke;
  v7[3] = &unk_278DC1320;
  v7[4] = self;
  v8 = targetsCopy;
  v6 = targetsCopy;
  dispatch_async(mDelegateQueue, v7);
}

void __48__CRKShareTargetBrowser_delegateDidFindTargets___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained shareTargetBrowser:*(a1 + 32) didFindTargets:*(a1 + 40)];
}

- (void)delegateDidRemoveTargets:(id)targets
{
  targetsCopy = targets;
  mDelegateQueue = self->mDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CRKShareTargetBrowser_delegateDidRemoveTargets___block_invoke;
  v7[3] = &unk_278DC1320;
  v7[4] = self;
  v8 = targetsCopy;
  v6 = targetsCopy;
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