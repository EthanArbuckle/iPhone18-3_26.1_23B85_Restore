@interface CATTaskServer
- (BOOL)delegateClientSession:(id)session shouldConnectWithTransport:(id)transport;
- (BOOL)session:(id)session shouldAcceptConnectionFromTransport:(id)transport;
- (CATTaskServer)init;
- (CATTaskServerDelegate)delegate;
- (id)session:(id)session prepareOperationForRequest:(id)request error:(id *)error;
- (void)allSessionsDidInvalidate;
- (void)connectWithClientTransport:(id)transport;
- (void)dealloc;
- (void)delegateClientSession:(id)session didInterruptWithError:(id)error;
- (void)delegateClientSession:(id)session didReceiveNotificationWithName:(id)name userInfo:(id)info;
- (void)delegateClientSessionDidConnect:(id)connect;
- (void)delegateClientSessionDidDisconnect:(id)disconnect;
- (void)delegateDidInvalidate;
- (void)delegateDidInvalidateAndFinalize;
- (void)delegateSessionDidInvalidate:(id)invalidate;
- (void)disconnectAllClientSessions;
- (void)invalidateAllClientSessions;
- (void)invalidateWithError:(id)error;
- (void)makeSessionWithClientTransport:(id)transport;
- (void)postNotificationWithName:(id)name userInfo:(id)info;
- (void)session:(id)session didInterruptWithError:(id)error;
- (void)session:(id)session didReceiveNotificationWithName:(id)name userInfo:(id)info;
- (void)session:(id)session enqueueOperation:(id)operation;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)sessionDidInvalidate:(id)invalidate;
- (void)sessionWillInvalidate:(id)invalidate;
- (void)setUserInfo:(id)info;
- (void)startInvalidatingWithError:(id)error;
@end

@implementation CATTaskServer

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CATTaskServer.m" lineNumber:38 description:{@"%@ cannot dealloc while receiver is still valid.", a2}];
}

- (CATTaskServer)init
{
  v21.receiver = self;
  v21.super_class = CATTaskServer;
  v2 = [(CATTaskServer *)&v21 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mSessions = v2->mSessions;
    v2->mSessions = v3;

    v5 = objc_opt_new();
    mActiveSessionsByUUID = v2->mActiveSessionsByUUID;
    v2->mActiveSessionsByUUID = v5;

    v7 = objc_opt_new();
    mInvalidatingSessionsByUUID = v2->mInvalidatingSessionsByUUID;
    v2->mInvalidatingSessionsByUUID = v7;

    v9 = objc_opt_new();
    mConnectedSessionsByUUID = v2->mConnectedSessionsByUUID;
    v2->mConnectedSessionsByUUID = v9;

    v11 = dispatch_group_create();
    mAllSessionsDidInvalidateGroup = v2->mAllSessionsDidInvalidateGroup;
    v2->mAllSessionsDidInvalidateGroup = v11;

    v13 = [[CATStateMachine alloc] initWithTarget:v2];
    mFSM = v2->mFSM;
    v2->mFSM = v13;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v16 = [standardUserDefaults valueForKey:@"CATTaskLogLevel"];
    -[CATStateMachine setLogLevel:](v2->mFSM, "setLogLevel:", [v16 integerValue]);

    v17 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Running"];
    v18 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Invalidating"];
    v19 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Invalidated"];
    [v17 addTransitionToState:v18 triggeringEvent:@"invalidateWithError:"];
    [v17 addTransitionToState:0 triggeringEvent:@"connectWithClientTransport:" action:sel_makeSessionWithClientTransport_];
    [v18 setEnterAction:sel_startInvalidatingWithError_];
    [v18 addTransitionToState:0 triggeringEvent:@"invalidateWithError:"];
    [v18 addTransitionToState:v19 triggeringEvent:@"allSessionsDidInvalidate"];
    [v19 setEnterAction:sel_delegateDidInvalidateAndFinalize];
    [v19 addTransitionToState:0 triggeringEvent:@"invalidateWithError:"];
    [(CATStateMachine *)v2->mFSM start];
  }

  return v2;
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy copy];
  userInfo = self->_userInfo;
  self->_userInfo = v5;

  v7 = [(NSMutableSet *)self->mSessions copy];
  [v7 setValue:infoCopy forKey:@"userInfo"];
}

