@interface CATTaskClient
- (CATTaskClient)init;
- (CATTaskClientDelegate)delegate;
- (NSString)description;
- (id)captureTransport;
- (id)prepareTaskOperationForRequest:(id)request;
- (void)abandonTransport;
- (void)abandonTransportClearQueuedMessagesAndCancelAllOperationsWithError:(id)error;
- (void)activeOperationDidFinish:(id)finish;
- (void)captureTransport;
- (void)clearQueuedMessagesAndCancelAllOperationsWithError:(id)error;
- (void)connectWithTransport:(id)transport;
- (void)connectWithTransportFromTaskClient:(id)client;
- (void)dealloc;
- (void)delegateDidConnect;
- (void)delegateDidDisconnect;
- (void)delegateDidInterruptWithError:(id)error;
- (void)delegateDidInvalidate;
- (void)delegateDidInvalidateAndFinalize;
- (void)delegateWillInvalidate;
- (void)delegateWillInvalidateAndInvalidateSessionWithError:(id)error;
- (void)delegatedidReceiveNotificationWithName:(id)name userInfo:(id)info;
- (void)didPrepareTaskOperation:(id)operation;
- (void)disconnect;
- (void)enqueueMessage:(id)message;
- (void)enqueueTaskOperation:(id)operation;
- (void)invalidate;
- (void)invalidateWithError:(id)error;
- (void)postNotificationWithName:(id)name userInfo:(id)info;
- (void)processNotificationMessage:(id)message;
- (void)processSessionMessage:(id)message;
- (void)processTaskMessage:(id)message;
- (void)remoteTaskOperation:(id)operation preparedMessage:(id)message;
- (void)resumeCapturedTransportFromTaskClient:(id)client;
- (void)resumeSession;
- (void)resumeTransport:(id)transport;
- (void)resumeWithTaskUUIDs:(id)ds;
- (void)sendMessage:(id)message;
- (void)sendMessageThroughTransport:(id)transport;
- (void)sessionDidInvalidate;
- (void)sessionResumedWithTaskUUIDs:(id)ds;
- (void)taskOperationDidFailWithInvalidTaskClient:(id)client;
- (void)trackTaskOperation:(id)operation;
- (void)transport:(id)transport didFailToSendMessage:(id)message error:(id)error;
- (void)transport:(id)transport didInterruptWithError:(id)error;
- (void)transport:(id)transport didReceiveMessage:(id)message;
- (void)transport:(id)transport didSendMessage:(id)message;
- (void)transportDidInvalidate:(id)invalidate;
- (void)transportDidResume:(id)resume;
@end

