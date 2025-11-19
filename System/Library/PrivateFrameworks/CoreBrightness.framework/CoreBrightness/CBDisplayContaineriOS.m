@interface CBDisplayContaineriOS
+ (id)newDisplayContextWithConfig:(id)a3 andQueue:(id)a4 andBrtCtl:(id)a5;
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)createAndAddSliderCommitTelemetryModule;
- (BOOL)findBacklight;
- (BOOL)handleCBBrtCtlDisplayContainerStart;
- (BOOL)handleCBDisplayContainerStart;
- (BOOL)handleDisplayArrival:(unsigned int)a3;
- (BOOL)handleDisplayModeUpdate:(id)a3;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4;
- (BOOL)initialiseHIDDisplay;
- (BOOL)matchDisplayWithHidService:(__IOHIDServiceClient *)a3;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)setPropertyNoQueue:(id)a3 forKey:(id)a4;
- (BOOL)setupInternalModules;
- (BOOL)start;
- (CBDisplayContaineriOS)initWithBacklightService:(unsigned int)a3;
- (CBDisplayContaineriOS)initWithCADisplay:(id)a3;
- (CBDisplayContaineriOS)initWithCBBrtControl:(id)a3;
- (NSString)description;
- (id)copyIdentifiers;
- (id)copyPreferenceForKey:(id)a3 user:(id)a4;
- (id)copyPropertyForKey:(id)a3;
- (id)copyPropertyInternalForKey:(id)a3;
- (id)copyStatusInfo;
- (void)dealloc;
- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4 from:(id)a5;
- (void)handlePresetChange:(id)a3;
- (void)registerNotificationBlock:(id)a3;
- (void)sendNotificationForKey:(id)a3 andValue:(id)a4;
- (void)setColorMitigations;
- (void)setNightShiftFactorDictionary:(id)a3;
- (void)setPreference:(id)a3 forKey:(id)a4 user:(id)a5;
- (void)setupInternalBrtCtlModules;
- (void)stop;
- (void)tearDownInternalModules;
- (void)unregisterNotificationBlock;
@end

@implementation CBDisplayContaineriOS

uint64_t __51__CBDisplayContaineriOS_setupInternalBrtCtlModules__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(result + 32) + 8))
    {
      v4 = *(*(result + 32) + 8);
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

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v8, a2, a3);
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Notification block key=%@, value=%@\n", v8, 0x16u);
    }

    [*(v5 + 32) handleNotificationForKey:a2 withProperty:a3 from:*(*(*(v5 + 40) + 8) + 40)];
    result = [*(v5 + 32) sendNotificationForKey:a2 andValue:a3];
  }

  *MEMORY[0x1E69E9840];
  return result;
}

void __60__CBDisplayContaineriOS_handleCBBrtCtlDisplayContainerStart__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a1;
  if (*(*(a1 + 32) + 8))
  {
    v5 = *(*(a1 + 32) + 8);
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

  v16 = v5;
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v21, v19, v18);
    _os_log_impl(&dword_1DE8E5000, v16, v15, "Notification %@ received from CA with payload %@", v21, 0x16u);
  }

  v3 = *(*(a1 + 32) + 16);
  block = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __60__CBDisplayContaineriOS_handleCBBrtCtlDisplayContainerStart__block_invoke_175;
  v11 = &unk_1E867B750;
  v12 = v19;
  v13 = *(a1 + 32);
  v14 = v18;
  dispatch_async(v3, &block);
  *MEMORY[0x1E69E9840];
}

- (void)setColorMitigations
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = self;
  v13 = a2;
  memset(__b, 0, sizeof(__b));
  obj = v14->_relevantServices;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v12 = 0;
      v12 = *(__b[1] + 8 * v5);
      service = v12;
      if (v14->_builtIn)
      {
        if (IOHIDServiceClientConformsTo(v12, 0xFF00u, 4u))
        {
          autoBrightnessModule = v14->_autoBrightnessModule;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([(CBContainerModuleProtocol *)v14->_autoBrightnessModule shouldMitigateHarmony:service]& 1) != 0)
          {
            v9 = [[CBALSNode alloc] initWithALSServiceClient:service];
            if ([(CBALSNode *)v9 colorSupport])
            {
              [(CBContainerModuleProtocol *)v14->_harmonyModule enableMitigations:1];
            }

            MEMORY[0x1E69E5920](v9);
          }
        }
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (CBDisplayContaineriOS)initWithBacklightService:(unsigned int)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v45 = self;
  v44 = a2;
  v43 = a3;
  if (!a3)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v42 = inited;
    v41 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      v25 = v41;
      __os_log_helper_16_0_0(v40);
      _os_log_error_impl(&dword_1DE8E5000, log, v25, "invalid backlight service", v40, 2u);
    }

LABEL_52:
    MEMORY[0x1E69E5920](v45);
    v45 = 0;
    v46 = 0;
    goto LABEL_53;
  }

  v39.receiver = v45;
  v39.super_class = CBDisplayContaineriOS;
  v45 = [(CBDisplayContaineriOS *)&v39 init];
  if (v45)
  {
    *(v45 + 36) = v43;
    IOObjectRetain(*(v45 + 36));
    v3 = os_log_create("com.apple.CoreBrightness.CBDisplayContaineriOS", "default");
    *(v45 + 1) = v3;
    if (IORegistryEntryGetRegistryEntryID(*(v45 + 36), v45 + 21))
    {
      if (*(v45 + 1))
      {
        v23 = *(v45 + 1);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v22 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v22 = init_default_corebrightness_log();
        }

        v23 = v22;
      }

      v38 = v23;
      v37 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v20 = v38;
        type = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_error_impl(&dword_1DE8E5000, v20, type, "unable to retrieve the registryID", v36, 2u);
      }

      goto LABEL_52;
    }

    *(v45 + 20) = *(v45 + 21);
    *(v45 + 17) = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("com.apple.CoreBrightness.CBDisplayContaineriOS", v4);
    *(v45 + 2) = v5;
    if (!*(v45 + 2))
    {
      if (*(v45 + 1))
      {
        v19 = *(v45 + 1);
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

      v35 = v19;
      v34 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v16 = v35;
        v17 = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_error_impl(&dword_1DE8E5000, v16, v17, "error: failed to create internal dispatch queue", v33, 2u);
      }

      goto LABEL_52;
    }

    if (IOObjectConformsTo(*(v45 + 36), "AppleARMBacklight"))
    {
      *(v45 + 149) = 1;
    }

    else
    {
      *(v45 + 150) = 1;
    }

    v32 = IORegistryEntrySearchCFProperty(*(v45 + 36), "IOService", @"kUSBContainerID", *MEMORY[0x1E695E480], 3u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v32];
      *(v45 + 8) = v6;
      if (*(v45 + 1))
      {
        v15 = *(v45 + 1);
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

      v31 = v15;
      v30 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_66(v47, *(v45 + 8));
        _os_log_impl(&dword_1DE8E5000, v31, v30, "usb container ID = %{public}@", v47, 0xCu);
      }
    }

    else
    {
      if (*(v45 + 1))
      {
        v13 = *(v45 + 1);
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

      v29 = v13;
      v28 = 1;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v10 = v29;
        v11 = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_impl(&dword_1DE8E5000, v10, v11, "no usb container ID", v27, 2u);
      }
    }

    MEMORY[0x1E69E5920](v32);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v45 + 5) = v7;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v45 + 6) = v8;
    *(v45 + 28) = 0;
    *(v45 + 24) = 0;
    *(v45 + 19) = 0;
  }

  v46 = v45;
LABEL_53:
  *MEMORY[0x1E69E9840];
  return v46;
}

- (CBDisplayContaineriOS)initWithCADisplay:(id)a3
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  if (!a3)
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
    v23 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      type = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "invalid display", v22, 2u);
    }

LABEL_21:
    MEMORY[0x1E69E5920](v27);
    v27 = 0;
    return 0;
  }

  v21.receiver = v27;
  v21.super_class = CBDisplayContaineriOS;
  v27 = [(CBDisplayContaineriOS *)&v21 init];
  if (v27)
  {
    v27->super._logHandle = os_log_create("com.apple.CoreBrightness.CBDisplayContaineriOS", "default");
    v27->_display = v25;
    MEMORY[0x1E69E5928](v27->_display);
    v27->_displayID = [(CADisplay *)v27->_display displayId];
    v27->_context = 0;
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v27->super._queue = dispatch_queue_create("com.apple.CoreBrightness.CBDisplayContaineriOS", v3);
    if (!v27->super._queue)
    {
      if (v27->super._logHandle)
      {
        logHandle = v27->super._logHandle;
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

        logHandle = v7;
      }

      v20 = logHandle;
      v19 = 16;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        v5 = v20;
        v6 = v19;
        __os_log_helper_16_0_0(v18);
        _os_log_error_impl(&dword_1DE8E5000, v5, v6, "error: failed to create internal dispatch queue", v18, 2u);
      }

      goto LABEL_21;
    }

    v27->_relevantServices = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27->_modules = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27->_displayService = 0;
    v27->_isExternal = [(CADisplay *)v25 displayType]== 1;
    v27->_displayCAManager = [[CBCAManager alloc] initWithCADisplay:v25 andQueue:v27->super._queue];
    v12[0] = 0;
    v12[1] = v12;
    v13 = 1375731712;
    v14 = 48;
    v15 = __Block_byref_object_copy__16;
    v16 = __Block_byref_object_dispose__16;
    displayCAManager = v27->_displayCAManager;
    [(CBModule *)v27->_displayCAManager registerNotificationBlock:?];
    v27->_brtCtl = 0;
    _Block_object_dispose(v12, 8);
  }

  return v27;
}

uint64_t __43__CBDisplayContaineriOS_initWithCADisplay___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(result + 32) + 8))
    {
      v4 = *(*(result + 32) + 8);
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

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v8, a2, a3);
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Notification block key=%@, value=%@\n", v8, 0x16u);
    }

    [*(v5 + 32) handleNotificationForKey:a2 withProperty:a3 from:*(*(*(v5 + 40) + 8) + 40)];
    result = [*(v5 + 32) sendNotificationForKey:a2 andValue:a3];
  }

  *MEMORY[0x1E69E9840];
  return result;
}

