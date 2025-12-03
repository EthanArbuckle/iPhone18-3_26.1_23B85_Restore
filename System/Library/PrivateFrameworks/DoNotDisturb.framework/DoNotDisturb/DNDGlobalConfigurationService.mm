@interface DNDGlobalConfigurationService
+ (id)serviceForClientIdentifier:(id)identifier;
- (BOOL)_queue_registerForUpdatesIfRequired;
- (BOOL)getPreventAutoReplyReturningError:(id *)error;
- (BOOL)modesCanImpactAvailability;
- (BOOL)setPhoneCallBypassSettings:(id)settings error:(id *)error;
- (id)_initWithClientIdentifier:(id)identifier;
- (id)getAccountFeatureSupportWithError:(id *)error;
- (id)getPhoneCallBypassSettingsReturningError:(id *)error;
- (id)getStateDumpReturningError:(id *)error;
- (unint64_t)getCloudSyncStateReturningError:(id *)error;
- (unint64_t)getPairSyncStateReturningError:(id *)error;
- (void)_queue_registerForUpdatesIfRequired;
- (void)_updateListenersOfCloudSyncPreferenceChange:(BOOL)change;
- (void)addListener:(id)listener withCompletionHandler:(id)handler;
- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)identifier;
- (void)isCloudSyncActiveWithCompletionHandler:(id)handler;
- (void)modesCanImpactAvailability;
- (void)remoteService:(id)service didReceiveUpdatedPairSyncState:(unint64_t)state;
- (void)remoteService:(id)service didReceiveUpdatedPhoneCallBypassSettings:(id)settings;
- (void)remoteService:(id)service didReceiveUpdatedPreventAutoReplySetting:(BOOL)setting;
- (void)removeListener:(id)listener;
@end

@implementation DNDGlobalConfigurationService

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken_9 != -1)
  {
    +[DNDGlobalConfigurationService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DNDGlobalConfigurationService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __60__DNDGlobalConfigurationService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDGlobalConfigurationService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_8;
  serviceForClientIdentifier__lockQueue_8 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_9;
  serviceForClientIdentifier__serviceByClientIdentifier_9 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __60__DNDGlobalConfigurationService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_9 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_9;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (BOOL)getPreventAutoReplyReturningError:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.getPreventAutoReply", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__9;
  v16[3] = __Block_byref_object_dispose__9;
  v17 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__DNDGlobalConfigurationService_getPreventAutoReplyReturningError___block_invoke;
  v14[3] = &unk_27843A0A8;
  v14[4] = &v18;
  v14[5] = &v15;
  [v7 getPreventAutoReplyWithRequestDetails:v6 completionHandler:v14];

  v8 = DNDLogGlobalConfiguration;
  if (*(v16[0] + 40))
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDGlobalConfigurationService *)v6 getPreventAutoReplyReturningError:v16];
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v19 + 24))
    {
      v9 = @"prevented";
    }

    else
    {
      v9 = @"not prevented";
    }

    *buf = 138543618;
    v24 = v6;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Auto reply is %{public}@", buf, 0x16u);
  }

  if (error)
  {
    v10 = *(v16[0] + 40);
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = *(v19 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v18, 8);
  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __67__DNDGlobalConfigurationService_getPreventAutoReplyReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __59__DNDGlobalConfigurationService_setPreventAutoReply_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)modesCanImpactAvailability
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.modesCanImpactAvailability", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__9;
  v13[3] = __Block_byref_object_dispose__9;
  v14 = 0;
  v5 = +[DNDRemoteServiceConnection sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__DNDGlobalConfigurationService_modesCanImpactAvailability__block_invoke;
  v11[3] = &unk_27843A0A8;
  v11[4] = &v15;
  v11[5] = &v12;
  [v5 getModesCanImpactAvailabilityWithRequestDetails:v4 completionHandler:v11];

  v6 = DNDLogGlobalConfiguration;
  if (*(v13[0] + 40))
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDGlobalConfigurationService *)v4 modesCanImpactAvailability];
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v16 + 24))
    {
      v7 = &stru_2833C9B78;
    }

    else
    {
      v7 = @"not";
    }

    *buf = 138543618;
    v21 = v4;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Modes can%{public}@ impact availability.", buf, 0x16u);
  }

  v8 = *(v16 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v15, 8);
  os_activity_scope_leave(&state);

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void __59__DNDGlobalConfigurationService_modesCanImpactAvailability__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __69__DNDGlobalConfigurationService_setModesCanImpactAvailability_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getPhoneCallBypassSettingsReturningError:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = DNDLogGlobalConfiguration;
  if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDGlobalConfigurationService getPhoneCallBypassSettingsReturningError:v4];
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (error)
  {
LABEL_3:
    v5 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"Bypass settings are now per mode configuration";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *error = [v5 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v6];
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)setPhoneCallBypassSettings:(id)settings error:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v6 = DNDLogGlobalConfiguration;
  if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDGlobalConfigurationService getPhoneCallBypassSettingsReturningError:v6];
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (error)
  {
LABEL_3:
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Bypass settings are now per mode configuration";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [v7 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v8];
  }

