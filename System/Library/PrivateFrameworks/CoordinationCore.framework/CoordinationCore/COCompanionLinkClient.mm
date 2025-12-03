@interface COCompanionLinkClient
- (BOOL)usingOnDemandConnection;
- (COCompanionLinkClient)initWithCompanionLinkClient:(id)client;
- (COCompanionLinkClientFactory)factory;
- (OS_dispatch_queue)dispatchQueue;
- (id)activeDevices;
- (id)destinationDevice;
- (id)deviceChangedHandler;
- (id)deviceFoundHandler;
- (id)deviceLostHandler;
- (id)disconnectHandler;
- (id)errorFlagsChangedHandler;
- (id)eventIDRegistrationCompletion;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (id)localDevice;
- (id)localDeviceUpdatedHandler;
- (id)requestIDRegistrationCompletion;
- (id)stateUpdatedHandler;
- (unint64_t)controlFlags;
- (unint64_t)errorFlags;
- (unint64_t)flags;
- (void)_withLock:(id)lock;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)deregisterEventID:(id)d;
- (void)deregisterRequestID:(id)d;
- (void)didActivateWithError:(id)error;
- (void)didChangeErrorFlags;
- (void)didDisconnect;
- (void)didInterrupt;
- (void)didInvalidate;
- (void)didUpdateState;
- (void)invalidate;
- (void)registerEventID:(id)d options:(id)options handler:(id)handler;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)setControlFlags:(unint64_t)flags;
- (void)setDeviceChangedHandler:(id)handler;
- (void)setDeviceFoundHandler:(id)handler;
- (void)setDeviceLostHandler:(id)handler;
- (void)setDisconnectHandler:(id)handler;
- (void)setDispatchQueue:(id)queue;
- (void)setErrorFlagsChangedHandler:(id)handler;
- (void)setEventIDRegistrationCompletion:(id)completion;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
- (void)setLocalDeviceUpdatedHandler:(id)handler;
- (void)setRequestIDRegistrationCompletion:(id)completion;
- (void)setStateUpdatedHandler:(id)handler;
@end

@implementation COCompanionLinkClient

- (COCompanionLinkClient)initWithCompanionLinkClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = COCompanionLinkClient;
  v6 = [(COCompanionLinkClient *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_isInvalidated = 0;
    objc_storeStrong(&v6->_dispatchQueue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v7->_rapport, client);
    v8 = [MEMORY[0x277CBEB58] set];
    registeredEventIDs = v7->_registeredEventIDs;
    v7->_registeredEventIDs = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    registeredRequestIDs = v7->_registeredRequestIDs;
    v7->_registeredRequestIDs = v10;

    v12 = COCoreLogForCategory(18);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = v7;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p new link created", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  registeredRequestIDs = [(COCompanionLinkClient *)self registeredRequestIDs];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__COCompanionLinkClient_dealloc__block_invoke;
  v10[3] = &unk_278E16AB0;
  v10[4] = self;
  [registeredRequestIDs enumerateObjectsUsingBlock:v10];

  registeredEventIDs = [(COCompanionLinkClient *)self registeredEventIDs];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__COCompanionLinkClient_dealloc__block_invoke_2;
  v9[3] = &unk_278E16AB0;
  v9[4] = self;
  [registeredEventIDs enumerateObjectsUsingBlock:v9];

  factory = [(COCompanionLinkClient *)self factory];
  [factory removeClient:self];

  v6 = COCoreLogForCategory(18);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p link destroyed", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = COCompanionLinkClient;
  [(COCompanionLinkClient *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)didActivateWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__COCompanionLinkClient_didActivateWithError___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

void __46__COCompanionLinkClient_didActivateWithError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 3) == 1)
  {
    *(v2 + 24) |= 2uLL;
    v3 = [*(a1 + 32) activationHandler];
    [*(a1 + 32) setActivationHandler:0];
    [*(a1 + 32) setActivationError:*(a1 + 40)];
    v4 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 72));
    v5 = v4;
    if (!*(a1 + 40) && v4 && ([*(a1 + 32) rapport], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "activeDevices"), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
    {
      v8 = COCoreLogForCategory(18);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        *buf = 134218240;
        v23 = v9;
        v24 = 2048;
        v25 = [v7 count];
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p did activate with %ld devices", buf, 0x16u);
      }
    }

    else
    {
      v8 = COCoreLogForCategory(18);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 134217984;
        v23 = v12;
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p did activate", buf, 0xCu);
      }

      v7 = 0;
    }

    v13 = *(*(a1 + 32) + 16);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__COCompanionLinkClient_didActivateWithError___block_invoke_3;
    v17[3] = &unk_278E18478;
    v20 = v3;
    v18 = *(a1 + 40);
    v19 = v7;
    v21 = v5;
    v14 = v5;
    v15 = v7;
    v10 = v3;
    dispatch_async(v13, v17);
  }

  else
  {
    v10 = COCoreLogForCategory(18);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 134217984;
      v23 = v11;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p not activated yet so ignoring underlying activation", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __46__COCompanionLinkClient_didActivateWithError___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__COCompanionLinkClient_didActivateWithError___block_invoke_2;
  v4[3] = &unk_278E18450;
  v5 = *(a1 + 56);
  [v3 enumerateObjectsUsingBlock:v4];
}

