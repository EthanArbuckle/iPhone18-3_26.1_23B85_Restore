@interface CBProxFilter
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBProxFilter)init;
- (id)filterEvent:(id)a3;
- (id)handleALSEvent:(id)a3;
- (id)handleProximityEvent:(id)a3;
- (void)dealloc;
- (void)setIsActive:(BOOL)a3;
- (void)setTriggered:(BOOL)a3;
@end

@implementation CBProxFilter

- (CBProxFilter)init
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBProxFilter;
  v6 = [(CBProxFilter *)&v4 init];
  if (v6)
  {
    v2 = os_log_create("com.apple.CoreBrightness.CBProxFilter", "default");
    v6->super._logHandle = v2;
    v6->_proxReleaseTime = 0.0;
    v6->_proxHasJustBeenRemoved = 0;
    v6->_proxTriggerDelay = 3.0;
    v6->_isActive = 1;
  }

  return v6;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](v4->super._logHandle);
    v4->super._logHandle = 0;
  }

  v2.receiver = v4;
  v2.super_class = CBProxFilter;
  [(CBProxFilter *)&v2 dealloc];
}

- (void)setIsActive:(BOOL)a3
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
    __os_log_helper_16_0_2_4_0_4_0(v7, self->_isActive, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Changing active=%d to %d", v7, 0xEu);
  }

  self->_isActive = a3;
  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v5 = 0;
  if ([a4 isEqual:@"AutoBrightnessProxEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CBProxFilter setIsActive:](self, "setIsActive:", [a3 BOOLValue]);
      return 1;
    }
  }

  return v5;
}

- (id)filterEvent:(id)a3
{
  v4 = [a3 eventType];
  if (v4 == 12)
  {
    return [(CBProxFilter *)self handleALSEvent:a3];
  }

  if (v4 == 14)
  {
    return [(CBProxFilter *)self handleProximityEvent:a3];
  }

  return a3;
}

- (id)handleProximityEvent:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = [a3 event];
  IntegerValue = IOHIDEventGetIntegerValue();
  if ((IntegerValue & 0x200) != 0 || (IntegerValue & 0x40) != 0 || (IntegerValue & 0x100) != 0)
  {
    if (v20->super._logHandle)
    {
      logHandle = v20->super._logHandle;
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

    [(CBProxFilter *)v20 setTriggered:1];
    v20->_proxHasJustBeenRemoved = 0;
  }

  else
  {
    if (v20->super._logHandle)
    {
      v8 = v20->super._logHandle;
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

    v20->_proxHasJustBeenRemoved = 1;
    [v18 timestamp];
    v20->_proxReleaseTime = v3;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

- (id)handleALSEvent:(id)a3
{
  if (self->_proxHasJustBeenRemoved)
  {
    [a3 timestamp];
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([a3 firstALSSample] & 1) == 0)
    {
      [a3 setObstructed:1];
    }
  }

  return a3;
}

- (void)setTriggered:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_triggered != a3)
  {
    self->_triggered = a3;
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
      __os_log_helper_16_0_2_4_0_4_0(v8, a3, self->_isActive);
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