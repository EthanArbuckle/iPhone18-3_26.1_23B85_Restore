@interface CBDisplayModuleHIDiOS
- (BOOL)getNits:(float *)a3;
- (BOOL)handleDisplayBrightnessProperty:(id)a3;
- (BOOL)handleDisplayLinearBrightnessProperty:(id)a3;
- (BOOL)handleDisplayProductIDProperty:(id)a3;
- (BOOL)handleDisplayVendorIDProperty:(id)a3;
- (BOOL)setNits:(float)a3 withPeriod:(float)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)setSlider:(float)a3;
- (CBDisplayModuleHIDiOS)initWithDevice:(unsigned int)a3 andQueue:(id)a4;
- (float)getLinearBrightness;
- (float)getNitsForUserBrightness:(float)a3;
- (float)getUserBrightnessForNits:(float)a3;
- (id)copyIdentifiers;
- (id)copyPropertyInternalForKey:(id)a3;
- (id)newDisplayBrightnessData;
- (void)dealloc;
- (void)sendNotificationForKey:(id)a3 withValue:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation CBDisplayModuleHIDiOS

- (CBDisplayModuleHIDiOS)initWithDevice:(unsigned int)a3 andQueue:(id)a4
{
  v109 = *MEMORY[0x1E69E9840];
  v102 = self;
  v101 = a2;
  v100 = a3;
  v99 = a4;
  if (!a3 || !v99)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v98 = inited;
    v97 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v98;
      type = v97;
      __os_log_helper_16_0_0(v96);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "invalid input", v96, 2u);
    }

