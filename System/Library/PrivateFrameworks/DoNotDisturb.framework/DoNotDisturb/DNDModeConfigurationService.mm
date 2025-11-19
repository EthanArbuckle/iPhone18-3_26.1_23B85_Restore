@interface DNDModeConfigurationService
+ (id)serviceForClientIdentifier:(id)a3;
- (BOOL)_queue_registerForUpdatesIfRequired;
- (BOOL)canRemoveModeConfigurationForModeIdentifier:(id)a3;
- (BOOL)clearAppActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6;
- (BOOL)clearAppConfigurationActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6;
- (BOOL)clearSystemActionWithIdentifier:(id)a3 forModeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)clearSystemConfigurationActionWithIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)getSyncAvailableReturningError:(id *)a3;
- (BOOL)getSyncEnabledReturningError:(id *)a3;
- (BOOL)getSyncPreferenceEnabledReturningError:(id *)a3;
- (BOOL)hasActivelyConfiguredModes:(BOOL *)a3 error:(id *)a4;
- (BOOL)hasActivelyConfiguredModesReturningError:(id *)a3;
- (BOOL)isLocalUserAvailableForContactInActiveMode:(id)a3 error:(id *)a4;
- (BOOL)resetAppConfigurationState;
- (BOOL)setAppAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6;
- (BOOL)setAppConfigurationAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6;
- (BOOL)setAppConfigurationPredicate:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 error:(id *)a7;
- (BOOL)setAppConfigurationTargetContentIdentifierPrefix:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 error:(id *)a7;
- (BOOL)setModeConfiguration:(id)a3 error:(id *)a4;
- (BOOL)setSystemAction:(id)a3 forModeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setSystemConfigurationAction:(id)a3 modeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)syncModeConfigurationsReturningError:(id *)a3;
- (id)_createDefaultModeConfigurationForIdentifier:(id)a3 withRequestDetails:(id)a4 error:(id *)a5;
- (id)_createEmptyModeConfigurationForMode:(id)a3 withRequestDetails:(id)a4 error:(id *)a5;
- (id)_createModeSpecificConfigurationForModeSemanticType:(int64_t)a3 withIdentifier:(id)a4;
- (id)_createTriggersForFocusWithIdentifier:(id)a3;
- (id)_initWithClientIdentifier:(id)a3;
- (id)_setModeConfigurationDefaultsForModeConfiguration:(id)a3 withIdentifier:(id)a4;
- (id)allModesReturningError:(id *)a3;
- (id)allowedModesForContactHandle:(id)a3 error:(id *)a4;
- (id)availableModesReturningError:(id *)a3;
- (id)createDefaultDrivingModeConfigurationWithError:(id *)a3;
- (id)createDefaultSleepingModeConfigurationWithError:(id *)a3;
- (id)createDefaultWorkoutModeConfigurationWithError:(id *)a3;
- (id)createEmptyModeConfigurationForMode:(id)a3 error:(id *)a4;
- (id)createModeConfigurationUsingTemplateForModeIdentifier:(id)a3 error:(id *)a4;
- (id)createModeConfigurationUsingTemplateForModeSemanticType:(int64_t)a3 error:(id *)a4;
- (id)getAppActionsForModeIdentifier:(id)a3 error:(id *)a4;
- (id)getAppConfigurationActionsForModeIdentifier:(id)a3 error:(id *)a4;
- (id)getAppConfigurationPredicateForActionIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6;
- (id)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(id)a3 error:(id *)a4;
- (id)getSystemActionsForModeIdentifier:(id)a3 error:(id *)a4;
- (id)getSystemConfigurationActionsForModeIdentifier:(id)a3 error:(id *)a4;
- (id)modeConfigurationForModeIdentifier:(id)a3 error:(id *)a4;
- (id)modeConfigurationsReturningError:(id *)a3;
- (id)publishCurrentStatusKitAvailabilityReturningError:(id *)a3;
- (id)silencedModesForContactHandle:(id)a3 error:(id *)a4;
- (unint64_t)_defaultConfigurationTypeForModeSemanticType:(int64_t)a3;
- (void)_queue_registerForUpdatesIfRequired;
- (void)addListener:(id)a3 withCompletionHandler:(id)a4;
- (void)remoteService:(id)a3 didReceiveAppConfigurationContextUpdateForModeIdentifier:(id)a4;
- (void)remoteService:(id)a3 didReceiveUpdatedAvailableModeIdentifiers:(id)a4;
- (void)removeListener:(id)a3;
- (void)resetAppConfigurationState;
@end

@implementation DNDModeConfigurationService

