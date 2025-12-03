@interface CRKTransportPreflightOperation
- (BOOL)anyCommonNameInArrayHasLeaderPrefix:(id)prefix;
- (BOOL)errorIndicatesThatInterruptionWasCausedByDecisionHandler:(id)handler;
- (BOOL)isCommonNamePrefixValidForRemoteTransport:(id)transport;
- (BOOL)isCommonNamePrefixValidForTransport:(id)transport;
- (BOOL)isInsecureConnectionError:(id)error;
- (CRKSession)session;
- (CRKTransportPreflightOperation)initWithTransport:(id)transport session:(id)session;
- (NSDictionary)stateDictionary;
- (id)ASMUserIdentifierFromTrustDecision:(id)decision;
- (void)cancel;
- (void)clearDelegatesOnTransport:(id)transport;
- (void)finishWithShouldResetBackoff:(BOOL)backoff;
- (void)finishWithTransport:(id)transport;
- (void)handleContinuationDecision:(unint64_t)decision forTrustDecision:(id)trustDecision;
- (void)invalidateTransport;
- (void)main;
- (void)respondToTrustDecision:(id)decision withAllowUntrustedConnections:(BOOL)connections;
- (void)setDelegatesOnTransport:(id)transport;
- (void)transport:(id)transport didInterruptWithError:(id)error;
- (void)transport:(id)transport encounteredTrustDecisionWhileTryingToSecure:(id)secure;
- (void)transportDidConnect:(id)connect;
- (void)transportDidInvalidate:(id)invalidate;
@end

@implementation CRKTransportPreflightOperation

- (CRKTransportPreflightOperation)initWithTransport:(id)transport session:(id)session
{
  transportCopy = transport;
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = CRKTransportPreflightOperation;
  v9 = [(CRKTransportPreflightOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transport, transport);
    objc_storeWeak(&v10->_session, sessionCopy);
  }

  return v10;
}

- (NSDictionary)stateDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"transport";
  transport = [(CRKTransportPreflightOperation *)self transport];
  v3 = [transport description];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)cancel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CRKTransportPreflightOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __40__CRKTransportPreflightOperation_cancel__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) phase] != 3 && (objc_msgSend(*(a1 + 32), "cancellationRequested") & 1) == 0)
  {
    v2 = _CRKLogSession_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) session];
      v4 = [*(a1 + 32) session];
      v5 = [v4 endpoint];
      v6 = [v5 stringValue];
      v7 = [*(a1 + 32) transport];
      v10 = 138543874;
      v11 = v3;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "SESSION:%{public}@. IP:%{public}@. Transport preflight cancellation requested for transport %{public}@", &v10, 0x20u);
    }

    [*(a1 + 32) setCancellationRequested:1];
    v8 = [*(a1 + 32) transport];
    v9 = [v8 delegate];

    if (v9)
    {
      [*(a1 + 32) invalidateTransport];
    }
  }
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CRKTransportPreflightOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __38__CRKTransportPreflightOperation_main__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 transport];
  [v2 setDelegatesOnTransport:v3];

  v4 = [*(a1 + 32) cancellationRequested];
  v5 = *(a1 + 32);
  if (v4)
  {

    [v5 invalidateTransport];
  }

  else
  {
    v6 = [v5 transport];
    [v6 resume];
  }
}

- (void)setDelegatesOnTransport:(id)transport
{
  transportCopy = transport;
  [transportCopy setDelegate:self];
  v7 = transportCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setRemoteTransportDelegate:self];
}

- (void)clearDelegatesOnTransport:(id)transport
{
  transportCopy = transport;
  [transportCopy setDelegate:0];
  v6 = transportCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setRemoteTransportDelegate:0];
}

- (BOOL)errorIndicatesThatInterruptionWasCausedByDecisionHandler:(id)handler
{
  userInfo = [handler userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
  LOBYTE(self) = [(CRKTransportPreflightOperation *)self isInsecureConnectionError:v5];

  return self;
}

- (BOOL)isInsecureConnectionError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CF9518]])
  {
    v5 = [errorCopy code] == 106;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)invalidateTransport
{
  [(CRKTransportPreflightOperation *)self setInvalidationTriggered:1];
  transport = [(CRKTransportPreflightOperation *)self transport];
  [transport invalidate];
}