LABEL_141:
    MEMORY[0x1E69E5920](v102);
    v102 = 0;
    v103 = 0;
    goto LABEL_142;
  }

  v95.receiver = v102;
  v95.super_class = CBDisplayModuleHIDiOS;
  v102 = [(CBDisplayModuleHIDiOS *)&v95 init];
  if (v102)
  {
    *(v102 + 5) = os_log_create("com.apple.CoreBrightness.HIDDisplay", "default");
    *(v102 + 6) = v99;
    dispatch_retain(*(v102 + 6));
    *(v102 + 14) = dispatch_queue_create("CBDisplayModuleHID - Brightness", 0);
    if (!*(v102 + 14))
    {
      if (*(v102 + 5))
      {
        v48 = *(v102 + 5);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v47 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v47 = init_default_corebrightness_log();
        }

        v48 = v47;
      }

      v94 = v48;
      v93 = 16;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v45 = v94;
        v46 = v93;
        __os_log_helper_16_0_0(v92);
        _os_log_error_impl(&dword_1DE8E5000, v45, v46, "error: unable to create CBDisplayModuleHID - Brightness queue", v92, 2u);
      }

      goto LABEL_141;
    }

    v91 = [CBPreferencesHandler copyPreferenceForAllUsersForKey:@"DISABLE_HID_INTERFACE"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v102[132] = [v91 BOOLValue];
      if (*(v102 + 5))
      {
        v44 = *(v102 + 5);
      }

      else
      {
        v43 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v44 = v43;
      }

      v90 = v44;
      v89 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v108, v102[132] & 1);
        _os_log_impl(&dword_1DE8E5000, v90, v89, "loaded no-HID override from preferences (%d)", v108, 8u);
      }
    }

    MEMORY[0x1E69E5920](v91);
    v88 = IORegistryEntrySearchCFProperty(v100, "IOService", @"ProductID", *MEMORY[0x1E695E480], 2u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v102 + 20) = [v88 unsignedIntegerValue];
    }

    else
    {
      if (*(v102 + 5))
      {
        v42 = *(v102 + 5);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v41 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v41 = init_default_corebrightness_log();
        }

        v42 = v41;
      }

      v87 = v42;
      v86 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v39 = v87;
        v40 = v86;
        __os_log_helper_16_0_0(v85);
        _os_log_error_impl(&dword_1DE8E5000, v39, v40, "error: failed to retrieve PID", v85, 2u);
      }
    }

    MEMORY[0x1E69E5920](v88);
    v84 = IORegistryEntrySearchCFProperty(v100, "IOService", @"VendorID", *MEMORY[0x1E695E480], 2u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v102 + 19) = [v84 unsignedIntegerValue];
    }

    else
    {
      if (*(v102 + 5))
      {
        v38 = *(v102 + 5);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v37 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v37 = init_default_corebrightness_log();
        }

        v38 = v37;
      }

      v83 = v38;
      v82 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v35 = v83;
        v36 = v82;
        __os_log_helper_16_0_0(v81);
        _os_log_error_impl(&dword_1DE8E5000, v35, v36, "error: failed to retrieve VID", v81, 2u);
      }
    }

    MEMORY[0x1E69E5920](v84);
    if (*(v102 + 5))
    {
      v34 = *(v102 + 5);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v33 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v33 = init_default_corebrightness_log();
      }

      v34 = v33;
    }

    v80 = v34;
    v79 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v107, *(v102 + 19), *(v102 + 20));
      _os_log_impl(&dword_1DE8E5000, v80, v79, "VID = %lu | PID = %lu", v107, 0x16u);
    }

    *(v102 + 4) = IOHIDDeviceCreate(*MEMORY[0x1E695E480], v100);
    if (!*(v102 + 4))
    {
      if (*(v102 + 5))
      {
        v32 = *(v102 + 5);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v31 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v31 = init_default_corebrightness_log();
        }

        v32 = v31;
      }

      v78 = v32;
      v77 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v29 = v78;
        v30 = v77;
        __os_log_helper_16_0_0(v76);
        _os_log_error_impl(&dword_1DE8E5000, v29, v30, "error: unable to create IOHIDDevice", v76, 2u);
      }

      goto LABEL_141;
    }

    if (IOHIDDeviceOpen(*(v102 + 4), 0))
    {
      if (*(v102 + 5))
      {
        v28 = *(v102 + 5);
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

      v75 = v28;
      v74 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v25 = v75;
        v26 = v74;
        __os_log_helper_16_0_0(v73);
        _os_log_error_impl(&dword_1DE8E5000, v25, v26, "error: unable to open IOHIDDevice", v73, 2u);
      }

      goto LABEL_141;
    }

    v72 = IORegistryEntrySearchCFProperty(v100, "IOService", @"kUSBContainerID", *MEMORY[0x1E695E480], 3u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v102 + 7) = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v72];
    }

    MEMORY[0x1E69E5920](v72);
    *(v102 + 10) = IOHIDDeviceCopyMatchingElements(*(v102 + 4), 0, 0);
    v4 = *(v102 + 10);
    v66 = MEMORY[0x1E69E9820];
    v67 = -1073741824;
    v68 = 0;
    v69 = __49__CBDisplayModuleHIDiOS_initWithDevice_andQueue___block_invoke;
    v70 = &unk_1E867B668;
    v71 = v102;
    [v4 enumerateObjectsUsingBlock:?];
    if (!*(v102 + 9))
    {
      if (*(v102 + 5))
      {
        v24 = *(v102 + 5);
      }

      else
      {
        v23 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v24 = v23;
      }

      oslog = v24;
      v64 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v21 = oslog;
        v22 = v64;
        __os_log_helper_16_0_0(v63);
        _os_log_impl(&dword_1DE8E5000, v21, v22, "duration element isn't available", v63, 2u);
      }
    }

    if (!*(v102 + 8))
    {
      if (*(v102 + 5))
      {
        v12 = *(v102 + 5);
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

      v54 = v12;
      v53 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v9 = v54;
        v10 = v53;
        __os_log_helper_16_0_0(v52);
        _os_log_error_impl(&dword_1DE8E5000, v9, v10, "error: can't find brightness element - abort", v52, 2u);
      }

      goto LABEL_141;
    }

    UnitExponent = IOHIDElementGetUnitExponent(*(v102 + 8));
    *(v102 + 23) = IOHIDElementGetPhysicalMax(*(v102 + 8));
    *(v102 + 22) = IOHIDElementGetPhysicalMin(*(v102 + 8));
    *(v102 + 25) = 1120403456;
    if (*(v102 + 23) > 2000.0)
    {
      if (UnitExponent)
      {
        v5 = scaleForExponent(UnitExponent);
        *(v102 + 25) = v5;
        if (*(v102 + 25) > 0.0)
        {
          *(v102 + 23) = *(v102 + 23) / *(v102 + 25);
          *(v102 + 22) = *(v102 + 22) / *(v102 + 25);
        }
      }
    }

    if (*(v102 + 5))
    {
      v20 = *(v102 + 5);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v19 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v19 = init_default_corebrightness_log();
      }

      v20 = v19;
    }

    v61 = v20;
    v60 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_4_0(v106, COERCE__INT64(*(v102 + 23)), COERCE__INT64(*(v102 + 22)), COERCE__INT64(*(v102 + 25)), UnitExponent);
      _os_log_impl(&dword_1DE8E5000, v61, v60, "maxNits = %f, minNits = %f, nitsScaler = %f, exponent = %d", v106, 0x26u);
    }

    if (*(v102 + 23) <= 0.0)
    {
      if (*(v102 + 5))
      {
        v18 = *(v102 + 5);
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

      v59 = v18;
      v58 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_8_0(v105, COERCE__INT64(*(v102 + 23)));
        _os_log_error_impl(&dword_1DE8E5000, v59, v58, "error: max nits (%f) - defaulting", v105, 0xCu);
      }

      *(v102 + 26) = 981668463;
    }

    else
    {
      *(v102 + 26) = *(v102 + 22) / *(v102 + 23);
    }

    if (([v102 getNits:v102 + 96] & 1) == 0)
    {
      if (*(v102 + 5))
      {
        v16 = *(v102 + 5);
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

      v57 = v16;
      v56 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v13 = v57;
        v14 = v56;
        __os_log_helper_16_0_0(v55);
        _os_log_error_impl(&dword_1DE8E5000, v13, v14, "error: failed to retrieve current nits - defaulting to 150 nits", v55, 2u);
      }

      *(v102 + 24) = 1125515264;
    }

    if (*(v102 + 5))
    {
      v8 = *(v102 + 5);
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v104, COERCE__INT64(*(v102 + 24)), COERCE__INT64(*(v102 + 22)), COERCE__INT64(*(v102 + 23)));
      _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_INFO, "brightness: current=%f min=%f max=%f", v104, 0x20u);
    }
  }

  v103 = v102;
