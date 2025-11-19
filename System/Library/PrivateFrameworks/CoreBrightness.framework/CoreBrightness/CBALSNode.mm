@interface CBALSNode
- (BOOL)getDigitizerFilterWindow;
- (BOOL)getSupportsFloatLuxValue;
- (BOOL)getUseProxForOcclusion;
- (BOOL)handleALSEvent:(id)a3;
- (BOOL)isColorSupported;
- (BOOL)useCopyEventOnDisplayWake;
- (CBALSNode)initWithALSServiceClient:(__IOHIDServiceClient *)a3;
- (__IOHIDEvent)copyEvent;
- (id)copyALSEvent;
- (id)copyALSEventWithinTimeout:(float)a3;
- (id)copyHotspotLocation;
- (int)getReportInterval;
- (void)dealloc;
- (void)initALSProperties;
- (void)setReportInterval:(int)a3;
@end

@implementation CBALSNode

- (id)copyHotspotLocation
{
  v7 = 0;
  if (self->_alsIOService)
  {
    fixed_float_from_edt = load_fixed_float_from_edt(self->_alsIOService, @"hotspot-center-x");
    v5 = load_fixed_float_from_edt(self->_alsIOService, @"hotspot-center-y");
    v7 = objc_alloc_init(CBALSHotspotLocation);
    *&v2 = fixed_float_from_edt;
    [(CBALSHotspotLocation *)v7 setX:v2];
    *&v3 = v5;
    [(CBALSHotspotLocation *)v7 setY:v3];
  }

  return v7;
}

- (BOOL)getUseProxForOcclusion
{
  v6 = self;
  v5 = a2;
  v4 = 1;
  if (self->_alsIOService)
  {
    v3 = 0;
    if (load_int_from_edt(v6->_alsIOService, @"use-prox-for-occlusion", &v3))
    {
      return v3 != 0;
    }
  }

  return v4;
}

- (BOOL)getDigitizerFilterWindow
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = self;
  v12 = a2;
  v11 = 0;
  v10 = 0x7FFFFFFF;
  v9 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
  if (v8)
  {
    v7 = [v8 objectForKey:@"AutoBrightnessTouchFilterWindowType"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v13->_logHandle)
        {
          logHandle = v13->_logHandle;
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
          __os_log_helper_16_2_2_8_64_8_64(v15, @"AutoBrightnessTouchFilterWindowType", v7);
          _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Touch filter window type is overridden in Defaults %@ = %@ \n", v15, 0x16u);
        }

        v10 = [v7 intValue];
        v9 = 1;
      }
    }

    MEMORY[0x1E69E5920](v8);
  }

  if ((v9 & 1) == 0 && v13->_alsIOService)
  {
    v9 = load_int_from_edt(v13->_alsIOService, @"digitizer-filter-window-type", &v10);
  }

  if (v9)
  {
    if (v10 > 1)
    {
      if (v13->_logHandle)
      {
        v4 = v13->_logHandle;
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

      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v14, v10);
        _os_log_error_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_ERROR, "%d", v14, 8u);
      }
    }

    else
    {
      v11 = v10;
    }
  }

  *MEMORY[0x1E69E9840];
  return v11 != 0;
}

- (BOOL)getSupportsFloatLuxValue
{
  v6 = self;
  v5 = a2;
  v4 = 0;
  if (self->_alsIOService)
  {
    v3 = 0;
    if (load_int_from_edt(v6->_alsIOService, @"supports-float-lux", &v3))
    {
      return v3 != 0;
    }
  }

  return v4;
}

