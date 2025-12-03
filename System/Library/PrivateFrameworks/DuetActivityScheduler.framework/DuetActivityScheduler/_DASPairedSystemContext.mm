@interface _DASPairedSystemContext
+ (id)contextWithClientIdentifier:(id)identifier callbackQueue:(id)queue systemConditionChangeCallback:(id)callback trafficCancelationHandler:(id)handler;
+ (id)stringForPriority:(unint64_t)priority;
+ (void)initialize;
- (BOOL)allowSyncTrafficForRecentlyBackgroundedApp;
- (BOOL)allowsSendingTrafficeForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level isReunionOrInitialSync:(BOOL)sync responseValidityDuration:(double *)duration;
- (BOOL)batteryLevelsAllowSendingTrafficeForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level;
- (BOOL)didHandleExclusiveAppChange;
- (BOOL)foregroundApplicationsAllowSendingTrafficForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level furtherChecksNecessary:(BOOL *)necessary;
- (BOOL)isAnyThirdPartyApp:(id)app;
- (BOOL)isWatchPluggedIn;
- (BOOL)shouldBypassApplicationUsage:(id)usage;
- (BOOL)thermalLevelsAllowSendingTrafficeForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level;
- (BOOL)thirdPartyAppPolicyAllowsSendingTrafficForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level furtherChecksNecessary:(BOOL *)necessary;
- (_DASPairedSystemContext)initWithClientIdentifier:(id)identifier context:(id)context callbackQueue:(id)queue systemConditionChangeCallback:(id)callback trafficCancelationHander:(id)hander;
- (double)usageLikelihoodForApplication:(id)application;
- (double)usageThresholdForPriority:(unint64_t)priority batteryLevel:(int)level isPluggedIn:(BOOL)in;
- (int)watchBatteryLevel;
- (void)deleteRemoteHistogram;
- (void)handleAppStateChange;
- (void)handleConditionChange;
- (void)handleWatchAppBackgrounded;
- (void)readBudgetForRecentlyBackgroundedAppSyncTraffic;
- (void)registerForContextChanges;
- (void)resetBudgetForRecentlyBackgroundedAppSyncTraffic;
- (void)setPairedDeviceIdentifier:(id)identifier;
- (void)updateAppUsageHistory;
@end

@implementation _DASPairedSystemContext

