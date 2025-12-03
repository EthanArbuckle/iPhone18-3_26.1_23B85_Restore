@interface DNDStateService
+ (id)serviceForClientIdentifier:(id)identifier;
- (BOOL)_queue_registerForStateUpdatesIfRequired;
- (id)_initWithClientIdentifier:(id)identifier;
- (id)queryCurrentStateWithError:(id *)error;
- (void)_queue_registerForStateUpdatesIfRequired;
- (void)addStateUpdateListener:(id)listener withCompletionHandler:(id)handler;
- (void)queryCurrentStateWithCompletionHandler:(id)handler;
- (void)remoteService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
- (void)removeStateUpdateListener:(id)listener;
@end

@implementation DNDStateService

- (BOOL)_queue_registerForStateUpdatesIfRequired
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSHashTable *)self->_stateUpdateListeners count]&& !self->_registeredForUpdates)
  {
    v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDStateService.registerForStateUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v5 = DNDLogState;
    if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering state update listener", &buf, 0xCu);
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__5;
    v19 = __Block_byref_object_dispose__5;
    v20 = 0;
    v6 = +[DNDRemoteServiceConnection sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__DNDStateService__queue_registerForStateUpdatesIfRequired__block_invoke;
    v10[3] = &unk_27843A0A8;
    v10[4] = &v11;
    v10[5] = &buf;
    [v6 registerForStateUpdatesWithRequestDetails:v4 completionHandler:v10];

    if (*(*(&buf + 1) + 40) && os_log_type_enabled(DNDLogState, OS_LOG_TYPE_ERROR))
    {
      [(DNDStateService *)v4 _queue_registerForStateUpdatesIfRequired];
    }

    self->_registeredForUpdates = *(v12 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v11, 8);
    os_activity_scope_leave(&state);
  }

  if ([(NSHashTable *)self->_stateUpdateListeners count])
  {
    registeredForUpdates = self->_registeredForUpdates;
  }

  else
  {
    registeredForUpdates = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return registeredForUpdates;
}

void __59__DNDStateService__queue_registerForStateUpdatesIfRequired__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken_5 != -1)
  {
    +[DNDStateService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DNDStateService_serviceForClientIdentifier___block_invoke_2;
  block[3] = &unk_27843A080;
  v10 = identifierCopy;
  v11 = &v13;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __46__DNDStateService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDStateService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_5;
  serviceForClientIdentifier__lockQueue_5 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_5;
  serviceForClientIdentifier__serviceByClientIdentifier_5 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __46__DNDStateService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_5 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_5;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (id)_initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = DNDStateService;
  v5 = [(DNDStateService *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.donotdisturb.StateService", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.donotdisturb.StateService.call-out", v9);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    v12 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    stateUpdateListeners = v5->_stateUpdateListeners;
    v5->_stateUpdateListeners = v14;

    v16 = +[DNDRemoteServiceConnection sharedInstance];
    [v16 addEventListener:v5];
  }

  return v5;
}

- (void)queryCurrentStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDStateService.queryCurrentState.async", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__DNDStateService_queryCurrentStateWithCompletionHandler___block_invoke;
  block[3] = &unk_27843A198;
  v10 = v5;
  selfCopy = self;
  v12 = handlerCopy;
  v7 = handlerCopy;
  v8 = v5;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

void __58__DNDStateService_queryCurrentStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:*(*(a1 + 40) + 24)];
  v3 = DNDLogState;
  if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v2;
    _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing async state request", buf, 0xCu);
  }

  v4 = +[DNDRemoteServiceConnection sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__DNDStateService_queryCurrentStateWithCompletionHandler___block_invoke_8;
  v9[3] = &unk_27843A8E0;
  v5 = v2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  [v4 queryStateWithRequestDetails:v5 completionHandler:v9];

  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__DNDStateService_queryCurrentStateWithCompletionHandler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DNDLogState;
    if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_ERROR))
    {
      __58__DNDStateService_queryCurrentStateWithCompletionHandler___block_invoke_8_cold_1(a1, v6, v7);
    }
  }

  v8 = *(*(a1 + 40) + 16);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__DNDStateService_queryCurrentStateWithCompletionHandler___block_invoke_9;
  v12[3] = &unk_27843A148;
  v13 = *(a1 + 32);
  v14 = v5;
  v9 = *(a1 + 48);
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, v12);
}