- (void)finishWithTransport:(id)transport
{
  transportCopy = transport;
  [(CRKTransportPreflightOperation *)self clearDelegatesOnTransport:transportCopy];
  [transportCopy suspend];
  v5 = [[CRKTransportPreflightResultObject alloc] initWithTransport:transportCopy shouldResetBackoff:0];

  [(CRKTransportPreflightOperation *)self endOperationWithResultObject:v5];
}

- (void)finishWithShouldResetBackoff:(BOOL)backoff
{
  v4 = [[CRKTransportPreflightResultObject alloc] initWithTransport:0 shouldResetBackoff:backoff];
  [(CRKTransportPreflightOperation *)self endOperationWithResultObject:v4];
}

- (void)transportDidConnect:(id)connect
{
  connectCopy = connect;
  if ([(CRKTransportPreflightOperation *)self isExecuting]&& ![(CRKTransportPreflightOperation *)self invalidationTriggered])
  {
    if ([(CRKTransportPreflightOperation *)self isCommonNamePrefixValidForTransport:connectCopy])
    {
      [(CRKTransportPreflightOperation *)self finishWithTransport:connectCopy];
    }

    else
    {
      v5 = _CRKLogSession_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(CRKTransportPreflightOperation *)self transportDidConnect:connectCopy, v5];
      }

      [(CRKTransportPreflightOperation *)self invalidateTransport];
    }
  }
}

- (void)transport:(id)transport didInterruptWithError:(id)error
{
  errorCopy = error;
  if ([(CRKTransportPreflightOperation *)self isExecuting]&& ![(CRKTransportPreflightOperation *)self invalidationTriggered])
  {
    v6 = _CRKLogSession_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CRKTransportPreflightOperation *)self transport:errorCopy didInterruptWithError:v6];
    }

    [(CRKTransportPreflightOperation *)self setConnectionInterruptedDueToDecisionHandler:[(CRKTransportPreflightOperation *)self errorIndicatesThatInterruptionWasCausedByDecisionHandler:errorCopy]];
    [(CRKTransportPreflightOperation *)self invalidateTransport];
  }
}

- (void)transportDidInvalidate:(id)invalidate
{
  if ([(CRKTransportPreflightOperation *)self isExecuting])
  {
    if ([(CRKTransportPreflightOperation *)self cancellationRequested])
    {
      v5 = CATErrorWithCodeAndUserInfo();
      [(CRKTransportPreflightOperation *)self endOperationWithError:v5];
    }

    else
    {
      if ([(CRKTransportPreflightOperation *)self decisionHandlerWantsBackoffReset])
      {
        connectionInterruptedDueToDecisionHandler = [(CRKTransportPreflightOperation *)self connectionInterruptedDueToDecisionHandler];
      }

      else
      {
        connectionInterruptedDueToDecisionHandler = 0;
      }

      [(CRKTransportPreflightOperation *)self finishWithShouldResetBackoff:connectionInterruptedDueToDecisionHandler];
    }
  }
}

- (void)transport:(id)transport encounteredTrustDecisionWhileTryingToSecure:(id)secure
{
  transportCopy = transport;
  secureCopy = secure;
  if ([(CRKTransportPreflightOperation *)self isExecuting]&& ![(CRKTransportPreflightOperation *)self invalidationTriggered])
  {
    v9 = [(CRKTransportPreflightOperation *)self ASMUserIdentifierFromTrustDecision:secureCopy];
    session = [(CRKTransportPreflightOperation *)self session];
    delegate = [session delegate];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__CRKTransportPreflightOperation_transport_encounteredTrustDecisionWhileTryingToSecure___block_invoke;
    v12[3] = &unk_278DC2BE8;
    v14[1] = a2;
    v12[4] = self;
    objc_copyWeak(v14, &location);
    v13 = secureCopy;
    [delegate session:session encounteredUntrustedConnectionForASMInstructorIdentifier:v9 decisionHandler:v12];

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }
}