- (void)didInterrupt
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __37__COCompanionLinkClient_didInterrupt__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COCompanionLinkClient *)self _withLock:v2];
}

uint64_t __37__COCompanionLinkClient_didInterrupt__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 32));
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    dispatch_async(*(*(a1 + 32) + 16), v2);
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)didUpdateState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__COCompanionLinkClient_didUpdateState__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COCompanionLinkClient *)self _withLock:v2];
}

uint64_t __39__COCompanionLinkClient_didUpdateState__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 24) & 8) == 0)
  {
    v2 = result;
    v3 = MEMORY[0x245D5FF10](*(v1 + 40));
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      dispatch_async(*(*(v2 + 32) + 16), v3);
      v4 = v5;
    }

    return MEMORY[0x2821F96F8](v3, v4);
  }

  return result;
}

- (void)didChangeErrorFlags
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__COCompanionLinkClient_didChangeErrorFlags__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COCompanionLinkClient *)self _withLock:v2];
}

uint64_t __44__COCompanionLinkClient_didChangeErrorFlags__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 24) & 8) == 0)
  {
    v2 = result;
    v3 = MEMORY[0x245D5FF10](*(v1 + 48));
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      dispatch_async(*(*(v2 + 32) + 16), v3);
      v4 = v5;
    }

    return MEMORY[0x2821F96F8](v3, v4);
  }

  return result;
}

- (void)didDisconnect
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__COCompanionLinkClient_didDisconnect__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COCompanionLinkClient *)self _withLock:v2];
}

uint64_t __38__COCompanionLinkClient_didDisconnect__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 24);
  if ((v3 & 0xC) == 0)
  {
    v4 = result;
    *(v2 + 24) = v3 | 4;
    v5 = MEMORY[0x245D5FF10](*(*(result + 32) + 56));
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      dispatch_async(*(*(v4 + 32) + 16), v5);
      v6 = v7;
    }

    return MEMORY[0x2821F96F8](v5, v6);
  }

  return result;
}

- (void)didInvalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__COCompanionLinkClient_didInvalidate__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COCompanionLinkClient *)self _withLock:v2];
}

void __38__COCompanionLinkClient_didInvalidate__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 8) != 0)
  {
    v9 = COCoreLogForCategory(18);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 134217984;
      v15 = v10;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p did secondary invalidation", buf, 0xCu);
    }
  }

  else
  {
    atomic_store(1u, (v2 + 12));
    *(*(a1 + 32) + 24) |= 0xFuLL;
    v3 = [*(a1 + 32) registeredRequestIDs];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__COCompanionLinkClient_didInvalidate__block_invoke_2;
    v13[3] = &unk_278E16AB0;
    v13[4] = *(a1 + 32);
    [v3 enumerateObjectsUsingBlock:v13];

    v4 = [*(a1 + 32) registeredEventIDs];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__COCompanionLinkClient_didInvalidate__block_invoke_3;
    v12[3] = &unk_278E16AB0;
    v12[4] = *(a1 + 32);
    [v4 enumerateObjectsUsingBlock:v12];

    v5 = [*(a1 + 32) registeredEventIDs];
    [v5 removeAllObjects];

    v6 = [*(a1 + 32) registeredRequestIDs];
    [v6 removeAllObjects];

    v7 = COCoreLogForCategory(18);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 134217984;
      v15 = v8;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p did invalidate", buf, 0xCu);
    }

    v9 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 64));
    if (v9)
    {
      dispatch_async(*(*(a1 + 32) + 16), v9);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)flags
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__COCompanionLinkClient_flags__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (OS_dispatch_queue)dispatchQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__23;
  v9 = __Block_byref_object_dispose__23;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__COCompanionLinkClient_dispatchQueue__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__COCompanionLinkClient_setDispatchQueue___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = queueCopy;
  v5 = queueCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