- (CBDisplayContaineriOS)initWithCBBrtControl:(id)a3
{
  v29 = self;
  v28 = a2;
  v27 = a3;
  v26.receiver = self;
  v26.super_class = CBDisplayContaineriOS;
  v29 = [(CBDisplayContaineriOS *)&v26 init];
  if (!v29)
  {
    return v29;
  }

  v29->_brtCtl = v27;
  MEMORY[0x1E69E5928](v29->_brtCtl);
  v29->_display = 0;
  v3 = [(CBBrightnessProxy *)v29->_brtCtl getDisplayId];
  v29->_displayID = v3;
  v29->_context = 0;
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = [-[CBDisplayContaineriOS className](v29 "className")];
  v25 = [v20 initWithFormat:@"%s.%s.%u", "com.apple.CoreBrightness", v19, -[CBBrightnessProxy getDisplayId](v29->_brtCtl, "getDisplayId")];
  v4 = os_log_create([v25 cStringUsingEncoding:1], "default");
  v29->super._logHandle = v4;
  v21 = [v25 cStringUsingEncoding:1];
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v6 = dispatch_queue_create(v21, v5);
  v29->super._queue = v6;
  if (v29->super._queue)
  {
    *&v7 = MEMORY[0x1E69E5920](v25).n128_u64[0];
    [(CBBrightnessProxy *)v29->_brtCtl setNotificationQueue:v29->super._queue, v7];
    v14 = [(CBBrightnessProxy *)v29->_brtCtl getDisplayType];
    v8 = v14 == [(CBBrightnessProxy *)v29->_brtCtl CBDispTypeExternal];
    v29->_isExternal = v8;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29->_relevantServices = v9;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29->_modules = v10;
    v29->_displayService = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29->_missedProperties = v11;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29->_missedKeys = v12;
    return v29;
  }

  if (v29->super._logHandle)
  {
    logHandle = v29->super._logHandle;
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

  v24 = logHandle;
  v23 = 16;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    log = v24;
    type = v23;
    __os_log_helper_16_0_0(v22);
    _os_log_error_impl(&dword_1DE8E5000, log, type, "error: failed to create internal dispatch queue", v22, 2u);
  }

  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v29);
  v29 = 0;
  return 0;
}

- (BOOL)findBacklight
{
  keys[1] = *MEMORY[0x1E69E9840];
  v12 = self;
  v11 = a2;
  v10 = 0;
  keys[0] = @"backlight-control";
  values = 0;
  values = *MEMORY[0x1E695E4D0];
  v3 = MEMORY[0x1E695E480];
  keyCallBacks = MEMORY[0x1E695E9D8];
  valueCallBacks = MEMORY[0x1E695E9E8];
  cf = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = @"IOPropertyMatch";
  v13 = cf;
  matching = CFDictionaryCreate(*v3, &v14, &v13, 1, keyCallBacks, valueCallBacks);
  CFRelease(cf);
  existing = 0;
  if (!IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], matching, &existing) && existing)
  {
    while (1)
    {
      object = IOIteratorNext(existing);
      if (!object)
      {
        break;
      }

      if (v12->_brtCtl && IOObjectConformsTo(object, "AppleARMBacklight"))
      {
        v12->_builtIn = 1;
        v12->_armBacklightDisplayService = object;
        v12->_displayService = object;
        IOObjectRetain(v12->_displayService);
        IOObjectRetain(v12->_armBacklightDisplayService);
      }

      else
      {
        [(CBDisplayContaineriOS *)v12 handleDisplayArrival:object];
      }

      v10 = 1;
    }

    IOObjectRelease(existing);
  }

  *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (BOOL)initialiseHIDDisplay
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  self->_displayArrivalNotificationPort = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  if (self->_displayArrivalNotificationPort)
  {
    IONotificationPortSetDispatchQueue(self->_displayArrivalNotificationPort, self->super._queue);
    v8 = IOServiceMatching("IOHIDDevice");
    if (v8)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:128];
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:1];
      if (v7 && v6)
      {
        [(__CFDictionary *)v8 setObject:v7 forKey:@"DeviceUsagePage"];
        [(__CFDictionary *)v8 setObject:v6 forKey:@"DeviceUsage"];
      }

      MEMORY[0x1E69E5920](v7);
      MEMORY[0x1E69E5920](v6);
      if (self->super._logHandle)
      {
        logHandle = self->super._logHandle;
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
        __os_log_helper_16_2_1_8_66(v11, v8);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "matching: %{public}@", v11, 0xCu);
      }

      IOServiceAddMatchingNotification(self->_displayArrivalNotificationPort, "IOServiceFirstMatch", v8, displayArrivalCallback, self, &self->_displayArrivalIterator);
      if (self->_displayArrivalIterator)
      {
        while (1)
        {
          v5 = IOIteratorNext(self->_displayArrivalIterator);
          if (!v5)
          {
            break;
          }

          v9 = [(CBDisplayContaineriOS *)self handleDisplayArrival:v5];
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)handleDisplayArrival:(unsigned int)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = self;
  v31 = a2;
  v30 = a3;
  v29 = 1;
  self->_displayService = a3;
  IOObjectRetain(v32->_displayService);
  v28 = 0;
  if (IORegistryEntryGetRegistryEntryID(v30, &v32->_registryID))
  {
    if (v32->super._logHandle)
    {
      logHandle = v32->super._logHandle;
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

    v22 = logHandle;
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v34, v30);
      _os_log_error_impl(&dword_1DE8E5000, v22, v21, "failed to retrieve registry ID for display service %u", v34, 8u);
    }

    v29 = 0;
  }

  else
  {
    v27 = IOObjectCopyClass(v30);
    if (v27)
    {
      if (v32->super._logHandle)
      {
        v15 = v32->super._logHandle;
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

      v26 = v15;
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_3_4_0_8_0_8_66(v36, v30, v32->_registryID, v27);
        _os_log_impl(&dword_1DE8E5000, v26, v25, "display service %u | registry ID 0x%llX | class %{public}@", v36, 0x1Cu);
      }

      MEMORY[0x1E69E5920](v27);
      if (v32->_brtCtl && v32->_displayService && IOObjectConformsTo(v32->_displayService, "AppleARMBacklight"))
      {
        v29 = 0;
      }

      else
      {
        if (v32->_displayService && IOObjectConformsTo(v32->_displayService, "AppleARMBacklight"))
        {
          v32->_builtIn = 1;
        }

        v28 = IORegistryEntrySearchCFProperty(v32->_displayService, "IOService", @"kUSBContainerID", *MEMORY[0x1E695E480], 3u);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32->_displayContainerUUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v28];
          if (v32->super._logHandle)
          {
            v9 = v32->super._logHandle;
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

          v20 = v9;
          v19 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_66(v33, v32->_displayContainerUUID);
            _os_log_impl(&dword_1DE8E5000, v20, v19, "usb container ID = %{public}@", v33, 0xCu);
          }
        }

        else
        {
          if (v32->super._logHandle)
          {
            v7 = v32->super._logHandle;
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

          v18 = v7;
          v17 = 1;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v4 = v18;
            v5 = v17;
            __os_log_helper_16_0_0(v16);
            _os_log_impl(&dword_1DE8E5000, v4, v5, "no usb container ID", v16, 2u);
          }
        }

        v29 = [(CBDisplayContaineriOS *)v32 setupInternalModules];
      }
    }

    else
    {
      if (v32->super._logHandle)
      {
        v13 = v32->super._logHandle;
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

      v24 = v13;
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v35, v30);
        _os_log_error_impl(&dword_1DE8E5000, v24, v23, "failed to retrieve class for display service %u", v35, 8u);
      }

      v29 = 0;
    }
  }

  MEMORY[0x1E69E5920](v28);
  *MEMORY[0x1E69E9840];
  return v29 & 1;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_allowlist);
  MEMORY[0x1E69E5920](v5->_modules);
  MEMORY[0x1E69E5920](v5->_relevantServices);
  MEMORY[0x1E69E5920](v5->_displayContainerUUID);
  MEMORY[0x1E69E5920](v5->_description);
  MEMORY[0x1E69E5920](v5->_displayCAManager);
  MEMORY[0x1E69E5920](v5->_display);
  MEMORY[0x1E69E5920](v5->_missedProperties);
  [(CBBrightnessProxy *)v5->_brtCtl unregisterNotificationBlocks];
  v2 = MEMORY[0x1E69E5920](v5->_brtCtl).n128_u64[0];
  if (v5->_cachedABPref)
  {
    v2 = MEMORY[0x1E69E5920](v5->_cachedABPref).n128_u64[0];
    v5->_cachedABPref = 0;
  }

  if (v5->super._queue)
  {
    dispatch_release(v5->super._queue);
    v5->super._queue = 0;
  }

  if (v5->_displayService)
  {
    IOObjectRelease(v5->_displayService);
    v5->_displayService = 0;
  }

  if (v5->_armBacklightDisplayService)
  {
    IOObjectRelease(v5->_armBacklightDisplayService);
    v5->_armBacklightDisplayService = 0;
  }

  if (v5->super._logHandle)
  {
    v2 = MEMORY[0x1E69E5920](v5->super._logHandle).n128_u64[0];
    v5->super._logHandle = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBDisplayContaineriOS;
  [(CBContainer *)&v3 dealloc];
}

- (NSString)description
{
  v5 = self;
  v4 = a2;
  if (!self->_description)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CBDisplayContaineriOS<%p>: ID=%lu built-in=%d service=%u containerID=%@", v5, v5->_displayID, v5->_builtIn, v5->_displayService, v5->_displayContainerUUID, 0];
    v5->_description = v2;
  }

  return v5->_description;
}

