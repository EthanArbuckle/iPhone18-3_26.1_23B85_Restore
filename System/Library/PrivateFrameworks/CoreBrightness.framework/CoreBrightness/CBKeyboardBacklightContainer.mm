@interface CBKeyboardBacklightContainer
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from;
- (BOOL)keyboardUsesNitUnits:(id)units;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)setPropertyInternal:(id)internal forKey:(id)key;
- (BOOL)start;
- (CBKeyboardBacklightContainer)initWithDevice:(id)device;
- (id)copyIdentifiers;
- (id)copyPropertyForKey:(id)key;
- (id)copyPropertyInternalForKey:(id)key;
- (id)newKeyboardBacklightWithQueue:(id)queue device:(id)device;
- (void)dealloc;
- (void)keyboardBacklightInitialization;
- (void)sendNotificationForKey:(id)key andValue:(id)value;
- (void)stop;
@end

@implementation CBKeyboardBacklightContainer

- (CBKeyboardBacklightContainer)initWithDevice:(id)device
{
  selfCopy = self;
  v10 = a2;
  deviceCopy = device;
  v8.receiver = self;
  v8.super_class = CBKeyboardBacklightContainer;
  selfCopy = [(CBKeyboardBacklightContainer *)&v8 init];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.KeyboardBacklightContainer", "default");
    selfCopy->_logHandle = v3;
    v4 = dispatch_queue_create("com.apple.CoreBrightness.KeyboardBacklightContainer", 0);
    selfCopy->super._queue = v4;
    if (!selfCopy->super._queue || !deviceCopy)
    {
      MEMORY[0x1E69E5920](selfCopy);
      return 0;
    }

    v5 = MEMORY[0x1E69E5928](deviceCopy);
    selfCopy->_device = v5;
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    selfCopy->_properties = v6;
    selfCopy->_userActive = 1;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_properties);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_device).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBKeyboardBacklightContainer;
  [(CBContainer *)&v3 dealloc];
}

- (BOOL)start
{
  selfCopy = self;
  v10 = a2;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __37__CBKeyboardBacklightContainer_start__block_invoke;
  v8 = &unk_1E867B480;
  v9 = selfCopy;
  dispatch_sync(queue, &block);
  return 1;
}

- (void)stop
{
  selfCopy = self;
  v9 = a2;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __36__CBKeyboardBacklightContainer_stop__block_invoke;
  v7 = &unk_1E867B480;
  v8 = selfCopy;
  dispatch_sync(queue, &block);
}

uint64_t __36__CBKeyboardBacklightContainer_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) stop];
  [*(*(a1 + 32) + 48) unregisterNotificationBlock];
  MEMORY[0x1E69E5920](*(*(a1 + 32) + 48));
  result = a1;
  *(*(a1 + 32) + 48) = 0;
  return result;
}

- (id)copyPropertyForKey:(id)key
{
  selfCopy = self;
  v22 = a2;
  keyCopy = key;
  v14 = 0;
  v15 = &v14;
  v16 = 1375731712;
  v17 = 48;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __51__CBKeyboardBacklightContainer_copyPropertyForKey___block_invoke;
  v10 = &unk_1E867B7A0;
  keyCopy2 = key;
  v12 = selfCopy;
  v13 = &v14;
  dispatch_sync(queue, &block);
  v5 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v5;
}