uint64_t __58__DNDStateService_queryCurrentStateWithCompletionHandler___block_invoke_9(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DNDLogState;
  if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v9 = 138543619;
    v10 = v3;
    v11 = 2113;
    v12 = v4;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got current state, state=%{private}@", &v9, 0x16u);
  }

  v5 = a1[6];
  v6 = a1[5];
  result = (*(a1[7] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)queryCurrentStateWithError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDStateService.queryCurrentState", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogState;
  if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing state request", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__5;
  v16[3] = __Block_byref_object_dispose__5;
  v17 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__DNDStateService_queryCurrentStateWithError___block_invoke;
  v14[3] = &unk_27843A908;
  v14[4] = &buf;
  v14[5] = &v15;
  [v8 queryStateWithRequestDetails:v6 completionHandler:v14];

  if (*(v16[0] + 40))
  {
    if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_ERROR))
    {
      [(DNDStateService *)v6 queryCurrentStateWithError:v16];
    }

    if (error)
    {
      *error = *(v16[0] + 40);
    }
  }

  v9 = DNDLogState;
  if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(&buf + 1) + 40);
    *v19 = 138543619;
    v20 = v6;
    v21 = 2113;
    v22 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got current state, state=%{private}@", v19, 0x16u);
  }

  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __46__DNDStateService_queryCurrentStateWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)addStateUpdateListener:(id)listener withCompletionHandler:(id)handler
{
  listenerCopy = listener;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDStateService.addStateUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DNDStateService_addStateUpdateListener_withCompletionHandler___block_invoke;
  block[3] = &unk_27843A198;
  v13 = listenerCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = listenerCopy;
  dispatch_sync(queue, block);

  os_activity_scope_leave(&state);
}

void __64__DNDStateService_addStateUpdateListener_withCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = DNDLogState;
  if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Adding state update listener: listener=%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 40) + 32) addObject:*(a1 + 32)];
  v4 = [*(a1 + 40) _queue_registerForStateUpdatesIfRequired];
  v5 = DNDLogState;
  if (v4)
  {
    if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "Registered for state updates: listener=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_ERROR))
    {
      __64__DNDStateService_addStateUpdateListener_withCompletionHandler___block_invoke_cold_1((a1 + 32), v5);
    }

    v7 = *(*(a1 + 40) + 32);
    objc_sync_enter(v7);
    [*(*(a1 + 40) + 32) removeObject:*(a1 + 32)];
    objc_sync_exit(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(*(a1 + 40) + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__DNDStateService_addStateUpdateListener_withCompletionHandler___block_invoke_11;
    v11[3] = &unk_27843A1C0;
    v12 = v8;
    v13 = v4;
    dispatch_async(v9, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeStateUpdateListener:(id)listener
{
  listenerCopy = listener;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDStateService.removeStateUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__DNDStateService_removeStateUpdateListener___block_invoke;
  v8[3] = &unk_27843A1E8;
  v9 = listenerCopy;
  selfCopy = self;
  v7 = listenerCopy;
  dispatch_sync(queue, v8);

  os_activity_scope_leave(&state);
}

uint64_t __45__DNDStateService_removeStateUpdateListener___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DNDLogState;
  if (os_log_type_enabled(DNDLogState, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Removing state update listener: listener=%{public}@", &v6, 0xCu);
  }

  result = [*(*(a1 + 40) + 32) removeObject:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)remoteService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__DNDStateService_remoteService_didReceiveDoNotDisturbStateUpdate___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = updateCopy;
  v7 = updateCopy;
  dispatch_sync(queue, v8);
}

void __67__DNDStateService_remoteService_didReceiveDoNotDisturbStateUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__DNDStateService_remoteService_didReceiveDoNotDisturbStateUpdate___block_invoke_2;
  block[3] = &unk_27843A210;
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v6 = v2;
  dispatch_async(v5, block);
}

void __67__DNDStateService_remoteService_didReceiveDoNotDisturbStateUpdate___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        [*(*(&v8 + 1) + 8 * v6++) stateService:*(a1 + 40) didReceiveDoNotDisturbStateUpdate:{*(a1 + 48), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __58__DNDStateService_queryCurrentStateWithCompletionHandler___block_invoke_8_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0(&dword_22002F000, a2, a3, "[%{public}@] Error when getting state, error='%{public}@'", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)queryCurrentStateWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v3, v4, "[%{public}@] Error when getting state, error='%{public}@'");
  v5 = *MEMORY[0x277D85DE8];
}

void __64__DNDStateService_addStateUpdateListener_withCompletionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_22002F000, a2, OS_LOG_TYPE_ERROR, "Did not register for state updates, will remove listener: listener=%{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_queue_registerForStateUpdatesIfRequired
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v3, v4, "[%{public}@] Error when registering state update listener, error='%{public}@'");
  v5 = *MEMORY[0x277D85DE8];
}

@end