- (id)copyPropertyForKey:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = self;
  v33 = a2;
  v32 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 1375731712;
  v28 = 48;
  v29 = __Block_byref_object_copy__16;
  v30 = __Block_byref_object_dispose__16;
  v31 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = v34->super._queue;
    block = MEMORY[0x1E69E9820];
    v18 = -1073741824;
    v19 = 0;
    v20 = __44__CBDisplayContaineriOS_copyPropertyForKey___block_invoke;
    v21 = &unk_1E867B7A0;
    v22 = v32;
    v23 = v34;
    v24 = &v25;
    dispatch_sync(queue, &block);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v34->_builtIn || [(NSArray *)v34->_allowlist containsObject:v32]))
    {
      v4 = v34->super._queue;
      v9 = MEMORY[0x1E69E9820];
      v10 = -1073741824;
      v11 = 0;
      v12 = __44__CBDisplayContaineriOS_copyPropertyForKey___block_invoke_3;
      v13 = &unk_1E867C878;
      v16 = &v25;
      v14 = v34;
      v15 = v32;
      dispatch_sync(v4, &v9);
    }
  }

  if (v34->super._logHandle)
  {
    logHandle = v34->super._logHandle;
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
    __os_log_helper_16_2_2_8_64_8_64(v35, v32, v26[5]);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ result=%@", v35, 0x16u);
  }

  v6 = v26[5];
  _Block_object_dispose(&v25, 8);
  *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __44__CBDisplayContaineriOS_copyPropertyForKey___block_invoke(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  result = [*(a1 + 32) getKeyDisplayID];
  if (result == *(*(a1 + 40) + 160))
  {
    result = [*(a1 + 32) getKeyString];
    if (result)
    {
      result = [*(a1 + 40) copyPropertyInternalForKey:{objc_msgSend(*(a1 + 32), "getKeyString")}];
      *(*(*(a1 + 48) + 8) + 40) = result;
      if (!result)
      {
        v2 = *(*(a1 + 40) + 48);
        v4 = MEMORY[0x1E69E9820];
        v5 = -1073741824;
        v6 = 0;
        v7 = __44__CBDisplayContaineriOS_copyPropertyForKey___block_invoke_2;
        v8 = &unk_1E867BEB8;
        v10 = *(a1 + 48);
        v9 = *(a1 + 32);
        return [v2 enumerateObjectsUsingBlock:?];
      }
    }
  }

  return result;
}

uint64_t __44__CBDisplayContaineriOS_copyPropertyForKey___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToProtocol:&unk_1F59CBED8];
  if (result)
  {
    result = [a2 copyPropertyForKey:{objc_msgSend(*(a1 + 32), "getKeyString")}];
    *(*(*(a1 + 40) + 8) + 40) = result;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __44__CBDisplayContaineriOS_copyPropertyForKey___block_invoke_3(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  result = [*(a1 + 32) copyPropertyInternalForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  if (!result)
  {
    v2 = *(*(a1 + 32) + 48);
    v4 = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __44__CBDisplayContaineriOS_copyPropertyForKey___block_invoke_4;
    v8 = &unk_1E867BEB8;
    v10 = *(a1 + 48);
    v9 = *(a1 + 40);
    return [v2 enumerateObjectsUsingBlock:?];
  }

  return result;
}

uint64_t __44__CBDisplayContaineriOS_copyPropertyForKey___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToProtocol:&unk_1F59CBED8];
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

- (BOOL)setPropertyNoQueue:(id)a3 forKey:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v23 getKeyDisplayID] == v26->_displayID)
    {
      v21 = [v23 getKeyString];
      if (v26->super._logHandle)
      {
        logHandle = v26->super._logHandle;
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

      v20 = logHandle;
      v19 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v29, v23, v21);
        _os_log_debug_impl(&dword_1DE8E5000, v20, v19, "key=%@ string=%@", v29, 0x16u);
      }

      if (v21)
      {
        if ([v21 isEqualToString:@"DisplayBrightnessAuto"] & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"BrightnessWeakCap") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"DisplayBrightness2"))
        {
          v22 = (v22 | [(CBContainerModuleProtocol *)v26->_displayControlModule setProperty:v24 forKey:v21]) != 0;
          v22 = (v22 | [(CBContainerModuleProtocol *)v26->_autoBrightnessModule setProperty:v24 forKey:v21]) != 0;
        }

        else
        {
          v22 = (v22 | [(CBContainerModuleProtocol *)v26->_autoBrightnessModule setProperty:v24 forKey:v21]) != 0;
          v22 = (v22 | [(CBContainerModuleProtocol *)v26->_displayControlModule setProperty:v24 forKey:v21]) != 0;
        }
      }
    }

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_50:
    v27 = v22;
    goto LABEL_51;
  }

  if ([v23 isEqualToString:@"kCoreBrightnessPresetStateChanged"])
  {
    [(CBDisplayContaineriOS *)v26 handlePresetChange:+[CBPresetsParser sharedInstance]];
LABEL_49:
    v22 = (v22 | [(CBContainerModuleProtocol *)v26->_harmonyModule setProperty:v24 forKey:v23]) != 0;
    v22 = (v22 | [(CBContainerModuleProtocol *)v26->_AODModule setProperty:v24 forKey:v23]) != 0;
    v22 = (v22 | [(CBContainerModuleProtocol *)v26->_SliderCommitTelemetryModule setProperty:v24 forKey:v23]) != 0;
    goto LABEL_50;
  }

  if (!v26->_builtIn && ![(NSArray *)v26->_allowlist containsObject:v23])
  {
    goto LABEL_49;
  }

  if (v24 && !v26->_displayControlModule)
  {
    [(NSMutableArray *)v26->_missedProperties addObject:v24];
    [(NSMutableArray *)v26->_missedKeys addObject:v23];
    if (v26->super._logHandle)
    {
      v11 = v26->super._logHandle;
    }

    else
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v11 = v10;
    }

    v18 = v11;
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v28, v23);
      _os_log_error_impl(&dword_1DE8E5000, v18, v17, "Modules not ready: Caching %@ property", v28, 0xCu);
    }
  }

  if (([v23 isEqual:@"DisplayBrightnessAuto"] & 1) == 0 || v26->_alsServiceReady)
  {
    if ([v23 isEqualToString:@"DisplayBrightnessAuto"] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"BrightnessWeakCap") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"DisplayBrightness2"))
    {
      v22 = (v22 | [(CBContainerModuleProtocol *)v26->_displayControlModule setProperty:v24 forKey:v23]) != 0;
      v22 = (v22 | [(CBContainerModuleProtocol *)v26->_autoBrightnessModule setProperty:v24 forKey:v23]) != 0;
    }

    else
    {
      v22 = (v22 | [(CBContainerModuleProtocol *)v26->_autoBrightnessModule setProperty:v24 forKey:v23]) != 0;
      v22 = (v22 | [(CBContainerModuleProtocol *)v26->_displayControlModule setProperty:v24 forKey:v23]) != 0;
    }

    goto LABEL_49;
  }

  if (v26->super._logHandle)
  {
    v9 = v26->super._logHandle;
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

  v16 = v9;
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v16;
    v7 = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, v6, v7, "ALS is not supported on this device or not yet registered-> re-apply the DisplayBrightnessAuto property when the ALS service comes up", v14, 2u);
  }

  v4 = [v24 copy];
  v26->_cachedABPref = v4;
  v22 = 1;
  v27 = 1;
LABEL_51:
  *MEMORY[0x1E69E9840];
  return v27 & 1;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __44__CBDisplayContaineriOS_setProperty_forKey___block_invoke;
  v11 = &unk_1E867C2B0;
  v15 = &v16;
  v12 = v24;
  v13 = a3;
  v14 = a4;
  dispatch_sync(queue, &block);
  v6 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v6 & 1;
}

uint64_t __44__CBDisplayContaineriOS_setProperty_forKey___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setPropertyNoQueue:*(a1 + 40) forKey:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (id)copyPropertyInternalForKey:(id)a3
{
  v7 = 0;
  if ([a3 isEqualToString:@"CBDisplayID"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:self->_displayID];
  }

  if ([a3 isEqualToString:@"CBDisplayIsBuiltIn"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_builtIn];
  }

  if ([a3 isEqualToString:@"CBDisplayIsExternal"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_isExternal];
  }

  if ([a3 isEqualToString:@"BrightnessControlCapabilities"])
  {
    return [-[CBBrightnessProxy getBrightnessCapabilities](self->_brtCtl "getBrightnessCapabilities")];
  }

  if ([a3 isEqualToString:@"CBContainerInfo"])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_builtIn];
    if (v4)
    {
      [v7 setObject:v4 forKey:@"CBDisplayIsBuiltIn"];
    }

    MEMORY[0x1E69E5920](v4);
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:self->_displayID];
    if (v5)
    {
      [v7 setObject:v5 forKey:@"CBDisplayID"];
    }

    v6 = [(NSString *)[(NSUUID *)self->_displayContainerUUID UUIDString] copy];
    if (v6)
    {
      [v7 setObject:v6 forKey:@"CBDisplayContainerID"];
    }

    MEMORY[0x1E69E5920](v6);
  }

  else if ([a3 isEqualToString:@"StatusInfo"])
  {
    return [(CBDisplayContaineriOS *)self copyStatusInfo];
  }

  else if ([a3 isEqualToString:@"CBInternalDisplayReady"])
  {
    if (self->_builtIn)
    {
      return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[CBDisplayContaineriOS isReady](self, "isReady")}];
    }
  }

  else
  {
    return [(CBContainerModuleProtocol *)self->_harmonyModule copyPropertyForKey:a3];
  }

  return v7;
}

- (BOOL)start
{
  if (self->_brtCtl && (v3 = [(CBBrightnessProxy *)self->_brtCtl getDisplayType], v3 == [(CBBrightnessProxy *)self->_brtCtl CBDispTypeIntegrated]))
  {
    return [(CBDisplayContaineriOS *)self handleCBBrtCtlDisplayContainerStart];
  }

  else
  {
    return [(CBDisplayContaineriOS *)self handleCBDisplayContainerStart];
  }
}

