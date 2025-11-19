@interface CRKSession
- (CRKSession)initWithEndpoint:(id)a3;
- (CRKSessionDelegate)delegate;
- (NSDictionary)stateDictionary;
- (id)studentSocketOptions;
- (void)backoffDidFinish;
- (void)connect;
- (void)delegateConnected;
- (void)delegateDidBecomeConnectable;
- (void)delegateDidBecomeNotConnectable;
- (void)delegateDidBecomeNotConnectableAndDidLoseBeacon;
- (void)delegateDidLoseBeacon;
- (void)delegateDisconnected;
- (void)delegateInvalidated;
- (void)delegateWillLoseBeacon;
- (void)didConnect;
- (void)enterBackoffCanConnect;
- (void)failedToConnect;
- (void)foundBeacon;
- (void)invalidate;
- (void)localWiFiBecameAvailable;
- (void)localWiFiBecameUnavailable;
- (void)lostBeacon;
- (void)lostConnection;
- (void)processFinishedTransportPreflightOperation:(id)a3;
- (void)registerDefaults;
- (void)rejected;
- (void)resetBackoff;
- (void)setRequiresBeacon:(BOOL)a3;
- (void)startPreflightingTransport:(id)a3;
- (void)stopPreflightingTransport;
- (void)transportPreflightOperationDidFinish:(id)a3;
- (void)tryConnecting;
@end

@implementation CRKSession