@implementation CATTaskClient

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (CATTaskClient)init
{
  v22.receiver = self;
  v22.super_class = CATTaskClient;
  v2 = [(CATTaskClient *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:5];
    mRemoteTaskByUUID = v2->mRemoteTaskByUUID;
    v2->mRemoteTaskByUUID = v3;

    v5 = objc_opt_new();
    mEnqueuedMessages = v2->mEnqueuedMessages;
    v2->mEnqueuedMessages = v5;

    v7 = objc_opt_new();
    mEnqueuedTaskUUIDs = v2->mEnqueuedTaskUUIDs;
    v2->mEnqueuedTaskUUIDs = v7;

    v9 = dispatch_group_create();
    mSessionDidInvalidateGroup = v2->mSessionDidInvalidateGroup;
    v2->mSessionDidInvalidateGroup = v9;

    v11 = [[CATStateMachine alloc] initWithTarget:v2];
    mFSM = v2->mFSM;
    v2->mFSM = v11;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [standardUserDefaults valueForKey:@"CATTaskLogLevel"];
    -[CATStateMachine setLogLevel:](v2->mFSM, "setLogLevel:", [v14 integerValue]);

    v15 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Disconnected"];
    v16 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Connecting"];
    v21 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Negotiating"];
    v17 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Connected"];
    v18 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Invalidating"];
    v20 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Invalidated"];
    [v15 setEnterAction:?];
    [v15 addTransitionToState:0 triggeringEvent:? action:?];
    [v15 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueMessage_];
    [v15 addTransitionToState:v16 triggeringEvent:@"connectWithTransport:" action:sel_resumeTransport_];
    [v15 addTransitionToState:v16 triggeringEvent:@"connectWithTransportFromTaskClient:" action:sel_resumeCapturedTransportFromTaskClient_];
    [v15 addTransitionToState:v18 triggeringEvent:@"invalidateWithError:" action:?];
    [v16 addTransitionToState:0 triggeringEvent:@"didPrepareTaskOperation:" action:sel_enqueueTaskOperation_];
    [v16 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueMessage_];
    [v16 addTransitionToState:v16 triggeringEvent:@"connectWithTransport:" action:sel_resumeTransport_];
    [v16 addTransitionToState:v16 triggeringEvent:@"connectWithTransportFromTaskClient:" action:sel_resumeCapturedTransportFromTaskClient_];
    [v16 addTransitionToState:v21 triggeringEvent:@"transportDidResume:"];
    [v16 addTransitionToState:v15 triggeringEvent:@"transportDidInvalidate:"];
    [v16 addTransitionToState:v18 triggeringEvent:@"invalidateWithError:" action:sel_abandonTransportClearQueuedMessagesAndCancelAllOperationsWithError_];
    [v21 setEnterAction:sel_resumeSession];
    [v21 addTransitionToState:0 triggeringEvent:@"didPrepareTaskOperation:" action:sel_enqueueTaskOperation_];
    [v21 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueMessage_];
    [v21 addTransitionToState:v16 triggeringEvent:@"connectWithTransport:" action:sel_resumeTransport_];
    [v21 addTransitionToState:v16 triggeringEvent:@"connectWithTransportFromTaskClient:" action:sel_resumeCapturedTransportFromTaskClient_];
    [v21 addTransitionToState:v17 triggeringEvent:@"sessionResumedWithTaskUUIDs:" action:sel_resumeWithTaskUUIDs_];
    [v21 addTransitionToState:v15 triggeringEvent:@"transportDidInvalidate:"];
    [v21 addTransitionToState:v18 triggeringEvent:@"invalidateWithError:" action:sel_clearQueuedMessagesAndCancelAllOperationsWithError_];
    [v17 setEnterAction:sel_delegateDidConnect];
    [v17 addTransitionToState:0 triggeringEvent:@"didPrepareTaskOperation:" action:sel_trackTaskOperation_];
    [v17 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_sendMessageThroughTransport_];
    [v17 addTransitionToState:0 triggeringEvent:@"processTaskMessage:"];
    [v17 addTransitionToState:0 triggeringEvent:@"processNotificationMessage:"];
    [v17 addTransitionToState:0 triggeringEvent:@"sessionResumedWithTaskUUIDs:" action:sel_resumeWithTaskUUIDs_];
    [v17 addTransitionToState:v16 triggeringEvent:@"connectWithTransport:" action:sel_resumeTransport_];
    [v17 addTransitionToState:v16 triggeringEvent:@"connectWithTransportFromTaskClient:" action:sel_resumeCapturedTransportFromTaskClient_];
    [v17 addTransitionToState:v15 triggeringEvent:@"transportDidInvalidate:"];
    [v17 addTransitionToState:v18 triggeringEvent:@"invalidateWithError:" action:sel_clearQueuedMessagesAndCancelAllOperationsWithError_];
    [v17 setExitAction:sel_delegateDidDisconnect];
    [v18 setEnterAction:sel_delegateWillInvalidateAndInvalidateSessionWithError_];
    [v18 addTransitionToState:0 triggeringEvent:@"didPrepareTaskOperation:" action:sel_taskOperationDidFailWithInvalidTaskClient_];
    [v18 addTransitionToState:0 triggeringEvent:@"sendMessage:"];
    [v18 addTransitionToState:0 triggeringEvent:@"invalidateWithError:"];
    [v18 addTransitionToState:0 triggeringEvent:@"transportDidResume:"];
    [v18 addTransitionToState:0 triggeringEvent:@"sessionResumedWithTaskUUIDs:"];
    [v18 addTransitionToState:0 triggeringEvent:@"transportDidInvalidate:" action:sel_abandonTransport];
    [v18 addTransitionToState:v20 triggeringEvent:@"sessionDidInvalidate"];
    [v20 setEnterAction:sel_delegateDidInvalidateAndFinalize];
    [v20 addTransitionToState:0 triggeringEvent:@"didPrepareTaskOperation:" action:sel_taskOperationDidFailWithInvalidTaskClient_];
    [v20 addTransitionToState:0 triggeringEvent:@"sendMessage:"];
    [v20 addTransitionToState:0 triggeringEvent:@"invalidateWithError:"];
    [v20 addTransitionToState:0 triggeringEvent:@"sessionDidInvalidate"];
    [v20 addTransitionToState:0 triggeringEvent:@"transportDidInvalidate:"];
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
  currentState = [(CATStateMachine *)self->mFSM currentState];
  name = [currentState name];
  sessionUUID = [(CATTaskClient *)self sessionUUID];
  uUIDString = [sessionUUID UUIDString];
  v10 = uUIDString;
  if (mTransport)
  {
    [v4 stringWithFormat:@"<%@: %p { state = %@, session = %@, transport = %@ }>", v5, self, name, uUIDString, self->mTransport];
  }

  else
  {
    [v4 stringWithFormat:@"<%@: %p { state = %@, session = %@ }>", v5, self, name, uUIDString, v13];
  }
  v11 = ;

  return v11;
}

- (id)prepareTaskOperationForRequest:(id)request
{
  requestCopy = request;
  v5 = [[CATRemoteTaskOperation alloc] initWithRequest:requestCopy client:self];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__CATTaskClient_prepareTaskOperationForRequest___block_invoke;
  v13[3] = &unk_278DA7470;
  v13[4] = self;
  v6 = v5;
  v14 = v6;
  v7 = v13;
  v8 = CATGetCatalystQueue();
  v9 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_11;
  block[3] = &unk_278DA7208;
  v16 = v9;
  dispatch_async(v8, block);

  v10 = v14;
  v11 = v6;

  return v6;
}

- (void)postNotificationWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  if (!nameCopy)
  {
    [CATTaskClient postNotificationWithName:userInfo:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__CATTaskClient_postNotificationWithName_userInfo___block_invoke;
  v13[3] = &unk_278DA7280;
  v14 = nameCopy;
  v15 = infoCopy;
  selfCopy = self;
  v8 = v13;
  v9 = infoCopy;
  v10 = nameCopy;
  v11 = CATGetCatalystQueue();
  v12 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_11;
  block[3] = &unk_278DA7208;
  v18 = v12;
  dispatch_async(v11, block);
}

void __51__CATTaskClient_postNotificationWithName_userInfo___block_invoke(uint64_t a1)
{
  v2 = [[CATNotificationMessage alloc] initWithName:*(a1 + 32) userInfo:*(a1 + 40)];
  [*(a1 + 48) sendMessage:v2];
}

- (void)connectWithTransport:(id)transport
{
  transportCopy = transport;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__CATTaskClient_connectWithTransport___block_invoke;
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
  block[2] = __CATPerformBlock_block_invoke_11;
  block[3] = &unk_278DA7208;
  v14 = v9;
  dispatch_async(v8, block);
}

void __38__CATTaskClient_connectWithTransport___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = NSStringFromSelector(*(a1 + 48));
  v3 = [CATStateMachineEvent eventWithTrigger:v4 context:*(a1 + 40)];
  [v2 transitionWithTriggeringEvent:v3];
}

- (void)connectWithTransportFromTaskClient:(id)client
{
  clientCopy = client;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__CATTaskClient_connectWithTransportFromTaskClient___block_invoke;
  v10[3] = &unk_278DA75F8;
  v11 = clientCopy;
  v12 = a2;
  v10[4] = self;
  v6 = v10;
  v7 = clientCopy;
  v8 = CATGetCatalystQueue();
  v9 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_11;
  block[3] = &unk_278DA7208;
  v14 = v9;
  dispatch_async(v8, block);
}

void __52__CATTaskClient_connectWithTransportFromTaskClient___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = NSStringFromSelector(*(a1 + 48));
  v3 = [CATStateMachineEvent eventWithTrigger:v4 context:*(a1 + 40)];
  [v2 transitionWithTriggeringEvent:v3];
}

