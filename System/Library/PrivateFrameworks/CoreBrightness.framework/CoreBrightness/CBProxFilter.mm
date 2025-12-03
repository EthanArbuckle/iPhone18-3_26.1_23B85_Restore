@interface CBProxFilter
- (BOOL)setProperty:(id)property forKey:(id)key;
- (CBProxFilter)init;
- (id)filterEvent:(id)event;
- (id)handleALSEvent:(id)event;
- (id)handleProximityEvent:(id)event;
- (void)dealloc;
- (void)setIsActive:(BOOL)active;
- (void)setTriggered:(BOOL)triggered;
@end

@implementation CBProxFilter

- (CBProxFilter)init
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBProxFilter;
  selfCopy = [(CBProxFilter *)&v4 init];
  if (selfCopy)
  {
    v2 = os_log_create("com.apple.CoreBrightness.CBProxFilter", "default");
    selfCopy->super._logHandle = v2;
    selfCopy->_proxReleaseTime = 0.0;
    selfCopy->_proxHasJustBeenRemoved = 0;
    selfCopy->_proxTriggerDelay = 3.0;
    selfCopy->_isActive = 1;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->super._logHandle);
    selfCopy->super._logHandle = 0;
  }

  v2.receiver = selfCopy;
  v2.super_class = CBProxFilter;
  [(CBProxFilter *)&v2 dealloc];
}

- (void)setIsActive:(BOOL)active
{
  v8 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_2_4_0_4_0(v7, self->_isActive, active);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Changing active=%d to %d", v7, 0xEu);
  }

  self->_isActive = active;
  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v5 = 0;
  if ([key isEqual:@"AutoBrightnessProxEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CBProxFilter setIsActive:](self, "setIsActive:", [property BOOLValue]);
      return 1;
    }
  }

  return v5;
}

- (id)filterEvent:(id)event
{
  eventType = [event eventType];
  if (eventType == 12)
  {
    return [(CBProxFilter *)self handleALSEvent:event];
  }

  if (eventType == 14)
  {
    return [(CBProxFilter *)self handleProximityEvent:event];
  }

  return event;
}

- (id)handleProximityEvent:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v19 = a2;
  eventCopy = event;
  event = [event event];
  IntegerValue = IOHIDEventGetIntegerValue();
  if ((IntegerValue & 0x200) != 0 || (IntegerValue & 0x40) != 0 || (IntegerValue & 0x100) != 0)
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

    v15 = logHandle;
    v14 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v21, IntegerValue);
      _os_log_impl(&dword_1DE8E5000, v15, v14, "setting _proxTriggered = YES (proxMask=%x)", v21, 8u);
    }

    [(CBProxFilter *)selfCopy setTriggered:1];
    selfCopy->_proxHasJustBeenRemoved = 0;
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

    v13 = v8;
    v12 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v5 = v13;
      v6 = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_impl(&dword_1DE8E5000, v5, v6, "Prox has been removed", v11, 2u);
    }

    selfCopy->_proxHasJustBeenRemoved = 1;
    [eventCopy timestamp];
    selfCopy->_proxReleaseTime = v3;
  }

  *MEMORY[0x1E69E9840];
  return eventCopy;
}

- (id)handleALSEvent:(id)event
{
  if (self->_proxHasJustBeenRemoved)
  {
    [event timestamp];
    if ((v3 - self->_proxReleaseTime) > self->_proxTriggerDelay)
    {
      self->_proxHasJustBeenRemoved = 0;
      [(CBProxFilter *)self setTriggered:0];
      self->_proxReleaseTime = 0.0;
    }
  }

  if ([(CBProxFilter *)self isActive]&& self->_triggered)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([event firstALSSample] & 1) == 0)
    {
      [event setObstructed:1];
    }
  }

  return event;
}

- (void)setTriggered:(BOOL)triggered
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_triggered != triggered)
  {
    self->_triggered = triggered;
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
      __os_log_helper_16_0_2_4_0_4_0(v8, triggered, self->_isActive);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Setting triggered = %d active = %d", v8, 0xEu);
    }

    if ([(CBProxFilter *)self isActive])
    {
      context = objc_autoreleasePoolPush();
      -[CBFilter sendNotificationForKey:andValue:](self, "sendNotificationForKey:andValue:", @"ProxStateChanged", [MEMORY[0x1E696AD98] numberWithBool:self->_triggered]);
      objc_autoreleasePoolPop(context);
    }
  }

  *MEMORY[0x1E69E9840];
}

@end