- (void)postNotificationWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__CATTaskServer_postNotificationWithName_userInfo___block_invoke;
  v13[3] = &unk_278DA7280;
  v13[4] = self;
  v14 = nameCopy;
  v15 = infoCopy;
  v8 = v13;
  v9 = infoCopy;
  v10 = nameCopy;
  v11 = CATGetCatalystQueue();
  v12 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_15;
  block[3] = &unk_278DA7208;
  v17 = v12;
  dispatch_async(v11, block);
}

void __51__CATTaskServer_postNotificationWithName_userInfo___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1[4] + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) postNotificationWithName:a1[5] userInfo:{a1[6], v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectWithClientTransport:(id)transport
{
  transportCopy = transport;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__CATTaskServer_connectWithClientTransport___block_invoke;
  v10[3] = &unk_278DA75F8;
  v11 = transportCopy;
  v12 = a2;
  v10[4] = self;
  v6 = v10;
  v7 = transportCopy;
  v8 = CATGetCatalystQueue();
  v9 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_15;
  block[3] = &unk_278DA7208;
  v14 = v9;
  dispatch_async(v8, block);
}

void __44__CATTaskServer_connectWithClientTransport___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = NSStringFromSelector(*(a1 + 48));
  v3 = [CATStateMachineEvent eventWithTrigger:v4 context:*(a1 + 40)];
  [v2 transitionWithTriggeringEvent:v3];
}

- (void)makeSessionWithClientTransport:(id)transport
{
  transportCopy = transport;
  dispatch_group_enter(self->mAllSessionsDidInvalidateGroup);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__CATTaskServer_makeSessionWithClientTransport___block_invoke;
  v9[3] = &unk_278DA7470;
  v9[4] = self;
  v10 = transportCopy;
  v5 = v9;
  v6 = transportCopy;
  v7 = CATGetCatalystQueue();
  v8 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_15;
  block[3] = &unk_278DA7208;
  v12 = v8;
  dispatch_async(v7, block);
}

void __48__CATTaskServer_makeSessionWithClientTransport___block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  [*(*(a1 + 32) + 16) addObject:v3];
  [v3 setDelegate:*(a1 + 32)];
  v2 = [*(a1 + 32) userInfo];
  [v3 setUserInfo:v2];

  [v3 connectWithTransport:*(a1 + 40)];
}

- (void)invalidateAllClientSessions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__CATTaskServer_invalidateAllClientSessions__block_invoke;
  v4[3] = &unk_278DA72D0;
  v4[4] = self;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_15;
  block[3] = &unk_278DA7208;
  v6 = v2;
  dispatch_async(v3, block);
}

- (void)disconnectAllClientSessions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__CATTaskServer_disconnectAllClientSessions__block_invoke;
  v4[3] = &unk_278DA72D0;
  v4[4] = self;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_15;
  block[3] = &unk_278DA7208;
  v6 = v2;
  dispatch_async(v3, block);
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__CATTaskServer_invalidateWithError___block_invoke;
  v10[3] = &unk_278DA75F8;
  v11 = errorCopy;
  v12 = a2;
  v10[4] = self;
  v6 = v10;
  v7 = errorCopy;
  v8 = CATGetCatalystQueue();
  v9 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_15;
  block[3] = &unk_278DA7208;
  v14 = v9;
  dispatch_async(v8, block);
}

void __37__CATTaskServer_invalidateWithError___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = NSStringFromSelector(*(a1 + 48));
  v3 = [CATStateMachineEvent eventWithTrigger:v4 context:*(a1 + 40)];
  [v2 transitionWithTriggeringEvent:v3];
}

- (void)startInvalidatingWithError:(id)error
{
  errorCopy = error;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  objc_storeStrong(&self->mStrongSelf, self);
  [(NSMutableSet *)self->mSessions makeObjectsPerformSelector:sel_invalidateWithError_ withObject:errorCopy];

  mAllSessionsDidInvalidateGroup = self->mAllSessionsDidInvalidateGroup;
  v7 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CATTaskServer_startInvalidatingWithError___block_invoke;
  block[3] = &unk_278DA72D0;
  block[4] = self;
  dispatch_group_notify(mAllSessionsDidInvalidateGroup, v7, block);
}

- (void)allSessionsDidInvalidate
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mFSM = self->mFSM;
  v7 = NSStringFromSelector(a2);
  v6 = [CATStateMachineEvent eventWithTrigger:v7 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v6];
}

- (void)delegateDidInvalidateAndFinalize
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CATTaskServer.m" lineNumber:190 description:{@"%@ cannot call %@ when it has not created a strong reference to self", a2, v4}];
}

