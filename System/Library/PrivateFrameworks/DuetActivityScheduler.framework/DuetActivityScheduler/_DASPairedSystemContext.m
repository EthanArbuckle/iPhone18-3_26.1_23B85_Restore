@interface _DASPairedSystemContext
+ (id)contextWithClientIdentifier:(id)a3 callbackQueue:(id)a4 systemConditionChangeCallback:(id)a5 trafficCancelationHandler:(id)a6;
+ (id)stringForPriority:(unint64_t)a3;
+ (void)initialize;
- (BOOL)allowSyncTrafficForRecentlyBackgroundedApp;
- (BOOL)allowsSendingTrafficeForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4 isReunionOrInitialSync:(BOOL)a5 responseValidityDuration:(double *)a6;
- (BOOL)batteryLevelsAllowSendingTrafficeForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4;
- (BOOL)didHandleExclusiveAppChange;
- (BOOL)foregroundApplicationsAllowSendingTrafficForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4 furtherChecksNecessary:(BOOL *)a5;
- (BOOL)isAnyThirdPartyApp:(id)a3;
- (BOOL)isWatchPluggedIn;
- (BOOL)shouldBypassApplicationUsage:(id)a3;
- (BOOL)thermalLevelsAllowSendingTrafficeForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4;
- (BOOL)thirdPartyAppPolicyAllowsSendingTrafficForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4 furtherChecksNecessary:(BOOL *)a5;
- (_DASPairedSystemContext)initWithClientIdentifier:(id)a3 context:(id)a4 callbackQueue:(id)a5 systemConditionChangeCallback:(id)a6 trafficCancelationHander:(id)a7;
- (double)usageLikelihoodForApplication:(id)a3;
- (double)usageThresholdForPriority:(unint64_t)a3 batteryLevel:(int)a4 isPluggedIn:(BOOL)a5;
- (int)watchBatteryLevel;
- (void)deleteRemoteHistogram;
- (void)handleAppStateChange;
- (void)handleConditionChange;
- (void)handleWatchAppBackgrounded;
- (void)readBudgetForRecentlyBackgroundedAppSyncTraffic;
- (void)registerForContextChanges;
- (void)resetBudgetForRecentlyBackgroundedAppSyncTraffic;
- (void)setPairedDeviceIdentifier:(id)a3;
- (void)updateAppUsageHistory;
@end

@implementation _DASPairedSystemContext

- (void)handleAppStateChange
{
  v42 = *MEMORY[0x1E69E9840];
  [(_DASPairedSystemContext *)self handleWatchAppBackgrounded];
  v3 = [(_DASPairedSystemContext *)self didHandleExclusiveAppChange];
  v4 = [MEMORY[0x1E695DFA8] set];
  context = self->_context;
  v6 = [MEMORY[0x1E6997A68] keyPathForForegroundApp];
  v7 = [(_CDContext *)context objectForKeyedSubscript:v6];

  if (v7)
  {
    if ([kAlwaysAllowedPhoneApps containsObject:v7])
    {
      [v4 addObject:v7];
    }

    else
    {

      v7 = 0;
    }
  }

  v8 = self->_context;
  v9 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v10 = [(_CDContext *)v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    [v4 addObject:v10];
  }

  v11 = self->_context;
  v12 = [MEMORY[0x1E6997A68] keyPathForServicesAppearingForeground];
  v13 = [(_CDContext *)v11 objectForKeyedSubscript:v12];

  if (v13)
  {
    [v4 addObjectsFromArray:v13];
  }

  v14 = self->_context;
  v15 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedServicesAppearingForeground];
  v16 = [(_CDContext *)v14 objectForKeyedSubscript:v15];

  if (v16)
  {
    [v4 addObjectsFromArray:v16];
  }

  v17 = self->_context;
  v18 = [MEMORY[0x1E6997A68] keyPathForActiveComplications];
  v19 = [(_CDContext *)v17 objectForKeyedSubscript:v18];

  if (v19)
  {
    [v4 addObjectsFromArray:v19];
  }

  v20 = self->_previousForegroundApps;
  objc_sync_enter(v20);
  if ((([(NSMutableSet *)self->_previousForegroundApps isEqual:v4]| v3) & 1) == 0)
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v31 = v19;
    v32 = v16;
    v33 = v7;
    v34 = v10;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = v4;
    v23 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v23)
    {
      v24 = *v38;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          if ((-[NSMutableSet containsObject:](self->_previousForegroundApps, "containsObject:", v26, v31, v32, v33) & 1) == 0 && ([kIgnoredApps containsObject:v26] & 1) == 0)
          {
            [v21 addObject:v26];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v23);
    }

    v7 = v33;
    v10 = v34;
    v19 = v31;
    v16 = v32;
    if ([v21 count])
    {
      v27 = [v21 copy];
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47___DASPairedSystemContext_handleAppStateChange__block_invoke;
      block[3] = &unk_1E7C8F1A0;
      block[4] = self;
      v36 = v27;
      v29 = v27;
      dispatch_async(callbackQueue, block);

      v10 = v34;
    }

    [(NSMutableSet *)self->_previousForegroundApps removeAllObjects:v31];
    [(NSMutableSet *)self->_previousForegroundApps unionSet:v22];
  }

  objc_sync_exit(v20);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)handleWatchAppBackgrounded
{
  v28 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v5 = [(_CDContext *)context objectForKeyedSubscript:v4];

  v6 = [(_DASPairedSystemContext *)self foregroundWatchApp];
  v7 = [MEMORY[0x1E695DF00] date];
  if (v6 && (!v5 || ([v5 isEqualToString:v6] & 1) == 0))
  {
    v8 = self->_recentlyBackgroundedApps;
    objc_sync_enter(v8);
    if ([(NSMutableDictionary *)self->_recentlyBackgroundedApps count]>= 0xA)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy_;
      v26 = __Block_byref_object_dispose_;
      v27 = v7;
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy_;
      v21 = __Block_byref_object_dispose_;
      v22 = 0;
      recentlyBackgroundedApps = self->_recentlyBackgroundedApps;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53___DASPairedSystemContext_handleWatchAppBackgrounded__block_invoke;
      v13[3] = &unk_1E7C8F178;
      v14 = v27;
      v15 = &v17;
      p_buf = &buf;
      [(NSMutableDictionary *)recentlyBackgroundedApps enumerateKeysAndObjectsUsingBlock:v13];
      if (v18[5])
      {
        [(NSMutableDictionary *)self->_recentlyBackgroundedApps removeObjectForKey:?];
      }

      _Block_object_dispose(&v17, 8);
      _Block_object_dispose(&buf, 8);
    }

    [(NSMutableDictionary *)self->_recentlyBackgroundedApps setObject:v7 forKeyedSubscript:v6];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v11 = self->_recentlyBackgroundedApps;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_INFO, "Recently backgrounded apps: %@", &buf, 0xCu);
    }

    objc_sync_exit(v8);
  }

  [(_DASPairedSystemContext *)self setForegroundWatchApp:v5];

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)didHandleExclusiveAppChange
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  context = self->_context;
  v5 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v6 = [(_CDContext *)context objectForKeyedSubscript:v5];

  v7 = self->_context;
  v8 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedServicesAppearingForeground];
  v9 = [(_CDContext *)v7 objectForKeyedSubscript:v8];

  if (v6)
  {
    [v3 addObject:v6];
  }

  if (v9)
  {
    [v3 addObjectsFromArray:v9];
  }

  v10 = [(_DASPairedSystemContext *)self previousExclusiveIdentifiers];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v3;
  callbackQueue = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (callbackQueue)
  {
    v20 = v6;
    v13 = 0;
    v14 = *v25;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v13 = [kExclusiveApps objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * v15), v20}];

        if (v13 && ([v10 isEqualToArray:v13] & 1) == 0)
        {
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __54___DASPairedSystemContext_didHandleExclusiveAppChange__block_invoke;
          block[3] = &unk_1E7C8F1A0;
          block[4] = self;
          v13 = v13;
          v23 = v13;
          dispatch_async(callbackQueue, block);

          LOBYTE(callbackQueue) = 1;
          goto LABEL_16;
        }

        v15 = (v15 + 1);
        v16 = v13;
      }

      while (callbackQueue != v15);
      callbackQueue = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (callbackQueue)
      {
        continue;
      }

      break;
    }

