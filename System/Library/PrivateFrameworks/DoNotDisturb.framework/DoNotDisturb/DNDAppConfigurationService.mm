@interface DNDAppConfigurationService
+ (id)serviceForClientIdentifier:(id)identifier;
- (id)_initWithClientIdentifier:(id)identifier;
- (void)getCurrentAppConfigurationForActionIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)invalidateAppContextForActionIdentifier:(id)identifier;
@end

@implementation DNDAppConfigurationService

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken_1 != -1)
  {
    +[DNDAppConfigurationService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DNDAppConfigurationService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __57__DNDAppConfigurationService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDAppConfigurationService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_1;
  serviceForClientIdentifier__lockQueue_1 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_1;
  serviceForClientIdentifier__serviceByClientIdentifier_1 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __57__DNDAppConfigurationService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_1 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_1;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (void)getCurrentAppConfigurationForActionIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDAppConfigurationService.getCurrentAppConfigurationForActionIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);
  v9 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v10 = DNDLogAppConfiguration;
  if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = identifierCopy;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting current app configuration for action identifier %@", buf, 0x16u);
  }

  v11 = +[DNDRemoteAppConfigurationServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__DNDAppConfigurationService_getCurrentAppConfigurationForActionIdentifier_withCompletionHandler___block_invoke;
  v16[3] = &unk_27843A4F8;
  v17 = v9;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = v9;
  [v11 getCurrentAppConfigurationForActionIdentifier:v13 withRequestDetails:v14 completionHandler:v16];

  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x277D85DE8];
}

void __98__DNDAppConfigurationService_getCurrentAppConfigurationForActionIdentifier_withCompletionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v10 = DNDLogAppConfiguration;
    if (!os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = a1[4];
    v13 = a1[5];
    v21 = 138543618;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v14 = "[%{public}@] Got current app configuration for action identifier %@";
    v15 = v10;
    v16 = 22;
LABEL_9:
    _os_log_impl(&dword_22002F000, v15, OS_LOG_TYPE_DEFAULT, v14, &v21, v16);
    goto LABEL_12;
  }

  v8 = [v6 domain];
  v9 = v8;
  if (v8 != @"DNDErrorDomain")
  {

    goto LABEL_10;
  }

  v17 = [v7 code];

  if (v17 == 1007)
  {
    v18 = DNDLogAppConfiguration;
    if (!os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v19 = a1[4];
    v21 = 138543362;
    v22 = v19;
    v14 = "[%{public}@] No current app configuration action.";
    v15 = v18;
    v16 = 12;
    goto LABEL_9;
  }

LABEL_10:
  if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
  {
    __98__DNDAppConfigurationService_getCurrentAppConfigurationForActionIdentifier_withCompletionHandler___block_invoke_cold_1(a1);
  }

LABEL_12:
  (*(a1[6] + 16))(a1[6], v5, v7, v11);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAppContextForActionIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDAppConfigurationService.invalidateAppContextForActionIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogAppConfiguration;
  if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = v6;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating app context for action identifier %@", buf, 0x16u);
  }

  v8 = +[DNDRemoteAppConfigurationServiceConnection sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__DNDAppConfigurationService_invalidateAppContextForActionIdentifier___block_invoke;
  v12[3] = &unk_27843A520;
  v13 = v6;
  v14 = identifierCopy;
  v9 = identifierCopy;
  v10 = v6;
  [v8 invalidateAppContextForActionIdentifier:v9 withRequestDetails:v10 completionHandler:v12];

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x277D85DE8];
}

void __70__DNDAppConfigurationService_invalidateAppContextForActionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 BOOLValue];
  v7 = DNDLogAppConfiguration;
  if (v6)
  {
    if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated app context for actionIdentifier %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
  {
    __70__DNDAppConfigurationService_invalidateAppContextForActionIdentifier___block_invoke_cold_1(a1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = DNDAppConfigurationService;
  v5 = [(DNDAppConfigurationService *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;
  }

  return v5;
}

void __98__DNDAppConfigurationService_getCurrentAppConfigurationForActionIdentifier_withCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_22002F000, v3, v4, "[%{public}@] Error when getting current app configuration for action identifier %@, error='%{public}@'");
  v5 = *MEMORY[0x277D85DE8];
}

void __70__DNDAppConfigurationService_invalidateAppContextForActionIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_22002F000, v3, v4, "[%{public}@] Error when getting invalidating app context for actionIdentifier %@, error='%{public}@'");
  v5 = *MEMORY[0x277D85DE8];
}

@end