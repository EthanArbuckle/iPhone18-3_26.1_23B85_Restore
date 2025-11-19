@interface CATTaskSession
- (BOOL)delegateShouldAcceptConnection;
- (CATTaskSession)init;
- (CATTaskSessionDelegate)delegate;
- (NSString)description;
- (id)captureTransport;
- (id)delegatePrepareOperationWithRequest:(id)a3 error:(id *)a4;
- (void)abandonTransport;
- (void)acceptConnection;
- (void)captureTransport;
- (void)clearQueuedMessagesAndCancelAllOperationsWithError:(id)a3;
- (void)clientDidResumeWithMessage:(id)a3;
- (void)connectWithTransport:(id)a3;
- (void)connectWithTransportFromTaskSession:(id)a3;
- (void)dealloc;
- (void)delegateDidConnect;
- (void)delegateDidDisconnect;
- (void)delegateDidInterruptWithError:(id)a3;
- (void)delegateDidInvalidate;
- (void)delegateDidInvalidateAndFinalize;
- (void)delegateEnqueueOperation:(id)a3;
- (void)delegateWillInvalidate;
- (void)delegateWillInvalidateAndInvalidateSessionWithError:(id)a3;
- (void)delegatedidReceiveNotificationWithName:(id)a3;
- (void)didCompleteSendForMessage:(id)a3;
- (void)discardPreviousSessionInfo;
- (void)disconnect;
- (void)enqueueDelegateDidInterruptWithError:(id)a3;
- (void)enqueueMessage:(id)a3;
- (void)enqueueOperation:(id)a3;
- (void)evaluateConnectionWithResumeMessage:(id)a3;
- (void)invalidate;
- (void)invalidateWithError:(id)a3;
- (void)localOperationDidFinish:(id)a3;
- (void)operationDidFinish:(id)a3 remoteUUID:(id)a4;
- (void)operationDidIncrementProgress:(id)a3 remoteUUID:(id)a4;
- (void)postNotificationWithName:(id)a3 userInfo:(id)a4;
- (void)processCancelMessage:(id)a3;
- (void)processFetchProgressMessage:(id)a3;
- (void)processNotificationMessage:(id)a3;
- (void)processSessionMessage:(id)a3;
- (void)processStartMessage:(id)a3;
- (void)processTaskMessage:(id)a3;
- (void)rejectConnection;
- (void)restorePreviousSessionInfo;
- (void)resumeCapturedTransportFromTaskSession:(id)a3;
- (void)resumeTransport:(id)a3;
- (void)savePreviousSessionInfo;
- (void)sendMessage:(id)a3;
- (void)sendMessageThroughTransport:(id)a3;
- (void)sendResumedMessage;
- (void)sessionDidInvalidate;
- (void)taskOperation:(id)a3 didPostNotificationWithName:(id)a4 userInfo:(id)a5;
- (void)transport:(id)a3 didFailToSendMessage:(id)a4 error:(id)a5;
- (void)transport:(id)a3 didInterruptWithError:(id)a4;
- (void)transport:(id)a3 didReceiveMessage:(id)a4;
- (void)transportDidInvalidate:(id)a3;
@end