LABEL_4:

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)isCloudSyncActiveWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__DNDGlobalConfigurationService_isCloudSyncActiveWithCompletionHandler___block_invoke;
  block[3] = &unk_27843ABE0;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__DNDGlobalConfigurationService_isCloudSyncActiveWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v4 = [WeakRetained isCloudSyncActive];
    v5 = v3[2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__DNDGlobalConfigurationService_isCloudSyncActiveWithCompletionHandler___block_invoke_2;
    v6[3] = &unk_27843A1C0;
    v7 = *(a1 + 32);
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

- (unint64_t)getCloudSyncStateReturningError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getCloudSyncState", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__9;
  v14[3] = __Block_byref_object_dispose__9;
  v15 = 0;
  v6 = +[DNDRemoteServiceConnection sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__DNDGlobalConfigurationService_getCloudSyncStateReturningError___block_invoke;
  v12[3] = &unk_27843A0A8;
  v12[4] = &v16;
  v12[5] = &v13;
  [v6 getCloudSyncStateWithRequestDetails:v5 completionHandler:v12];

  if (*(v14[0] + 40))
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDGlobalConfigurationService *)v5 getCloudSyncStateReturningError:v14];
    }
  }

  else
  {
    v7 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17[3]];
      *buf = 138543618;
      v22 = v5;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got cloud sync state=%{public}@", buf, 0x16u);
    }
  }

  v9 = v17[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v16, 8);
  os_activity_scope_leave(&state);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void __65__DNDGlobalConfigurationService_getCloudSyncStateReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __69__DNDGlobalConfigurationService_setCloudSyncPreferenceEnabled_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_updateListenersOfCloudSyncPreferenceChange:(BOOL)change
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__DNDGlobalConfigurationService__updateListenersOfCloudSyncPreferenceChange___block_invoke;
  v4[3] = &unk_27843AC30;
  v4[4] = self;
  changeCopy = change;
  dispatch_sync(queue, v4);
}

void __77__DNDGlobalConfigurationService__updateListenersOfCloudSyncPreferenceChange___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__DNDGlobalConfigurationService__updateListenersOfCloudSyncPreferenceChange___block_invoke_2;
  v5[3] = &unk_27843AC08;
  objc_copyWeak(&v7, &location);
  v6 = v2;
  v8 = *(a1 + 40);
  v4 = v2;
  dispatch_async(v3, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __77__DNDGlobalConfigurationService__updateListenersOfCloudSyncPreferenceChange___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 globalConfigurationService:WeakRetained didEditCloudSyncPreference:{*(a1 + 48), v10}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)getPairSyncStateReturningError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getPairSyncState", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__9;
  v14[3] = __Block_byref_object_dispose__9;
  v15 = 0;
  v6 = +[DNDRemoteServiceConnection sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__DNDGlobalConfigurationService_getPairSyncStateReturningError___block_invoke;
  v12[3] = &unk_27843A0A8;
  v12[4] = &v16;
  v12[5] = &v13;
  [v6 getPairSyncStateWithRequestDetails:v5 completionHandler:v12];

  if (*(v14[0] + 40))
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDGlobalConfigurationService *)v5 getPairSyncStateReturningError:v14];
    }
  }

  else
  {
    v7 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17[3]];
      *buf = 138543618;
      v22 = v5;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got pair sync state=%{public}@", buf, 0x16u);
    }
  }

  v9 = v17[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v16, 8);
  os_activity_scope_leave(&state);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void __64__DNDGlobalConfigurationService_getPairSyncStateReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __68__DNDGlobalConfigurationService_setPairSyncPreferenceEnabled_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.didChangeFocusStatusSharingSettingForApplicationIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__DNDGlobalConfigurationService_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke;
  v10[3] = &unk_27843A520;
  v8 = v6;
  v11 = v8;
  v9 = identifierCopy;
  v12 = v9;
  [v7 didChangeFocusStatusSharingSettingForApplicationIdentifier:v9 withRequestDetails:v8 completionHandler:v10];

  os_activity_scope_leave(&state);
}