- (void)disconnect
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__CATTaskClient_disconnect__block_invoke;
  v4[3] = &unk_278DA72D0;
  v4[4] = self;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_11;
  block[3] = &unk_278DA7208;
  v6 = v2;
  dispatch_async(v3, block);
}

- (void)invalidate
{
  v3 = CATErrorWithCodeAndUserInfo(503, 0);
  [(CATTaskClient *)self invalidateWithError:v3];
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__CATTaskClient_invalidateWithError___block_invoke;
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
  block[2] = __CATPerformBlock_block_invoke_11;
  block[3] = &unk_278DA7208;
  v14 = v9;
  dispatch_async(v8, block);
}

void __37__CATTaskClient_invalidateWithError___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = NSStringFromSelector(*(a1 + 48));
  v3 = [CATStateMachineEvent eventWithTrigger:v4 context:*(a1 + 40)];
  [v2 transitionWithTriggeringEvent:v3];
}

- (void)didPrepareTaskOperation:(id)operation
{
  operationCopy = operation;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:operationCopy];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)enqueueTaskOperation:(id)operation
{
  operationCopy = operation;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mEnqueuedTaskUUIDs = self->mEnqueuedTaskUUIDs;
  uUID = [operationCopy UUID];
  [(NSMutableArray *)mEnqueuedTaskUUIDs addObject:uUID];

  [(CATTaskClient *)self trackTaskOperation:operationCopy];
}

