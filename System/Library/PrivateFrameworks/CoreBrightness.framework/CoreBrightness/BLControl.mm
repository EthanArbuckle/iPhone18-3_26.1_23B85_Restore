@interface BLControl
- (BLControl)init;
- (BOOL)findBacklight;
- (BOOL)findDisplays;
- (BOOL)handleDisplayModeUpdatePropertyHandler:(id)handler;
- (BOOL)initKeyboardBacklightHIDManager;
- (BOOL)setBLControlPropertyWithKey:(id)key property:(id)property;
- (BOOL)setDisplayFactor:(float)factor transitionLength:(float)length;
- (BOOL)setPropertyInternalWithKey:(id)key property:(id)property client:(id)client;
- (BOOL)setPropertyWithKey:(id)key property:(id)property client:(id)client;
- (BOOL)start;
- (BOOL)startHIDSystemClient;
- (BOOL)useSyncBrightnessTransactionForDisplay:(id)display;
- (id)copyBLControlPropertyWithkey:(id)withkey;
- (id)copyDisplayInfo;
- (id)copyDisplayList;
- (id)copyPropertyInternalWithKey:(id)key forClient:(id)client;
- (id)copyPropertyWithKey:(id)key client:(id)client;
- (id)copyStatusInfo;
- (id)newDevicePariMatchingDictionaryWithPage:(unsigned int)page andUsage:(unsigned int)usage;
- (id)newGlobalConfigProvider;
- (void)addDisplayContainer:(id)container;
- (void)cancelHIDSystemClient;
- (void)dealloc;
- (void)handleCADisplay:(id)display;
- (void)handleCADisplayArrival:(id)arrival;
- (void)handleCADisplayRemoval:(id)removal;
- (void)handleCAWindowServerDisplay:(id)display;
- (void)handleCloningChange:(id)change;
- (void)handleExternalDisplayChange;
- (void)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from;
- (void)handlePresetChange;
- (void)hidServiceArrival:(__IOHIDServiceClient *)arrival;
- (void)keyboardBacklightHIDDeviceArrived:(id)arrived;
- (void)keyboardBacklightHIDDeviceRemoved:(id)removed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerNotificationBlock:(id)block;
- (void)releaseDisplayModeCompletionTimer;
- (void)removeDisplayContainer:(id)container;
- (void)removeHIDService:(__IOHIDServiceClient *)service;
- (void)scheduleDisplayModeCompletionTimerIn:(float)in forDisplayMode:(int64_t)mode;
- (void)sendNotificationFor:(id)for withValue:(id)value;
- (void)sendNotificationWithKeyboardIDs;
- (void)sendSyncNotificationFor:(id)for withValue:(id)value;
- (void)stop;
- (void)stopDisplayLookup;
- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion;
- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep;
- (void)systemSleepMonitorWillWakeFromSleep:(id)sleep;
- (void)waitForALSArrival;
@end

@implementation BLControl

- (void)releaseDisplayModeCompletionTimer
{
  selfCopy = self;
  v9 = a2;
  if (self->_displayModeCompletionTimer)
  {
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v8 = logHandle;
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_impl(&dword_1DE8E5000, log, type, "[Display Mode] Release scheduled display mode completion timer", v6, 2u);
    }

    dispatch_source_cancel(selfCopy->_displayModeCompletionTimer);
    dispatch_release(selfCopy->_displayModeCompletionTimer);
    selfCopy->_displayModeCompletionTimer = 0;
  }
}

- (BLControl)init
{
  selfCopy = self;
  v40 = a2;
  v39.receiver = self;
  v39.super_class = BLControl;
  selfCopy = [(BLControl *)&v39 init];
  if (selfCopy)
  {
    v2 = os_log_create("com.apple.CoreBrightness.BLControl", "default");
    *(selfCopy + 14) = v2;
    if (!*(selfCopy + 14))
    {
      v26 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v38 = v26;
      v37 = 16;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        log = v38;
        v25 = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_error_impl(&dword_1DE8E5000, log, v25, "failed to create log handle", v36, 2u);
      }
    }

    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(selfCopy + 11) = v3;
    if (!*(selfCopy + 11))
    {
      if (*(selfCopy + 14))
      {
        v23 = *(selfCopy + 14);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v23 = inited;
      }

      v35 = v23;
      v34 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v20 = v35;
        type = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_error_impl(&dword_1DE8E5000, v20, type, "creation of _clientDisplayMap failed!! Not starting brightness system", v33, 2u);
      }

LABEL_39:
      MEMORY[0x1E69E5920](selfCopy);
      selfCopy = 0;
      return 0;
    }

    inactive = dispatch_workloop_create_inactive("BacklightControl - Primary workloop");
    *(selfCopy + 2) = inactive;
    v5 = *(selfCopy + 2);
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(*(selfCopy + 2));
    v6 = dispatch_queue_create_with_target_V2("BacklightControl - Primary queue", 0, *(selfCopy + 2));
    *(selfCopy + 3) = v6;
    if (!*(selfCopy + 3))
    {
      if (*(selfCopy + 14))
      {
        v19 = *(selfCopy + 14);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v18 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v18 = init_default_corebrightness_log();
        }

        v19 = v18;
      }

      v32 = v19;
      v31 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v16 = v32;
        v17 = v31;
        __os_log_helper_16_0_0(v30);
        _os_log_error_impl(&dword_1DE8E5000, v16, v17, "failed to create an internal dispatch queue", v30, 2u);
      }

      goto LABEL_39;
    }

    *(selfCopy + 57) = 0;
    *(selfCopy + 56) = 0;
    newGlobalConfigProvider = [selfCopy newGlobalConfigProvider];
    *(selfCopy + 15) = newGlobalConfigProvider;
    *(selfCopy + 15) = -1;
    *(selfCopy + 18) = -1;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(selfCopy + 12) = v8;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(selfCopy + 13) = v9;
    *(selfCopy + 20) = 0;
    *(selfCopy + 21) = 5;
    *(selfCopy + 22) = 0;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(selfCopy + 18) = v10;
    if (!*(selfCopy + 18))
    {
      if (*(selfCopy + 14))
      {
        v15 = *(selfCopy + 14);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v14 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v14 = init_default_corebrightness_log();
        }

        v15 = v14;
      }

      v29 = v15;
      v28 = 16;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v12 = v29;
        v13 = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_error_impl(&dword_1DE8E5000, v12, v13, "unable to create display containers dictionary", v27, 2u);
      }

      goto LABEL_39;
    }
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  [(BLControl *)self releaseDisplayModeCompletionTimer];
  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_cbConfig)
  {
    MEMORY[0x1E69E5920](selfCopy->_cbConfig);
    selfCopy->_cbConfig = 0;
  }

  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
  }

  if (selfCopy->_workloop)
  {
    dispatch_release(selfCopy->_workloop);
  }

  MEMORY[0x1E69E5920](selfCopy->_displayContainers);
  MEMORY[0x1E69E5920](selfCopy->_hidServiceClients);
  MEMORY[0x1E69E5920](selfCopy->_clientDisplayMap);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_keyboardContainers).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = BLControl;
  [(BLControl *)&v3 dealloc];
}

- (id)newGlobalConfigProvider
{
  v10[1] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v7 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/core-brightness");
  v9 = kCBSupportsSyncDisplayStateControl;
  v10[0] = &unk_1F59C8EE0;
  v5 = +[CBDictConfigProvider providerWithDict:](CBDictConfigProvider, "providerWithDict:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1]);
  if (v7)
  {
    v8[0] = [CBIORegistryParser parserWithReader:[CBIORegistryReader readerWithService:v7 andOptions:0]];
    v8[1] = v5;
    v6 = +[CBCombinedConfigProvider providerFromList:](CBCombinedConfigProvider, "providerFromList:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2]);
    IOObjectRelease(v7);
  }

  else
  {
    v6 = v5;
  }

  v3 = MEMORY[0x1E69E5928](v6);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)start
{
  selfCopy = self;
  v17 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x20000000;
  v15 = 32;
  v16 = 0;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __18__BLControl_start__block_invoke;
  v9 = &unk_1E867C080;
  v10 = selfCopy;
  v11 = &v12;
  dispatch_sync(queue, &block);
  v4 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v4 & 1;
}

uint64_t __18__BLControl_start__block_invoke(uint64_t a1)
{
  v56 = a1;
  v55 = a1;
  if (CBU_ShouldWaitForALS())
  {
    if (*(*(a1 + 32) + 112))
    {
      v24 = *(*(a1 + 32) + 112);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v24 = inited;
    }

    v54 = v24;
    v53 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      log = v54;
      type = v53;
      __os_log_helper_16_0_0(v52);
      _os_log_impl(&dword_1DE8E5000, log, type, "check ALS arrival", v52, 2u);
    }

    [*(a1 + 32) waitForALSArrival];
  }

  if (([*(a1 + 32) startHIDSystemClient] & 1) == 0)
  {
    if (*(*(a1 + 32) + 112))
    {
      v20 = *(*(a1 + 32) + 112);
    }

    else
    {
      v19 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v20 = v19;
    }

    v51 = v20;
    v50 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v17 = v51;
      v18 = v50;
      __os_log_helper_16_0_0(v49);
      _os_log_error_impl(&dword_1DE8E5000, v17, v18, "no HID", v49, 2u);
    }
  }

  v48 = [*(a1 + 32) findDisplays];
  if ((v48 & 1) == 0)
  {
    if (*(*(a1 + 32) + 112))
    {
      v16 = *(*(a1 + 32) + 112);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v15 = init_default_corebrightness_log();
      }

      v16 = v15;
    }

    v47 = v16;
    v46 = 1;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v13 = v47;
      v14 = v46;
      __os_log_helper_16_0_0(v45);
      _os_log_impl(&dword_1DE8E5000, v13, v14, "CA doesn't provide display list", v45, 2u);
    }

    if ([*(a1 + 32) findBacklight])
    {
      if (*(*(a1 + 32) + 112))
      {
        v12 = *(*(a1 + 32) + 112);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v11 = init_default_corebrightness_log();
        }

        v12 = v11;
      }

      v44 = v12;
      v43 = 1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v9 = v44;
        v10 = v43;
        __os_log_helper_16_0_0(v42);
        _os_log_impl(&dword_1DE8E5000, v9, v10, "CA doesn't provide display list", v42, 2u);
      }
    }

    else
    {
      if (*(*(a1 + 32) + 112))
      {
        v8 = *(*(a1 + 32) + 112);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v7 = init_default_corebrightness_log();
        }

        v8 = v7;
      }

      v41 = v8;
      v40 = 16;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v5 = v41;
        v6 = v40;
        __os_log_helper_16_0_0(v39);
        _os_log_error_impl(&dword_1DE8E5000, v5, v6, "Built in display/backlight driver has not been found.", v39, 2u);
      }
    }
  }

  [*(*(a1 + 32) + 96) enumerateObjectsUsingBlock:{&__block_literal_global_11, v5}];
  v33 = MEMORY[0x1E69E9820];
  v34 = -1073741824;
  v35 = 0;
  v36 = __18__BLControl_start__block_invoke_2;
  v37 = &unk_1E867C380;
  v38 = *(a1 + 32);
  *(*(a1 + 32) + 64) = &v33;
  v27 = MEMORY[0x1E69E9820];
  v28 = -1073741824;
  v29 = 0;
  v30 = __18__BLControl_start__block_invoke_3;
  v31 = &unk_1E867C380;
  v32 = *(a1 + 32);
  *(*(a1 + 32) + 80) = &v27;
  notify_register_dispatch("com.apple.system.lowpowermode", (*(a1 + 32) + 60), *(*(a1 + 32) + 24), *(*(a1 + 32) + 64));
  notify_register_dispatch("com.apple.powerd.lowpowermode.prefs", (*(a1 + 32) + 72), MEMORY[0x1E69E96A0], *(*(a1 + 32) + 80));
  if (*(*(a1 + 32) + 80))
  {
    v1 = *(*(a1 + 32) + 72);
    (*(*(*(a1 + 32) + 80) + 16))();
  }

  if (*(*(a1 + 32) + 64))
  {
    v2 = *(*(a1 + 32) + 60);
    (*(*(*(a1 + 32) + 64) + 16))();
  }

  [*(a1 + 32) initKeyboardBacklightHIDManager];
  v3 = *(*(a1 + 32) + 24);
  v26 = *(a1 + 32);
  *(v26 + 160) = IOPMScheduleUserActiveChangedNotification();
  *(*(a1 + 32) + 184) = [objc_alloc(MEMORY[0x1E69D54B8]) initWithIdentifier:@"com.apple.CoreBrightness.BLControl" queue:*(*(a1 + 32) + 24)];
  result = [*(*(a1 + 32) + 184) addObserver:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t __18__BLControl_start__block_invoke_31(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CFD60];
  if (result)
  {
    return [a2 setProperty:MEMORY[0x1E695E110] forKey:@"DisplayBrightnessAuto"];
  }

  return result;
}