- (void)handlePresetChange:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
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
    __os_log_helper_16_2_1_8_64(v8, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Presets: refershing presets state based on %@", v8, 0xCu);
  }

  if (a3)
  {
    context = objc_autoreleasePoolPush();
    -[CBContainerModuleProtocol setProperty:forKey:](self->_harmonyModule, "setProperty:forKey:", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "trueToneDisabled")}], @"CBDisplayPresetDisableHarmony");
    -[CBContainerModuleProtocol setProperty:forKey:](self->_autoBrightnessModule, "setProperty:forKey:", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "autoBrightnessDisabledForDisplay:", self->_displayID)}]);
    -[CBContainerModuleProtocol setProperty:forKey:](self->_displayControlModule, "setProperty:forKey:", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "autoBrightnessDisabledForDisplay:", self->_displayID)}], @"CBDisplayPresetDisableAutoBrightness");
    -[CBContainerModuleProtocol setProperty:forKey:](self->_displayControlModule, "setProperty:forKey:", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "brightnessDisabledForDisplay:", self->_displayID)}], @"CBDisplayPresetLockBrightnessUpdates");
    objc_autoreleasePoolPop(context);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)handleCBDisplayContainerStart
{
  v22 = self;
  v21 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 1;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __54__CBDisplayContaineriOS_handleCBDisplayContainerStart__block_invoke;
  v13 = &unk_1E867C080;
  v14 = v22;
  v15 = &v16;
  dispatch_sync(queue, &block);
  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  v6 = &v4;
  v7 = [v8 initWithObjects:{@"DisplayBrightnessFactorWithFade", @"DisplayBrightnessFactor", @"CBContainerInfo", @"CBDisplayIsBuiltIn", @"CBDisplayIsExternal", @"CBDisplayID", @"DisplayBrightness2Available", @"DisplayBrightness2", @"DisplayBrightnessAuto2Available", @"DisplayBrightnessAuto2", @"StatusInfo", @"DISABLE_HID_INTERFACE", 0}];
  v22->_allowlist = v7;
  v5 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v5 & 1;
}

void __54__CBDisplayContaineriOS_handleCBDisplayContainerStart__block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v55 = a1;
  v54 = a1;
  v53 = 0;
  v52 = 1;
  if ([*(*(a1 + 32) + 184) isExternal])
  {
    if (*(*(a1 + 32) + 8))
    {
      v22 = *(*(a1 + 32) + 8);
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

      v22 = inited;
    }

    v51 = v22;
    v50 = 1;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      log = v51;
      type = v50;
      __os_log_helper_16_0_0(v49);
      _os_log_impl(&dword_1DE8E5000, log, type, "External display -> find HID display service.", v49, 2u);
    }

    MEMORY[0x1E69E5920](*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = os_log_create("com.apple.CoreBrightness.CBDisplayContaineriOS", "External");
    if (([*(a1 + 32) initialiseHIDDisplay] & 1) == 0)
    {
      if (*(*(a1 + 32) + 8))
      {
        v18 = *(*(a1 + 32) + 8);
      }

      else
      {
        v17 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v18 = v17;
      }

      v48 = v18;
      v47 = 1;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v15 = v48;
        v16 = v47;
        __os_log_helper_16_0_0(v46);
        _os_log_impl(&dword_1DE8E5000, v15, v16, "no display service found - waiting for display arrival", v46, 2u);
      }
    }

    v53 = 1;
    v45 = [objc_msgSend(*(*(a1 + 32) + 184) "currentMode")];
    v52 = ([v45 localizedCaseInsensitiveContainsString:@"YCbCr"] ^ 1) & 1;
    if (*(*(a1 + 32) + 8))
    {
      v14 = *(*(a1 + 32) + 8);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v13 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v13 = init_default_corebrightness_log();
      }

      v14 = v13;
    }

    v44 = v14;
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v52)
      {
        v1 = "yes";
      }

      else
      {
        v1 = "no";
      }

      __os_log_helper_16_2_2_8_66_8_32(v57, v45, v1);
      _os_log_impl(&dword_1DE8E5000, v44, v43, "ColorMode %{public}@ - initialize Color Module=%s", v57, 0x16u);
    }
  }

  else if (*(*(a1 + 32) + 184) && ([*(a1 + 32) findBacklight] & 1) != 0 || (objc_msgSend(*(a1 + 32), "handleDisplayArrival:", *(*(a1 + 32) + 144)) & 1) != 0)
  {
    MEMORY[0x1E69E5920](*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = os_log_create("com.apple.CoreBrightness.CBDisplayContaineriOS", "BuiltIn");
    v53 = 1;
  }

  if (v52)
  {
    v42 = [[CBBacklightNode alloc] initWithService:*(*(a1 + 32) + 144)];
    v12 = [CBColorModuleShared alloc];
    if (*(*(a1 + 32) + 149))
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    *(*(a1 + 32) + 104) = [(CBColorModuleShared *)v12 initWithBrightnessControl:0 moduleType:v2 backlightConfig:v42 queue:*(*(a1 + 32) + 16)];
    if (*(*(a1 + 32) + 104))
    {
      v36[0] = 0;
      v36[1] = v36;
      v37 = 1375731712;
      v38 = 48;
      v39 = __Block_byref_object_copy__16;
      v40 = __Block_byref_object_dispose__16;
      v41 = *(*(a1 + 32) + 104);
      v3 = *(*(a1 + 32) + 104);
      v29 = MEMORY[0x1E69E9820];
      v30 = -1073741824;
      v31 = 0;
      v32 = __54__CBDisplayContaineriOS_handleCBDisplayContainerStart__block_invoke_151;
      v33 = &unk_1E867C840;
      v34 = *(a1 + 32);
      v35 = v36;
      [v3 registerNotificationBlock:?];
      [*(*(a1 + 32) + 104) start];
      [*(*(a1 + 32) + 48) addObject:*(*(a1 + 32) + 104)];
      _Block_object_dispose(v36, 8);
    }
  }

  else if ([*(*(a1 + 32) + 184) isExternal])
  {
    if (*(*(a1 + 32) + 8))
    {
      v11 = *(*(a1 + 32) + 8);
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

    oslog = v11;
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v56, *(*(a1 + 32) + 160));
      _os_log_impl(&dword_1DE8E5000, oslog, v27, "Reset color matrix for display id: %d", v56, 8u);
    }

    v9 = [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")];
    LODWORD(v4) = 1.0;
    [v9 setColorMatrix:0 scale:v4 rampDuration:0.0];
  }

  if ((*(*(a1 + 32) + 149) & 1) == 0)
  {
    [*(*(a1 + 32) + 104) setProperty:MEMORY[0x1E695E118] forKey:@"ColorFadesEnabled"];
  }

  if ((v53 & 1) == 0)
  {
    if (*(*(a1 + 32) + 8))
    {
      v8 = *(*(a1 + 32) + 8);
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

    v26 = v8;
    v25 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v5 = v26;
      v6 = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_impl(&dword_1DE8E5000, v5, v6, "no backlight found", v24, 2u);
    }

    DisplayNotify(1u);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __54__CBDisplayContaineriOS_handleCBDisplayContainerStart__block_invoke_151(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(result + 32) + 8))
    {
      v4 = *(*(result + 32) + 8);
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

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v8, a2, a3);
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Notification block key=%@, value=%@\n", v8, 0x16u);
    }

    [*(v5 + 32) handleNotificationForKey:a2 withProperty:a3 from:*(*(*(v5 + 40) + 8) + 40)];
    result = [*(v5 + 32) sendNotificationForKey:a2 andValue:a3];
  }

  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)handleCBBrtCtlDisplayContainerStart
{
  v12 = self;
  v11 = a2;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __60__CBDisplayContaineriOS_handleCBBrtCtlDisplayContainerStart__block_invoke;
  v9 = &unk_1E867B480;
  v10 = v12;
  dispatch_sync(queue, &block);
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"DisplayBrightnessFactorWithFade", @"DisplayBrightnessFactor", @"CBContainerInfo", @"CBDisplayIsBuiltIn", @"CBDisplayID", @"DisplayBrightness2Available", @"DisplayBrightness2", @"DisplayBrightnessAuto2Available", @"DisplayBrightnessAuto2", @"StatusInfo", @"DISABLE_HID_INTERFACE", @"FlipBookState", 0}];
  v12->_allowlist = v3;
  return 1;
}

uint64_t __60__CBDisplayContaineriOS_handleCBBrtCtlDisplayContainerStart__block_invoke(uint64_t a1)
{
  v13 = a1;
  v23 = a1;
  v22 = a1;
  [*(a1 + 32) findBacklight];
  v1 = *(v13 + 32);
  v6 = &OBJC_IVAR___CBContainer__logHandle;
  MEMORY[0x1E69E5920](*(v1 + 8));
  *(*(v13 + 32) + 8) = os_log_create("com.apple.CoreBrightness.CBDisplayContaineriOS", "BuiltIn");
  v12 = objc_alloc(MEMORY[0x1E695DEC8]);
  v2 = *(v13 + 32);
  v14 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
  v11 = [*(v2 + 192) brightnessNotificationRequestEDR];
  v7 = [*(*(v13 + 32) + 192) brightnessNotificationAttached];
  v8 = [*(*(v13 + 32) + 192) brightnessNotificationPowerOn];
  v9 = [*(*(v13 + 32) + 192) brightnessNotificationPowerOff];
  v10 = [*(*(v13 + 32) + 192) brightnessNotificationSecureIndicatorOn];
  v21 = [v12 initWithObjects:{v11, v7, v8, v9, v10, objc_msgSend(*(*(v13 + 32) + 192), "brightnessNotificationSecureIndicatorOff"), 0}];
  v3 = *(*(v13 + 32) + v14[354]);
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __60__CBDisplayContaineriOS_handleCBBrtCtlDisplayContainerStart__block_invoke_2;
  v19 = &unk_1E867C8A0;
  v20 = *(v13 + 32);
  [v3 registerForNotifications:v21 withBlock:?];
  *&v4 = MEMORY[0x1E69E5920](v21).n128_u64[0];
  result = [*(*(v13 + 32) + v14[354]) getBrightnessCapabilities];
  if (result)
  {
    return [*(v13 + 32) setupInternalBrtCtlModules];
  }

  return result;
}

uint64_t __60__CBDisplayContaineriOS_handleCBBrtCtlDisplayContainerStart__block_invoke_175(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:{objc_msgSend(*(*(a1 + 40) + 192), "brightnessNotificationAttached")}])
  {
    [*(a1 + 40) setupInternalBrtCtlModules];
    v2 = *(*(a1 + 40) + 88);
    [*(*(a1 + 40) + 192) brightnessNotificationAttached];
    [v2 setProperty:? forKey:?];
    return [*(*(a1 + 40) + 96) setProperty:0 forKey:{objc_msgSend(*(*(a1 + 40) + 192), "brightnessNotificationAttached")}];
  }

  else
  {
    if ([*(a1 + 32) isEqual:{objc_msgSend(*(*(a1 + 40) + 192), "brightnessNotificationRequestEDR")}])
    {
      [*(*(a1 + 40) + 88) setProperty:*(a1 + 48) forKey:@"EDRHeadroomRequest"];
    }

    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    return [*(*(a1 + 40) + 48) enumerateObjectsUsingBlock:?];
  }
}