LABEL_16:
    v6 = v20;
  }

  else
  {
    v13 = 0;
  }

  if ([v10 count] && !objc_msgSend(v13, "count"))
  {
    v17 = self->_callbackQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __54___DASPairedSystemContext_didHandleExclusiveAppChange__block_invoke_2;
    v21[3] = &unk_1E7C8F0B0;
    v21[4] = self;
    dispatch_async(v17, v21);
    LOBYTE(callbackQueue) = 1;
  }

  [(_DASPairedSystemContext *)self setPreviousExclusiveIdentifiers:v13];

  v18 = *MEMORY[0x1E69E9840];
  return callbackQueue;
}

- (void)updateAppUsageHistory
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6E2F000, a2, OS_LOG_TYPE_ERROR, "Failed to get remote devices: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (BOOL)isWatchPluggedIn
{
  context = self->_context;
  v3 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDevicePluginStatus];
  v4 = [(_CDContext *)context objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (int)watchBatteryLevel
{
  context = self->_context;
  v3 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceBatteryLevel];
  v4 = [(_CDContext *)context objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 intValue];
  }

  else
  {
    v5 = 100;
  }

  return v5;
}

+ (void)initialize
{
  v2 = kExclusiveApps;
  kExclusiveApps = &unk_1F2ED48E0;

  v3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2ED4880];
  v4 = kAlwaysAllowedPhoneApps;
  kAlwaysAllowedPhoneApps = v3;

  v5 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2ED4898];
  v6 = kIgnoredApps;
  kIgnoredApps = v5;

  kUsageIgnoredApps = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2ED48B0];

  MEMORY[0x1EEE66BB8]();
}