void __88__CRKTransportPreflightOperation_transport_encounteredTrustDecisionWhileTryingToSecure___block_invoke(uint64_t a1, uint64_t a2)
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    __88__CRKTransportPreflightOperation_transport_encounteredTrustDecisionWhileTryingToSecure___block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isExecuting] && (objc_msgSend(WeakRetained, "invalidationTriggered") & 1) == 0)
  {
    [WeakRetained handleContinuationDecision:a2 forTrustDecision:*(a1 + 40)];
  }
}

- (id)ASMUserIdentifierFromTrustDecision:(id)decision
{
  decisionCopy = decision;
  v4 = [CRKConcreteTrust alloc];
  trust = [decisionCopy trust];

  v6 = [(CRKConcreteTrust *)v4 initWithTrust:trust];
  leafCertificate = [(CRKConcreteTrust *)v6 leafCertificate];
  v8 = [CRKASMCertificateUserIdentifierExtractor userIdentifierFromCertificate:leafCertificate];

  return v8;
}

- (void)handleContinuationDecision:(unint64_t)decision forTrustDecision:(id)trustDecision
{
  trustDecisionCopy = trustDecision;
  if (decision == 2)
  {
    selfCopy2 = self;
    v9 = trustDecisionCopy;
    v10 = 1;
  }

  else
  {
    if (decision == 1)
    {
      [(CRKTransportPreflightOperation *)self setDecisionHandlerWantsBackoffReset:1];
    }

    else if (decision)
    {
      v7 = _CRKLogSession_0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CRKTransportPreflightOperation *)self handleContinuationDecision:decision forTrustDecision:v7];
      }
    }

    selfCopy2 = self;
    v9 = trustDecisionCopy;
    v10 = 0;
  }

  [(CRKTransportPreflightOperation *)selfCopy2 respondToTrustDecision:v9 withAllowUntrustedConnections:v10];
}

- (void)respondToTrustDecision:(id)decision withAllowUntrustedConnections:(BOOL)connections
{
  connectionsCopy = connections;
  decisionCopy = decision;
  v7 = _CRKLogSession_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(CRKTransportPreflightOperation *)self respondToTrustDecision:connectionsCopy withAllowUntrustedConnections:v7];
  }

  v8 = [CRKConcreteTrust alloc];
  trust = [decisionCopy trust];
  v10 = [(CRKConcreteTrust *)v8 initWithTrust:trust];

  v11 = _CRKLogSession_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CRKTransportPreflightOperation *)self respondToTrustDecision:v10 withAllowUntrustedConnections:v11];
  }

  [decisionCopy respondWithDecisionToAllowUntrustedConnection:connectionsCopy];
}

- (BOOL)isCommonNamePrefixValidForTransport:(id)transport
{
  v18 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CRKTransportPreflightOperation *)self isCommonNamePrefixValidForRemoteTransport:transportCopy];
  }

  else
  {
    v6 = _CRKLogSession_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      session = [(CRKTransportPreflightOperation *)self session];
      session2 = [(CRKTransportPreflightOperation *)self session];
      endpoint = [session2 endpoint];
      stringValue = [endpoint stringValue];
      v12 = 138543874;
      v13 = session;
      v14 = 2114;
      v15 = stringValue;
      v16 = 2114;
      v17 = transportCopy;
      _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "SESSION:%{public}@. IP:%{public}@. Not validating common name prefix of certificate because transport %{public}@ is not remote", &v12, 0x20u);
    }

    v5 = 1;
  }

  return v5;
}

- (BOOL)isCommonNamePrefixValidForRemoteTransport:(id)transport
{
  transportCopy = transport;
  v5 = [CRKConcreteTrust alloc];
  peerTrust = [transportCopy peerTrust];

  v7 = [(CRKConcreteTrust *)v5 initWithTrust:peerTrust];
  leafCertificate = [(CRKConcreteTrust *)v7 leafCertificate];
  v9 = _CRKLogSession_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CRKTransportPreflightOperation *)self isCommonNamePrefixValidForRemoteTransport:leafCertificate, v9];
  }

  commonNames = [leafCertificate commonNames];
  v11 = [(CRKTransportPreflightOperation *)self anyCommonNameInArrayHasLeaderPrefix:commonNames];

  return v11;
}