uint64_t __51__CBKeyboardBacklightContainer_copyPropertyForKey___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    result = [*(a1 + 32) getKeyKeyboardID];
    v5 = result;
    if (result)
    {
      result = [*(*(a1 + 40) + 48) keyboardID];
      if (v5 == result || v5 == 1 && (result = [*(*(a1 + 40) + 48) builtIn], (result & 1) != 0) || v5 == 1 || v5 == 3 && (result = objc_msgSend(*(*(a1 + 40) + 48), "supportsAuthentication"), (result & 1) != 0))
      {
        result = [*(a1 + 40) copyPropertyInternalForKey:{objc_msgSend(*(a1 + 32), "getKeyString")}];
        *(*(*(a1 + 48) + 8) + 40) = result;
      }

      else if (v5 == 2)
      {
        result = [*(*(a1 + 40) + 48) supportsAuthentication];
        if ((result & 1) == 0)
        {
          result = [*(a1 + 40) copyPropertyInternalForKey:{objc_msgSend(*(a1 + 32), "getKeyString")}];
          *(*(*(a1 + 48) + 8) + 40) = result;
        }
      }
    }
  }

  else
  {
    v2 = *(a1 + 32);
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [*(a1 + 40) copyPropertyInternalForKey:*(a1 + 32)];
      *(*(*(a1 + 48) + 8) + 40) = result;
    }
  }

  return result;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  selfCopy = self;
  v23 = a2;
  propertyCopy = property;
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __51__CBKeyboardBacklightContainer_setProperty_forKey___block_invoke;
  v11 = &unk_1E867BC58;
  keyCopy2 = key;
  v13 = selfCopy;
  v15 = &v16;
  propertyCopy2 = property;
  dispatch_sync(queue, &block);
  v6 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v6 & 1;
}

uint64_t __51__CBKeyboardBacklightContainer_setProperty_forKey___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    result = [*(a1 + 32) getKeyKeyboardID];
    v5 = result;
    if (result)
    {
      result = [*(*(a1 + 40) + 48) keyboardID];
      if (v5 == result || v5 == 1 && (result = [*(*(a1 + 40) + 48) builtIn], (result & 1) != 0) || v5 == 1 || v5 == 3 && (result = objc_msgSend(*(*(a1 + 40) + 48), "supportsAuthentication"), (result & 1) != 0))
      {
        result = [*(a1 + 40) setPropertyInternal:*(a1 + 48) forKey:{objc_msgSend(*(a1 + 32), "getKeyString")}];
        *(*(*(a1 + 56) + 8) + 24) = result;
      }

      else if (v5 == 2)
      {
        result = [*(*(a1 + 40) + 48) supportsAuthentication];
        if ((result & 1) == 0)
        {
          result = [*(a1 + 40) setPropertyInternal:*(a1 + 48) forKey:{objc_msgSend(*(a1 + 32), "getKeyString")}];
          *(*(*(a1 + 56) + 8) + 24) = result;
        }
      }
    }
  }

  else
  {
    v2 = *(a1 + 32);
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [*(a1 + 40) setPropertyInternal:*(a1 + 48) forKey:*(a1 + 32)];
      *(*(*(a1 + 56) + 8) + 24) = result;
    }
  }

  return result;
}

- (BOOL)setPropertyInternal:(id)internal forKey:(id)key
{
  v12 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"CBUserActivityUpdate"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_userActive = [internal BOOLValue];
    }
  }

  v7 = [(KeyboardBacklight *)self->_keyboardBacklight setProperty:internal forKey:key];
  if (v7)
  {
    [(NSMutableDictionary *)self->_properties setObject:internal forKey:key];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_3_8_64_8_64_4_0(v11, key, internal, v7);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "key=%@ property=%@ result=%d", v11, 0x1Cu);
  }

  *MEMORY[0x1E69E9840];
  return v7;
}