- (_DASPairedSystemContext)initWithClientIdentifier:(id)a3 context:(id)a4 callbackQueue:(id)a5 systemConditionChangeCallback:(id)a6 trafficCancelationHander:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v54.receiver = self;
  v54.super_class = _DASPairedSystemContext;
  v18 = [(_DASPairedSystemContext *)&v54 init];
  if (v18)
  {
    v19 = os_log_create("com.apple.dass", "pairedsystemcontext");
    v20 = *(v18 + 22);
    *(v18 + 22) = v19;

    objc_storeStrong(v18 + 6, a3);
    objc_storeStrong(v18 + 4, a4);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.daspairedsystemcontext.handlerQueue", v21);
    v23 = *(v18 + 5);
    *(v18 + 5) = v22;

    v24 = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = *(v18 + 7);
    *(v18 + 7) = v24;

    if (v15)
    {
      v26 = v15;
      v27 = *(v18 + 8);
      *(v18 + 8) = v26;
    }

    else
    {
      v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v28 = dispatch_queue_create("com.apple.daspairedsystemcontext.callbackQueue", v27);
      v29 = *(v18 + 8);
      *(v18 + 8) = v28;
    }

    v30 = MEMORY[0x1B8C9D430](v16);
    v31 = *(v18 + 9);
    *(v18 + 9) = v30;

    v32 = MEMORY[0x1B8C9D430](v17);
    v33 = *(v18 + 10);
    *(v18 + 10) = v32;

    v34 = [MEMORY[0x1E695DF90] dictionary];
    v35 = *(v18 + 14);
    *(v18 + 14) = v34;

    v36 = [MEMORY[0x1E695DF90] dictionary];
    v37 = *(v18 + 16);
    *(v18 + 16) = v36;

    [v18 readBudgetForRecentlyBackgroundedAppSyncTraffic];
    v38 = [MEMORY[0x1E695DFA8] set];
    v39 = *(v18 + 18);
    *(v18 + 18) = v38;

    v40 = dispatch_get_global_queue(-32768, 0);
    v41 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v40);
    v42 = *(v18 + 21);
    *(v18 + 21) = v41;

    v43 = *(v18 + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __129___DASPairedSystemContext_initWithClientIdentifier_context_callbackQueue_systemConditionChangeCallback_trafficCancelationHander___block_invoke;
    block[3] = &unk_1E7C8F0B0;
    v44 = v18;
    v53 = v44;
    v45 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_source_set_event_handler(v43, v45);

    v46 = *(v18 + 21);
    v47 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v46, v47, 0x34630B8A000uLL, 0xD18C2E2800uLL);
    dispatch_activate(*(v18 + 21));
    [v44 updateAppUsageHistory];
    [v44 registerForContextChanges];
    v48 = [@"com.apple.dasd.pairedsystemcontext.deleteremoteforecast" UTF8String];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __129___DASPairedSystemContext_initWithClientIdentifier_context_callbackQueue_systemConditionChangeCallback_trafficCancelationHander___block_invoke_2;
    v50[3] = &unk_1E7C8F0D8;
    v51 = v44;
    notify_register_dispatch(v48, v44 + 5, v40, v50);
  }

  return v18;
}

+ (id)contextWithClientIdentifier:(id)a3 callbackQueue:(id)a4 systemConditionChangeCallback:(id)a5 trafficCancelationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125___DASPairedSystemContext_contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler___block_invoke;
  block[3] = &unk_1E7C8F100;
  v26 = v13;
  v27 = a1;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v14 = contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__onceToken;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  if (v14 != -1)
  {
    dispatch_once(&contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__onceToken, block);
  }

  v19 = contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__pairedSystemContext;
  v20 = contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__pairedSystemContext;

  return v19;
}

+ (id)stringForPriority:(unint64_t)a3
{
  v3 = @"Sync";
  if (a3 > 0x31)
  {
    v3 = @"Default";
  }

  if (a3 <= 0x59)
  {
    return v3;
  }

  else
  {
    return @"Urgent";
  }
}