void __92__DNDGlobalConfigurationService_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 BOOLValue];
  v8 = DNDLogGlobalConfiguration;
  if (v7)
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = v8;
      v12 = [v5 BOOLValue];
      v13 = @"N";
      v15 = 138543874;
      v16 = v9;
      v17 = 2114;
      if (v12)
      {
        v13 = @"Y";
      }

      v18 = v10;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Signaled change to focus status sharing setting, applicationIdentifier=%{public}@ success=%{public}@", &v15, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    __92__DNDGlobalConfigurationService_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke_cold_1(a1);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)getAccountFeatureSupportWithError:(id *)error
{
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAccountFeatureSupport", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v6 = +[DNDRemoteServiceConnection sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__DNDGlobalConfigurationService_getAccountFeatureSupportWithError___block_invoke;
  v10[3] = &unk_27843AC58;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [v6 getAccountFeatureSupportWithRequestDetails:v7 completionHandler:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  os_activity_scope_leave(&state);

  return v8;
}

void __67__DNDGlobalConfigurationService_getAccountFeatureSupportWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got account feature support=%{public}@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    __67__DNDGlobalConfigurationService_getAccountFeatureSupportWithError___block_invoke_cold_1(a1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addListener:(id)listener withCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.addListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = DNDLogGlobalConfiguration;
  if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = listenerCopy;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "Adding update listener: listener=%{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__DNDGlobalConfigurationService_addListener_withCompletionHandler___block_invoke;
  v15[3] = &unk_27843A728;
  v16 = v8;
  selfCopy = self;
  v18 = listenerCopy;
  v19 = handlerCopy;
  v11 = handlerCopy;
  v12 = listenerCopy;
  v13 = v8;
  dispatch_sync(queue, v15);

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x277D85DE8];
}

void __67__DNDGlobalConfigurationService_addListener_withCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  [*(*(a1 + 40) + 24) addObject:*(a1 + 48)];
  v2 = [*(a1 + 40) _queue_registerForUpdatesIfRequired];
  v3 = DNDLogGlobalConfiguration;
  if (v2)
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      *buf = 138543362;
      v13 = v4;
      _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "Registered for updates: listener=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke_cold_1((a1 + 48), v3);
    }

    [*(*(a1 + 40) + 24) removeObject:*(a1 + 48)];
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(*(a1 + 40) + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__DNDGlobalConfigurationService_addListener_withCompletionHandler___block_invoke_35;
    v8[3] = &unk_27843A1C0;
    v9 = v5;
    v10 = v2;
    dispatch_async(v6, v8);
  }

  os_activity_scope_leave(&state);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeListener:(id)listener
{
  v18 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.removeListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = DNDLogGlobalConfiguration;
  if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = listenerCopy;
    _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Removing update listener: listener=%{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DNDGlobalConfigurationService_removeListener___block_invoke;
  block[3] = &unk_27843A210;
  v12 = v5;
  selfCopy = self;
  v14 = listenerCopy;
  v8 = listenerCopy;
  v9 = v5;
  dispatch_sync(queue, block);

  os_activity_scope_leave(&state);
  v10 = *MEMORY[0x277D85DE8];
}

void __48__DNDGlobalConfigurationService_removeListener___block_invoke(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v2);
  [*(*(a1 + 40) + 24) removeObject:*(a1 + 48)];
  os_activity_scope_leave(&v2);
}

- (void)remoteService:(id)service didReceiveUpdatedPairSyncState:(unint64_t)state
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPairSyncState___block_invoke;
  v5[3] = &unk_27843ACA8;
  v5[4] = self;
  v5[5] = state;
  dispatch_sync(queue, v5);
}