LABEL_142:
  *MEMORY[0x1E69E9840];
  return v103;
}

CFTypeID __49__CBDisplayModuleHIDiOS_initWithDevice_andQueue___block_invoke(uint64_t a1, void *a2)
{
  v5 = CFGetTypeID(a2);
  TypeID = IOHIDElementGetTypeID();
  result = v5;
  if (v5 == TypeID)
  {
    if (IOHIDElementGetType(a2) == kIOHIDElementTypeFeature && IOHIDElementGetUsage(a2) == 16 && (result = IOHIDElementGetUsagePage(a2), result == 130))
    {
      *(*(a1 + 32) + 64) = a2;
    }

    else
    {
      result = IOHIDElementGetType(a2);
      if (result == 257)
      {
        result = IOHIDElementGetUsage(a2);
        if (result == 80)
        {
          result = IOHIDElementGetUsagePage(a2);
          if (result == 15)
          {
            *(*(a1 + 32) + 72) = a2;
          }
        }
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = self;
  v13 = a2;
  if (self->_elements)
  {
    memset(__b, 0, sizeof(__b));
    obj = v14->_elements;
    v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v12 = 0;
        v12 = *(__b[1] + 8 * v6);
        TypeID = IOHIDElementGetTypeID();
        if (TypeID == CFGetTypeID(v12))
        {
          _IOHIDElementSetValue();
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x1E69E5920](v14->_elements);
  }

  if (v14->_queue)
  {
    dispatch_release(v14->_queue);
    v14->_queue = 0;
  }

  if (v14->_brightnessUpdateQueue)
  {
    dispatch_release(v14->_brightnessUpdateQueue);
    v14->_brightnessUpdateQueue = 0;
  }

  if (v14->_logHandle)
  {
    MEMORY[0x1E69E5920](v14->_logHandle);
    v14->_logHandle = 0;
  }

  if (v14->_hidDisplayDevice)
  {
    IOHIDDeviceClose(v14->_hidDisplayDevice, 0);
    CFRelease(v14->_hidDisplayDevice);
    v14->_hidDisplayDevice = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](v14->_containerID).n128_u64[0];
  v10.receiver = v14;
  v10.super_class = CBDisplayModuleHIDiOS;
  [(CBModule *)&v10 dealloc];
  *MEMORY[0x1E69E9840];
}

- (void)start
{
  v18 = self;
  v17 = a2;
  if (self->_logHandle)
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

  v16 = logHandle;
  v15 = 1;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    log = v16;
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v14, 2u);
  }

  v13 = [(CBDisplayModuleHIDiOS *)v18 newDisplayBrightnessData];
  if (v13)
  {
    [(CBDisplayModuleHIDiOS *)v18 sendNotificationForKey:@"DisplayBrightness" withValue:v13];
  }

  else
  {
    if (v18->_logHandle)
    {
      v5 = v18->_logHandle;
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

    v12 = v5;
    v11 = 16;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v2 = v12;
      v3 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_1DE8E5000, v2, v3, "failed to create display data structure", v10, 2u);
    }
  }

  MEMORY[0x1E69E5920](v13);
}

