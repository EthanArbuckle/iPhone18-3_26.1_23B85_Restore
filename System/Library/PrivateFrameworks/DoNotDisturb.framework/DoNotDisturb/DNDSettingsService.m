@interface DNDSettingsService
+ (id)serviceForClientIdentifier:(id)a3;
- (BOOL)_queue_registerForSettingsUpdatesIfRequired;
- (BOOL)setBehaviorSettings:(id)a3 error:(id *)a4;
- (BOOL)setConfiguration:(id)a3 forModeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setScheduleSettings:(id)a3 error:(id *)a4;
- (id)_initWithClientIdentifier:(id)a3;
- (id)behaviorSettingsReturningError:(id *)a3;
- (id)configurationForModeIdentifier:(id)a3 error:(id *)a4;
- (id)scheduleSettingsReturningError:(id *)a3;
- (void)_queue_registerForSettingsUpdatesIfRequired;
- (void)addSettingsUpdateListener:(id)a3 withCompletionHandler:(id)a4;
- (void)remoteService:(id)a3 didReceiveUpdatedBehaviorSettings:(id)a4;
- (void)remoteService:(id)a3 didReceiveUpdatedPhoneCallBypassSettings:(id)a4;
- (void)remoteService:(id)a3 didReceiveUpdatedScheduleSettings:(id)a4;
- (void)removeSettingsUpdateListener:(id)a3;
@end

@implementation DNDSettingsService

+ (id)serviceForClientIdentifier:(id)a3
{
  v4 = a3;
  if (serviceForClientIdentifier__onceToken_11 != -1)
  {
    +[DNDSettingsService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_10;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DNDSettingsService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __49__DNDSettingsService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDSettingsService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_10;
  serviceForClientIdentifier__lockQueue_10 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_11;
  serviceForClientIdentifier__serviceByClientIdentifier_11 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __49__DNDSettingsService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_11 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_11;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (id)_initWithClientIdentifier:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DNDSettingsService;
  v5 = [(DNDSettingsService *)&v22 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.donotdisturb.SettingsService", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.donotdisturb.SettingsService.call-out", v9);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    v12 = [v4 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    settingsUpdateListeners = v5->_settingsUpdateListeners;
    v5->_settingsUpdateListeners = v14;

    v16 = [DNDModeConfigurationService serviceForClientIdentifier:v4];
    modeConfigurationService = v5->_modeConfigurationService;
    v5->_modeConfigurationService = v16;

    v18 = [DNDGlobalConfigurationService serviceForClientIdentifier:v4];
    globalConfigurationService = v5->_globalConfigurationService;
    v5->_globalConfigurationService = v18;

    v20 = +[DNDRemoteServiceConnection sharedInstance];
    [v20 addEventListener:v5];
  }

  return v5;
}

- (id)behaviorSettingsReturningError:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.behaviorSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__11;
  v16[3] = __Block_byref_object_dispose__11;
  v17 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__DNDSettingsService_behaviorSettingsReturningError___block_invoke;
  v14[3] = &unk_27843B268;
  v14[4] = &v18;
  v14[5] = &v15;
  [v7 getBehaviorSettingsWithRequestDetails:v6 completionHandler:v14];

  if (!v19[5] && os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
  {
    [(DNDSettingsService *)v6 behaviorSettingsReturningError:v16];
  }

  if (a3)
  {
    v8 = *(v16[0] + 40);
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v19[5];
    *buf = 138543618;
    v26 = v6;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got behavior settings, settings=%{public}@", buf, 0x16u);
  }

  v11 = v19[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v18, 8);
  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __53__DNDSettingsService_behaviorSettingsReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)setBehaviorSettings:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.setBehaviorSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__DNDSettingsService_setBehaviorSettings_error___block_invoke;
  v16[3] = &unk_27843A0A8;
  v16[4] = &v23;
  v16[5] = &v17;
  [v9 setBehaviorSettings:v6 withRequestDetails:v8 completionHandler:v16];

  v10 = DNDLogSettings;
  if (*(v24 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set behavior settings, settings=%{public}@", buf, 0x16u);
      if (!a4)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_6:
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v15 = v18[5];
  *buf = 138543874;
  v29 = v8;
  v30 = 2114;
  v31 = v6;
  v32 = 2114;
  v33 = v15;
  _os_log_error_impl(&dword_22002F000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting behavior settings, settings=%{public}@, error='%{public}@'", buf, 0x20u);
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v11 = v18[5];
  if (v11)
  {
    *a4 = v11;
  }

LABEL_9:
  v12 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __48__DNDSettingsService_setBehaviorSettings_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)scheduleSettingsReturningError:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.scheduleSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__11;
  v16[3] = __Block_byref_object_dispose__11;
  v17 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__DNDSettingsService_scheduleSettingsReturningError___block_invoke;
  v14[3] = &unk_27843B290;
  v14[4] = &v18;
  v14[5] = &v15;
  [v7 getScheduleSettingsWithRequestDetails:v6 completionHandler:v14];

  if (!v19[5] && os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
  {
    [(DNDSettingsService *)v6 scheduleSettingsReturningError:v16];
  }

  if (a3)
  {
    v8 = *(v16[0] + 40);
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v19[5];
    *buf = 138543618;
    v26 = v6;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got schedule settings, settings=%{public}@", buf, 0x16u);
  }

  v11 = v19[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v18, 8);
  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __53__DNDSettingsService_scheduleSettingsReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)setScheduleSettings:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.setScheduleSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__DNDSettingsService_setScheduleSettings_error___block_invoke;
  v16[3] = &unk_27843A0A8;
  v16[4] = &v23;
  v16[5] = &v17;
  [v9 setScheduleSettings:v6 withRequestDetails:v8 completionHandler:v16];

  v10 = DNDLogSettings;
  if (*(v24 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set schedule settings, settings=%{public}@", buf, 0x16u);
      if (!a4)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_6:
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v15 = v18[5];
  *buf = 138543874;
  v29 = v8;
  v30 = 2114;
  v31 = v6;
  v32 = 2114;
  v33 = v15;
  _os_log_error_impl(&dword_22002F000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting schedule settings, settings=%{public}@, error='%{public}@'", buf, 0x20u);
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v11 = v18[5];
  if (v11)
  {
    *a4 = v11;
  }

LABEL_9:
  v12 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __48__DNDSettingsService_setScheduleSettings_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)configurationForModeIdentifier:(id)a3 error:(id *)a4
{
  v4 = [(DNDModeConfigurationService *)self->_modeConfigurationService modeConfigurationForModeIdentifier:a3 error:a4];
  v5 = [v4 configuration];

  return v5;
}

- (BOOL)setConfiguration:(id)a3 forModeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(DNDModeConfigurationService *)self->_modeConfigurationService modeConfigurationForModeIdentifier:a4 error:a5];
  v10 = v9;
  v11 = 0;
  if (!a5 && v9)
  {
    v12 = [v9 mutableCopy];
    [v12 setConfiguration:v8];
    v11 = [(DNDModeConfigurationService *)self->_modeConfigurationService setModeConfiguration:v12 error:0];
  }

  return v11;
}

- (void)addSettingsUpdateListener:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.addSettingsUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke;
  block[3] = &unk_27843A198;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(queue, block);

  os_activity_scope_leave(&state);
}

void __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Adding settings update listener: listener=%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  v4 = [*(a1 + 40) _queue_registerForSettingsUpdatesIfRequired];
  v5 = v4;
  v6 = DNDLogSettings;
  if (v4)
  {
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Registered for settings updates: listener=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
    {
      __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke_cold_1((a1 + 32), v6);
    }

    [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(*(a1 + 40) + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke_13;
    v11[3] = &unk_27843A1C0;
    v12 = v8;
    v13 = v5;
    dispatch_async(v9, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeSettingsUpdateListener:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.removeSettingsUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__DNDSettingsService_removeSettingsUpdateListener___block_invoke;
  v8[3] = &unk_27843A1E8;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(queue, v8);

  os_activity_scope_leave(&state);
}

uint64_t __51__DNDSettingsService_removeSettingsUpdateListener___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Removing settings update listener: listener=%{public}@", &v6, 0xCu);
  }

  result = [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)remoteService:(id)a3 didReceiveUpdatedBehaviorSettings:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__DNDSettingsService_remoteService_didReceiveUpdatedBehaviorSettings___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __70__DNDSettingsService_remoteService_didReceiveUpdatedBehaviorSettings___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DNDSettingsService_remoteService_didReceiveUpdatedBehaviorSettings___block_invoke_2;
  block[3] = &unk_27843A210;
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v6 = v2;
  dispatch_async(v5, block);
}

void __70__DNDSettingsService_remoteService_didReceiveUpdatedBehaviorSettings___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 settingsService:*(a1 + 40) didReceiveUpdatedBehaviorSettings:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)a3 didReceiveUpdatedPhoneCallBypassSettings:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__DNDSettingsService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __77__DNDSettingsService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DNDSettingsService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke_2;
  block[3] = &unk_27843A210;
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v6 = v2;
  dispatch_async(v5, block);
}

void __77__DNDSettingsService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 settingsService:*(a1 + 40) didReceiveUpdatedPhoneCallBypassSettings:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)a3 didReceiveUpdatedScheduleSettings:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__DNDSettingsService_remoteService_didReceiveUpdatedScheduleSettings___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __70__DNDSettingsService_remoteService_didReceiveUpdatedScheduleSettings___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DNDSettingsService_remoteService_didReceiveUpdatedScheduleSettings___block_invoke_2;
  block[3] = &unk_27843A210;
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v6 = v2;
  dispatch_async(v5, block);
}