- (CRKSession)initWithEndpoint:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [CRKSession initWithEndpoint:];
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    [CRKSession initWithEndpoint:];
  }

  v30.receiver = self;
  v30.super_class = CRKSession;
  v11 = [(CRKSession *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_endpoint, a3);
    *&v12->_lostBeaconTimeout = xmmword_243616500;
    v12->_requiresBeacon = 1;
    v28 = [[CRKExponentialGrowthFunction alloc] initWithGrowthRate:2.0];
    v13 = [[CRKBoundedGrowthFunction alloc] initWithGrowthFunction:v28 lowerBound:1.0 upperBound:64.0];
    backoffGrowthFunction = v12->_backoffGrowthFunction;
    v12->_backoffGrowthFunction = v13;

    [(CRKSession *)v12 registerDefaults];
    v15 = [objc_alloc(MEMORY[0x277CF9588]) initWithTarget:v12];
    mFSM = v12->mFSM;
    v12->mFSM = v15;

    v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v18 = [v17 objectForKey:@"CRKClassSessionLogLevel"];
    -[CATStateMachine setLogLevel:](v12->mFSM, "setLogLevel:", [v18 integerValue]);

    v19 = [(CATStateMachine *)v12->mFSM addStateWithName:@"Out of Range"];
    v20 = [(CATStateMachine *)v12->mFSM addStateWithName:@"No Network and Not in Range"];
    v21 = [(CATStateMachine *)v12->mFSM addStateWithName:@"No Network"];
    [(CATStateMachine *)v12->mFSM addStateWithName:@"Backoff Can Connect"];
    v22 = v29 = v5;
    v27 = [(CATStateMachine *)v12->mFSM addStateWithName:@"Should Connect?"];
    v23 = [(CATStateMachine *)v12->mFSM addStateWithName:@"Connecting"];
    v24 = [(CATStateMachine *)v12->mFSM addStateWithName:@"Connected"];
    v25 = [(CATStateMachine *)v12->mFSM addStateWithName:@"Invalidated"];
    [v19 setEnterAction:sel_enterOutOfRange];
    [v19 addTransitionToState:v22 triggeringEvent:@"foundBeacon"];
    [v19 addTransitionToState:0 triggeringEvent:@"lostBeacon"];
    [v19 addTransitionToState:0 triggeringEvent:@"localWiFiBecameAvailable"];
    [v19 addTransitionToState:v20 triggeringEvent:@"localWiFiBecameUnavailable"];
    [v19 addTransitionToState:0 triggeringEvent:@"connect"];
    [v19 addTransitionToState:0 triggeringEvent:@"lostConnection"];
    [v19 addTransitionToState:0 triggeringEvent:@"rejected"];
    [v19 addTransitionToState:v25 triggeringEvent:@"invalidate"];
    [v20 addTransitionToState:v21 triggeringEvent:@"foundBeacon"];
    [v20 addTransitionToState:0 triggeringEvent:@"lostBeacon"];
    [v20 addTransitionToState:v19 triggeringEvent:@"localWiFiBecameAvailable"];
    [v20 addTransitionToState:0 triggeringEvent:@"localWiFiBecameUnavailable"];
    [v20 addTransitionToState:0 triggeringEvent:@"connect"];
    [v20 addTransitionToState:0 triggeringEvent:@"lostConnection"];
    [v20 addTransitionToState:0 triggeringEvent:@"rejected"];
    [v20 addTransitionToState:v25 triggeringEvent:@"invalidate"];
    [v21 setEnterAction:sel_enterNoNetwork];
    [v21 addTransitionToState:0 triggeringEvent:@"foundBeacon"];
    [v21 addTransitionToState:v20 triggeringEvent:@"lostBeacon" action:sel_delegateDidLoseBeacon];
    [v21 addTransitionToState:v22 triggeringEvent:@"localWiFiBecameAvailable"];
    [v21 addTransitionToState:0 triggeringEvent:@"localWiFiBecameUnavailable"];
    [v21 addTransitionToState:0 triggeringEvent:@"connect"];
    [v21 addTransitionToState:0 triggeringEvent:@"lostConnection"];
    [v21 addTransitionToState:0 triggeringEvent:@"rejected"];
    [v21 addTransitionToState:v25 triggeringEvent:@"invalidate"];
    [v22 setEnterAction:sel_enterBackoffCanConnect];
    [v22 addTransitionToState:0 triggeringEvent:@"foundBeacon"];
    [v22 addTransitionToState:v19 triggeringEvent:@"lostBeacon" action:sel_delegateDidLoseBeacon];
    [v22 addTransitionToState:0 triggeringEvent:@"localWiFiBecameAvailable"];
    [v22 addTransitionToState:v21 triggeringEvent:@"localWiFiBecameUnavailable"];
    [v22 addTransitionToState:0 triggeringEvent:@"lostConnection"];
    [v22 addTransitionToState:0 triggeringEvent:@"rejected"];
    [v22 addTransitionToState:v27 triggeringEvent:@"backoffDidFinish"];
    [v22 addTransitionToState:v25 triggeringEvent:@"invalidate"];
    [v22 setExitAction:sel_exitBackoffCanConnect];
    [v27 setEnterAction:sel_delegateDidBecomeConnectable];
    [v27 addTransitionToState:v23 triggeringEvent:@"connect"];
    [v27 addTransitionToState:v27 triggeringEvent:@"foundBeacon"];
    [v27 addTransitionToState:v19 triggeringEvent:@"lostBeacon" action:sel_delegateDidBecomeNotConnectableAndDidLoseBeacon];
    [v27 addTransitionToState:0 triggeringEvent:@"localWiFiBecameAvailable"];
    [v27 addTransitionToState:v21 triggeringEvent:@"localWiFiBecameUnavailable" action:sel_delegateDidBecomeNotConnectable];
    [v27 addTransitionToState:0 triggeringEvent:@"lostConnection"];
    [v27 addTransitionToState:0 triggeringEvent:@"rejected"];
    [v27 addTransitionToState:v25 triggeringEvent:@"invalidate" action:sel_delegateDidBecomeNotConnectable];
    [v23 setEnterAction:sel_tryConnecting];
    [v23 addTransitionToState:0 triggeringEvent:@"foundBeacon"];
    [v23 addTransitionToState:v19 triggeringEvent:@"lostBeacon" action:sel_delegateDidLoseBeacon];
    [v23 addTransitionToState:0 triggeringEvent:@"localWiFiBecameAvailable"];
    [v23 addTransitionToState:v21 triggeringEvent:@"localWiFiBecameUnavailable"];
    [v23 addTransitionToState:v24 triggeringEvent:@"didConnect"];
    [v23 addTransitionToState:v22 triggeringEvent:@"failedToConnect"];
    [v23 addTransitionToState:0 triggeringEvent:@"connect"];
    [v23 addTransitionToState:0 triggeringEvent:@"lostConnection"];
    [v23 addTransitionToState:0 triggeringEvent:@"rejected"];
    [v23 addTransitionToState:v25 triggeringEvent:@"invalidate"];
    [v23 setExitAction:sel_cancelConnectionAttempt];
    [v24 setEnterAction:sel_delegateConnected];
    [v24 addTransitionToState:0 triggeringEvent:@"foundBeacon"];
    [v24 addTransitionToState:v19 triggeringEvent:@"lostBeacon" action:sel_delegateDidLoseBeacon];
    [v24 addTransitionToState:0 triggeringEvent:@"localWiFiBecameAvailable"];
    [v24 addTransitionToState:v21 triggeringEvent:@"localWiFiBecameUnavailable"];
    [v24 addTransitionToState:0 triggeringEvent:@"connect"];
    [v24 addTransitionToState:v22 triggeringEvent:@"rejected"];
    [v24 addTransitionToState:v22 triggeringEvent:@"lostConnection" action:sel_resetBackoff];
    [v24 addTransitionToState:v25 triggeringEvent:@"invalidate"];
    [v24 setExitAction:sel_delegateDisconnected];
    [v25 setEnterAction:sel_delegateInvalidated];
    [v25 addTransitionToState:0 triggeringEvent:@"invalidate"];
    [(CATStateMachine *)v12->mFSM start];

    v5 = v29;
  }

  return v12;
}

