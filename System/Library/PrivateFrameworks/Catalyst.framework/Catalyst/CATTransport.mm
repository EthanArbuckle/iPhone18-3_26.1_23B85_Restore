@interface CATTransport
- (CATTransport)init;
- (CATTransportDelegate)delegate;
- (id)debugDescription;
- (id)description;
- (id)operationToSendMessage:(id)a3;
- (void)cancelAndResumeQueuesAndEnqueueInvalidateConnection;
- (void)dealloc;
- (void)delegateDidInvalidate;
- (void)delegateDidResume;
- (void)didInterruptWithError:(id)a3;
- (void)didInvalidate;
- (void)didReceiveMessage:(id)a3;
- (void)enqueueDelegateCouldNotConnectWithError:(id)a3;
- (void)enqueueDelegateDidConnect;
- (void)enqueueDelegateDidInterruptWithError:(id)a3;
- (void)enqueueDelegateDidInvalidateAndFinalize;
- (void)enqueueDelegateDidReceiveMessage:(id)a3;
- (void)enqueueSendForMessage:(id)a3;
- (void)invalidSendForMessage:(id)a3;
- (void)invalidate;
- (void)invalidateConnection;
- (void)resume;
- (void)resumeConnection;
- (void)resumeQueue;
- (void)resumeQueueAndConnection;
- (void)sendHelloMessageAndResumeQueue;
- (void)sendMessage:(id)a3;
- (void)suspend;
- (void)suspendConnection;
- (void)suspendQueue;
- (void)suspendQueueAndConnection;
@end

@implementation CATTransport

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTransport.m" lineNumber:49 description:{@"%@ cannot dealloc while receiver is still valid.", a2}];
}

- (CATTransport)init
{
  v23.receiver = self;
  v23.super_class = CATTransport;
  v2 = [(CATTransport *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mControlQueue = v2->mControlQueue;
    v2->mControlQueue = v3;

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p.control", objc_opt_class(), v2];
    [(CATOperationQueue *)v2->mControlQueue setName:v5];

    v6 = CATGetCatalystQueue();
    [(CATOperationQueue *)v2->mControlQueue setUnderlyingQueue:v6];

    v7 = objc_opt_new();
    mMessageQueue = v2->mMessageQueue;
    v2->mMessageQueue = v7;

    [(CATOperationQueue *)v2->mMessageQueue setMaxConcurrentOperationCount:1];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p.messages", objc_opt_class(), v2];
    [(CATOperationQueue *)v2->mMessageQueue setName:v9];

    v10 = CATGetCatalystQueue();
    [(CATOperationQueue *)v2->mMessageQueue setUnderlyingQueue:v10];

    [(CATOperationQueue *)v2->mMessageQueue setSuspended:1];
    v11 = [[CATStateMachine alloc] initWithTarget:v2];
    mFSM = v2->mFSM;
    v2->mFSM = v11;

    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [v13 valueForKey:@"CATTransportLogLevel"];
    -[CATStateMachine setLogLevel:](v2->mFSM, "setLogLevel:", [v14 integerValue]);

    v15 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Not Connected (Suspended)"];
    v16 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Connecting"];
    v17 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Connecting (Suspended)"];
    v18 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Connected"];
    v22 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Connected (Suspended)"];
    v19 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Invalidating"];
    v21 = [(CATStateMachine *)v2->mFSM addStateWithName:@"Invalidated"];
    [v15 addTransitionToState:v16 triggeringEvent:@"resume" action:sel_sendHelloMessageAndResumeQueue];
    [v15 addTransitionToState:v19 triggeringEvent:@"invalidate"];
    [v15 addTransitionToState:0 triggeringEvent:? action:?];
    [v17 addTransitionToState:v16 triggeringEvent:@"resume" action:?];
    [v17 addTransitionToState:v19 triggeringEvent:@"invalidate" action:sel_cancelHelloMessageAndResumeQueueOperations];
    [v17 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueSendForMessage_];
    [v16 addTransitionToState:v17 triggeringEvent:@"suspend" action:sel_suspendQueueAndConnection];
    [v16 addTransitionToState:v19 triggeringEvent:@"invalidate" action:sel_cancelHelloMessageAndResumeQueueOperations];
    [v16 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueSendForMessage_];
    [v16 addTransitionToState:v18 triggeringEvent:@"didReceiveMessage:" action:sel_enqueueDelegateDidConnect];
    [v16 addTransitionToState:0 triggeringEvent:@"didInterruptWithError:" action:sel_enqueueDelegateCouldNotConnectWithError_];
    [v18 addTransitionToState:v22 triggeringEvent:@"suspend" action:sel_suspendQueueAndConnection];
    [v18 addTransitionToState:v19 triggeringEvent:@"invalidate"];
    [v18 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueSendForMessage_];
    [v18 addTransitionToState:0 triggeringEvent:@"didReceiveMessage:" action:sel_enqueueDelegateDidReceiveMessage_];
    [v18 addTransitionToState:0 triggeringEvent:@"didInterruptWithError:" action:sel_enqueueDelegateDidInterruptWithError_];
    [v22 addTransitionToState:v18 triggeringEvent:@"resume" action:sel_resumeQueueAndConnection];
    [v22 addTransitionToState:v19 triggeringEvent:@"invalidate"];
    [v22 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_enqueueSendForMessage_];
    [v19 setEnterAction:sel_cancelAndResumeQueuesAndEnqueueInvalidateConnection];
    [v19 addTransitionToState:0 triggeringEvent:@"invalidate"];
    [v19 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_invalidSendForMessage_];
    [v19 addTransitionToState:v21 triggeringEvent:@"didInvalidate"];
    [v19 addTransitionToState:0 triggeringEvent:@"didReceiveMessage:"];
    [v19 addTransitionToState:0 triggeringEvent:@"didInterruptWithError:"];
    [v21 setEnterAction:sel_enqueueDelegateDidInvalidateAndFinalize];
    [v21 addTransitionToState:0 triggeringEvent:@"invalidate"];
    [v21 addTransitionToState:0 triggeringEvent:@"sendMessage:" action:sel_invalidSendForMessage_];
    [v21 addTransitionToState:0 triggeringEvent:@"didInterruptWithError:"];
    [(CATStateMachine *)v2->mFSM start];
  }

  return v2;
}

- (id)description
{
  v3 = [(CATTransport *)self name];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [(CATTransport *)self name];
    v7 = [(CATStateMachine *)self->mFSM currentState];
    v8 = [v7 name];
    v9 = [v4 stringWithFormat:@"<%@: %p { name = %@, state = %@ }>", v5, self, v6, v8];
  }

  else
  {
    v6 = [(CATStateMachine *)self->mFSM currentState];
    v7 = [v6 name];
    v9 = [v4 stringWithFormat:@"<%@: %p { state = %@ }>", v5, self, v7];
  }

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(CATTransport *)self description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@"\nControl Queue:%@", self->mControlQueue];
  [v5 appendFormat:@"\nMessage Queue:%@", self->mMessageQueue];

  return v5;
}

