@interface CBDisplayModuleHIDiOS
- (BOOL)getNits:(float *)nits;
- (BOOL)handleDisplayBrightnessProperty:(id)property;
- (BOOL)handleDisplayLinearBrightnessProperty:(id)property;
- (BOOL)handleDisplayProductIDProperty:(id)property;
- (BOOL)handleDisplayVendorIDProperty:(id)property;
- (BOOL)setNits:(float)nits withPeriod:(float)period;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)setSlider:(float)slider;
- (CBDisplayModuleHIDiOS)initWithDevice:(unsigned int)device andQueue:(id)queue;
- (float)getLinearBrightness;
- (float)getNitsForUserBrightness:(float)brightness;
- (float)getUserBrightnessForNits:(float)nits;
- (id)copyIdentifiers;
- (id)copyPropertyInternalForKey:(id)key;
- (id)newDisplayBrightnessData;
- (void)dealloc;
- (void)sendNotificationForKey:(id)key withValue:(id)value;
- (void)start;
- (void)stop;
@end

@implementation CBDisplayModuleHIDiOS

- (CBDisplayModuleHIDiOS)initWithDevice:(unsigned int)device andQueue:(id)queue
{
  v109 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v101 = a2;
  deviceCopy = device;
  queueCopy = queue;
  if (!device || !queueCopy)
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
    MEMORY[0x1E69E5920](selfCopy);
    selfCopy = 0;
    v103 = 0;
    goto LABEL_142;
  }

  v95.receiver = selfCopy;
  v95.super_class = CBDisplayModuleHIDiOS;
  selfCopy = [(CBDisplayModuleHIDiOS *)&v95 init];
  if (selfCopy)
  {
    *(selfCopy + 5) = os_log_create("com.apple.CoreBrightness.HIDDisplay", "default");
    *(selfCopy + 6) = queueCopy;
    dispatch_retain(*(selfCopy + 6));
    *(selfCopy + 14) = dispatch_queue_create("CBDisplayModuleHID - Brightness", 0);
    if (!*(selfCopy + 14))
    {
      if (*(selfCopy + 5))
      {
        v48 = *(selfCopy + 5);
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
      selfCopy[132] = [v91 BOOLValue];
      if (*(selfCopy + 5))
      {
        v44 = *(selfCopy + 5);
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
        __os_log_helper_16_0_1_4_0(v108, selfCopy[132] & 1);
        _os_log_impl(&dword_1DE8E5000, v90, v89, "loaded no-HID override from preferences (%d)", v108, 8u);
      }
    }

    MEMORY[0x1E69E5920](v91);
    v88 = IORegistryEntrySearchCFProperty(deviceCopy, "IOService", @"ProductID", *MEMORY[0x1E695E480], 2u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(selfCopy + 20) = [v88 unsignedIntegerValue];
    }

    else
    {
      if (*(selfCopy + 5))
      {
        v42 = *(selfCopy + 5);
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
    v84 = IORegistryEntrySearchCFProperty(deviceCopy, "IOService", @"VendorID", *MEMORY[0x1E695E480], 2u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(selfCopy + 19) = [v84 unsignedIntegerValue];
    }

    else
    {
      if (*(selfCopy + 5))
      {
        v38 = *(selfCopy + 5);
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
    if (*(selfCopy + 5))
    {
      v34 = *(selfCopy + 5);
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
      __os_log_helper_16_0_2_8_0_8_0(v107, *(selfCopy + 19), *(selfCopy + 20));
      _os_log_impl(&dword_1DE8E5000, v80, v79, "VID = %lu | PID = %lu", v107, 0x16u);
    }

    *(selfCopy + 4) = IOHIDDeviceCreate(*MEMORY[0x1E695E480], deviceCopy);
    if (!*(selfCopy + 4))
    {
      if (*(selfCopy + 5))
      {
        v32 = *(selfCopy + 5);
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

    if (IOHIDDeviceOpen(*(selfCopy + 4), 0))
    {
      if (*(selfCopy + 5))
      {
        v28 = *(selfCopy + 5);
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

    v72 = IORegistryEntrySearchCFProperty(deviceCopy, "IOService", @"kUSBContainerID", *MEMORY[0x1E695E480], 3u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(selfCopy + 7) = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v72];
    }

    MEMORY[0x1E69E5920](v72);
    *(selfCopy + 10) = IOHIDDeviceCopyMatchingElements(*(selfCopy + 4), 0, 0);
    v4 = *(selfCopy + 10);
    v66 = MEMORY[0x1E69E9820];
    v67 = -1073741824;
    v68 = 0;
    v69 = __49__CBDisplayModuleHIDiOS_initWithDevice_andQueue___block_invoke;
    v70 = &unk_1E867B668;
    v71 = selfCopy;
    [v4 enumerateObjectsUsingBlock:?];
    if (!*(selfCopy + 9))
    {
      if (*(selfCopy + 5))
      {
        v24 = *(selfCopy + 5);
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

    if (!*(selfCopy + 8))
    {
      if (*(selfCopy + 5))
      {
        v12 = *(selfCopy + 5);
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

    UnitExponent = IOHIDElementGetUnitExponent(*(selfCopy + 8));
    *(selfCopy + 23) = IOHIDElementGetPhysicalMax(*(selfCopy + 8));
    *(selfCopy + 22) = IOHIDElementGetPhysicalMin(*(selfCopy + 8));
    *(selfCopy + 25) = 1120403456;
    if (*(selfCopy + 23) > 2000.0)
    {
      if (UnitExponent)
      {
        v5 = scaleForExponent(UnitExponent);
        *(selfCopy + 25) = v5;
        if (*(selfCopy + 25) > 0.0)
        {
          *(selfCopy + 23) = *(selfCopy + 23) / *(selfCopy + 25);
          *(selfCopy + 22) = *(selfCopy + 22) / *(selfCopy + 25);
        }
      }
    }

    if (*(selfCopy + 5))
    {
      v20 = *(selfCopy + 5);
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
      __os_log_helper_16_0_4_8_0_8_0_8_0_4_0(v106, COERCE__INT64(*(selfCopy + 23)), COERCE__INT64(*(selfCopy + 22)), COERCE__INT64(*(selfCopy + 25)), UnitExponent);
      _os_log_impl(&dword_1DE8E5000, v61, v60, "maxNits = %f, minNits = %f, nitsScaler = %f, exponent = %d", v106, 0x26u);
    }

    if (*(selfCopy + 23) <= 0.0)
    {
      if (*(selfCopy + 5))
      {
        v18 = *(selfCopy + 5);
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
        __os_log_helper_16_0_1_8_0(v105, COERCE__INT64(*(selfCopy + 23)));
        _os_log_error_impl(&dword_1DE8E5000, v59, v58, "error: max nits (%f) - defaulting", v105, 0xCu);
      }

      *(selfCopy + 26) = 981668463;
    }

    else
    {
      *(selfCopy + 26) = *(selfCopy + 22) / *(selfCopy + 23);
    }

    if (([selfCopy getNits:selfCopy + 96] & 1) == 0)
    {
      if (*(selfCopy + 5))
      {
        v16 = *(selfCopy + 5);
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

      *(selfCopy + 24) = 1125515264;
    }

    if (*(selfCopy + 5))
    {
      v8 = *(selfCopy + 5);
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
      __os_log_helper_16_0_3_8_0_8_0_8_0(v104, COERCE__INT64(*(selfCopy + 24)), COERCE__INT64(*(selfCopy + 22)), COERCE__INT64(*(selfCopy + 23)));
      _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_INFO, "brightness: current=%f min=%f max=%f", v104, 0x20u);
    }
  }

  v103 = selfCopy;
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
  selfCopy = self;
  v13 = a2;
  if (self->_elements)
  {
    memset(__b, 0, sizeof(__b));
    obj = selfCopy->_elements;
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

    MEMORY[0x1E69E5920](selfCopy->_elements);
  }

  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
    selfCopy->_queue = 0;
  }

  if (selfCopy->_brightnessUpdateQueue)
  {
    dispatch_release(selfCopy->_brightnessUpdateQueue);
    selfCopy->_brightnessUpdateQueue = 0;
  }

  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_hidDisplayDevice)
  {
    IOHIDDeviceClose(selfCopy->_hidDisplayDevice, 0);
    CFRelease(selfCopy->_hidDisplayDevice);
    selfCopy->_hidDisplayDevice = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_containerID).n128_u64[0];
  v10.receiver = selfCopy;
  v10.super_class = CBDisplayModuleHIDiOS;
  [(CBModule *)&v10 dealloc];
  *MEMORY[0x1E69E9840];
}

- (void)start
{
  selfCopy = self;
  v17 = a2;
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

  v16 = logHandle;
  v15 = 1;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    log = v16;
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v14, 2u);
  }

  newDisplayBrightnessData = [(CBDisplayModuleHIDiOS *)selfCopy newDisplayBrightnessData];
  if (newDisplayBrightnessData)
  {
    [(CBDisplayModuleHIDiOS *)selfCopy sendNotificationForKey:@"DisplayBrightness" withValue:newDisplayBrightnessData];
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v5 = selfCopy->_logHandle;
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

  MEMORY[0x1E69E5920](newDisplayBrightnessData);
}

- (void)stop
{
  selfCopy = self;
  v9 = a2;
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
  selfCopy = self;
  v15 = a2;
  v14 = 0;
  v8 = 0x1E696A000uLL;
  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  v9 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
  *&v3 = selfCopy->_currentNits;
  v13 = [v2 initWithFloat:v3];
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v5 = selfCopy->_currentNits;
  v12 = [v4 initWithFloat:v5];
  v10 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = selfCopy->_currentNits;
  [(CBDisplayModuleHIDiOS *)selfCopy getUserBrightnessForNits:v6];
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

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if ([key isEqualToString:@"DisplayBrightness2"])
  {
    v9 = [(CBDisplayModuleHIDiOS *)self handleDisplayBrightnessProperty:property];
  }

  else if ([key isEqualToString:@"DISABLE_HID_INTERFACE"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_noHID = [property BOOLValue];
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

      v9 = [CBPreferencesHandler storePreferenceForAllUsersForKey:@"DISABLE_HID_INTERFACE" andValue:property];
    }
  }

  else if ([key isEqualToString:@"DisplayBrightnessLinear"])
  {
    v9 = [(CBDisplayModuleHIDiOS *)self handleDisplayLinearBrightnessProperty:property];
  }

  else if ([key isEqualToString:@"CBDisplayVendorID"])
  {
    v9 = [(CBDisplayModuleHIDiOS *)self handleDisplayVendorIDProperty:property];
  }

  else if ([key isEqualToString:@"CBDisplayProductID"])
  {
    v9 = [(CBDisplayModuleHIDiOS *)self handleDisplayProductIDProperty:property];
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
    __os_log_helper_16_2_3_8_64_8_64_4_0(v13, key, property, v9);
    _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ result=%d", v13, 0x1Cu);
  }

  *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)handleDisplayProductIDProperty:(id)property
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_displayPID = [property unsignedIntegerValue];
  }

  return 0;
}

- (BOOL)handleDisplayVendorIDProperty:(id)property
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_displayVID = [property unsignedIntegerValue];
  }

  return 0;
}

- (BOOL)handleDisplayLinearBrightnessProperty:(id)property
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [property floatValue];
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
    __os_log_helper_16_2_2_8_64_4_0(v9, property, v6);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "data=%@ result=%d", v9, 0x12u);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)handleDisplayBrightnessProperty:(id)property
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [property floatValue];
    v8 = [(CBDisplayModuleHIDiOS *)self setSlider:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [property objectForKey:@"Brightness"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 floatValue];
        v8 = [(CBDisplayModuleHIDiOS *)self setSlider:?];
      }

      else
      {
        v7 = [property objectForKey:@"Nits"];
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
    __os_log_helper_16_2_2_8_64_4_0(v11, property, v8);
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

- (BOOL)setSlider:(float)slider
{
  if (slider >= 0.0)
  {
    sliderCopy = slider;
  }

  else
  {
    sliderCopy = 0.0;
  }

  v3 = sliderCopy;
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

- (BOOL)setNits:(float)nits withPeriod:(float)period
{
  selfCopy = self;
  v32 = a2;
  nitsCopy = nits;
  periodCopy = period;
  v29 = 1;
  minNits = self->_minNits;
  nitsCopy2 = nits;
  if (minNits >= nits)
  {
    v11 = minNits;
  }

  else
  {
    v11 = nitsCopy2;
  }

  v26 = v11;
  nitsCopy = v11;
  maxNits = selfCopy->_maxNits;
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
  nitsCopy = v10;
  ++selfCopy->_brighntessUpdateCounter;
  selfCopy->_brightnessUpdateTarget = nitsCopy;
  selfCopy->_currentNits = nitsCopy;
  if (selfCopy->_brighntessUpdateCounter == 1)
  {
    brightnessUpdateQueue = selfCopy->_brightnessUpdateQueue;
    block = MEMORY[0x1E69E9820];
    v16 = -1073741824;
    v17 = 0;
    v18 = __44__CBDisplayModuleHIDiOS_setNits_withPeriod___block_invoke;
    v19 = &unk_1E867B9D8;
    v20 = selfCopy;
    v21 = periodCopy;
    v22 = nitsCopy;
    dispatch_async(brightnessUpdateQueue, &block);
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

- (BOOL)getNits:(float *)nits
{
  v41 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v36 = a2;
  nitsCopy = nits;
  v34 = 0;
  v33 = IOHIDTransactionCreate(*MEMORY[0x1E695E480], self->_hidDisplayDevice, kIOHIDTransactionDirectionTypeInput, 0);
  if (v33)
  {
    IOHIDTransactionAddElement(v33, selfCopy->_brightnessElement);
    v32 = -536870212;
    v31 = 0;
    do
    {
      v32 = IOHIDTransactionCommit(v33);
      if (v32)
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
    Value = IOHIDTransactionGetValue(v33, selfCopy->_brightnessElement, 0);
    if (Value)
    {
      ScaledValue = IOHIDValueGetScaledValue(Value, 2u);
      v25 = ScaledValue;
      if (ScaledValue > selfCopy->_maxNits || v25 < selfCopy->_minNits)
      {
        if (selfCopy->_logHandle)
        {
          v14 = selfCopy->_logHandle;
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
          __os_log_helper_16_0_3_8_0_8_0_8_0(v38, COERCE__INT64(v25), COERCE__INT64(selfCopy->_minNits), COERCE__INT64(selfCopy->_maxNits));
          _os_log_error_impl(&dword_1DE8E5000, v24, v23, "error: value (%f) out of bounds (%f-%f)", v38, 0x20u);
        }
      }

      else
      {
        v34 = 1;
        *nitsCopy = v25;
      }
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v12 = selfCopy->_logHandle;
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

- (id)copyPropertyInternalForKey:(id)key
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v26 = a2;
  keyCopy = key;
  newDisplayBrightnessData = 0;
  if ([key isEqualToString:@"StatusInfo"])
  {
    v23 = [CBStatusInfoHelper copyStatusInfoFor:selfCopy];
    if (v23)
    {
      newDisplayBrightnessData = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v23, @"CBDisplayModuleHIDiOS", 0}];
    }

    MEMORY[0x1E69E5920](v23);
  }

  else
  {
    if ([keyCopy isEqualToString:@"DisplayBrightness2"])
    {
      v20 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v3 = selfCopy->_currentNits;
      [(CBDisplayModuleHIDiOS *)selfCopy getUserBrightnessForNits:v3];
      newDisplayBrightnessData = [v20 initWithFloat:?];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"DisplayBrightnessLinear"])
    {
      v19 = objc_alloc(MEMORY[0x1E696AD98]);
      [(CBDisplayModuleHIDiOS *)selfCopy getLinearBrightness];
      newDisplayBrightnessData = [v19 initWithFloat:?];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"DisplayBrightnessLinearMin"])
    {
      v4 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v5 = selfCopy->_minLinearBrightness;
      newDisplayBrightnessData = [v4 initWithFloat:v5];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"DisplayNitsKey"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"NitsPhysical"))
    {
      v6 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v7 = selfCopy->_currentNits;
      newDisplayBrightnessData = [v6 initWithFloat:v7];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"DisplayBrightness"])
    {
      newDisplayBrightnessData = [(CBDisplayModuleHIDiOS *)selfCopy newDisplayBrightnessData];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"DisplayBrightness2Available"])
    {
      newDisplayBrightnessData = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"DisplayBrightnessMin"])
    {
      v8 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v9 = selfCopy->_minNits;
      newDisplayBrightnessData = [v8 initWithFloat:v9];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"DisplayBrightnessMax"])
    {
      v10 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v11 = selfCopy->_maxNits;
      newDisplayBrightnessData = [v10 initWithFloat:v11];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"kUSBContainerID"])
    {
      goto LABEL_23;
    }

    if ([keyCopy isEqualToString:@"CBDisplayVendorID"])
    {
      newDisplayBrightnessData = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:selfCopy->_displayVID];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"CBDisplayProductID"])
    {
      newDisplayBrightnessData = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:selfCopy->_displayPID];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"DisplayUniqueID"])
    {
LABEL_23:
      newDisplayBrightnessData = [(NSUUID *)selfCopy->_containerID copy];
      goto LABEL_31;
    }

    if ([keyCopy isEqualToString:@"DISABLE_HID_INTERFACE"])
    {
      newDisplayBrightnessData = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:selfCopy->_noHID];
    }
  }