+ (id)serviceForClientIdentifier:(id)a3
{
  v4 = a3;
  if (serviceForClientIdentifier__onceToken_3 != -1)
  {
    +[DNDModeConfigurationService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__DNDModeConfigurationService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __58__DNDModeConfigurationService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDModeConfigurationService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_3;
  serviceForClientIdentifier__lockQueue_3 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_3;
  serviceForClientIdentifier__serviceByClientIdentifier_3 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __58__DNDModeConfigurationService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_3 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_3;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (BOOL)hasActivelyConfiguredModesReturningError:(id *)a3
{
  v8 = 0;
  v7 = 0;
  [(DNDModeConfigurationService *)self hasActivelyConfiguredModes:&v8 error:&v7];
  v4 = v7;
  if (a3)
  {
    v4 = v4;
    *a3 = v4;
  }

  v5 = v8;

  return v5;
}

- (BOOL)hasActivelyConfiguredModes:(BOOL *)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.hasActivelyConfiguredModes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v34 = 0;
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x3032000000;
  v27[2] = __Block_byref_object_copy__3;
  v27[3] = __Block_byref_object_dispose__3;
  v28 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __64__DNDModeConfigurationService_hasActivelyConfiguredModes_error___block_invoke;
  v25[3] = &unk_27843A5C0;
  v25[4] = &v29;
  v25[5] = &v26;
  [v9 getModeConfigurationsWithRequestDetails:v8 completionHandler:v25];

  if (*(v27[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService hasActivelyConfiguredModes:v8 error:v27];
    }

    LOBYTE(v10) = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v30[5];
    v10 = [v11 countByEnumeratingWithState:&v21 objects:v40 count:16];
    if (v10)
    {
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v11);
          }

          if (([*(*(&v21 + 1) + 8 * i) isAutomaticallyGenerated] & 1) == 0)
          {
            LODWORD(v10) = 1;
            goto LABEL_15;
          }
        }

        v10 = [v11 countByEnumeratingWithState:&v21 objects:v40 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v14 = DNDLogModeConfiguration;
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"NO";
      if (v10)
      {
        v15 = @"YES";
      }

      *buf = 138543618;
      v37 = v8;
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&dword_22002F000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Determined if modes have been actively configured, hasActivelyConfiguredModes=%{public}@", buf, 0x16u);
    }
  }

  v16 = v27[0];
  if (a4)
  {
    v17 = *(v27[0] + 40);
    if (v17)
    {
      *a4 = v17;
      v16 = v27[0];
    }
  }

  *a3 = v10;
  v18 = *(v16 + 40) == 0;
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v29, 8);
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __64__DNDModeConfigurationService_hasActivelyConfiguredModes_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)createModeConfigurationUsingTemplateForModeSemanticType:(int64_t)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3 - 1;
  if (a3 - 1) < 9 && ((0x1FDu >> v5))
  {
    v6 = [(DNDModeConfigurationService *)self createModeConfigurationUsingTemplateForModeIdentifier:off_27843A7C0[v5] error:a4];
  }

  else
  {
    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277CCA450];
      v12[0] = @"Mode not supported.";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      *a4 = [v7 errorWithDomain:@"DNDErrorDomain" code:1006 userInfo:v8];
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)setModeConfiguration:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__3;
  v18[3] = __Block_byref_object_dispose__3;
  v19 = 0;
  v9 = [v6 copy];
  v10 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__DNDModeConfigurationService_setModeConfiguration_error___block_invoke;
  v16[3] = &unk_27843A0A8;
  v16[4] = &v20;
  v16[5] = &v17;
  [v10 setModeConfiguration:v9 withRequestDetails:v8 completionHandler:v16];

  v11 = DNDLogModeConfiguration;
  if (*(v21 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = v9;
      _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set mode configuration, configuration=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setModeConfiguration:v8 error:v18];
  }

  if (a4)
  {
    v12 = *(v18[0] + 40);
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = *(v21 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __58__DNDModeConfigurationService_setModeConfiguration_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)canRemoveModeConfigurationForModeIdentifier:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.removeModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v4, &v7);
  v5 = [v3 isEqualToString:@"com.apple.donotdisturb.mode.default"];
  os_activity_scope_leave(&v7);

  return v5 ^ 1;
}