uint64_t __60__CBDisplayContaineriOS_handleCBBrtCtlDisplayContainerStart__block_invoke_2_179(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CBED8];
  if (result)
  {
    return [a2 setProperty:*(a1 + 32) forKey:*(a1 + 40)];
  }

  return result;
}

- (void)stop
{
  v10 = self;
  v9 = a2;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __29__CBDisplayContaineriOS_stop__block_invoke;
  v7 = &unk_1E867B480;
  v8 = v10;
  dispatch_sync(queue, &block);
}

- (void)sendNotificationForKey:(id)a3 andValue:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  if (self->super._notificationQueue)
  {
    MEMORY[0x1E69E5928](v14);
    MEMORY[0x1E69E5928](v13);
    notificationQueue = v16->super._notificationQueue;
    block = MEMORY[0x1E69E9820];
    v6 = -1073741824;
    v7 = 0;
    v8 = __57__CBDisplayContaineriOS_sendNotificationForKey_andValue___block_invoke;
    v9 = &unk_1E867B750;
    v10 = v16;
    v11 = v14;
    v12 = v13;
    dispatch_async(notificationQueue, &block);
  }
}

double __57__CBDisplayContaineriOS_sendNotificationForKey_andValue___block_invoke(void *a1)
{
  v14 = a1;
  v13 = a1;
  v2 = *(a1[4] + 16);
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __57__CBDisplayContaineriOS_sendNotificationForKey_andValue___block_invoke_2;
  v9 = &unk_1E867B750;
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  dispatch_sync(v2, &block);
  MEMORY[0x1E69E5920](a1[5]);
  *&result = MEMORY[0x1E69E5920](a1[6]).n128_u64[0];
  return result;
}

double __57__CBDisplayContaineriOS_sendNotificationForKey_andValue___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    if (*(*(a1 + 32) + 149) & 1) != 0 || ([*(a1 + 40) isEqual:@"DisplayBrightnessAuto2"] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqual:", @"DisplayBrightnessAuto2Available") & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqual:", @"DisplayBrightness2") & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqual:", @"CEOverride") & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqual:", @"CEOutput") & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqual:", @"RLuxOverride") & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqual:", @"RLuxOutput"))
    {
      v1 = *(a1 + 40);
      v2 = *(a1 + 48);
      (*(*(*(a1 + 32) + 32) + 16))();
    }

    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:*(a1 + 40) andDisplay:*(*(a1 + 32) + 160)];
    if (v6)
    {
      v4 = *(a1 + 48);
      (*(*(*(a1 + 32) + 32) + 16))();
      *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
    }
  }

  return result;
}

- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4 from:(id)a5
{
  v33 = self;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  if (([(CBCAManager *)self->_displayCAManager isEqual:a5]& 1) == 0)
  {
    [(CBCAManager *)v33->_displayCAManager handleNotificationForKey:v31 withProperty:v30];
  }

  modules = v33->_modules;
  v21 = MEMORY[0x1E69E9820];
  v22 = -1073741824;
  v23 = 0;
  v24 = __68__CBDisplayContaineriOS_handleNotificationForKey_withProperty_from___block_invoke;
  v25 = &unk_1E867B890;
  v26 = v29;
  v27 = v31;
  v28 = v30;
  [(NSMutableArray *)modules enumerateObjectsUsingBlock:?];
  if (v33->_builtIn)
  {
    v20 = 0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v31 isEqualToString:@"ALSServiceReady"] & 1) != 0 && !v33->_alsServiceReady)
    {
      v33->_alsServiceReady = 1;
      v20 = 1;
      if (v33->_cachedABPref)
      {
        if (v33->super._logHandle)
        {
          logHandle = v33->super._logHandle;
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

        v19 = logHandle;
        v18 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          log = v19;
          type = v18;
          __os_log_helper_16_0_0(v17);
          _os_log_impl(&dword_1DE8E5000, log, type, "ALS service is now ready - re-applying cached DisplayBrightnessAuto property", v17, 2u);
        }

        [(CBDisplayContaineriOS *)v33 setPropertyNoQueue:v33->_cachedABPref forKey:@"DisplayBrightnessAuto"];
        MEMORY[0x1E69E5920](v33->_cachedABPref);
        v33->_cachedABPref = 0;
      }
    }

    if ((v20 & 1) != 0 && [(CBDisplayContaineriOS *)v33 isReady])
    {
      if (v33->super._logHandle)
      {
        v9 = v33->super._logHandle;
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

      oslog = v9;
      v15 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v6 = oslog;
        v7 = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_debug_impl(&dword_1DE8E5000, v6, v7, "internal display ready", v14, 2u);
      }

      [(CBDisplayContaineriOS *)v33 sendNotificationForKey:@"CBInternalDisplayReady" andValue:MEMORY[0x1E695E118]];
    }
  }
}

uint64_t __68__CBDisplayContaineriOS_handleNotificationForKey_withProperty_from___block_invoke(void *a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CBED8];
  if (result)
  {
    result = [a2 isEqual:a1[4]];
    if ((result & 1) == 0)
    {
      return [a2 handleNotificationForKey:a1[5] withProperty:a1[6]];
    }
  }

  return result;
}

- (BOOL)matchDisplayWithHidService:(__IOHIDServiceClient *)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  if (!self->_displayService)
  {
    return 0;
  }

  v9 = 0;
  v8 = IOHIDServiceClientCopyProperty(v10, @"kUSBContainerID");
  v7 = 0;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    }
  }

  MEMORY[0x1E69E5920](v8);
  valuePtr = 0;
  v4 = 0;
  number = IOHIDServiceClientCopyProperty(v10, @"PrimaryUsagePage");
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    CFRelease(number);
  }

  number = IOHIDServiceClientCopyProperty(v10, @"PrimaryUsage");
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &v4);
    CFRelease(number);
  }

  if (v12->_displayContainerUUID && IOHIDServiceClientConformsTo(v10, 0x20u, 0x41u))
  {
    v7 = 1;
    MEMORY[0x1E69E5920](v9);
    return v7;
  }

  else
  {
    v7 = !v9 && !v12->_displayContainerUUID || v9 && v12->_displayContainerUUID && ([v9 isEqual:v12->_displayContainerUUID] & 1) != 0;
    MEMORY[0x1E69E5920](v9);
    return v7;
  }
}