uint64_t __18__BLControl_start__block_invoke_2(uint64_t a1, int a2)
{
  v7 = a1;
  v6 = a2;
  state64[1] = a1;
  state64[0] = 0;
  notify_get_state(a2, state64);
  v4 = *(a1 + 32);
  if (state64[0])
  {
    return [v4 setPropertyInternalWithKey:@"EcoMode" property:*MEMORY[0x1E695E4D0] client:0];
  }

  else
  {
    return [v4 setPropertyInternalWithKey:@"EcoMode" property:*MEMORY[0x1E695E4C0] client:0];
  }
}

void __18__BLControl_start__block_invoke_3(uint64_t a1)
{
  CFPreferencesAppSynchronize(@"com.apple.powerd.lowpowermode");
  cf = CFPreferencesCopyAppValue(@"backlightReduction", @"com.apple.powerd.lowpowermode");
  if (cf)
  {
    [*(a1 + 32) setPropertyInternalWithKey:@"EcoModeFactorUpdate" property:cf client:0];
    CFRelease(cf);
  }
}

- (void)stop
{
  selfCopy = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __17__BLControl_stop__block_invoke;
  v7 = &unk_1E867B480;
  v8 = selfCopy;
  dispatch_sync(queue, &block);
}

void __17__BLControl_stop__block_invoke(uint64_t a1)
{
  if (notify_is_valid_token(*(*(a1 + 32) + 60)))
  {
    notify_cancel(*(*(a1 + 32) + 60));
    *(*(a1 + 32) + 60) = -1;
  }

  if (notify_is_valid_token(*(*(a1 + 32) + 72)))
  {
    notify_cancel(*(*(a1 + 32) + 72));
    *(*(a1 + 32) + 72) = -1;
  }

  if (*(*(a1 + 32) + 40))
  {
    _Block_release(*(*(a1 + 32) + 40));
    *(*(a1 + 32) + 40) = 0;
  }

  [*(a1 + 32) cancelHIDSystemClient];
  [*(a1 + 32) stopDisplayLookup];
  [*(*(a1 + 32) + 96) makeObjectsPerformSelector:0x1FB6F9578uLL];
  [*(*(a1 + 32) + 96) removeAllObjects];
  [objc_msgSend(*(*(a1 + 32) + 144) "allValues")];
  [*(*(a1 + 32) + 144) removeAllObjects];
  [*(*(a1 + 32) + 104) removeAllObjects];
  *&v1 = MEMORY[0x1E69E5920](*(*(a1 + 32) + 136)).n128_u64[0];
  *(*(a1 + 32) + 136) = 0;
  if (*(*(a1 + 32) + 160))
  {
    v2 = *(*(a1 + 32) + 160);
    IOPMUnregisterNotification();
    *(*(a1 + 32) + 160) = 0;
  }

  if (*(*(a1 + 32) + 184))
  {
    [*(*(a1 + 32) + 184) removeObserver:{*(a1 + 32), v1}];
    [*(*(a1 + 32) + 184) invalidate];
    MEMORY[0x1E69E5920](*(*(a1 + 32) + 184));
    *(*(a1 + 32) + 184) = 0;
  }
}

- (void)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from
{
  selfCopy = self;
  v17 = a2;
  eventCopy = event;
  fromCopy = from;
  if (from && eventCopy)
  {
    v11 = 0;
    if (IOHIDEventGetType() == 12)
    {
      v10 = [(BLControl *)selfCopy copyPropertyInternalWithKey:@"ALSIntegrationMode" forClient:0];
      if ([+[CBAODState isAODActive] sharedInstance]
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v10 intValue] != 2 && objc_msgSend(v10, "intValue") != 1)
        {
          [CBALSEvent replaceLuxWithFilteredLux:eventCopy];
        }
      }

      *&v4 = MEMORY[0x1E69E5920](v10).n128_u64[0];
      if (!selfCopy->_ignoreALSEvents)
      {
        v11 = 1;
      }
    }

    else if (IOHIDEventGetType() == 14)
    {
      v11 = 1;
    }

    else if (IOHIDEventGetType() == 11)
    {
      v11 = 1;
    }

    else if (IOHIDEventGetType() == 3)
    {
      v11 = 1;
    }

    else if (IOHIDEventGetType() == 1 && IOHIDEventGetIntegerValue() == 65280)
    {
      v11 = IOHIDEventGetIntegerValue() == 98;
    }

    if (v11)
    {
      [(NSMutableArray *)selfCopy->_displayContainers enumerateObjectsUsingBlock:v4];
      if ([(NSMutableDictionary *)selfCopy->_keyboardContainers count])
      {
        if (IOHIDEventGetType() == 12)
        {
          v9 = [(BLControl *)selfCopy copyPropertyInternalWithKey:@"TrustedFrontLux" forClient:0];
          if (v9)
          {
            [(NSMutableDictionary *)selfCopy->_keyboardContainers enumerateKeysAndObjectsUsingBlock:?];
          }

          MEMORY[0x1E69E5920](v9);
        }
      }
    }
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v14 = logHandle;
    v13 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "invalid parameters", v12, 2u);
    }
  }
}

uint64_t __33__BLControl_handleHIDEvent_from___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a2 handleHIDEvent:*(a1 + 32) from:*(a1 + 40)];
  }

  return result;
}

uint64_t __33__BLControl_handleHIDEvent_from___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 conformsToProtocol:&unk_1F59CFD60];
  if (result)
  {
    return [a3 setProperty:*(a1 + 32) forKey:@"TrustedFrontLux"];
  }

  return result;
}

- (BOOL)findBacklight
{
  keys[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v33 = a2;
  start = 0;
  keys[0] = @"backlight-control";
  values = 0;
  values = *MEMORY[0x1E695E4D0];
  v9 = MEMORY[0x1E695E480];
  keyCallBacks = MEMORY[0x1E695E9D8];
  valueCallBacks = MEMORY[0x1E695E9E8];
  v31 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v36 = @"IOPropertyMatch";
  v35 = v31;
  v30 = CFDictionaryCreate(*v9, &v36, &v35, 1, keyCallBacks, valueCallBacks);
  CFRelease(v31);
  existing = 0;
  v28 = 0;
  if (!IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], v30, &existing) && existing)
  {
    while (1)
    {
      v28 = IOIteratorNext(existing);
      if (!v28)
      {
        break;
      }

      v2 = [CBDisplayContaineriOS alloc];
      v27 = [(CBDisplayContaineriOS *)v2 initWithBacklightService:v28];
      if (v27)
      {
        [(CBContainer *)v27 scheduleWithDispatchQueue:selfCopy->_queue];
        v21 = MEMORY[0x1E69E9820];
        v22 = -1073741824;
        v23 = 0;
        v24 = __26__BLControl_findBacklight__block_invoke;
        v25 = &unk_1E867B558;
        v26 = selfCopy;
        [(CBDisplayContaineriOS *)v27 registerNotificationBlock:?];
        start = [(CBDisplayContaineriOS *)v27 start];
        if ((start & 1) == 0)
        {
          MEMORY[0x1E69E5920](v27);
          break;
        }

        [(BLControl *)selfCopy addDisplayContainer:v27];
        ++selfCopy->_builtInDisplayCount;
        if (([(CBDisplayContaineriOS *)v27 conformsToProtocol:&unk_1F59CC038]& 1) != 0)
        {
          hidServiceClients = selfCopy->_hidServiceClients;
          v15 = MEMORY[0x1E69E9820];
          v16 = -1073741824;
          v17 = 0;
          v18 = __26__BLControl_findBacklight__block_invoke_2;
          v19 = &unk_1E867B668;
          v20 = v27;
          [(NSMutableArray *)hidServiceClients enumerateObjectsUsingBlock:?];
        }

        MEMORY[0x1E69E5920](v27);
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          logHandle = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        oslog = logHandle;
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v6 = type;
          __os_log_helper_16_0_0(v12);
          _os_log_error_impl(&dword_1DE8E5000, log, v6, "error: failed to create display container for service", v12, 2u);
        }
      }

      start = 1;
    }

    IOObjectRelease(existing);
  }

  *MEMORY[0x1E69E9840];
  return start & 1;
}