- (id)modeConfigurationsReturningError:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getModeConfigurations", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = __Block_byref_object_copy__3;
  v15[3] = __Block_byref_object_dispose__3;
  v16 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__DNDModeConfigurationService_modeConfigurationsReturningError___block_invoke;
  v13[3] = &unk_27843A5C0;
  v13[4] = &v17;
  v13[5] = &v14;
  [v7 getModeConfigurationsWithRequestDetails:v6 completionHandler:v13];

  v8 = DNDLogModeConfiguration;
  if (*(v15[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeConfigurationService *)v6 modeConfigurationsReturningError:v15];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get mode configurations", buf, 0xCu);
  }

  if (a3)
  {
    v9 = *(v15[0] + 40);
    if (v9)
    {
      *a3 = v9;
    }
  }

  v10 = v18[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v17, 8);
  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __64__DNDModeConfigurationService_modeConfigurationsReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 mode];
        v15 = [v14 modeIdentifier];
        [v7 setObject:v13 forKeyedSubscript:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v16 = *(*(a1 + 32) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v7;
  v18 = v7;

  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v6;

  v21 = *MEMORY[0x277D85DE8];
}

- (id)modeConfigurationForModeIdentifier:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy__3;
  v17[3] = __Block_byref_object_dispose__3;
  v18 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__DNDModeConfigurationService_modeConfigurationForModeIdentifier_error___block_invoke;
  v15[3] = &unk_27843A5E8;
  v15[4] = &v19;
  v15[5] = &v16;
  [v9 getModeConfigurationForModeIdentifier:v6 withRequestDetails:v8 completionHandler:v15];

  v10 = DNDLogModeConfiguration;
  if (*(v17[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeConfigurationService *)v8 modeConfigurationsReturningError:v17];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = v8;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get mode configuration, identifier=%{public}@", buf, 0x16u);
  }

  if (a4)
  {
    v11 = *(v17[0] + 40);
    if (v11)
    {
      *a4 = v11;
    }
  }

  v12 = v20[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __72__DNDModeConfigurationService_modeConfigurationForModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)isLocalUserAvailableForContactInActiveMode:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getIsLocalUserAvailable", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__3;
  v18[3] = __Block_byref_object_dispose__3;
  v19 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__DNDModeConfigurationService_isLocalUserAvailableForContactInActiveMode_error___block_invoke;
  v16[3] = &unk_27843A0A8;
  v16[4] = &v20;
  v16[5] = &v17;
  [v9 getUserAvailabilityInActiveModeForContactHandle:v6 withRequestDetails:v8 completionHandler:v16];

  if (*(v18[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService isLocalUserAvailableForContactInActiveMode:v8 error:v18];
    }
  }

  else
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v21 + 24)];
      *buf = 138543875;
      v26 = v8;
      v27 = 2114;
      v28 = v11;
      v29 = 2113;
      v30 = v6;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get user availability in current mode for contact, availability=%{public}@, handle=%{private}@", buf, 0x20u);
    }
  }

  if (a4)
  {
    v12 = *(v18[0] + 40);
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = *(v21 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __80__DNDModeConfigurationService_isLocalUserAvailableForContactInActiveMode_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)allowedModesForContactHandle:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAllowedModesForContact", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy__3;
  v17[3] = __Block_byref_object_dispose__3;
  v18 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__DNDModeConfigurationService_allowedModesForContactHandle_error___block_invoke;
  v15[3] = &unk_27843A5C0;
  v15[4] = &v19;
  v15[5] = &v16;
  [v9 getAllowedModesForContactHandle:v6 withRequestDetails:v8 completionHandler:v15];

  v10 = DNDLogModeConfiguration;
  if (*(v17[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService allowedModesForContactHandle:v8 error:v17];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    v27 = v8;
    v28 = 2113;
    v29 = v6;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get allowed modes for contact, handle=%{private}@", buf, 0x16u);
  }

  if (a4)
  {
    v11 = *(v17[0] + 40);
    if (v11)
    {
      *a4 = v11;
    }
  }

  v12 = v20[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __66__DNDModeConfigurationService_allowedModesForContactHandle_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)silencedModesForContactHandle:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSilencedModesForContact", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy__3;
  v17[3] = __Block_byref_object_dispose__3;
  v18 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__DNDModeConfigurationService_silencedModesForContactHandle_error___block_invoke;
  v15[3] = &unk_27843A5C0;
  v15[4] = &v19;
  v15[5] = &v16;
  [v9 getSilencedModesForContactHandle:v6 withRequestDetails:v8 completionHandler:v15];

  v10 = DNDLogModeConfiguration;
  if (*(v17[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService silencedModesForContactHandle:v8 error:v17];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    v27 = v8;
    v28 = 2113;
    v29 = v6;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get silenced modes for contact, handle=%{private}@", buf, 0x16u);
  }

  if (a4)
  {
    v11 = *(v17[0] + 40);
    if (v11)
    {
      *a4 = v11;
    }
  }

  v12 = v20[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __67__DNDModeConfigurationService_silencedModesForContactHandle_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)publishCurrentStatusKitAvailabilityReturningError:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.publishCurrentStatusKitAvailability", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__3;
  v16[3] = __Block_byref_object_dispose__3;
  v17 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__DNDModeConfigurationService_publishCurrentStatusKitAvailabilityReturningError___block_invoke;
  v14[3] = &unk_27843A610;
  v14[4] = &v18;
  v14[5] = &v15;
  [v7 publishStatusKitAvailabilityWithRequestDetails:v6 completionHandler:v14];

  v8 = DNDLogModeConfiguration;
  if (*(v16[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeConfigurationService *)v6 publishCurrentStatusKitAvailabilityReturningError:v16];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v19[5];
    *buf = 138543618;
    v26 = v6;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request to publish statuskit availability succeeded: %{public}@", buf, 0x16u);
  }

  if (a3)
  {
    v10 = *(v16[0] + 40);
    if (v10)
    {
      *a3 = v10;
    }
  }

  v11 = v19[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v18, 8);
  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __81__DNDModeConfigurationService_publishCurrentStatusKitAvailabilityReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)allModesReturningError:(id *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.allModes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__DNDModeConfigurationService_allModesReturningError___block_invoke;
  v14[3] = &unk_27843A638;
  v14[4] = &v21;
  v14[5] = &v15;
  [v7 getAllModesWithRequestDetails:v6 completionHandler:v14];

  if (a3)
  {
    v8 = v16[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v22[5];
    *buf = 138543618;
    v29 = v6;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got all modes, modes=%{public}@", buf, 0x16u);
  }

  v11 = [MEMORY[0x277CBEB98] setWithArray:v22[5]];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __54__DNDModeConfigurationService_allModesReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)availableModesReturningError:(id *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.availableModes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__DNDModeConfigurationService_availableModesReturningError___block_invoke;
  v14[3] = &unk_27843A638;
  v14[4] = &v21;
  v14[5] = &v15;
  [v7 getAvailableModesWithRequestDetails:v6 completionHandler:v14];

  if (a3)
  {
    v8 = v16[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v22[5];
    *buf = 138543618;
    v29 = v6;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got available modes, modes=%{public}@", buf, 0x16u);
  }

  v11 = [MEMORY[0x277CBEB98] setWithArray:v22[5]];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __60__DNDModeConfigurationService_availableModesReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)setAppConfigurationPredicate:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setAppConfigurationPredicate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  v17 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v25 = 0;
  v26[0] = &v25;
  v26[1] = 0x3032000000;
  v26[2] = __Block_byref_object_copy__3;
  v26[3] = __Block_byref_object_dispose__3;
  v27 = 0;
  v18 = +[DNDRemoteServiceConnection sharedInstance];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __126__DNDModeConfigurationService_setAppConfigurationPredicate_forActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v24[3] = &unk_27843A0A8;
  v24[4] = &v28;
  v24[5] = &v25;
  [v18 setAppConfigurationPredicate:v12 forActionIdentifier:v13 forApplicationIdentifier:v14 modeIdentifier:v15 withRequestDetails:v17 completionHandler:v24];

  v19 = DNDLogModeConfiguration;
  if (*(v29 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v34 = v17;
      v35 = 2114;
      v36 = v12;
      v37 = 2114;
      v38 = v14;
      v39 = 2114;
      v40 = v15;
      _os_log_impl(&dword_22002F000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set app configuration predicate, predicate=%{public}@ applicationIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setAppConfigurationPredicate:v17 forActionIdentifier:v26 forApplicationIdentifier:? modeIdentifier:? error:?];
  }

  if (a7)
  {
    v20 = *(v26[0] + 40);
    if (v20)
    {
      *a7 = v20;
    }
  }

  v21 = *(v29 + 24);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v28, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __126__DNDModeConfigurationService_setAppConfigurationPredicate_forActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getAppConfigurationPredicateForActionIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAppConfigurationPredicate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v14 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x3032000000;
  v24[2] = __Block_byref_object_copy__3;
  v24[3] = __Block_byref_object_dispose__3;
  v25 = 0;
  v15 = +[DNDRemoteServiceConnection sharedInstance];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __125__DNDModeConfigurationService_getAppConfigurationPredicateForActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v22[3] = &unk_27843A660;
  v22[4] = &v26;
  v22[5] = &v23;
  [v15 getAppConfigurationPredicateForActionIdentifier:v10 forApplicationIdentifier:v11 modeIdentifier:v12 withRequestDetails:v14 completionHandler:v22];

  v16 = DNDLogModeConfiguration;
  if (*(v24[0] + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService getAppConfigurationPredicateForActionIdentifier:v14 forApplicationIdentifier:v24 modeIdentifier:? error:?];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v27[5];
    *buf = 138544130;
    v34 = v14;
    v35 = 2114;
    v36 = v17;
    v37 = 2114;
    v38 = v11;
    v39 = 2114;
    v40 = v12;
    _os_log_impl(&dword_22002F000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got app configuration predicate, predicate=%{public}@ applicationIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
  }

  if (a6)
  {
    v18 = *(v24[0] + 40);
    if (v18)
    {
      *a6 = v18;
    }
  }

  v19 = v27[5];
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v26, 8);
  os_activity_scope_leave(&state);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __125__DNDModeConfigurationService_getAppConfigurationPredicateForActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)setAppConfigurationTargetContentIdentifierPrefix:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setAppConfigurationTargetContentIdentifierPrefix", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  v17 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v25 = 0;
  v26[0] = &v25;
  v26[1] = 0x3032000000;
  v26[2] = __Block_byref_object_copy__3;
  v26[3] = __Block_byref_object_dispose__3;
  v27 = 0;
  v18 = +[DNDRemoteServiceConnection sharedInstance];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __146__DNDModeConfigurationService_setAppConfigurationTargetContentIdentifierPrefix_forActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v24[3] = &unk_27843A0A8;
  v24[4] = &v28;
  v24[5] = &v25;
  [v18 setAppConfigurationTargetContentIdentifierPrefix:v12 forActionIdentifier:v13 forApplicationIdentifier:v14 modeIdentifier:v15 withRequestDetails:v17 completionHandler:v24];

  v19 = DNDLogModeConfiguration;
  if (*(v29 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v34 = v17;
      v35 = 2114;
      v36 = v12;
      v37 = 2114;
      v38 = v14;
      v39 = 2114;
      v40 = v15;
      _os_log_impl(&dword_22002F000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set target content identifier prefix, prefix=%{public}@ applicationIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setAppConfigurationTargetContentIdentifierPrefix:v17 forActionIdentifier:v26 forApplicationIdentifier:? modeIdentifier:? error:?];
  }

  if (a7)
  {
    v20 = *(v26[0] + 40);
    if (v20)
    {
      *a7 = v20;
    }
  }

  v21 = *(v29 + 24);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v28, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __146__DNDModeConfigurationService_setAppConfigurationTargetContentIdentifierPrefix_forActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAppConfigurationTargetContentIdentifierPrefixes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__3;
  v18[3] = __Block_byref_object_dispose__3;
  v19 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__DNDModeConfigurationService_getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier_error___block_invoke;
  v16[3] = &unk_27843A688;
  v16[4] = &v20;
  v16[5] = &v17;
  [v9 getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:v6 withRequestDetails:v8 completionHandler:v16];

  if (v21[5])
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21[5], "count")}];
      *buf = 138543874;
      v28 = v8;
      v29 = 2112;
      v30 = v11;
      v31 = 2114;
      v32 = v6;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %@ target content identifier prefixes for modeIdentifier %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:v8 error:v18];
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

void __105__DNDModeConfigurationService_getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 appConfigurationTargetContentIdentifierPrefixesForModeIdentifier];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (BOOL)setAppConfigurationAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setAppConfigurationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v13, &v16);
  v14 = [[DNDAppAction alloc] initWithAction:v10 enabled:1];
  LOBYTE(a6) = [(DNDModeConfigurationService *)self setAppAction:v14 forApplicationIdentifier:v11 modeIdentifier:v12 error:a6];

  os_activity_scope_leave(&v16);
  return a6;
}

