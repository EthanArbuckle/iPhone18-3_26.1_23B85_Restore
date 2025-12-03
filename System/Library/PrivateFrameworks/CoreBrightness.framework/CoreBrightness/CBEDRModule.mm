@interface CBEDRModule
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client;
- (CBEDRModule)initWithQueue:(id)queue display:(id)display colorModule:(id)module andDisplayModule:(id)displayModule;
- (void)dealloc;
- (void)handleALSEvent:(id)event;
- (void)handleBrightnessUpdate:(id)update;
- (void)handleHIDEventInternal:(__IOHIDEvent *)internal from:(__IOHIDServiceClient *)from;
- (void)handleNotificationForKey:(id)key withProperty:(id)property;
- (void)handleTargetWhitepointUpdate:(id)update;
- (void)start;
- (void)updateEDRState;
@end

@implementation CBEDRModule

- (CBEDRModule)initWithQueue:(id)queue display:(id)display colorModule:(id)module andDisplayModule:(id)displayModule
{
  v52 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v48 = a2;
  queueCopy = queue;
  displayCopy = display;
  moduleCopy = module;
  displayModuleCopy = displayModule;
  v43.receiver = self;
  v43.super_class = CBEDRModule;
  selfCopy = [(CBModule *)&v43 initWithQueue:queue];
  if (!selfCopy)
  {
    goto LABEL_41;
  }

  if (displayCopy)
  {
    context = objc_autoreleasePoolPush();
    v6 = os_log_create("com.apple.CoreBrightness.EDR", [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(displayCopy, "displayId")), "UTF8String"]);
    *(selfCopy + 2) = v6;
    objc_autoreleasePoolPop(context);
  }

  else
  {
    v7 = os_log_create("com.apple.CoreBrightness.EDR", "default");
    *(selfCopy + 2) = v7;
  }

  if (!*(selfCopy + 2))
  {
    v28 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v42 = v28;
    v41 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      type = v41;
      __os_log_helper_16_0_0(v40);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v40, 2u);
    }
  }

  v8 = MEMORY[0x1E69E5928](displayCopy);
  *(selfCopy + 8) = v8;
  v9 = MEMORY[0x1E69E5928](displayModuleCopy);
  *(selfCopy + 9) = v9;
  v10 = MEMORY[0x1E69E5928](moduleCopy);
  *(selfCopy + 10) = v10;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(selfCopy + 11) = v11;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(selfCopy + 12) = v12;
  v39 = objc_alloc_init(CBBrightestALSFilter);
  if (v39)
  {
    [*(selfCopy + 11) addObject:v39];
  }

  serverIfRunning = [MEMORY[0x1E6979550] serverIfRunning];
  v38 = [serverIfRunning displayWithDisplayId:{objc_msgSend(displayCopy, "displayId")}];
  if (v38)
  {
    [v38 maximumLuminance];
    *(selfCopy + 10) = v13;
    if (*(selfCopy + 2))
    {
      v24 = *(selfCopy + 2);
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

    v37 = v24;
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v51, COERCE__INT64(*(selfCopy + 10)));
      _os_log_impl(&dword_1DE8E5000, v37, v36, "maximum luminance if %f", v51, 0xCu);
    }
  }

  else
  {
    *(selfCopy + 10) = 1153138688;
    if (*(selfCopy + 2))
    {
      v22 = *(selfCopy + 2);
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

    v35 = v22;
    v34 = 16;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v19 = v35;
      v20 = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_error_impl(&dword_1DE8E5000, v19, v20, "failed to retrieve CAWindowServerDisplay, defaulting the maximum luminance", v33, 2u);
    }
  }

  *(selfCopy + 8) = 1133903872;
  *(selfCopy + 11) = 1.0;
  *(selfCopy + 9) = 0;
  *(selfCopy + 12) = -1.0;
  *(selfCopy + 13) = -1.0;
  *(selfCopy + 14) = -1.0;
  *(selfCopy + 15) = -1.0;
  if (CBEDRServerStartServer())
  {
LABEL_41:
    v50 = selfCopy;
  }

  else
  {
    if (*(selfCopy + 2))
    {
      v18 = *(selfCopy + 2);
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

    v32 = v18;
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v32;
      v16 = v31;
      __os_log_helper_16_0_0(v30);
      _os_log_impl(&dword_1DE8E5000, v15, v16, "Lib EDR missing. Not creating CBEDRModule", v30, 2u);
    }

    MEMORY[0x1E69E5920](selfCopy);
    v50 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v50;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_cadisplay);
  MEMORY[0x1E69E5920](selfCopy->_displayModule);
  MEMORY[0x1E69E5920](selfCopy->_colorModule);
  MEMORY[0x1E69E5920](selfCopy->_filters);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_alsNodes).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBEDRModule;
  [(CBModule *)&v3 dealloc];
}