- (id)copyPropertyInternalForKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v15 = a2;
  keyCopy = key;
  v13 = 0;
  if ([key isEqualToString:@"StatusInfo"])
  {
    v12 = [CBStatusInfoHelper copyStatusInfoFor:selfCopy];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v12, @"CBKeyboardBacklightContainer", 0}];
    }

    MEMORY[0x1E69E5920](v12);
  }

  else
  {
    v13 = [(KeyboardBacklight *)selfCopy->_keyboardBacklight copyPropertyForKey:keyCopy];
    if (!v13)
    {
      v13 = [-[NSMutableDictionary objectForKey:](selfCopy->_properties objectForKey:{keyCopy), "copy"}];
    }
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

  oslog = logHandle;
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    log = oslog;
    *v6 = type;
    buf = v17;
    __os_log_helper_16_2_2_8_64_8_64(v17, keyCopy, v13);
    _os_log_impl(&dword_1DE8E5000, log, v6[0], "key=%@ result=%@", buf, 0x16u);
  }

  v4 = v13;
  *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyIdentifiers
{
  selfCopy = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"KeyboardBacklightSuppressed", @"KeyboardBacklightSaturated", @"KeyboardBacklightBrightness", @"KeyboardBacklightLevel", @"KeyboardBacklightABSuspend", @"KeyboardBacklightABEnabled", @"KeyboardBacklightIdleDimActive", @"KeyboardBacklightIdleDimTime", @"KeyboardBacklightBuiltIn", 0}];
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client
{
  v48 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v44 = a2;
  clientCopy = client;
  v38 = 0;
  v39 = &v38;
  v40 = 0x20000000;
  v41 = 32;
  v42 = 0;
  if (client)
  {
    v34 = 0;
    if (IOHIDServiceClientConformsTo(clientCopy, 0xFF00u, 4u))
    {
      v34 = 1;
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
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v47, clientCopy);
        _os_log_impl(&dword_1DE8E5000, v33, v32, "ALS service %p", v47, 0xCu);
      }
    }

    else if (IOHIDServiceClientConformsTo(clientCopy, 0x20u, 0x41u))
    {
      bOOLValue = 0;
      unsignedIntegerValue = 0;
      unsignedIntValue = 0;
      v31 = IOHIDServiceClientCopyProperty(clientCopy, @"VendorID");
      if (v31)
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v31))
        {
          unsignedIntValue = [v31 unsignedIntValue];
        }
      }

      if (v31)
      {
        CFRelease(v31);
      }

      v31 = IOHIDServiceClientCopyProperty(clientCopy, @"Built-In");
      if (v31)
      {
        v10 = CFBooleanGetTypeID();
        if (v10 == CFGetTypeID(v31))
        {
          if (v31 == *MEMORY[0x1E695E4D0])
          {
            bOOLValue = 1;
          }
        }

        else
        {
          v9 = CFNumberGetTypeID();
          if (v9 == CFGetTypeID(v31))
          {
            bOOLValue = [v31 BOOLValue];
          }
        }

        CFRelease(v31);
      }

      v31 = IOHIDServiceClientCopyProperty(clientCopy, @"SensorLocation");
      if (v31)
      {
        v8 = CFNumberGetTypeID();
        if (v8 == CFGetTypeID(v31))
        {
          unsignedIntegerValue = [v31 unsignedIntegerValue];
        }

        CFRelease(v31);
      }

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

      v27 = v7;
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_3_8_0_4_0_8_0(v46, clientCopy, bOOLValue & 1, unsignedIntegerValue);
        _os_log_impl(&dword_1DE8E5000, v27, v26, "ALS service %p: builtIn=%u location=%lu", v46, 0x1Cu);
      }

      if ((bOOLValue & 1) != 0 && unsignedIntValue == 1452)
      {
        v34 = 1;
      }
    }

    if (v34)
    {
      queue = selfCopy->super._queue;
      block = MEMORY[0x1E69E9820];
      v19 = -1073741824;
      v20 = 0;
      v21 = __52__CBKeyboardBacklightContainer_addHIDServiceClient___block_invoke;
      v22 = &unk_1E867BC80;
      v23 = selfCopy;
      v25 = clientCopy;
      v24 = &v38;
      dispatch_sync(queue, &block);
    }
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

    v37 = v17;
    v36 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      log = v37;
      type = v36;
      __os_log_helper_16_0_0(v35);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "HID service client pointer is NULL", v35, 2u);
    }
  }

  v5 = *(v39 + 24);
  _Block_object_dispose(&v38, 8);
  *MEMORY[0x1E69E9840];
  return v5 & 1;
}