- (void)trackTaskOperation:(id)operation
{
  operationCopy = operation;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  mRemoteTaskByUUID = self->mRemoteTaskByUUID;
  uUID = [operationCopy UUID];
  [(NSMapTable *)mRemoteTaskByUUID setObject:operationCopy forKey:uUID];
}

- (void)taskOperationDidFailWithInvalidTaskClient:(id)client
{
  clientCopy = client;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = CATErrorWithCodeAndUserInfo(501, 0);
  [clientCopy clientFailedWithError:v5];
}

- (void)resumeCapturedTransportFromTaskClient:(id)client
{
  clientCopy = client;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = clientCopy;
  if (!clientCopy)
  {
    [CATTaskClient resumeCapturedTransportFromTaskClient:];
    v5 = 0;
  }

  if (self == v5)
  {
    [CATTaskClient resumeCapturedTransportFromTaskClient:];
    v5 = clientCopy;
  }

  captureTransport = [(CATTaskClient *)v5 captureTransport];
  [(CATTaskClient *)self resumeTransport:captureTransport];
}

- (id)captureTransport
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mTransport = self->mTransport;
  if (!mTransport)
  {
    [(CATTaskClient *)a2 captureTransport:&self->mTransport];
    mTransport = v10;
  }

  v6 = mTransport;
  [(CATTransport *)v6 suspend];
  [(CATTransport *)v6 setDelegate:0];
  v7 = self->mTransport;
  self->mTransport = 0;

  v8 = CATErrorWithCodeAndUserInfo(505, 0);
  [(CATTaskClient *)self invalidateWithError:v8];

  dispatch_group_leave(self->mSessionDidInvalidateGroup);

  return v6;
}

- (void)resumeTransport:(id)transport
{
  transportCopy = transport;
  if (!transportCopy)
  {
    [CATTaskClient resumeTransport:];
  }

  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = transportCopy;
  if (self->mTransport != transportCopy)
  {
    dispatch_group_enter(self->mSessionDidInvalidateGroup);
    [(CATTaskClient *)self abandonTransport];
    objc_storeStrong(&self->mTransport, transport);
    [(CATTransport *)self->mTransport setDelegate:self];
    [(CATTransport *)self->mTransport resume];
    v6 = transportCopy;
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
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->mOrphanedTransports;
        self->mOrphanedTransports = weakObjectsHashTable;

        mOrphanedTransports = self->mOrphanedTransports;
      }

      [(NSHashTable *)mOrphanedTransports addObject:v9];
      [(CATTransport *)v9 invalidate];
      dispatch_group_leave(self->mSessionDidInvalidateGroup);
    }
  }
}