- (id)interruptionHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__COCompanionLinkClient_interruptionHandler__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__COCompanionLinkClient_interruptionHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__COCompanionLinkClient_setInterruptionHandler___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

uint64_t __48__COCompanionLinkClient_setInterruptionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)stateUpdatedHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__COCompanionLinkClient_stateUpdatedHandler__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__COCompanionLinkClient_stateUpdatedHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setStateUpdatedHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__COCompanionLinkClient_setStateUpdatedHandler___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

uint64_t __48__COCompanionLinkClient_setStateUpdatedHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)errorFlagsChangedHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__COCompanionLinkClient_errorFlagsChangedHandler__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __49__COCompanionLinkClient_errorFlagsChangedHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setErrorFlagsChangedHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__COCompanionLinkClient_setErrorFlagsChangedHandler___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

uint64_t __53__COCompanionLinkClient_setErrorFlagsChangedHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)disconnectHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__COCompanionLinkClient_disconnectHandler__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __42__COCompanionLinkClient_disconnectHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setDisconnectHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__COCompanionLinkClient_setDisconnectHandler___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

uint64_t __46__COCompanionLinkClient_setDisconnectHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)invalidationHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__COCompanionLinkClient_invalidationHandler__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__COCompanionLinkClient_invalidationHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 64));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__COCompanionLinkClient_setInvalidationHandler___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

uint64_t __48__COCompanionLinkClient_setInvalidationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)deviceFoundHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__COCompanionLinkClient_deviceFoundHandler__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __43__COCompanionLinkClient_deviceFoundHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 72));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setDeviceFoundHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__COCompanionLinkClient_setDeviceFoundHandler___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

uint64_t __47__COCompanionLinkClient_setDeviceFoundHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)deviceLostHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__COCompanionLinkClient_deviceLostHandler__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __42__COCompanionLinkClient_deviceLostHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 80));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setDeviceLostHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__COCompanionLinkClient_setDeviceLostHandler___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

uint64_t __46__COCompanionLinkClient_setDeviceLostHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)localDeviceUpdatedHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__COCompanionLinkClient_localDeviceUpdatedHandler__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __50__COCompanionLinkClient_localDeviceUpdatedHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 88));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setLocalDeviceUpdatedHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__COCompanionLinkClient_setLocalDeviceUpdatedHandler___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

uint64_t __54__COCompanionLinkClient_setLocalDeviceUpdatedHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)deviceChangedHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__COCompanionLinkClient_deviceChangedHandler__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __45__COCompanionLinkClient_deviceChangedHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 96));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setDeviceChangedHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__COCompanionLinkClient_setDeviceChangedHandler___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

uint64_t __49__COCompanionLinkClient_setDeviceChangedHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setRequestIDRegistrationCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__COCompanionLinkClient_setRequestIDRegistrationCompletion___block_invoke;
  v6[3] = &unk_278E184C8;
  v6[4] = self;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(COCompanionLinkClient *)self _withLock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__COCompanionLinkClient_setRequestIDRegistrationCompletion___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__COCompanionLinkClient_setRequestIDRegistrationCompletion___block_invoke_2;
  v5[3] = &unk_278E184A0;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  v2 = MEMORY[0x245D5FF10](v5);
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  objc_destroyWeak(&v7);
}

void __60__COCompanionLinkClient_setRequestIDRegistrationCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__COCompanionLinkClient_setRequestIDRegistrationCompletion___block_invoke_3;
    v6[3] = &unk_278E15A18;
    v8 = &v9;
    v6[4] = WeakRetained;
    v7 = v3;
    [v5 _withLock:v6];
    if (*(v10 + 24) == 1)
    {
      (*(*(a1 + 32) + 16))();
    }

    _Block_object_dispose(&v9, 8);
  }
}