@implementation CATTaskSession

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (CATTaskSession)init
{
  v24.receiver = self;
  v24.super_class = CATTaskSession;
  v2 = [(CATTaskSession *)&v24 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mOperations = v2->mOperations;
    v2->mOperations = v3;

    v5 = objc_opt_new();
    mOperationByRemoteUUID = v2->mOperationByRemoteUUID;
    v2->mOperationByRemoteUUID = v5;

    v7 = objc_opt_new();
    mEnqueuedMessages = v2->mEnqueuedMessages;
    v2->mEnqueuedMessages = v7;

    v9 = dispatch_group_create();
    mSessionDidInvalidateGroup = v2->mSessionDidInvalidateGroup;
    v2->mSessionDidInvalidateGroup = v9;

    v11 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    mRemoteUUIDsByFinishedOperationProgressUpdates = v2->mRemoteUUIDsByFinishedOperationProgressUpdates;
    v2->mRemoteUUIDsByFinishedOperationProgressUpdates = v11;

    v13 = [[CATStateMachine alloc] initWithTarget:v2];
    mFSM = v2->mFSM;
    v2->mFSM = v13;

    v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v16 = [v15 valueForKey:@"CATTaskLogLevel"];
    -[CATStateMachine setLogLevel:](v2->mFSM, "setLogLevel:", [v16 integerValue]);

    v17 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Disconnected"];
    v18 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Connecting"];
    v19 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Negotiating"];
    v20 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Connected"];
    v21 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Invalidating"];
    v23 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Invalidated"];
    [v17 setEnterAction:?];
    [v17 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueMessage_];
    [v17 addTransitionToState:v18 triggeringEvent:@"connectWithTransport:" action:sel_resumeTransport_];
    [v17 addTransitionToState:v20 triggeringEvent:@"connectWithTransportFromTaskSession:" action:sel_resumeCapturedTransportFromTaskSession_];
    [v17 addTransitionToState:v21 triggeringEvent:@"invalidateWithError:" action:?];
    [v18 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueMessage_];
    [v18 addTransitionToState:v18 triggeringEvent:@"connectWithTransport:" action:sel_resumeTransport_];
    [v18 addTransitionToState:v20 triggeringEvent:@"connectWithTransportFromTaskSession:" action:sel_resumeCapturedTransportFromTaskSession_];
    [v18 addTransitionToState:v19 triggeringEvent:@"clientDidResumeWithMessage:"];
    [v18 addTransitionToState:v17 triggeringEvent:@"transportDidInvalidate:"];
    [v18 addTransitionToState:v21 triggeringEvent:@"invalidateWithError:" action:sel_clearQueuedMessagesAndCancelAllOperationsWithError_];
    [v19 setEnterAction:sel_evaluateConnectionWithResumeMessage_];
    [v19 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueMessage_];
    [v19 addTransitionToState:v18 triggeringEvent:@"connectWithTransport:" action:sel_resumeTransport_];
    [v19 addTransitionToState:v20 triggeringEvent:@"connectWithTransportFromTaskSession:" action:sel_resumeCapturedTransportFromTaskSession_];
    [v19 addTransitionToState:v19 triggeringEvent:@"clientDidResumeWithMessage:"];
    [v19 addTransitionToState:v20 triggeringEvent:@"acceptConnection" action:sel_sendResumedMessage];
    [v19 addTransitionToState:0 triggeringEvent:@"rejectConnection" action:sel_enqueueDelegateDidInterruptWithError_];
    [v19 addTransitionToState:v17 triggeringEvent:@"transportDidInvalidate:"];
    [v19 addTransitionToState:v21 triggeringEvent:@"invalidateWithError:" action:sel_clearQueuedMessagesAndCancelAllOperationsWithError_];
    [v20 setEnterAction:sel_delegateDidConnect];
    [v20 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_sendMessageThroughTransport_];
    [v20 addTransitionToState:0 triggeringEvent:@"processTaskMessage:"];
    [v20 addTransitionToState:0 triggeringEvent:@"processNotificationMessage:"];
    [v20 addTransitionToState:v18 triggeringEvent:@"connectWithTransport:" action:sel_resumeTransport_];
    [v20 addTransitionToState:v20 triggeringEvent:@"connectWithTransportFromTaskSession:" action:sel_resumeCapturedTransportFromTaskSession_];
    [v20 addTransitionToState:v19 triggeringEvent:@"clientDidResumeWithMessage:"];
    [v20 addTransitionToState:v17 triggeringEvent:?];
    [v20 addTransitionToState:v21 triggeringEvent:@"invalidateWithError:" action:sel_clearQueuedMessagesAndCancelAllOperationsWithError_];
    [v20 setExitAction:sel_delegateDidDisconnect];
    [v21 setEnterAction:sel_delegateWillInvalidateAndInvalidateSessionWithError_];
    [v21 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_didCompleteSendForMessage_];
    [v21 addTransitionToState:0 triggeringEvent:@"invalidateWithError:"];
    [v21 addTransitionToState:0 triggeringEvent:@"clientDidResumeWithMessage:"];
    [v21 addTransitionToState:0 triggeringEvent:@"rejectConnection"];
    [v21 addTransitionToState:0 triggeringEvent:@"transportDidInvalidate:" action:sel_abandonTransport];
    [v21 addTransitionToState:v23 triggeringEvent:@"sessionDidInvalidate"];
    [v23 setEnterAction:sel_delegateDidInvalidateAndFinalize];
    [v23 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_didCompleteSendForMessage_];
    [v23 addTransitionToState:0 triggeringEvent:@"invalidateWithError:"];
    [v23 addTransitionToState:0 triggeringEvent:@"clientDidResumeWithMessage:"];
    [v23 addTransitionToState:0 triggeringEvent:@"transportDidInvalidate:"];
    v2->mIsStarting = 1;
    [(CATStateMachine *)v2->mFSM start];
    v2->mIsStarting = 0;
  }

  return v2;
}