- (void)registerForContextChanges
{
  v34[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6997A68] keyPathForPluginStatus];
  v34[0] = v3;
  v4 = [MEMORY[0x1E6997A68] keyPathForBatteryLevel];
  v34[1] = v4;
  v5 = [MEMORY[0x1E6997A68] keyPathForThermalPressureLevel];
  v34[2] = v5;
  v6 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDevicePluginStatus];
  v34[3] = v6;
  v7 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceBatteryLevel];
  v34[4] = v7;
  v8 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceThermalPressureLevel];
  v34[5] = v8;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:6];

  v28 = [MEMORY[0x1E6997A80] predicateForChangeAtKeyPaths:v29];
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.system.pairedSystemContext", self->_identifier];
  identifier = self->_identifier;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __52___DASPairedSystemContext_registerForContextChanges__block_invoke;
  v32[3] = &unk_1E7C8F128;
  v32[4] = self;
  v26 = [MEMORY[0x1E6997A70] localNonWakingRegistrationWithIdentifier:v27 contextualPredicate:v28 clientIdentifier:identifier callback:v32];
  [(_CDContext *)self->_context registerCallback:v26];
  self->_previousPluginStatus = [(_DASPairedSystemContext *)self isWatchPluggedIn];
  self->_previousBatteryLevel = [(_DASPairedSystemContext *)self watchBatteryLevel];
  v10 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v33[0] = v10;
  v11 = [MEMORY[0x1E6997A68] keyPathForServicesAppearingForeground];
  v33[1] = v11;
  v12 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedServicesAppearingForeground];
  v33[2] = v12;
  v13 = [MEMORY[0x1E6997A68] keyPathForActiveComplications];
  v33[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];

  v15 = [MEMORY[0x1E6997A80] predicateForChangeAtKeyPaths:v14];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.apps.pairedSystemContext", self->_identifier];
  v17 = self->_identifier;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __52___DASPairedSystemContext_registerForContextChanges__block_invoke_3;
  v31[3] = &unk_1E7C8F128;
  v31[4] = self;
  v18 = [MEMORY[0x1E6997A70] localNonWakingRegistrationWithIdentifier:v16 contextualPredicate:v15 clientIdentifier:v17 callback:v31];
  [(_CDContext *)self->_context registerCallback:v18];
  v19 = MEMORY[0x1E6997A80];
  v20 = [MEMORY[0x1E6997A68] keyPathForForegroundApp];
  v21 = [MEMORY[0x1E6997A68] keyPathForForegroundApp];
  v22 = [v19 predicateForKeyPath:v20 withFormat:@"self.%@.value in %@", v21, kAlwaysAllowedPhoneApps];

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.alwaysAllowedApps.pairedsystemContext", self->_identifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52___DASPairedSystemContext_registerForContextChanges__block_invoke_5;
  v30[3] = &unk_1E7C8F150;
  v30[4] = self;
  v24 = [MEMORY[0x1E6997A70] localNonWakingRegistrationWithIdentifier:v23 contextualPredicate:v22 callback:v30];
  [(_CDContext *)self->_context registerCallback:v24];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)setPairedDeviceIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    pairedDeviceIdentifier = self->_pairedDeviceIdentifier;
    *buf = 138412546;
    v13 = pairedDeviceIdentifier;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "Paired device identifier update: %@ -> %@", buf, 0x16u);
  }

  v7 = self->_pairedDeviceIdentifier;
  self->_pairedDeviceIdentifier = v4;
  v8 = v4;

  v9 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___DASPairedSystemContext_setPairedDeviceIdentifier___block_invoke;
  block[3] = &unk_1E7C8F0B0;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleConditionChange
{
  context = self->_context;
  v4 = [MEMORY[0x1E6997A68] keyPathForThermalPressureLevel];
  v5 = [(_CDContext *)context objectForKeyedSubscript:v4];
  v6 = [v5 intValue];

  v7 = self->_context;
  v8 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceThermalPressureLevel];
  v9 = [(_CDContext *)v7 objectForKeyedSubscript:v8];
  v10 = [v9 intValue];

  if (v6 <= v10)
  {
    v6 = v10;
  }

  v11 = [(_DASPairedSystemContext *)self isWatchPluggedIn];
  v12 = [(_DASPairedSystemContext *)self watchBatteryLevel];
  [(_DASPairedSystemContext *)self usageThresholdForPriority:50 batteryLevel:v12 isPluggedIn:v11];
  v14 = v13;
  [(_DASPairedSystemContext *)self usageThresholdForPriority:10 batteryLevel:v12 isPluggedIn:v11];
  v16 = v15;
  if (v6 < self->_previousMaxThermalPressure || v14 < self->_previousDefaultThreshold || v15 < self->_previousSyncThreshold)
  {
    callbackQueue = self->_callbackQueue;
    block = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __48___DASPairedSystemContext_handleConditionChange__block_invoke;
    v28 = &unk_1E7C8F0B0;
    v29 = self;
    p_block = &block;
LABEL_7:
    dispatch_async(callbackQueue, p_block);
    goto LABEL_8;
  }

  if (!self->_previousPluginStatus && v11)
  {
    callbackQueue = self->_callbackQueue;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __48___DASPairedSystemContext_handleConditionChange__block_invoke_2;
    v23 = &unk_1E7C8F0B0;
    v24 = self;
    p_block = &v20;
    goto LABEL_7;
  }

LABEL_8:
  self->_previousMaxThermalPressure = v6;
  self->_previousDefaultThreshold = v14;
  self->_previousSyncThreshold = v16;
  v19 = !v11;
  if (v12 < 91)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0 && (!self->_previousPluginStatus || self->_previousBatteryLevel <= 90.0))
  {
    [(_DASPairedSystemContext *)self resetBudgetForRecentlyBackgroundedAppSyncTraffic:v20];
  }

  self->_previousPluginStatus = v11;
  self->_previousBatteryLevel = v12;
}

- (BOOL)allowsSendingTrafficeForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4 isReunionOrInitialSync:(BOOL)a5 responseValidityDuration:(double *)a6
{
  v7 = a5;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (a6)
  {
    *a6 = 900.0;
  }

  if (a4 > 0x59 || v7)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = log;
      v15 = [_DASPairedSystemContext stringForPriority:a4];
      *buf = 138412802;
      v25 = v10;
      v26 = 2112;
      v27 = v15;
      v28 = 1024;
      v29 = v7;
      v16 = "ALLOWED: %@, Priority=%@, Is Reunion/Initial Sync: %u";
      v17 = v14;
      v18 = 28;
      goto LABEL_13;
    }