- (void)sessionResumedWithTaskUUIDs:(id)ds
{
  dsCopy = ds;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:dsCopy];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)resumeWithTaskUUIDs:(id)ds
{
  v36 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v25 = dsCopy;
  v6 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
  [v6 addObjectsFromArray:self->mEnqueuedTaskUUIDs];
  [(NSMutableArray *)self->mEnqueuedTaskUUIDs removeAllObjects];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->mEnqueuedMessages;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          taskUUID = [v12 taskUUID];
          v14 = [v6 containsObject:taskUUID];

          if (!v14)
          {
            continue;
          }
        }

        [(CATTaskClient *)self sendMessageThroughTransport:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  [(NSMutableArray *)self->mEnqueuedMessages removeAllObjects];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  objectEnumerator = [(NSMapTable *)self->mRemoteTaskByUUID objectEnumerator];
  v16 = [objectEnumerator countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        uUID = [v20 UUID];
        v22 = [v6 containsObject:uUID];

        if ((v22 & 1) == 0)
        {
          v23 = CATErrorWithCodeAndUserInfo(502, 0);
          [v20 clientFailedWithError:v23];
        }
      }

      v17 = [objectEnumerator countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)delegateWillInvalidateAndInvalidateSessionWithError:(id)error
{
  errorCopy = error;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(CATTaskClient *)self delegateWillInvalidate];
  objc_storeStrong(&self->mStrongSelf, self);
  if (self->mTransport)
  {
    v6 = [[CATSessionMessageInvalidate alloc] initWithError:errorCopy];
    [(CATTaskClient *)self sendMessageThroughTransport:v6];
  }

  mSessionDidInvalidateGroup = self->mSessionDidInvalidateGroup;
  v8 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CATTaskClient_delegateWillInvalidateAndInvalidateSessionWithError___block_invoke;
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

- (void)abandonTransportClearQueuedMessagesAndCancelAllOperationsWithError:(id)error
{
  errorCopy = error;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  [(CATTaskClient *)self abandonTransport];
  [(CATTaskClient *)self clearQueuedMessagesAndCancelAllOperationsWithError:errorCopy];
}

- (void)clearQueuedMessagesAndCancelAllOperationsWithError:(id)error
{
  errorCopy = error;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(NSMutableArray *)self->mEnqueuedTaskUUIDs removeAllObjects];
  [(NSMutableArray *)self->mEnqueuedMessages removeAllObjects];
  objectEnumerator = [(NSMapTable *)self->mRemoteTaskByUUID objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  [allObjects makeObjectsPerformSelector:sel_clientFailedWithError_ withObject:errorCopy];
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:messageCopy];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)resumeSession
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [CATSessionMessageResume alloc];
  sessionUUID = [(CATTaskClient *)self sessionUUID];
  v7 = [(CATSessionMessageResume *)v4 initWithSessionUUID:sessionUUID];

  userInfo = [(CATTaskClient *)self userInfo];
  [(CATSessionMessageResume *)v7 setClientUserInfo:userInfo];

  [(CATTaskClient *)self sendMessageThroughTransport:v7];
}

- (void)sendMessageThroughTransport:(id)transport
{
  transportCopy = transport;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  mTransport = self->mTransport;
  if (!mTransport)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"CATTaskClient.m" lineNumber:441 description:{@"%@ cannot call %@ with %@ when there is no transport", self, v8, transportCopy}];

    mTransport = self->mTransport;
  }

  [(CATTransport *)mTransport sendMessage:transportCopy];
}

- (void)enqueueMessage:(id)message
{
  messageCopy = message;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  [(NSMutableArray *)self->mEnqueuedMessages addObject:messageCopy];
}

- (void)delegateDidInvalidateAndFinalize
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATTaskClient *)self delegateDidInvalidate];
  if (self->mStrongSelf)
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__CATTaskClient_delegateDidInvalidateAndFinalize__block_invoke;
    v6[3] = &unk_278DA7120;
    objc_copyWeak(&v7, &location);
    v4 = v6;
    v5 = CATGetCatalystQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __CATPerformBlock_block_invoke_11;
    block[3] = &unk_278DA7208;
    v10 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __49__CATTaskClient_delegateDidInvalidateAndFinalize__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[8];
    WeakRetained[8] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)remoteTaskOperation:(id)operation preparedMessage:(id)message
{
  operationCopy = operation;
  messageCopy = message;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  mActiveRemoteTaskOperations = self->mActiveRemoteTaskOperations;
  if (!mActiveRemoteTaskOperations)
  {
    v9 = objc_opt_new();
    v10 = self->mActiveRemoteTaskOperations;
    self->mActiveRemoteTaskOperations = v9;

    mActiveRemoteTaskOperations = self->mActiveRemoteTaskOperations;
  }

  if (([(NSMutableSet *)mActiveRemoteTaskOperations containsObject:operationCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->mActiveRemoteTaskOperations addObject:operationCopy];
    dispatch_group_enter(self->mSessionDidInvalidateGroup);
    v11 = CATGetCatalystQueue();
    [operationCopy addTarget:self selector:sel_activeOperationDidFinish_ forOperationEvents:6 delegateQueue:v11];
  }

  [(CATTaskClient *)self sendMessage:messageCopy];
}

- (void)activeOperationDidFinish:(id)finish
{
  finishCopy = finish;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(NSMutableSet *)self->mActiveRemoteTaskOperations containsObject:finishCopy])
  {
    [(NSMutableSet *)self->mActiveRemoteTaskOperations removeObject:finishCopy];
    dispatch_group_leave(self->mSessionDidInvalidateGroup);
  }
}

