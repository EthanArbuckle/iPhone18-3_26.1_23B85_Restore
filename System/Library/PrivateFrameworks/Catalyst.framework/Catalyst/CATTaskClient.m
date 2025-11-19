@interface CATTaskClient
- (CATTaskClient)init;
- (CATTaskClientDelegate)delegate;
- (NSString)description;
- (id)captureTransport;
- (id)prepareTaskOperationForRequest:(id)a3;
- (void)abandonTransport;
- (void)abandonTransportClearQueuedMessagesAndCancelAllOperationsWithError:(id)a3;
- (void)activeOperationDidFinish:(id)a3;
- (void)captureTransport;
- (void)clearQueuedMessagesAndCancelAllOperationsWithError:(id)a3;
- (void)connectWithTransport:(id)a3;
- (void)connectWithTransportFromTaskClient:(id)a3;
- (void)dealloc;
- (void)delegateDidConnect;
- (void)delegateDidDisconnect;
- (void)delegateDidInterruptWithError:(id)a3;
- (void)delegateDidInvalidate;
- (void)delegateDidInvalidateAndFinalize;
- (void)delegateWillInvalidate;
- (void)delegateWillInvalidateAndInvalidateSessionWithError:(id)a3;
- (void)delegatedidReceiveNotificationWithName:(id)a3 userInfo:(id)a4;
- (void)didPrepareTaskOperation:(id)a3;
- (void)disconnect;
- (void)enqueueMessage:(id)a3;
- (void)enqueueTaskOperation:(id)a3;
- (void)invalidate;
- (void)invalidateWithError:(id)a3;
- (void)postNotificationWithName:(id)a3 userInfo:(id)a4;
- (void)processNotificationMessage:(id)a3;
- (void)processSessionMessage:(id)a3;
- (void)processTaskMessage:(id)a3;
- (void)remoteTaskOperation:(id)a3 preparedMessage:(id)a4;
- (void)resumeCapturedTransportFromTaskClient:(id)a3;
- (void)resumeSession;
- (void)resumeTransport:(id)a3;
- (void)resumeWithTaskUUIDs:(id)a3;
- (void)sendMessage:(id)a3;
- (void)sendMessageThroughTransport:(id)a3;
- (void)sessionDidInvalidate;
- (void)sessionResumedWithTaskUUIDs:(id)a3;
- (void)taskOperationDidFailWithInvalidTaskClient:(id)a3;
- (void)trackTaskOperation:(id)a3;
- (void)transport:(id)a3 didFailToSendMessage:(id)a4 error:(id)a5;
- (void)transport:(id)a3 didInterruptWithError:(id)a4;
- (void)transport:(id)a3 didReceiveMessage:(id)a4;
- (void)transport:(id)a3 didSendMessage:(id)a4;
- (void)transportDidInvalidate:(id)a3;
- (void)transportDidResume:(id)a3;
@end

@implementation CATTaskClient

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
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

    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [v13 valueForKey:@"CATTaskLogLevel"];
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
  v6 = [(CATStateMachine *)self->mFSM currentState];
  v7 = [v6 name];
  v8 = [(CATTaskClient *)self sessionUUID];
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