- (BOOL)setupInternalModules
{
  v142 = *MEMORY[0x1E69E9840];
  v139 = self;
  v138 = a2;
  if (self->super._logHandle)
  {
    logHandle = v139->super._logHandle;
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

  v137 = logHandle;
  v136 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v137;
    type = v136;
    __os_log_helper_16_0_0(v135);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v135, 2u);
  }

  if (IOObjectConformsTo(v139->_displayService, "AppleARMBacklight"))
  {
    if (v139->_display || CBU_IsAccessory())
    {
      v2 = [CBDisplayModuleiOS alloc];
      v3 = [(CBDisplayModuleiOS *)v2 initWithBacklight:v139->_displayService queue:v139->super._queue display:v139->_display];
      v139->_displayControlModule = v3;
    }

    if (v139->_displayControlModule)
    {
      v4 = [CBABModuleiOS alloc];
      v5 = [(CBABModuleiOS *)v4 initWithDisplayModule:v139->_displayControlModule andQueue:v139->super._queue];
      v139->_autoBrightnessModule = v5;
      if (v139->_autoBrightnessModule)
      {
        [(NSMutableArray *)v139->_modules addObject:v139->_autoBrightnessModule];
        if (v139->super._logHandle)
        {
          v74 = v139->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v73 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v73 = init_default_corebrightness_log();
          }

          v74 = v73;
        }

        v134 = v74;
        v133 = 2;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          v71 = v134;
          v72 = v133;
          __os_log_helper_16_0_0(v132);
          _os_log_debug_impl(&dword_1DE8E5000, v71, v72, "auto brightness module for internal display added", v132, 2u);
        }

        v139->_running = 1;
        [(CBDisplayContaineriOS *)v139 createAndAddSliderCommitTelemetryModule];
      }

      else
      {
        if (v139->super._logHandle)
        {
          v70 = v139->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v69 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v69 = init_default_corebrightness_log();
          }

          v70 = v69;
        }

        oslog = v70;
        v130 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v67 = oslog;
          v68 = v130;
          __os_log_helper_16_0_0(v129);
          _os_log_error_impl(&dword_1DE8E5000, v67, v68, "error: failed to create auto-brighntess module", v129, 2u);
        }
      }

      [(NSMutableArray *)v139->_modules addObject:v139->_displayControlModule];
      if (v139->super._logHandle)
      {
        v66 = v139->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v65 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v65 = init_default_corebrightness_log();
        }

        v66 = v65;
      }

      v128 = v66;
      v127 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        v63 = v128;
        v64 = v127;
        __os_log_helper_16_0_0(v126);
        _os_log_debug_impl(&dword_1DE8E5000, v63, v64, "control module for internal display added", v126, 2u);
      }
    }

    else
    {
      if (v139->super._logHandle)
      {
        v62 = v139->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v61 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v61 = init_default_corebrightness_log();
        }

        v62 = v61;
      }

      v125 = v62;
      v124 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v59 = v125;
        v60 = v124;
        __os_log_helper_16_0_0(v123);
        _os_log_error_impl(&dword_1DE8E5000, v59, v60, "error: failed to create a display module", v123, 2u);
      }
    }
  }

  else if (IOObjectConformsTo(v139->_displayService, "IOHIDDevice"))
  {
    v6 = [CBDisplayModuleHIDiOS alloc];
    v122 = [(CBDisplayModuleHIDiOS *)v6 initWithDevice:v139->_displayService andQueue:v139->super._queue];
    if (v122)
    {
      if ([(CBDisplayModuleHIDiOS *)v122 VID]== 1452 && [(CBDisplayModuleHIDiOS *)v122 PID]== 37415)
      {
        if (v139->super._logHandle)
        {
          v58 = v139->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v57 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v57 = init_default_corebrightness_log();
          }

          v58 = v57;
        }

        v121 = v58;
        v120 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v121;
          v56 = v120;
          __os_log_helper_16_0_0(v119);
          _os_log_impl(&dword_1DE8E5000, v55, v56, "Thunderbolt display doesn't have brightness support.", v119, 2u);
        }

        v139->_running = 0;
        MEMORY[0x1E69E5920](v122);
      }

      else
      {
        v139->_displayControlModule = v122;
        [(NSMutableArray *)v139->_modules addObject:v139->_displayControlModule];
        if (v139->super._logHandle)
        {
          v54 = v139->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v53 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v53 = init_default_corebrightness_log();
          }

          v54 = v53;
        }

        v118 = v54;
        v117 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          v51 = v118;
          v52 = v117;
          __os_log_helper_16_0_0(v116);
          _os_log_debug_impl(&dword_1DE8E5000, v51, v52, "display module for external display added", v116, 2u);
        }

        v139->_running = 1;
        if (v139->_brtCtl)
        {
          context = objc_autoreleasePoolPush();
          -[CBContainerModuleProtocol setProperty:forKey:](v139->_displayControlModule, "setProperty:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CBBrightnessProxy getVendorId](v139->_brtCtl, "getVendorId")}], @"CBDisplayVendorID");
          -[CBContainerModuleProtocol setProperty:forKey:](v139->_displayControlModule, "setProperty:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CBBrightnessProxy getProductId](v139->_brtCtl, "getProductId")}], @"CBDisplayProductID");
          objc_autoreleasePoolPop(context);
        }

        if ([(CBDisplayModuleHIDiOS *)v122 VID]== 1452 && [(CBDisplayModuleHIDiOS *)v122 PID]== 37443)
        {
          if (v139->super._logHandle)
          {
            v49 = v139->super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v48 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v48 = init_default_corebrightness_log();
            }

            v49 = v48;
          }

          v115 = v49;
          v114 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v115;
            v47 = v114;
            __os_log_helper_16_0_0(v113);
            _os_log_impl(&dword_1DE8E5000, v46, v47, "VID/PID match Initialise EDR module", v113, 2u);
          }

          v7 = [CBEDRModule alloc];
          v8 = [(CBEDRModule *)v7 initWithQueue:v139->super._queue display:v139->_display colorModule:v139->_harmonyModule andDisplayModule:v139->_displayControlModule];
          v139->_edrControlModule = v8;
          if (v139->_edrControlModule)
          {
            [(NSMutableArray *)v139->_modules addObject:v139->_edrControlModule];
          }
        }

        [(CBDisplayContaineriOS *)v139 sendNotificationForKey:@"DisplayBrightness2Available" andValue:MEMORY[0x1E695E118]];
        v9 = [CBABModuleExternal alloc];
        v10 = [(CBABModuleExternal *)v9 initWithDisplayModule:v139->_displayControlModule andQueue:v139->super._queue];
        v139->_autoBrightnessModule = v10;
        if (v139->_autoBrightnessModule)
        {
          [(NSMutableArray *)v139->_modules addObject:v139->_autoBrightnessModule];
          if (v139->super._logHandle)
          {
            v45 = v139->super._logHandle;
          }

          else
          {
            v44 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v45 = v44;
          }

          v112 = v45;
          v111 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v42 = v112;
            v43 = v111;
            __os_log_helper_16_0_0(v110);
            _os_log_debug_impl(&dword_1DE8E5000, v42, v43, "auto brightness module for external display added", v110, 2u);
          }
        }
      }
    }

    else
    {
      if (v139->super._logHandle)
      {
        v41 = v139->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v40 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v40 = init_default_corebrightness_log();
        }

        v41 = v40;
      }

      v109 = v41;
      v108 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v38 = v109;
        v39 = v108;
        __os_log_helper_16_0_0(v107);
        _os_log_error_impl(&dword_1DE8E5000, v38, v39, "error: failed to create a display module", v107, 2u);
      }
    }
  }

  else
  {
    if (v139->super._logHandle)
    {
      v37 = v139->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v36 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v36 = init_default_corebrightness_log();
      }

      v37 = v36;
    }

    v106 = v37;
    v105 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v34 = v106;
      v35 = v105;
      __os_log_helper_16_0_0(v104);
      _os_log_error_impl(&dword_1DE8E5000, v34, v35, "unsupported service", v104, 2u);
    }
  }

  if (!v139->super._queue)
  {
    __assert_rtn("[CBDisplayContaineriOS setupInternalModules]", "CBDisplayContaineriOS.mm", 1092, "_queue != nil");
  }

  v11 = [CBDisplayContextiOS alloc];
  v12 = [(CBDisplayContextiOS *)v11 initWithQueue:v139->super._queue andBrtCtl:v139->_brtCtl andConfig:0 andTwilight:0 andAmmolite:0 andGCP:?];
  v139->_context = v12;
  if (!v139->_context)
  {
    __assert_rtn("[CBDisplayContaineriOS setupInternalModules]", "CBDisplayContaineriOS.mm", 1096, "_context != nil");
  }

  if (v139->super._logHandle)
  {
    v33 = v139->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v32 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v32 = init_default_corebrightness_log();
    }

    v33 = v32;
  }

  v103 = v33;
  v102 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(CBDisplayContextiOS *)v139->_context configuration];
    v30 = [(CBDisplayContextiOS *)v139->_context twilight];
    v31 = [(CBDisplayContextiOS *)v139->_context ammolite];
    __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v141, v29, v30, v31, [(CBDisplayContextiOS *)v139->_context gcp]);
    _os_log_impl(&dword_1DE8E5000, v103, v102, "CBDisplayContextiOS(config: %@, twilight: %@, ammolite: %@, gcp: %@)", v141, 0x2Au);
  }

  if (v139->_brtCtl)
  {
    v13 = [CBAODModule alloc];
    v14 = [(CBAODModule *)v13 initWithCBBrtControl:v139->_brtCtl andContext:v139->_context];
    v139->_AODModule = v14;
    if (v139->_AODModule)
    {
      modules = v139->_modules;
      v96 = MEMORY[0x1E69E9820];
      v97 = -1073741824;
      v98 = 0;
      v99 = __45__CBDisplayContaineriOS_setupInternalModules__block_invoke;
      v100 = &unk_1E867B668;
      v101 = v139;
      [(NSMutableArray *)modules enumerateObjectsUsingBlock:?];
      [(NSMutableArray *)v139->_modules addObject:v139->_AODModule];
    }

    else
    {
      if (v139->super._logHandle)
      {
        v28 = v139->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v27 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v27 = init_default_corebrightness_log();
        }

        v28 = v27;
      }

      v95 = v28;
      v94 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v25 = v95;
        v26 = v94;
        __os_log_helper_16_0_0(v93);
        _os_log_error_impl(&dword_1DE8E5000, v25, v26, "Failed to initialize AOD module", v93, 2u);
      }
    }
  }

  v16 = v139->_modules;
  v87 = MEMORY[0x1E69E9820];
  v88 = -1073741824;
  v89 = 0;
  v90 = __45__CBDisplayContaineriOS_setupInternalModules__block_invoke_224;
  v91 = &unk_1E867B668;
  v92 = v139;
  [(NSMutableArray *)v16 enumerateObjectsUsingBlock:?];
  relevantServices = v139->_relevantServices;
  v81 = MEMORY[0x1E69E9820];
  v82 = -1073741824;
  v83 = 0;
  v84 = __45__CBDisplayContaineriOS_setupInternalModules__block_invoke_225;
  v85 = &unk_1E867B668;
  v86 = v139;
  [(NSMutableArray *)relevantServices enumerateObjectsUsingBlock:?];
  memset(__b, 0, sizeof(__b));
  obj = v139->_modules;
  v24 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v140 count:16];
  if (v24)
  {
    v20 = *__b[2];
    v21 = 0;
    v22 = v24;
    while (1)
    {
      v19 = v21;
      if (*__b[2] != v20)
      {
        objc_enumerationMutation(obj);
      }

      v80 = 0;
      v80 = *(__b[1] + 8 * v21);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v80 start];
      }

      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v140 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v139->_running;
}

uint64_t __45__CBDisplayContaineriOS_setupInternalModules__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC0D0];
  if (result)
  {
    return [*(*(a1 + 32) + 120) addModule:a2];
  }

  return result;
}

void __45__CBDisplayContaineriOS_setupInternalModules__block_invoke_224(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a1;
  if ([a2 conformsToProtocol:&unk_1F59CBED8])
  {
    v6[0] = 0;
    v6[1] = v6;
    v7 = 1375731712;
    v8 = 48;
    v9 = __Block_byref_object_copy__16;
    v10 = __Block_byref_object_dispose__16;
    v11 = v15;
    v5 = *(a1 + 32);
    [v15 registerNotificationBlock:?];
    _Block_object_dispose(v6, 8);
  }
}

uint64_t __45__CBDisplayContaineriOS_setupInternalModules__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(result + 32) + 8))
    {
      v4 = *(*(result + 32) + 8);
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

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v8, a2, a3);
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Notification block key=%@, value=%@\n", v8, 0x16u);
    }

    [*(v5 + 32) handleNotificationForKey:a2 withProperty:a3 from:*(*(*(v5 + 40) + 8) + 40)];
    result = [*(v5 + 32) sendNotificationForKey:a2 andValue:a3];
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __45__CBDisplayContaineriOS_setupInternalModules__block_invoke_225(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5 = a1;
  return [*(*(a1 + 32) + 48) enumerateObjectsUsingBlock:{MEMORY[0x1E69E9820], 3221225472, __45__CBDisplayContaineriOS_setupInternalModules__block_invoke_2_226, &unk_1E867B668, a2, a1, a4, a3, a2, a1}];
}

uint64_t __45__CBDisplayContaineriOS_setupInternalModules__block_invoke_2_226(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a2 addHIDServiceClient:*(a1 + 32)];
  }

  return result;
}