- (void)handleAppStateChange
{
  v42 = *MEMORY[0x1E69E9840];
  [(_DASPairedSystemContext *)self handleWatchAppBackgrounded];
  didHandleExclusiveAppChange = [(_DASPairedSystemContext *)self didHandleExclusiveAppChange];
  v4 = [MEMORY[0x1E695DFA8] set];
  context = self->_context;
  keyPathForForegroundApp = [MEMORY[0x1E6997A68] keyPathForForegroundApp];
  v7 = [(_CDContext *)context objectForKeyedSubscript:keyPathForForegroundApp];

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
  keyPathForDefaultPairedDeviceForegroundApp = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v10 = [(_CDContext *)v8 objectForKeyedSubscript:keyPathForDefaultPairedDeviceForegroundApp];

  if (v10)
  {
    [v4 addObject:v10];
  }

  v11 = self->_context;
  keyPathForServicesAppearingForeground = [MEMORY[0x1E6997A68] keyPathForServicesAppearingForeground];
  v13 = [(_CDContext *)v11 objectForKeyedSubscript:keyPathForServicesAppearingForeground];

  if (v13)
  {
    [v4 addObjectsFromArray:v13];
  }

  v14 = self->_context;
  keyPathForDefaultPairedServicesAppearingForeground = [MEMORY[0x1E6997A68] keyPathForDefaultPairedServicesAppearingForeground];
  v16 = [(_CDContext *)v14 objectForKeyedSubscript:keyPathForDefaultPairedServicesAppearingForeground];

  if (v16)
  {
    [v4 addObjectsFromArray:v16];
  }

  v17 = self->_context;
  keyPathForActiveComplications = [MEMORY[0x1E6997A68] keyPathForActiveComplications];
  v19 = [(_CDContext *)v17 objectForKeyedSubscript:keyPathForActiveComplications];

  if (v19)
  {
    [v4 addObjectsFromArray:v19];
  }

  v20 = self->_previousForegroundApps;
  objc_sync_enter(v20);
  if ((([(NSMutableSet *)self->_previousForegroundApps isEqual:v4]| didHandleExclusiveAppChange) & 1) == 0)
  {
    array = [MEMORY[0x1E695DF70] array];
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
            [array addObject:v26];
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
    if ([array count])
    {
      v27 = [array copy];
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
  keyPathForDefaultPairedDeviceForegroundApp = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v5 = [(_CDContext *)context objectForKeyedSubscript:keyPathForDefaultPairedDeviceForegroundApp];

  foregroundWatchApp = [(_DASPairedSystemContext *)self foregroundWatchApp];
  date = [MEMORY[0x1E695DF00] date];
  if (foregroundWatchApp && (!v5 || ([v5 isEqualToString:foregroundWatchApp] & 1) == 0))
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
      v27 = date;
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

    [(NSMutableDictionary *)self->_recentlyBackgroundedApps setObject:date forKeyedSubscript:foregroundWatchApp];
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
  array = [MEMORY[0x1E695DF70] array];
  context = self->_context;
  keyPathForDefaultPairedDeviceForegroundApp = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v6 = [(_CDContext *)context objectForKeyedSubscript:keyPathForDefaultPairedDeviceForegroundApp];

  v7 = self->_context;
  keyPathForDefaultPairedServicesAppearingForeground = [MEMORY[0x1E6997A68] keyPathForDefaultPairedServicesAppearingForeground];
  v9 = [(_CDContext *)v7 objectForKeyedSubscript:keyPathForDefaultPairedServicesAppearingForeground];

  if (v6)
  {
    [array addObject:v6];
  }

  if (v9)
  {
    [array addObjectsFromArray:v9];
  }

  previousExclusiveIdentifiers = [(_DASPairedSystemContext *)self previousExclusiveIdentifiers];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = array;
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

        if (v13 && ([previousExclusiveIdentifiers isEqualToArray:v13] & 1) == 0)
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

  if ([previousExclusiveIdentifiers count] && !objc_msgSend(v13, "count"))
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
  selfCopy = self;
  _os_log_error_impl(&dword_1B6E2F000, a2, OS_LOG_TYPE_ERROR, "Failed to get remote devices: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (BOOL)isWatchPluggedIn
{
  context = self->_context;
  keyPathForDefaultPairedDevicePluginStatus = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDevicePluginStatus];
  v4 = [(_CDContext *)context objectForKeyedSubscript:keyPathForDefaultPairedDevicePluginStatus];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (int)watchBatteryLevel
{
  context = self->_context;
  keyPathForDefaultPairedDeviceBatteryLevel = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceBatteryLevel];
  v4 = [(_CDContext *)context objectForKeyedSubscript:keyPathForDefaultPairedDeviceBatteryLevel];

  if (v4)
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 100;
  }

  return intValue;
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

- (_DASPairedSystemContext)initWithClientIdentifier:(id)identifier context:(id)context callbackQueue:(id)queue systemConditionChangeCallback:(id)callback trafficCancelationHander:(id)hander
{
  identifierCopy = identifier;
  contextCopy = context;
  queueCopy = queue;
  callbackCopy = callback;
  handerCopy = hander;
  v54.receiver = self;
  v54.super_class = _DASPairedSystemContext;
  v18 = [(_DASPairedSystemContext *)&v54 init];
  if (v18)
  {
    v19 = os_log_create("com.apple.dass", "pairedsystemcontext");
    v20 = *(v18 + 22);
    *(v18 + 22) = v19;

    objc_storeStrong(v18 + 6, identifier);
    objc_storeStrong(v18 + 4, context);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.daspairedsystemcontext.handlerQueue", v21);
    v23 = *(v18 + 5);
    *(v18 + 5) = v22;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = *(v18 + 7);
    *(v18 + 7) = standardUserDefaults;

    if (queueCopy)
    {
      v26 = queueCopy;
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

    v30 = MEMORY[0x1B8C9D430](callbackCopy);
    v31 = *(v18 + 9);
    *(v18 + 9) = v30;

    v32 = MEMORY[0x1B8C9D430](handerCopy);
    v33 = *(v18 + 10);
    *(v18 + 10) = v32;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v35 = *(v18 + 14);
    *(v18 + 14) = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v37 = *(v18 + 16);
    *(v18 + 16) = dictionary2;

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
    uTF8String = [@"com.apple.dasd.pairedsystemcontext.deleteremoteforecast" UTF8String];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __129___DASPairedSystemContext_initWithClientIdentifier_context_callbackQueue_systemConditionChangeCallback_trafficCancelationHander___block_invoke_2;
    v50[3] = &unk_1E7C8F0D8;
    v51 = v44;
    notify_register_dispatch(uTF8String, v44 + 5, v40, v50);
  }

  return v18;
}

+ (id)contextWithClientIdentifier:(id)identifier callbackQueue:(id)queue systemConditionChangeCallback:(id)callback trafficCancelationHandler:(id)handler
{
  identifierCopy = identifier;
  queueCopy = queue;
  callbackCopy = callback;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125___DASPairedSystemContext_contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler___block_invoke;
  block[3] = &unk_1E7C8F100;
  v26 = handlerCopy;
  selfCopy = self;
  v23 = identifierCopy;
  v24 = queueCopy;
  v25 = callbackCopy;
  v14 = contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__onceToken;
  v15 = handlerCopy;
  v16 = callbackCopy;
  v17 = queueCopy;
  v18 = identifierCopy;
  if (v14 != -1)
  {
    dispatch_once(&contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__onceToken, block);
  }

  v19 = contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__pairedSystemContext;
  v20 = contextWithClientIdentifier_callbackQueue_systemConditionChangeCallback_trafficCancelationHandler__pairedSystemContext;

  return v19;
}

+ (id)stringForPriority:(unint64_t)priority
{
  v3 = @"Sync";
  if (priority > 0x31)
  {
    v3 = @"Default";
  }

  if (priority <= 0x59)
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
  keyPathForPluginStatus = [MEMORY[0x1E6997A68] keyPathForPluginStatus];
  v34[0] = keyPathForPluginStatus;
  keyPathForBatteryLevel = [MEMORY[0x1E6997A68] keyPathForBatteryLevel];
  v34[1] = keyPathForBatteryLevel;
  keyPathForThermalPressureLevel = [MEMORY[0x1E6997A68] keyPathForThermalPressureLevel];
  v34[2] = keyPathForThermalPressureLevel;
  keyPathForDefaultPairedDevicePluginStatus = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDevicePluginStatus];
  v34[3] = keyPathForDefaultPairedDevicePluginStatus;
  keyPathForDefaultPairedDeviceBatteryLevel = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceBatteryLevel];
  v34[4] = keyPathForDefaultPairedDeviceBatteryLevel;
  keyPathForDefaultPairedDeviceThermalPressureLevel = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceThermalPressureLevel];
  v34[5] = keyPathForDefaultPairedDeviceThermalPressureLevel;
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
  keyPathForDefaultPairedDeviceForegroundApp = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v33[0] = keyPathForDefaultPairedDeviceForegroundApp;
  keyPathForServicesAppearingForeground = [MEMORY[0x1E6997A68] keyPathForServicesAppearingForeground];
  v33[1] = keyPathForServicesAppearingForeground;
  keyPathForDefaultPairedServicesAppearingForeground = [MEMORY[0x1E6997A68] keyPathForDefaultPairedServicesAppearingForeground];
  v33[2] = keyPathForDefaultPairedServicesAppearingForeground;
  keyPathForActiveComplications = [MEMORY[0x1E6997A68] keyPathForActiveComplications];
  v33[3] = keyPathForActiveComplications;
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
  keyPathForForegroundApp = [MEMORY[0x1E6997A68] keyPathForForegroundApp];
  keyPathForForegroundApp2 = [MEMORY[0x1E6997A68] keyPathForForegroundApp];
  kAlwaysAllowedPhoneApps = [v19 predicateForKeyPath:keyPathForForegroundApp withFormat:@"self.%@.value in %@", keyPathForForegroundApp2, kAlwaysAllowedPhoneApps];

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.alwaysAllowedApps.pairedsystemContext", self->_identifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52___DASPairedSystemContext_registerForContextChanges__block_invoke_5;
  v30[3] = &unk_1E7C8F150;
  v30[4] = self;
  v24 = [MEMORY[0x1E6997A70] localNonWakingRegistrationWithIdentifier:v23 contextualPredicate:kAlwaysAllowedPhoneApps callback:v30];
  [(_CDContext *)self->_context registerCallback:v24];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)setPairedDeviceIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    pairedDeviceIdentifier = self->_pairedDeviceIdentifier;
    *buf = 138412546;
    v13 = pairedDeviceIdentifier;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "Paired device identifier update: %@ -> %@", buf, 0x16u);
  }

  v7 = self->_pairedDeviceIdentifier;
  self->_pairedDeviceIdentifier = identifierCopy;
  v8 = identifierCopy;

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
  keyPathForThermalPressureLevel = [MEMORY[0x1E6997A68] keyPathForThermalPressureLevel];
  v5 = [(_CDContext *)context objectForKeyedSubscript:keyPathForThermalPressureLevel];
  intValue = [v5 intValue];

  v7 = self->_context;
  keyPathForDefaultPairedDeviceThermalPressureLevel = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceThermalPressureLevel];
  v9 = [(_CDContext *)v7 objectForKeyedSubscript:keyPathForDefaultPairedDeviceThermalPressureLevel];
  intValue2 = [v9 intValue];

  if (intValue <= intValue2)
  {
    intValue = intValue2;
  }

  isWatchPluggedIn = [(_DASPairedSystemContext *)self isWatchPluggedIn];
  watchBatteryLevel = [(_DASPairedSystemContext *)self watchBatteryLevel];
  [(_DASPairedSystemContext *)self usageThresholdForPriority:50 batteryLevel:watchBatteryLevel isPluggedIn:isWatchPluggedIn];
  v14 = v13;
  [(_DASPairedSystemContext *)self usageThresholdForPriority:10 batteryLevel:watchBatteryLevel isPluggedIn:isWatchPluggedIn];
  v16 = v15;
  if (intValue < self->_previousMaxThermalPressure || v14 < self->_previousDefaultThreshold || v15 < self->_previousSyncThreshold)
  {
    callbackQueue = self->_callbackQueue;
    block = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __48___DASPairedSystemContext_handleConditionChange__block_invoke;
    v28 = &unk_1E7C8F0B0;
    selfCopy = self;
    p_block = &block;
LABEL_7:
    dispatch_async(callbackQueue, p_block);
    goto LABEL_8;
  }

  if (!self->_previousPluginStatus && isWatchPluggedIn)
  {
    callbackQueue = self->_callbackQueue;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __48___DASPairedSystemContext_handleConditionChange__block_invoke_2;
    v23 = &unk_1E7C8F0B0;
    selfCopy2 = self;
    p_block = &v20;
    goto LABEL_7;
  }

