@interface DNDModeAssertionService
+ (id)serviceForClientIdentifier:(id)a3;
- (BOOL)invalidateAllActiveModeAssertionsWithError:(id *)a3;
- (id)_initWithClientIdentifier:(id)a3;
- (id)activeModeAssertionWithError:(id *)a3;
- (id)allModeAssertionsWithError:(id *)a3;
- (id)invalidateActiveModeAssertionWithInvalidationDetails:(id)a3 reasonOverride:(unint64_t)a4 error:(id *)a5;
- (id)latestModeAssertionInvalidationWithError:(id *)a3;
- (id)takeModeAssertionWithDetails:(id)a3 error:(id *)a4;
- (void)_handleChangeActiveModeAssertion:(id)a3 invalidation:(id)a4;
- (void)_registerForAssertionUpdatesIfRequiredWithCompletionHandler:(id)a3;
- (void)addAssertionUpdateListener:(id)a3 withCompletionHandler:(id)a4;
- (void)remoteService:(id)a3 didChangeActiveModeAssertion:(id)a4 invalidation:(id)a5;
- (void)removeAssertionUpdateListener:(id)a3;
@end

@implementation DNDModeAssertionService

+ (id)serviceForClientIdentifier:(id)a3
{
  v4 = a3;
  if (serviceForClientIdentifier__onceToken_7 != -1)
  {
    +[DNDModeAssertionService serviceForClientIdentifier:];
  }

  v5 = serviceForClientIdentifier__serviceByClientIdentifier_7;
  objc_sync_enter(v5);
  v6 = [serviceForClientIdentifier__serviceByClientIdentifier_7 objectForKey:v4];
  if (!v6)
  {
    v6 = [[a1 alloc] _initWithClientIdentifier:v4];
    [serviceForClientIdentifier__serviceByClientIdentifier_7 setObject:v6 forKey:v4];
  }

  objc_sync_exit(v5);

  return v6;
}

