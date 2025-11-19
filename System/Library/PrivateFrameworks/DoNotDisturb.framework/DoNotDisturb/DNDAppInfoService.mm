@interface DNDAppInfoService
+ (id)serviceForClientIdentifier:(id)a3;
- (id)_initWithClientIdentifier:(id)a3;
- (id)getAppInfoForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)getAppInfoForBundleIdentifiers:(id)a3 error:(id *)a4;
@end

@implementation DNDAppInfoService

+ (id)serviceForClientIdentifier:(id)a3
{
  v4 = a3;
  if (serviceForClientIdentifier__onceToken_10 != -1)
  {
    +[DNDAppInfoService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_9;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DNDAppInfoService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __48__DNDAppInfoService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDAppInfoService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_9;
  serviceForClientIdentifier__lockQueue_9 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_10;
  serviceForClientIdentifier__serviceByClientIdentifier_10 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __48__DNDAppInfoService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_10 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_10;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (id)getAppInfoForBundleIdentifier:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDAppInfoService.getAppInfoForBundleIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__10;
  v18[3] = __Block_byref_object_dispose__10;
  v19 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__DNDAppInfoService_getAppInfoForBundleIdentifier_error___block_invoke;
  v16[3] = &unk_27843AD20;
  v16[4] = &v20;
  v16[5] = &v17;
  [v9 getAppInfoForBundleIdentifier:v6 withRequestDetails:v8 completionHandler:v16];

  v10 = DNDLogGlobalConfiguration;
  if (*(v18[0] + 40))
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDAppInfoService getAppInfoForBundleIdentifier:v8 error:v18];
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v21[5];
    *buf = 138543619;
    v28 = v8;
    v29 = 2113;
    v30 = v11;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] App info is %{private}@", buf, 0x16u);
  }

  if (a4)
  {
    v12 = *(v18[0] + 40);
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = v21[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __57__DNDAppInfoService_getAppInfoForBundleIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = [MEMORY[0x277CCA8D8] dnd_doNotDisturbLocalizationBundle];
    v8 = [*(*(*(a1 + 32) + 8) + 40) displayName];
    v9 = [v7 localizedStringForKey:v8 value:&stru_2833C9B78 table:0];

    if ([v9 length])
    {
      v10 = [v16 mutableCopy];
      [v10 setDisplayName:v9];
      v11 = [v10 copy];
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v6;
}

- (id)getAppInfoForBundleIdentifiers:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDAppInfoService.getAppInfoForBundleIdentifiers", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__10;
  v19[3] = __Block_byref_object_dispose__10;
  v20 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v10 = [v6 allObjects];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__DNDAppInfoService_getAppInfoForBundleIdentifiers_error___block_invoke;
  v17[3] = &unk_27843A5C0;
  v17[4] = &v21;
  v17[5] = &v18;
  [v9 getAppInfoForBundleIdentifiers:v10 withRequestDetails:v8 completionHandler:v17];

  v11 = DNDLogGlobalConfiguration;
  if (*(v19[0] + 40))
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDAppInfoService getAppInfoForBundleIdentifier:v8 error:v19];
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v22[5];
    *buf = 138543619;
    v29 = v8;
    v30 = 2113;
    v31 = v12;
    _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] App info is %{private}@", buf, 0x16u);
  }

  if (a4)
  {
    v13 = *(v19[0] + 40);
    if (v13)
    {
      *a4 = v13;
    }
  }

  v14 = v22[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __58__DNDAppInfoService_getAppInfoForBundleIdentifiers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v24 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CCA8D8] dnd_doNotDisturbLocalizationBundle];
        v12 = [v10 displayName];
        v13 = [v11 localizedStringForKey:v12 value:&stru_2833C9B78 table:0];

        v14 = v10;
        if ([v13 length])
        {
          v15 = [v10 mutableCopy];
          [v15 setDisplayName:v13];
          v14 = [v15 copy];
        }

        v16 = [v10 applicationIdentifier];
        v17 = [v16 bundleID];
        [v5 setObject:v14 forKeyedSubscript:v17];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v18 = *(*(a1 + 32) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v5;
  v20 = v5;

  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v24;

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_initWithClientIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DNDAppInfoService;
  v5 = [(DNDAppInfoService *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.donotdisturb.DNDAppInfoService", v8);
    queue = v5->_queue;
    v5->_queue = v9;
  }

  return v5;
}

- (void)getAppInfoForBundleIdentifier:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v3, v4, "[%{public}@] Error when getting app info, error='%{public}@'");
  v5 = *MEMORY[0x277D85DE8];
}

@end