- (void)stop
{
  v10 = self;
  v9 = a2;
  if (self->_logHandle)
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
  v7 = 1;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v6, 2u);
  }
}

- (id)newDisplayBrightnessData
{
  v16 = self;
  v15 = a2;
  v14 = 0;
  v8 = 0x1E696A000uLL;
  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  v9 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
  *&v3 = v16->_currentNits;
  v13 = [v2 initWithFloat:v3];
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v5 = v16->_currentNits;
  v12 = [v4 initWithFloat:v5];
  v10 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = v16->_currentNits;
  [(CBDisplayModuleHIDiOS *)v16 getUserBrightnessForNits:v6];
  v11 = [v10 initWithFloat:?];
  if (v13 && v12 && v11)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v11, @"Brightness", v12, @"NitsPhysical", v13, @"Nits", 0}];
  }

  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v11);
  return v14;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if ([a4 isEqualToString:@"DisplayBrightness2"])
  {
    v9 = [(CBDisplayModuleHIDiOS *)self handleDisplayBrightnessProperty:a3];
  }

  else if ([a4 isEqualToString:@"DISABLE_HID_INTERFACE"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_noHID = [a3 BOOLValue];
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
        __os_log_helper_16_0_1_4_0(v14, self->_noHID);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "setting no-HID override to %d", v14, 8u);
      }

      v9 = [CBPreferencesHandler storePreferenceForAllUsersForKey:@"DISABLE_HID_INTERFACE" andValue:a3];
    }
  }

  else if ([a4 isEqualToString:@"DisplayBrightnessLinear"])
  {
    v9 = [(CBDisplayModuleHIDiOS *)self handleDisplayLinearBrightnessProperty:a3];
  }

  else if ([a4 isEqualToString:@"CBDisplayVendorID"])
  {
    v9 = [(CBDisplayModuleHIDiOS *)self handleDisplayVendorIDProperty:a3];
  }

  else if ([a4 isEqualToString:@"CBDisplayProductID"])
  {
    v9 = [(CBDisplayModuleHIDiOS *)self handleDisplayProductIDProperty:a3];
  }

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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_64_8_64_4_0(v13, a4, a3, v9);
    _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ result=%d", v13, 0x1Cu);
  }

  *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)handleDisplayProductIDProperty:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_displayPID = [a3 unsignedIntegerValue];
  }

  return 0;
}

- (BOOL)handleDisplayVendorIDProperty:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_displayVID = [a3 unsignedIntegerValue];
  }

  return 0;
}