+ (id)newDisplayContextWithConfig:(id)a3 andQueue:(id)a4 andBrtCtl:(id)a5
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    __assert_rtn("+[CBDisplayContaineriOS newDisplayContextWithConfig:andQueue:andBrtCtl:]", "CBDisplayContaineriOS.mm", 1162, "queue");
  }

  context = objc_autoreleasePoolPush();
  v11[0] = [CBUserDefaultsProvider providerWithDomain:@"com.apple.CoreBrightness"];
  v11[1] = +[CBDictConfigProvider providerWithDict:](CBDictConfigProvider, "providerWithDict:", [objc_msgSend(a5 "getBrightnessCapabilities")]);
  v7 = -[CBDisplayContextiOS initWithQueue:andBrtCtl:andConfig:andTwilight:andAmmolite:andGCP:]([CBDisplayContextiOS alloc], "initWithQueue:andBrtCtl:andConfig:andTwilight:andAmmolite:andGCP:", a4, a5, a3, -[CBTwilight initWithParams:]([CBTwilight alloc], "initWithParams:", -[CBTwilightParams initWithParser:]([CBTwilightParams alloc], "initWithParser:", a3)), -[CBAmmolite initWithParams:]([CBAmmolite alloc], "initWithParams:", -[CBChromaticCorrectionParams initFromAmmoliteFromParser:]([CBChromaticCorrectionParams alloc], "initFromAmmoliteFromParser:", a3)), -[CBGammaContrastPreservation initWithParams:]([CBGammaContrastPreservation alloc], "initWithParams:", +[CBGammaContrastPreservationParams paramsWithProvider:](CBGammaContrastPreservationParams, "paramsWithProvider:", +[CBCombinedConfigProvider providerFromList:](CBCombinedConfigProvider, "providerFromList:", [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2]))));
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setupInternalBrtCtlModules
{
  v62 = *MEMORY[0x1E69E9840];
  v60 = self;
  v59 = a2;
  if (!self->_displayControlModule)
  {
    v58 = [[CBBacklightNode alloc] initWithService:v60->_armBacklightDisplayService];
    v60->_context = [CBDisplayContaineriOS newDisplayContextWithConfig:v58 andQueue:v60->super._queue andBrtCtl:v60->_brtCtl];
    MEMORY[0x1E69E5920](v58);
    if (!v60->_context)
    {
      __assert_rtn("[CBDisplayContaineriOS setupInternalBrtCtlModules]", "CBDisplayContaineriOS.mm", 1205, "_context != nil");
    }

    if (v60->super._logHandle)
    {
      logHandle = v60->super._logHandle;
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

    v57 = logHandle;
    v56 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_3_4_8_64_8_64_8_64_8_65(v61, [(CBDisplayContextiOS *)v60->_context configuration], [(CBDisplayContextiOS *)v60->_context twilight], [(CBDisplayContextiOS *)v60->_context ammolite], [(CBDisplayContextiOS *)v60->_context gcp]);
      _os_log_impl(&dword_1DE8E5000, v57, v56, "CBDisplayContextiOS(config: %@, twilight: %@, ammolite: %@, gcp: %{private}@)", v61, 0x2Au);
    }

    v60->_displayControlModule = [[CBDisplayModuleiOS alloc] initWithBacklight:v60->_armBacklightDisplayService andContext:v60->_context];
    if (v60->_displayControlModule)
    {
      v60->_autoBrightnessModule = [[CBABModuleiOS alloc] initWithDisplayModule:v60->_displayControlModule andQueue:v60->super._queue];
      if (v60->_autoBrightnessModule)
      {
        [(NSMutableArray *)v60->_modules addObject:v60->_autoBrightnessModule];
        if (v60->super._logHandle)
        {
          v30 = v60->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v29 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v29 = init_default_corebrightness_log();
          }

          v30 = v29;
        }

        v55 = v30;
        v54 = 2;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v27 = v55;
          v28 = v54;
          __os_log_helper_16_0_0(v53);
          _os_log_debug_impl(&dword_1DE8E5000, v27, v28, "auto brightness module for internal display added", v53, 2u);
        }

        [(CBDisplayContaineriOS *)v60 createAndAddSliderCommitTelemetryModule];
      }

      else
      {
        if (v60->super._logHandle)
        {
          v26 = v60->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v25 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v25 = init_default_corebrightness_log();
          }

          v26 = v25;
        }

        v52 = v26;
        v51 = 16;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v23 = v52;
          v24 = v51;
          __os_log_helper_16_0_0(v50);
          _os_log_error_impl(&dword_1DE8E5000, v23, v24, "error: failed to create auto-brighntess module", v50, 2u);
        }
      }

      [(NSMutableArray *)v60->_modules addObject:v60->_displayControlModule];
      if (v60->super._logHandle)
      {
        v22 = v60->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v21 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v21 = init_default_corebrightness_log();
        }

        v22 = v21;
      }

      v49 = v22;
      v48 = 2;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v19 = v49;
        v20 = v48;
        __os_log_helper_16_0_0(v47);
        _os_log_debug_impl(&dword_1DE8E5000, v19, v20, "control module for internal display added", v47, 2u);
      }
    }

    else
    {
      if (v60->super._logHandle)
      {
        v18 = v60->super._logHandle;
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

      v46 = v18;
      v45 = 16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v15 = v46;
        v16 = v45;
        __os_log_helper_16_0_0(v44);
        _os_log_error_impl(&dword_1DE8E5000, v15, v16, "error: failed to create a display module", v44, 2u);
      }
    }

    v2 = [CBBacklightNode alloc];
    v43 = [(CBBacklightNode *)v2 initWithService:v60->_displayService];
    v3 = [CBColorModuleShared alloc];
    if (v60->_builtIn)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = [(CBColorModuleShared *)v3 initWithBrightnessControl:v60->_brtCtl moduleType:v4 backlightConfig:v43 queue:v60->super._queue];
    v60->_harmonyModule = v5;
    if (v60->_harmonyModule)
    {
      v6 = [CBTwilightParams alloc];
      v42 = [(CBTwilightParams *)v6 initWithParser:v58];
      if (v42)
      {
        [(CBContainerModuleProtocol *)v60->_harmonyModule setProperty:v42 forKey:@"TwilightParameters"];
        MEMORY[0x1E69E5920](v42);
      }

      if (!v60->_builtIn)
      {
        [(CBContainerModuleProtocol *)v60->_harmonyModule setProperty:MEMORY[0x1E695E118] forKey:@"ColorFadesEnabled"];
      }

      [(NSMutableArray *)v60->_modules addObject:v60->_harmonyModule];
    }

    if (v60->_brtCtl)
    {
      v7 = [CBAODModule alloc];
      v8 = [(CBAODModule *)v7 initWithCBBrtControl:v60->_brtCtl andContext:v60->_context];
      v60->_AODModule = v8;
      if (v60->_AODModule)
      {
        modules = v60->_modules;
        v36 = MEMORY[0x1E69E9820];
        v37 = -1073741824;
        v38 = 0;
        v39 = __51__CBDisplayContaineriOS_setupInternalBrtCtlModules__block_invoke;
        v40 = &unk_1E867B668;
        v41 = v60;
        [(NSMutableArray *)modules enumerateObjectsUsingBlock:?];
        [(NSMutableArray *)v60->_modules addObject:v60->_AODModule];
      }

      else
      {
        if (v60->super._logHandle)
        {
          v14 = v60->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v13 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v13 = init_default_corebrightness_log();
          }

          v14 = v13;
        }

        v35 = v14;
        v34 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v11 = v35;
          v12 = v34;
          __os_log_helper_16_0_0(v33);
          _os_log_error_impl(&dword_1DE8E5000, v11, v12, "Failed to initialize AOD module", v33, 2u);
        }
      }
    }

    [(NSMutableArray *)v60->_modules enumerateObjectsUsingBlock:?];
    [(NSMutableArray *)v60->_relevantServices enumerateObjectsUsingBlock:?];
    [(CBDisplayContaineriOS *)v60 setColorMitigations];
    [(NSMutableArray *)v60->_modules makeObjectsPerformSelector:sel_start];
    [(NSMutableArray *)v60->_missedKeys enumerateObjectsUsingBlock:?];
    MEMORY[0x1E69E5920](v60->_missedKeys);
    v60->_missedKeys = 0;
    *&v10 = MEMORY[0x1E69E5920](v60->_missedProperties).n128_u64[0];
    v60->_missedProperties = 0;
    [(CBDisplayContaineriOS *)v60 handlePresetChange:+[CBPresetsParser sharedInstance]];
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __51__CBDisplayContaineriOS_setupInternalBrtCtlModules__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC0D0];
  if (result)
  {
    return [*(*(a1 + 32) + 120) addModule:a2];
  }

  return result;
}

void __51__CBDisplayContaineriOS_setupInternalBrtCtlModules__block_invoke_253(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a1;
  if ([a2 conformsToProtocol:&unk_1F59CBED8])
  {
    v6[0] = 0;
    v6[1] = v6;
    v7 = 1375731712;
    v8 = 48;
    v9 = __Block_byref_object_copy__16;
    v10 = __Block_byref_object_dispose__16;
    v11 = v15;
    v5 = *(a1 + 32);
    [v15 registerNotificationBlock:?];
    _Block_object_dispose(v6, 8);
  }
}

uint64_t __51__CBDisplayContaineriOS_setupInternalBrtCtlModules__block_invoke_254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5 = a1;
  return [*(*(a1 + 32) + 48) enumerateObjectsUsingBlock:{MEMORY[0x1E69E9820], 3221225472, __51__CBDisplayContaineriOS_setupInternalBrtCtlModules__block_invoke_2_255, &unk_1E867B668, a2, a1, a4, a3, a2, a1}];
}

uint64_t __51__CBDisplayContaineriOS_setupInternalBrtCtlModules__block_invoke_2_255(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a2 addHIDServiceClient:*(a1 + 32)];
  }

  return result;
}

void __51__CBDisplayContaineriOS_setupInternalBrtCtlModules__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPropertyNoQueue:objc_msgSend(*(*(a1 + 32) + 72) forKey:{"objectAtIndex:", a3), a2}];
  if (*(*(a1 + 32) + 8))
  {
    v4 = *(*(a1 + 32) + 8);
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

    v4 = inited;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v7, a2);
    _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Restored %@ property", v7, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

