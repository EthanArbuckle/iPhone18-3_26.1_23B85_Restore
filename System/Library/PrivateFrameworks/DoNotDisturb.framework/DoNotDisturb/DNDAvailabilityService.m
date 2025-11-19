@interface DNDAvailabilityService
+ (id)serviceForClientIdentifier:(id)a3;
- (BOOL)isLocalUserAvailableReturningError:(id *)a3;
- (id)_initWithClientIdentifier:(id)a3;
@end

@implementation DNDAvailabilityService

+ (id)serviceForClientIdentifier:(id)a3
{
  v4 = a3;
  if (serviceForClientIdentifier__onceToken_2 != -1)
  {
    +[DNDAvailabilityService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DNDAvailabilityService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __53__DNDAvailabilityService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDAvailabilityService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_2;
  serviceForClientIdentifier__lockQueue_2 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_2;
  serviceForClientIdentifier__serviceByClientIdentifier_2 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __53__DNDAvailabilityService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_2 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_2;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (BOOL)isLocalUserAvailableReturningError:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDAvailabilityService.getIsLocalUserAvailable", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy__2;
  v17[3] = __Block_byref_object_dispose__2;
  v18 = 0;
  v7 = +[DNDRemoteAvailabilityServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__DNDAvailabilityService_isLocalUserAvailableReturningError___block_invoke;
  v15[3] = &unk_27843A0A8;
  v15[4] = &v19;
  v15[5] = &v16;
  [v7 getIsLocalUserAvailableWithRequestDetails:v6 completionHandler:v15];

  v8 = DNDLogModeConfiguration;
  if (*(v17[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDAvailabilityService *)v6 isLocalUserAvailableReturningError:v17, v8];
    }
  }

  else
  {
    v9 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:*(v20 + 24)];
      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get user availability, availability=%{public}@", buf, 0x16u);
    }
  }

  if (a3)
  {
    v11 = *(v17[0] + 40);
    if (v11)
    {
      *a3 = v11;
    }
  }

  v12 = *(v20 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __61__DNDAvailabilityService_isLocalUserAvailableReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_initWithClientIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DNDAvailabilityService;
  v5 = [(DNDAvailabilityService *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;
  }

  return v5;
}

- (void)isLocalUserAvailableReturningError:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_22002F000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Error when getting user availability in current mode for contact, error='%{public}@'", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end