- (BOOL)findDisplays
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v37 = a2;
  v36 = 0;
  serverIfRunning = [MEMORY[0x1E6979550] serverIfRunning];
  if (serverIfRunning)
  {
    displays = [serverIfRunning displays];
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v30 = logHandle;
    v29 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_66(v42, displays);
      _os_log_impl(&dword_1DE8E5000, v30, v29, "displays: %{public}@", v42, 0xCu);
    }

    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    memset(__b, 0, sizeof(__b));
    obj = displays;
    v15 = [displays countByEnumeratingWithState:__b objects:v41 count:16];
    if (v15)
    {
      v11 = *__b[2];
      v12 = 0;
      v13 = v15;
      while (1)
      {
        v10 = v12;
        if (*__b[2] != v11)
        {
          objc_enumerationMutation(obj);
        }

        v27 = 0;
        v27 = *(__b[1] + 8 * v12);
        displayId = [v27 displayId];
        if ([(BLControl *)selfCopy useSyncBrightnessTransactionForDisplay:v27])
        {
          [(BLControl *)selfCopy handleCAWindowServerDisplay:v27];
          v36 = 1;
          [v28 setObject:@"WSDisplay" forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", displayId)}];
        }

        else
        {
          [v28 setObject:@"CADisplay" forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", displayId)}];
        }

        ++v12;
        if (v10 + 1 >= v13)
        {
          v12 = 0;
          v13 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    mainDisplay = [MEMORY[0x1E6979328] mainDisplay];
    [mainDisplay addObserver:selfCopy forKeyPath:@"currentPreset" options:0 context:0];
    [(BLControl *)selfCopy handlePresetChange];
    memset(v23, 0, sizeof(v23));
    displays2 = [MEMORY[0x1E6979328] displays];
    v9 = [displays2 countByEnumeratingWithState:v23 objects:v40 count:16];
    if (v9)
    {
      v5 = *v23[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*v23[2] != v5)
        {
          objc_enumerationMutation(displays2);
        }

        v24 = 0;
        v24 = *(v23[1] + 8 * v6);
        displayId2 = [v24 displayId];
        if ([objc_msgSend(v28 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", displayId2)), "isEqualToString:", @"CADisplay"}])
        {
          [(BLControl *)selfCopy handleCADisplay:v24];
          [v24 addObserver:selfCopy forKeyPath:@"currentMode" options:? context:?];
          [v24 addObserver:selfCopy forKeyPath:@"cloning" options:0 context:0];
          v36 = 1;
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [displays2 countByEnumeratingWithState:v23 objects:v40 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x1E69E5920](v28);
    v39 = v36 & 1;
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v21 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v20 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v20 = init_default_corebrightness_log();
      }

      v21 = v20;
    }

    oslog = v21;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v19 = type;
      __os_log_helper_16_0_0(v32);
      _os_log_error_impl(&dword_1DE8E5000, log, v19, "CAWindowServer is not running", v32, 2u);
    }

    v39 = v36 & 1;
  }

  *MEMORY[0x1E69E9840];
  return v39 & 1;
}

- (void)stopDisplayLookup
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v15 = a2;
  v14 = [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")];
  if (selfCopy->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v13 = logHandle;
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v18, v14);
    _os_log_impl(&dword_1DE8E5000, v13, v12, "displays: %{public}@", v18, 0xCu);
  }

  [objc_msgSend(MEMORY[0x1E6979328] "mainDisplay")];
  memset(__b, 0, sizeof(__b));
  obj = [MEMORY[0x1E6979328] displays];
  v6 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v6)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v6;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v11 = 0;
      v11 = *(__b[1] + 8 * v4);
      [v11 removeObserver:selfCopy forKeyPath:@"currentMode" context:0];
      [v11 removeObserver:selfCopy forKeyPath:@"cloning" context:0];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleCADisplay:(id)display
{
  v11 = *MEMORY[0x1E69E9840];
  if (display && isDisplayAvailable(display))
  {
    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_66(v10, [display deviceName]);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "%{public}@ is available", v10, 0xCu);
    }

    [(BLControl *)self handleCADisplayArrival:display];
  }

  else
  {
    if (self->_logHandle)
    {
      v4 = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v3 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v3 = init_default_corebrightness_log();
      }

      v4 = v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_66(v9, [display deviceName]);
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_INFO, "%{public}@ is not available", v9, 0xCu);
    }

    [(BLControl *)self handleCADisplayRemoval:display];
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleCAWindowServerDisplay:(id)display
{
  v36 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v32 = a2;
  displayCopy = display;
  displayCopy2 = display;
  v29 = [[CBBrightnessProxyCA alloc] initWithCABrightnessControl:display];
  if (v29)
  {
    v28 = [[CBDisplayContaineriOS alloc] initWithCBBrtControl:v29];
    if (v28)
    {
      [(CBContainer *)v28 scheduleWithDispatchQueue:selfCopy->_queue];
      v22 = MEMORY[0x1E69E9820];
      v23 = -1073741824;
      v24 = 0;
      v25 = __41__BLControl_handleCAWindowServerDisplay___block_invoke;
      v26 = &unk_1E867B558;
      v27 = selfCopy;
      [(CBDisplayContaineriOS *)v28 registerNotificationBlock:?];
      start = [(CBDisplayContaineriOS *)v28 start];
      getDisplayType = [(CBBrightnessProxyCA *)v29 getDisplayType];
      if (getDisplayType != [(CBBrightnessProxyCA *)v29 CBDispTypeIntegrated]|| start)
      {
        getDisplayType2 = [(CBBrightnessProxyCA *)v29 getDisplayType];
        if (getDisplayType2 == [(CBBrightnessProxyCA *)v29 CBDispTypeIntegrated])
        {
          ++selfCopy->_builtInDisplayCount;
        }

        getDisplayType3 = [(CBBrightnessProxyCA *)v29 getDisplayType];
        if (getDisplayType3 == [(CBBrightnessProxyCA *)v29 CBDispTypeIntegrated]&& selfCopy->_displayMode == 5)
        {
          v17 = [(CBDisplayContaineriOS *)v28 copyPropertyForKey:@"DisplayOn"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            bOOLValue = [v17 BOOLValue];
            v5 = 3;
            if ((bOOLValue & 1) == 0)
            {
              v5 = 0;
            }

            selfCopy->_displayMode = v5;
            if (selfCopy->_logHandle)
            {
              logHandle = selfCopy->_logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                inited = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                inited = init_default_corebrightness_log();
              }

              logHandle = inited;
            }

            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_2_1_8_66(v35, [CBDisplayStateUtilities stringForDisplayMode:selfCopy->_displayMode]);
              _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "display mode initialised from invalid to %{public}@", v35, 0xCu);
            }
          }

          *&v3 = MEMORY[0x1E69E5920](v17).n128_u64[0];
        }

        [(BLControl *)selfCopy addDisplayContainer:v28, v3];
        if (([(CBDisplayContaineriOS *)v28 conformsToProtocol:&unk_1F59CC038]& 1) != 0)
        {
          [(NSMutableArray *)selfCopy->_hidServiceClients enumerateObjectsUsingBlock:?];
        }

        MEMORY[0x1E69E5920](v28);
        MEMORY[0x1E69E5920](v29);
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          v15 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v14 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v14 = init_default_corebrightness_log();
          }

          v15 = v14;
        }

        v20 = v15;
        v19 = 16;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          log = v20;
          type = v19;
          __os_log_helper_16_0_0(v18);
          _os_log_error_impl(&dword_1DE8E5000, log, type, "BLControl, ERROR creating container....return! ", v18, 2u);
        }

        MEMORY[0x1E69E5920](v28);
        MEMORY[0x1E69E5920](v29);
      }
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v7 = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v6 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v6 = init_default_corebrightness_log();
        }

        v7 = v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v34, displayCopy);
        _os_log_error_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_ERROR, "error: failed to create display container for service %{public}@", v34, 0xCu);
      }

      MEMORY[0x1E69E5920](v29);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  selfCopy = self;
  v20 = a2;
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  contextCopy = context;
  queue = self->_queue;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __60__BLControl_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v11 = &unk_1E867BB20;
  objectCopy2 = object;
  v13 = selfCopy;
  pathCopy2 = path;
  changeCopy2 = change;
  dispatch_sync(queue, &v7);
}

void __60__BLControl_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 32);
    if (*(*(a1 + 40) + 112))
    {
      v6 = *(*(a1 + 40) + 112);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v6 = inited;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_4_8_66_8_66_8_66_8_66(v14, [v11 name], *(a1 + 48), objc_msgSend(v11, "valueForKeyPath:", *(a1 + 48)), *(a1 + 56));
      _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "observed %{public}@ changing %{public}@; is now %{public}@; change dict: %{public}@", v14, 0x2Au);
    }

    if (*(*(a1 + 40) + 112))
    {
      v4 = *(*(a1 + 40) + 112);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v3 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v3 = init_default_corebrightness_log();
      }

      v4 = v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_4_0_8_66(v13, [v11 displayId], objc_msgSend(v11, "uniqueId"));
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "display ID %u; unique ID %{public}@;", v13, 0x12u);
    }

    if (([v11 isExternal] & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqual:", @"currentMode") & 1) == 0)
    {
      if ([*(a1 + 48) isEqual:@"currentPreset"])
      {
        [*(a1 + 40) handlePresetChange];
      }

      else if ([*(a1 + 48) isEqual:@"cloning"])
      {
        [*(a1 + 40) handleCloningChange:v11];
      }

      else
      {
        [*(a1 + 40) handleCADisplay:v11];
      }
    }

    else
    {
      if (*(*(a1 + 40) + 112))
      {
        v2 = *(*(a1 + 40) + 112);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v1 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v1 = init_default_corebrightness_log();
        }

        v2 = v1;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v12, [v11 displayId]);
        _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "%u Internal display's mode (resolution) changed, doing nothing", v12, 8u);
      }
    }
  }

  else
  {
    if (*(*(a1 + 40) + 112))
    {
      v8 = *(*(a1 + 40) + 112);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v15, *(a1 + 32));
      _os_log_error_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_ERROR, "Unexpected object observed %@", v15, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleCADisplayArrival:(id)arrival
{
  v16 = *MEMORY[0x1E69E9840];
  [(BLControl *)self handleCADisplayRemoval:arrival];
  v11 = [[CBDisplayContaineriOS alloc] initWithCADisplay:arrival];
  if (v11)
  {
    [(CBContainer *)v11 scheduleWithDispatchQueue:self->_queue];
    [(CBDisplayContaineriOS *)v11 registerNotificationBlock:?];
    start = [(CBDisplayContaineriOS *)v11 start];
    if (([arrival isExternal] & 1) != 0 || start)
    {
      if (([arrival isExternal] & 1) == 0)
      {
        ++self->_builtInDisplayCount;
      }

      if (([arrival isExternal] & 1) == 0 && self->_displayMode == 5)
      {
        v9 = [(CBDisplayContaineriOS *)v11 copyPropertyForKey:@"DisplayOn"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [v9 BOOLValue];
          v4 = 3;
          if ((bOOLValue & 1) == 0)
          {
            v4 = 0;
          }

          self->_displayMode = v4;
          if (self->_logHandle)
          {
            logHandle = self->_logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              inited = init_default_corebrightness_log();
            }

            logHandle = inited;
          }

          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_2_1_8_66(v15, [CBDisplayStateUtilities stringForDisplayMode:self->_displayMode]);
            _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "display mode initialised from invalid to %{public}@", v15, 0xCu);
          }
        }

        MEMORY[0x1E69E5920](v9);
      }

      [(BLControl *)self addDisplayContainer:v11];
      if (([(CBDisplayContaineriOS *)v11 conformsToProtocol:&unk_1F59CC038]& 1) != 0)
      {
        [(NSMutableArray *)self->_hidServiceClients enumerateObjectsUsingBlock:?];
      }

      [(BLControl *)self handleExternalDisplayChange];
      [(BLControl *)self handleCloningChange:arrival];
    }

    else
    {
      MEMORY[0x1E69E5920](v11);
    }
  }

  else
  {
    if (self->_logHandle)
    {
      v6 = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v14, arrival);
      _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "error: failed to create display container for service %{public}@", v14, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleCADisplayRemoval:(id)removal
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  removalCopy = removal;
  if (removal)
  {
    displayId = [removalCopy displayId];
    v7 = 0;
    v8 = &v7;
    v9 = 1375731712;
    v10 = 48;
    v11 = __Block_byref_object_copy__15;
    v12 = __Block_byref_object_dispose__15;
    v13 = 0;
    [(NSMutableArray *)selfCopy->_displayContainers enumerateObjectsUsingBlock:?];
    if (v8[5])
    {
      if (([removalCopy isExternal] & 1) == 0)
      {
        --selfCopy->_builtInDisplayCount;
      }

      if (selfCopy->_logHandle)
      {
        logHandle = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_66(v19, v8[5]);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "removing %{public}@", v19, 0xCu);
      }

      [v8[5] stop];
      [v8[5] unregisterNotificationBlock];
      [v8[5] unscheduleWithDispatchQueue:selfCopy->_queue];
      [(BLControl *)selfCopy removeDisplayContainer:v8[5]];
      [(BLControl *)selfCopy handleExternalDisplayChange];
      [(BLControl *)selfCopy handleCloningChange:removalCopy];
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v4 = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v3 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v3 = init_default_corebrightness_log();
        }

        v4 = v3;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_8_0(v18, displayId);
        _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_INFO, "no matching container to registry ID 0x%llX", v18, 0xCu);
      }
    }

    _Block_object_dispose(&v7, 8);
  }

  *MEMORY[0x1E69E9840];
}