- (BOOL)handleDisplayLinearBrightnessProperty:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    v6 = [(CBDisplayModuleHIDiOS *)self setLinearBrightness:?];
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
    __os_log_helper_16_2_2_8_64_4_0(v9, a3, v6);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "data=%@ result=%d", v9, 0x12u);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)handleDisplayBrightnessProperty:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    v8 = [(CBDisplayModuleHIDiOS *)self setSlider:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [a3 objectForKey:@"Brightness"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 floatValue];
        v8 = [(CBDisplayModuleHIDiOS *)self setSlider:?];
      }

      else
      {
        v7 = [a3 objectForKey:@"Nits"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 floatValue];
          v8 = [(CBDisplayModuleHIDiOS *)self setNits:?];
        }
      }
    }
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
    __os_log_helper_16_2_2_8_64_4_0(v11, a3, v8);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "data=%@ result=%d", v11, 0x12u);
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

- (float)getLinearBrightness
{
  if (self->_maxNits <= 0.0)
  {
    return 0.0;
  }

  else
  {
    return self->_currentNits / self->_maxNits;
  }
}

- (BOOL)setSlider:(float)a3
{
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0.0;
  }

  v3 = v7;
  if (v3 <= 1.0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1.0;
  }

  HIDWORD(v4) = HIDWORD(v6);
  *&v4 = v6;
  [(CBDisplayModuleHIDiOS *)self getNitsForUserBrightness:v4];
  return [(CBDisplayModuleHIDiOS *)self setNits:?];
}

- (BOOL)setNits:(float)a3 withPeriod:(float)a4
{
  v33 = self;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = 1;
  minNits = self->_minNits;
  v27 = a3;
  if (minNits >= a3)
  {
    v11 = minNits;
  }

  else
  {
    v11 = v27;
  }

  v26 = v11;
  v31 = v11;
  maxNits = v33->_maxNits;
  v24 = v11;
  if (maxNits >= v11)
  {
    v10 = v24;
  }

  else
  {
    v10 = maxNits;
  }

  v23 = v10;
  v31 = v10;
  ++v33->_brighntessUpdateCounter;
  v33->_brightnessUpdateTarget = v31;
  v33->_currentNits = v31;
  if (v33->_brighntessUpdateCounter == 1)
  {
    brightnessUpdateQueue = v33->_brightnessUpdateQueue;
    block = MEMORY[0x1E69E9820];
    v16 = -1073741824;
    v17 = 0;
    v18 = __44__CBDisplayModuleHIDiOS_setNits_withPeriod___block_invoke;
    v19 = &unk_1E867B9D8;
    v20 = v33;
    v21 = v30;
    v22 = v31;
    dispatch_async(brightnessUpdateQueue, &block);
  }

  else
  {
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

    oslog = logHandle;
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      log = oslog;
      v7 = type;
      __os_log_helper_16_0_0(v12);
      _os_log_debug_impl(&dword_1DE8E5000, log, v7, "dropping previous brightness setting", v12, 2u);
    }
  }

  return v29 & 1;
}

void __44__CBDisplayModuleHIDiOS_setNits_withPeriod___block_invoke(uint64_t a1)
{
  v37 = a1;
  v36 = a1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x20000000;
  v34 = 32;
  v35 = 0;
  v2 = *(*(a1 + 32) + 48);
  block = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __44__CBDisplayModuleHIDiOS_setNits_withPeriod___block_invoke_2;
  v26 = &unk_1E867BC80;
  v27 = *(a1 + 32);
  v28 = &v31;
  v29 = *(a1 + 40);
  v30 = *(a1 + 44);
  dispatch_sync(v2, &block);
  if (v32[3])
  {
    if (*(*(a1 + 32) + 132))
    {
      if (*(*(a1 + 32) + 40))
      {
        v7 = *(*(a1 + 32) + 40);
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

      oslog = v7;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v5 = type;
        __os_log_helper_16_0_0(v9);
        _os_log_error_impl(&dword_1DE8E5000, log, v5, "WORKAROUND: Skipping the nit update in the HID interface - CA is expected to handle this in PQ", v9, 2u);
      }
    }

    else
    {
      v21 = IOHIDTransactionCommit(v32[3]);
      v3 = *(*(a1 + 32) + 48);
      v12 = MEMORY[0x1E69E9820];
      v13 = -1073741824;
      v14 = 0;
      v15 = __44__CBDisplayModuleHIDiOS_setNits_withPeriod___block_invoke_46;
      v16 = &unk_1E867BF80;
      v18 = v21;
      v17 = *(a1 + 32);
      v19 = *(a1 + 44);
      v20 = *(a1 + 40);
      dispatch_sync(v3, &v12);
    }

    CFRelease(v32[3]);
  }

  _Block_object_dispose(&v31, 8);
}