LABEL_14:
    v20 = 1;
    goto LABEL_17;
  }

  v23 = 0;
  v11 = [(_DASPairedSystemContext *)self foregroundApplicationsAllowSendingTrafficForServiceIdentifiers:v10 atPriorityLevel:a4 furtherChecksNecessary:&v23];
  if (v23 != 1)
  {
    v20 = v11;
    goto LABEL_17;
  }

  if (![(_DASPairedSystemContext *)self thermalLevelsAllowSendingTrafficeForServiceIdentifiers:v10 atPriorityLevel:a4])
  {
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v12 = [(_DASPairedSystemContext *)self thirdPartyAppPolicyAllowsSendingTrafficForServiceIdentifiers:v10 atPriorityLevel:a4 furtherChecksNecessary:&v23];
  if (v23)
  {
    if ([(_DASPairedSystemContext *)self batteryLevelsAllowSendingTrafficeForServiceIdentifiers:v10 atPriorityLevel:a4])
    {
      v13 = self->_log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [_DASPairedSystemContext stringForPriority:a4];
        *buf = 138412546;
        v25 = v10;
        v26 = 2112;
        v27 = v15;
        v16 = "ALLOWED: %@, Priority=%@";
        v17 = v14;
        v18 = 22;
LABEL_13:
        _os_log_impl(&dword_1B6E2F000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v20 = v12;
  if (a6)
  {
    *a6 = 120.0;
  }

LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)foregroundApplicationsAllowSendingTrafficForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4 furtherChecksNecessary:(BOOL *)a5
{
  v77 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v54 = a5;
  *a5 = 0;
  v9 = [MEMORY[0x1E695DF70] array];
  context = self->_context;
  v11 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v12 = [(_CDContext *)context objectForKeyedSubscript:v11];

  v13 = self->_context;
  v14 = [MEMORY[0x1E6997A68] keyPathForForegroundApp];
  v15 = [(_CDContext *)v13 objectForKeyedSubscript:v14];

  if (v12)
  {
    [v9 addObject:v12];
  }

  if (v15)
  {
    if ([kAlwaysAllowedPhoneApps containsObject:v15])
    {
      [v9 addObject:v15];
    }

    else
    {

      v15 = 0;
    }
  }

  v16 = self->_context;
  v17 = [MEMORY[0x1E6997A68] keyPathForServicesAppearingForeground];
  v18 = [(_CDContext *)v16 objectForKeyedSubscript:v17];

  v19 = [MEMORY[0x1E695DEC8] array:v18 withItemsIn:kAlwaysAllowedPhoneApps];

  if (v19)
  {
    [v9 addObjectsFromArray:v19];
  }

  v20 = self->_context;
  v21 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedServicesAppearingForeground];
  v22 = [(_CDContext *)v20 objectForKeyedSubscript:v21];

  if (v22)
  {
    [v9 addObjectsFromArray:v22];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v24 = log;
    v25 = [_DASPairedSystemContext stringForPriority:a4];
    *buf = 138413570;
    v63 = v8;
    v64 = 2112;
    v65 = v25;
    v66 = 2112;
    v67 = v15;
    v68 = 2112;
    v69 = v12;
    v70 = 2112;
    v71 = v19;
    v72 = 2112;
    v73 = v22;
    _os_log_impl(&dword_1B6E2F000, v24, OS_LOG_TYPE_DEFAULT, "CHECKING: %@, Priority=%@, Phone Foreground: %@, Watch Foreground: %@, Foreground Services: %@, Remote Foreground Services: %@", buf, 0x3Eu);
  }

  if (a4 >= 0x32 && (([v8 containsObject:v15] & 1) != 0 || v19 && objc_msgSend(v19, "anyItemsIntersectArray:", v8)))
  {
    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = [_DASPairedSystemContext stringForPriority:a4];
      *buf = 138413314;
      v63 = v8;
      v64 = 2112;
      v65 = v28;
      v66 = 2112;
      v67 = v15;
      v68 = 2112;
      v69 = v19;
      v70 = 2112;
      v71 = v22;
      _os_log_impl(&dword_1B6E2F000, v27, OS_LOG_TYPE_DEFAULT, "ALLOWED: %@, Priority=%@, Phone Foreground: %@, Foreground Services: %@, Remote Foreground Services: %@", buf, 0x34u);
    }

    v29 = 1;
  }

  else
  {
    v55 = v19;
    v30 = a4;
    v56 = v9;
    v57 = v12;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v31 = v9;
    v32 = [v31 countByEnumeratingWithState:&v58 objects:v76 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v59;
      while (2)
      {
        v35 = v8;
        for (i = 0; i != v33; ++i)
        {
          if (*v59 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v37 = [kExclusiveApps objectForKeyedSubscript:*(*(&v58 + 1) + 8 * i)];
          if (v37)
          {
            v40 = v37;

            v45 = v30;
            v8 = v35;
            if (v30 >= 0x32 && [v35 anyItemsIntersectArray:v40])
            {
              v46 = self->_log;
              v9 = v56;
              v19 = v55;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                v47 = v46;
                v48 = [_DASPairedSystemContext stringForPriority:v45];
                *buf = 138413314;
                v63 = v8;
                v64 = 2112;
                v65 = v48;
                v66 = 2112;
                v67 = v15;
                v68 = 2112;
                v69 = v57;
                v70 = 2112;
                v71 = v55;
                _os_log_impl(&dword_1B6E2F000, v47, OS_LOG_TYPE_DEFAULT, "ALLOWED: %@, Priority=%@, Phone Foreground: %@, Watch Foreground: %@, Foreground Services: %@", buf, 0x34u);
              }

              v29 = 1;
            }

            else
            {
              v49 = self->_log;
              v9 = v56;
              v19 = v55;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v50 = v49;
                v51 = [_DASPairedSystemContext stringForPriority:v45];
                *buf = 138413314;
                v63 = v8;
                v64 = 2112;
                v65 = v51;
                v66 = 2112;
                v67 = v15;
                v68 = 2112;
                v69 = v57;
                v70 = 2112;
                v71 = v55;
                _os_log_impl(&dword_1B6E2F000, v50, OS_LOG_TYPE_DEFAULT, "DENIED: %@, Priority=%@, Phone Foreground: %@, Watch Foreground: %@, Foreground Services: %@", buf, 0x34u);
              }

              v29 = 0;
            }

            goto LABEL_44;
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v58 objects:v76 count:16];
        v8 = v35;
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    v38 = self->_context;
    v39 = [MEMORY[0x1E6997A68] keyPathForActiveComplications];
    v40 = [(_CDContext *)v38 objectForKeyedSubscript:v39];

    if (v40)
    {
      [v31 addObjectsFromArray:v40];
    }

    if ([v8 anyItemsIntersectArray:v31])
    {
      v41 = v30;
      v42 = self->_log;
      v19 = v55;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        v44 = [_DASPairedSystemContext stringForPriority:v41];
        *buf = 138413826;
        v63 = v8;
        v64 = 2112;
        v65 = v44;
        v66 = 2112;
        v67 = v57;
        v68 = 2112;
        v69 = v15;
        v70 = 2112;
        v71 = v40;
        v72 = 2112;
        v73 = v55;
        v74 = 2112;
        v75 = v22;
        _os_log_impl(&dword_1B6E2F000, v43, OS_LOG_TYPE_DEFAULT, "ALLOWED: %@, Priority=%@, Watch Focal Application: %@, Phone Focal Application: %@, Active Complications: %@, Foreground Services: %@, Remote Services: %@,", buf, 0x48u);
      }

      v29 = 1;
    }

    else
    {
      v29 = 1;
      v19 = v55;
      *v54 = 1;
    }

    v9 = v56;
LABEL_44:

    v12 = v57;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)thermalLevelsAllowSendingTrafficeForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  context = self->_context;
  v8 = [MEMORY[0x1E6997A68] keyPathForThermalPressureLevel];
  v9 = [(_CDContext *)context objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntValue];

  v11 = self->_context;
  v12 = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceThermalPressureLevel];
  v13 = [(_CDContext *)v11 objectForKeyedSubscript:v12];
  v14 = [v13 unsignedIntValue];

  if (v10 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  v16 = [(_DASPairedSystemContext *)self isWatchPluggedIn];
  v17 = v16;
  v34 = a4;
  if (a4 > 0x31 || v16)
  {
    v19 = 30;
  }

  else
  {
    v19 = 20;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v21 = log;
    v22 = [_DASPairedSystemContext stringForPriority:v34];
    [_DASPairedSystemContext stringForThermalLevel:v10];
    v33 = v15;
    v24 = v23 = v6;
    v25 = [_DASPairedSystemContext stringForThermalLevel:v14];
    *buf = 138413314;
    v36 = v23;
    v37 = 2112;
    v38 = v22;
    v39 = 2112;
    v40 = v24;
    v41 = 2112;
    v42 = v25;
    v43 = 1024;
    v44 = v17;
    _os_log_impl(&dword_1B6E2F000, v21, OS_LOG_TYPE_DEFAULT, "CHECKING: %@, Priority=%@, Local Thermals: %@, Paired Thermals: %@, Watch Plugged In: %u", buf, 0x30u);

    v6 = v23;
    v15 = v33;
  }

  if (v15 >= v19)
  {
    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = [_DASPairedSystemContext stringForPriority:v34];
      v29 = [_DASPairedSystemContext stringForThermalLevel:v10];
      v30 = [_DASPairedSystemContext stringForThermalLevel:v14];
      *buf = 138413314;
      v36 = v6;
      v37 = 2112;
      v38 = v28;
      v39 = 2112;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
      v43 = 1024;
      v44 = v17;
      _os_log_impl(&dword_1B6E2F000, v27, OS_LOG_TYPE_DEFAULT, "DENIED: %@, Priority=%@, Local Thermals: %@, Paired Thermals: %@, Watch Plugged In: %u", buf, 0x30u);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v15 < v19;
}

- (void)readBudgetForRecentlyBackgroundedAppSyncTraffic
{
  obj = self->_persistence;
  objc_sync_enter(obj);
  v3 = [(NSUserDefaults *)self->_persistence valueForKey:@"das.recentSyncBudget"];

  if (v3)
  {
    v4 = [(NSUserDefaults *)self->_persistence integerForKey:@"das.recentSyncBudget"];
  }

  else
  {
    v4 = 25;
  }

  self->_recentTrafficSyncRequests = v4;
  objc_sync_exit(obj);
}

- (void)resetBudgetForRecentlyBackgroundedAppSyncTraffic
{
  obj = self->_persistence;
  objc_sync_enter(obj);
  if (self->_recentTrafficSyncRequests <= 24)
  {
    self->_recentTrafficSyncRequests = 25;
    [(NSUserDefaults *)self->_persistence setInteger:25 forKey:@"das.recentSyncBudget"];
  }

  objc_sync_exit(obj);
}

- (BOOL)allowSyncTrafficForRecentlyBackgroundedApp
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = self->_persistence;
  objc_sync_enter(v3);
  recentTrafficSyncRequests = self->_recentTrafficSyncRequests;
  if (recentTrafficSyncRequests >= 1)
  {
    [(NSUserDefaults *)self->_persistence setInteger:(recentTrafficSyncRequests - 1) forKey:@"das.recentSyncBudget"];
    --self->_recentTrafficSyncRequests;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_recentTrafficSyncRequests;
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "%d more background sync requests allowed", v9, 8u);
    }
  }

  objc_sync_exit(v3);

  v7 = *MEMORY[0x1E69E9840];
  return recentTrafficSyncRequests > 0;
}