void __36__BLControl_handleCADisplayRemoval___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([a2 conformsToProtocol:&unk_1F59CFD60])
  {
    v8 = [a2 copyPropertyForKey:@"CBDisplayID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v8 unsignedLongValue];
      if (v6 == [*(a1 + 32) displayId])
      {
        if (*(*(a1 + 40) + 112))
        {
          v5 = *(*(a1 + 40) + 112);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v5 = inited;
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_2_8_0_8_64(v11, *(a1 + 56), a2);
          _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "found container matching to to registry ID 0x%llX (%@)", v11, 0x16u);
        }

        *(*(*(a1 + 48) + 8) + 40) = a2;
        *a4 = 1;
      }
    }

    MEMORY[0x1E69E5920](v8);
  }

  *MEMORY[0x1E69E9840];
}

- (id)newDevicePariMatchingDictionaryWithPage:(unsigned int)page andUsage:(unsigned int)usage
{
  selfCopy = self;
  v15 = a2;
  pageCopy = page;
  usageCopy = usage;
  v12 = 0;
  v11 = 0;
  v7 = 0x1E696A000uLL;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:page];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:usageCopy];
  if (v10 && v9)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v10, @"DeviceUsagePage", v9, @"DeviceUsage", 0}];
    if (v11)
    {
      v4 = objc_alloc(MEMORY[0x1E695DEC8]);
      v8 = [v4 initWithObjects:{v11, 0}];
      if (v8)
      {
        v5 = objc_alloc(MEMORY[0x1E695DF90]);
        v12 = [v5 initWithObjectsAndKeys:{v8, @"DeviceUsagePairs", 0}];
      }

      MEMORY[0x1E69E5920](v8);
    }

    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v9);
  return v12;
}

- (void)hidServiceArrival:(__IOHIDServiceClient *)arrival
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_0_8_66(v7, arrival, arrival);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "(%p) %{public}@", v7, 0x16u);
  }

  IOHIDServiceClientRegisterRemovalBlock();
  [(NSMutableArray *)self->_hidServiceClients addObject:arrival];
  [(NSMutableArray *)self->_displayContainers enumerateObjectsUsingBlock:?];
  [(NSMutableDictionary *)self->_keyboardContainers enumerateKeysAndObjectsUsingBlock:?];
  *MEMORY[0x1E69E9840];
}

uint64_t __31__BLControl_hidServiceArrival___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a2 addHIDServiceClient:*(a1 + 32)];
  }

  return result;
}

uint64_t __31__BLControl_hidServiceArrival___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a3 addHIDServiceClient:*(a1 + 32)];
  }

  return result;
}

- (void)removeHIDService:(__IOHIDServiceClient *)service
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_0_8_66(v7, service, service);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "(%p) %{public}@", v7, 0x16u);
  }

  [(NSMutableArray *)self->_hidServiceClients removeObject:service];
  [(NSMutableArray *)self->_displayContainers enumerateObjectsUsingBlock:?];
  [(NSMutableDictionary *)self->_keyboardContainers enumerateKeysAndObjectsUsingBlock:?];
  *MEMORY[0x1E69E9840];
}

uint64_t __30__BLControl_removeHIDService___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a2 removeHIDServiceClient:*(a1 + 32)];
  }

  return result;
}

uint64_t __30__BLControl_removeHIDService___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a3 removeHIDServiceClient:*(a1 + 32)];
  }

  return result;
}

- (BOOL)startHIDSystemClient
{
  selfCopy = self;
  v38 = a2;
  v37 = 0;
  v2 = *MEMORY[0x1E695E480];
  selfCopy->_hidSystemClient = IOHIDEventSystemClientCreateWithType();
  if (selfCopy->_hidSystemClient)
  {
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v36)
    {
      v35 = [(BLControl *)selfCopy newDevicePariMatchingDictionaryWithPage:65280 andUsage:4];
      if (v35)
      {
        [v36 addObject:v35];
        MEMORY[0x1E69E5920](v35);
      }

      v35 = [(BLControl *)selfCopy newDevicePariMatchingDictionaryWithPage:32 andUsage:65];
      if (v35)
      {
        [v36 addObject:v35];
        MEMORY[0x1E69E5920](v35);
      }

      if (!selfCopy->_monitorALSOnly)
      {
        v35 = [(BLControl *)selfCopy newDevicePariMatchingDictionaryWithPage:65280 andUsage:8];
        if (v35)
        {
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }

        v35 = [(BLControl *)selfCopy newDevicePariMatchingDictionaryWithPage:13 andUsage:12];
        if (v35)
        {
          [v35 setObject:MEMORY[0x1E695E118] forKey:@"Built-In"];
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }

        v35 = [(BLControl *)selfCopy newDevicePariMatchingDictionaryWithPage:13 andUsage:4];
        if (v35)
        {
          [v35 setObject:MEMORY[0x1E695E118] forKey:@"Built-In"];
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }

        v35 = [(BLControl *)selfCopy newDevicePariMatchingDictionaryWithPage:11 andUsage:1];
        if (v35)
        {
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }

        v35 = [(BLControl *)selfCopy newDevicePariMatchingDictionaryWithPage:65280 andUsage:98];
        if (v35)
        {
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }
      }

      hidSystemClient = selfCopy->_hidSystemClient;
      IOHIDEventSystemClientSetMatchingMultiple();
      MEMORY[0x1E69E5920](v36);
      v4 = selfCopy->_hidSystemClient;
      v29 = MEMORY[0x1E69E9820];
      v30 = -1073741824;
      v31 = 0;
      v32 = __33__BLControl_startHIDSystemClient__block_invoke;
      v33 = &unk_1E867C470;
      v34 = selfCopy;
      IOHIDEventSystemClientRegisterEventBlock();
      v5 = selfCopy->_hidSystemClient;
      v23 = MEMORY[0x1E69E9820];
      v24 = -1073741824;
      v25 = 0;
      v26 = __33__BLControl_startHIDSystemClient__block_invoke_2;
      v27 = &unk_1E867C428;
      v28 = selfCopy;
      IOHIDEventSystemClientRegisterDeviceMatchingBlock();
      v6 = selfCopy->_hidSystemClient;
      queue = selfCopy->_queue;
      IOHIDEventSystemClientScheduleWithDispatchQueue();
      v22 = IOHIDEventSystemClientCopyServices(selfCopy->_hidSystemClient);
      v16 = MEMORY[0x1E69E9820];
      v17 = -1073741824;
      v18 = 0;
      v19 = __33__BLControl_startHIDSystemClient__block_invoke_3;
      v20 = &unk_1E867B668;
      v21 = selfCopy;
      [(__CFArray *)v22 enumerateObjectsUsingBlock:?];
      MEMORY[0x1E69E5920](v22);
      v37 = 1;
    }
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    oslog = logHandle;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v10 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_1DE8E5000, log, v10, "failed to initialise IOHIDSystemClient", v13, 2u);
    }
  }

  return v37 & 1;
}

- (void)cancelHIDSystemClient
{
  if (self->_hidSystemClient)
  {
    MEMORY[0x1E12C3B10](self->_hidSystemClient, self->_queue);
    hidSystemClient = self->_hidSystemClient;
    IOHIDEventSystemClientUnregisterEventBlock();
    CFRelease(self->_hidSystemClient);
    self->_hidSystemClient = 0;
  }
}

- (id)copyBLControlPropertyWithkey:(id)withkey
{
  selfCopy = self;
  v33 = a2;
  withkeyCopy = withkey;
  v25 = 0;
  v26 = &v25;
  v27 = 1375731712;
  v28 = 48;
  v29 = __Block_byref_object_copy__15;
  v30 = __Block_byref_object_dispose__15;
  v31 = 0;
  if ([withkey isEqual:@"BLControlAlsSupported"])
  {
    displayContainers = selfCopy->_displayContainers;
    v18 = MEMORY[0x1E69E9820];
    v19 = -1073741824;
    v20 = 0;
    v21 = __42__BLControl_copyBLControlPropertyWithkey___block_invoke;
    v22 = &unk_1E867BEB8;
    v24 = &v25;
    v23 = withkeyCopy;
    [(NSMutableArray *)displayContainers enumerateObjectsUsingBlock:?];
  }

  else if ([withkeyCopy isEqual:@"DisplayStateControlSupported"])
  {
    v17 = 0;
    [(CBPrimitiveConfigurationProvider *)selfCopy->_cbConfig loadUint:kCBSupportsSyncDisplayStateControl toDestination:&v17];
    v16 = objc_alloc(MEMORY[0x1E696AD98]);
    IsWatch = 1;
    if (!v17)
    {
      IsWatch = CBU_IsWatch();
    }

    v4 = [v16 initWithBool:IsWatch];
    v26[5] = v4;
  }

  else if ([withkeyCopy isEqual:@"DisplayBrightnessIgnored"])
  {
    if (selfCopy->_ignoreBrightnessKey)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
    }

    v26[5] = v5;
  }

  else if ([withkeyCopy isEqual:@"EventTimestamps"])
  {
    [(NSMutableArray *)selfCopy->_displayContainers enumerateObjectsUsingBlock:?];
  }

  else if ([withkeyCopy isEqual:@"CBDisplayList"])
  {
    copyDisplayList = [(BLControl *)selfCopy copyDisplayList];
    v26[5] = copyDisplayList;
  }

  else if ([withkeyCopy isEqual:@"CBDisplayInfo"])
  {
    copyDisplayInfo = [(BLControl *)selfCopy copyDisplayInfo];
    v26[5] = copyDisplayInfo;
  }

  else if ([withkeyCopy isEqual:@"StatusInfo"])
  {
    copyStatusInfo = [(BLControl *)selfCopy copyStatusInfo];
    v26[5] = copyStatusInfo;
  }

  else if ([withkeyCopy isEqual:@"DisplayMode"])
  {
    v14 = objc_alloc(MEMORY[0x1E696AD98]);
    v9 = [v14 initWithInt:selfCopy->_displayMode];
    v26[5] = v9;
  }

  else if ([withkeyCopy isEqual:@"KeyboardBacklightIDs"])
  {
    v13 = objc_alloc(MEMORY[0x1E695DEC8]);
    v10 = [v13 initWithArray:{-[NSMutableDictionary allKeys](selfCopy->_keyboardContainers, "allKeys")}];
    v26[5] = v10;
  }

  v12 = v26[5];
  _Block_object_dispose(&v25, 8);
  return v12;
}