uint64_t __52__CBKeyboardBacklightContainer_addHIDServiceClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) keyboardBacklightInitialization];
  result = a1;
  if (*(*(a1 + 32) + 48))
  {
    result = [*(*(a1 + 32) + 48) addHIDServiceClient:*(a1 + 48)];
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from
{
  selfCopy = self;
  v23 = a2;
  eventCopy = event;
  fromCopy = from;
  v16 = 0;
  v17 = &v16;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __52__CBKeyboardBacklightContainer_handleHIDEvent_from___block_invoke;
  v11 = &unk_1E867BCA8;
  v13 = &v16;
  v12 = selfCopy;
  eventCopy2 = event;
  fromCopy2 = from;
  dispatch_sync(queue, &block);
  v6 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v6 & 1;
}

uint64_t __52__CBKeyboardBacklightContainer_handleHIDEvent_from___block_invoke(void *a1)
{
  result = [*(a1[4] + 48) handleHIDEvent:a1[6] from:a1[7]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client
{
  selfCopy = self;
  v20 = a2;
  clientCopy = client;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  queue = self->super._queue;
  block = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __55__CBKeyboardBacklightContainer_removeHIDServiceClient___block_invoke;
  v10 = &unk_1E867BCD0;
  v12 = &v14;
  v11 = selfCopy;
  clientCopy2 = client;
  dispatch_sync(queue, &block);
  v5 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v5 & 1;
}

uint64_t __55__CBKeyboardBacklightContainer_removeHIDServiceClient___block_invoke(void *a1)
{
  result = [*(a1[4] + 48) removeHIDServiceClient:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)sendNotificationForKey:(id)key andValue:(id)value
{
  selfCopy = self;
  v15 = a2;
  keyCopy = key;
  valueCopy = value;
  if (self->super._notificationQueue)
  {
    MEMORY[0x1E69E5928](keyCopy);
    MEMORY[0x1E69E5928](valueCopy);
    notificationQueue = selfCopy->super._notificationQueue;
    block = MEMORY[0x1E69E9820];
    v6 = -1073741824;
    v7 = 0;
    v8 = __64__CBKeyboardBacklightContainer_sendNotificationForKey_andValue___block_invoke;
    v9 = &unk_1E867B750;
    v10 = selfCopy;
    v11 = keyCopy;
    v12 = valueCopy;
    dispatch_async(notificationQueue, &block);
  }
}

double __64__CBKeyboardBacklightContainer_sendNotificationForKey_andValue___block_invoke(void *a1)
{
  v14 = a1;
  v13 = a1;
  v2 = *(a1[4] + 16);
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __64__CBKeyboardBacklightContainer_sendNotificationForKey_andValue___block_invoke_2;
  v9 = &unk_1E867B750;
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  dispatch_sync(v2, &block);
  MEMORY[0x1E69E5920](a1[5]);
  *&result = MEMORY[0x1E69E5920](a1[6]).n128_u64[0];
  return result;
}

double __64__CBKeyboardBacklightContainer_sendNotificationForKey_andValue___block_invoke_2(void *a1)
{
  if (*(a1[4] + 32))
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a1[5] keyboardID:{objc_msgSend(*(a1[4] + 48), "keyboardID")}];
    if (v6)
    {
      v1 = a1[6];
      (*(*(a1[4] + 32) + 16))();
    }

    MEMORY[0x1E69E5920](v6);
    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a1[5] keyboardID:1];
    if (v5)
    {
      v2 = a1[6];
      (*(*(a1[4] + 32) + 16))();
    }

    *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  }

  return result;
}

- (id)newKeyboardBacklightWithQueue:(id)queue device:(id)device
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = [device propertyForKey:@"ProductID"];
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
    __os_log_helper_16_2_1_8_66(v15, v9);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "PID = %{public}@", v15, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(CBKeyboardBacklightContainer *)self keyboardUsesNitUnits:device])
    {
      v10 = [[KeyboardBacklightHIDCurveNits alloc] initWithQueue:queue device:device];
    }

    else if (keyboardUsesAdjustedBrightnessCurve([v9 intValue]))
    {
      v10 = [[KeyboardBacklightHIDCurve alloc] initWithQueue:queue device:device];
    }

    else
    {
      v10 = [[KeyboardBacklight alloc] initWithQueue:queue device:device];
    }
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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v14, 10);
    _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "Keyboard backlight initialized for lgpVersion = %d", v14, 8u);
  }

  *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)keyboardUsesNitUnits:(id)units
{
  v50 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v45 = a2;
  unitsCopy = units;
  v43 = 0;
  v42 = &unk_1F59C97E0;
  v41 = [(HIDDevice *)self->_device elementsMatching:&unk_1F59C97E0];
  if (![v41 count])
  {
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
    }

    else
    {
      v28 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v28;
    }

    v40 = logHandle;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v40;
      v27 = type;
      __os_log_helper_16_0_0(v38);
      _os_log_error_impl(&dword_1DE8E5000, log, v27, "HID elements not found.", v38, 2u);
    }
  }

  memset(__b, 0, sizeof(__b));
  obj = v41;
  v25 = [v41 countByEnumeratingWithState:__b objects:v49 count:16];
  if (v25)
  {
    v21 = *__b[2];
    v22 = 0;
    v23 = v25;
    while (1)
    {
      v20 = v22;
      if (*__b[2] != v21)
      {
        objc_enumerationMutation(obj);
      }

      v37 = 0;
      v37 = *(__b[1] + 8 * v22);
      if ([v37 type] == 257)
      {
        if (selfCopy->_logHandle)
        {
          v19 = selfCopy->_logHandle;
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

          v19 = inited;
        }

        oslog = v19;
        v34 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v16 = oslog;
          v17 = v34;
          usage = [v37 usage];
          usagePage = [v37 usagePage];
          reportID = [v37 reportID];
          unit = [v37 unit];
          reportSize = [v37 reportSize];
          logicalMax = [v37 logicalMax];
          __os_log_helper_16_0_7_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v48, usage, usagePage, reportID, unit, reportSize, logicalMax, [v37 logicalMin]);
          _os_log_debug_impl(&dword_1DE8E5000, v16, v17, "usage = 0x%lx, usage page = 0x%lx, reportID = %ld, unit = 0x%lx, reportSize = %ld, max logical = %ld, min logical = %ld", v48, 0x48u);
        }

        if ([v37 usage] == 1)
        {
          unit2 = [v37 unit];
          if (unit2 == 16777441)
          {
            v43 = 1;
            if (selfCopy->_logHandle)
            {
              v9 = selfCopy->_logHandle;
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

            v32 = v9;
            v31 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v6 = v32;
              v7 = v31;
              __os_log_helper_16_0_0(v30);
              _os_log_debug_impl(&dword_1DE8E5000, v6, v7, "found level element using nit units", v30, 2u);
            }
          }
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

          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_1_8_0(v47, [v37 usage]);
            _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "Unknown element with usage = %ld", v47, 0xCu);
          }
        }
      }

      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [obj countByEnumeratingWithState:__b objects:v49 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v43 & 1;
}