void __49__CATTaskServer_delegateDidInvalidateAndFinalize__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[6];
    WeakRetained[6] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (BOOL)session:(id)session shouldAcceptConnectionFromTransport:(id)transport
{
  sessionCopy = session;
  transportCopy = transport;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  sessionUUID = [sessionCopy sessionUUID];
  if (sessionUUID)
  {
    v10 = sessionUUID;
    mActiveSessionsByUUID = self->mActiveSessionsByUUID;
    sessionUUID2 = [sessionCopy sessionUUID];
    v13 = [(NSMutableDictionary *)mActiveSessionsByUUID objectForKeyedSubscript:sessionUUID2];

    if (v13 && [(CATTaskServer *)self delegateClientSession:v13 shouldConnectWithTransport:transportCopy])
    {
      [v13 connectWithTransportFromTaskSession:sessionCopy];
LABEL_8:
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  [sessionCopy setSessionUUID:uUID];

  if (![(CATTaskServer *)self delegateClientSession:sessionCopy shouldConnectWithTransport:transportCopy])
  {
    goto LABEL_8;
  }

  v15 = self->mActiveSessionsByUUID;
  sessionUUID3 = [sessionCopy sessionUUID];
  [(NSMutableDictionary *)v15 setObject:sessionCopy forKeyedSubscript:sessionUUID3];

  v17 = 1;
LABEL_9:

  return v17;
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mConnectedSessionsByUUID = self->mConnectedSessionsByUUID;
  sessionUUID = [connectCopy sessionUUID];
  [(NSMutableDictionary *)mConnectedSessionsByUUID setObject:connectCopy forKeyedSubscript:sessionUUID];

  [(CATTaskServer *)self delegateClientSessionDidConnect:connectCopy];
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mConnectedSessionsByUUID = self->mConnectedSessionsByUUID;
  sessionUUID = [disconnectCopy sessionUUID];
  v7 = [(NSMutableDictionary *)mConnectedSessionsByUUID objectForKeyedSubscript:sessionUUID];

  if (v7 == disconnectCopy)
  {
    v8 = self->mConnectedSessionsByUUID;
    sessionUUID2 = [disconnectCopy sessionUUID];
    [(NSMutableDictionary *)v8 removeObjectForKey:sessionUUID2];
  }

  [(CATTaskServer *)self delegateClientSessionDidDisconnect:disconnectCopy];
}

- (void)session:(id)session didInterruptWithError:(id)error
{
  errorCopy = error;
  sessionCopy = session;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  [(CATTaskServer *)self delegateClientSession:sessionCopy didInterruptWithError:errorCopy];
}

- (void)sessionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  sessionUUID = [invalidateCopy sessionUUID];
  if (sessionUUID)
  {
    v6 = [(NSMutableDictionary *)self->mActiveSessionsByUUID objectForKeyedSubscript:sessionUUID];

    if (v6 == invalidateCopy)
    {
      [(NSMutableDictionary *)self->mActiveSessionsByUUID removeObjectForKey:sessionUUID];
      [(NSMutableDictionary *)self->mInvalidatingSessionsByUUID setObject:invalidateCopy forKeyedSubscript:sessionUUID];
    }
  }
}

- (void)sessionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  sessionUUID = [invalidateCopy sessionUUID];
  if (sessionUUID)
  {
    v6 = [(NSMutableDictionary *)self->mInvalidatingSessionsByUUID objectForKeyedSubscript:sessionUUID];

    v7 = invalidateCopy;
    if (v6 == invalidateCopy)
    {
      [(NSMutableDictionary *)self->mInvalidatingSessionsByUUID removeObjectForKey:sessionUUID];
      v7 = invalidateCopy;
    }

    [(CATTaskServer *)self delegateSessionDidInvalidate:v7];
  }

  [(NSMutableSet *)self->mSessions removeObject:invalidateCopy];
  dispatch_group_leave(self->mAllSessionsDidInvalidateGroup);
}

- (void)session:(id)session didReceiveNotificationWithName:(id)name userInfo:(id)info
{
  infoCopy = info;
  nameCopy = name;
  sessionCopy = session;
  v10 = CATGetCatalystQueue();
  CATAssertIsQueue(v10);

  [(CATTaskServer *)self delegateClientSession:sessionCopy didReceiveNotificationWithName:nameCopy userInfo:infoCopy];
}

