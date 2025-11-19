@interface BLControl
- (BLControl)init;
- (BOOL)findBacklight;
- (BOOL)findDisplays;
- (BOOL)handleDisplayModeUpdatePropertyHandler:(id)a3;
- (BOOL)initKeyboardBacklightHIDManager;
- (BOOL)setBLControlPropertyWithKey:(id)a3 property:(id)a4;
- (BOOL)setDisplayFactor:(float)a3 transitionLength:(float)a4;
- (BOOL)setPropertyInternalWithKey:(id)a3 property:(id)a4 client:(id)a5;
- (BOOL)setPropertyWithKey:(id)a3 property:(id)a4 client:(id)a5;
- (BOOL)start;
- (BOOL)startHIDSystemClient;
- (BOOL)useSyncBrightnessTransactionForDisplay:(id)a3;
- (id)copyBLControlPropertyWithkey:(id)a3;
- (id)copyDisplayInfo;
- (id)copyDisplayList;
- (id)copyPropertyInternalWithKey:(id)a3 forClient:(id)a4;
- (id)copyPropertyWithKey:(id)a3 client:(id)a4;
- (id)copyStatusInfo;
- (id)newDevicePariMatchingDictionaryWithPage:(unsigned int)a3 andUsage:(unsigned int)a4;
- (id)newGlobalConfigProvider;
- (void)addDisplayContainer:(id)a3;
- (void)cancelHIDSystemClient;
- (void)dealloc;
- (void)handleCADisplay:(id)a3;
- (void)handleCADisplayArrival:(id)a3;
- (void)handleCADisplayRemoval:(id)a3;
- (void)handleCAWindowServerDisplay:(id)a3;
- (void)handleCloningChange:(id)a3;
- (void)handleExternalDisplayChange;
- (void)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4;
- (void)handlePresetChange;
- (void)hidServiceArrival:(__IOHIDServiceClient *)a3;
- (void)keyboardBacklightHIDDeviceArrived:(id)a3;
- (void)keyboardBacklightHIDDeviceRemoved:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerNotificationBlock:(id)a3;
- (void)releaseDisplayModeCompletionTimer;
- (void)removeDisplayContainer:(id)a3;
- (void)removeHIDService:(__IOHIDServiceClient *)a3;
- (void)scheduleDisplayModeCompletionTimerIn:(float)a3 forDisplayMode:(int64_t)a4;
- (void)sendNotificationFor:(id)a3 withValue:(id)a4;
- (void)sendNotificationWithKeyboardIDs;
- (void)sendSyncNotificationFor:(id)a3 withValue:(id)a4;
- (void)stop;
- (void)stopDisplayLookup;
- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4;
- (void)systemSleepMonitorDidWakeFromSleep:(id)a3;
- (void)systemSleepMonitorWillWakeFromSleep:(id)a3;
- (void)waitForALSArrival;
@end

@implementation BLControl