- (NSString)description
{
  mTransport = self->mTransport;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(CATStateMachine *)self->mFSM currentState];
  v7 = [v6 name];
  v8 = [(CATTaskSession *)self sessionUUID];
  v9 = [v8 UUIDString];
  v10 = v9;
  if (mTransport)
  {
    [v4 stringWithFormat:@"<%@: %p { state = %@, session = %@, transport = %@ }>", v5, self, v7, v9, self->mTransport];
  }

  else
  {
    [v4 stringWithFormat:@"<%@: %p { state = %@, session = %@ }>", v5, self, v7, v9, v13];
  }
  v11 = ;

  return v11;
}

- (void)postNotificationWithName:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  if (!v7)
  {
    [CATTaskSession postNotificationWithName:userInfo:];
  }

  v9 = [[CATNotificationMessage alloc] initWithName:v7 userInfo:v6];

  [(CATTaskSession *)self sendMessage:v9];
}

- (void)enqueueOperation:(id)a3
{
  v11 = a3;
  if (!v11)
  {
    [CATTaskSession enqueueOperation:];
  }

  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  [(NSMutableSet *)self->mOperations addObject:v11];
  dispatch_group_enter(self->mSessionDidInvalidateGroup);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = CATGetCatalystQueue();
    [v11 addTarget:self selector:sel_localOperationDidFinish_ forOperationEvents:6 delegateQueue:v5];
  }

  else
  {
    if (!self->mDelegationQueue)
    {
      v6 = objc_opt_new();
      mDelegationQueue = self->mDelegationQueue;
      self->mDelegationQueue = v6;

      v8 = CATGetCatalystQueue();
      [(CATOperationQueue *)self->mDelegationQueue setUnderlyingQueue:v8];

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p.delegation", objc_opt_class(), self];
      [(CATOperationQueue *)self->mDelegationQueue setName:v9];
    }

    v5 = [objc_alloc(MEMORY[0x277CCAA80]) initWithTarget:self selector:sel_localOperationDidFinish_ object:v11];
    v10 = [v5 invocation];
    [v10 retainArguments];

    [v5 addDependency:v11];
    [(CATOperationQueue *)self->mDelegationQueue addOperation:v5];
  }

  [(CATTaskSession *)self delegateEnqueueOperation:v11];
}

- (void)localOperationDidFinish:(id)a3
{
  v5 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(NSMutableSet *)self->mOperations containsObject:v5])
  {
    [(NSMutableSet *)self->mOperations removeObject:v5];
    dispatch_group_leave(self->mSessionDidInvalidateGroup);
  }
}

- (void)connectWithTransport:(id)a3
{
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)connectWithTransportFromTaskSession:(id)a3
{
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  if (!v5)
  {
    [CATTaskSession connectWithTransportFromTaskSession:];
  }

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)disconnect
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  mTransport = self->mTransport;

  [(CATTransport *)mTransport invalidate];
}

- (void)invalidate
{
  v3 = CATErrorWithCodeAndUserInfo(503, 0);
  [(CATTaskSession *)self invalidateWithError:v3];
}

- (void)invalidateWithError:(id)a3
{
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)clientDidResumeWithMessage:(id)a3
{
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)evaluateConnectionWithResumeMessage:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(CATTaskSession *)self savePreviousSessionInfo];
  v6 = [v4 sessionUUID];
  [(CATTaskSession *)self setSessionUUID:v6];

  v7 = [v4 clientUserInfo];

  [(CATTaskSession *)self setClientUserInfo:v7];
  if ([(CATTaskSession *)self delegateShouldAcceptConnection])
  {
    v8 = [(CATTaskSession *)self sessionUUID];

    if (!v8)
    {
      v9 = [MEMORY[0x277CCAD78] UUID];
      [(CATTaskSession *)self setSessionUUID:v9];
    }

    [(CATTaskSession *)self discardPreviousSessionInfo];

    [(CATTaskSession *)self acceptConnection];
  }

  else if (self->mTransport)
  {
    [(CATTaskSession *)self restorePreviousSessionInfo];

    [(CATTaskSession *)self rejectConnection];
  }
}

- (void)acceptConnection
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mFSM = self->mFSM;
  v7 = NSStringFromSelector(a2);
  v6 = [CATStateMachineEvent eventWithTrigger:v7 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v6];
}

- (void)rejectConnection
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mFSM = self->mFSM;
  v8 = NSStringFromSelector(a2);
  v6 = CATErrorWithCodeAndUserInfo(504, 0);
  v7 = [CATStateMachineEvent eventWithTrigger:v8 context:v6];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v7];
}