void __44__CBDisplayModuleHIDiOS_setNits_withPeriod___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = a1;
  v34 = a1;
  if (*(*(a1 + 32) + 120))
  {
    *(*(*(a1 + 40) + 8) + 24) = IOHIDTransactionCreate(*MEMORY[0x1E695E480], *(*(a1 + 32) + 32), kIOHIDTransactionDirectionTypeOutput, 0);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      IOHIDTransactionAddElement(*(*(*(a1 + 40) + 8) + 24), *(*(a1 + 32) + 64));
      v24 = *MEMORY[0x1E695E480];
      v23 = *(*(a1 + 32) + 64);
      v1 = mach_absolute_time();
      v33 = IOHIDValueCreateWithIntegerValue(v24, v23, v1, (*(*(a1 + 32) + 128) * *(*(a1 + 32) + 100)));
      if (v33)
      {
        IOHIDTransactionSetValue(*(*(*(a1 + 40) + 8) + 24), *(*(a1 + 32) + 64), v33, 0);
        CFRelease(v33);
      }

      if (*(*(a1 + 32) + 72))
      {
        IOHIDTransactionAddElement(*(*(*(a1 + 40) + 8) + 24), *(*(a1 + 32) + 72));
        allocator = *MEMORY[0x1E695E480];
        element = *(*(a1 + 32) + 72);
        v2 = mach_absolute_time();
        v32 = IOHIDValueCreateWithIntegerValue(allocator, element, v2, (*(a1 + 48) * 1000.0));
        if (v32)
        {
          IOHIDTransactionSetValue(*(*(*(a1 + 40) + 8) + 24), *(*(a1 + 32) + 72), v32, 0);
          CFRelease(v32);
        }
      }

      context = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v18 = MEMORY[0x1E696AD98];
      LODWORD(v3) = v19[24];
      [v19 getUserBrightnessForNits:v3];
      [v19 sendNotificationForKey:@"DisplayBrightness2" withValue:{objc_msgSend(v18, "numberWithFloat:")}];
      objc_autoreleasePoolPop(context);
      if (*(*(a1 + 32) + 40))
      {
        v17 = *(*(a1 + 32) + 40);
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

        v17 = inited;
      }

      v31 = v17;
      v30 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_2_8_0_8_0(v38, COERCE__INT64(*(a1 + 52)), COERCE__INT64(*(a1 + 48)));
        _os_log_impl(&dword_1DE8E5000, v31, v30, "nits=%f period=%f", v38, 0x16u);
      }

      v15 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v12 = MEMORY[0x1E696AD98];
      LODWORD(v4) = v13[24];
      [v13 getUserBrightnessForNits:v4];
      [v13 sendNotificationForKey:@"DisplayBrightness2" withValue:{objc_msgSend(v12, "numberWithFloat:")}];
      v36[0] = @"Brightness";
      v14 = MEMORY[0x1E696AD98];
      LODWORD(v5) = *(*(a1 + 32) + 96);
      [*(a1 + 32) getUserBrightnessForNits:v5];
      v37[0] = [v14 numberWithFloat:?];
      v36[1] = @"Nits";
      LODWORD(v6) = *(*(a1 + 32) + 96);
      v37[1] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
      v36[2] = @"NitsPhysical";
      LODWORD(v7) = *(*(a1 + 32) + 96);
      v37[2] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
      [*(a1 + 32) sendNotificationForKey:@"DisplayBrightness" withValue:v29];
      objc_autoreleasePoolPop(v15);
    }

    else
    {
      if (*(*(a1 + 32) + 40))
      {
        v11 = *(*(a1 + 32) + 40);
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

      v28 = v11;
      v27 = 16;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v8 = v28;
        v9 = v27;
        __os_log_helper_16_0_0(v26);
        _os_log_error_impl(&dword_1DE8E5000, v8, v9, "error: failed to create transaction", v26, 2u);
      }
    }
  }

  *(*(a1 + 32) + 120) = 0;
  *MEMORY[0x1E69E9840];
}