uint64_t __54__DNDModeAssertionService_serviceForClientIdentifier___block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v1 = serviceForClientIdentifier__serviceByClientIdentifier_7;
  serviceForClientIdentifier__serviceByClientIdentifier_7 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_initWithClientIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DNDModeAssertionService;
  v5 = [(DNDModeAssertionService *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.donotdisturb.ModeAssertionService.call-out", v6);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v7;

    v9 = [v4 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v9;

    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    assertionUpdateListeners = v5->_assertionUpdateListeners;
    v5->_assertionUpdateListeners = v11;

    v5->_activeAssertionLock._os_unfair_lock_opaque = 0;
    v13 = +[DNDRemoteServiceConnection sharedInstance];
    [v13 addEventListener:v5];
  }

  return v5;
}

- (id)takeModeAssertionWithDetails:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.takeModeAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Taking mode assertion; details=%{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__7;
  v18[3] = __Block_byref_object_dispose__7;
  v19 = 0;
  v10 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__DNDModeAssertionService_takeModeAssertionWithDetails_error___block_invoke;
  v16[3] = &unk_27843AA10;
  v16[4] = buf;
  v16[5] = &v17;
  [v10 takeModeAssertionWithDetails:v6 requestDetails:v8 completionHandler:v16];

  if (*(v18[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [DNDModeAssertionService takeModeAssertionWithDetails:v8 error:v18];
    }

    if (a4)
    {
      *a4 = *(v18[0] + 40);
    }
  }

  v11 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*&buf[8] + 40);
    *v21 = 138543618;
    v22 = v8;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Took mode assertion, assertion=%{public}@", v21, 0x16u);
  }

  os_activity_scope_leave(&state);
  v13 = *(*&buf[8] + 40);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __62__DNDModeAssertionService_takeModeAssertionWithDetails_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)invalidateActiveModeAssertionWithInvalidationDetails:(id)a3 reasonOverride:(unint64_t)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.invalidateActiveModeAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);
  v10 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v11 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating active mode assertion", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy__7;
  v21[3] = __Block_byref_object_dispose__7;
  v22 = 0;
  v12 = +[DNDRemoteServiceConnection sharedInstance];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__DNDModeAssertionService_invalidateActiveModeAssertionWithInvalidationDetails_reasonOverride_error___block_invoke;
  v19[3] = &unk_27843AA38;
  v19[4] = &buf;
  v19[5] = &v20;
  [v12 invalidateActiveModeAssertionWithDetails:v8 reasonOverride:v13 requestDetails:v10 completionHandler:v19];

  if (*(v21[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [DNDModeAssertionService invalidateActiveModeAssertionWithInvalidationDetails:v10 reasonOverride:v21 error:?];
    }

    if (a5)
    {
      *a5 = *(v21[0] + 40);
    }
  }

  v14 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(&buf + 1) + 40);
    *v24 = 138543618;
    v25 = v10;
    v26 = 2114;
    v27 = v15;
    _os_log_impl(&dword_22002F000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated mode assertion, invalidation=%{public}@", v24, 0x16u);
  }

  os_activity_scope_leave(&state);
  v16 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&buf, 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __101__DNDModeAssertionService_invalidateActiveModeAssertionWithInvalidationDetails_reasonOverride_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)activeModeAssertionWithError:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.activeModeAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting active mode assertion", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__7;
  v16[3] = __Block_byref_object_dispose__7;
  v17 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__DNDModeAssertionService_activeModeAssertionWithError___block_invoke;
  v14[3] = &unk_27843AA10;
  v14[4] = &buf;
  v14[5] = &v15;
  [v8 getActiveModeAssertionWithRequestDetails:v6 completionHandler:v14];

  if (*(v16[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeAssertionService *)v6 activeModeAssertionWithError:v16];
    }

    if (a3)
    {
      *a3 = *(v16[0] + 40);
    }
  }

  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(&buf + 1) + 40);
    *v19 = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got mode assertion, assertion=%{public}@", v19, 0x16u);
  }

  os_activity_scope_leave(&state);
  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __56__DNDModeAssertionService_activeModeAssertionWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)latestModeAssertionInvalidationWithError:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.latestModeAssertionInvalidation", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting latest mode assertion invalidation", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__7;
  v16[3] = __Block_byref_object_dispose__7;
  v17 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__DNDModeAssertionService_latestModeAssertionInvalidationWithError___block_invoke;
  v14[3] = &unk_27843AA38;
  v14[4] = &buf;
  v14[5] = &v15;
  [v8 getLatestModeAssertionInvalidationWithRequestDetails:v6 completionHandler:v14];

  if (*(v16[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeAssertionService *)v6 latestModeAssertionInvalidationWithError:v16];
    }

    if (a3)
    {
      *a3 = *(v16[0] + 40);
    }
  }

  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(&buf + 1) + 40);
    *v19 = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got invalidation, invalidation=%{public}@", v19, 0x16u);
  }

  os_activity_scope_leave(&state);
  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __68__DNDModeAssertionService_latestModeAssertionInvalidationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)invalidateAllActiveModeAssertionsWithError:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.invalidateAllActiveModeAssertions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating all active mode assertions", &buf, 0xCu);
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__DNDModeAssertionService_invalidateAllActiveModeAssertionsWithError___block_invoke;
  v14[3] = &unk_27843A0A8;
  v14[4] = &v15;
  v14[5] = &buf;
  [v8 invalidateAllActiveModeAssertionsWithRequestDetails:v6 completionHandler:v14];

  if (*(*(&buf + 1) + 40))
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeAssertionService *)v6 invalidateAllActiveModeAssertionsWithError:?];
    }

    if (a3)
    {
      *a3 = *(*(&buf + 1) + 40);
    }
  }

  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v16 + 24);
    *v20 = 138543618;
    v21 = v6;
    v22 = 1024;
    v23 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated all active mode assertions, success=%{BOOL}u", v20, 0x12u);
  }

  os_activity_scope_leave(&state);
  v11 = *(v16 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __70__DNDModeAssertionService_invalidateAllActiveModeAssertionsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)allModeAssertionsWithError:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.allModeAssertionsWithError", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting all active mode assertions", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__7;
  v16[3] = __Block_byref_object_dispose__7;
  v17 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__DNDModeAssertionService_allModeAssertionsWithError___block_invoke;
  v14[3] = &unk_27843AA60;
  v14[4] = &buf;
  v14[5] = &v15;
  [v8 getAllModeAssertionsWithRequestDetails:v6 completionHandler:v14];

  if (*(v16[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeAssertionService *)v6 allModeAssertionsWithError:v16];
    }

    if (a3)
    {
      *a3 = *(v16[0] + 40);
    }
  }

  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v16[0] + 40) == 0;
    *v19 = 138543618;
    v20 = v6;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested all active mode assertions, success=%{BOOL}u", v19, 0x12u);
  }

  os_activity_scope_leave(&state);
  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __54__DNDModeAssertionService_allModeAssertionsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)addAssertionUpdateListener:(id)a3 withCompletionHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.addAssertionUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);
  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138543618;
    v20 = clientIdentifier;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding assertion update listener: listener=%{public}@", buf, 0x16u);
  }

  v11 = self->_assertionUpdateListeners;
  objc_sync_enter(v11);
  [(NSHashTable *)self->_assertionUpdateListeners addObject:v6];
  objc_sync_exit(v11);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__DNDModeAssertionService_addAssertionUpdateListener_withCompletionHandler___block_invoke;
  v15[3] = &unk_27843AAB0;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  [(DNDModeAssertionService *)self _registerForAssertionUpdatesIfRequiredWithCompletionHandler:v15];
  os_activity_scope_leave(&state);

  v14 = *MEMORY[0x277D85DE8];
}