- (void)handleBrightnessUpdate:(id)update
{
  selfCopy = self;
  v21 = a2;
  updateCopy = update;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [updateCopy objectForKeyedSubscript:@"NitsPhysical"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      selfCopy->_currentNits = v3;
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
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

      v18 = logHandle;
      v17 = 16;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        log = v18;
        type = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Unexpected nits type", v16, 2u);
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [updateCopy floatValue];
      selfCopy->_currentNits = v4;
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        v8 = selfCopy->super._logHandle;
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

      v15 = v8;
      v14 = 16;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v5 = v15;
        v6 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_1DE8E5000, v5, v6, "Unexpected brightness data type", v13, 2u);
      }
    }
  }
}

- (void)handleTargetWhitepointUpdate:(id)update
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [update objectForKey:@"YWP"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CFXFindBrightnessCompAlpha(self->_maxNits);
      v7 = v3;
      v6 = v3;
      [v8 floatValue];
      v5 = (v6 * (1.0 / v4)) + 1.0 - v7;
      self->_Ycomp = v5;
    }
  }
}

- (void)handleNotificationForKey:(id)key withProperty:(id)property
{
  if ([key isEqual:@"DisplayBrightness"])
  {
    [(CBEDRModule *)self handleBrightnessUpdate:property];
    [(CBEDRModule *)self updateEDRState];
  }

  else if ([key isEqual:@"CBTargetWhitePoint"])
  {
    [(CBEDRModule *)self handleTargetWhitepointUpdate:property];
    [(CBEDRModule *)self updateEDRState];
  }
}

- (void)start
{
  selfCopy = self;
  v13 = a2;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v10, 2u);
  }

  CBEDRServerAddDisplay([(CADisplay *)selfCopy->_cadisplay displayId]);
  v9 = [(CBContainerModuleProtocol *)selfCopy->_colorModule copyPropertyForKey:@"CBTargetWhitePoint"];
  if (v9)
  {
    [(CBEDRModule *)selfCopy handleTargetWhitepointUpdate:v9];
  }

  *&v2 = MEMORY[0x1E69E5920](v9).n128_u64[0];
  v8 = [(CBDisplayModuleHID *)selfCopy->_displayModule copyPropertyForKey:@"DisplayBrightness", v2];
  if (v8)
  {
    [(CBEDRModule *)selfCopy handleBrightnessUpdate:v8];
  }

  *&v3 = MEMORY[0x1E69E5920](v8).n128_u64[0];
  [(CBEDRModule *)selfCopy updateEDRState];
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client
{
  v15 = *MEMORY[0x1E69E9840];
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
    RegistryID = IOHIDServiceClientGetRegistryID(client);
    __os_log_helper_16_2_1_8_66(v14, RegistryID);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "new service ID = %{public}@", v14, 0xCu);
  }

  if (IOHIDServiceClientConformsTo(client, 0x20u, 0x41u))
  {
    v10 = [[CBALSNode alloc] initWithALSServiceClient:client];
    if (v10)
    {
      [(NSMutableArray *)self->_alsNodes addObject:v10];
      cf = IOHIDServiceClientCopyEvent();
      if (cf)
      {
        [(CBEDRModule *)self handleHIDEventInternal:cf from:client];
        CFRelease(cf);
      }

      else
      {
        if (self->super._logHandle)
        {
          v6 = self->super._logHandle;
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
          __os_log_helper_16_0_1_8_0(v13, client);
          _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "failed to copy event for ALS (%p)", v13, 0xCu);
        }
      }

      MEMORY[0x1E69E5920](v10);
    }
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