- (void)resume
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mFSM = self->mFSM;
  v7 = NSStringFromSelector(a2);
  v6 = [CATStateMachineEvent eventWithTrigger:v7 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v6];
}

- (void)suspend
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mFSM = self->mFSM;
  v7 = NSStringFromSelector(a2);
  v6 = [CATStateMachineEvent eventWithTrigger:v7 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v6];
}

- (void)invalidate
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mFSM = self->mFSM;
  v7 = NSStringFromSelector(a2);
  v6 = [CATStateMachineEvent eventWithTrigger:v7 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v6];
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

- (void)didReceiveMessage:(id)a3
{
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  v7 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v7 context:v5];

  v9 = MEMORY[0x277CCA8C8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __34__CATTransport_didReceiveMessage___block_invoke;
  v15 = &unk_278DA7470;
  v16 = self;
  v17 = v8;
  v10 = v8;
  v11 = [v9 blockOperationWithBlock:&v12];
  [v11 setName:{@"Receive Message", v12, v13, v14, v15, v16}];
  [(CATOperationQueue *)self->mMessageQueue addOperation:v11];
}

void __34__CATTransport_didReceiveMessage___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) transitionWithTriggeringEvent:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)didInterruptWithError:(id)a3
{
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  mFSM = self->mFSM;
  v9 = NSStringFromSelector(a2);
  v8 = [CATStateMachineEvent eventWithTrigger:v9 context:v5];

  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v8];
}

- (void)didInvalidate
{
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mFSM = self->mFSM;
  v7 = NSStringFromSelector(a2);
  v6 = [CATStateMachineEvent eventWithTrigger:v7 context:0];
  [(CATStateMachine *)mFSM transitionWithTriggeringEvent:v6];
}