- (void)resumeCapturedTransportFromTaskSession:(id)a3
{
  v8 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = v8;
  if (!v8)
  {
    [CATTaskSession resumeCapturedTransportFromTaskSession:];
    v5 = 0;
  }

  if (self == v5)
  {
    [CATTaskSession resumeCapturedTransportFromTaskSession:];
    v5 = v8;
  }

  v6 = [(CATTaskSession *)v5 clientUserInfo];
  [(CATTaskSession *)self setClientUserInfo:v6];

  v7 = [(CATTaskSession *)v8 captureTransport];
  [(CATTaskSession *)self resumeTransport:v7];
  [(CATTaskSession *)self sendResumedMessage];
}

- (id)captureTransport
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mTransport = self->mTransport;
  if (!mTransport)
  {
    [(CATTaskSession *)a2 captureTransport:&self->mTransport];
    mTransport = v10;
  }

  v6 = mTransport;
  [(CATTransport *)v6 suspend];
  [(CATTransport *)v6 setDelegate:0];
  v7 = self->mTransport;
  self->mTransport = 0;

  [(CATTaskSession *)self restorePreviousSessionInfo];
  v8 = CATErrorWithCodeAndUserInfo(505, 0);
  [(CATTaskSession *)self invalidateWithError:v8];

  dispatch_group_leave(self->mSessionDidInvalidateGroup);

  return v6;
}

- (void)savePreviousSessionInfo
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)restorePreviousSessionInfo
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  mPreviousSessionInfo = self->mPreviousSessionInfo;
  if (mPreviousSessionInfo)
  {
    v5 = [(NSDictionary *)mPreviousSessionInfo objectForKeyedSubscript:@"_CATTaskSessionUUID"];
    [(CATTaskSession *)self setSessionUUID:v5];

    v6 = [(NSDictionary *)self->mPreviousSessionInfo objectForKeyedSubscript:@"_CATTaskSessionClientUserInfo"];
    [(CATTaskSession *)self setClientUserInfo:v6];
  }
}

- (void)discardPreviousSessionInfo
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  mPreviousSessionInfo = self->mPreviousSessionInfo;
  self->mPreviousSessionInfo = 0;
}

- (void)resumeTransport:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    [CATTaskSession resumeTransport:];
  }

  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = v7;
  if (self->mTransport != v7)
  {
    dispatch_group_enter(self->mSessionDidInvalidateGroup);
    [(CATTaskSession *)self abandonTransport];
    objc_storeStrong(&self->mTransport, a3);
    [(CATTransport *)self->mTransport setDelegate:self];
    [(CATTransport *)self->mTransport resume];
    v6 = v7;
  }
}

- (void)abandonTransport
{
  if (!self->mIsStarting)
  {
    v3 = CATGetCatalystQueue();
    CATAssertIsQueue(v3);

    mTransport = self->mTransport;
    if (mTransport)
    {
      v9 = mTransport;
      [(CATTransport *)self->mTransport setDelegate:0];
      v5 = self->mTransport;
      self->mTransport = 0;

      mOrphanedTransports = self->mOrphanedTransports;
      if (!mOrphanedTransports)
      {
        v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->mOrphanedTransports;
        self->mOrphanedTransports = v7;

        mOrphanedTransports = self->mOrphanedTransports;
      }

      [(NSHashTable *)mOrphanedTransports addObject:v9];
      [(CATTransport *)v9 invalidate];
      dispatch_group_leave(self->mSessionDidInvalidateGroup);
    }
  }
}

- (void)delegateWillInvalidateAndInvalidateSessionWithError:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(CATTaskSession *)self delegateWillInvalidate];
  objc_storeStrong(&self->mStrongSelf, self);
  if (self->mTransport)
  {
    v6 = [[CATSessionMessageDidInvalidate alloc] initWithError:v4];
    [(CATTaskSession *)self sendMessageThroughTransport:v6];
  }

  mSessionDidInvalidateGroup = self->mSessionDidInvalidateGroup;
  v8 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__CATTaskSession_delegateWillInvalidateAndInvalidateSessionWithError___block_invoke;
  block[3] = &unk_278DA72D0;
  block[4] = self;
  dispatch_group_notify(mSessionDidInvalidateGroup, v8, block);
}

- (void)sessionDidInvalidate
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mFSM = self->mFSM;
  v7 = NSStringFromSelector(a2);
  v6 = [CATStateMachineEvent eventWithTrigger:v7 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v6];
}