- (void)keyboardBacklightInitialization
{
  selfCopy = self;
  v11 = a2;
  if (!self->_keyboardBacklight)
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

    v10 = logHandle;
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_1DE8E5000, log, type, "KeyboardBacklight initialization", v8, 2u);
    }

    v2 = [(CBKeyboardBacklightContainer *)selfCopy newKeyboardBacklightWithQueue:selfCopy->super._queue device:selfCopy->_device];
    selfCopy->_keyboardBacklight = v2;
    [(KeyboardBacklight *)selfCopy->_keyboardBacklight start];
    if (selfCopy->_userActive)
    {
      v3 = MEMORY[0x1E695E118];
    }

    else
    {
      v3 = MEMORY[0x1E695E110];
    }

    [(KeyboardBacklight *)selfCopy->_keyboardBacklight setProperty:v3 forKey:@"DisplayBrightnessFactor"];
    [(CBModule *)selfCopy->_keyboardBacklight registerNotificationBlock:?];
  }
}

uint64_t __63__CBKeyboardBacklightContainer_keyboardBacklightInitialization__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(result + 32) + 40))
    {
      v4 = *(*(result + 32) + 40);
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

    result = [*(v5 + 32) sendNotificationForKey:a2 andValue:a3];
  }

  *MEMORY[0x1E69E9840];
  return result;
}

@end