- (void)handleALSEvent:(id)event
{
  [event illuminance];
  *&v3 = v3;
  self->_currentLux = *&v3;
  [(CBEDRModule *)self updateEDRState];
}

- (void)handleHIDEventInternal:(__IOHIDEvent *)internal from:(__IOHIDServiceClient *)from
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v17 = a2;
  internalCopy = internal;
  fromCopy = from;
  v14 = [CBHIDEvent newEvent:internal andService:from];
  if (v14)
  {
    memset(__b, 0, sizeof(__b));
    obj = selfCopy->_filters;
    v10 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v19 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v13 = 0;
        v13 = *(__b[1] + 8 * v7);
        v11 = [v13 filterEvent:v14];
        if (!v11)
        {
          break;
        }

        MEMORY[0x1E69E5928](v11);
        *&v4 = MEMORY[0x1E69E5920](v14).n128_u64[0];
        v14 = v11;
        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v19 count:16, v4];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CBEDRModule *)selfCopy handleALSEvent:v14];
    }
  }

  MEMORY[0x1E69E5920](v14);
  *MEMORY[0x1E69E9840];
}

uint64_t __35__CBEDRModule_handleHIDEvent_from___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToHIDServiceClient:*(a1 + 40)];
  if (result)
  {
    return [*(a1 + 32) handleHIDEventInternal:*(a1 + 48) from:*(a1 + 40)];
  }

  return result;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client
{
  selfCopy = self;
  v12 = a2;
  clientCopy = client;
  v4 = 0;
  v5 = &v4;
  v6 = 1375731712;
  v7 = 48;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  [(NSMutableArray *)self->_alsNodes enumerateObjectsUsingBlock:?];
  if (v5[5])
  {
    [(NSMutableArray *)selfCopy->_filters enumerateObjectsUsingBlock:?];
    [(NSMutableArray *)selfCopy->_alsNodes removeObject:v5[5]];
  }

  _Block_object_dispose(&v4, 8);
  return 1;
}

uint64_t __38__CBEDRModule_removeHIDServiceClient___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToHIDServiceClient:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (void)updateEDRState
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_currentLux == self->_prevLux && self->_currentNits == self->_prevNits && self->_maxNits == self->_prevMaxNits && self->_Ycomp == self->_prevYcomp)
  {
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v8, [(CADisplay *)self->_cadisplay displayId]);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "No update in properties -> skip update of EDR state for display = %d", v8, 8u);
    }
  }

  else
  {
    self->_prevLux = self->_currentLux;
    self->_prevNits = self->_currentNits;
    self->_prevMaxNits = self->_maxNits;
    self->_prevYcomp = self->_Ycomp;
    if (self->super._logHandle)
    {
      v3 = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v2 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v2 = init_default_corebrightness_log();
      }

      v3 = v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_5_4_0_8_0_8_0_8_0_8_0(v7, [(CADisplay *)self->_cadisplay displayId], COERCE__INT64(self->_currentNits), COERCE__INT64(self->_maxNits), COERCE__INT64(self->_currentLux), COERCE__INT64(self->_Ycomp));
      _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "Update EDR state for display = %d ; currentNits = %f ; maxNits = %f ; currentLux = %f ; Ycomp = %f", v7, 0x30u);
    }

    CBEDRServerDisplayBrightness([(CADisplay *)self->_cadisplay displayId], self->_currentNits, self->_maxNits, self->_currentLux, self->_Ycomp);
  }

  *MEMORY[0x1E69E9840];
}

@end