- (void)transportDidResume:(id)resume
{
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  mFSM = self->mFSM;
  v8 = NSStringFromSelector(a2);
  v7 = [CATStateMachineEvent eventWithTrigger:v8 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v7];
}

- (void)transport:(id)transport didSendMessage:(id)message
{
  messageCopy = message;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    mTransport = self->mTransport;

    [(CATTransport *)mTransport invalidate];
  }
}

- (void)transport:(id)transport didFailToSendMessage:(id)message error:(id)error
{
  messageCopy = message;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  if (v7)
  {
    mTransport = self->mTransport;

    [(CATTransport *)mTransport invalidate];
  }
}

- (void)transport:(id)transport didReceiveMessage:(id)message
{
  v13[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CATTaskClient *)self processSessionMessage:messageCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CATTaskClient *)self processNotificationMessage:messageCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CATTaskClient *)self processTaskMessage:messageCopy];
      }

      else
      {
        v12 = @"kCATErrorMessageNameKey";
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v13[0] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        v10 = CATErrorWithCodeAndUserInfo(300, v9);
        [(CATTaskClient *)self delegateDidInterruptWithError:v10];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport didInterruptWithError:(id)error
{
  errorCopy = error;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(CATTaskClient *)self delegateDidInterruptWithError:errorCopy];
}

- (void)transportDidInvalidate:(id)invalidate
{
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  mFSM = self->mFSM;
  v8 = NSStringFromSelector(a2);
  v7 = [CATStateMachineEvent eventWithTrigger:v8 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v7];
}

