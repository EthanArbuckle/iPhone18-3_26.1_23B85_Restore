@interface CRKStudentDaemonProxy
+ (id)studentDaemonProxy;
+ (void)fetchResourceFromURL:(id)l completion:(id)completion;
+ (void)setActiveStudentIdentifier:(id)identifier completion:(id)completion;
+ (void)studentDidAuthenticate:(id)authenticate completion:(id)completion;
- (CRKStudentDaemonProxy)initWithConnectionBuilder:(id)builder;
- (id)enqueuedOperationForRequest:(id)request;
- (id)operationForRequest:(id)request;
- (void)addObserver:(id)observer;
- (void)client:(id)client didInterruptWithError:(id)error;
- (void)client:(id)client didReceiveNotificationWithName:(id)name userInfo:(id)info;
- (void)clientDidConnect:(id)connect;
- (void)clientDidDisconnect:(id)disconnect;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)enqueueOperation:(id)operation;
- (void)removeObserver:(id)observer;
@end

@implementation CRKStudentDaemonProxy

- (CRKStudentDaemonProxy)initWithConnectionBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = CRKStudentDaemonProxy;
  v5 = [(CRKStudentDaemonProxy *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_new();
    mTaskClient = v5->mTaskClient;
    v5->mTaskClient = v6;

    [(CATTaskClient *)v5->mTaskClient setDelegate:v5];
    v8 = objc_opt_new();
    mOperationQueue = v5->mOperationQueue;
    v5->mOperationQueue = v8;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    mObservers = v5->mObservers;
    v5->mObservers = weakObjectsHashTable;

    v5->_maxConnectionAttempts = 5;
    v12 = MEMORY[0x245D3AAD0](builderCopy);
    connectionBuilder = v5->_connectionBuilder;
    v5->_connectionBuilder = v12;
  }

  return v5;
}

- (void)dealloc
{
  [(CATTaskClient *)self->mTaskClient invalidate];
  v3.receiver = self;
  v3.super_class = CRKStudentDaemonProxy;
  [(CRKStudentDaemonProxy *)&v3 dealloc];
}

- (void)connect
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)disconnect
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKStudentDaemonProxy addObserver:];
  }

  [(NSHashTable *)self->mObservers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKStudentDaemonProxy removeObserver:];
  }

  [(NSHashTable *)self->mObservers removeObject:observerCopy];
}

- (id)operationForRequest:(id)request
{
  requestCopy = request;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKStudentDaemonProxy operationForRequest:];
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  [CRKStudentDaemonProxy operationForRequest:];
LABEL_3:
  v5 = [(CATTaskClient *)self->mTaskClient prepareTaskOperationForRequest:requestCopy];

  return v5;
}

- (id)enqueuedOperationForRequest:(id)request
{
  requestCopy = request;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKStudentDaemonProxy enqueuedOperationForRequest:];
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  [CRKStudentDaemonProxy enqueuedOperationForRequest:];
LABEL_3:
  v5 = [(CRKStudentDaemonProxy *)self operationForRequest:requestCopy];
  [(CATOperationQueue *)self->mOperationQueue addOperation:v5];

  return v5;
}

- (void)enqueueOperation:(id)operation
{
  operationCopy = operation;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKStudentDaemonProxy enqueueOperation:];
  }

  v4 = operationCopy;
  if (!operationCopy)
  {
    [CRKStudentDaemonProxy enqueueOperation:];
    v4 = 0;
  }

  [(CATOperationQueue *)self->mOperationQueue addOperation:v4];
}

- (void)clientDidConnect:(id)connect
{
  v15 = *MEMORY[0x277D85DE8];
  [(CRKStudentDaemonProxy *)self setConnected:1];
  self->mConnecting = 0;
  self->mConnectionAttempt = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->mObservers allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 daemonProxyDidConnect:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)client:(id)client didInterruptWithError:(id)error
{
  clientCopy = client;
  errorCopy = error;
  if (_CRKLogGeneral_onceToken_10 != -1)
  {
    [CRKStudentDaemonProxy client:didInterruptWithError:];
  }

  v7 = _CRKLogGeneral_logObj_10;
  if (os_log_type_enabled(_CRKLogGeneral_logObj_10, OS_LOG_TYPE_ERROR))
  {
    [CRKStudentDaemonProxy client:v7 didInterruptWithError:errorCopy];
  }

  [clientCopy disconnect];
}

- (void)clientDidDisconnect:(id)disconnect
{
  v16 = *MEMORY[0x277D85DE8];
  [(CRKStudentDaemonProxy *)self setConnected:0];
  self->mConnecting = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSHashTable *)self->mObservers allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 daemonProxyDidDisconnect:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([(CRKStudentDaemonProxy *)self userExpectsReconnect])
  {
    mConnectionAttempt = self->mConnectionAttempt;
    if (mConnectionAttempt < [(CRKStudentDaemonProxy *)self maxConnectionAttempts])
    {
      [(CRKStudentDaemonProxy *)self performSelector:sel_connect withObject:0 afterDelay:0.5];
    }
  }
}

- (void)client:(id)client didReceiveNotificationWithName:(id)name userInfo:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  infoCopy = info;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allObjects = [(NSHashTable *)self->mObservers allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 daemonProxy:self didReceiveNotificationWithName:nameCopy userInfo:infoCopy];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

+ (void)setActiveStudentIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  studentDaemonProxy = [self studentDaemonProxy];
  [studentDaemonProxy setActiveStudentIdentifier:identifierCopy completion:completionCopy];
}

+ (void)studentDidAuthenticate:(id)authenticate completion:(id)completion
{
  completionCopy = completion;
  authenticateCopy = authenticate;
  studentDaemonProxy = [self studentDaemonProxy];
  [studentDaemonProxy studentDidAuthenticate:authenticateCopy completion:completionCopy];
}

+ (void)fetchResourceFromURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  studentDaemonProxy = [self studentDaemonProxy];
  [studentDaemonProxy fetchResourceFromURL:lCopy completion:completionCopy];
}

+ (id)studentDaemonProxy
{
  v2 = objc_opt_new();

  return v2;
}

- (void)addObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)removeObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)operationForRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)operationForRequest:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CRKStudentDaemonProxy.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

- (void)enqueuedOperationForRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)enqueuedOperationForRequest:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CRKStudentDaemonProxy.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

- (void)enqueueOperation:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)enqueueOperation:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CRKStudentDaemonProxy.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"operation"}];
}

- (void)client:(void *)a1 didInterruptWithError:(void *)a2 .cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 verboseDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_243550000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
}

@end