LABEL_31:
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

  v22 = logHandle;
  v21 = 0;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v22;
    *type = v21;
    buf = v28;
    __os_log_helper_16_2_2_8_64_8_64(v28, keyCopy, newDisplayBrightnessData);
    _os_log_impl(&dword_1DE8E5000, log, type[0], "key=%@ result=%@", buf, 0x16u);
  }

  v13 = newDisplayBrightnessData;
  *MEMORY[0x1E69E9840];
  return newDisplayBrightnessData;
}

- (id)copyIdentifiers
{
  selfCopy = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"DisplayBrightness2", @"DisplayBrightnessLinear", @"DisplayBrightnessLinearMin", @"DisplayNitsKey", @"NitsPhysical", @"DisplayBrightness", @"DisplayBrightness2Available", @"DisplayBrightnessMin", @"DisplayBrightnessMax", @"kUSBContainerID", 0}];
}

- (void)sendNotificationForKey:(id)key withValue:(id)value
{
  if (self->super.super._notificationBlock)
  {
    (*(self->super.super._notificationBlock + 2))();
  }
}

- (float)getNitsForUserBrightness:(float)brightness
{
  if (brightness <= 1.0)
  {
    brightnessCopy = brightness;
  }

  else
  {
    brightnessCopy = 1.0;
  }

  if (brightnessCopy <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = brightnessCopy;
  }

  maxNits = self->_maxNits;
  return maxNits * powf(maxNits / self->_minNits, v5 - 1.0);
}

- (float)getUserBrightnessForNits:(float)nits
{
  if (self->_maxNits >= nits)
  {
    maxNits = nits;
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