- (void)sendHelloMessageAndResumeQueue
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  objc_initWeak(&location, self);
  v4 = MEMORY[0x277CCA8C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__CATTransport_sendHelloMessageAndResumeQueue__block_invoke;
  v12[3] = &unk_278DA7120;
  objc_copyWeak(&v13, &location);
  v5 = [v4 blockOperationWithBlock:v12];
  [v5 setName:@"Resume Connection"];
  v6 = objc_opt_new();
  v7 = [(CATTransport *)self operationToSendMessage:v6];

  v8 = MEMORY[0x277CCA8C8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__CATTransport_sendHelloMessageAndResumeQueue__block_invoke_2;
  v10[3] = &unk_278DA7120;
  objc_copyWeak(&v11, &location);
  v9 = [v8 blockOperationWithBlock:v10];
  [v9 setName:@"Resume Queue"];
  [v7 addDependency:v5];
  [v9 addDependency:v7];
  [(CATOperationQueue *)self->mControlQueue addOperation:v5];
  [(CATOperationQueue *)self->mControlQueue addOperation:v7];
  [(CATOperationQueue *)self->mControlQueue addOperation:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __46__CATTransport_sendHelloMessageAndResumeQueue__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained delegateDidResume];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 resumeConnection];

  objc_autoreleasePoolPop(v2);
}

void __46__CATTransport_sendHelloMessageAndResumeQueue__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resumeQueue];

  objc_autoreleasePoolPop(v2);
}

- (void)resumeQueueAndConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  objc_initWeak(&location, self);
  v4 = MEMORY[0x277CCA8C8];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __40__CATTransport_resumeQueueAndConnection__block_invoke;
  v9 = &unk_278DA7120;
  objc_copyWeak(&v10, &location);
  v5 = [v4 blockOperationWithBlock:&v6];
  [v5 setName:{@"Resume Queue and Connection", v6, v7, v8, v9}];
  [(CATOperationQueue *)self->mControlQueue addOperation:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __40__CATTransport_resumeQueueAndConnection__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained delegateDidResume];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 resumeConnection];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 resumeQueue];

  objc_autoreleasePoolPop(v2);
}

- (void)suspendQueueAndConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATTransport *)self suspendConnection];

  [(CATTransport *)self suspendQueue];
}

- (void)resumeQueue
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  mMessageQueue = self->mMessageQueue;

  [(CATOperationQueue *)mMessageQueue setSuspended:0];
}

- (void)suspendQueue
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  mMessageQueue = self->mMessageQueue;

  [(CATOperationQueue *)mMessageQueue setSuspended:1];
}

- (void)enqueueSendForMessage:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = [(CATTransport *)self operationToSendMessage:v4];
  [v6 setName:@"Send Message"];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __38__CATTransport_enqueueSendForMessage___block_invoke;
  v13 = &unk_278DA76E8;
  v7 = v6;
  v14 = v7;
  objc_copyWeak(&v16, &location);
  v8 = v4;
  v15 = v8;
  v9 = [(NSBlockOperation *)_CATTransportDidSendMessageOperation blockOperationWithBlock:&v10];
  [v9 setName:{@"Delegate Did Send Message", v10, v11, v12, v13}];
  [v9 setQueuePriority:4];
  [v9 addDependency:v7];
  [(CATOperationQueue *)self->mMessageQueue addOperation:v7];
  [(CATOperationQueue *)self->mMessageQueue addOperation:v9];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __38__CATTransport_enqueueSendForMessage___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [*(a1 + 32) error];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 domain];
    if ([v6 isEqualToString:@"Catalyst.error"])
    {
      v7 = [v5 code];

      if (v7 != 404)
      {
LABEL_6:
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v9 = [WeakRetained delegate];
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
          goto LABEL_12;
        }

        v11 = objc_loadWeakRetained((a1 + 48));
        v12 = [v11 delegate];
        v13 = objc_loadWeakRetained((a1 + 48));
        [v12 transport:v13 didFailToSendMessage:*(a1 + 40) error:v5];
        goto LABEL_10;
      }

      CATErrorWithCodeAndUserInfo(200, 0);
      v5 = v6 = v5;
    }

    goto LABEL_6;
  }

  v14 = objc_loadWeakRetained((a1 + 48));
  v15 = [v14 delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v11 = objc_loadWeakRetained((a1 + 48));
    v12 = [v11 delegate];
    v13 = objc_loadWeakRetained((a1 + 48));
    [v12 transport:v13 didSendMessage:*(a1 + 40)];
    v5 = 0;
LABEL_10:

    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  objc_autoreleasePoolPop(v2);
}