- (void)clearQueuedMessagesAndCancelAllOperationsWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [(NSMutableDictionary *)self->mOperationByRemoteUUID allValues];
  [v5 makeObjectsPerformSelector:sel_cancel];

  [(NSMutableSet *)self->mOperations makeObjectsPerformSelector:sel_cancel];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->mEnqueuedMessages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->mRemoteUUIDsByFinishedOperationProgressUpdates objectForKey:v11, v14];
        [(NSMapTable *)self->mRemoteUUIDsByFinishedOperationProgressUpdates removeObjectForKey:v11];
        if (v12)
        {
          [(NSMutableDictionary *)self->mOperationByRemoteUUID removeObjectForKey:v12];
          dispatch_group_leave(self->mSessionDidInvalidateGroup);
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->mEnqueuedMessages removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3
{
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)sendResumedMessage
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [CATSessionMessageResumed alloc];
  v5 = [(CATTaskSession *)self sessionUUID];
  v6 = [(CATSessionMessageResumed *)v4 initWithSessionUUID:v5];

  v7 = [(NSMutableDictionary *)self->mOperationByRemoteUUID allKeys];
  [(CATSessionMessageResumed *)v6 setPendingRemoteTaskUUIDs:v7];

  v8 = [(CATTaskSession *)self userInfo];
  [(CATSessionMessageResumed *)v6 setServerUserInfo:v8];

  [(CATTaskSession *)self sendMessageThroughTransport:v6];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->mEnqueuedMessages;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        [(CATTaskSession *)self sendMessageThroughTransport:*(*(&v15 + 1) + 8 * v13++), v15];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->mEnqueuedMessages removeAllObjects];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendMessageThroughTransport:(id)a3
{
  v6 = a3;
  if (!self->mTransport)
  {
    [(CATTaskSession *)a2 sendMessageThroughTransport:v6];
  }

  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(CATTransport *)self->mTransport sendMessage:v6];
}

- (void)enqueueMessage:(id)a3
{
  v5 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  [(NSMutableArray *)self->mEnqueuedMessages addObject:v5];
}

- (void)didCompleteSendForMessage:(id)a3
{
  v6 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CATTransport *)self->mTransport invalidate];
  }

  v5 = [(NSMapTable *)self->mRemoteUUIDsByFinishedOperationProgressUpdates objectForKey:v6];
  if (v5)
  {
    [(NSMapTable *)self->mRemoteUUIDsByFinishedOperationProgressUpdates removeObjectForKey:v6];
    [(NSMutableDictionary *)self->mOperationByRemoteUUID removeObjectForKey:v5];
    dispatch_group_leave(self->mSessionDidInvalidateGroup);
  }
}

- (void)delegateDidInvalidateAndFinalize
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATTaskSession *)self delegateDidInvalidate];
  if (self->mStrongSelf)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __50__CATTaskSession_delegateDidInvalidateAndFinalize__block_invoke;
    v4[3] = &unk_278DA7120;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x277D85CD0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __50__CATTaskSession_delegateDidInvalidateAndFinalize__block_invoke(uint64_t a1)
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

- (void)transport:(id)a3 didFailToSendMessage:(id)a4 error:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_CATLogGeneral_onceToken_16 != -1)
  {
    [CATTaskSession transport:didFailToSendMessage:error:];
  }

  v11 = _CATLogGeneral_logObj_16;
  if (os_log_type_enabled(_CATLogGeneral_logObj_16, OS_LOG_TYPE_ERROR))
  {
    v13 = 138543874;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_24329F000, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to send message %{public}@: %{public}@", &v13, 0x20u);
  }

  [(CATTaskSession *)self didCompleteSendForMessage:v9];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 didReceiveMessage:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = [v7 taskUUID];

      if (v8)
      {
        mOperationByRemoteUUID = self->mOperationByRemoteUUID;
        v10 = [v7 taskUUID];
        v11 = [(NSMutableDictionary *)mOperationByRemoteUUID objectForKeyedSubscript:v10];

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v13 = [v7 name];
        v14 = [v7 userInfo];
        if (isKindOfClass)
        {
          [v11 postNotificationWithName:v13 userInfo:v14];
        }

        else
        {
          [v11 processNotificationWithName:v13 userInfo:v14];
        }
      }

      else
      {
        [(CATTaskSession *)self processNotificationMessage:v7];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CATTaskSession *)self processTaskMessage:v5];
        goto LABEL_14;
      }

      v19 = @"kCATErrorMessageNameKey";
      v15 = objc_opt_class();
      v7 = NSStringFromClass(v15);
      v20[0] = v7;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = CATErrorWithCodeAndUserInfo(300, v16);
      [(CATTaskSession *)self delegateDidInterruptWithError:v17];
    }

    goto LABEL_14;
  }

  [(CATTaskSession *)self processSessionMessage:v5];
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 didInterruptWithError:(id)a4
{
  v6 = a4;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(CATTaskSession *)self delegateDidInterruptWithError:v6];
}