- (void)setRequiresBeacon:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  if (_CRKLogBluetooth_onceToken_1 != -1)
  {
    [CRKSession setRequiresBeacon:];
  }

  v5 = _CRKLogBluetooth_logObj_1;
  if (os_log_type_enabled(_CRKLogBluetooth_logObj_1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithBool:v3];
    v9 = 134218242;
    v10 = self;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Setting requiresBeacon for session %p: %{public}@", &v9, 0x16u);
  }

  if (self->_requiresBeacon != v3)
  {
    self->_requiresBeacon = v3;
    [(CRKSession *)self foundBeacon];
  }
}

- (void)foundBeacon
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

- (void)localWiFiBecameAvailable
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

- (void)localWiFiBecameUnavailable
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

- (void)lostConnection
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

- (void)invalidate
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

- (void)rejected
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

- (NSDictionary)stateDictionary
{
  v3 = objc_opt_new();
  v4 = [(CRKSession *)self stateMachine];
  v5 = [v4 currentState];
  v6 = [v5 name];
  [v3 setObject:v6 forKeyedSubscript:@"state"];

  v7 = [(CRKSession *)self transport];
  v8 = [v7 description];
  [v3 setObject:v8 forKeyedSubscript:@"transport"];

  v9 = [(CRKSession *)self transportPreflightOperation];
  v10 = [v9 stateDictionary];
  [v3 setObject:v10 forKeyedSubscript:@"transportPreflightOperation"];

  if ([(CRKSession *)self requiresBeacon])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v3 setObject:v11 forKeyedSubscript:@"requiresBeacon"];
  v12 = [v3 copy];

  return v12;
}

- (void)lostBeacon
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

- (void)didConnect
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

- (void)failedToConnect
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

- (void)registerDefaults
{
  v5[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4[0] = @"CRKStudentAdaptiveWriteTimeout";
  v4[1] = @"CRKStudentKeepAliveEnabled";
  v5[0] = &unk_2856727A8;
  v5[1] = MEMORY[0x277CBEC38];
  v4[2] = @"CRKStudentKeepAliveDelay";
  v4[3] = @"CRKStudentKeepAliveInterval";
  v5[2] = &unk_2856727C0;
  v5[3] = &unk_2856727C0;
  v4[4] = @"CRKStudentKeepAliveCount";
  v5[4] = &unk_2856727C0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];
  [v2 registerDefaults:v3];
}