LABEL_8:
  self->_previousMaxThermalPressure = intValue;
  self->_previousDefaultThreshold = v14;
  self->_previousSyncThreshold = v16;
  v19 = !isWatchPluggedIn;
  if (watchBatteryLevel < 91)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0 && (!self->_previousPluginStatus || self->_previousBatteryLevel <= 90.0))
  {
    [(_DASPairedSystemContext *)self resetBudgetForRecentlyBackgroundedAppSyncTraffic:v20];
  }

  self->_previousPluginStatus = isWatchPluggedIn;
  self->_previousBatteryLevel = watchBatteryLevel;
}

- (BOOL)allowsSendingTrafficeForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level isReunionOrInitialSync:(BOOL)sync responseValidityDuration:(double *)duration
{
  syncCopy = sync;
  v30 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (duration)
  {
    *duration = 900.0;
  }

  if (level > 0x59 || syncCopy)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = log;
      v15 = [_DASPairedSystemContext stringForPriority:level];
      *buf = 138412802;
      v25 = identifiersCopy;
      v26 = 2112;
      v27 = v15;
      v28 = 1024;
      v29 = syncCopy;
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
  v11 = [(_DASPairedSystemContext *)self foregroundApplicationsAllowSendingTrafficForServiceIdentifiers:identifiersCopy atPriorityLevel:level furtherChecksNecessary:&v23];
  if (v23 != 1)
  {
    v20 = v11;
    goto LABEL_17;
  }

  if (![(_DASPairedSystemContext *)self thermalLevelsAllowSendingTrafficeForServiceIdentifiers:identifiersCopy atPriorityLevel:level])
  {
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v12 = [(_DASPairedSystemContext *)self thirdPartyAppPolicyAllowsSendingTrafficForServiceIdentifiers:identifiersCopy atPriorityLevel:level furtherChecksNecessary:&v23];
  if (v23)
  {
    if ([(_DASPairedSystemContext *)self batteryLevelsAllowSendingTrafficeForServiceIdentifiers:identifiersCopy atPriorityLevel:level])
    {
      v13 = self->_log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [_DASPairedSystemContext stringForPriority:level];
        *buf = 138412546;
        v25 = identifiersCopy;
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
  if (duration)
  {
    *duration = 120.0;
  }

LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)foregroundApplicationsAllowSendingTrafficForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level furtherChecksNecessary:(BOOL *)necessary
{
  v77 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  necessaryCopy = necessary;
  *necessary = 0;
  array = [MEMORY[0x1E695DF70] array];
  context = self->_context;
  keyPathForDefaultPairedDeviceForegroundApp = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceForegroundApp];
  v12 = [(_CDContext *)context objectForKeyedSubscript:keyPathForDefaultPairedDeviceForegroundApp];

  v13 = self->_context;
  keyPathForForegroundApp = [MEMORY[0x1E6997A68] keyPathForForegroundApp];
  v15 = [(_CDContext *)v13 objectForKeyedSubscript:keyPathForForegroundApp];

  if (v12)
  {
    [array addObject:v12];
  }

  if (v15)
  {
    if ([kAlwaysAllowedPhoneApps containsObject:v15])
    {
      [array addObject:v15];
    }

    else
    {

      v15 = 0;
    }
  }

  v16 = self->_context;
  keyPathForServicesAppearingForeground = [MEMORY[0x1E6997A68] keyPathForServicesAppearingForeground];
  v18 = [(_CDContext *)v16 objectForKeyedSubscript:keyPathForServicesAppearingForeground];

  v19 = [MEMORY[0x1E695DEC8] array:v18 withItemsIn:kAlwaysAllowedPhoneApps];

  if (v19)
  {
    [array addObjectsFromArray:v19];
  }

  v20 = self->_context;
  keyPathForDefaultPairedServicesAppearingForeground = [MEMORY[0x1E6997A68] keyPathForDefaultPairedServicesAppearingForeground];
  v22 = [(_CDContext *)v20 objectForKeyedSubscript:keyPathForDefaultPairedServicesAppearingForeground];

  if (v22)
  {
    [array addObjectsFromArray:v22];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v24 = log;
    v25 = [_DASPairedSystemContext stringForPriority:level];
    *buf = 138413570;
    v63 = identifiersCopy;
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

  if (level >= 0x32 && (([identifiersCopy containsObject:v15] & 1) != 0 || v19 && objc_msgSend(v19, "anyItemsIntersectArray:", identifiersCopy)))
  {
    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = [_DASPairedSystemContext stringForPriority:level];
      *buf = 138413314;
      v63 = identifiersCopy;
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
    levelCopy = level;
    v56 = array;
    v57 = v12;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v31 = array;
    v32 = [v31 countByEnumeratingWithState:&v58 objects:v76 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v59;
      while (2)
      {
        v35 = identifiersCopy;
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

            v45 = levelCopy;
            identifiersCopy = v35;
            if (levelCopy >= 0x32 && [v35 anyItemsIntersectArray:v40])
            {
              v46 = self->_log;
              array = v56;
              v19 = v55;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                v47 = v46;
                v48 = [_DASPairedSystemContext stringForPriority:v45];
                *buf = 138413314;
                v63 = identifiersCopy;
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
              array = v56;
              v19 = v55;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v50 = v49;
                v51 = [_DASPairedSystemContext stringForPriority:v45];
                *buf = 138413314;
                v63 = identifiersCopy;
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
        identifiersCopy = v35;
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    v38 = self->_context;
    keyPathForActiveComplications = [MEMORY[0x1E6997A68] keyPathForActiveComplications];
    v40 = [(_CDContext *)v38 objectForKeyedSubscript:keyPathForActiveComplications];

    if (v40)
    {
      [v31 addObjectsFromArray:v40];
    }

    if ([identifiersCopy anyItemsIntersectArray:v31])
    {
      v41 = levelCopy;
      v42 = self->_log;
      v19 = v55;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        v44 = [_DASPairedSystemContext stringForPriority:v41];
        *buf = 138413826;
        v63 = identifiersCopy;
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
      *necessaryCopy = 1;
    }

    array = v56;
LABEL_44:

    v12 = v57;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)thermalLevelsAllowSendingTrafficeForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level
{
  v45 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  context = self->_context;
  keyPathForThermalPressureLevel = [MEMORY[0x1E6997A68] keyPathForThermalPressureLevel];
  v9 = [(_CDContext *)context objectForKeyedSubscript:keyPathForThermalPressureLevel];
  unsignedIntValue = [v9 unsignedIntValue];

  v11 = self->_context;
  keyPathForDefaultPairedDeviceThermalPressureLevel = [MEMORY[0x1E6997A68] keyPathForDefaultPairedDeviceThermalPressureLevel];
  v13 = [(_CDContext *)v11 objectForKeyedSubscript:keyPathForDefaultPairedDeviceThermalPressureLevel];
  unsignedIntValue2 = [v13 unsignedIntValue];

  if (unsignedIntValue <= unsignedIntValue2)
  {
    v15 = unsignedIntValue2;
  }

  else
  {
    v15 = unsignedIntValue;
  }

  isWatchPluggedIn = [(_DASPairedSystemContext *)self isWatchPluggedIn];
  v17 = isWatchPluggedIn;
  levelCopy = level;
  if (level > 0x31 || isWatchPluggedIn)
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
    v22 = [_DASPairedSystemContext stringForPriority:levelCopy];
    [_DASPairedSystemContext stringForThermalLevel:unsignedIntValue];
    v33 = v15;
    v24 = v23 = identifiersCopy;
    v25 = [_DASPairedSystemContext stringForThermalLevel:unsignedIntValue2];
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

    identifiersCopy = v23;
    v15 = v33;
  }

  if (v15 >= v19)
  {
    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = [_DASPairedSystemContext stringForPriority:levelCopy];
      v29 = [_DASPairedSystemContext stringForThermalLevel:unsignedIntValue];
      v30 = [_DASPairedSystemContext stringForThermalLevel:unsignedIntValue2];
      *buf = 138413314;
      v36 = identifiersCopy;
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

- (BOOL)isAnyThirdPartyApp:(id)app
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
  obj = app;
  getActivePairedDevice = 0;
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
          bOOLValue = [v10 BOOLValue];
          *(v33 + 24) = bOOLValue;
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

        if (!getActivePairedDevice)
        {
          mEMORY[0x1E69B36C0] = [MEMORY[0x1E69B36C0] sharedInstance];
          getActivePairedDevice = [mEMORY[0x1E69B36C0] getActivePairedDevice];
        }

        v12 = dispatch_semaphore_create(0);
        mEMORY[0x1E698AB08] = [MEMORY[0x1E698AB08] sharedDeviceConnection];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __46___DASPairedSystemContext_isAnyThirdPartyApp___block_invoke;
        v24[3] = &unk_1E7C8F1C8;
        v24[4] = self;
        v14 = v12;
        v25 = v14;
        v26 = v8;
        v27 = &v32;
        [mEMORY[0x1E698AB08] fetchInfoForApplicationWithBundleID:v8 forPairedDevice:getActivePairedDevice completion:v24];

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

- (BOOL)thirdPartyAppPolicyAllowsSendingTrafficForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level furtherChecksNecessary:(BOOL *)necessary
{
  v51 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v35 = identifiersCopy;
  if (![(_DASPairedSystemContext *)self isWatchPluggedIn]&& [(_DASPairedSystemContext *)self isAnyThirdPartyApp:identifiersCopy])
  {
    levelCopy = level;
    date = [MEMORY[0x1E695DF00] date];
    obj = self->_recentlyBackgroundedApps;
    objc_sync_enter(obj);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = identifiersCopy;
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
            [date timeIntervalSinceDate:v15];
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
      *necessary = 0;
      if (levelCopy > 0x31)
      {
LABEL_23:
        v18 = 1;
LABEL_31:

        goto LABEL_32;
      }

      allowSyncTrafficForRecentlyBackgroundedApp = [(_DASPairedSystemContext *)self allowSyncTrafficForRecentlyBackgroundedApp];
      log = self->_log;
      v21 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (allowSyncTrafficForRecentlyBackgroundedApp)
      {
        if (v21)
        {
          v22 = log;
          v23 = [_DASPairedSystemContext stringForPriority:levelCopy];
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
        v29 = [_DASPairedSystemContext stringForPriority:levelCopy];
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
      if (levelCopy > 0x31)
      {
        v18 = 1;
        *necessary = 1;
        goto LABEL_31;
      }

      *necessary = 0;
      v25 = self->_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [_DASPairedSystemContext stringForPriority:levelCopy];
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
  *necessary = 1;
LABEL_32:

  v31 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)deleteRemoteHistogram
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (double)usageThresholdForPriority:(unint64_t)priority batteryLevel:(int)level isPluggedIn:(BOOL)in
{
  result = 10.0;
  v6 = 0.0;
  v7 = level >= 0x28 || priority >= 0x32;
  v8 = 2.22507386e-308;
  if (!v7)
  {
    v8 = 10.0;
  }

  if (in)
  {
    v8 = 0.0;
  }

  if (level <= 0x5E)
  {
    v6 = v8;
  }

  if (level >= 10)
  {
    return v6;
  }

  return result;
}

- (double)usageLikelihoodForApplication:(id)application
{
  applicationCopy = application;
  remoteAppLaunchCount = [(_DASPairedSystemContext *)self remoteAppLaunchCount];

  if (remoteAppLaunchCount)
  {
    remoteAppLaunchCount2 = [(_DASPairedSystemContext *)self remoteAppLaunchCount];
    v7 = [remoteAppLaunchCount2 objectForKeyedSubscript:applicationCopy];
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

- (BOOL)shouldBypassApplicationUsage:(id)usage
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  usageCopy = usage;
  v4 = [usageCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(usageCopy);
        }

        if ([kUsageIgnoredApps containsObject:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [usageCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)batteryLevelsAllowSendingTrafficeForServiceIdentifiers:(id)identifiers atPriorityLevel:(unint64_t)level
{
  v47 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  isWatchPluggedIn = [(_DASPairedSystemContext *)self isWatchPluggedIn];
  watchBatteryLevel = [(_DASPairedSystemContext *)self watchBatteryLevel];
  if (!isWatchPluggedIn && [identifiersCopy containsObject:@"com.apple.private.alloy.sensorkit"])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = log;
      v11 = [_DASPairedSystemContext stringForPriority:level];
      *buf = 138413058;
      v41 = identifiersCopy;
      v42 = 2112;
      v43 = v11;
      v44 = 1024;
      *v45 = watchBatteryLevel;
      *&v45[4] = 1024;
      *&v45[6] = 0;
      _os_log_impl(&dword_1B6E2F000, v10, OS_LOG_TYPE_DEFAULT, "DENIED: %@, Priority=%@, Watch Battery Level: %d, Watch Plugin Status: %u", buf, 0x22u);
    }

    goto LABEL_12;
  }

  [(_DASPairedSystemContext *)self usageThresholdForPriority:level batteryLevel:watchBatteryLevel isPluggedIn:isWatchPluggedIn];
  v13 = v12;
  if (v12 < 2.22507386e-308)
  {
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [_DASPairedSystemContext stringForPriority:level];
      *buf = 138413314;
      v41 = identifiersCopy;
      v42 = 2112;
      v43 = v16;
      v44 = 1024;
      *v45 = watchBatteryLevel;
      *&v45[4] = 1024;
      *&v45[6] = isWatchPluggedIn;
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
    if ([(_DASPairedSystemContext *)self shouldBypassApplicationUsage:identifiersCopy])
    {
      goto LABEL_26;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = identifiersCopy;
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
      v31 = [_DASPairedSystemContext stringForPriority:level];
      *buf = 138413314;
      v41 = v22;
      v42 = 2112;
      v43 = v31;
      v44 = 2048;
      *v45 = v26;
      *&v45[8] = 1024;
      *v46 = watchBatteryLevel;
      *&v46[4] = 1024;
      *&v46[6] = isWatchPluggedIn;
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
      v19 = [_DASPairedSystemContext stringForPriority:level];
      *buf = 138413314;
      v41 = v22;
      v42 = 2112;
      v43 = v19;
      v44 = 2048;
      *v45 = v26;
      *&v45[8] = 1024;
      *v46 = watchBatteryLevel;
      *&v46[4] = 1024;
      *&v46[6] = isWatchPluggedIn;
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
      v19 = [_DASPairedSystemContext stringForPriority:level];
      *buf = 138413314;
      v41 = identifiersCopy;
      v42 = 2112;
      v43 = v19;
      v44 = 1024;
      *v45 = watchBatteryLevel;
      *&v45[4] = 1024;
      *&v45[6] = isWatchPluggedIn;
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