- (BOOL)isAnyThirdPartyApp:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a3;
  v4 = 0;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v5)
  {
    v6 = *v29;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = self->_watchKitAppStatus;
        objc_sync_enter(v9);
        v10 = [(NSMutableDictionary *)self->_watchKitAppStatus objectForKeyedSubscript:v8];
        objc_sync_exit(v9);

        if (v10)
        {
          v17 = [v10 BOOLValue];
          *(v33 + 24) = v17;
          v18 = [(_DASPairedSystemContext *)self log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            if (*(v33 + 24))
            {
              v19 = &stru_1F2EC9F10;
            }

            else
            {
              v19 = @" NOT";
            }

            *buf = 138412546;
            v37 = v8;
            v38 = 2112;
            v39 = v19;
            _os_log_impl(&dword_1B6E2F000, v18, OS_LOG_TYPE_INFO, "%@ is%@ a WatchKit app", buf, 0x16u);
          }

LABEL_19:
          goto LABEL_20;
        }

        if (!v4)
        {
          v11 = [MEMORY[0x1E69B36C0] sharedInstance];
          v4 = [v11 getActivePairedDevice];
        }

        v12 = dispatch_semaphore_create(0);
        v13 = [MEMORY[0x1E698AB08] sharedDeviceConnection];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __46___DASPairedSystemContext_isAnyThirdPartyApp___block_invoke;
        v24[3] = &unk_1E7C8F1C8;
        v24[4] = self;
        v14 = v12;
        v25 = v14;
        v26 = v8;
        v27 = &v32;
        [v13 fetchInfoForApplicationWithBundleID:v8 forPairedDevice:v4 completion:v24];

        v15 = dispatch_time(0, 1000000000);
        dispatch_semaphore_wait(v14, v15);
        v16 = *(v33 + 24);

        if (v16)
        {
          goto LABEL_19;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  v20 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  v21 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (BOOL)thirdPartyAppPolicyAllowsSendingTrafficForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4 furtherChecksNecessary:(BOOL *)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v35 = v8;
  if (![(_DASPairedSystemContext *)self isWatchPluggedIn]&& [(_DASPairedSystemContext *)self isAnyThirdPartyApp:v8])
  {
    v34 = a4;
    v9 = [MEMORY[0x1E695DF00] date];
    obj = self->_recentlyBackgroundedApps;
    objc_sync_enter(obj);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v50 count:16];
    if (v11)
    {
      v12 = *v37;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          v15 = [(NSMutableDictionary *)self->_recentlyBackgroundedApps objectForKeyedSubscript:v14];
          if (v15)
          {
            [v9 timeIntervalSinceDate:v15];
            if (v16 < 120.0)
            {
              v11 = v14;
              goto LABEL_18;
            }

            [(NSMutableDictionary *)self->_recentlyBackgroundedApps removeObjectForKey:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v36 objects:v50 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_18:

    objc_sync_exit(obj);
    if (v15)
    {
      *a5 = 0;
      if (v34 > 0x31)
      {
LABEL_23:
        v18 = 1;
LABEL_31:

        goto LABEL_32;
      }

      v19 = [(_DASPairedSystemContext *)self allowSyncTrafficForRecentlyBackgroundedApp];
      log = self->_log;
      v21 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          v22 = log;
          v23 = [_DASPairedSystemContext stringForPriority:v34];
          recentTrafficSyncRequests = self->_recentTrafficSyncRequests;
          *buf = 138413314;
          v41 = v10;
          v42 = 2112;
          v43 = v23;
          v44 = 2112;
          v45 = v11;
          v46 = 2112;
          v47 = v15;
          v48 = 1024;
          v49 = recentTrafficSyncRequests;
          _os_log_impl(&dword_1B6E2F000, v22, OS_LOG_TYPE_DEFAULT, "ALLOWED: %@, Priority=%@, %@ backgrounded at: %@, Syncs Remaining: %d", buf, 0x30u);
        }

        goto LABEL_23;
      }

      if (v21)
      {
        v28 = log;
        v29 = [_DASPairedSystemContext stringForPriority:v34];
        v30 = self->_recentTrafficSyncRequests;
        *buf = 138413314;
        v41 = v10;
        v42 = 2112;
        v43 = v29;
        v44 = 2112;
        v45 = v11;
        v46 = 2112;
        v47 = v15;
        v48 = 1024;
        v49 = v30;
        _os_log_impl(&dword_1B6E2F000, v28, OS_LOG_TYPE_DEFAULT, "DENIED: %@, Priority=%@, %@ backgrounded at: %@, Syncs Remaining: %d", buf, 0x30u);
      }
    }

    else
    {
      if (v34 > 0x31)
      {
        v18 = 1;
        *a5 = 1;
        goto LABEL_31;
      }

      *a5 = 0;
      v25 = self->_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [_DASPairedSystemContext stringForPriority:v34];
        *buf = 138412546;
        v41 = v10;
        v42 = 2112;
        v43 = v27;
        _os_log_impl(&dword_1B6E2F000, v26, OS_LOG_TYPE_DEFAULT, "DENIED: %@, Priority=%@, No app backgrounded recently", buf, 0x16u);
      }
    }

    v18 = 0;
    goto LABEL_31;
  }

  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [_DASPairedSystemContext thirdPartyAppPolicyAllowsSendingTrafficForServiceIdentifiers:v17 atPriorityLevel:? furtherChecksNecessary:?];
  }

  v18 = 1;
  *a5 = 1;