void __44__CBDisplayModuleHIDiOS_setNits_withPeriod___block_invoke_46(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    if (*(*(a1 + 32) + 40))
    {
      v2 = *(*(a1 + 32) + 40);
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

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v6, *(a1 + 40));
      _os_log_error_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_ERROR, "error 0x%x: failed to commit nits", v6, 8u);
    }
  }

  else
  {
    if (*(*(a1 + 32) + 40))
    {
      v4 = *(*(a1 + 32) + 40);
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

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_8_0_8_0(v7, COERCE__INT64(*(a1 + 44)), COERCE__INT64(*(a1 + 48)));
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "setting %f nits over %fs", v7, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)getNits:(float *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = self;
  v36 = a2;
  v35 = a3;
  v34 = 0;
  v33 = IOHIDTransactionCreate(*MEMORY[0x1E695E480], self->_hidDisplayDevice, kIOHIDTransactionDirectionTypeInput, 0);
  if (v33)
  {
    IOHIDTransactionAddElement(v33, v37->_brightnessElement);
    v32 = -536870212;
    v31 = 0;
    do
    {
      v32 = IOHIDTransactionCommit(v33);
      if (v32)
      {
        if (v37->_logHandle)
        {
          logHandle = v37->_logHandle;
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
        v29 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_4_0(v40, v32);
          _os_log_error_impl(&dword_1DE8E5000, v30, v29, "failed to commit transaction 0x%x", v40, 8u);
        }

        if (v32 != -536850432)
        {
          ++v31;
        }

        if (v31 < 9)
        {
          v28 = MEMORY[0x1E69E9C10];
          v27 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_4_0(v39, v31);
            _os_log_error_impl(&dword_1DE8E5000, v28, v27, "retrying commit attempt No.%d", v39, 8u);
          }

          usleep(0xC350u);
        }
      }

      else
      {
        v31 = 9;
      }
    }

    while (v31 < 9);
    Value = IOHIDTransactionGetValue(v33, v37->_brightnessElement, 0);
    if (Value)
    {
      ScaledValue = IOHIDValueGetScaledValue(Value, 2u);
      v25 = ScaledValue;
      if (ScaledValue > v37->_maxNits || v25 < v37->_minNits)
      {
        if (v37->_logHandle)
        {
          v14 = v37->_logHandle;
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

        v24 = v14;
        v23 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_3_8_0_8_0_8_0(v38, COERCE__INT64(v25), COERCE__INT64(v37->_minNits), COERCE__INT64(v37->_maxNits));
          _os_log_error_impl(&dword_1DE8E5000, v24, v23, "error: value (%f) out of bounds (%f-%f)", v38, 0x20u);
        }
      }

      else
      {
        v34 = 1;
        *v35 = v25;
      }
    }

    else
    {
      if (v37->_logHandle)
      {
        v12 = v37->_logHandle;
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

      v22 = v12;
      v21 = 16;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v9 = v22;
        v10 = v21;
        __os_log_helper_16_0_0(v20);
        _os_log_error_impl(&dword_1DE8E5000, v9, v10, "error: invalid value", v20, 2u);
      }
    }

    CFRelease(v33);
  }

  else
  {
    if (v37->_logHandle)
    {
      v8 = v37->_logHandle;
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
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v5 = oslog;
      v6 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_error_impl(&dword_1DE8E5000, v5, v6, "error: failed to create transaction", v17, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
  return v34 & 1;
}

- (id)copyPropertyInternalForKey:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = 0;
  if ([a3 isEqualToString:@"StatusInfo"])
  {
    v23 = [CBStatusInfoHelper copyStatusInfoFor:v27];
    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v23, @"CBDisplayModuleHIDiOS", 0}];
    }

    MEMORY[0x1E69E5920](v23);
  }

  else
  {
    if ([v25 isEqualToString:@"DisplayBrightness2"])
    {
      v20 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v3 = v27->_currentNits;
      [(CBDisplayModuleHIDiOS *)v27 getUserBrightnessForNits:v3];
      v24 = [v20 initWithFloat:?];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"DisplayBrightnessLinear"])
    {
      v19 = objc_alloc(MEMORY[0x1E696AD98]);
      [(CBDisplayModuleHIDiOS *)v27 getLinearBrightness];
      v24 = [v19 initWithFloat:?];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"DisplayBrightnessLinearMin"])
    {
      v4 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v5 = v27->_minLinearBrightness;
      v24 = [v4 initWithFloat:v5];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"DisplayNitsKey"] & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"NitsPhysical"))
    {
      v6 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v7 = v27->_currentNits;
      v24 = [v6 initWithFloat:v7];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"DisplayBrightness"])
    {
      v24 = [(CBDisplayModuleHIDiOS *)v27 newDisplayBrightnessData];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"DisplayBrightness2Available"])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"DisplayBrightnessMin"])
    {
      v8 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v9 = v27->_minNits;
      v24 = [v8 initWithFloat:v9];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"DisplayBrightnessMax"])
    {
      v10 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v11 = v27->_maxNits;
      v24 = [v10 initWithFloat:v11];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"kUSBContainerID"])
    {
      goto LABEL_23;
    }

    if ([v25 isEqualToString:@"CBDisplayVendorID"])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v27->_displayVID];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"CBDisplayProductID"])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v27->_displayPID];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"DisplayUniqueID"])
    {
LABEL_23:
      v24 = [(NSUUID *)v27->_containerID copy];
      goto LABEL_31;
    }

    if ([v25 isEqualToString:@"DISABLE_HID_INTERFACE"])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v27->_noHID];
    }
  }