- (BOOL)clearAppConfigurationActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.clearAppConfigurationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v13, &v15);
  LOBYTE(a6) = [(DNDModeConfigurationService *)self clearAppActionWithIdentifier:v10 forApplicationIdentifier:v11 modeIdentifier:v12 error:a6];
  os_activity_scope_leave(&v15);

  return a6;
}

- (id)getAppConfigurationActionsForModeIdentifier:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v26 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAppConfigurationActions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v26, &state);
  v25 = v6;
  v7 = [(DNDModeConfigurationService *)self getAppActionsForModeIdentifier:v6 error:a4];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v27 = *v34;
    do
    {
      v28 = v10;
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v9 objectForKeyedSubscript:v12];
        v14 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v13, "count")}];
        [v8 setObject:v14 forKeyedSubscript:v12];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = v13;
        v16 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v16)
        {
          v17 = *v30;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v29 + 1) + 8 * j);
              v20 = [v19 action];

              if (v20)
              {
                v21 = [v8 objectForKeyedSubscript:v12];
                v22 = [v19 action];
                [v21 addObject:v22];
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v16);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v10);
  }

  os_activity_scope_leave(&state);
  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)setAppAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setAppAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v14 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__3;
  v23[3] = __Block_byref_object_dispose__3;
  v24 = 0;
  v15 = +[DNDRemoteServiceConnection sharedInstance];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__DNDModeConfigurationService_setAppAction_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v21[3] = &unk_27843A0A8;
  v21[4] = &v25;
  v21[5] = &v22;
  [v15 setAppAction:v10 forApplicationIdentifier:v11 modeIdentifier:v12 withRequestDetails:v14 completionHandler:v21];

  v16 = DNDLogModeConfiguration;
  if (*(v26 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = v14;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v12;
      _os_log_impl(&dword_22002F000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set app action, action=%{public}@; modeIdentifier=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setAppAction:v14 forApplicationIdentifier:v23 modeIdentifier:? error:?];
  }

  if (a6)
  {
    v17 = *(v23[0] + 40);
    if (v17)
    {
      *a6 = v17;
    }
  }

  v18 = *(v26 + 24);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v25, 8);
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __90__DNDModeConfigurationService_setAppAction_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)clearAppActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.clearAppAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v14 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__3;
  v23[3] = __Block_byref_object_dispose__3;
  v24 = 0;
  v15 = +[DNDRemoteServiceConnection sharedInstance];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __106__DNDModeConfigurationService_clearAppActionWithIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v21[3] = &unk_27843A0A8;
  v21[4] = &v25;
  v21[5] = &v22;
  [v15 clearAppActionWithIdentifier:v10 forApplicationIdentifier:v11 modeIdentifier:v12 withRequestDetails:v14 completionHandler:v21];

  v16 = DNDLogModeConfiguration;
  if (*(v26 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v31 = v14;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v11;
      v36 = 2114;
      v37 = v12;
      _os_log_impl(&dword_22002F000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clear app action, identifier=%{public}@ applicationIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService clearAppActionWithIdentifier:v14 forApplicationIdentifier:v23 modeIdentifier:? error:?];
  }

  if (a6)
  {
    v17 = *(v23[0] + 40);
    if (v17)
    {
      *a6 = v17;
    }
  }

  v18 = *(v26 + 24);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v25, 8);
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __106__DNDModeConfigurationService_clearAppActionWithIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getAppActionsForModeIdentifier:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAppActionsForModeIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__3;
  v19[3] = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__DNDModeConfigurationService_getAppActionsForModeIdentifier_error___block_invoke;
  v17[3] = &unk_27843A6B0;
  v17[4] = &v21;
  v17[5] = &v18;
  [v9 getAppActionsForModeIdentifier:v6 withRequestDetails:v8 completionHandler:v17];

  if (v22[5])
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22[5], "count")}];
      v12 = v22[5];
      *buf = 138544130;
      v29 = v8;
      v30 = 2112;
      v31 = v11;
      v32 = 2114;
      v33 = v6;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %@ app actions for modeIdentifier %{public}@. actions = %@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService getAppActionsForModeIdentifier:v8 error:v19];
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