- (void)tearDownInternalModules
{
  v10 = self;
  v9 = a2;
  if (self->super._logHandle)
  {
    logHandle = v10->super._logHandle;
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
    v3 = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, v3, &unk_1DEAD656F, v6, 2u);
  }

  [(NSMutableArray *)v10->_modules makeObjectsPerformSelector:sel_stop];
  [(NSMutableArray *)v10->_modules makeObjectsPerformSelector:sel_unregisterNotificationBlock];
  [(NSMutableArray *)v10->_modules removeAllObjects];
  [(CBModule *)v10->_displayCAManager unregisterNotificationBlock];
  MEMORY[0x1E69E5920](v10->_displayControlModule);
  MEMORY[0x1E69E5920](v10->_autoBrightnessModule);
  MEMORY[0x1E69E5920](v10->_edrControlModule);
  MEMORY[0x1E69E5920](v10->_AODModule);
  MEMORY[0x1E69E5920](v10->_SliderCommitTelemetryModule);
  MEMORY[0x1E69E5920](v10->_harmonyModule);
  MEMORY[0x1E69E5920](v10->_context);
  v10->_context = 0;
  if (v10->_displayArrivalNotificationPort)
  {
    IONotificationPortSetDispatchQueue(v10->_displayArrivalNotificationPort, 0);
    IONotificationPortDestroy(v10->_displayArrivalNotificationPort);
    v10->_displayArrivalNotificationPort = 0;
  }

  if (v10->_displayArrivalIterator)
  {
    IOObjectRelease(v10->_displayArrivalIterator);
    v10->_displayArrivalIterator = 0;
  }
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __45__CBDisplayContaineriOS_handleHIDEvent_from___block_invoke;
  v10 = &unk_1E867B5A0;
  v11 = v17;
  v12 = a3;
  v13 = a4;
  dispatch_sync(queue, &block);
  return 1;
}

uint64_t __45__CBDisplayContaineriOS_handleHIDEvent_from___block_invoke(void *a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(a1[4] + 48);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __45__CBDisplayContaineriOS_handleHIDEvent_from___block_invoke_2;
  v7 = &__block_descriptor_48_e15_v32__0_8Q16_B24l;
  v8 = a1[5];
  return [v2 enumerateObjectsUsingBlock:{MEMORY[0x1E69E9820], 3221225472, __45__CBDisplayContaineriOS_handleHIDEvent_from___block_invoke_2, &__block_descriptor_48_e15_v32__0_8Q16_B24l, v8, a1[6], v9, v10}];
}

uint64_t __45__CBDisplayContaineriOS_handleHIDEvent_from___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a2 handleHIDEvent:*(a1 + 32) from:*(a1 + 40)];
  }

  return result;
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __45__CBDisplayContaineriOS_addHIDServiceClient___block_invoke;
  v9 = &unk_1E867B9D8;
  v10 = v14;
  v11 = a3;
  dispatch_sync(queue, &block);
  return 1;
}

uint64_t __45__CBDisplayContaineriOS_addHIDServiceClient___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) matchDisplayWithHidService:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
    v3 = *(a1 + 40);
    [*(*(a1 + 32) + 48) enumerateObjectsUsingBlock:?];
  }

  else if (IOHIDServiceClientConformsTo(*(a1 + 40), 0x20u, 0x41u) || IOHIDServiceClientConformsTo(*(a1 + 40), 0xFF00u, 4u))
  {
    [*(*(a1 + 32) + 104) addHIDServiceClient:*(a1 + 40)];
  }

  return [*(a1 + 32) setColorMitigations];
}

uint64_t __45__CBDisplayContaineriOS_addHIDServiceClient___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a2 addHIDServiceClient:*(a1 + 32)];
  }

  return result;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __48__CBDisplayContaineriOS_removeHIDServiceClient___block_invoke;
  v9 = &unk_1E867B9D8;
  v10 = v14;
  v11 = a3;
  dispatch_sync(queue, &block);
  return 1;
}

uint64_t __48__CBDisplayContaineriOS_removeHIDServiceClient___block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  v1 = *(*(a1 + 32) + 48);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __48__CBDisplayContaineriOS_removeHIDServiceClient___block_invoke_2;
  v8 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
  v9 = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:?];
}

uint64_t __48__CBDisplayContaineriOS_removeHIDServiceClient___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a2 removeHIDServiceClient:*(a1 + 32)];
  }

  return result;
}

- (void)registerNotificationBlock:(id)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CBDisplayContaineriOS;
  [(CBContainer *)&v3 registerNotificationBlock:a3];
}

- (void)unregisterNotificationBlock
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CBDisplayContaineriOS;
  [(CBContainer *)&v2 unregisterNotificationBlock];
}

- (id)copyPreferenceForKey:(id)a3 user:(id)a4
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 1375731712;
  v19 = 48;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = 0;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __51__CBDisplayContaineriOS_copyPreferenceForKey_user___block_invoke;
  v11 = &unk_1E867BC58;
  v12 = v26;
  v13 = a3;
  v15 = &v16;
  v14 = a4;
  dispatch_sync(queue, &block);
  v6 = v17[5];
  _Block_object_dispose(&v16, 8);
  return v6;
}

uint64_t __51__CBDisplayContaineriOS_copyPreferenceForKey_user___block_invoke(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1[4] + 8))
  {
    v3 = *(a1[4] + 8);
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

    v3 = inited;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v5, a1[5]);
    _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_INFO, "NightShift copyPreferencesForKey %@", v5, 0xCu);
  }

  result = [*(a1[4] + 104) copyPreferenceForKey:a1[5] user:a1[6]];
  *(*(a1[7] + 8) + 40) = result;
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setNightShiftFactorDictionary:(id)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  MEMORY[0x1E69E5928](a3);
  queue = v13->super._queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__CBDisplayContaineriOS_setNightShiftFactorDictionary___block_invoke;
  v8 = &unk_1E867BB90;
  v9 = v13;
  v10 = v11;
  dispatch_async(queue, &block);
}

void __55__CBDisplayContaineriOS_setNightShiftFactorDictionary___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    v2 = *(*(a1 + 32) + 8);
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

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v4, *(a1 + 40));
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_INFO, "NightShift setNightShiftFactorDictionary %@", v4, 0xCu);
  }

  [*(*(a1 + 32) + 104) setNightShiftFactorDictionary:*(a1 + 40)];
  MEMORY[0x1E69E5920](*(a1 + 40));
  *MEMORY[0x1E69E9840];
}

- (void)setPreference:(id)a3 forKey:(id)a4 user:(id)a5
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](v16);
  MEMORY[0x1E69E5928](v15);
  queue = v19->super._queue;
  block = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __51__CBDisplayContaineriOS_setPreference_forKey_user___block_invoke;
  v10 = &unk_1E867BB20;
  v11 = v19;
  v12 = v17;
  v13 = v16;
  v14 = v15;
  dispatch_async(queue, &block);
}

void __51__CBDisplayContaineriOS_setPreference_forKey_user___block_invoke(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1[4] + 8))
  {
    v2 = *(a1[4] + 8);
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

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_64(v4, a1[5], a1[6]);
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_INFO, "NightShift setPreference %@ for key %@", v4, 0x16u);
  }

  [*(a1[4] + 104) setPreference:a1[5] forKey:a1[6] user:a1[7]];
  MEMORY[0x1E69E5920](a1[5]);
  MEMORY[0x1E69E5920](a1[6]);
  MEMORY[0x1E69E5920](a1[7]);
  *MEMORY[0x1E69E9840];
}

- (id)copyStatusInfo
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [CBStatusInfoHelper copyStatusInfoFor:self];
  if (v4)
  {
    [v5 setObject:v4 forKey:@"DisplayContainer"];
  }

  MEMORY[0x1E69E5920](v4);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NSMutableArray *)self->_modules enumerateObjectsUsingBlock:?];
  [v5 setObject:v3 forKey:@"ModulesInfo"];
  MEMORY[0x1E69E5920](v3);
  return v5;
}

double __39__CBDisplayContaineriOS_copyStatusInfo__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 conformsToProtocol:&unk_1F59CBED8] & 1) != 0 || (objc_msgSend(a2, "conformsToProtocol:", &unk_1F59CFD60))
  {
    v4 = [a2 copyPropertyForKey:@"StatusInfo"];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }

    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  return result;
}

- (id)copyIdentifiers
{
  v4 = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"CBContainerInfo", @"BrightnessControlCapabilities", 0}];
}

- (BOOL)handleDisplayModeUpdate:(id)a3
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __49__CBDisplayContaineriOS_handleDisplayModeUpdate___block_invoke;
  v10 = &unk_1E867BCF8;
  v11 = v21;
  v13 = &v14;
  v12 = a3;
  dispatch_sync(queue, &block);
  v5 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v5 & 1;
}

uint64_t __49__CBDisplayContaineriOS_handleDisplayModeUpdate___block_invoke(void *a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(a1[4] + 48);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __49__CBDisplayContaineriOS_handleDisplayModeUpdate___block_invoke_2;
  v7 = &unk_1E867BEB8;
  v8 = a1[6];
  return [v2 enumerateObjectsUsingBlock:{MEMORY[0x1E69E9820], 3221225472, __49__CBDisplayContaineriOS_handleDisplayModeUpdate___block_invoke_2, &unk_1E867BEB8, a1[5], v8, v9, v10}];
}

uint64_t __49__CBDisplayContaineriOS_handleDisplayModeUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59D3468];
  if (result)
  {
    result = [a2 handleDisplayModeUpdate:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

- (BOOL)createAndAddSliderCommitTelemetryModule
{
  v18 = self;
  v17 = a2;
  if ((CBU_IsSliderCommitTelemetrySupported() & 1) == 0)
  {
    return 0;
  }

  v18->_SliderCommitTelemetryModule = [[CBSliderCommitTelemetry alloc] initWithQueue:v18->super._queue andDisplayContainer:v18];
  if (v18->_SliderCommitTelemetryModule)
  {
    [(NSMutableArray *)v18->_modules addObject:v18->_SliderCommitTelemetryModule];
    if (v18->super._logHandle)
    {
      logHandle = v18->super._logHandle;
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
    v12 = 2;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      v3 = v13;
      v4 = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_debug_impl(&dword_1DE8E5000, v3, v4, "SliderCommitTelemetry module added", v11, 2u);
    }

    return 1;
  }

  else
  {
    if (v18->super._logHandle)
    {
      v10 = v18->super._logHandle;
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

    v16 = v10;
    v15 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "SliderCommitTelemetry module failed to init", v14, 2u);
    }

    return 0;
  }
}

@end