- (void)transportDidInvalidate:(id)a3
{
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  mFSM = self->mFSM;
  v8 = NSStringFromSelector(a2);
  v7 = [CATStateMachineEvent eventWithTrigger:v8 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v7];
}

- (void)taskOperation:(id)a3 didPostNotificationWithName:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_getAssociatedObject(v8, @"_CATTaskSessionOperationRemoteUUID");
  if (v11)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__CATTaskSession_taskOperation_didPostNotificationWithName_userInfo___block_invoke;
    v14[3] = &unk_278DA7A48;
    v15 = v8;
    v16 = v11;
    v17 = v9;
    v18 = v10;
    v19 = self;
    v12 = v14;
    v13 = CATGetCatalystQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __CATPerformBlock_block_invoke_16;
    block[3] = &unk_278DA7208;
    v21 = v12;
    dispatch_async(v13, block);
  }
}

void __69__CATTaskSession_taskOperation_didPostNotificationWithName_userInfo___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = [[CATNotificationMessage alloc] initWithTaskUUID:*(a1 + 40) name:*(a1 + 48) userInfo:*(a1 + 56)];
    [*(a1 + 64) sendMessage:v2];
  }
}

- (void)processSessionMessage:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = @"kCATErrorMessageNameKey";
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v19 = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v12 = CATErrorWithCodeAndUserInfo(300, v11);
      [(CATTaskSession *)self delegateDidInterruptWithError:v12];

LABEL_14:
      goto LABEL_15;
    }

    v6 = [v4 error];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = CATErrorWithCodeAndUserInfo(503, 0);
    }

    v10 = v8;

    v13 = [v10 domain];
    if ([v13 isEqualToString:@"Catalyst.error"])
    {
      v14 = [v10 code];

      if (v14 == 503)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v10;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v16 = CATErrorWithCodeAndUserInfo(503, v15);

    v10 = v16;
LABEL_13:
    [(CATTaskSession *)self delegateDidInterruptWithError:v10];
    goto LABEL_14;
  }

  [(CATTaskSession *)self clientDidResumeWithMessage:v4];
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)processTaskMessage:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  v7 = [v5 taskUUID];

  if (!v7)
  {
    v11 = CATErrorWithCodeAndUserInfo(301, 0);
    [(CATTaskSession *)self delegateDidInterruptWithError:v11];
LABEL_8:

    goto LABEL_9;
  }

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v10 = [CATStateMachineEvent eventWithTrigger:v9 context:0];
  LOBYTE(mFSM) = [(CATStateMachine *)mFSM canTransitionWithTriggeringEvent:v10];

  if ((mFSM & 1) == 0)
  {
    v20 = @"kCATErrorMessageNameKey";
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v21[0] = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = 302;
LABEL_7:
    v15 = CATErrorWithCodeAndUserInfo(v14, v13);
    [(CATTaskSession *)self delegateDidInterruptWithError:v15];

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CATTaskSession *)self processCancelMessage:v5];
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CATTaskSession *)self processFetchProgressMessage:v5];
      goto LABEL_9;
    }

    v18 = @"kCATErrorMessageNameKey";
    v17 = objc_opt_class();
    v11 = NSStringFromClass(v17);
    v19 = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = 300;
    goto LABEL_7;
  }

  [(CATTaskSession *)self processStartMessage:v5];
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)processStartMessage:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = [v4 request];

  if (v6)
  {
    v7 = [v4 request];
    v28 = 0;
    v8 = [(CATTaskSession *)self delegatePrepareOperationWithRequest:v7 error:&v28];
    v9 = v28;

    if (v8)
    {
      v10 = [v4 taskUUID];
      objc_setAssociatedObject(v8, @"_CATTaskSessionOperationRemoteUUID", v10, 0x303);
      v11 = [v8 notificationDelegate];

      if (!v11)
      {
        [v8 setNotificationDelegate:self];
      }

      [(NSMutableDictionary *)self->mOperationByRemoteUUID setObject:v8 forKeyedSubscript:v10];
      v12 = [v4 cat_assertion];
      [v8 cat_addAssertion:v12];

      dispatch_group_enter(self->mSessionDidInvalidateGroup);
      v13 = CATGetCatalystQueue();
      [v8 addTarget:self selector:sel_operationDidIncrementProgress_remoteUUID_ forOperationEvents:8 userInfo:v10 delegateQueue:v13];

      v14 = CATGetCatalystQueue();
      [v8 addTarget:self selector:sel_operationDidFinish_remoteUUID_ forOperationEvents:6 userInfo:v10 delegateQueue:v14];

      v15 = [[CATMutableTaskProgress alloc] initWithOperationUUID:v10];
      [(CATTaskProgress *)v15 setPhase:0];
      v16 = [[CATTaskMessageProgressUpdate alloc] initWithTaskUUID:v10 progress:v15];
      [(CATTaskSession *)self sendMessage:v16];
      [(CATTaskSession *)self delegateEnqueueOperation:v8];
    }

    else
    {
      if (!v9)
      {
        v29 = @"kCATErrorRequestNameKey";
        v21 = [v4 request];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v30[0] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        v9 = CATErrorWithCodeAndUserInfo(403, v24);
      }

      v25 = [CATTaskMessageError alloc];
      v26 = [v4 taskUUID];
      v10 = [(CATTaskMessageError *)v25 initWithTaskUUID:v26 taskError:v9];

      [(CATTaskSession *)self sendMessage:v10];
    }
  }

  else
  {
    v17 = CATErrorWithCodeAndUserInfo(403, 0);
    v18 = [CATTaskMessageError alloc];
    v19 = [v4 taskUUID];
    v20 = [(CATTaskMessageError *)v18 initWithTaskUUID:v19 taskError:v17];

    [(CATTaskSession *)self sendMessage:v20];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)operationDidIncrementProgress:(id)a3 remoteUUID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  if (self->mTransport)
  {
    v8 = -[CATTaskMessageIncrementalProgress initWithTaskUUID:completedUnitCount:totalUnitCount:]([CATTaskMessageIncrementalProgress alloc], "initWithTaskUUID:completedUnitCount:totalUnitCount:", v6, [v9 completedUnitCount], objc_msgSend(v9, "totalUnitCount"));
    [(CATTaskSession *)self sendMessageThroughTransport:v8];
  }
}