void __60__COCompanionLinkClient_setRequestIDRegistrationCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredRequestIDs];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (id)requestIDRegistrationCompletion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__COCompanionLinkClient_requestIDRegistrationCompletion__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __56__COCompanionLinkClient_requestIDRegistrationCompletion__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 104));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setEventIDRegistrationCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__COCompanionLinkClient_setEventIDRegistrationCompletion___block_invoke;
  v6[3] = &unk_278E184C8;
  v6[4] = self;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(COCompanionLinkClient *)self _withLock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__COCompanionLinkClient_setEventIDRegistrationCompletion___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__COCompanionLinkClient_setEventIDRegistrationCompletion___block_invoke_2;
  v5[3] = &unk_278E184A0;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  v2 = MEMORY[0x245D5FF10](v5);
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  objc_destroyWeak(&v7);
}

void __58__COCompanionLinkClient_setEventIDRegistrationCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__COCompanionLinkClient_setEventIDRegistrationCompletion___block_invoke_3;
    v6[3] = &unk_278E15A18;
    v8 = &v9;
    v6[4] = WeakRetained;
    v7 = v3;
    [v5 _withLock:v6];
    if (*(v10 + 24) == 1)
    {
      (*(*(a1 + 32) + 16))();
    }

    _Block_object_dispose(&v9, 8);
  }
}

void __58__COCompanionLinkClient_setEventIDRegistrationCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredEventIDs];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (id)eventIDRegistrationCompletion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__COCompanionLinkClient_eventIDRegistrationCompletion__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCompanionLinkClient *)self _withLock:v4];
  v2 = MEMORY[0x245D5FF10](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __54__COCompanionLinkClient_eventIDRegistrationCompletion__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245D5FF10](*(*(a1 + 32) + 112));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)localDevice
{
  rapport = [(COCompanionLinkClient *)self rapport];
  localDevice = [rapport localDevice];

  return localDevice;
}

- (id)destinationDevice
{
  rapport = [(COCompanionLinkClient *)self rapport];
  destinationDevice = [rapport destinationDevice];

  return destinationDevice;
}

- (id)activeDevices
{
  factory = [(COCompanionLinkClient *)self factory];
  v4 = factory;
  if (factory)
  {
    activeDevices = [factory activeDevices];
  }

  else
  {
    rapport = [(COCompanionLinkClient *)self rapport];
    activeDevices = [rapport activeDevices];
  }

  return activeDevices;
}

- (unint64_t)controlFlags
{
  rapport = [(COCompanionLinkClient *)self rapport];
  controlFlags = [rapport controlFlags];

  return controlFlags;
}

- (void)setControlFlags:(unint64_t)flags
{
  if (([(COCompanionLinkClient *)self flags]& 3) == 0)
  {
    rapport = [(COCompanionLinkClient *)self rapport];
    [rapport setControlFlags:flags];
  }
}

- (BOOL)usingOnDemandConnection
{
  rapport = [(COCompanionLinkClient *)self rapport];
  usingOnDemandConnection = [rapport usingOnDemandConnection];

  return usingOnDemandConnection;
}

- (unint64_t)errorFlags
{
  rapport = [(COCompanionLinkClient *)self rapport];
  errorFlags = [rapport errorFlags];

  return errorFlags;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__COCompanionLinkClient_activateWithCompletion___block_invoke;
  v6[3] = &unk_278E16240;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(COCompanionLinkClient *)self _withLock:v6];
}

void __48__COCompanionLinkClient_activateWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 24) & 1) == 0)
  {
    v2 = COCoreLogForCategory(18);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 134217984;
      v15 = v3;
      _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p activating", buf, 0xCu);
    }

    *(*(a1 + 32) + 24) |= 1uLL;
    [*(a1 + 32) setActivationHandler:*(a1 + 40)];
    v4 = [*(a1 + 32) factory];
    [v4 activateCompanionLinkClient:*(a1 + 32)];
LABEL_9:

    goto LABEL_10;
  }

  if (*(a1 + 40))
  {
    v5 = COCoreLogForCategory(18);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 134217984;
      v15 = v6;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p activating already activated link", buf, 0xCu);
    }

    v7 = [*(a1 + 32) activationError];
    v8 = *(*(a1 + 32) + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__COCompanionLinkClient_activateWithCompletion___block_invoke_9;
    v11[3] = &unk_278E159A0;
    v9 = *(a1 + 40);
    v12 = v7;
    v13 = v9;
    v4 = v7;
    dispatch_async(v8, v11);

    goto LABEL_9;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__COCompanionLinkClient_invalidate__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COCompanionLinkClient *)self _withLock:v2];
}