- (id)session:(id)session prepareOperationForRequest:(id)request error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  requestCopy = request;
  v11 = CATGetCatalystQueue();
  CATAssertIsQueue(v11);

  if (!requestCopy)
  {
    [CATTaskServer session:a2 prepareOperationForRequest:self error:?];
  }

  delegate = [(CATTaskServer *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CATTaskServer *)self delegate];
    error = [delegate2 server:self clientSession:sessionCopy operationForRequest:requestCopy error:error];

    goto LABEL_10;
  }

  if (_CATLogGeneral_onceToken_15 != -1)
  {
    [CATTaskServer session:prepareOperationForRequest:error:];
  }

  v15 = _CATLogGeneral_logObj_15;
  if (!os_log_type_enabled(_CATLogGeneral_logObj_15, OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = v15;
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  delegate3 = [(CATTaskServer *)self delegate];
  v25 = NSStringFromSelector(sel_server_clientSession_operationForRequest_error_);
  *buf = 138412802;
  v29 = v23;
  v30 = 2112;
  v31 = delegate3;
  v32 = 2112;
  v33 = v25;
  _os_log_error_impl(&dword_24329F000, v21, OS_LOG_TYPE_ERROR, "Dropping message (%@) because delegate (%@) does not implement %@", buf, 0x20u);

  if (error)
  {
LABEL_9:
    v26 = @"kCATErrorRequestNameKey";
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v27 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = CATErrorWithCodeAndUserInfo(400, v18);

    error = 0;
  }

LABEL_10:

  v19 = *MEMORY[0x277D85DE8];

  return error;
}

- (void)session:(id)session enqueueOperation:(id)operation
{
  sessionCopy = session;
  operationCopy = operation;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  delegate = [(CATTaskServer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CATTaskServer *)self delegate];
    [delegate2 server:self clientSession:sessionCopy enqueueOperation:operationCopy];
  }

  else
  {
    mOrphanedOperationQueue = self->mOrphanedOperationQueue;
    if (!mOrphanedOperationQueue)
    {
      v12 = objc_opt_new();
      v13 = self->mOrphanedOperationQueue;
      self->mOrphanedOperationQueue = v12;

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p.orphaned", objc_opt_class(), self];
      [(CATOperationQueue *)self->mOrphanedOperationQueue setName:v14];

      [(CATOperationQueue *)self->mOrphanedOperationQueue setMaxConcurrentOperationCount:0x7FFFFFFFFFFFFFFFLL];
      mOrphanedOperationQueue = self->mOrphanedOperationQueue;
    }

    [(CATOperationQueue *)mOrphanedOperationQueue addOperation:operationCopy];
  }
}

- (BOOL)delegateClientSession:(id)session shouldConnectWithTransport:(id)transport
{
  sessionCopy = session;
  transportCopy = transport;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  delegate = [(CATTaskServer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CATTaskServer *)self delegate];
    v12 = [delegate2 server:self clientSession:sessionCopy shouldConnectWithTransport:transportCopy];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)delegateDidInvalidate
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  delegate = [(CATTaskServer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CATTaskServer *)self delegate];
    [delegate2 serverDidInvalidate:self];
  }
}

- (void)delegateClientSession:(id)session didInterruptWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  delegate = [(CATTaskServer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CATTaskServer *)self delegate];
    [delegate2 server:self clientSession:sessionCopy didInterruptWithError:errorCopy];
  }

  else
  {
    [sessionCopy invalidateWithError:errorCopy];
  }
}

- (void)delegateClientSessionDidConnect:(id)connect
{
  connectCopy = connect;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  delegate = [(CATTaskServer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CATTaskServer *)self delegate];
    [delegate2 server:self clientSessionDidConnect:connectCopy];
  }
}

- (void)delegateClientSessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  delegate = [(CATTaskServer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CATTaskServer *)self delegate];
    [delegate2 server:self clientSessionDidDisconnect:disconnectCopy];
  }
}

- (void)delegateSessionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  delegate = [(CATTaskServer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CATTaskServer *)self delegate];
    [delegate2 server:self clientSessionDidInvalidate:invalidateCopy];
  }
}

- (void)delegateClientSession:(id)session didReceiveNotificationWithName:(id)name userInfo:(id)info
{
  sessionCopy = session;
  nameCopy = name;
  infoCopy = info;
  v10 = CATGetCatalystQueue();
  CATAssertIsQueue(v10);

  delegate = [(CATTaskServer *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(CATTaskServer *)self delegate];
    [delegate2 server:self clientSession:sessionCopy didReceiveNotificationWithName:nameCopy userInfo:infoCopy];
  }
}

- (CATTaskServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)session:(uint64_t)a1 prepareOperationForRequest:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskServer.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

@end