LABEL_31:
  if (v27->_logHandle)
  {
    logHandle = v27->_logHandle;
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
  v21 = 0;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v22;
    *type = v21;
    buf = v28;
    __os_log_helper_16_2_2_8_64_8_64(v28, v25, v24);
    _os_log_impl(&dword_1DE8E5000, log, type[0], "key=%@ result=%@", buf, 0x16u);
  }

  v13 = v24;
  *MEMORY[0x1E69E9840];
  return v24;
}

- (id)copyIdentifiers
{
  v4 = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"DisplayBrightness2", @"DisplayBrightnessLinear", @"DisplayBrightnessLinearMin", @"DisplayNitsKey", @"NitsPhysical", @"DisplayBrightness", @"DisplayBrightness2Available", @"DisplayBrightnessMin", @"DisplayBrightnessMax", @"kUSBContainerID", 0}];
}

- (void)sendNotificationForKey:(id)a3 withValue:(id)a4
{
  if (self->super.super._notificationBlock)
  {
    (*(self->super.super._notificationBlock + 2))();
  }
}

- (float)getNitsForUserBrightness:(float)a3
{
  if (a3 <= 1.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 1.0;
  }

  if (v6 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v6;
  }

  maxNits = self->_maxNits;
  return maxNits * powf(maxNits / self->_minNits, v5 - 1.0);
}

- (float)getUserBrightnessForNits:(float)a3
{
  if (self->_maxNits >= a3)
  {
    maxNits = a3;
  }

  else
  {
    maxNits = self->_maxNits;
  }

  if (self->_minNits >= maxNits)
  {
    minNits = self->_minNits;
  }

  else
  {
    minNits = maxNits;
  }

  v6 = logf(self->_maxNits / self->_minNits);
  return (logf(minNits / self->_maxNits) / v6) + 1.0;
}

@end