- (void)operationDidFinish:(id)a3 remoteUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  v11 = [CATTaskProgress progressForOperation:v7];
  v9 = [[CATTaskMessageProgressUpdate alloc] initWithTaskUUID:v6 progress:v11];
  [(NSMapTable *)self->mRemoteUUIDsByFinishedOperationProgressUpdates setObject:v6 forKey:v9];

  v10 = [v7 cat_assertions];

  [(CATMessage *)v9 setCat_assertion:v10];
  [(CATTaskSession *)self sendMessage:v9];
}

- (void)processCancelMessage:(id)a3
{
  v12 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mOperationByRemoteUUID = self->mOperationByRemoteUUID;
  v6 = [v12 taskUUID];
  v7 = [(NSMutableDictionary *)mOperationByRemoteUUID objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 cancel];
  }

  else
  {
    v8 = CATErrorWithCodeAndUserInfo(401, 0);
    v9 = [CATTaskMessageError alloc];
    v10 = [v12 taskUUID];
    v11 = [(CATTaskMessageError *)v9 initWithTaskUUID:v10 taskError:v8];

    [(CATTaskSession *)self sendMessage:v11];
  }
}

- (void)processFetchProgressMessage:(id)a3
{
  v14 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mOperationByRemoteUUID = self->mOperationByRemoteUUID;
  v6 = [v14 taskUUID];
  v7 = [(NSMutableDictionary *)mOperationByRemoteUUID objectForKeyedSubscript:v6];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 fetchProgress];
      goto LABEL_7;
    }

    v8 = [CATTaskProgress progressForOperation:v7];
    v12 = [CATTaskMessageProgressUpdate alloc];
    v10 = [v14 taskUUID];
    v11 = [(CATTaskMessageProgressUpdate *)v12 initWithTaskUUID:v10 progress:v8];
  }

  else
  {
    v8 = CATErrorWithCodeAndUserInfo(401, 0);
    v9 = [CATTaskMessageError alloc];
    v10 = [v14 taskUUID];
    v11 = [(CATTaskMessageError *)v9 initWithTaskUUID:v10 taskError:v8];
  }

  v13 = v11;

  [(CATTaskSession *)self sendMessage:v13];
LABEL_7:
}

- (void)processNotificationMessage:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  v7 = [v5 name];

  if (!v7)
  {
    v11 = CATErrorWithCodeAndUserInfo(301, 0);
    [(CATTaskSession *)self delegateDidInterruptWithError:v11];
LABEL_6:

    goto LABEL_7;
  }

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v10 = [CATStateMachineEvent eventWithTrigger:v9 context:0];
  LOBYTE(mFSM) = [(CATStateMachine *)mFSM canTransitionWithTriggeringEvent:v10];

  if ((mFSM & 1) == 0)
  {
    v16 = @"kCATErrorMessageNameKey";
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v17[0] = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = CATErrorWithCodeAndUserInfo(302, v13);
    [(CATTaskSession *)self delegateDidInterruptWithError:v14];

    goto LABEL_6;
  }

  [(CATTaskSession *)self delegatedidReceiveNotificationWithName:v5];