LABEL_32:

  v31 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)deleteRemoteHistogram
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (double)usageThresholdForPriority:(unint64_t)a3 batteryLevel:(int)a4 isPluggedIn:(BOOL)a5
{
  result = 10.0;
  v6 = 0.0;
  v7 = a4 >= 0x28 || a3 >= 0x32;
  v8 = 2.22507386e-308;
  if (!v7)
  {
    v8 = 10.0;
  }

  if (a5)
  {
    v8 = 0.0;
  }

  if (a4 <= 0x5E)
  {
    v6 = v8;
  }

  if (a4 >= 10)
  {
    return v6;
  }

  return result;
}

- (double)usageLikelihoodForApplication:(id)a3
{
  v4 = a3;
  v5 = [(_DASPairedSystemContext *)self remoteAppLaunchCount];

  if (v5)
  {
    v6 = [(_DASPairedSystemContext *)self remoteAppLaunchCount];
    v7 = [v6 objectForKeyedSubscript:v4];
    [v7 doubleValue];
    v9 = v8 / 100.0;

    v10 = fmin(v9, 1.0);
  }

  else
  {
    v10 = 1.0;
  }

  return v10;
}

- (BOOL)shouldBypassApplicationUsage:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([kUsageIgnoredApps containsObject:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)batteryLevelsAllowSendingTrafficeForServiceIdentifiers:(id)a3 atPriorityLevel:(unint64_t)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_DASPairedSystemContext *)self isWatchPluggedIn];
  v8 = [(_DASPairedSystemContext *)self watchBatteryLevel];
  if (!v7 && [v6 containsObject:@"com.apple.private.alloy.sensorkit"])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = log;
      v11 = [_DASPairedSystemContext stringForPriority:a4];
      *buf = 138413058;
      v41 = v6;
      v42 = 2112;
      v43 = v11;
      v44 = 1024;
      *v45 = v8;
      *&v45[4] = 1024;
      *&v45[6] = 0;
      _os_log_impl(&dword_1B6E2F000, v10, OS_LOG_TYPE_DEFAULT, "DENIED: %@, Priority=%@, Watch Battery Level: %d, Watch Plugin Status: %u", buf, 0x22u);
    }

    goto LABEL_12;
  }

  [(_DASPairedSystemContext *)self usageThresholdForPriority:a4 batteryLevel:v8 isPluggedIn:v7];
  v13 = v12;
  if (v12 < 2.22507386e-308)
  {
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [_DASPairedSystemContext stringForPriority:a4];
      *buf = 138413314;
      v41 = v6;
      v42 = 2112;
      v43 = v16;
      v44 = 1024;
      *v45 = v8;
      *&v45[4] = 1024;
      *&v45[6] = v7;
      *v46 = 2048;
      *&v46[2] = v13;
      _os_log_impl(&dword_1B6E2F000, v15, OS_LOG_TYPE_DEFAULT, "ALLOWED: %@, Priority=%@, Watch Battery Level: %d, Watch Plugin Status: %u, Usage Threshold: %lf", buf, 0x2Cu);
    }