uint64_t __42__BLControl_copyBLControlPropertyWithkey___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CFD60];
  if (result)
  {
    result = [a2 copyPropertyForKey:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

double __42__BLControl_copyBLControlPropertyWithkey___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = [a2 copyPropertyForKey:@"CBDisplayIsBuiltIn"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v11 BOOLValue])
  {
    v10 = [a2 copyPropertyForKey:@"EventTimestampFirstALSSample"];
    v9 = [a2 copyPropertyForKey:@"EventTimestampDisplayOn"];
    v8 = [a2 copyPropertyForKey:@"EventTimestampDisplayOff"];
    v7 = [a2 copyPropertyForKey:@"EventTimestampFirstALSSampleTimeout"];
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    if (v10)
    {
      [v6 setObject:v10 forKey:@"EventTimestampFirstALSSample"];
    }

    if (v9)
    {
      [v6 setObject:v9 forKey:@"EventTimestampDisplayOn"];
    }

    if (v8)
    {
      [v6 setObject:v8 forKey:@"EventTimestampDisplayOff"];
    }

    if (v7)
    {
      [v6 setObject:v7 forKey:@"EventTimestampFirstALSSampleTimeout"];
    }

    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v7);
    *(*(*(a1 + 32) + 8) + 40) = v6;
    *a4 = 1;
  }

  *&result = MEMORY[0x1E69E5920](v11).n128_u64[0];
  return result;
}

- (id)copyPropertyInternalWithKey:(id)key forClient:(id)client
{
  selfCopy = self;
  v18 = a2;
  keyCopy = key;
  clientCopy = client;
  v9 = 0;
  v10 = &v9;
  v11 = 1375731712;
  v12 = 48;
  v13 = __Block_byref_object_copy__15;
  v14 = __Block_byref_object_dispose__15;
  v15 = [(BLControl *)self copyBLControlPropertyWithkey:key];
  if (!v10[5])
  {
    if (selfCopy->_builtInDisplayCount > 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (([keyCopy isEqual:@"DisplayBrightness"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqual:", @"DisplayNitsKey") & 1) != 0 || (objc_msgSend(keyCopy, "isEqual:", @"BrightnessCLTMMode") & 1) != 0 || (objc_msgSend(keyCopy, "isEqual:", @"BrightnessCLTM") & 1) != 0))
    {
      if (clientCopy)
      {
        v7 = clientCopy;
      }

      else
      {
        v7 = @"Server";
      }

      v8 = [(NSMutableDictionary *)selfCopy->_clientDisplayMap objectForKey:v7];
      if (!v8)
      {
        v8 = @"DisplayTypeIcon";
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFString *)v8 isEqual:@"DisplayTypeIcon"];
        [(NSMutableArray *)selfCopy->_displayContainers enumerateObjectsUsingBlock:?];
      }
    }

    else
    {
      [(NSMutableArray *)selfCopy->_displayContainers enumerateObjectsUsingBlock:?];
    }
  }

  if (!v10[5])
  {
    [(NSMutableDictionary *)selfCopy->_keyboardContainers enumerateKeysAndObjectsUsingBlock:?];
  }

  if (!v10[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [-[NightModeControl getPropertyForKey:](selfCopy->_nightModeControl getPropertyForKey:{keyCopy), "copy"}];
      v10[5] = v4;
    }
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

double __51__BLControl_copyPropertyInternalWithKey_forClient___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 copyPropertyForKey:@"DisplayTypeA"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 intValue] == *(a1 + 48))
  {
    *(*(*(a1 + 40) + 8) + 40) = [a2 copyPropertyForKey:*(a1 + 32)];
    *a4 = 1;
  }

  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t __51__BLControl_copyPropertyInternalWithKey_forClient___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToProtocol:&unk_1F59CFD60];
  if (result)
  {
    result = [a2 copyPropertyForKey:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 40) = result;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __51__BLControl_copyPropertyInternalWithKey_forClient___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToProtocol:&unk_1F59CFD60];
  if (result)
  {
    result = [a2 copyPropertyForKey:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 40) = result;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __51__BLControl_copyPropertyInternalWithKey_forClient___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v4 = [a3 copyPropertyForKey:*(a1 + 32)];
  result = a1;
  *(*(*(a1 + 40) + 8) + 40) = v4;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }

  return result;
}

- (id)copyPropertyWithKey:(id)key client:(id)client
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v27 = a2;
  keyCopy = key;
  clientCopy = client;
  v18 = 0;
  v19 = &v18;
  v20 = 1375731712;
  v21 = 48;
  v22 = __Block_byref_object_copy__15;
  v23 = __Block_byref_object_dispose__15;
  v24 = 0;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __40__BLControl_copyPropertyWithKey_client___block_invoke;
  v13 = &unk_1E867C2B0;
  v17 = &v18;
  v14 = selfCopy;
  keyCopy2 = key;
  clientCopy2 = client;
  dispatch_sync(queue, &block);
  if (selfCopy->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_64(v29, keyCopy, v19[5]);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "key=%@ result=%@", v29, 0x16u);
  }

  v6 = v19[5];
  _Block_object_dispose(&v18, 8);
  *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __40__BLControl_copyPropertyWithKey_client___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) copyPropertyInternalWithKey:*(a1 + 40) forClient:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

- (void)handlePresetChange
{
  v2 = +[CBPresetsParser sharedInstance];
  [(CBPresetsParser *)v2 refreshPresetState];
  -[NightModeControl setProperty:forKey:](self->_nightModeControl, "setProperty:forKey:", [MEMORY[0x1E696AD98] numberWithBool:{-[CBPresetsParser nightShiftDisabled](v2, "nightShiftDisabled")}], @"CBDisplayPresetDisableNightShift");
  [(BLControl *)self setPropertyInternalWithKey:@"kCoreBrightnessPresetStateChanged" property:0 client:?];
}

- (void)handleCloningChange:(id)change
{
  if (isDisplayAvailable(change) && ([change isExternal] & 1) != 0 && (objc_msgSend(change, "isCloning") & 1) != 0)
  {
    [(BLControl *)self setPropertyInternalWithKey:@"CBExternalDisplayIsMirroring" property:MEMORY[0x1E695E118] client:0];
  }

  else
  {
    [(BLControl *)self setPropertyInternalWithKey:@"CBExternalDisplayIsMirroring" property:MEMORY[0x1E695E110] client:0];
  }
}

- (void)handleExternalDisplayChange
{
  selfCopy = self;
  v14 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v13 = 0;
  displayContainers = self->_displayContainers;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __40__BLControl_handleExternalDisplayChange__block_invoke;
  v7 = &unk_1E867C510;
  v8 = &v9;
  [(NSMutableArray *)displayContainers enumerateObjectsUsingBlock:?];
  -[BLControl setPropertyInternalWithKey:property:client:](selfCopy, "setPropertyInternalWithKey:property:client:", @"CBHasExternalDisplay", [MEMORY[0x1E696AD98] numberWithBool:v10[3] & 1], 0);
  _Block_object_dispose(&v9, 8);
}

double __40__BLControl_handleExternalDisplayChange__block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a2 copyPropertyForKey:@"CBDisplayIsExternal"];
    *(*(*(a1 + 32) + 8) + 24) = (*(*(*(a1 + 32) + 8) + 24) & 1 | [v4 BOOLValue]) != 0;
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  return result;
}

- (BOOL)setBLControlPropertyWithKey:(id)key property:(id)property
{
  v72 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v67 = a2;
  keyCopy = key;
  propertyCopy = property;
  v64 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([keyCopy isEqual:@"DisplayBrightness"])
    {
      if (selfCopy->_ignoreBrightnessKey && !selfCopy->_overrideIgnoreBrightness)
      {
        if (selfCopy->_logHandle)
        {
          logHandle = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        v60 = logHandle;
        v59 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v71, "DisplayBrightness");
          _os_log_impl(&dword_1DE8E5000, v60, v59, "Ignoring key %s\n", v71, 0xCu);
        }

        v64 = 1;
      }
    }

    else if ([keyCopy isEqual:@"DisplayBrightnessAuto"])
    {
      if (propertyCopy)
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(propertyCopy))
        {
          valuePtr = 0;
          if (CFNumberGetValue(propertyCopy, kCFNumberIntType, &valuePtr))
          {
            selfCopy->_overrideIgnoreBrightness = valuePtr == 0;
          }
        }

        else
        {
          v18 = CFBooleanGetTypeID();
          if (v18 == CFGetTypeID(propertyCopy))
          {
            v57 = CFEqual(propertyCopy, *MEMORY[0x1E695E4D0]);
            selfCopy->_overrideIgnoreBrightness = v57 == 0;
          }
        }
      }
    }

    else if ([keyCopy isEqual:@"BrightnessCurveLevel"])
    {
      if (selfCopy->_useMultiCurves)
      {
        selfCopy->_ignoreBrightnessKey = 1;
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          v17 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v16 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v16 = init_default_corebrightness_log();
          }

          v17 = v16;
        }

        v56 = v17;
        v55 = 1;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v14 = v56;
          v15 = v55;
          __os_log_helper_16_0_0(v54);
          _os_log_impl(&dword_1DE8E5000, v14, v15, "ignoring this key as this device does not support this feature.", v54, 2u);
        }

        v64 = 1;
      }
    }

    else if ([keyCopy isEqual:@"ALSEventsIgnore"])
    {
      if (propertyCopy)
      {
        v13 = CFGetTypeID(propertyCopy);
        if (v13 == CFBooleanGetTypeID())
        {
          selfCopy->_ignoreALSEvents = CFBooleanGetValue(propertyCopy) != 0;
          v64 = 1;
        }
      }
    }

    else if ([keyCopy isEqual:@"ALSEventsOverride"])
    {
      if (propertyCopy)
      {
        v12 = CFGetTypeID(propertyCopy);
        if (v12 == CFNumberGetTypeID())
        {
          v53 = 0;
          if (CFNumberGetValue(propertyCopy, kCFNumberFloatType, &v53))
          {
            v11 = *MEMORY[0x1E695E480];
            mach_absolute_time();
            AmbientLightSensorEvent = IOHIDEventCreateAmbientLightSensorEvent();
            if (AmbientLightSensorEvent)
            {
              hidServiceClients = selfCopy->_hidServiceClients;
              v45 = MEMORY[0x1E69E9820];
              v46 = -1073741824;
              v47 = 0;
              v48 = __50__BLControl_setBLControlPropertyWithKey_property___block_invoke;
              v49 = &unk_1E867BC30;
              v51 = AmbientLightSensorEvent;
              v50 = selfCopy;
              [(NSMutableArray *)hidServiceClients enumerateObjectsUsingBlock:?];
              CFRelease(AmbientLightSensorEvent);
            }
          }
        }
      }
    }

    else if ([keyCopy isEqual:@"DisplayMode"])
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x20000000;
      v43 = 32;
      v44 = 0;
      [(BLControl *)selfCopy releaseDisplayModeCompletionTimer];
      displayContainers = selfCopy->_displayContainers;
      v33 = MEMORY[0x1E69E9820];
      v34 = -1073741824;
      v35 = 0;
      v36 = __50__BLControl_setBLControlPropertyWithKey_property___block_invoke_2;
      v37 = &unk_1E867BEB8;
      v39 = &v40;
      v38 = propertyCopy;
      [(NSMutableArray *)displayContainers enumerateObjectsUsingBlock:?];
      if ((v41[3] & 1) == 0)
      {
        v10 = [(BLControl *)selfCopy handleDisplayModeUpdatePropertyHandler:propertyCopy];
        *(v41 + 24) = (v41[3] & 1 | v10) != 0;
      }

      v9 = [CBDisplayStateUtilities displayModeFromProperty:propertyCopy];
      selfCopy->_displayMode = v9;
      if ((CBU_ImplicitUserInteractedWithUI() & 1) != 0 && selfCopy->_displayMode == 3)
      {
        if (selfCopy->_logHandle)
        {
          v8 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v7 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v7 = init_default_corebrightness_log();
          }

          v8 = v7;
        }

        oslog = v8;
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v70, [CBDisplayStateUtilities stringForDisplayMode:selfCopy->_displayMode]);
          _os_log_impl(&dword_1DE8E5000, oslog, v31, "%@ -> Implicit user interacted with UI message", v70, 0xCu);
        }

        [(BLControl *)selfCopy setPropertyInternalWithKey:@"UserInteractedWithUI" property:MEMORY[0x1E695E118] client:0];
      }

      v64 = v41[3] & 1;
      _Block_object_dispose(&v40, 8);
    }

    else if ([keyCopy isEqual:@"FlipBookState"])
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x20000000;
      v29 = 32;
      v30 = 0;
      [(NSMutableArray *)selfCopy->_displayContainers enumerateObjectsUsingBlock:?];
      v64 = v27[3] & 1;
      _Block_object_dispose(&v26, 8);
    }

    v69 = v64 & 1;
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v25 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v24 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v24 = init_default_corebrightness_log();
      }

      v25 = v24;
    }

    v63 = v25;
    v62 = 1;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      log = v63;
      type = v62;
      __os_log_helper_16_0_0(v61);
      _os_log_impl(&dword_1DE8E5000, log, type, "key is not string", v61, 2u);
    }

    v69 = v64 & 1;
  }

  *MEMORY[0x1E69E9840];
  return v69 & 1;
}

