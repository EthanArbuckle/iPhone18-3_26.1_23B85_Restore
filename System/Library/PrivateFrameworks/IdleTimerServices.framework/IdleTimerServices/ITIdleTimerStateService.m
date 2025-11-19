@interface ITIdleTimerStateService
- (BOOL)addIdleTimerConfiguration:(id)a3 fromProcess:(id)a4 forReason:(id)a5;
- (BOOL)clientConfiguration:(id)a3 handleIdleEvent:(unint64_t)a4;
- (BOOL)isIdleTimerServiceAvailable;
- (ITIdleTimerStateService)initWithDispatchQueue:(id)a3 delegate:(id)a4;
- (ITIdleTimerStateServiceDelegate)delegate;
- (id)_identifierForClientProcess:(id)a3;
- (void)_addStateCaptureHandler;
- (void)clientDidDisconnect:(id)a3;
- (void)dealloc;
- (void)removeIdleTimerConfigurationFromProcess:(id)a3 forReason:(id)a4;
@end

@implementation ITIdleTimerStateService

- (ITIdleTimerStateService)initWithDispatchQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ITIdleTimerStateService;
  v9 = [(ITIdleTimerStateService *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calloutDispatchQueue, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionsByReason = v10->_assertionsByReason;
    v10->_assertionsByReason = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionReasonsByClientID = v10->_assertionReasonsByClientID;
    v10->_assertionReasonsByClientID = v13;

    v15 = [[ITIdleTimerStateServer alloc] initWithCalloutQueue:v10->_calloutDispatchQueue delegate:v10];
    server = v10->_server;
    v10->_server = v15;

    [(ITIdleTimerStateService *)v10 _addStateCaptureHandler];
  }

  return v10;
}

- (void)dealloc
{
  stateCaptureAssertion = self->_stateCaptureAssertion;
  if (stateCaptureAssertion)
  {
    [(BSInvalidatable *)stateCaptureAssertion invalidate];
    v4 = self->_stateCaptureAssertion;
    self->_stateCaptureAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = ITIdleTimerStateService;
  [(ITIdleTimerStateService *)&v5 dealloc];
}

- (BOOL)addIdleTimerConfiguration:(id)a3 fromProcess:(id)a4 forReason:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  calloutDispatchQueue = self->_calloutDispatchQueue;
  BSDispatchQueueAssert();
  v12 = [(ITIdleTimerStateService *)self _identifierForClientProcess:v9];
  v13 = [(NSMutableDictionary *)self->_assertionReasonsByClientID objectForKeyedSubscript:v12];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)self->_assertionReasonsByClientID setObject:v13 forKeyedSubscript:v12];
  }

  v14 = [(NSMutableDictionary *)self->_assertionsByReason objectForKeyedSubscript:v10];

  if (v14)
  {
    v15 = ITLogIdleTimer();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = 138543874;
      v24 = v22;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      _os_log_error_impl(&dword_254ABE000, v15, OS_LOG_TYPE_ERROR, "%{public}@ - received duplicate assertion request from client: %{public}@ for reason: %{public}@", &v23, 0x20u);
    }

    v16 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = [WeakRetained acquireIdleTimerAssertionWithConfiguration:v8 fromClient:v9 forReason:v10];

    v16 = v18 != 0;
    if (v18)
    {
      [(NSMutableDictionary *)self->_assertionsByReason setObject:v18 forKeyedSubscript:v10];
      [v13 addObject:v10];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)removeIdleTimerConfigurationFromProcess:(id)a3 forReason:(id)a4
{
  v11 = a4;
  calloutDispatchQueue = self->_calloutDispatchQueue;
  v7 = a3;
  BSDispatchQueueAssert();
  v8 = [(ITIdleTimerStateService *)self _identifierForClientProcess:v7];

  v9 = [(NSMutableDictionary *)self->_assertionReasonsByClientID objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_assertionsByReason objectForKeyedSubscript:v11];
    [(NSMutableDictionary *)self->_assertionsByReason removeObjectForKey:v11];
    [v10 invalidate];
    [v9 removeObject:v11];
  }
}

- (void)clientDidDisconnect:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  calloutDispatchQueue = self->_calloutDispatchQueue;
  BSDispatchQueueAssert();
  v6 = [(ITIdleTimerStateService *)self _identifierForClientProcess:v4];
  v7 = [(NSMutableDictionary *)self->_assertionReasonsByClientID objectForKeyedSubscript:v6];
  v8 = [v7 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        [(ITIdleTimerStateService *)self removeIdleTimerConfigurationFromProcess:v4 forReason:*(*(&v15 + 1) + 8 * v13++), v15];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(NSMutableDictionary *)self->_assertionReasonsByClientID removeObjectForKey:v6];
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isIdleTimerServiceAvailable
{
  v2 = self;
  calloutDispatchQueue = self->_calloutDispatchQueue;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&v2->_delegate);
  LOBYTE(v2) = WeakRetained != 0;

  return v2;
}

- (BOOL)clientConfiguration:(id)a3 handleIdleEvent:(unint64_t)a4
{
  calloutDispatchQueue = self->_calloutDispatchQueue;
  v7 = a3;
  BSDispatchQueueAssert();
  LOBYTE(a4) = [(ITIdleTimerStateServer *)self->_server clientConfiguration:v7 handleIdleEvent:a4];

  return a4;
}

- (id)_identifierForClientProcess:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 pid];

  v7 = [v3 stringWithFormat:@"%@:%ld", v5, v6];

  return v7;
}

- (void)_addStateCaptureHandler
{
  objc_initWeak(&location, self);
  calloutDispatchQueue = self->_calloutDispatchQueue;
  objc_copyWeak(&v6, &location);
  v4 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureAssertion = self->_stateCaptureAssertion;
  self->_stateCaptureAssertion = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

__CFString *__50__ITIdleTimerStateService__addStateCaptureHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[4] description];
  }

  else
  {
    v3 = &stru_2866F3550;
  }

  return v3;
}

- (ITIdleTimerStateServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end