void __68__DNDModeConfigurationService_getAppActionsForModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 appActionsForModeIdentifier];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (BOOL)resetAppConfigurationState
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.resetAppConfigurationState", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = +[DNDRemoteServiceConnection sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__DNDModeConfigurationService_resetAppConfigurationState__block_invoke;
  v10[3] = &unk_27843A6D8;
  v10[4] = &v11;
  [v5 resetAppConfigurationStateWithRequestDetails:v4 completionHandler:v10];

  v6 = DNDLogModeConfiguration;
  if (*(v12 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reset app configuration state", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [(DNDModeConfigurationService *)v4 resetAppConfigurationState];
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t __57__DNDModeConfigurationService_resetAppConfigurationState__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 BOOLValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)setSystemAction:(id)a3 forModeIdentifier:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setSystemAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v11 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x3032000000;
  v20[2] = __Block_byref_object_copy__3;
  v20[3] = __Block_byref_object_dispose__3;
  v21 = 0;
  v12 = +[DNDRemoteServiceConnection sharedInstance];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__DNDModeConfigurationService_setSystemAction_forModeIdentifier_error___block_invoke;
  v18[3] = &unk_27843A0A8;
  v18[4] = &v22;
  v18[5] = &v19;
  [v12 setSystemAction:v8 forModeIdentifier:v9 withRequestDetails:v11 completionHandler:v18];

  v13 = DNDLogModeConfiguration;
  if (*(v23 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v28 = v11;
      v29 = 2114;
      v30 = v8;
      v31 = 2114;
      v32 = v9;
      _os_log_impl(&dword_22002F000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set system action, action=%{public}@; modeIdentifier=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setSystemAction:v11 forModeIdentifier:v20 error:?];
  }

  if (a5)
  {
    v14 = *(v20[0] + 40);
    if (v14)
    {
      *a5 = v14;
    }
  }

  v15 = *(v23 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __71__DNDModeConfigurationService_setSystemAction_forModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)clearSystemActionWithIdentifier:(id)a3 forModeIdentifier:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.clearSystemAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v11 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x3032000000;
  v20[2] = __Block_byref_object_copy__3;
  v20[3] = __Block_byref_object_dispose__3;
  v21 = 0;
  v12 = +[DNDRemoteServiceConnection sharedInstance];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__DNDModeConfigurationService_clearSystemActionWithIdentifier_forModeIdentifier_error___block_invoke;
  v18[3] = &unk_27843A0A8;
  v18[4] = &v22;
  v18[5] = &v19;
  [v12 clearSystemActionWithIdentifier:v8 forModeIdentifier:v9 withRequestDetails:v11 completionHandler:v18];

  v13 = DNDLogModeConfiguration;
  if (*(v23 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v28 = v11;
      v29 = 2114;
      v30 = v8;
      v31 = 2114;
      v32 = v9;
      _os_log_impl(&dword_22002F000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clear system action, identifier=%{public}@ modeIdentifier=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService clearSystemActionWithIdentifier:v11 forModeIdentifier:v20 error:?];
  }

  if (a5)
  {
    v14 = *(v20[0] + 40);
    if (v14)
    {
      *a5 = v14;
    }
  }

  v15 = *(v23 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __87__DNDModeConfigurationService_clearSystemActionWithIdentifier_forModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getSystemActionsForModeIdentifier:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSystemActionsForModeIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__3;
  v18[3] = __Block_byref_object_dispose__3;
  v19 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__DNDModeConfigurationService_getSystemActionsForModeIdentifier_error___block_invoke;
  v16[3] = &unk_27843A700;
  v16[4] = &v20;
  v16[5] = &v17;
  [v9 getSystemActionsForModeIdentifier:v6 withRequestDetails:v8 completionHandler:v16];

  if (v21[5])
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21[5], "count")}];
      *buf = 138543874;
      v28 = v8;
      v29 = 2112;
      v30 = v11;
      v31 = 2114;
      v32 = v6;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %@ system actions for modeIdentifier %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService getSystemActionsForModeIdentifier:v8 error:v18];
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

void __71__DNDModeConfigurationService_getSystemActionsForModeIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (BOOL)setSystemConfigurationAction:(id)a3 modeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setSystemConfigurationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v10, &v13);
  v11 = [[DNDSystemAction alloc] initWithAction:v8 enabled:1];
  LOBYTE(a5) = [(DNDModeConfigurationService *)self setSystemAction:v11 forModeIdentifier:v9 error:a5];

  os_activity_scope_leave(&v13);
  return a5;
}

- (BOOL)clearSystemConfigurationActionWithIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.clearSystemConfigurationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v10, &v12);
  LOBYTE(a5) = [(DNDModeConfigurationService *)self clearSystemActionWithIdentifier:v8 forModeIdentifier:v9 error:a5];
  os_activity_scope_leave(&v12);

  return a5;
}