uint64_t __50__BLControl_setBLControlPropertyWithKey_property___block_invoke(uint64_t a1, __IOHIDServiceClient *a2, uint64_t a3, _BYTE *a4)
{
  result = IOHIDServiceClientConformsTo(a2, 0xFF00u, 4u);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = [*(a1 + 32) handleHIDEvent:*(a1 + 40) from:a2];
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __50__BLControl_setBLControlPropertyWithKey_property___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59D3468];
  if (result)
  {
    result = [a2 handleDisplayModeUpdate:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

uint64_t __50__BLControl_setBLControlPropertyWithKey_property___block_invoke_282(void *a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CFD60];
  if (result)
  {
    result = [a2 setProperty:a1[4] forKey:a1[5]];
    *(*(a1[6] + 8) + 24) = (*(*(a1[6] + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

- (BOOL)setPropertyInternalWithKey:(id)key property:(id)property client:(id)client
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v22 = a2;
  keyCopy = key;
  propertyCopy = property;
  clientCopy = client;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_64(v24, keyCopy, propertyCopy);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "key=%@ property=%@", v24, 0x16u);
  }

  v10 = [(BLControl *)selfCopy setBLControlPropertyWithKey:keyCopy property:propertyCopy];
  *(v15 + 24) = v10;
  if ((v15[3] & 1) == 0 && selfCopy->_builtInDisplayCount > 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([keyCopy isEqual:@"DisplaySelect"])
      {
        if (clientCopy)
        {
          v9 = clientCopy;
        }

        else
        {
          v9 = @"Server";
        }

        [(NSMutableDictionary *)selfCopy->_clientDisplayMap setObject:propertyCopy forKey:v9];
        *(v15 + 24) = 1;
      }

      else if ([keyCopy isEqual:@"DisplayBrightness"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqual:", @"DisplayNitsKey") & 1) != 0 || (objc_msgSend(keyCopy, "isEqual:", @"MaxBrightness"))
      {
        if (clientCopy)
        {
          v8 = clientCopy;
        }

        else
        {
          v8 = @"Server";
        }

        v13 = [(NSMutableDictionary *)selfCopy->_clientDisplayMap objectForKey:v8];
        if (!v13)
        {
          v13 = @"DisplayTypeIcon";
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(__CFString *)v13 isEqual:@"DisplayTypeIcon"];
          [(NSMutableArray *)selfCopy->_displayContainers enumerateObjectsUsingBlock:?];
        }
      }

      else
      {
        [(NSMutableArray *)selfCopy->_displayContainers enumerateObjectsUsingBlock:?];
      }
    }
  }

  if ((v15[3] & 1) == 0)
  {
    [(NSMutableArray *)selfCopy->_displayContainers enumerateObjectsUsingBlock:?];
    [(NSMutableDictionary *)selfCopy->_keyboardContainers enumerateKeysAndObjectsUsingBlock:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(NightModeControl *)selfCopy->_nightModeControl setProperty:propertyCopy forKey:keyCopy];
      *(v15 + 24) = (v15[3] & 1 | v7) != 0;
    }
  }

  v6 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

double __56__BLControl_setPropertyInternalWithKey_property_client___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 copyPropertyForKey:@"DisplayTypeA"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 intValue] == *(a1 + 56))
  {
    *(*(*(a1 + 48) + 8) + 24) = [a2 setProperty:*(a1 + 32) forKey:*(a1 + 40)];
    *a4 = 1;
  }

  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t __56__BLControl_setPropertyInternalWithKey_property_client___block_invoke_2(void *a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CFD60];
  if (result)
  {
    result = [a2 setProperty:a1[4] forKey:a1[5]];
    *(*(a1[6] + 8) + 24) = (*(*(a1[6] + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

uint64_t __56__BLControl_setPropertyInternalWithKey_property_client___block_invoke_3(void *a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CFD60];
  if (result)
  {
    result = [a2 setProperty:a1[4] forKey:a1[5]];
    *(*(a1[6] + 8) + 24) = (*(*(a1[6] + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

uint64_t __56__BLControl_setPropertyInternalWithKey_property_client___block_invoke_4(void *a1, uint64_t a2, void *a3)
{
  result = [a3 setProperty:a1[4] forKey:a1[5]];
  *(*(a1[6] + 8) + 24) = (*(*(a1[6] + 8) + 24) & 1 | result) != 0;
  return result;
}

- (BOOL)setPropertyWithKey:(id)key property:(id)property client:(id)client
{
  selfCopy = self;
  v26 = a2;
  keyCopy = key;
  propertyCopy = property;
  clientCopy = client;
  v18 = 0;
  v19 = &v18;
  v20 = 0x20000000;
  v21 = 32;
  v22 = 0;
  if ([key isEqual:@"CBAOTStateUpdate"])
  {
    v28 = 1;
  }

  else
  {
    queue = selfCopy->_queue;
    block = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = __48__BLControl_setPropertyWithKey_property_client___block_invoke;
    v11 = &unk_1E867C2D8;
    v16 = &v18;
    v12 = selfCopy;
    v13 = keyCopy;
    v14 = propertyCopy;
    v15 = clientCopy;
    dispatch_sync(queue, &block);
    v28 = v19[3] & 1;
  }

  v17 = 1;
  _Block_object_dispose(&v18, 8);
  return v28 & 1;
}

uint64_t __48__BLControl_setPropertyWithKey_property_client___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setPropertyInternalWithKey:*(a1 + 40) property:*(a1 + 48) client:*(a1 + 56)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

- (BOOL)handleDisplayModeUpdatePropertyHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  context = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [handler objectForKey:@"Value"];
    v16 = [handler objectForKey:@"TransitionLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v17 integerValue];
        [v16 floatValue];
        v14 = v3;
        v13 = 0.02;
        if (self->_logHandle)
        {
          logHandle = self->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_3_8_66_4_0_8_0(v22, [CBDisplayStateUtilities stringForDisplayMode:integerValue], integerValue, COERCE__INT64(v14));
          _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "[Display Mode] Update handler - new mode: %{public}@ (%d), transition length: %f", v22, 0x1Cu);
        }

        if (!integerValue)
        {
          *&v5 = v14;
          [(BLControl *)self setDisplayFactor:0.0 transitionLength:v5];
          v13 = 0.03;
          v18 = 1;
          goto LABEL_26;
        }

        if (integerValue != 1)
        {
          if (integerValue == 2)
          {
            *&v5 = v14;
            [(BLControl *)self setDisplayFactor:0.0 transitionLength:v5];
            v18 = 1;
            goto LABEL_26;
          }

          if (integerValue != 3)
          {
            if (integerValue == 4)
            {
              *&v5 = v14;
              LODWORD(v4) = 1028443341;
              [(BLControl *)self setDisplayFactor:v4 transitionLength:v5];
              v18 = 1;
            }

            else
            {
              v12 = self->_logHandle;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
              {
                __os_log_helper_16_0_1_4_0(v21, integerValue);
                _os_log_fault_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_FAULT, "[Display Mode] Failed to handle unexpected display mode = %d", v21, 8u);
              }

              v18 = 0;
            }

            goto LABEL_26;
          }
        }

        *&v5 = v14;
        LODWORD(v4) = 1.0;
        [(BLControl *)self setDisplayFactor:v4 transitionLength:v5];
        v18 = 1;
LABEL_26:
        *&v7 = v14 + v13;
        [(BLControl *)self scheduleDisplayModeCompletionTimerIn:integerValue forDisplayMode:v7];
      }
    }
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)setDisplayFactor:(float)factor transitionLength:(float)length
{
  context = objc_autoreleasePoolPush();
  *&v4 = length;
  -[BLControl setPropertyInternalWithKey:property:client:](self, "setPropertyInternalWithKey:property:client:", @"DisplayBrightnessFadePeriod", [MEMORY[0x1E696AD98] numberWithFloat:v4]);
  *&v5 = factor;
  v8 = -[BLControl setPropertyInternalWithKey:property:client:](self, "setPropertyInternalWithKey:property:client:", @"DisplayBrightnessFactorWithFade", [MEMORY[0x1E696AD98] numberWithFloat:v5], 0);
  objc_autoreleasePoolPop(context);
  return v8;
}

- (void)waitForALSArrival
{
  selfCopy = self;
  v53 = a2;
  v52 = dispatch_queue_create("com.apple.CoreBrightness.initQueue", 0);
  if (v52)
  {
    v2 = *MEMORY[0x1E695E480];
    v51 = IOHIDEventSystemClientCreate();
    if (v51)
    {
      v50 = [(BLControl *)selfCopy newDevicePariMatchingDictionaryWithPage:65280 andUsage:4];
      if (v50)
      {
        IOHIDEventSystemClientSetMatching();
        CFRelease(v50);
      }

      v43 = 0;
      v44 = &v43;
      v45 = 1375731712;
      v46 = 48;
      v47 = __Block_byref_object_copy__15;
      v48 = __Block_byref_object_dispose__15;
      v49 = 0;
      block = MEMORY[0x1E69E9820];
      v35 = -1073741824;
      v36 = 0;
      v37 = __30__BLControl_waitForALSArrival__block_invoke;
      v38 = &unk_1E867C5B0;
      v42 = v51;
      v39 = selfCopy;
      v41 = &v43;
      v40 = v52;
      dispatch_sync(v52, &block);
      if (v44[5])
      {
        dsema = v44[5];
        v3 = dispatch_time(0, 5000000000);
        if (dispatch_semaphore_wait(dsema, v3))
        {
          if (selfCopy->_logHandle)
          {
            logHandle = selfCopy->_logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              inited = init_default_corebrightness_log();
            }

            logHandle = inited;
          }

          v33 = logHandle;
          v32 = 16;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            log = v33;
            type = v32;
            __os_log_helper_16_0_0(v31);
            _os_log_error_impl(&dword_1DE8E5000, log, type, "(CBU_ShouldWaitForALS) error: timeout waiting for ALS arrival", v31, 2u);
          }
        }

        else
        {
          if (selfCopy->_logHandle)
          {
            v11 = selfCopy->_logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v10 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v10 = init_default_corebrightness_log();
            }

            v11 = v10;
          }

          v30 = v11;
          v29 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v8 = v30;
            v9 = v29;
            __os_log_helper_16_0_0(v28);
            _os_log_impl(&dword_1DE8E5000, v8, v9, "(CBU_ShouldWaitForALS) service arrived in time", v28, 2u);
          }
        }

        v20 = MEMORY[0x1E69E9820];
        v21 = -1073741824;
        v22 = 0;
        v23 = __30__BLControl_waitForALSArrival__block_invoke_306;
        v24 = &unk_1E867BCD0;
        v26 = &v43;
        v27 = v51;
        v25 = v52;
        dispatch_sync(v52, &v20);
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          v7 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v6 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v6 = init_default_corebrightness_log();
          }

          v7 = v6;
        }

        oslog = v7;
        v18 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v4 = oslog;
          v5 = v18;
          __os_log_helper_16_0_0(v17);
          _os_log_impl(&dword_1DE8E5000, v4, v5, "(CBU_ShouldWaitForALS) found service right away, skip waiting", v17, 2u);
        }
      }

      CFRelease(v51);
      _Block_object_dispose(&v43, 8);
    }

    CFRelease(v52);
  }
}

