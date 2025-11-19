@interface DNDMeDeviceService
+ (id)serviceForClientIdentifier:(id)a3;
- (BOOL)_queue_registerForStateUpdatesIfRequired;
- (id)_initWithClientIdentifier:(id)a3;
- (void)_queue_registerForStateUpdatesIfRequired;
- (void)addListener:(id)a3 withCompletionHandler:(id)a4;
- (void)queryCurrentStateWithCompletionHandler:(id)a3;
- (void)remoteService:(id)a3 didReceiveUpdatedMeDeviceState:(id)a4;
- (void)removeListener:(id)a3;
@end

@implementation DNDMeDeviceService

+ (id)serviceForClientIdentifier:(id)a3
{
  v4 = a3;
  if (serviceForClientIdentifier__onceToken_0 != -1)
  {
    +[DNDMeDeviceService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DNDMeDeviceService_serviceForClientIdentifier___block_invoke_2;
  block[3] = &unk_27843A080;
  v10 = v4;
  v11 = &v13;
  v12 = a1;
  v6 = v4;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __49__DNDMeDeviceService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDMeDeviceService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_0;
  serviceForClientIdentifier__lockQueue_0 = v1;

  serviceForClientIdentifier__serviceByClientIdentifier_0 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];

  return MEMORY[0x2821F96F8]();
}

void __49__DNDMeDeviceService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_0 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_0;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (void)queryCurrentStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDMeDeviceService.queryCurrentState.async", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DNDMeDeviceService_queryCurrentStateWithCompletionHandler___block_invoke;
  block[3] = &unk_27843A198;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

void __61__DNDMeDeviceService_queryCurrentStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:*(*(a1 + 40) + 40)];
  v3 = DNDLogMeDeviceService;
  if (os_log_type_enabled(DNDLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v2;
    _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing async 'Me Device' state request", buf, 0xCu);
  }

  v4 = +[DNDRemoteServiceConnection sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__DNDMeDeviceService_queryCurrentStateWithCompletionHandler___block_invoke_5;
  v9[3] = &unk_27843A170;
  v5 = v2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  [v4 queryMeDeviceStateWithRequestDetails:v5 completionHandler:v9];

  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__DNDMeDeviceService_queryCurrentStateWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DNDLogMeDeviceService;
    if (os_log_type_enabled(DNDLogMeDeviceService, OS_LOG_TYPE_ERROR))
    {
      __61__DNDMeDeviceService_queryCurrentStateWithCompletionHandler___block_invoke_5_cold_1(a1, v6, v7);
    }
  }

  v8 = *(*(a1 + 40) + 16);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__DNDMeDeviceService_queryCurrentStateWithCompletionHandler___block_invoke_6;
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

void __61__DNDMeDeviceService_queryCurrentStateWithCompletionHandler___block_invoke_6(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = DNDLogMeDeviceService;
  if (os_log_type_enabled(DNDLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = DNDMeDeviceStatusToString([v3 meDeviceStatus]);
    v7 = [*(a1 + 40) meDeviceName];
    v11 = 138543874;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got current 'Me Device' state, meDeviceStatus=%{public}@, meDeviceName=%{public}@", &v11, 0x20u);
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    v8 = [[DNDMeDeviceState alloc] initWithStatus:0 name:0];
  }

  v9 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addListener:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDMeDeviceService.addListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DNDMeDeviceService_addListener_withCompletionHandler___block_invoke;
  block[3] = &unk_27843A198;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(queue, block);
}

void __56__DNDMeDeviceService_addListener_withCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = DNDLogMeDeviceService;
  if (os_log_type_enabled(DNDLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Adding 'Me Device' state update listener: listener=%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  v4 = [*(a1 + 40) _queue_registerForStateUpdatesIfRequired];
  v5 = v4;
  v6 = DNDLogMeDeviceService;
  if (v4)
  {
    if (os_log_type_enabled(DNDLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Registered for 'Me Device' state updates: listener=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogMeDeviceService, OS_LOG_TYPE_ERROR))
    {
      __56__DNDMeDeviceService_addListener_withCompletionHandler___block_invoke_cold_1((a1 + 32), v6);
    }

    [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(*(a1 + 40) + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__DNDMeDeviceService_addListener_withCompletionHandler___block_invoke_9;
    v11[3] = &unk_27843A1C0;
    v12 = v8;
    v13 = v5;
    dispatch_async(v9, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDMeDeviceService.removeListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__DNDMeDeviceService_removeListener___block_invoke;
  v8[3] = &unk_27843A1E8;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(queue, v8);
}

uint64_t __37__DNDMeDeviceService_removeListener___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DNDLogMeDeviceService;
  if (os_log_type_enabled(DNDLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Removing 'Me Device' state update listener: listener=%{public}@", &v6, 0xCu);
  }

  result = [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)remoteService:(id)a3 didReceiveUpdatedMeDeviceState:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__DNDMeDeviceService_remoteService_didReceiveUpdatedMeDeviceState___block_invoke;
  v8[3] = &unk_27843A1E8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __67__DNDMeDeviceService_remoteService_didReceiveUpdatedMeDeviceState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = [[DNDMeDeviceState alloc] initWithStatus:0 name:0];
  }

  v3 = [*(*(a1 + 40) + 24) copy];
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__DNDMeDeviceService_remoteService_didReceiveUpdatedMeDeviceState___block_invoke_2;
  block[3] = &unk_27843A210;
  v9 = v3;
  v10 = v4;
  v11 = v2;
  v6 = v2;
  v7 = v3;
  dispatch_async(v5, block);
}

void __67__DNDMeDeviceService_remoteService_didReceiveUpdatedMeDeviceState___block_invoke_2(uint64_t a1)
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

        [*(*(&v8 + 1) + 8 * v6++) meDeviceService:*(a1 + 40) didReceiveMeDeviceState:{*(a1 + 48), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_initWithClientIdentifier:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DNDMeDeviceService;
  v5 = [(DNDMeDeviceService *)&v18 init];
  if (v5)
  {
    v6 = [v4 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.donotdisturb.DNDMeDeviceService", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.donotdisturb.DNDMeDeviceService.call-out", v11);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    listeners = v5->_listeners;
    v5->_listeners = v14;

    v16 = +[DNDRemoteServiceConnection sharedInstance];
    [v16 addEventListener:v5];
  }

  return v5;
}

- (BOOL)_queue_registerForStateUpdatesIfRequired
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSHashTable *)self->_listeners count]&& !self->_registeredForUpdates)
  {
    v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDMeDeviceService.registerForUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v5 = DNDLogMeDeviceService;
    if (os_log_type_enabled(DNDLogMeDeviceService, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering 'Me Device' state update listener", &buf, 0xCu);
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v6 = +[DNDRemoteServiceConnection sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__DNDMeDeviceService__queue_registerForStateUpdatesIfRequired__block_invoke;
    v11[3] = &unk_27843A238;
    v11[4] = &v12;
    v11[5] = &buf;
    [v6 registerForMeDeviceStateUpdatesWithRequestDetails:v4 completionHandler:v11];

    if (*(*(&buf + 1) + 40))
    {
      v7 = DNDLogMeDeviceService;
      if (os_log_type_enabled(DNDLogMeDeviceService, OS_LOG_TYPE_ERROR))
      {
        [(DNDMeDeviceService *)v4 _queue_registerForStateUpdatesIfRequired];
      }
    }

    self->_registeredForUpdates = *(v13 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
  }

  if ([(NSHashTable *)self->_listeners count])
  {
    registeredForUpdates = self->_registeredForUpdates;
  }

  else
  {
    registeredForUpdates = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return registeredForUpdates;
}

void __62__DNDMeDeviceService__queue_registerForStateUpdatesIfRequired__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __61__DNDMeDeviceService_queryCurrentStateWithCompletionHandler___block_invoke_5_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0(&dword_22002F000, a2, a3, "[%{public}@] Error when getting 'Me Device' state, error='%{public}@'", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __56__DNDMeDeviceService_addListener_withCompletionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_22002F000, a2, OS_LOG_TYPE_ERROR, "Did not register for 'Me Device' state updates, will remove listener: listener=%{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_queue_registerForStateUpdatesIfRequired
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = *(*a2 + 40);
  OUTLINED_FUNCTION_0(&dword_22002F000, a2, a3, "[%{public}@] Error when registering 'Me Device' state update listener, error='%{public}@'", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end