- (id)getSystemConfigurationActionsForModeIdentifier:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSystemConfigurationActions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [(DNDModeConfigurationService *)self getSystemActionsForModeIdentifier:v6 error:a4];
  v9 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v8, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 action];

        if (v15)
        {
          v16 = [v14 action];
          [v9 addObject:v16];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v11);
  }

  os_activity_scope_leave(&state);
  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)getSyncPreferenceEnabledReturningError:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSyncPreferenceEnabled", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v17[2] = __Block_byref_object_copy__3;
  v17[3] = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__DNDModeConfigurationService_getSyncPreferenceEnabledReturningError___block_invoke;
  v15[3] = &unk_27843A0A8;
  v15[4] = &v19;
  v15[5] = &v16;
  [v7 getCloudSyncStateWithRequestDetails:v6 completionHandler:v15];

  v8 = v17[0];
  if (a3)
  {
    v9 = *(v17[0] + 40);
    if (v9)
    {
      *a3 = v9;
      v8 = v17[0];
    }
  }

  if (*(v8 + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeConfigurationService *)v6 getSyncPreferenceEnabledReturningError:v17];
    }
  }

  else
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v20 + 24)];
      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got sync preference enabled=%{public}@", buf, 0x16u);
    }
  }

  v12 = *(v20 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __70__DNDModeConfigurationService_getSyncPreferenceEnabledReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue] & 1;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)getSyncAvailableReturningError:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSyncAvailable", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v17[2] = __Block_byref_object_copy__3;
  v17[3] = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__DNDModeConfigurationService_getSyncAvailableReturningError___block_invoke;
  v15[3] = &unk_27843A0A8;
  v15[4] = &v19;
  v15[5] = &v16;
  [v7 getCloudSyncStateWithRequestDetails:v6 completionHandler:v15];

  v8 = v17[0];
  if (a3)
  {
    v9 = *(v17[0] + 40);
    if (v9)
    {
      *a3 = v9;
      v8 = v17[0];
    }
  }

  if (*(v8 + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeConfigurationService *)v6 getSyncAvailableReturningError:v17];
    }
  }

  else
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v20 + 24)];
      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got sync available=%{public}@", buf, 0x16u);
    }
  }

  v12 = *(v20 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __62__DNDModeConfigurationService_getSyncAvailableReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = (~[a2 unsignedIntegerValue] & 0xE) == 0;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)getSyncEnabledReturningError:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSyncEnabled", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v17[2] = __Block_byref_object_copy__3;
  v17[3] = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__DNDModeConfigurationService_getSyncEnabledReturningError___block_invoke;
  v15[3] = &unk_27843A0A8;
  v15[4] = &v19;
  v15[5] = &v16;
  [v7 getCloudSyncStateWithRequestDetails:v6 completionHandler:v15];

  v8 = v17[0];
  if (a3)
  {
    v9 = *(v17[0] + 40);
    if (v9)
    {
      *a3 = v9;
      v8 = v17[0];
    }
  }

  if (*(v8 + 40))
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeConfigurationService *)v6 getSyncEnabledReturningError:v17];
    }
  }

  else
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v20 + 24)];
      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got sync enabled=%{public}@", buf, 0x16u);
    }
  }

  v12 = *(v20 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __60__DNDModeConfigurationService_getSyncEnabledReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue] & 1;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __62__DNDModeConfigurationService_setSyncPreferenceEnabled_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)addListener:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.addListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke;
  v13[3] = &unk_27843A728;
  v14 = v8;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_sync(queue, v13);

  os_activity_scope_leave(&state);
}

void __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Adding update listener: listener=%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 48) + 24) addObject:*(a1 + 40)];
  v4 = [*(a1 + 48) _queue_registerForUpdatesIfRequired];
  v5 = DNDLogModeConfiguration;
  if (v4)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "Registered for updates: listener=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke_cold_1((a1 + 40), v5);
    }

    [*(*(a1 + 48) + 24) removeObject:*(a1 + 40)];
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(*(a1 + 48) + 16);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke_56;
    v10[3] = &unk_27843A1C0;
    v11 = v7;
    v12 = v4;
    dispatch_async(v8, v10);
  }

  os_activity_scope_leave(&state);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.removeListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DNDModeConfigurationService_removeListener___block_invoke;
  block[3] = &unk_27843A210;
  v10 = v5;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v5;
  dispatch_sync(queue, block);

  os_activity_scope_leave(&state);
}

