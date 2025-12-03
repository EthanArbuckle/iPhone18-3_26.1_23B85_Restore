@interface CBExtendedDisplayMitigation
+ (BOOL)isSupported;
- (BOOL)setActive:(BOOL)active;
- (CBExtendedDisplayMitigation)init;
- (void)dealloc;
@end

@implementation CBExtendedDisplayMitigation

+ (BOOL)isSupported
{
  v3 = 0;
  if (CBU_IsPad())
  {
    v3 = MGGetBoolAnswer();
  }

  return v3 & 1;
}

- (CBExtendedDisplayMitigation)init
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = CBExtendedDisplayMitigation;
  selfCopy = [(CBExtendedDisplayMitigation *)&v7 init];
  if (selfCopy)
  {
    selfCopy->_isActive = 0;
    v2 = os_log_create("com.apple.CoreBrightness.AABC.EDM", "default");
    selfCopy->_logHandle = v2;
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
      [(CBExtendedDisplayMitigation *)selfCopy getCap];
      __os_log_helper_16_0_1_8_0(v10, COERCE__INT64(v3));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "EDM cap created, will limit to %f when active", v10, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  v2.receiver = selfCopy;
  v2.super_class = CBExtendedDisplayMitigation;
  [(CBExtendedDisplayMitigation *)&v2 dealloc];
}

- (BOOL)setActive:(BOOL)active
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_isActive == active)
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v11, active);
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "State of extended display mitigation already set to to %d", v11, 8u);
    }

    v9 = 0;
  }

  else
  {
    self->_isActive = active;
    if (self->_logHandle)
    {
      v5 = self->_logHandle;
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v10, active);
      _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Setting state of extended display mitigation to %d", v10, 8u);
    }

    v9 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v9 & 1;
}

@end