- (id)prepareTaskOperationForRequest:(id)a3
{
  v4 = a3;
  v5 = [[CATRemoteTaskOperation alloc] initWithRequest:v4 client:self];

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

- (void)postNotificationWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [CATTaskClient postNotificationWithName:userInfo:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__CATTaskClient_postNotificationWithName_userInfo___block_invoke;
  v13[3] = &unk_278DA7280;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v8 = v13;
  v9 = v7;
  v10 = v6;
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

- (void)connectWithTransport:(id)a3
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__CATTaskClient_connectWithTransport___block_invoke;
  v10[3] = &unk_278DA75F8;
  v11 = v5;
  v12 = a2;
  v10[4] = self;
  v6 = v10;
  v7 = v5;
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

- (void)connectWithTransportFromTaskClient:(id)a3
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__CATTaskClient_connectWithTransportFromTaskClient___block_invoke;
  v10[3] = &unk_278DA75F8;
  v11 = v5;
  v12 = a2;
  v10[4] = self;
  v6 = v10;
  v7 = v5;
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

- (void)invalidateWithError:(id)a3
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__CATTaskClient_invalidateWithError___block_invoke;
  v10[3] = &unk_278DA75F8;
  v11 = v5;
  v12 = a2;
  v10[4] = self;
  v6 = v10;
  v7 = v5;
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

- (void)didPrepareTaskOperation:(id)a3
{
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)enqueueTaskOperation:(id)a3
{
  v7 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mEnqueuedTaskUUIDs = self->mEnqueuedTaskUUIDs;
  v6 = [v7 UUID];
  [(NSMutableArray *)mEnqueuedTaskUUIDs addObject:v6];

  [(CATTaskClient *)self trackTaskOperation:v7];
}

- (void)trackTaskOperation:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  mRemoteTaskByUUID = self->mRemoteTaskByUUID;
  v7 = [v4 UUID];
  [(NSMapTable *)mRemoteTaskByUUID setObject:v4 forKey:v7];
}

- (void)taskOperationDidFailWithInvalidTaskClient:(id)a3
{
  v3 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = CATErrorWithCodeAndUserInfo(501, 0);
  [v3 clientFailedWithError:v5];
}

- (void)resumeCapturedTransportFromTaskClient:(id)a3
{
  v7 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = v7;
  if (!v7)
  {
    [CATTaskClient resumeCapturedTransportFromTaskClient:];
    v5 = 0;
  }

  if (self == v5)
  {
    [CATTaskClient resumeCapturedTransportFromTaskClient:];
    v5 = v7;
  }

  v6 = [(CATTaskClient *)v5 captureTransport];
  [(CATTaskClient *)self resumeTransport:v6];
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

- (void)resumeTransport:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    [CATTaskClient resumeTransport:];
  }

  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = v7;
  if (self->mTransport != v7)
  {
    dispatch_group_enter(self->mSessionDidInvalidateGroup);
    [(CATTaskClient *)self abandonTransport];
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

- (void)sessionResumedWithTaskUUIDs:(id)a3
{
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)resumeWithTaskUUIDs:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v25 = v4;
  v6 = [MEMORY[0x277CBEB58] setWithArray:v4];
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
          v13 = [v12 taskUUID];
          v14 = [v6 containsObject:v13];

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
  v15 = [(NSMapTable *)self->mRemoteTaskByUUID objectEnumerator];
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        v21 = [v20 UUID];
        v22 = [v6 containsObject:v21];

        if ((v22 & 1) == 0)
        {
          v23 = CATErrorWithCodeAndUserInfo(502, 0);
          [v20 clientFailedWithError:v23];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)delegateWillInvalidateAndInvalidateSessionWithError:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(CATTaskClient *)self delegateWillInvalidate];
  objc_storeStrong(&self->mStrongSelf, self);
  if (self->mTransport)
  {
    v6 = [[CATSessionMessageInvalidate alloc] initWithError:v4];
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

- (void)abandonTransportClearQueuedMessagesAndCancelAllOperationsWithError:(id)a3
{
  v5 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  [(CATTaskClient *)self abandonTransport];
  [(CATTaskClient *)self clearQueuedMessagesAndCancelAllOperationsWithError:v5];
}

- (void)clearQueuedMessagesAndCancelAllOperationsWithError:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(NSMutableArray *)self->mEnqueuedTaskUUIDs removeAllObjects];
  [(NSMutableArray *)self->mEnqueuedMessages removeAllObjects];
  v6 = [(NSMapTable *)self->mRemoteTaskByUUID objectEnumerator];
  v7 = [v6 allObjects];

  [v7 makeObjectsPerformSelector:sel_clientFailedWithError_ withObject:v4];
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

- (void)resumeSession
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [CATSessionMessageResume alloc];
  v5 = [(CATTaskClient *)self sessionUUID];
  v7 = [(CATSessionMessageResume *)v4 initWithSessionUUID:v5];

  v6 = [(CATTaskClient *)self userInfo];
  [(CATSessionMessageResume *)v7 setClientUserInfo:v6];

  [(CATTaskClient *)self sendMessageThroughTransport:v7];
}

- (void)sendMessageThroughTransport:(id)a3
{
  v9 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  mTransport = self->mTransport;
  if (!mTransport)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"CATTaskClient.m" lineNumber:441 description:{@"%@ cannot call %@ with %@ when there is no transport", self, v8, v9}];

    mTransport = self->mTransport;
  }

  [(CATTransport *)mTransport sendMessage:v9];
}

- (void)enqueueMessage:(id)a3
{
  v5 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  [(NSMutableArray *)self->mEnqueuedMessages addObject:v5];
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

- (void)remoteTaskOperation:(id)a3 preparedMessage:(id)a4
{
  v12 = a3;
  v6 = a4;
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

  if (([(NSMutableSet *)mActiveRemoteTaskOperations containsObject:v12]& 1) == 0)
  {
    [(NSMutableSet *)self->mActiveRemoteTaskOperations addObject:v12];
    dispatch_group_enter(self->mSessionDidInvalidateGroup);
    v11 = CATGetCatalystQueue();
    [v12 addTarget:self selector:sel_activeOperationDidFinish_ forOperationEvents:6 delegateQueue:v11];
  }

  [(CATTaskClient *)self sendMessage:v6];
}

- (void)activeOperationDidFinish:(id)a3
{
  v5 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(NSMutableSet *)self->mActiveRemoteTaskOperations containsObject:v5])
  {
    [(NSMutableSet *)self->mActiveRemoteTaskOperations removeObject:v5];
    dispatch_group_leave(self->mSessionDidInvalidateGroup);
  }
}