- (void)processSessionMessage:(id)message
{
  v25[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = @"kCATErrorMessageNameKey";
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v23 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = CATErrorWithCodeAndUserInfo(300, v15);
      [(CATTaskClient *)self delegateDidInterruptWithError:v16];

LABEL_14:
      goto LABEL_15;
    }

    error = [messageCopy error];
    v11 = error;
    if (error)
    {
      v12 = error;
    }

    else
    {
      v12 = CATErrorWithCodeAndUserInfo(502, 0);
    }

    v14 = v12;

    domain = [v14 domain];
    if ([domain isEqualToString:@"Catalyst.error"])
    {
      code = [v14 code];

      if (code == 502)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v24 = *MEMORY[0x277CCA7E8];
    v25[0] = v14;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = CATErrorWithCodeAndUserInfo(502, v19);

    v14 = v20;
LABEL_13:
    [(CATTaskClient *)self delegateDidInterruptWithError:v14];
    goto LABEL_14;
  }

  v6 = messageCopy;
  sessionUUID = [v6 sessionUUID];
  [(CATTaskClient *)self setSessionUUID:sessionUUID];

  serverUserInfo = [v6 serverUserInfo];
  [(CATTaskClient *)self setServerUserInfo:serverUserInfo];

  pendingRemoteTaskUUIDs = [v6 pendingRemoteTaskUUIDs];

  [(CATTaskClient *)self sessionResumedWithTaskUUIDs:pendingRemoteTaskUUIDs];
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)processTaskMessage:(id)message
{
  v24[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  taskUUID = [messageCopy taskUUID];

  if (!taskUUID)
  {
    v17 = CATErrorWithCodeAndUserInfo(301, 0);
    [(CATTaskClient *)self delegateDidInterruptWithError:v17];
LABEL_7:

    goto LABEL_10;
  }

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v10 = [CATStateMachineEvent eventWithTrigger:v9 context:messageCopy];
  LOBYTE(mFSM) = [(CATStateMachine *)mFSM canTransitionWithTriggeringEvent:v10];

  if ((mFSM & 1) == 0)
  {
    v23 = @"kCATErrorMessageNameKey";
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    v24[0] = v17;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = CATErrorWithCodeAndUserInfo(302, v19);
    [(CATTaskClient *)self delegateDidInterruptWithError:v20];

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  mRemoteTaskByUUID = self->mRemoteTaskByUUID;
  if (isKindOfClass)
  {
    v13 = messageCopy;
    taskUUID2 = [v13 taskUUID];
    v15 = [(NSMapTable *)mRemoteTaskByUUID objectForKey:taskUUID2];

    taskError = [v13 taskError];

    [v15 clientFailedWithError:taskError];
  }

  else
  {
    taskUUID3 = [messageCopy taskUUID];
    v15 = [(NSMapTable *)mRemoteTaskByUUID objectForKey:taskUUID3];

    [v15 processMessage:messageCopy];
  }

LABEL_10:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)processNotificationMessage:(id)message
{
  v21[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  name = [messageCopy name];

  if (!name)
  {
    name2 = CATErrorWithCodeAndUserInfo(301, 0);
    [(CATTaskClient *)self delegateDidInterruptWithError:name2];
LABEL_9:

    goto LABEL_10;
  }

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v10 = [CATStateMachineEvent eventWithTrigger:v9 context:messageCopy];
  LOBYTE(mFSM) = [(CATStateMachine *)mFSM canTransitionWithTriggeringEvent:v10];

  if ((mFSM & 1) == 0)
  {
    v20 = @"kCATErrorMessageNameKey";
    v16 = objc_opt_class();
    name2 = NSStringFromClass(v16);
    v21[0] = name2;
    userInfo = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v18 = CATErrorWithCodeAndUserInfo(302, userInfo);
    [(CATTaskClient *)self delegateDidInterruptWithError:v18];

LABEL_8:
    goto LABEL_9;
  }

  taskUUID = [messageCopy taskUUID];

  if (!taskUUID)
  {
    name2 = [messageCopy name];
    userInfo = [messageCopy userInfo];
    [(CATTaskClient *)self delegatedidReceiveNotificationWithName:name2 userInfo:userInfo];
    goto LABEL_8;
  }

  mRemoteTaskByUUID = self->mRemoteTaskByUUID;
  taskUUID2 = [messageCopy taskUUID];
  v14 = [(NSMapTable *)mRemoteTaskByUUID objectForKey:taskUUID2];

  [v14 processMessage:messageCopy];
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)delegatedidReceiveNotificationWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  delegate = [(CATTaskClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CATTaskClient *)self delegate];
    [delegate2 client:self didReceiveNotificationWithName:nameCopy userInfo:infoCopy];
  }
}

- (void)delegateDidConnect
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  delegate = [(CATTaskClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CATTaskClient *)self delegate];
    [delegate2 clientDidConnect:self];
  }
}

- (void)delegateDidInterruptWithError:(id)error
{
  errorCopy = error;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  delegate = [(CATTaskClient *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CATTaskClient *)self delegate];
    [delegate2 client:self didInterruptWithError:errorCopy];
  }
}

- (void)delegateDidDisconnect
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  delegate = [(CATTaskClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CATTaskClient *)self delegate];
    [delegate2 clientDidDisconnect:self];
  }
}

- (void)delegateWillInvalidate
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  delegate = [(CATTaskClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CATTaskClient *)self delegate];
    [delegate2 clientWillInvalidate:self];
  }
}

- (void)delegateDidInvalidate
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  delegate = [(CATTaskClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CATTaskClient *)self delegate];
    [delegate2 clientDidInvalidate:self];
  }
}

- (CATTaskClientDelegate)delegate
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

- (void)resumeCapturedTransportFromTaskClient:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"otherClient" object:? file:? lineNumber:? description:?];
}

- (void)resumeCapturedTransportFromTaskClient:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)captureTransport
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CATTaskClient.m" lineNumber:258 description:{@"%@: Can't capture transport when one doesn't exist", a2}];

  *a4 = *a3;
}

- (void)resumeTransport:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"transport" object:? file:? lineNumber:? description:?];
}

@end