void __35__COCompanionLinkClient_invalidate__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  v3 = COCoreLogForCategory(18);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if ((v2 & 8) != 0)
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p ignoring attempt to invalidate", &v8, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p invalidating", &v8, 0xCu);
    }

    v3 = [*(a1 + 32) factory];
    [v3 invalidateCompanionLinkClient:*(a1 + 32)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerEventID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__COCompanionLinkClient_registerEventID_options_handler___block_invoke;
  v17[3] = &unk_278E156B0;
  v17[4] = self;
  v11 = dCopy;
  v18 = v11;
  [(COCompanionLinkClient *)self _withLock:v17];
  rapport = [(COCompanionLinkClient *)self rapport];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__COCompanionLinkClient_registerEventID_options_handler___block_invoke_2;
  v14[3] = &unk_278E18518;
  objc_copyWeak(&v16, &location);
  v13 = handlerCopy;
  v15 = v13;
  [rapport registerEventID:v11 options:optionsCopy handler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __57__COCompanionLinkClient_registerEventID_options_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredEventIDs];
  [v2 addObject:*(a1 + 40)];
}

void __57__COCompanionLinkClient_registerEventID_options_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__COCompanionLinkClient_registerEventID_options_handler___block_invoke_3;
    block[3] = &unk_278E184F0;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)deregisterEventID:(id)d
{
  dCopy = d;
  rapport = [(COCompanionLinkClient *)self rapport];
  [rapport deregisterEventID:dCopy];
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__COCompanionLinkClient_registerRequestID_options_handler___block_invoke;
  v17[3] = &unk_278E156B0;
  v17[4] = self;
  v11 = dCopy;
  v18 = v11;
  [(COCompanionLinkClient *)self _withLock:v17];
  rapport = [(COCompanionLinkClient *)self rapport];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__COCompanionLinkClient_registerRequestID_options_handler___block_invoke_2;
  v14[3] = &unk_278E18540;
  objc_copyWeak(&v16, &location);
  v13 = handlerCopy;
  v15 = v13;
  [rapport registerRequestID:v11 options:optionsCopy handler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __59__COCompanionLinkClient_registerRequestID_options_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredRequestIDs];
  [v2 addObject:*(a1 + 40)];
}

void __59__COCompanionLinkClient_registerRequestID_options_handler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained dispatchQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__COCompanionLinkClient_registerRequestID_options_handler___block_invoke_3;
    v13[3] = &unk_278E18478;
    v16 = *(a1 + 32);
    v14 = v7;
    v15 = v8;
    v17 = v9;
    dispatch_async(v12, v13);
  }
}

- (void)deregisterRequestID:(id)d
{
  dCopy = d;
  rapport = [(COCompanionLinkClient *)self rapport];
  [rapport deregisterRequestID:dCopy];
}

- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  rapport = [(COCompanionLinkClient *)self rapport];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__COCompanionLinkClient_sendEventID_event_options_completion___block_invoke;
  v16[3] = &unk_278E15C10;
  objc_copyWeak(&v18, &location);
  v15 = completionCopy;
  v17 = v15;
  [rapport sendEventID:dCopy event:eventCopy options:optionsCopy completion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __62__COCompanionLinkClient_sendEventID_event_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__COCompanionLinkClient_sendEventID_event_options_completion___block_invoke_2;
    v7[3] = &unk_278E159A0;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  rapport = [(COCompanionLinkClient *)self rapport];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__COCompanionLinkClient_sendRequestID_request_options_responseHandler___block_invoke;
  v16[3] = &unk_278E18568;
  objc_copyWeak(&v18, &location);
  v15 = handlerCopy;
  v17 = v15;
  [rapport sendRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __71__COCompanionLinkClient_sendRequestID_request_options_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained dispatchQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__COCompanionLinkClient_sendRequestID_request_options_responseHandler___block_invoke_2;
    v13[3] = &unk_278E15D50;
    v17 = *(a1 + 32);
    v14 = v7;
    v15 = v8;
    v16 = v9;
    dispatch_async(v12, v13);
  }
}

- (COCompanionLinkClientFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

@end