- (BOOL)anyCommonNameInArrayHasLeaderPrefix:(id)prefix
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  prefixCopy = prefix;
  v5 = [prefixCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(prefixCopy);
        }

        if ([(CRKTransportPreflightOperation *)self commonNameHasLeaderPrefix:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [prefixCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (CRKSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)transportDidConnect:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [a1 session];
  v7 = [a1 session];
  v8 = [v7 endpoint];
  v9 = [v8 stringValue];
  OUTLINED_FUNCTION_0_7();
  v14 = v10;
  v15 = v11;
  v16 = a2;
  OUTLINED_FUNCTION_2_3(&dword_243550000, a3, v12, "SESSION:%{public}@. IP:%{public}@. Invaliding transport %{public}@ because its common name prefix is invalid", v13);
}

- (void)transport:(NSObject *)a3 didInterruptWithError:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [a1 session];
  v7 = [a1 session];
  v8 = [v7 endpoint];
  v9 = [v8 stringValue];
  v10 = [a1 session];
  v11 = [v10 endpoint];
  v12 = [v11 stringValue];
  v13 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0_7();
  v17 = v9;
  v18 = v14;
  v19 = v12;
  v20 = v14;
  v21 = v15;
  _os_log_error_impl(&dword_243550000, a3, OS_LOG_TYPE_ERROR, "SESSION:%{public}@. IP:%{public}@. Error connecting to %{public}@: %{public}@", v16, 0x2Au);
}

void __88__CRKTransportPreflightOperation_transport_encounteredTrustDecisionWhileTryingToSecure___block_invoke_cold_1(uint64_t a1)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = NSStringFromSelector(v2);
  [v5 handleFailureInMethod:v2 object:v3 file:@"CRKTransportPreflightOperation.m" lineNumber:230 description:{@"%@ must be called from the main thread", v4}];
}

- (void)handleContinuationDecision:(NSObject *)a3 forTrustDecision:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 session];
  v7 = [a1 session];
  v8 = [v7 endpoint];
  v9 = [v8 stringValue];
  OUTLINED_FUNCTION_0_7();
  v13 = v10;
  v14 = 2048;
  v15 = a2;
  OUTLINED_FUNCTION_2_3(&dword_243550000, a3, v11, "SESSION:%{public}@. IP:%{public}@. Invalid CRKSessionContinuationDecision: %lu", v12);
}

- (void)respondToTrustDecision:(NSObject *)a3 withAllowUntrustedConnections:.cold.1(void *a1, char a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a1 session];
  v7 = [a1 session];
  v8 = [v7 endpoint];
  v9 = [v8 stringValue];
  v10 = @"NO";
  if (a2)
  {
    v10 = @"YES";
  }

  v11 = v10;
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_3(&dword_243550000, a3, v12, "SESSION:%{public}@. IP:%{public}@. Responding to user trust decision with: %{public}@", v13);
}

- (void)respondToTrustDecision:(NSObject *)a3 withAllowUntrustedConnections:.cold.2(void *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a1 session];
  v7 = [a1 session];
  v8 = [v7 endpoint];
  v9 = [v8 stringValue];
  v10 = [a2 leafCertificate];
  v11 = [v10 fingerprint];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_3(&dword_243550000, a3, v12, "SESSION:%{public}@. IP:%{public}@. Fingerprint %{public}@", v13);
}

- (void)isCommonNamePrefixValidForRemoteTransport:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [a1 session];
  v7 = [a1 session];
  v8 = [v7 endpoint];
  v9 = [v8 stringValue];
  v10 = [a2 fingerprint];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_3(&dword_243550000, a3, v11, "SESSION:%{public}@. IP:%{public}@. Fingerprint %{public}@", v12);
}

@end