- (void)tryConnecting
{
  OUTLINED_FUNCTION_1_0();
  v9 = *MEMORY[0x277D85DE8];
  v3 = [v2 endpoint];
  v4 = [v3 stringValue];
  v5 = 138543618;
  v6 = v1;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_243550000, v0, OS_LOG_TYPE_ERROR, "SESSION:%{public}@. IP:%{public}@. Failed to connect: No Client Identity", &v5, 0x16u);
}

uint64_t __27__CRKSession_tryConnecting__block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 underlyingCertificate];
}

- (id)studentSocketOptions
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 valueForKey:@"CRKStudentAdaptiveWriteTimeout"];
  [v2 setAdaptiveWriteTimeout:v4];

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 valueForKey:@"CRKStudentKeepAliveEnabled"];
  [v2 setKeepAliveEnabled:v6];

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [v7 valueForKey:@"CRKStudentKeepAliveDelay"];
  [v2 setKeepAliveDelay:v8];

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 valueForKey:@"CRKStudentKeepAliveInterval"];
  [v2 setKeepAliveInterval:v10];

  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [v11 valueForKey:@"CRKStudentKeepAliveCount"];
  [v2 setKeepAliveCount:v12];

  return v2;
}

- (void)delegateWillLoseBeacon
{
  [(CRKSession *)self lostBeaconTimeout];
  v4 = v3;
  [(CRKSession *)self willLoseBeaconWarningTimeout];
  v6 = v4 - v5;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  [(CRKSession *)self performSelector:sel_lostBeacon withObject:0 afterDelay:v7];
  v8 = [(CRKSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CRKSession *)self delegate];
    [v10 session:self willLoseBeaconAfterTimeInterval:v7];
  }
}

- (void)delegateDidLoseBeacon
{
  v3 = [MEMORY[0x277CCABD8] mainQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__CRKSession_delegateDidLoseBeacon__block_invoke;
  v5[3] = &unk_278DC10F0;
  v5[4] = self;
  v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v5];
  [v3 addOperation:v4];
}

void __35__CRKSession_delegateDidLoseBeacon__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 sessionDidLoseBeacon:*(a1 + 32)];
  }
}

- (void)delegateDidBecomeConnectable
{
  v3 = [(CRKSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CRKSession *)self delegate];
    [v5 sessionDidBecomeConnectable:self];
  }

  else
  {

    [(CRKSession *)self connect];
  }
}

- (void)delegateDidBecomeNotConnectable
{
  v3 = [MEMORY[0x277CCABD8] mainQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CRKSession_delegateDidBecomeNotConnectable__block_invoke;
  v5[3] = &unk_278DC10F0;
  v5[4] = self;
  v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v5];
  [v3 addOperation:v4];
}

void __45__CRKSession_delegateDidBecomeNotConnectable__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 sessionDidBecomeNotConnectable:*(a1 + 32)];
  }
}

- (void)delegateDidBecomeNotConnectableAndDidLoseBeacon
{
  v3 = [MEMORY[0x277CCABD8] mainQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__CRKSession_delegateDidBecomeNotConnectableAndDidLoseBeacon__block_invoke;
  v5[3] = &unk_278DC10F0;
  v5[4] = self;
  v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v5];
  [v3 addOperation:v4];
}

void __61__CRKSession_delegateDidBecomeNotConnectableAndDidLoseBeacon__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 sessionDidBecomeNotConnectable:*(a1 + 32)];
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 sessionDidLoseBeacon:*(a1 + 32)];
  }
}

- (void)delegateConnected
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRKSession *)self endpoint];
    v5 = [v4 stringValue];
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "SESSION:%{public}@. IP:%{public}@. Connected", &v10, 0x16u);
  }

  v6 = [(CRKSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CRKSession *)self delegate];
    v9 = [(CRKSession *)self transport];
    [v8 session:self didConnectWithTransport:v9];
  }
}