void __78__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPairSyncState___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPairSyncState___block_invoke_2;
  v6[3] = &unk_27843AC80;
  objc_copyWeak(v8, &location);
  v4 = *(a1 + 40);
  v7 = v2;
  v8[1] = v4;
  v5 = v2;
  dispatch_async(v3, v6);

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __78__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPairSyncState___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 globalConfigurationService:WeakRetained didReceiveUpdatedPairSyncState:{*(a1 + 48), v10}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)service didReceiveUpdatedPreventAutoReplySetting:(BOOL)setting
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPreventAutoReplySetting___block_invoke;
  v5[3] = &unk_27843AC30;
  v5[4] = self;
  settingCopy = setting;
  dispatch_sync(queue, v5);
}

void __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPreventAutoReplySetting___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPreventAutoReplySetting___block_invoke_2;
  v5[3] = &unk_27843AC08;
  objc_copyWeak(&v7, &location);
  v6 = v2;
  v8 = *(a1 + 40);
  v4 = v2;
  dispatch_async(v3, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPreventAutoReplySetting___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 globalConfigurationService:WeakRetained didReceiveUpdatedPreventAutoReplySetting:{*(a1 + 48), v10}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)service didReceiveUpdatedPhoneCallBypassSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_sync(queue, v8);
}

void __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke_2;
  v5[3] = &unk_27843ACD0;
  objc_copyWeak(&v8, &location);
  v6 = v2;
  v7 = *(a1 + 40);
  v4 = v2;
  dispatch_async(v3, v5);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 globalConfigurationService:WeakRetained didReceiveUpdatedPhoneCallBypassSettings:{*(a1 + 40), v10}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getStateDumpReturningError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getStateDump", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__9;
  v13[3] = __Block_byref_object_dispose__9;
  v14 = 0;
  v6 = +[DNDRemoteServiceConnection sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__DNDGlobalConfigurationService_getStateDumpReturningError___block_invoke;
  v11[3] = &unk_27843ACF8;
  v11[4] = &v15;
  v11[5] = &v12;
  [v6 getStateDumpWithRequestDetails:v5 completionHandler:v11];

  v7 = DNDLogGlobalConfiguration;
  if (*(v13[0] + 40))
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDGlobalConfigurationService *)v5 getStateDumpReturningError:v13];
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got state dump", buf, 0xCu);
  }

  v8 = v16[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v15, 8);
  os_activity_scope_leave(&state);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __60__DNDGlobalConfigurationService_getStateDumpReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = DNDGlobalConfigurationService;
  v5 = [(DNDGlobalConfigurationService *)&v18 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    listeners = v5->_listeners;
    v5->_listeners = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.donotdisturb.DNDGlobalConfigurationService", v10);
    queue = v5->_queue;
    v5->_queue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.donotdisturb.DNDGlobalConfigurationService.callout", v13);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v14;

    v16 = +[DNDRemoteServiceConnection sharedInstance];
    [v16 addEventListener:v5];
  }

  return v5;
}

- (BOOL)_queue_registerForUpdatesIfRequired
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSHashTable *)self->_listeners count]&& !self->_registeredForUpdates)
  {
    v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.registerForUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v5 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering update listener", &buf, 0xCu);
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__9;
    v19 = __Block_byref_object_dispose__9;
    v20 = 0;
    v6 = +[DNDRemoteServiceConnection sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__DNDGlobalConfigurationService__queue_registerForUpdatesIfRequired__block_invoke;
    v10[3] = &unk_27843A0A8;
    v10[4] = &v11;
    v10[5] = &buf;
    [v6 registerForGlobalConfigurationUpdatesWithRequestDetails:v4 completionHandler:v10];

    if (*(*(&buf + 1) + 40) && os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDGlobalConfigurationService *)v4 _queue_registerForUpdatesIfRequired];
    }

    self->_registeredForUpdates = *(v12 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v11, 8);
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

  v8 = *MEMORY[0x277D85DE8];
  return registeredForUpdates;
}

void __68__DNDGlobalConfigurationService__queue_registerForUpdatesIfRequired__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getPreventAutoReplyReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPreventAutoReply:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)modesCanImpactAvailability
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setModesCanImpactAvailability:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getCloudSyncStateReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setCloudSyncPreferenceEnabled:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getPairSyncStateReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPairSyncPreferenceEnabled:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __92__DNDGlobalConfigurationService_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__DNDGlobalConfigurationService_getAccountFeatureSupportWithError___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getStateDumpReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_registerForUpdatesIfRequired
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

@end