void __30__BLControl_waitForALSArrival__block_invoke(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v13 = IOHIDEventSystemClientCopyServices(*(a1 + 56));
  if (!v13 || !CFArrayGetCount(v13))
  {
    if (*(*(a1 + 32) + 112))
    {
      v7 = *(*(a1 + 32) + 112);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v7 = inited;
    }

    v12 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_1DE8E5000, log, type, "(CBU_ShouldWaitForALS) service not found, wait for ALS arrival", v10, 2u);
    }

    *(*(*(a1 + 48) + 8) + 40) = dispatch_semaphore_create(0);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v1 = *(a1 + 56);
      v2 = *(a1 + 40);
      IOHIDEventSystemClientScheduleWithDispatchQueue();
      v3 = *(a1 + 56);
      v9 = *(a1 + 48);
      IOHIDEventSystemClientRegisterDeviceMatchingBlock();
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

intptr_t __30__BLControl_waitForALSArrival__block_invoke_305(intptr_t result)
{
  if (*(*(*(result + 32) + 8) + 40))
  {
    return dispatch_semaphore_signal(*(*(*(result + 32) + 8) + 40));
  }

  return result;
}

uint64_t __30__BLControl_waitForALSArrival__block_invoke_306(void *a1)
{
  dispatch_release(*(*(a1[5] + 8) + 40));
  *(*(a1[5] + 8) + 40) = 0;
  v1 = a1[6];
  IOHIDEventSystemClientUnregisterDeviceMatchingBlock();
  return MEMORY[0x1E12C3B10](a1[6], a1[4]);
}

- (void)registerNotificationBlock:(id)block
{
  selfCopy = self;
  v12 = a2;
  blockCopy = block;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __39__BLControl_registerNotificationBlock___block_invoke;
  v8 = &unk_1E867C300;
  v9 = selfCopy;
  blockCopy2 = block;
  dispatch_sync(queue, &block);
}

void __39__BLControl_registerNotificationBlock___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    _Block_release(*(*(a1 + 32) + 40));
    *(*(a1 + 32) + 40) = 0;
  }

  if (*(a1 + 40))
  {
    *(*(a1 + 32) + 40) = _Block_copy(*(a1 + 40));
  }
}

- (void)sendSyncNotificationFor:(id)for withValue:(id)value
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v9, for, value);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ value=%@", v9, 0x16u);
  }

  [(BLControl *)self handleNotificationInternalForKey:for withValue:value];
  if (self->_callback)
  {
    (*(self->_callback + 2))();
  }

  *MEMORY[0x1E69E9840];
}

- (void)sendNotificationFor:(id)for withValue:(id)value
{
  selfCopy = self;
  v15 = a2;
  forCopy = for;
  valueCopy = value;
  MEMORY[0x1E69E5928](for);
  MEMORY[0x1E69E5928](valueCopy);
  queue = selfCopy->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __43__BLControl_sendNotificationFor_withValue___block_invoke;
  v9 = &unk_1E867B750;
  v10 = selfCopy;
  v11 = forCopy;
  v12 = valueCopy;
  dispatch_async(queue, &block);
}

double __43__BLControl_sendNotificationFor_withValue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendSyncNotificationFor:*(a1 + 40) withValue:*(a1 + 48)];
  MEMORY[0x1E69E5920](*(a1 + 40));
  *&result = MEMORY[0x1E69E5920](*(a1 + 48)).n128_u64[0];
  return result;
}

- (id)copyStatusInfo
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v4)
  {
    [(NSMutableArray *)self->_displayContainers enumerateObjectsUsingBlock:?];
    [v5 setObject:v4 forKey:@"CBDisplays"];
  }

  MEMORY[0x1E69E5920](v4);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    [(NSMutableDictionary *)self->_keyboardContainers enumerateKeysAndObjectsUsingBlock:?];
    [v5 setObject:v3 forKey:@"CBKeyboards"];
  }

  MEMORY[0x1E69E5920](v3);
  return v5;
}

double __27__BLControl_copyStatusInfo__block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 copyPropertyForKey:@"StatusInfo"];
  v4 = [a2 copyPropertyForKey:@"CBDisplayID"];
  if (v5 && v4)
  {
    [*(a1 + 32) setObject:v5 forKey:v4];
  }

  MEMORY[0x1E69E5920](v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double __27__BLControl_copyStatusInfo__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copyPropertyForKey:@"StatusInfo"];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:a2];
    *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  }

  return result;
}

- (id)copyDisplayList
{
  selfCopy = self;
  v12 = a2;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  displayContainers = selfCopy->_displayContainers;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __28__BLControl_copyDisplayList__block_invoke;
  v8 = &unk_1E867C5D8;
  v9 = v10;
  [(NSMutableArray *)displayContainers enumerateObjectsUsingBlock:?];
  [v11 setObject:v10 forKey:@"CBDisplayDeviceIDs"];
  MEMORY[0x1E69E5920](v10);
  return v11;
}

double __28__BLControl_copyDisplayList__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 copyPropertyForKey:@"CBDisplayID"];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

- (id)copyDisplayInfo
{
  selfCopy = self;
  v11 = a2;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  displayContainers = selfCopy->_displayContainers;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __28__BLControl_copyDisplayInfo__block_invoke;
  v8 = &unk_1E867C5D8;
  v9 = v10;
  [(NSMutableArray *)displayContainers enumerateObjectsUsingBlock:?];
  return v10;
}

double __28__BLControl_copyDisplayInfo__block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 copyPropertyForKey:@"CBDisplayID"];
  if (v5)
  {
    v4 = [a2 copyPropertyForKey:@"CBContainerInfo"];
    if (v4)
    {
      [*(a1 + 32) setObject:v4 forKey:v5];
      MEMORY[0x1E69E5920](v4);
    }
  }

  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

- (BOOL)useSyncBrightnessTransactionForDisplay:(id)display
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![display displayType])
  {
    v6 = (CBU_IsSyncBrightnessTransactionsSupported() & 1) != 0 || ([display brightnessAvailable] & 1) != 0;
  }

  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_4_0_4_0(v9, [display displayId], v6);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Display ID: %d, UseSyncBrightnessTransactionForDisplay: %d", v9, 0xEu);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (void)addDisplayContainer:(id)container
{
  context = objc_autoreleasePoolPush();
  [(NSMutableArray *)self->_displayContainers addObject:container];
  if (self->_nightModeControl)
  {
    [(NightModeControl *)self->_nightModeControl addSupportObject:container];
  }

  else
  {
    self->_nightModeControl = [[NightModeControl alloc] initWithSupportObject:container queue:self->_queue callback:?];
  }

  -[CBPresetsParser setDisplayList:](+[CBPresetsParser sharedInstance](CBPresetsParser, "sharedInstance"), "setDisplayList:", [-[BLControl copyDisplayList](self "copyDisplayList")]);
  objc_autoreleasePoolPop(context);
}

- (void)removeDisplayContainer:(id)container
{
  context = objc_autoreleasePoolPush();
  [(NSMutableArray *)self->_displayContainers removeObject:container];
  if (self->_nightModeControl && ([container conformsToProtocol:&unk_1F59D3198] & 1) != 0)
  {
    [(NightModeControl *)self->_nightModeControl removeSupportObject:container];
  }

  -[CBPresetsParser setDisplayList:](+[CBPresetsParser sharedInstance](CBPresetsParser, "sharedInstance"), "setDisplayList:", [-[BLControl copyDisplayList](self "copyDisplayList")]);
  objc_autoreleasePoolPop(context);
}

- (BOOL)initKeyboardBacklightHIDManager
{
  selfCopy = self;
  v19 = a2;
  self->_keyboardBacklightHIDManager = [objc_alloc(MEMORY[0x1E69A2958]) initWithOptions:8];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  context = objc_autoreleasePoolPush();
  [v18 addObject:&unk_1F59C9830];
  [v18 addObject:&unk_1F59C9880];
  objc_autoreleasePoolPop(context);
  [selfCopy->_keyboardBacklightHIDManager setDeviceMatching:v18];
  *&v2 = MEMORY[0x1E69E5920](v18).n128_u64[0];
  v12[0] = 0;
  v12[1] = v12;
  v13 = 1375731712;
  v14 = 48;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = selfCopy;
  keyboardBacklightHIDManager = selfCopy->_keyboardBacklightHIDManager;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __44__BLControl_initKeyboardBacklightHIDManager__block_invoke;
  v10 = &unk_1E867C600;
  v11 = v12;
  [keyboardBacklightHIDManager setDeviceNotificationHandler:v2];
  [selfCopy->_keyboardBacklightHIDManager setDispatchQueue:selfCopy->_queue];
  [selfCopy->_keyboardBacklightHIDManager activate];
  _Block_object_dispose(v12, 8);
  return 1;
}

uint64_t __44__BLControl_initKeyboardBacklightHIDManager__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return [*(*(*(a1 + 32) + 8) + 40) keyboardBacklightHIDDeviceArrived:a2];
  }

  else
  {
    return [*(*(*(a1 + 32) + 8) + 40) keyboardBacklightHIDDeviceRemoved:a2];
  }
}