- (void)invalidSendForMessage:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__CATTransport_invalidSendForMessage___block_invoke;
  v8[3] = &unk_278DA7530;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v9 = v6;
  v7 = [(NSBlockOperation *)_CATTransportDidSendMessageOperation blockOperationWithBlock:v8];
  [v7 setName:@"Invalid Send"];
  [v7 setQueuePriority:4];
  [(CATOperationQueue *)self->mMessageQueue addOperation:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __38__CATTransport_invalidSendForMessage___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 delegate];
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = *(a1 + 32);
    v11 = CATErrorWithCodeAndUserInfo(200, 0);
    [v8 transport:v9 didFailToSendMessage:v10 error:v11];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)cancelAndResumeQueuesAndEnqueueInvalidateConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  objc_storeStrong(&self->mStrongSelf, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__CATTransport_cancelAndResumeQueuesAndEnqueueInvalidateConnection__block_invoke;
  v5[3] = &unk_278DA72D0;
  v5[4] = self;
  v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v5];
  [v4 setName:@"Invalidate Connection"];
  [(CATOperationQueue *)self->mControlQueue addOperation:v4];
}

void __67__CATTransport_cancelAndResumeQueuesAndEnqueueInvalidateConnection__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) cancelAllOperations];
  [*(*(a1 + 32) + 24) setSuspended:0];
  [*(a1 + 32) invalidateConnection];

  objc_autoreleasePoolPop(v2);
}

- (void)enqueueDelegateDidInvalidateAndFinalize
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CATTransport.m" lineNumber:386 description:{@"%@ cannot call %@ when it has not created a strong reference to self", a2, v4}];
}

void __55__CATTransport_enqueueDelegateDidInvalidateAndFinalize__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained delegateDidInvalidate];

  objc_autoreleasePoolPop(v2);
}

void __55__CATTransport_enqueueDelegateDidInvalidateAndFinalize__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 4);
    *(WeakRetained + 4) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

- (void)resumeConnection
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"CATTransport.m" lineNumber:420 description:{@"%@ must override %@", self, v4}];
}

- (void)suspendConnection
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"CATTransport.m" lineNumber:426 description:{@"%@ must override %@", self, v4}];
}

- (void)invalidateConnection
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"CATTransport.m" lineNumber:432 description:{@"%@ must override %@", self, v4}];
}

- (id)operationToSendMessage:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"CATTransport.m" lineNumber:438 description:{@"%@ must override %@", self, v6}];

  return 0;
}

- (void)delegateDidResume
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTransport *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTransport *)self delegate];
    [v6 transportDidResume:self];
  }
}

- (void)enqueueDelegateDidConnect
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  objc_initWeak(&location, self);
  v4 = MEMORY[0x277CCA8C8];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __41__CATTransport_enqueueDelegateDidConnect__block_invoke;
  v9 = &unk_278DA7120;
  objc_copyWeak(&v10, &location);
  v5 = [v4 blockOperationWithBlock:&v6];
  [v5 setName:{@"Delegate Did Connect", v6, v7, v8, v9}];
  [v5 setQueuePriority:4];
  [(CATOperationQueue *)self->mMessageQueue addOperation:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __41__CATTransport_enqueueDelegateDidConnect__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 delegate];
    v9 = objc_loadWeakRetained((a1 + 32));
    [v8 transportDidConnect:v9];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)enqueueDelegateDidReceiveMessage:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277CCA8C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CATTransport_enqueueDelegateDidReceiveMessage___block_invoke;
  v9[3] = &unk_278DA7530;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v10 = v7;
  v8 = [v6 blockOperationWithBlock:v9];
  [v8 setName:@"Delegate Did Receive Message"];
  [v8 setQueuePriority:4];
  [(CATOperationQueue *)self->mMessageQueue addOperation:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __49__CATTransport_enqueueDelegateDidReceiveMessage___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 delegate];
    v9 = objc_loadWeakRetained((a1 + 40));
    [v8 transport:v9 didReceiveMessage:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)enqueueDelegateCouldNotConnectWithError:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v9 = *MEMORY[0x277CCA7E8];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = CATErrorWithCodeAndUserInfo(202, v6);

  [(CATTransport *)self enqueueDelegateDidInterruptWithError:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)enqueueDelegateDidInterruptWithError:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277CCA8C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__CATTransport_enqueueDelegateDidInterruptWithError___block_invoke;
  v9[3] = &unk_278DA7530;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v10 = v7;
  v8 = [v6 blockOperationWithBlock:v9];
  [v8 setName:@"Delegate Did Interrupt"];
  [v8 setQueuePriority:4];
  [(CATOperationQueue *)self->mMessageQueue addOperation:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__CATTransport_enqueueDelegateDidInterruptWithError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 delegate];
    v9 = objc_loadWeakRetained((a1 + 40));
    [v8 transport:v9 didInterruptWithError:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)delegateDidInvalidate
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATTransport *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATTransport *)self delegate];
    [v6 transportDidInvalidate:self];
  }
}

- (CATTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end