LABEL_26:
    v21 = 1;
    goto LABEL_27;
  }

  if (v12 <= 1.0)
  {
    if ([(_DASPairedSystemContext *)self shouldBypassApplicationUsage:v6])
    {
      goto LABEL_26;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v6;
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v36;
      v26 = 0.0;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(_DASPairedSystemContext *)self usageLikelihoodForApplication:*(*(&v35 + 1) + 8 * i), v35];
          v26 = v26 + v28;
        }

        v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = 0.0;
    }

    v29 = self->_log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      v31 = [_DASPairedSystemContext stringForPriority:a4];
      *buf = 138413314;
      v41 = v22;
      v42 = 2112;
      v43 = v31;
      v44 = 2048;
      *v45 = v26;
      *&v45[8] = 1024;
      *v46 = v8;
      *&v46[4] = 1024;
      *&v46[6] = v7;
      _os_log_impl(&dword_1B6E2F000, v30, OS_LOG_TYPE_DEFAULT, "CHECKING: %@, Priority=%@, App Usage: %lf, Watch Battery Level: %d, Watch Plugin Status: %u", buf, 0x2Cu);
    }

    if (v26 >= v13)
    {
      goto LABEL_26;
    }

    v34 = self->_log;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v34;
      v19 = [_DASPairedSystemContext stringForPriority:a4];
      *buf = 138413314;
      v41 = v22;
      v42 = 2112;
      v43 = v19;
      v44 = 2048;
      *v45 = v26;
      *&v45[8] = 1024;
      *v46 = v8;
      *&v46[4] = 1024;
      *&v46[6] = v7;
      v20 = "DENIED: %@, Priority=%@, App Usage: %lf, Watch Battery Level: %d, Watch Plugin Status: %u";
      goto LABEL_11;
    }
  }

  else
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [_DASPairedSystemContext stringForPriority:a4];
      *buf = 138413314;
      v41 = v6;
      v42 = 2112;
      v43 = v19;
      v44 = 1024;
      *v45 = v8;
      *&v45[4] = 1024;
      *&v45[6] = v7;
      *v46 = 2048;
      *&v46[2] = v13;
      v20 = "DENIED: %@, Priority=%@, Watch Battery Level: %d, Watch Plugin Status: %u, Usage Threshold: %lf";
LABEL_11:
      _os_log_impl(&dword_1B6E2F000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x2Cu);
    }
  }

LABEL_12:
  v21 = 0;
LABEL_27:

  v32 = *MEMORY[0x1E69E9840];
  return v21;
}

@end