- (void)transportDidResume:(id)a3
{
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  mFSM = self->mFSM;
  v8 = NSStringFromSelector(a2);
  v7 = [CATStateMachineEvent eventWithTrigger:v8 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v7];
}

- (void)transport:(id)a3 didSendMessage:(id)a4
{
  v5 = a4;
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

- (void)transport:(id)a3 didFailToSendMessage:(id)a4 error:(id)a5
{
  v6 = a4;
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

- (void)transport:(id)a3 didReceiveMessage:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CATTaskClient *)self processSessionMessage:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CATTaskClient *)self processNotificationMessage:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CATTaskClient *)self processTaskMessage:v5];
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

- (void)transport:(id)a3 didInterruptWithError:(id)a4
{
  v6 = a4;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(CATTaskClient *)self delegateDidInterruptWithError:v6];
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

- (void)processSessionMessage:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
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

    v10 = [v4 error];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = CATErrorWithCodeAndUserInfo(502, 0);
    }

    v14 = v12;

    v17 = [v14 domain];
    if ([v17 isEqualToString:@"Catalyst.error"])
    {
      v18 = [v14 code];

      if (v18 == 502)
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

  v6 = v4;
  v7 = [v6 sessionUUID];
  [(CATTaskClient *)self setSessionUUID:v7];

  v8 = [v6 serverUserInfo];
  [(CATTaskClient *)self setServerUserInfo:v8];

  v9 = [v6 pendingRemoteTaskUUIDs];

  [(CATTaskClient *)self sessionResumedWithTaskUUIDs:v9];
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)processTaskMessage:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  v7 = [v5 taskUUID];

  if (!v7)
  {
    v17 = CATErrorWithCodeAndUserInfo(301, 0);
    [(CATTaskClient *)self delegateDidInterruptWithError:v17];
LABEL_7:

    goto LABEL_10;
  }

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v10 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];
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
    v13 = v5;
    v14 = [v13 taskUUID];
    v15 = [(NSMapTable *)mRemoteTaskByUUID objectForKey:v14];

    v16 = [v13 taskError];

    [v15 clientFailedWithError:v16];
  }

  else
  {
    v21 = [v5 taskUUID];
    v15 = [(NSMapTable *)mRemoteTaskByUUID objectForKey:v21];

    [v15 processMessage:v5];
  }

LABEL_10:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)processNotificationMessage:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  v7 = [v5 name];

  if (!v7)
  {
    v15 = CATErrorWithCodeAndUserInfo(301, 0);
    [(CATTaskClient *)self delegateDidInterruptWithError:v15];
LABEL_9:

    goto LABEL_10;
  }

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v10 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];
  LOBYTE(mFSM) = [(CATStateMachine *)mFSM canTransitionWithTriggeringEvent:v10];

  if ((mFSM & 1) == 0)
  {
    v20 = @"kCATErrorMessageNameKey";
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v21[0] = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v18 = CATErrorWithCodeAndUserInfo(302, v17);
    [(CATTaskClient *)self delegateDidInterruptWithError:v18];

LABEL_8:
    goto LABEL_9;
  }

  v11 = [v5 taskUUID];

  if (!v11)
  {
    v15 = [v5 name];
    v17 = [v5 userInfo];
    [(CATTaskClient *)self delegatedidReceiveNotificationWithName:v15 userInfo:v17];
    goto LABEL_8;
  }

  mRemoteTaskByUUID = self->mRemoteTaskByUUID;
  v13 = [v5 taskUUID];
  v14 = [(NSMapTable *)mRemoteTaskByUUID objectForKey:v13];

  [v14 processMessage:v5];
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)delegatedidReceiveNotificationWithName:(id)a3 userInfo:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  v8 = [(CATTaskClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CATTaskClient *)self delegate];
    [v10 client:self didReceiveNotificationWithName:v11 userInfo:v6];
  }
}

- (void)delegateDidConnect
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTaskClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTaskClient *)self delegate];
    [v6 clientDidConnect:self];
  }
}

- (void)delegateDidInterruptWithError:(id)a3
{
  v8 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [(CATTaskClient *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CATTaskClient *)self delegate];
    [v7 client:self didInterruptWithError:v8];
  }
}

- (void)delegateDidDisconnect
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTaskClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTaskClient *)self delegate];
    [v6 clientDidDisconnect:self];
  }
}

- (void)delegateWillInvalidate
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTaskClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTaskClient *)self delegate];
    [v6 clientWillInvalidate:self];
  }
}

- (void)delegateDidInvalidate
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTaskClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTaskClient *)self delegate];
    [v6 clientDidInvalidate:self];
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
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"CATTaskClient.m" lineNumber:258 description:{@"%@: Can't capture transport when one doesn't exist", a2}];

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