LABEL_7:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)delegatePrepareOperationWithRequest:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  v8 = [(CATTaskSession *)self delegate];

  if (v8)
  {
    v9 = [(CATTaskSession *)self delegate];
    a4 = [v9 session:self prepareOperationForRequest:v6 error:a4];
  }

  else if (a4)
  {
    v15 = @"kCATErrorRequestNameKey";
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a4 = CATErrorWithCodeAndUserInfo(403, v12);

    a4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return a4;
}

- (void)delegateEnqueueOperation:(id)a3
{
  v12 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [(CATTaskSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CATTaskSession *)self delegate];
    [v7 session:self enqueueOperation:v12];
  }

  else
  {
    mOrphanedOperationQueue = self->mOrphanedOperationQueue;
    if (!mOrphanedOperationQueue)
    {
      v9 = objc_opt_new();
      v10 = self->mOrphanedOperationQueue;
      self->mOrphanedOperationQueue = v9;

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p.orphaned", objc_opt_class(), self];
      [(CATOperationQueue *)self->mOrphanedOperationQueue setName:v11];

      [(CATOperationQueue *)self->mOrphanedOperationQueue setMaxConcurrentOperationCount:0x7FFFFFFFFFFFFFFFLL];
      mOrphanedOperationQueue = self->mOrphanedOperationQueue;
    }

    [(CATOperationQueue *)mOrphanedOperationQueue addOperation:v12];
  }
}

- (BOOL)delegateShouldAcceptConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTaskSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(CATTaskSession *)self delegate];
  v7 = [v6 session:self shouldAcceptConnectionFromTransport:self->mTransport];

  return v7;
}

- (void)delegatedidReceiveNotificationWithName:(id)a3
{
  v10 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [(CATTaskSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CATTaskSession *)self delegate];
    v8 = [v10 name];
    v9 = [v10 userInfo];
    [v7 session:self didReceiveNotificationWithName:v8 userInfo:v9];
  }
}

- (void)delegateDidConnect
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTaskSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTaskSession *)self delegate];
    [v6 sessionDidConnect:self];
  }
}

- (void)enqueueDelegateDidInterruptWithError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CATTaskSession_enqueueDelegateDidInterruptWithError___block_invoke;
  v8[3] = &unk_278DA7530;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = v8;
  v7 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_16;
  block[3] = &unk_278DA7208;
  v13 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __55__CATTaskSession_enqueueDelegateDidInterruptWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained delegateDidInterruptWithError:*(a1 + 32)];
}

- (void)delegateDidInterruptWithError:(id)a3
{
  v8 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [(CATTaskSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CATTaskSession *)self delegate];
    [v7 session:self didInterruptWithError:v8];
  }
}

- (void)delegateDidDisconnect
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTaskSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTaskSession *)self delegate];
    [v6 sessionDidDisconnect:self];
  }
}

- (void)delegateWillInvalidate
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTaskSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTaskSession *)self delegate];
    [v6 sessionWillInvalidate:self];
  }
}

- (void)delegateDidInvalidate
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTaskSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTaskSession *)self delegate];
    [v6 sessionDidInvalidate:self];
  }
}

- (CATTaskSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)postNotificationWithName:userInfo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"name" object:? file:? lineNumber:? description:?];
}

- (void)enqueueOperation:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"operation" object:? file:? lineNumber:? description:?];
}

- (void)connectWithTransportFromTaskSession:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"otherSession" object:? file:? lineNumber:? description:?];
}

- (void)resumeCapturedTransportFromTaskSession:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"otherSession" object:? file:? lineNumber:? description:?];
}

- (void)resumeCapturedTransportFromTaskSession:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)captureTransport
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(a1);
  [v8 handleFailureInMethod:a1 object:a2 file:@"CATTaskSession.m" lineNumber:308 description:{@"%@ cannot call %@ when there is no transport", a2, v9}];

  *a4 = *a3;
}

- (void)resumeTransport:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"transport" object:? file:? lineNumber:? description:?];
}

- (void)sendMessageThroughTransport:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(a1);
  [v7 handleFailureInMethod:a1 object:a2 file:@"CATTaskSession.m" lineNumber:489 description:{@"%@ cannot call %@ with %@ when there is no transport", a2, v6, a3}];
}

@end