void __70__DNDSettingsService_remoteService_didReceiveUpdatedScheduleSettings___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 settingsService:*(a1 + 40) didReceiveUpdatedScheduleSettings:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_registerForSettingsUpdatesIfRequired
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSHashTable *)self->_settingsUpdateListeners count]&& !self->_registeredForUpdates)
  {
    v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.registerForSettingsUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v5 = DNDLogSettings;
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering settings update listener", &buf, 0xCu);
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__11;
    v19 = __Block_byref_object_dispose__11;
    v20 = 0;
    v6 = +[DNDRemoteServiceConnection sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__DNDSettingsService__queue_registerForSettingsUpdatesIfRequired__block_invoke;
    v10[3] = &unk_27843A0A8;
    v10[4] = &v11;
    v10[5] = &buf;
    [v6 registerForSettingsUpdatesWithRequestDetails:v4 completionHandler:v10];

    if (*(*(&buf + 1) + 40) && os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
    {
      [(DNDSettingsService *)v4 _queue_registerForSettingsUpdatesIfRequired];
    }

    self->_registeredForUpdates = *(v12 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v11, 8);
    os_activity_scope_leave(&state);
  }

  if ([(NSHashTable *)self->_settingsUpdateListeners count])
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

void __65__DNDSettingsService__queue_registerForSettingsUpdatesIfRequired__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)behaviorSettingsReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting behavior settings, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)scheduleSettingsReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting schedule settings, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

void __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_22002F000, a2, OS_LOG_TYPE_ERROR, "Did not register for settings updates, will remove listener: listener=%{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_queue_registerForSettingsUpdatesIfRequired
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when registering settings update listener, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

@end