void __46__DNDModeConfigurationService_removeListener___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v5);
  v2 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138543362;
    v7 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Removing update listener: listener=%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 48) + 24) removeObject:*(a1 + 40)];
  os_activity_scope_leave(&v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)a3 didReceiveUpdatedAvailableModeIdentifiers:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__DNDModeConfigurationService_remoteService_didReceiveUpdatedAvailableModeIdentifiers___block_invoke;
  v8[3] = &unk_27843A1E8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __87__DNDModeConfigurationService_remoteService_didReceiveUpdatedAvailableModeIdentifiers___block_invoke(int8x16_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138543362;
    v14 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "received updated available mode identifiers: identifiers=%{public}@", buf, 0xCu);
  }

  v4 = [*(a1[2].i64[1] + 24) copy];
  v5 = *(a1[2].i64[1] + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DNDModeConfigurationService_remoteService_didReceiveUpdatedAvailableModeIdentifiers___block_invoke_57;
  block[3] = &unk_27843A210;
  v11 = v4;
  v9 = a1[2];
  v6 = v9.i64[0];
  v12 = vextq_s8(v9, v9, 8uLL);
  v7 = v4;
  dispatch_async(v5, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __87__DNDModeConfigurationService_remoteService_didReceiveUpdatedAvailableModeIdentifiers___block_invoke_57(uint64_t a1)
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
          [v7 modeConfigurationService:*(a1 + 40) didReceiveAvailableModesUpdate:{*(a1 + 48), v9}];
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

- (void)remoteService:(id)a3 didReceiveAppConfigurationContextUpdateForModeIdentifier:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__DNDModeConfigurationService_remoteService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke;
  v8[3] = &unk_27843A1E8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __102__DNDModeConfigurationService_remoteService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke(int8x16_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138543362;
    v14 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "received updated app configuration context for mode identifier: identifier=%{public}@", buf, 0xCu);
  }

  v4 = [*(a1[2].i64[1] + 24) copy];
  v5 = *(a1[2].i64[1] + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__DNDModeConfigurationService_remoteService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke_58;
  block[3] = &unk_27843A210;
  v11 = v4;
  v9 = a1[2];
  v6 = v9.i64[0];
  v12 = vextq_s8(v9, v9, 8uLL);
  v7 = v4;
  dispatch_async(v5, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __102__DNDModeConfigurationService_remoteService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke_58(uint64_t a1)
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
          [v7 modeConfigurationService:*(a1 + 40) didReceiveAppConfigurationContextUpdateForModeIdentifier:{*(a1 + 48), v9}];
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

- (BOOL)syncModeConfigurationsReturningError:(id *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.syncModeConfigurations", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__DNDModeConfigurationService_syncModeConfigurationsReturningError___block_invoke;
  v13[3] = &unk_27843A0A8;
  v13[4] = &v20;
  v13[5] = &v14;
  [v7 syncModeConfigurationsWithRequestDetails:v6 completionHandler:v13];

  if (a3)
  {
    v8 = v15[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Synced mode configurations", buf, 0xCu);
  }

  v10 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __68__DNDModeConfigurationService_syncModeConfigurationsReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)createDefaultDrivingModeConfigurationWithError:(id *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createDefaultDrivingModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v5, &v11);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating Driving mode configuration from template", buf, 0xCu);
  }

  v8 = [(DNDModeConfigurationService *)self _createDefaultModeConfigurationForIdentifier:@"com.apple.donotdisturb.mode.driving" withRequestDetails:v6 error:a3];

  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)createDefaultSleepingModeConfigurationWithError:(id *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createDefaultSleepingModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v5, &v11);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating Sleeping mode configuration from template", buf, 0xCu);
  }

  v8 = [(DNDModeConfigurationService *)self _createDefaultModeConfigurationForIdentifier:@"com.apple.sleep.sleep-mode" withRequestDetails:v6 error:a3];

  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)createDefaultWorkoutModeConfigurationWithError:(id *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createDefaultWorkoutModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v5, &v11);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating Workout mode configuration from template", buf, 0xCu);
  }

  v8 = [(DNDModeConfigurationService *)self _createDefaultModeConfigurationForIdentifier:@"com.apple.donotdisturb.mode.workout" withRequestDetails:v6 error:a3];

  os_activity_scope_leave(&v11);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)createModeConfigurationUsingTemplateForModeIdentifier:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createModeConfigurationUsingTemplateForModeIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v9 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating mode configuration from template for identifier: identifier=%{pubic}@", buf, 0x16u);
  }

  v10 = [(DNDModeConfigurationService *)self _createDefaultModeConfigurationForIdentifier:v6 withRequestDetails:v8 error:a4];

  os_activity_scope_leave(&v13);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createEmptyModeConfigurationForMode:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createEmptyModeConfigurationForMode", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v7, &v14);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v9 = DNDLogSettings;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 modeIdentifier];
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating mode configuration from template for identifier: identifier=%{pubic}@", buf, 0x16u);
  }

  v11 = [(DNDModeConfigurationService *)self _createEmptyModeConfigurationForMode:v6 withRequestDetails:v8 error:a4];

  os_activity_scope_leave(&v14);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_initWithClientIdentifier:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DNDModeConfigurationService;
  v5 = [(DNDModeConfigurationService *)&v18 init];
  if (v5)
  {
    v6 = [v4 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.donotdisturb.DNDModeConfigurationService", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.donotdisturb.DNDModeConfigurationService.call-out", v11);
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

void __96__DNDModeConfigurationService_removeModeConfigurationForModeIdentifier_deletePlaceholder_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)_queue_registerForUpdatesIfRequired
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSHashTable *)self->_listeners count]&& !self->_registeredForUpdates)
  {
    v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.registerForUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v5 = DNDLogSettings;
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
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
    v18 = __Block_byref_object_copy__3;
    v19 = __Block_byref_object_dispose__3;
    v20 = 0;
    v6 = +[DNDRemoteServiceConnection sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__DNDModeConfigurationService__queue_registerForUpdatesIfRequired__block_invoke;
    v10[3] = &unk_27843A750;
    v10[4] = &v11;
    v10[5] = &buf;
    [v6 registerForModeSelectionUpdatesWithRequestDetails:v4 completionHandler:v10];

    if (*(*(&buf + 1) + 40) && os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
    {
      [(DNDModeConfigurationService *)v4 _queue_registerForUpdatesIfRequired];
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

void __66__DNDModeConfigurationService__queue_registerForUpdatesIfRequired__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (unint64_t)_defaultConfigurationTypeForModeSemanticType:(int64_t)a3
{
  if (a3 > 9)
  {
    return 2;
  }

  else
  {
    return qword_22007C5E8[a3];
  }
}

- (id)_createDefaultModeConfigurationForIdentifier:(id)a3 withRequestDetails:(id)a4 error:(id *)a5
{
  v45[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(DNDModeConfigurationService *)self allModesReturningError:a5];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __101__DNDModeConfigurationService__createDefaultModeConfigurationForIdentifier_withRequestDetails_error___block_invoke;
  v28[3] = &unk_27843A778;
  v11 = v8;
  v29 = v11;
  v30 = &v38;
  v31 = &v32;
  [v10 enumerateObjectsUsingBlock:v28];
  if ((v39[3] & 1) == 0)
  {
    if (v33[5])
    {
      if ([v11 isEqualToString:@"com.apple.focus.reduce-interruptions"])
      {
        v15 = +[(DNDModeConfiguration *)DNDMutableModeConfiguration];
        v16 = [v15 mutableCopy];
        v13 = 0;
      }

      else
      {
        v19 = [DNDMode alloc];
        v20 = [v33[5] name];
        v21 = [v33[5] modeIdentifier];
        v22 = [v33[5] symbolImageName];
        v23 = [v33[5] tintColorName];
        v13 = -[DNDMode initWithName:modeIdentifier:symbolImageName:tintColorName:semanticType:](v19, "initWithName:modeIdentifier:symbolImageName:tintColorName:semanticType:", v20, v21, v22, v23, [v33[5] semanticType]);

        v15 = [(DNDModeConfigurationService *)self _createModeSpecificConfigurationForModeSemanticType:[(DNDMode *)v13 semanticType] withIdentifier:v11];
        v24 = [(DNDModeConfigurationService *)self _createTriggersForFocusWithIdentifier:v11];
        v25 = [(DNDModeConfiguration *)[DNDMutableModeConfiguration alloc] initWithMode:v13 configuration:v15 triggers:v24];
        v16 = [(DNDModeConfigurationService *)self _setModeConfigurationDefaultsForModeConfiguration:v25 withIdentifier:v11];
      }

      if ([(DNDModeConfigurationService *)self setModeConfiguration:v16 error:a5])
      {
        v18 = [v16 copy];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_16;
    }

    if (a5)
    {
      v17 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v45[0] = @"No template found for mode identifier.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v14 = [v17 errorWithDomain:@"DNDErrorDomain" code:1002 userInfo:v13];
      goto LABEL_9;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_17;
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  v12 = MEMORY[0x277CCA9B8];
  v42 = *MEMORY[0x277CCA450];
  v43 = @"Mode configuration already exists for mode identifier.";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v14 = [v12 errorWithDomain:@"DNDErrorDomain" code:1001 userInfo:v13];
LABEL_9:
  v18 = 0;
  *a5 = v14;
LABEL_16:

LABEL_17:
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v18;
}

void __101__DNDModeConfigurationService__createDefaultModeConfigurationForIdentifier_withRequestDetails_error___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 modeIdentifier];
  v7 = [v6 isEqualToString:a1[4]];

  if (v7)
  {
    *(*(a1[5] + 8) + 24) = [v8 isPlaceholder] ^ 1;
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_createModeSpecificConfigurationForModeSemanticType:(int64_t)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = [DNDMutableConfiguration configurationOfType:[(DNDModeConfigurationService *)self _defaultConfigurationTypeForModeSemanticType:a3]];
  if ([v6 isEqualToString:@"com.apple.sleep.sleep-mode"])
  {
    [v7 setHideApplicationBadges:2];
  }

  else if ([v6 isEqualToString:@"com.apple.focus.reduce-interruptions"])
  {
    v8 = +[DNDModeConfiguration defaultReduceInterruptionsMode];
    v9 = [v8 mutableCopy];

    v7 = v9;
  }

  return v7;
}

- (id)_createTriggersForFocusWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if ([v3 isEqualToString:@"com.apple.sleep.sleep-mode"])
  {
    v5 = DNDModeConfigurationSleepingTrigger;
LABEL_11:
    v6 = objc_alloc_init(v5);
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"com.apple.donotdisturb.mode.driving"])
  {
    v5 = DNDModeConfigurationDrivingTrigger;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"com.apple.donotdisturb.mode.workout"])
  {
    v5 = DNDModeConfigurationWorkoutTrigger;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"com.apple.focus.gaming"])
  {
    v5 = DNDModeConfigurationGameControllerTrigger;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"com.apple.focus.mindfulness"])
  {
    v5 = DNDModeConfigurationMindfulnessTrigger;
    goto LABEL_11;
  }

  v6 = [(DNDModeConfigurationTrigger *)[DNDModeConfigurationSmartTrigger alloc] initWithEnabledSetting:1];
LABEL_12:
  v7 = v6;
  [v4 addObject:v6];

  return v4;
}

- (id)_setModeConfigurationDefaultsForModeConfiguration:(id)a3 withIdentifier:(id)a4
{
  v5 = a3;
  if ([a4 isEqualToString:@"com.apple.sleep.sleep-mode"])
  {
    [v5 setDimsLockScreen:2];
  }

  [v5 setAutomaticallyGenerated:1];

  return v5;
}

- (id)_createEmptyModeConfigurationForMode:(id)a3 withRequestDetails:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(DNDModeConfigurationService *)self allModesReturningError:a5];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__DNDModeConfigurationService__createEmptyModeConfigurationForMode_withRequestDetails_error___block_invoke;
  v20[3] = &unk_27843A7A0;
  v11 = v8;
  v21 = v11;
  v22 = &v23;
  [v10 enumerateObjectsUsingBlock:v20];
  if ((v24[3] & 1) == 0)
  {
    v13 = [DNDMutableConfiguration configurationOfType:2];
    v15 = [MEMORY[0x277CBEB18] array];
    v16 = [(DNDModeConfigurationTrigger *)[DNDModeConfigurationSmartTrigger alloc] initWithEnabledSetting:1];
    [v15 addObject:v16];

    v17 = [(DNDModeConfiguration *)[DNDMutableModeConfiguration alloc] initWithMode:v11 configuration:v13 triggers:v15];
    [(DNDMutableModeConfiguration *)v17 setAutomaticallyGenerated:1];
    if ([(DNDModeConfigurationService *)self setModeConfiguration:v17 error:a5])
    {
      v14 = [(DNDMutableModeConfiguration *)v17 copy];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_8;
  }

  if (a5)
  {
    v12 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"Mode configuration already exists for mode identifier.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [v12 errorWithDomain:@"DNDErrorDomain" code:1001 userInfo:v13];
    *a5 = v14 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v14 = 0;
LABEL_9:

  _Block_object_dispose(&v23, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

void __93__DNDModeConfigurationService__createEmptyModeConfigurationForMode_withRequestDetails_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 modeIdentifier];
  v6 = [*(a1 + 32) modeIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 isPlaceholder] ^ 1;
    *a3 = 1;
  }
}

