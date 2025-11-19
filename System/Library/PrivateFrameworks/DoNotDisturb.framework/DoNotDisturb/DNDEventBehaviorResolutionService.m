@interface DNDEventBehaviorResolutionService
+ (id)serviceForClientIdentifier:(id)a3;
- (id)_initWithClientIdentifier:(id)a3;
- (id)resolveBehaviorForEventDetails:(id)a3 error:(id *)a4;
@end

@implementation DNDEventBehaviorResolutionService

+ (id)serviceForClientIdentifier:(id)a3
{
  v4 = a3;
  if (serviceForClientIdentifier__onceToken_4 != -1)
  {
    +[DNDEventBehaviorResolutionService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DNDEventBehaviorResolutionService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __64__DNDEventBehaviorResolutionService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDEventBehaviorResolutionService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_4;
  serviceForClientIdentifier__lockQueue_4 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_4;
  serviceForClientIdentifier__serviceByClientIdentifier_4 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __64__DNDEventBehaviorResolutionService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_4 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_4;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (id)_initWithClientIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DNDEventBehaviorResolutionService;
  v5 = [(DNDEventBehaviorResolutionService *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;
  }

  return v5;
}

- (id)resolveBehaviorForEventDetails:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDEventBehaviorResolutionService.resolveEvent", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v9 = DNDLogBehaviorResolution;
  if (os_log_type_enabled(DNDLogBehaviorResolution, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resolving behavior for event, details=%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v31 = 0;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__4;
  v19[3] = __Block_byref_object_dispose__4;
  v20 = 0;
  v10 = +[DNDRemoteServiceConnection sharedInstance];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__DNDEventBehaviorResolutionService_resolveBehaviorForEventDetails_error___block_invoke;
  v17[3] = &unk_27843A810;
  v17[4] = buf;
  v17[5] = &v18;
  [v10 resolveBehaviorForEventDetails:v6 requestDetails:v8 completionHandler:v17];

  if (*(v19[0] + 40))
  {
    v11 = DNDLogBehaviorResolution;
    if (os_log_type_enabled(DNDLogBehaviorResolution, OS_LOG_TYPE_ERROR))
    {
      [(DNDEventBehaviorResolutionService *)v8 resolveBehaviorForEventDetails:v19 error:v11];
    }

    if (a4)
    {
      *a4 = *(v19[0] + 40);
    }
  }

  v12 = DNDLogBehaviorResolution;
  if (os_log_type_enabled(DNDLogBehaviorResolution, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*&buf[8] + 40);
    *v22 = 138543874;
    v23 = v8;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_22002F000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resolved event, details=%@ behavior=%@", v22, 0x20u);
  }

  os_activity_scope_leave(&state);
  v14 = *(*&buf[8] + 40);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(buf, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __74__DNDEventBehaviorResolutionService_resolveBehaviorForEventDetails_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)resolveBehaviorForEventDetails:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_22002F000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Error when resolving behavior, error='%{public}@'", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end