- (void)keyboardBacklightHIDDeviceArrived:(id)arrived
{
  v63 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v58 = a2;
  arrivedCopy = arrived;
  v56 = [arrived propertyForKey:@"KeyboardUniqueID"];
  v55 = 0;
  if (v56)
  {
    v55 = v56;
  }

  else
  {
    v55 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{+[KeyboardBacklight getHashIDForDevice:](KeyboardBacklight, "getHashIDForDevice:", arrivedCopy)}];
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v54 = logHandle;
    v53 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v62, v55);
      _os_log_debug_impl(&dword_1DE8E5000, v54, v53, "Keyboard ID Hash = %@", v62, 0xCu);
    }
  }

  if (selfCopy->_logHandle)
  {
    v18 = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v17 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v17 = init_default_corebrightness_log();
    }

    v18 = v17;
  }

  v52 = v18;
  v51 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_66_8_66(v61, v55, arrivedCopy);
    _os_log_impl(&dword_1DE8E5000, v52, v51, "Keyboard backlight HID device (ID=%{public}@) arrived = %{public}@", v61, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = [(NSMutableDictionary *)selfCopy->_keyboardContainers objectForKey:v55];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[BLControl keyboardBacklightHIDDeviceRemoved:](selfCopy, "keyboardBacklightHIDDeviceRemoved:", [v50 device]);
    }

    v49 = [[CBKeyboardBacklightContainer alloc] initWithDevice:arrivedCopy];
    [(CBContainer *)v49 scheduleWithDispatchQueue:selfCopy->_queue];
    v43 = MEMORY[0x1E69E9820];
    v44 = -1073741824;
    v45 = 0;
    v46 = __47__BLControl_keyboardBacklightHIDDeviceArrived___block_invoke;
    v47 = &unk_1E867B558;
    v48 = selfCopy;
    [(CBContainer *)v49 registerNotificationBlock:?];
    displayContainers = selfCopy->_displayContainers;
    v37 = MEMORY[0x1E69E9820];
    v38 = -1073741824;
    v39 = 0;
    v40 = __47__BLControl_keyboardBacklightHIDDeviceArrived___block_invoke_2;
    v41 = &unk_1E867B668;
    v42 = v49;
    [(NSMutableArray *)displayContainers enumerateObjectsUsingBlock:?];
    if ([(CBKeyboardBacklightContainer *)v49 start])
    {
      [(NSMutableDictionary *)selfCopy->_keyboardContainers setObject:v49 forKey:v55];
      hidServiceClients = selfCopy->_hidServiceClients;
      v31 = MEMORY[0x1E69E9820];
      v32 = -1073741824;
      v33 = 0;
      v34 = __47__BLControl_keyboardBacklightHIDDeviceArrived___block_invoke_3;
      v35 = &unk_1E867B668;
      v36 = v49;
      [(NSMutableArray *)hidServiceClients enumerateObjectsUsingBlock:?];
    }

    MEMORY[0x1E69E5920](v49);
    if (selfCopy->_logHandle)
    {
      v16 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v15 = init_default_corebrightness_log();
      }

      v16 = v15;
    }

    oslog = v16;
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v60, selfCopy->_keyboardContainers);
      _os_log_impl(&dword_1DE8E5000, oslog, v29, "Keyboard added to dictionary = %{public}@", v60, 0xCu);
    }

    mainPort = *MEMORY[0x1E696CD60];
    v5 = IOServiceMatching("IOResources");
    entry = IOServiceGetMatchingService(mainPort, v5);
    if (entry)
    {
      if (IORegistryEntrySetCFProperty(entry, @"KeyboardBacklight", *MEMORY[0x1E695E4D0]))
      {
        if (selfCopy->_logHandle)
        {
          v9 = selfCopy->_logHandle;
        }

        else
        {
          v8 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v9 = v8;
        }

        v23 = v9;
        v22 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v6 = v23;
          v7 = v22;
          __os_log_helper_16_0_0(v21);
          _os_log_error_impl(&dword_1DE8E5000, v6, v7, "failed to set KeyboardBacklight property to IOResources", v21, 2u);
        }
      }

      IOObjectRelease(entry);
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v13 = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v12 = init_default_corebrightness_log();
        }

        v13 = v12;
      }

      v27 = v13;
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v10 = v27;
        v11 = v26;
        __os_log_helper_16_0_0(v25);
        _os_log_error_impl(&dword_1DE8E5000, v10, v11, "failed to get IOResources entry", v25, 2u);
      }
    }

    [(BLControl *)selfCopy sendNotificationWithKeyboardIDs];
  }

  if (!v56)
  {
    MEMORY[0x1E69E5920](v55);
  }

  *MEMORY[0x1E69E9840];
}

double __47__BLControl_keyboardBacklightHIDDeviceArrived___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 conformsToProtocol:&unk_1F59CFD60])
  {
    v7 = [a2 copyPropertyForKey:@"CBDisplayIsBuiltIn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 BOOLValue])
    {
      v6 = [a2 copyPropertyForKey:@"DisplayBrightnessFactor"];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 32) setProperty:v6 forKey:@"CBUserActivityUpdate"];
        }
      }

      MEMORY[0x1E69E5920](v6);
      *a4 = 1;
    }

    *&result = MEMORY[0x1E69E5920](v7).n128_u64[0];
  }

  return result;
}

- (void)keyboardBacklightHIDDeviceRemoved:(id)removed
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = [removed propertyForKey:@"KeyboardUniqueID"];
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{+[KeyboardBacklight getHashIDForDevice:](KeyboardBacklight, "getHashIDForDevice:", removed)}];
    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v21, v14);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Keyboard ID Hash to remove = %@", v21, 0xCu);
    }
  }

  v13 = 1;
  if (self->_logHandle)
  {
    v9 = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v8 = init_default_corebrightness_log();
    }

    v9 = v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v20, v14);
    _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "KeyboardID = %{public}@", v20, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(NSMutableDictionary *)self->_keyboardContainers objectForKey:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v12 device] == removed)
      {
        [v12 stop];
        [v12 unregisterNotificationBlock];
        [v12 unscheduleWithDispatchQueue:self->_queue];
      }

      else
      {
        v13 = 0;
        if (self->_logHandle)
        {
          v7 = self->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v6 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v6 = init_default_corebrightness_log();
          }

          v7 = v6;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_66(v19, removed);
          _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "Keyboard HID device was not present already = %{public}@", v19, 0xCu);
        }
      }
    }

    if (v13)
    {
      [(NSMutableDictionary *)self->_keyboardContainers removeObjectForKey:v14];
      if (self->_logHandle)
      {
        v5 = self->_logHandle;
      }

      else
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v5 = v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v5;
        __os_log_helper_16_2_1_8_66(v18, removed);
        _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Keyboard HID device has been removed = %{public}@", v18, 0xCu);
      }
    }

    [(BLControl *)self sendNotificationWithKeyboardIDs];
  }

  if (!v15)
  {
    MEMORY[0x1E69E5920](v14);
  }

  *MEMORY[0x1E69E9840];
}

- (void)sendNotificationWithKeyboardIDs
{
  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:@"KeyboardBacklightIDs" keyboardID:1];
  [(BLControl *)self sendNotificationFor:v2 withValue:[(NSMutableDictionary *)self->_keyboardContainers allKeys]];
  MEMORY[0x1E69E5920](v2);
}

- (void)scheduleDisplayModeCompletionTimerIn:(float)in forDisplayMode:(int64_t)mode
{
  v39 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v36 = a2;
  inCopy = in;
  modeCopy = mode;
  if (self->_displayModeCompletionTimer)
  {
    [(dispatch_queue_t *)selfCopy releaseDisplayModeCompletionTimer];
  }

  if (selfCopy[14])
  {
    v15 = selfCopy[14];
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v15 = inited;
  }

  v33 = v15;
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_0_8_66_4_0(v38, COERCE__INT64(inCopy), [CBDisplayStateUtilities stringForDisplayMode:modeCopy], modeCopy);
    _os_log_impl(&dword_1DE8E5000, v33, v32, "[Display Mode] Schedule display mode completion timer in %f sec for %{public}@ (%d) mode", v38, 0x1Cu);
  }

  v31 = (inCopy * 1000000000.0);
  selfCopy[22] = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy[3]);
  if (selfCopy[22])
  {
    block = MEMORY[0x1E69E9820];
    v23 = -1073741824;
    v24 = 0;
    v25 = __65__BLControl_scheduleDisplayModeCompletionTimerIn_forDisplayMode___block_invoke;
    v26 = &unk_1E867BF80;
    v27 = selfCopy;
    v28 = modeCopy;
    v29 = inCopy;
    v30 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &block);
    if (v30)
    {
      dispatch_source_set_event_handler(selfCopy[22], v30);
      _Block_release(v30);
      source = selfCopy[22];
      v4 = dispatch_time(0, v31);
      dispatch_source_set_timer(source, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_activate(selfCopy[22]);
    }

    else
    {
      if (selfCopy[14])
      {
        v12 = selfCopy[14];
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v11 = init_default_corebrightness_log();
        }

        v12 = v11;
      }

      oslog = v12;
      v20 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v9 = oslog;
        v10 = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_error_impl(&dword_1DE8E5000, v9, v10, "[Display Mode] Failed to create dispatch block for display mode completion.", v19, 2u);
      }
    }
  }

  else
  {
    if (selfCopy[14])
    {
      v8 = selfCopy[14];
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    v18 = v8;
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v5 = v18;
      v6 = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_error_impl(&dword_1DE8E5000, v5, v6, "[Display Mode] Failed to create display mode completion timer.", v16, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

void __65__BLControl_scheduleDisplayModeCompletionTimerIn_forDisplayMode___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a1;
  if (*(*(a1 + 32) + 112))
  {
    v12 = *(*(a1 + 32) + 112);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v12 = inited;
  }

  v24 = v12;
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_66_4_0_8_0(v27, [CBDisplayStateUtilities stringForDisplayMode:*(a1 + 40)], *(a1 + 40), COERCE__INT64(*(a1 + 48)));
    _os_log_impl(&dword_1DE8E5000, v24, v23, "[Display Mode] didCompleteTransitionToDisplayMode %{public}@ (%d in %f seconds)", v27, 0x1Cu);
  }

  if (*(*(a1 + 32) + 112))
  {
    v10 = *(*(a1 + 32) + 112);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v9 = init_default_corebrightness_log();
    }

    v10 = v9;
  }

  v22 = v10;
  v21 = 1;
  v20 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v10))
  {
    v6 = v22;
    v7 = v21;
    spid = v20;
    __os_log_helper_16_0_0(v19);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v6, v7, spid, "DisplayModeSendNotification", &unk_1DEAD656F, v19, 2u);
  }

  v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:*(a1 + 40)];
  [*(a1 + 32) sendSyncNotificationFor:@"DisplayModeChangeComplete" withValue:v18];
  if (*(*(a1 + 32) + 112))
  {
    v5 = *(*(a1 + 32) + 112);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v4 = init_default_corebrightness_log();
    }

    v5 = v4;
  }

  v17 = v5;
  v16 = 2;
  v15 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v5))
  {
    v1 = v17;
    v2 = v16;
    v3 = v15;
    __os_log_helper_16_0_0(v14);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v1, v2, v3, "DisplayModeSendNotification", &unk_1DEAD656F, v14, 2u);
  }

  MEMORY[0x1E69E5920](v18);
  *MEMORY[0x1E69E9840];
}

- (void)systemSleepMonitorWillWakeFromSleep:(id)sleep
{
  selfCopy = self;
  v11 = a2;
  sleepCopy = sleep;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v9 = logHandle;
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "System WILL wake from sleep", v7, 2u);
  }

  [(BLControl *)selfCopy setPropertyInternalWithKey:@"CBSystemWillWakeFromSleep" property:sleepCopy client:0];
}

- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep
{
  selfCopy = self;
  v11 = a2;
  sleepCopy = sleep;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v9 = logHandle;
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "System DID wake from sleep", v7, 2u);
  }

  [(BLControl *)selfCopy setPropertyInternalWithKey:@"CBSystemDidWakeFromSleep" property:sleepCopy client:0];
}

- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion
{
  selfCopy = self;
  v13 = a2;
  monitorCopy = monitor;
  completionCopy = completion;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v10 = logHandle;
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_1DE8E5000, log, type, "System is preparing for sleep", v8, 2u);
  }

  [(BLControl *)selfCopy setPropertyInternalWithKey:@"CBSystemPrepareForSleep" property:monitorCopy client:0];
  completionCopy[2]();
}

@end