- (void)hasActivelyConfiguredModes:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error determining if modes have been actively configured, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setModeConfiguration:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when setting mode configuration, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)modeConfigurationsReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting mode configurations, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)isLocalUserAvailableForContactInActiveMode:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting user availability in current mode for contact, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)allowedModesForContactHandle:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting allowed modes for contact, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)silencedModesForContactHandle:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting silenced modes for contact, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)publishCurrentStatusKitAvailabilityReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when publishing statuskit availability, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setAppConfigurationPredicate:(uint64_t)a1 forActionIdentifier:(uint64_t)a2 forApplicationIdentifier:modeIdentifier:error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when setting app configuration predicate, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)getAppConfigurationPredicateForActionIdentifier:(uint64_t)a1 forApplicationIdentifier:(uint64_t)a2 modeIdentifier:error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting app configuration predicate, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setAppConfigurationTargetContentIdentifierPrefix:(uint64_t)a1 forActionIdentifier:(uint64_t)a2 forApplicationIdentifier:modeIdentifier:error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when setting target content identifier prefix, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting target content identifier prefixes, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setAppAction:(uint64_t)a1 forApplicationIdentifier:(uint64_t)a2 modeIdentifier:error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when setting app configuration action, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)clearAppActionWithIdentifier:(uint64_t)a1 forApplicationIdentifier:(uint64_t)a2 modeIdentifier:error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when clearing app action, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)getAppActionsForModeIdentifier:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting app actions, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)resetAppConfigurationState
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_22002F000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to reset app configuration state", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setSystemAction:(uint64_t)a1 forModeIdentifier:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when setting system configuration action, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)clearSystemActionWithIdentifier:(uint64_t)a1 forModeIdentifier:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when clearing system action, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)getSystemActionsForModeIdentifier:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting system actions, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)getSyncPreferenceEnabledReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting sync preference enabled, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)getSyncAvailableReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting sync available, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)getSyncEnabledReturningError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when getting sync enabled, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setSyncPreferenceEnabled:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when setting sync enabled, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

void __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_22002F000, a2, OS_LOG_TYPE_ERROR, "Did not register for updates, will remove listener: listener=%{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)removeModeConfigurationForModeIdentifier:(uint64_t)a1 deletePlaceholder:(uint64_t)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0(&dword_22002F000, a2, a3, "[%{public}@] Error mode configuration for identifier cannot be removed, identifier=%{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)removeModeConfigurationForModeIdentifier:(uint64_t)a1 deletePlaceholder:(uint64_t)a2 error:.cold.2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when removing mode configuration, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_queue_registerForUpdatesIfRequired
{
  OUTLINED_FUNCTION_1_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v2, v3, "[%{public}@] Error when registering update listener, error='%{public}@'");
  v4 = *MEMORY[0x277D85DE8];
}

@end