- (void)releaseDisplayModeCompletionTimer
{
  v10 = self;
  v9 = a2;
  if (self->_displayModeCompletionTimer)
  {
    if (v10->_logHandle)
    {
      logHandle = v10->_logHandle;
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

    dispatch_source_cancel(v10->_displayModeCompletionTimer);
    dispatch_release(v10->_displayModeCompletionTimer);
    v10->_displayModeCompletionTimer = 0;
  }
}

- (BLControl)init
{
  v41 = self;
  v40 = a2;
  v39.receiver = self;
  v39.super_class = BLControl;
  v41 = [(BLControl *)&v39 init];
  if (v41)
  {
    v2 = os_log_create("com.apple.CoreBrightness.BLControl", "default");
    *(v41 + 14) = v2;
    if (!*(v41 + 14))
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
    *(v41 + 11) = v3;
    if (!*(v41 + 11))
    {
      if (*(v41 + 14))
      {
        v23 = *(v41 + 14);
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
      MEMORY[0x1E69E5920](v41);
      v41 = 0;
      return 0;
    }

    inactive = dispatch_workloop_create_inactive("BacklightControl - Primary workloop");
    *(v41 + 2) = inactive;
    v5 = *(v41 + 2);
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(*(v41 + 2));
    v6 = dispatch_queue_create_with_target_V2("BacklightControl - Primary queue", 0, *(v41 + 2));
    *(v41 + 3) = v6;
    if (!*(v41 + 3))
    {
      if (*(v41 + 14))
      {
        v19 = *(v41 + 14);
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

    *(v41 + 57) = 0;
    *(v41 + 56) = 0;
    v7 = [v41 newGlobalConfigProvider];
    *(v41 + 15) = v7;
    *(v41 + 15) = -1;
    *(v41 + 18) = -1;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v41 + 12) = v8;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v41 + 13) = v9;
    *(v41 + 20) = 0;
    *(v41 + 21) = 5;
    *(v41 + 22) = 0;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v41 + 18) = v10;
    if (!*(v41 + 18))
    {
      if (*(v41 + 14))
      {
        v15 = *(v41 + 14);
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

  return v41;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  [(BLControl *)self releaseDisplayModeCompletionTimer];
  if (v5->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
    v5->_logHandle = 0;
  }

  if (v5->_cbConfig)
  {
    MEMORY[0x1E69E5920](v5->_cbConfig);
    v5->_cbConfig = 0;
  }

  if (v5->_queue)
  {
    dispatch_release(v5->_queue);
  }

  if (v5->_workloop)
  {
    dispatch_release(v5->_workloop);
  }

  MEMORY[0x1E69E5920](v5->_displayContainers);
  MEMORY[0x1E69E5920](v5->_hidServiceClients);
  MEMORY[0x1E69E5920](v5->_clientDisplayMap);
  *&v2 = MEMORY[0x1E69E5920](v5->_keyboardContainers).n128_u64[0];
  v3.receiver = v5;
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
  v18 = self;
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
  v10 = v18;
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
  v10 = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __17__BLControl_stop__block_invoke;
  v7 = &unk_1E867B480;
  v8 = v10;
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

- (void)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  if (a4 && v16)
  {
    v11 = 0;
    if (IOHIDEventGetType() == 12)
    {
      v10 = [(BLControl *)v18 copyPropertyInternalWithKey:@"ALSIntegrationMode" forClient:0];
      if ([+[CBAODState isAODActive] sharedInstance]
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v10 intValue] != 2 && objc_msgSend(v10, "intValue") != 1)
        {
          [CBALSEvent replaceLuxWithFilteredLux:v16];
        }
      }

      *&v4 = MEMORY[0x1E69E5920](v10).n128_u64[0];
      if (!v18->_ignoreALSEvents)
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
      [(NSMutableArray *)v18->_displayContainers enumerateObjectsUsingBlock:v4];
      if ([(NSMutableDictionary *)v18->_keyboardContainers count])
      {
        if (IOHIDEventGetType() == 12)
        {
          v9 = [(BLControl *)v18 copyPropertyInternalWithKey:@"TrustedFrontLux" forClient:0];
          if (v9)
          {
            [(NSMutableDictionary *)v18->_keyboardContainers enumerateKeysAndObjectsUsingBlock:?];
          }

          MEMORY[0x1E69E5920](v9);
        }
      }
    }
  }

  else
  {
    if (v18->_logHandle)
    {
      logHandle = v18->_logHandle;
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
  v34 = self;
  v33 = a2;
  v32 = 0;
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
        [(CBContainer *)v27 scheduleWithDispatchQueue:v34->_queue];
        v21 = MEMORY[0x1E69E9820];
        v22 = -1073741824;
        v23 = 0;
        v24 = __26__BLControl_findBacklight__block_invoke;
        v25 = &unk_1E867B558;
        v26 = v34;
        [(CBDisplayContaineriOS *)v27 registerNotificationBlock:?];
        v32 = [(CBDisplayContaineriOS *)v27 start];
        if ((v32 & 1) == 0)
        {
          MEMORY[0x1E69E5920](v27);
          break;
        }

        [(BLControl *)v34 addDisplayContainer:v27];
        ++v34->_builtInDisplayCount;
        if (([(CBDisplayContaineriOS *)v27 conformsToProtocol:&unk_1F59CC038]& 1) != 0)
        {
          hidServiceClients = v34->_hidServiceClients;
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
        if (v34->_logHandle)
        {
          logHandle = v34->_logHandle;
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

      v32 = 1;
    }

    IOObjectRelease(existing);
  }

  *MEMORY[0x1E69E9840];
  return v32 & 1;
}

- (BOOL)findDisplays
{
  v43 = *MEMORY[0x1E69E9840];
  v38 = self;
  v37 = a2;
  v36 = 0;
  v35 = [MEMORY[0x1E6979550] serverIfRunning];
  if (v35)
  {
    v31 = [v35 displays];
    if (v38->_logHandle)
    {
      logHandle = v38->_logHandle;
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
      __os_log_helper_16_2_1_8_66(v42, v31);
      _os_log_impl(&dword_1DE8E5000, v30, v29, "displays: %{public}@", v42, 0xCu);
    }

    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    memset(__b, 0, sizeof(__b));
    obj = v31;
    v15 = [v31 countByEnumeratingWithState:__b objects:v41 count:16];
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
        v25 = [v27 displayId];
        if ([(BLControl *)v38 useSyncBrightnessTransactionForDisplay:v27])
        {
          [(BLControl *)v38 handleCAWindowServerDisplay:v27];
          v36 = 1;
          [v28 setObject:@"WSDisplay" forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v25)}];
        }

        else
        {
          [v28 setObject:@"CADisplay" forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v25)}];
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

    v2 = [MEMORY[0x1E6979328] mainDisplay];
    [v2 addObserver:v38 forKeyPath:@"currentPreset" options:0 context:0];
    [(BLControl *)v38 handlePresetChange];
    memset(v23, 0, sizeof(v23));
    v8 = [MEMORY[0x1E6979328] displays];
    v9 = [v8 countByEnumeratingWithState:v23 objects:v40 count:16];
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
          objc_enumerationMutation(v8);
        }

        v24 = 0;
        v24 = *(v23[1] + 8 * v6);
        v22 = [v24 displayId];
        if ([objc_msgSend(v28 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v22)), "isEqualToString:", @"CADisplay"}])
        {
          [(BLControl *)v38 handleCADisplay:v24];
          [v24 addObserver:v38 forKeyPath:@"currentMode" options:? context:?];
          [v24 addObserver:v38 forKeyPath:@"cloning" options:0 context:0];
          v36 = 1;
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [v8 countByEnumeratingWithState:v23 objects:v40 count:16];
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
    if (v38->_logHandle)
    {
      v21 = v38->_logHandle;
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
  v16 = self;
  v15 = a2;
  v14 = [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")];
  if (v16->_logHandle)
  {
    logHandle = v16->_logHandle;
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
      [v11 removeObserver:v16 forKeyPath:@"currentMode" context:0];
      [v11 removeObserver:v16 forKeyPath:@"cloning" context:0];
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

- (void)handleCADisplay:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 && isDisplayAvailable(a3))
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
      __os_log_helper_16_2_1_8_66(v10, [a3 deviceName]);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "%{public}@ is available", v10, 0xCu);
    }

    [(BLControl *)self handleCADisplayArrival:a3];
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
      __os_log_helper_16_2_1_8_66(v9, [a3 deviceName]);
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_INFO, "%{public}@ is not available", v9, 0xCu);
    }

    [(BLControl *)self handleCADisplayRemoval:a3];
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleCAWindowServerDisplay:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = self;
  v32 = a2;
  v31 = a3;
  v30 = a3;
  v29 = [[CBBrightnessProxyCA alloc] initWithCABrightnessControl:a3];
  if (v29)
  {
    v28 = [[CBDisplayContaineriOS alloc] initWithCBBrtControl:v29];
    if (v28)
    {
      [(CBContainer *)v28 scheduleWithDispatchQueue:v33->_queue];
      v22 = MEMORY[0x1E69E9820];
      v23 = -1073741824;
      v24 = 0;
      v25 = __41__BLControl_handleCAWindowServerDisplay___block_invoke;
      v26 = &unk_1E867B558;
      v27 = v33;
      [(CBDisplayContaineriOS *)v28 registerNotificationBlock:?];
      v21 = [(CBDisplayContaineriOS *)v28 start];
      v16 = [(CBBrightnessProxyCA *)v29 getDisplayType];
      if (v16 != [(CBBrightnessProxyCA *)v29 CBDispTypeIntegrated]|| v21)
      {
        v11 = [(CBBrightnessProxyCA *)v29 getDisplayType];
        if (v11 == [(CBBrightnessProxyCA *)v29 CBDispTypeIntegrated])
        {
          ++v33->_builtInDisplayCount;
        }

        v10 = [(CBBrightnessProxyCA *)v29 getDisplayType];
        if (v10 == [(CBBrightnessProxyCA *)v29 CBDispTypeIntegrated]&& v33->_displayMode == 5)
        {
          v17 = [(CBDisplayContaineriOS *)v28 copyPropertyForKey:@"DisplayOn"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = [v17 BOOLValue];
            v5 = 3;
            if ((v4 & 1) == 0)
            {
              v5 = 0;
            }

            v33->_displayMode = v5;
            if (v33->_logHandle)
            {
              logHandle = v33->_logHandle;
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
              __os_log_helper_16_2_1_8_66(v35, [CBDisplayStateUtilities stringForDisplayMode:v33->_displayMode]);
              _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "display mode initialised from invalid to %{public}@", v35, 0xCu);
            }
          }

          *&v3 = MEMORY[0x1E69E5920](v17).n128_u64[0];
        }

        [(BLControl *)v33 addDisplayContainer:v28, v3];
        if (([(CBDisplayContaineriOS *)v28 conformsToProtocol:&unk_1F59CC038]& 1) != 0)
        {
          [(NSMutableArray *)v33->_hidServiceClients enumerateObjectsUsingBlock:?];
        }

        MEMORY[0x1E69E5920](v28);
        MEMORY[0x1E69E5920](v29);
      }

      else
      {
        if (v33->_logHandle)
        {
          v15 = v33->_logHandle;
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
      if (v33->_logHandle)
      {
        v7 = v33->_logHandle;
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
        __os_log_helper_16_2_1_8_66(v34, v31);
        _os_log_error_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_ERROR, "error: failed to create display container for service %{public}@", v34, 0xCu);
      }

      MEMORY[0x1E69E5920](v29);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  queue = self->_queue;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __60__BLControl_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v11 = &unk_1E867BB20;
  v12 = a4;
  v13 = v21;
  v14 = a3;
  v15 = a5;
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

- (void)handleCADisplayArrival:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  [(BLControl *)self handleCADisplayRemoval:a3];
  v11 = [[CBDisplayContaineriOS alloc] initWithCADisplay:a3];
  if (v11)
  {
    [(CBContainer *)v11 scheduleWithDispatchQueue:self->_queue];
    [(CBDisplayContaineriOS *)v11 registerNotificationBlock:?];
    v10 = [(CBDisplayContaineriOS *)v11 start];
    if (([a3 isExternal] & 1) != 0 || v10)
    {
      if (([a3 isExternal] & 1) == 0)
      {
        ++self->_builtInDisplayCount;
      }

      if (([a3 isExternal] & 1) == 0 && self->_displayMode == 5)
      {
        v9 = [(CBDisplayContaineriOS *)v11 copyPropertyForKey:@"DisplayOn"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = [v9 BOOLValue];
          v4 = 3;
          if ((v3 & 1) == 0)
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
      [(BLControl *)self handleCloningChange:a3];
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
      __os_log_helper_16_2_1_8_66(v14, a3);
      _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "error: failed to create display container for service %{public}@", v14, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleCADisplayRemoval:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  if (a3)
  {
    v14 = [v15 displayId];
    v7 = 0;
    v8 = &v7;
    v9 = 1375731712;
    v10 = 48;
    v11 = __Block_byref_object_copy__15;
    v12 = __Block_byref_object_dispose__15;
    v13 = 0;
    [(NSMutableArray *)v17->_displayContainers enumerateObjectsUsingBlock:?];
    if (v8[5])
    {
      if (([v15 isExternal] & 1) == 0)
      {
        --v17->_builtInDisplayCount;
      }

      if (v17->_logHandle)
      {
        logHandle = v17->_logHandle;
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
      [v8[5] unscheduleWithDispatchQueue:v17->_queue];
      [(BLControl *)v17 removeDisplayContainer:v8[5]];
      [(BLControl *)v17 handleExternalDisplayChange];
      [(BLControl *)v17 handleCloningChange:v15];
    }

    else
    {
      if (v17->_logHandle)
      {
        v4 = v17->_logHandle;
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
        __os_log_helper_16_0_1_8_0(v18, v14);
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

- (id)newDevicePariMatchingDictionaryWithPage:(unsigned int)a3 andUsage:(unsigned int)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v11 = 0;
  v7 = 0x1E696A000uLL;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:a3];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v13];
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

- (void)hidServiceArrival:(__IOHIDServiceClient *)a3
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
    __os_log_helper_16_2_2_8_0_8_66(v7, a3, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "(%p) %{public}@", v7, 0x16u);
  }

  IOHIDServiceClientRegisterRemovalBlock();
  [(NSMutableArray *)self->_hidServiceClients addObject:a3];
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

- (void)removeHIDService:(__IOHIDServiceClient *)a3
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
    __os_log_helper_16_2_2_8_0_8_66(v7, a3, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "(%p) %{public}@", v7, 0x16u);
  }

  [(NSMutableArray *)self->_hidServiceClients removeObject:a3];
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
  v39 = self;
  v38 = a2;
  v37 = 0;
  v2 = *MEMORY[0x1E695E480];
  v39->_hidSystemClient = IOHIDEventSystemClientCreateWithType();
  if (v39->_hidSystemClient)
  {
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v36)
    {
      v35 = [(BLControl *)v39 newDevicePariMatchingDictionaryWithPage:65280 andUsage:4];
      if (v35)
      {
        [v36 addObject:v35];
        MEMORY[0x1E69E5920](v35);
      }

      v35 = [(BLControl *)v39 newDevicePariMatchingDictionaryWithPage:32 andUsage:65];
      if (v35)
      {
        [v36 addObject:v35];
        MEMORY[0x1E69E5920](v35);
      }

      if (!v39->_monitorALSOnly)
      {
        v35 = [(BLControl *)v39 newDevicePariMatchingDictionaryWithPage:65280 andUsage:8];
        if (v35)
        {
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }

        v35 = [(BLControl *)v39 newDevicePariMatchingDictionaryWithPage:13 andUsage:12];
        if (v35)
        {
          [v35 setObject:MEMORY[0x1E695E118] forKey:@"Built-In"];
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }

        v35 = [(BLControl *)v39 newDevicePariMatchingDictionaryWithPage:13 andUsage:4];
        if (v35)
        {
          [v35 setObject:MEMORY[0x1E695E118] forKey:@"Built-In"];
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }

        v35 = [(BLControl *)v39 newDevicePariMatchingDictionaryWithPage:11 andUsage:1];
        if (v35)
        {
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }

        v35 = [(BLControl *)v39 newDevicePariMatchingDictionaryWithPage:65280 andUsage:98];
        if (v35)
        {
          [v36 addObject:v35];
          MEMORY[0x1E69E5920](v35);
        }
      }

      hidSystemClient = v39->_hidSystemClient;
      IOHIDEventSystemClientSetMatchingMultiple();
      MEMORY[0x1E69E5920](v36);
      v4 = v39->_hidSystemClient;
      v29 = MEMORY[0x1E69E9820];
      v30 = -1073741824;
      v31 = 0;
      v32 = __33__BLControl_startHIDSystemClient__block_invoke;
      v33 = &unk_1E867C470;
      v34 = v39;
      IOHIDEventSystemClientRegisterEventBlock();
      v5 = v39->_hidSystemClient;
      v23 = MEMORY[0x1E69E9820];
      v24 = -1073741824;
      v25 = 0;
      v26 = __33__BLControl_startHIDSystemClient__block_invoke_2;
      v27 = &unk_1E867C428;
      v28 = v39;
      IOHIDEventSystemClientRegisterDeviceMatchingBlock();
      v6 = v39->_hidSystemClient;
      queue = v39->_queue;
      IOHIDEventSystemClientScheduleWithDispatchQueue();
      v22 = IOHIDEventSystemClientCopyServices(v39->_hidSystemClient);
      v16 = MEMORY[0x1E69E9820];
      v17 = -1073741824;
      v18 = 0;
      v19 = __33__BLControl_startHIDSystemClient__block_invoke_3;
      v20 = &unk_1E867B668;
      v21 = v39;
      [(__CFArray *)v22 enumerateObjectsUsingBlock:?];
      MEMORY[0x1E69E5920](v22);
      v37 = 1;
    }
  }

  else
  {
    if (v39->_logHandle)
    {
      logHandle = v39->_logHandle;
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

- (id)copyBLControlPropertyWithkey:(id)a3
{
  v34 = self;
  v33 = a2;
  v32 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 1375731712;
  v28 = 48;
  v29 = __Block_byref_object_copy__15;
  v30 = __Block_byref_object_dispose__15;
  v31 = 0;
  if ([a3 isEqual:@"BLControlAlsSupported"])
  {
    displayContainers = v34->_displayContainers;
    v18 = MEMORY[0x1E69E9820];
    v19 = -1073741824;
    v20 = 0;
    v21 = __42__BLControl_copyBLControlPropertyWithkey___block_invoke;
    v22 = &unk_1E867BEB8;
    v24 = &v25;
    v23 = v32;
    [(NSMutableArray *)displayContainers enumerateObjectsUsingBlock:?];
  }

  else if ([v32 isEqual:@"DisplayStateControlSupported"])
  {
    v17 = 0;
    [(CBPrimitiveConfigurationProvider *)v34->_cbConfig loadUint:kCBSupportsSyncDisplayStateControl toDestination:&v17];
    v16 = objc_alloc(MEMORY[0x1E696AD98]);
    IsWatch = 1;
    if (!v17)
    {
      IsWatch = CBU_IsWatch();
    }

    v4 = [v16 initWithBool:IsWatch];
    v26[5] = v4;
  }

  else if ([v32 isEqual:@"DisplayBrightnessIgnored"])
  {
    if (v34->_ignoreBrightnessKey)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
    }

    v26[5] = v5;
  }

  else if ([v32 isEqual:@"EventTimestamps"])
  {
    [(NSMutableArray *)v34->_displayContainers enumerateObjectsUsingBlock:?];
  }

  else if ([v32 isEqual:@"CBDisplayList"])
  {
    v6 = [(BLControl *)v34 copyDisplayList];
    v26[5] = v6;
  }

  else if ([v32 isEqual:@"CBDisplayInfo"])
  {
    v7 = [(BLControl *)v34 copyDisplayInfo];
    v26[5] = v7;
  }

  else if ([v32 isEqual:@"StatusInfo"])
  {
    v8 = [(BLControl *)v34 copyStatusInfo];
    v26[5] = v8;
  }

  else if ([v32 isEqual:@"DisplayMode"])
  {
    v14 = objc_alloc(MEMORY[0x1E696AD98]);
    v9 = [v14 initWithInt:v34->_displayMode];
    v26[5] = v9;
  }

  else if ([v32 isEqual:@"KeyboardBacklightIDs"])
  {
    v13 = objc_alloc(MEMORY[0x1E695DEC8]);
    v10 = [v13 initWithArray:{-[NSMutableDictionary allKeys](v34->_keyboardContainers, "allKeys")}];
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

- (id)copyPropertyInternalWithKey:(id)a3 forClient:(id)a4
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v9 = 0;
  v10 = &v9;
  v11 = 1375731712;
  v12 = 48;
  v13 = __Block_byref_object_copy__15;
  v14 = __Block_byref_object_dispose__15;
  v15 = [(BLControl *)self copyBLControlPropertyWithkey:a3];
  if (!v10[5])
  {
    if (v19->_builtInDisplayCount > 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (([v17 isEqual:@"DisplayBrightness"] & 1) != 0 || (objc_msgSend(v17, "isEqual:", @"DisplayNitsKey") & 1) != 0 || (objc_msgSend(v17, "isEqual:", @"BrightnessCLTMMode") & 1) != 0 || (objc_msgSend(v17, "isEqual:", @"BrightnessCLTM") & 1) != 0))
    {
      if (v16)
      {
        v7 = v16;
      }

      else
      {
        v7 = @"Server";
      }

      v8 = [(NSMutableDictionary *)v19->_clientDisplayMap objectForKey:v7];
      if (!v8)
      {
        v8 = @"DisplayTypeIcon";
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFString *)v8 isEqual:@"DisplayTypeIcon"];
        [(NSMutableArray *)v19->_displayContainers enumerateObjectsUsingBlock:?];
      }
    }

    else
    {
      [(NSMutableArray *)v19->_displayContainers enumerateObjectsUsingBlock:?];
    }
  }

  if (!v10[5])
  {
    [(NSMutableDictionary *)v19->_keyboardContainers enumerateKeysAndObjectsUsingBlock:?];
  }

  if (!v10[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [-[NightModeControl getPropertyForKey:](v19->_nightModeControl getPropertyForKey:{v17), "copy"}];
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

- (id)copyPropertyWithKey:(id)a3 client:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = self;
  v27 = a2;
  v26 = a3;
  v25 = a4;
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
  v14 = v28;
  v15 = a3;
  v16 = a4;
  dispatch_sync(queue, &block);
  if (v28->_logHandle)
  {
    logHandle = v28->_logHandle;
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
    __os_log_helper_16_2_2_8_64_8_64(v29, v26, v19[5]);
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

- (void)handleCloningChange:(id)a3
{
  if (isDisplayAvailable(a3) && ([a3 isExternal] & 1) != 0 && (objc_msgSend(a3, "isCloning") & 1) != 0)
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
  v15 = self;
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
  -[BLControl setPropertyInternalWithKey:property:client:](v15, "setPropertyInternalWithKey:property:client:", @"CBHasExternalDisplay", [MEMORY[0x1E696AD98] numberWithBool:v10[3] & 1], 0);
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

- (BOOL)setBLControlPropertyWithKey:(id)a3 property:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v68 = self;
  v67 = a2;
  v66 = a3;
  v65 = a4;
  v64 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v66 isEqual:@"DisplayBrightness"])
    {
      if (v68->_ignoreBrightnessKey && !v68->_overrideIgnoreBrightness)
      {
        if (v68->_logHandle)
        {
          logHandle = v68->_logHandle;
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

    else if ([v66 isEqual:@"DisplayBrightnessAuto"])
    {
      if (v65)
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v65))
        {
          valuePtr = 0;
          if (CFNumberGetValue(v65, kCFNumberIntType, &valuePtr))
          {
            v68->_overrideIgnoreBrightness = valuePtr == 0;
          }
        }

        else
        {
          v18 = CFBooleanGetTypeID();
          if (v18 == CFGetTypeID(v65))
          {
            v57 = CFEqual(v65, *MEMORY[0x1E695E4D0]);
            v68->_overrideIgnoreBrightness = v57 == 0;
          }
        }
      }
    }

    else if ([v66 isEqual:@"BrightnessCurveLevel"])
    {
      if (v68->_useMultiCurves)
      {
        v68->_ignoreBrightnessKey = 1;
      }

      else
      {
        if (v68->_logHandle)
        {
          v17 = v68->_logHandle;
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

    else if ([v66 isEqual:@"ALSEventsIgnore"])
    {
      if (v65)
      {
        v13 = CFGetTypeID(v65);
        if (v13 == CFBooleanGetTypeID())
        {
          v68->_ignoreALSEvents = CFBooleanGetValue(v65) != 0;
          v64 = 1;
        }
      }
    }

    else if ([v66 isEqual:@"ALSEventsOverride"])
    {
      if (v65)
      {
        v12 = CFGetTypeID(v65);
        if (v12 == CFNumberGetTypeID())
        {
          v53 = 0;
          if (CFNumberGetValue(v65, kCFNumberFloatType, &v53))
          {
            v11 = *MEMORY[0x1E695E480];
            mach_absolute_time();
            AmbientLightSensorEvent = IOHIDEventCreateAmbientLightSensorEvent();
            if (AmbientLightSensorEvent)
            {
              hidServiceClients = v68->_hidServiceClients;
              v45 = MEMORY[0x1E69E9820];
              v46 = -1073741824;
              v47 = 0;
              v48 = __50__BLControl_setBLControlPropertyWithKey_property___block_invoke;
              v49 = &unk_1E867BC30;
              v51 = AmbientLightSensorEvent;
              v50 = v68;
              [(NSMutableArray *)hidServiceClients enumerateObjectsUsingBlock:?];
              CFRelease(AmbientLightSensorEvent);
            }
          }
        }
      }
    }

    else if ([v66 isEqual:@"DisplayMode"])
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x20000000;
      v43 = 32;
      v44 = 0;
      [(BLControl *)v68 releaseDisplayModeCompletionTimer];
      displayContainers = v68->_displayContainers;
      v33 = MEMORY[0x1E69E9820];
      v34 = -1073741824;
      v35 = 0;
      v36 = __50__BLControl_setBLControlPropertyWithKey_property___block_invoke_2;
      v37 = &unk_1E867BEB8;
      v39 = &v40;
      v38 = v65;
      [(NSMutableArray *)displayContainers enumerateObjectsUsingBlock:?];
      if ((v41[3] & 1) == 0)
      {
        v10 = [(BLControl *)v68 handleDisplayModeUpdatePropertyHandler:v65];
        *(v41 + 24) = (v41[3] & 1 | v10) != 0;
      }

      v9 = [CBDisplayStateUtilities displayModeFromProperty:v65];
      v68->_displayMode = v9;
      if ((CBU_ImplicitUserInteractedWithUI() & 1) != 0 && v68->_displayMode == 3)
      {
        if (v68->_logHandle)
        {
          v8 = v68->_logHandle;
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
          __os_log_helper_16_2_1_8_64(v70, [CBDisplayStateUtilities stringForDisplayMode:v68->_displayMode]);
          _os_log_impl(&dword_1DE8E5000, oslog, v31, "%@ -> Implicit user interacted with UI message", v70, 0xCu);
        }

        [(BLControl *)v68 setPropertyInternalWithKey:@"UserInteractedWithUI" property:MEMORY[0x1E695E118] client:0];
      }

      v64 = v41[3] & 1;
      _Block_object_dispose(&v40, 8);
    }

    else if ([v66 isEqual:@"FlipBookState"])
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x20000000;
      v29 = 32;
      v30 = 0;
      [(NSMutableArray *)v68->_displayContainers enumerateObjectsUsingBlock:?];
      v64 = v27[3] & 1;
      _Block_object_dispose(&v26, 8);
    }

    v69 = v64 & 1;
  }

  else
  {
    if (v68->_logHandle)
    {
      v25 = v68->_logHandle;
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

- (BOOL)setPropertyInternalWithKey:(id)a3 property:(id)a4 client:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = self;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  if (self->_logHandle)
  {
    logHandle = v23->_logHandle;
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
    __os_log_helper_16_2_2_8_64_8_64(v24, v21, v20);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "key=%@ property=%@", v24, 0x16u);
  }

  v10 = [(BLControl *)v23 setBLControlPropertyWithKey:v21 property:v20];
  *(v15 + 24) = v10;
  if ((v15[3] & 1) == 0 && v23->_builtInDisplayCount > 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v21 isEqual:@"DisplaySelect"])
      {
        if (v19)
        {
          v9 = v19;
        }

        else
        {
          v9 = @"Server";
        }

        [(NSMutableDictionary *)v23->_clientDisplayMap setObject:v20 forKey:v9];
        *(v15 + 24) = 1;
      }

      else if ([v21 isEqual:@"DisplayBrightness"] & 1) != 0 || (objc_msgSend(v21, "isEqual:", @"DisplayNitsKey") & 1) != 0 || (objc_msgSend(v21, "isEqual:", @"MaxBrightness"))
      {
        if (v19)
        {
          v8 = v19;
        }

        else
        {
          v8 = @"Server";
        }

        v13 = [(NSMutableDictionary *)v23->_clientDisplayMap objectForKey:v8];
        if (!v13)
        {
          v13 = @"DisplayTypeIcon";
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(__CFString *)v13 isEqual:@"DisplayTypeIcon"];
          [(NSMutableArray *)v23->_displayContainers enumerateObjectsUsingBlock:?];
        }
      }

      else
      {
        [(NSMutableArray *)v23->_displayContainers enumerateObjectsUsingBlock:?];
      }
    }
  }

  if ((v15[3] & 1) == 0)
  {
    [(NSMutableArray *)v23->_displayContainers enumerateObjectsUsingBlock:?];
    [(NSMutableDictionary *)v23->_keyboardContainers enumerateKeysAndObjectsUsingBlock:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(NightModeControl *)v23->_nightModeControl setProperty:v20 forKey:v21];
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

- (BOOL)setPropertyWithKey:(id)a3 property:(id)a4 client:(id)a5
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x20000000;
  v21 = 32;
  v22 = 0;
  if ([a3 isEqual:@"CBAOTStateUpdate"])
  {
    v28 = 1;
  }

  else
  {
    queue = v27->_queue;
    block = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = __48__BLControl_setPropertyWithKey_property_client___block_invoke;
    v11 = &unk_1E867C2D8;
    v16 = &v18;
    v12 = v27;
    v13 = v25;
    v14 = v24;
    v15 = v23;
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

- (BOOL)handleDisplayModeUpdatePropertyHandler:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  context = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [a3 objectForKey:@"Value"];
    v16 = [a3 objectForKey:@"TransitionLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v17 integerValue];
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
          __os_log_helper_16_2_3_8_66_4_0_8_0(v22, [CBDisplayStateUtilities stringForDisplayMode:v15], v15, COERCE__INT64(v14));
          _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "[Display Mode] Update handler - new mode: %{public}@ (%d), transition length: %f", v22, 0x1Cu);
        }

        if (!v15)
        {
          *&v5 = v14;
          [(BLControl *)self setDisplayFactor:0.0 transitionLength:v5];
          v13 = 0.03;
          v18 = 1;
          goto LABEL_26;
        }

        if (v15 != 1)
        {
          if (v15 == 2)
          {
            *&v5 = v14;
            [(BLControl *)self setDisplayFactor:0.0 transitionLength:v5];
            v18 = 1;
            goto LABEL_26;
          }

          if (v15 != 3)
          {
            if (v15 == 4)
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
                __os_log_helper_16_0_1_4_0(v21, v15);
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
        [(BLControl *)self scheduleDisplayModeCompletionTimerIn:v15 forDisplayMode:v7];
      }
    }
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)setDisplayFactor:(float)a3 transitionLength:(float)a4
{
  context = objc_autoreleasePoolPush();
  *&v4 = a4;
  -[BLControl setPropertyInternalWithKey:property:client:](self, "setPropertyInternalWithKey:property:client:", @"DisplayBrightnessFadePeriod", [MEMORY[0x1E696AD98] numberWithFloat:v4]);
  *&v5 = a3;
  v8 = -[BLControl setPropertyInternalWithKey:property:client:](self, "setPropertyInternalWithKey:property:client:", @"DisplayBrightnessFactorWithFade", [MEMORY[0x1E696AD98] numberWithFloat:v5], 0);
  objc_autoreleasePoolPop(context);
  return v8;
}

- (void)waitForALSArrival
{
  v54 = self;
  v53 = a2;
  v52 = dispatch_queue_create("com.apple.CoreBrightness.initQueue", 0);
  if (v52)
  {
    v2 = *MEMORY[0x1E695E480];
    v51 = IOHIDEventSystemClientCreate();
    if (v51)
    {
      v50 = [(BLControl *)v54 newDevicePariMatchingDictionaryWithPage:65280 andUsage:4];
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
      v39 = v54;
      v41 = &v43;
      v40 = v52;
      dispatch_sync(v52, &block);
      if (v44[5])
      {
        dsema = v44[5];
        v3 = dispatch_time(0, 5000000000);
        if (dispatch_semaphore_wait(dsema, v3))
        {
          if (v54->_logHandle)
          {
            logHandle = v54->_logHandle;
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
          if (v54->_logHandle)
          {
            v11 = v54->_logHandle;
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
        if (v54->_logHandle)
        {
          v7 = v54->_logHandle;
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

- (void)registerNotificationBlock:(id)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __39__BLControl_registerNotificationBlock___block_invoke;
  v8 = &unk_1E867C300;
  v9 = v13;
  v10 = a3;
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

- (void)sendSyncNotificationFor:(id)a3 withValue:(id)a4
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
    __os_log_helper_16_2_2_8_64_8_64(v9, a3, a4);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ value=%@", v9, 0x16u);
  }

  [(BLControl *)self handleNotificationInternalForKey:a3 withValue:a4];
  if (self->_callback)
  {
    (*(self->_callback + 2))();
  }

  *MEMORY[0x1E69E9840];
}

- (void)sendNotificationFor:(id)a3 withValue:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](v13);
  queue = v16->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __43__BLControl_sendNotificationFor_withValue___block_invoke;
  v9 = &unk_1E867B750;
  v10 = v16;
  v11 = v14;
  v12 = v13;
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
  v13 = self;
  v12 = a2;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  displayContainers = v13->_displayContainers;
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
  v12 = self;
  v11 = a2;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  displayContainers = v12->_displayContainers;
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

- (BOOL)useSyncBrightnessTransactionForDisplay:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![a3 displayType])
  {
    v6 = (CBU_IsSyncBrightnessTransactionsSupported() & 1) != 0 || ([a3 brightnessAvailable] & 1) != 0;
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
    __os_log_helper_16_0_2_4_0_4_0(v9, [a3 displayId], v6);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Display ID: %d, UseSyncBrightnessTransactionForDisplay: %d", v9, 0xEu);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (void)addDisplayContainer:(id)a3
{
  context = objc_autoreleasePoolPush();
  [(NSMutableArray *)self->_displayContainers addObject:a3];
  if (self->_nightModeControl)
  {
    [(NightModeControl *)self->_nightModeControl addSupportObject:a3];
  }

  else
  {
    self->_nightModeControl = [[NightModeControl alloc] initWithSupportObject:a3 queue:self->_queue callback:?];
  }

  -[CBPresetsParser setDisplayList:](+[CBPresetsParser sharedInstance](CBPresetsParser, "sharedInstance"), "setDisplayList:", [-[BLControl copyDisplayList](self "copyDisplayList")]);
  objc_autoreleasePoolPop(context);
}

- (void)removeDisplayContainer:(id)a3
{
  context = objc_autoreleasePoolPush();
  [(NSMutableArray *)self->_displayContainers removeObject:a3];
  if (self->_nightModeControl && ([a3 conformsToProtocol:&unk_1F59D3198] & 1) != 0)
  {
    [(NightModeControl *)self->_nightModeControl removeSupportObject:a3];
  }

  -[CBPresetsParser setDisplayList:](+[CBPresetsParser sharedInstance](CBPresetsParser, "sharedInstance"), "setDisplayList:", [-[BLControl copyDisplayList](self "copyDisplayList")]);
  objc_autoreleasePoolPop(context);
}

- (BOOL)initKeyboardBacklightHIDManager
{
  v20 = self;
  v19 = a2;
  self->_keyboardBacklightHIDManager = [objc_alloc(MEMORY[0x1E69A2958]) initWithOptions:8];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  context = objc_autoreleasePoolPush();
  [v18 addObject:&unk_1F59C9830];
  [v18 addObject:&unk_1F59C9880];
  objc_autoreleasePoolPop(context);
  [v20->_keyboardBacklightHIDManager setDeviceMatching:v18];
  *&v2 = MEMORY[0x1E69E5920](v18).n128_u64[0];
  v12[0] = 0;
  v12[1] = v12;
  v13 = 1375731712;
  v14 = 48;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = v20;
  keyboardBacklightHIDManager = v20->_keyboardBacklightHIDManager;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __44__BLControl_initKeyboardBacklightHIDManager__block_invoke;
  v10 = &unk_1E867C600;
  v11 = v12;
  [keyboardBacklightHIDManager setDeviceNotificationHandler:v2];
  [v20->_keyboardBacklightHIDManager setDispatchQueue:v20->_queue];
  [v20->_keyboardBacklightHIDManager activate];
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

- (void)keyboardBacklightHIDDeviceArrived:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v59 = self;
  v58 = a2;
  v57 = a3;
  v56 = [a3 propertyForKey:@"KeyboardUniqueID"];
  v55 = 0;
  if (v56)
  {
    v55 = v56;
  }

  else
  {
    v55 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{+[KeyboardBacklight getHashIDForDevice:](KeyboardBacklight, "getHashIDForDevice:", v57)}];
    if (v59->_logHandle)
    {
      logHandle = v59->_logHandle;
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

  if (v59->_logHandle)
  {
    v18 = v59->_logHandle;
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
    __os_log_helper_16_2_2_8_66_8_66(v61, v55, v57);
    _os_log_impl(&dword_1DE8E5000, v52, v51, "Keyboard backlight HID device (ID=%{public}@) arrived = %{public}@", v61, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = [(NSMutableDictionary *)v59->_keyboardContainers objectForKey:v55];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[BLControl keyboardBacklightHIDDeviceRemoved:](v59, "keyboardBacklightHIDDeviceRemoved:", [v50 device]);
    }

    v49 = [[CBKeyboardBacklightContainer alloc] initWithDevice:v57];
    [(CBContainer *)v49 scheduleWithDispatchQueue:v59->_queue];
    v43 = MEMORY[0x1E69E9820];
    v44 = -1073741824;
    v45 = 0;
    v46 = __47__BLControl_keyboardBacklightHIDDeviceArrived___block_invoke;
    v47 = &unk_1E867B558;
    v48 = v59;
    [(CBContainer *)v49 registerNotificationBlock:?];
    displayContainers = v59->_displayContainers;
    v37 = MEMORY[0x1E69E9820];
    v38 = -1073741824;
    v39 = 0;
    v40 = __47__BLControl_keyboardBacklightHIDDeviceArrived___block_invoke_2;
    v41 = &unk_1E867B668;
    v42 = v49;
    [(NSMutableArray *)displayContainers enumerateObjectsUsingBlock:?];
    if ([(CBKeyboardBacklightContainer *)v49 start])
    {
      [(NSMutableDictionary *)v59->_keyboardContainers setObject:v49 forKey:v55];
      hidServiceClients = v59->_hidServiceClients;
      v31 = MEMORY[0x1E69E9820];
      v32 = -1073741824;
      v33 = 0;
      v34 = __47__BLControl_keyboardBacklightHIDDeviceArrived___block_invoke_3;
      v35 = &unk_1E867B668;
      v36 = v49;
      [(NSMutableArray *)hidServiceClients enumerateObjectsUsingBlock:?];
    }

    MEMORY[0x1E69E5920](v49);
    if (v59->_logHandle)
    {
      v16 = v59->_logHandle;
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
      __os_log_helper_16_2_1_8_66(v60, v59->_keyboardContainers);
      _os_log_impl(&dword_1DE8E5000, oslog, v29, "Keyboard added to dictionary = %{public}@", v60, 0xCu);
    }

    mainPort = *MEMORY[0x1E696CD60];
    v5 = IOServiceMatching("IOResources");
    entry = IOServiceGetMatchingService(mainPort, v5);
    if (entry)
    {
      if (IORegistryEntrySetCFProperty(entry, @"KeyboardBacklight", *MEMORY[0x1E695E4D0]))
      {
        if (v59->_logHandle)
        {
          v9 = v59->_logHandle;
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
      if (v59->_logHandle)
      {
        v13 = v59->_logHandle;
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

    [(BLControl *)v59 sendNotificationWithKeyboardIDs];
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

- (void)keyboardBacklightHIDDeviceRemoved:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = [a3 propertyForKey:@"KeyboardUniqueID"];
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{+[KeyboardBacklight getHashIDForDevice:](KeyboardBacklight, "getHashIDForDevice:", a3)}];
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
      if ([v12 device] == a3)
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
          __os_log_helper_16_2_1_8_66(v19, a3);
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
        __os_log_helper_16_2_1_8_66(v18, a3);
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

- (void)scheduleDisplayModeCompletionTimerIn:(float)a3 forDisplayMode:(int64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = self;
  v36 = a2;
  v35 = a3;
  v34 = a4;
  if (self->_displayModeCompletionTimer)
  {
    [(dispatch_queue_t *)v37 releaseDisplayModeCompletionTimer];
  }

  if (v37[14])
  {
    v15 = v37[14];
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
    __os_log_helper_16_2_3_8_0_8_66_4_0(v38, COERCE__INT64(v35), [CBDisplayStateUtilities stringForDisplayMode:v34], v34);
    _os_log_impl(&dword_1DE8E5000, v33, v32, "[Display Mode] Schedule display mode completion timer in %f sec for %{public}@ (%d) mode", v38, 0x1Cu);
  }

  v31 = (v35 * 1000000000.0);
  v37[22] = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v37[3]);
  if (v37[22])
  {
    block = MEMORY[0x1E69E9820];
    v23 = -1073741824;
    v24 = 0;
    v25 = __65__BLControl_scheduleDisplayModeCompletionTimerIn_forDisplayMode___block_invoke;
    v26 = &unk_1E867BF80;
    v27 = v37;
    v28 = v34;
    v29 = v35;
    v30 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &block);
    if (v30)
    {
      dispatch_source_set_event_handler(v37[22], v30);
      _Block_release(v30);
      source = v37[22];
      v4 = dispatch_time(0, v31);
      dispatch_source_set_timer(source, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_activate(v37[22]);
    }

    else
    {
      if (v37[14])
      {
        v12 = v37[14];
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
    if (v37[14])
    {
      v8 = v37[14];
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

- (void)systemSleepMonitorWillWakeFromSleep:(id)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  if (self->_logHandle)
  {
    logHandle = v12->_logHandle;
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

  [(BLControl *)v12 setPropertyInternalWithKey:@"CBSystemWillWakeFromSleep" property:v10 client:0];
}

- (void)systemSleepMonitorDidWakeFromSleep:(id)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  if (self->_logHandle)
  {
    logHandle = v12->_logHandle;
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

  [(BLControl *)v12 setPropertyInternalWithKey:@"CBSystemDidWakeFromSleep" property:v10 client:0];
}

- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  if (self->_logHandle)
  {
    logHandle = v14->_logHandle;
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

  [(BLControl *)v14 setPropertyInternalWithKey:@"CBSystemPrepareForSleep" property:v12 client:0];
  v11[2]();
}

@end