void __76__DNDModeAssertionService_addAssertionUpdateListener_withCompletionHandler___block_invoke(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DNDLogModeAssertion;
  if (a2)
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v8 = *(a1[4] + 16);
      *buf = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registered for assertion updates: listener=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      __76__DNDModeAssertionService_addAssertionUpdateListener_withCompletionHandler___block_invoke_cold_1(a1);
    }

    v9 = *(a1[4] + 24);
    objc_sync_enter(v9);
    [*(a1[4] + 24) removeObject:a1[5]];
    objc_sync_exit(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    v11 = *(a1[4] + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__DNDModeAssertionService_addAssertionUpdateListener_withCompletionHandler___block_invoke_10;
    block[3] = &unk_27843AA88;
    v15 = v10;
    v16 = a2;
    v14 = v5;
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeAssertionUpdateListener:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.removeAssertionUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &v10);
  v6 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138543618;
    v12 = clientIdentifier;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing assertion update listener: listener=%{public}@", buf, 0x16u);
  }

  v8 = self->_assertionUpdateListeners;
  objc_sync_enter(v8);
  [(NSHashTable *)self->_assertionUpdateListeners removeObject:v4, v10.opaque[0], v10.opaque[1]];
  objc_sync_exit(v8);

  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)a3 didChangeActiveModeAssertion:(id)a4 invalidation:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    v14 = 138544130;
    v15 = clientIdentifier;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remote service got assertion change: service=%{public}@, assertion=%{public}@, invalidation=%{public}@", &v14, 0x2Au);
  }

  [(DNDModeAssertionService *)self _handleChangeActiveModeAssertion:v9 invalidation:v10];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleChangeActiveModeAssertion:(id)a3 invalidation:(id)a4
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_activeAssertionLock);
  objc_storeStrong(&self->_activeAssertion, a3);
  os_unfair_lock_unlock(&self->_activeAssertionLock);
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__DNDModeAssertionService__handleChangeActiveModeAssertion_invalidation___block_invoke;
  block[3] = &unk_27843A210;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(calloutQueue, block);
}

void __73__DNDModeAssertionService__handleChangeActiveModeAssertion_invalidation___block_invoke(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 24);
  objc_sync_enter(v2);
  v3 = [*(a1[4] + 24) allObjects];
  objc_sync_exit(v2);

  if (a1[5])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v6)
    {
      v8 = *v31;
      *&v7 = 138543874;
      v24 = v7;
      do
      {
        v9 = 0;
        do
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            v11 = DNDLogModeAssertion;
            if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
            {
              v12 = a1[5];
              v13 = *(a1[4] + 16);
              *buf = v24;
              v36 = v13;
              v37 = 2114;
              v38 = v12;
              v39 = 2114;
              v40 = v10;
              _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will deliver assertion invalidation to listener: invalidation=%{public}@, listener=%{public}@", buf, 0x20u);
            }

            [v10 modeAssertionService:a1[4] didReceiveModeAssertionInvalidation:{a1[5], v24}];
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v6);
    }

    v3 = v4;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v17 = *v27;
    *&v16 = 138543874;
    v25 = v16;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = DNDLogModeAssertion;
          if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1[4] + 16);
            v22 = a1[6];
            *buf = v25;
            v36 = v21;
            v37 = 2114;
            v38 = v22;
            v39 = 2114;
            v40 = v19;
            _os_log_impl(&dword_22002F000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will deliver assertion change to listener: assertion=%{public}@, listener=%{public}@", buf, 0x20u);
          }

          [v19 modeAssertionService:a1[4] didUpdateActiveModeAssertion:{a1[6], v25, v26}];
        }

        ++v18;
      }

      while (v15 != v18);
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_registerForAssertionUpdatesIfRequiredWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_assertionUpdateListeners;
  objc_sync_enter(v5);
  v6 = [(NSHashTable *)self->_assertionUpdateListeners count];
  objc_sync_exit(v5);

  if (!v6 || (atomic_exchange(&self->_registeredForUpdates._Value, 1u) & 1) != 0)
  {
    v4[2](v4, 1, 0);
  }

  else
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.registerForAssertionUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);
    v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v9 = DNDLogModeAssertion;
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering assertion update listener", buf, 0xCu);
    }

    v10 = +[DNDRemoteServiceConnection sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__DNDModeAssertionService__registerForAssertionUpdatesIfRequiredWithCompletionHandler___block_invoke;
    v12[3] = &unk_27843AAD8;
    v12[4] = self;
    v13 = v4;
    [v10 registerForAssertionUpdatesWithRequestDetails:v8 completionHandler:v12];

    os_activity_scope_leave(&state);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __87__DNDModeAssertionService__registerForAssertionUpdatesIfRequiredWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 BOOLValue];
  v7 = *(a1 + 32);
  if (v6)
  {
    os_unfair_lock_lock((v7 + 48));
    v8 = *(a1 + 32);
    if (!*(v8 + 40) && (*(v8 + 52) & 1) == 0)
    {
      v9 = [v8 activeModeAssertionWithError:0];
      v10 = *(a1 + 32);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *(*(a1 + 32) + 52) = 1;
      v8 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v8 + 48));
  }

  else
  {
    atomic_store(0, (v7 + 32));
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [v12 BOOLValue], v5);
}

- (void)takeModeAssertionWithDetails:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidateActiveModeAssertionWithInvalidationDetails:(uint64_t)a1 reasonOverride:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)activeModeAssertionWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)latestModeAssertionInvalidationWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAllActiveModeAssertionsWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)allModeAssertionsWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __76__DNDModeAssertionService_addAssertionUpdateListener_withCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(*(a1 + 32) + 16);
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

@end