- (void)initALSProperties
{
  v68 = self;
  v67 = a2;
  self->_orientation = 0;
  v68->_placement = 0;
  v68->_location = 256;
  v68->_sensorType = 0;
  v68->_superFastIntegrationTime = 99000;
  v68->_fastIntegrationTime = 100000;
  v68->_slowIntegrationTime = 250000;
  v68->_colorSupport = 0;
  v66 = 0;
  v66 = IOHIDServiceClientCopyProperty(v68->_alsService, @"Orientation");
  if (v66 && (v39 = CFGetTypeID(v66), v39 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v66, kCFNumberSInt32Type, &v68->_orientation);
  }

  else
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

    v65 = logHandle;
    v64 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v65;
      type = v64;
      __os_log_helper_16_0_0(v63);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to load ALS orientation.", v63, 2u);
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v66 = 0;
  v62 = IOHIDServiceClientCopyProperty(v68->_alsService, @"SensorLocation");
  if (v62)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68->_location = [v62 unsignedIntegerValue];
    }
  }

  MEMORY[0x1E69E5920](v62);
  v66 = IOHIDServiceClientCopyProperty(v68->_alsService, @"Placement");
  if (v66 && (v34 = CFGetTypeID(v66), v34 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v66, kCFNumberSInt32Type, &v68->_placement);
  }

  else
  {
    if (v68->_logHandle)
    {
      v33 = v68->_logHandle;
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

    v61 = v33;
    v60 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v30 = v61;
      v31 = v60;
      __os_log_helper_16_0_0(v59);
      _os_log_error_impl(&dword_1DE8E5000, v30, v31, "Failed to load ALS placement.", v59, 2u);
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v66 = 0;
  v66 = IOHIDServiceClientCopyProperty(v68->_alsService, @"ALSSensorType");
  if (v66 && (v29 = CFGetTypeID(v66), v29 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v66, kCFNumberSInt32Type, &v68->_sensorType);
  }

  else
  {
    if (v68->_logHandle)
    {
      v28 = v68->_logHandle;
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

    v58 = v28;
    v57 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v25 = v58;
      v26 = v57;
      __os_log_helper_16_0_0(v56);
      _os_log_error_impl(&dword_1DE8E5000, v25, v26, "Failed to load ALS sensor type.", v56, 2u);
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v66 = 0;
  v66 = IOHIDServiceClientCopyProperty(v68->_alsService, @"ALSFastIntegrationTime");
  if (v66 && (v24 = CFGetTypeID(v66), v24 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v66, kCFNumberSInt32Type, &v68->_fastIntegrationTime);
  }

  else
  {
    if (v68->_logHandle)
    {
      v23 = v68->_logHandle;
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

    v55 = v23;
    v54 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v20 = v55;
      v21 = v54;
      __os_log_helper_16_0_0(v53);
      _os_log_error_impl(&dword_1DE8E5000, v20, v21, "Failed to load ALS fast integration time.", v53, 2u);
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v66 = 0;
  v66 = IOHIDServiceClientCopyProperty(v68->_alsService, @"ALSSuperFastIntegrationTime");
  if (v66 && (v19 = CFGetTypeID(v66), v19 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v66, kCFNumberSInt32Type, &v68->_superFastIntegrationTime);
  }

  else
  {
    if (v68->_logHandle)
    {
      v18 = v68->_logHandle;
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
    v51 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v15 = v52;
      v16 = v51;
      __os_log_helper_16_0_0(v50);
      _os_log_error_impl(&dword_1DE8E5000, v15, v16, "Failed to load ALS super fast integration time.", v50, 2u);
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v66 = 0;
  v66 = IOHIDServiceClientCopyProperty(v68->_alsService, @"ALSSlowIntegrationTime");
  if (v66 && (v14 = CFGetTypeID(v66), v14 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v66, kCFNumberSInt32Type, &v68->_slowIntegrationTime);
  }

  else
  {
    if (v68->_logHandle)
    {
      v13 = v68->_logHandle;
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

    v49 = v13;
    v48 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v10 = v49;
      v11 = v48;
      __os_log_helper_16_0_0(v47);
      _os_log_error_impl(&dword_1DE8E5000, v10, v11, "Failed to load ALS slow integration time.", v47, 2u);
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v66 = 0;
  v66 = IOHIDServiceClientCopyProperty(v68->_alsService, @"Built-In");
  if (v66 && ((v9 = CFGetTypeID(v66), v9 == CFBooleanGetTypeID()) || (v8 = CFGetTypeID(v66), v8 == CFNumberGetTypeID())))
  {
    v7 = CFGetTypeID(v66);
    if (v7 == CFBooleanGetTypeID())
    {
      if (v66 == *MEMORY[0x1E695E4D0])
      {
        v68->_builtIn = 1;
      }
    }

    else
    {
      v6 = CFGetTypeID(v66);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v66, kCFNumberSInt32Type, &valuePtr);
        v68->_builtIn = valuePtr != 0;
      }
    }
  }

  else
  {
    if (v68->_logHandle)
    {
      v5 = v68->_logHandle;
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

    v45 = v5;
    v44 = 16;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v2 = v45;
      v3 = v44;
      __os_log_helper_16_0_0(v43);
      _os_log_error_impl(&dword_1DE8E5000, v2, v3, "Failed to load ALS built in value.", v43, 2u);
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v66 = 0;
  v68->_colorMitigation = 0;
  if (v68->_alsIOService)
  {
    v42 = 0;
    v41 = load_uint_from_edt(v68->_alsIOService, @"ce-model", &v42);
    fixed_float_from_edt = load_fixed_float_from_edt(v68->_alsIOService, @"ce-threshold");
    if (v41)
    {
      v68->_ceModel = v42;
      v69 = fixed_float_from_edt;
      v68->_ceThreshold = fixed_float_from_edt;
      v68->_colorMitigation = 1;
    }
  }

  v68->_overrideHotspot = [(CBALSNode *)v68 copyHotspotLocation];
  v68->_useProxForOcclusion = [(CBALSNode *)v68 getUseProxForOcclusion];
  v68->_digitizerFilterWindow = [(CBALSNode *)v68 getDigitizerFilterWindow];
  v68->_supportsFloatLux = [(CBALSNode *)v68 getSupportsFloatLuxValue];
  v68->_colorSupport = [(CBALSNode *)v68 isColorSupported];
}

- (BOOL)isColorSupported
{
  v19 = self;
  v18 = a2;
  v17 = 0;
  if (IOHIDServiceClientConformsTo(self->_alsService, 0xFF00u, 4u))
  {
    v16 = 0;
    v16 = IOHIDServiceClientCopyProperty(v19->_alsService, @"crgb");
    if (v16)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v16))
      {
        valuePtr = 0;
        CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
        v17 = valuePtr != 0;
      }
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  else if (IOHIDServiceClientConformsTo(v19->_alsService, 0x20u, 0x41u))
  {
    v14 = 0;
    v13 = 0;
    v14 = IOHIDServiceClientCopyProperty(v19->_alsService, @"VendorID");
    if (v14)
    {
      v8 = CFGetTypeID(v14);
      if (v8 == CFNumberGetTypeID())
      {
        v13 = [v14 unsignedIntValue];
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v13 == 1452)
    {
      v14 = IOHIDServiceClientCopyProperty(v19->_alsService, @"ColorSupport");
      if (v14)
      {
        v7 = CFBooleanGetTypeID();
        if (v7 == CFGetTypeID(v14))
        {
          v17 = v14 == *MEMORY[0x1E695E4D0];
        }
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  else
  {
    if (v19->_logHandle)
    {
      logHandle = v19->_logHandle;
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

    v12 = logHandle;
    v11 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to load ALS color support information.", v10, 2u);
    }
  }

  return v17;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = MEMORY[0x1E69E5920](self->_currentALSEvent).n128_u64[0];
  if (v5->_alsService)
  {
    CFRelease(v5->_alsService);
  }

  if (v5->_alsIOService)
  {
    IOObjectRelease(v5->_alsIOService);
  }

  if (v5->_overrideHotspot)
  {
    v2 = MEMORY[0x1E69E5920](v5->_overrideHotspot).n128_u64[0];
  }

  if (v5->_logHandle)
  {
    v2 = MEMORY[0x1E69E5920](v5->_logHandle).n128_u64[0];
    v5->_logHandle = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBALSNode;
  [(CBALSNode *)&v3 dealloc];
}

- (CBALSNode)initWithALSServiceClient:(__IOHIDServiceClient *)a3
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16.receiver = self;
  v16.super_class = CBALSNode;
  v19 = [(CBALSNode *)&v16 init];
  if (v19)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBALSNode", "default");
    v19->_logHandle = v3;
    if (!v19->_logHandle)
    {
      v10 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v15 = v10;
      v14 = 16;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v13, 2u);
      }
    }

    v19->_alsService = v17;
    CFRetain(v19->_alsService);
    v19->_alsIOService = 0;
    valuePtr = 0;
    number = IOHIDServiceClientGetRegistryID(v19->_alsService);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr)
      {
        mainPort = *MEMORY[0x1E696CD60];
        v4 = IORegistryEntryIDMatching(valuePtr);
        MatchingService = IOServiceGetMatchingService(mainPort, v4);
        v19->_alsIOService = MatchingService;
      }
    }

    [(CBALSNode *)v19 initALSProperties];
  }

  return v19;
}

- (BOOL)useCopyEventOnDisplayWake
{
  v3 = 1;
  if (self->_sensorType != 8)
  {
    return self->_sensorType == 9;
  }

  return v3;
}

- (BOOL)handleALSEvent:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if (a3 && [a3 service] == self->_alsService)
  {
    if (self->_currentALSEvent)
    {
      MEMORY[0x1E69E5920](self->_currentALSEvent);
    }

    else
    {
      [a3 setFirstALSSample:1];
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v9, a3);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "%@", v9, 0xCu);
    }

    self->_currentALSEvent = MEMORY[0x1E69E5928](a3);
    v6 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (__IOHIDEvent)copyEvent
{
  v12 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!self->_colorSupport || (memset(&v11[15], 0, 0xA9uLL), mach_absolute_time(), (cf = IOHIDEventCreateVendorDefinedEvent()) != 0))
  {
    alsService = self->_alsService;
    v7 = IOHIDServiceClientCopyEvent();
    if (cf)
    {
      CFRelease(cf);
    }

    v6 = [[CBALSEvent alloc] initWithHIDEvent:v7 andNode:self];
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
      __os_log_helper_16_2_1_8_66(v11, v6);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Copied ALS: %{public}@", v11, 0xCu);
    }

    MEMORY[0x1E69E5920](v6);
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyALSEvent
{
  cf = [(CBALSNode *)self copyEvent];
  if (!cf)
  {
    return 0;
  }

  v3 = [[CBALSEvent alloc] initWithHIDEvent:cf andNode:self];
  CFRelease(cf);
  return v3;
}

- (id)copyALSEventWithinTimeout:(float)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = [(CBALSNode *)self copyEvent];
  if (v10)
  {
    v9 = [[CBALSEvent alloc] initWithHIDEvent:v10 andNode:self];
    CFRelease(v10);
    v8 = mach_time_now_in_seconds();
    [(CBHIDEvent *)v9 timestamp];
    if (fabs((v3 - v8)) >= a3)
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

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        [(CBHIDEvent *)v9 timestamp];
        __os_log_helper_16_0_1_8_0(v14, COERCE__INT64(fabs((v4 - v8))));
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Copied ALS event is stale (%f secs).", v14, 0xCu);
      }

      MEMORY[0x1E69E5920](v9);
      v9 = 0;
    }

    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v13;
}

- (void)setReportInterval:(int)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = self;
  v7 = a2;
  valuePtr = a3;
  if (self->_logHandle)
  {
    logHandle = v8->_logHandle;
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
    __os_log_helper_16_2_2_4_0_8_64(v9, valuePtr, v8);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Setting report interval to %d for ALS: %@", v9, 0x12u);
  }

  property = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (property)
  {
    IOHIDServiceClientSetProperty(v8->_alsService, @"ReportInterval", property);
    CFRelease(property);
  }

  *MEMORY[0x1E69E9840];
}

- (int)getReportInterval
{
  v4 = IOHIDServiceClientCopyProperty(self->_alsService, @"ReportInterval");
  if (v4)
  {
    v3 = [v4 intValue];
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1E69E5920](v4);
  return v3;
}

@end