- (void)delegateDisconnected
{
  v3 = [MEMORY[0x277CCABD8] mainQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__CRKSession_delegateDisconnected__block_invoke;
  v5[3] = &unk_278DC10F0;
  v5[4] = self;
  v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v5];
  [v3 addOperation:v4];
}

void __34__CRKSession_delegateDisconnected__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 sessionDidDisconnect:*(a1 + 32)];
  }
}

- (void)delegateInvalidated
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_lostBeacon object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_delegateWillLoseBeacon object:0];
  v3 = [(CRKSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CRKSession *)self delegate];
    [v5 sessionDidInvalidate:self];
  }
}

- (void)enterBackoffCanConnect
{
  mCurrentBackoffInterval = self->mCurrentBackoffInterval;
  v4 = [(CRKSession *)self backoffGrowthFunction];
  [v4 evaluateWithValue:self->mCurrentBackoffInterval];
  self->mCurrentBackoffInterval = v5;

  [(CRKSession *)self performSelector:sel_backoffDidFinish withObject:0 afterDelay:mCurrentBackoffInterval];
}

- (void)backoffDidFinish
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

- (void)resetBackoff
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRKSession *)self endpoint];
    v5 = [v4 stringValue];
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "SESSION:%{public}@. IP:%{public}@. Resetting session backoff.", &v6, 0x16u);
  }

  self->mCurrentBackoffInterval = 0.0;
}

- (void)startPreflightingTransport:(id)a3
{
  v4 = a3;
  v5 = [(CRKSession *)self transportPreflightOperation];

  if (v5)
  {
    [CRKSession startPreflightingTransport:];
  }

  v6 = [[CRKTransportPreflightOperation alloc] initWithTransport:v4 session:self];

  [(CRKSession *)self setTransportPreflightOperation:v6];
  v7 = [(CRKSession *)self transportPreflightOperation];
  [v7 addTarget:self selector:sel_transportPreflightOperationDidFinish_ forOperationEvents:6];

  v9 = [MEMORY[0x277CF9540] crk_backgroundQueue];
  v8 = [(CRKSession *)self transportPreflightOperation];
  [v9 addOperation:v8];
}

- (void)stopPreflightingTransport
{
  v3 = [(CRKSession *)self transportPreflightOperation];
  [v3 cancel];

  [(CRKSession *)self setTransportPreflightOperation:0];
}

- (void)transportPreflightOperationDidFinish:(id)a3
{
  v5 = a3;
  v4 = [(CRKSession *)self transportPreflightOperation];

  if (v4 == v5)
  {
    [(CRKSession *)self setTransportPreflightOperation:0];
    [(CRKSession *)self processFinishedTransportPreflightOperation:v5];
  }
}

- (void)processFinishedTransportPreflightOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 error];
  if (v5)
  {
    v6 = _CRKLogSession();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CRKSession *)self processFinishedTransportPreflightOperation:v5, v6];
    }

    [(CRKSession *)self failedToConnect];
  }

  else
  {
    v7 = [v4 resultObject];
    v8 = [v7 takeTransport];
    if (v8)
    {
      [(CRKSession *)self setTransport:v8];
      [(CRKSession *)self didConnect];
    }

    else
    {
      if ([v7 shouldResetBackoff])
      {
        [(CRKSession *)self resetBackoff];
      }

      [(CRKSession *)self failedToConnect];
    }
  }
}

- (CRKSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithEndpoint:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CRKSession.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"endpoint"}];
}

- (void)initWithEndpoint:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CRKSession.m" lineNumber:63 description:@"CRKSession is an abstract class. Please do not initialize it directly."];
}

- (void)startPreflightingTransport:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CRKSession.m" lineNumber:434 description:@"Already preflighting a transport"];
}

- (void)processFinishedTransportPreflightOperation:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 endpoint];
  v7 = [v6 stringValue];
  v8 = [a2 verboseDescription];
  v9 = 138543874;
  v10 = a1;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_243550000, a3, OS_LOG_TYPE_ERROR, "SESSION:%{public}@. IP:%{public}@. Transport preflight failed: %{public}@", &v9, 0x20u);
}

@end