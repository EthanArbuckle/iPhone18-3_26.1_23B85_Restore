@interface CBSoftWakeDisplayDelegate
- (CBSoftWakeDisplayDelegate)init;
- (int64_t)action:(int64_t)a3;
- (void)dealloc;
@end

@implementation CBSoftWakeDisplayDelegate

- (CBSoftWakeDisplayDelegate)init
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBSoftWakeDisplayDelegate;
  v6 = [(CBSoftWakeDisplayDelegate *)&v4 init];
  if (v6)
  {
    v6->_state = 0;
    v2 = os_log_create("com.apple.CoreBrightness.Display.SoftWake", "default");
    v6->_logHandle = v2;
    v6->_fade.rampDoneCallback = 0;
    v6->_fade.refcon = 0;
    v6->_fade.coeff[0] = 0.0;
    v6->_fade.coeff[1] = 1.0;
    v6->_fade.coeff[2] = 0.0;
  }

  return v6;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_logHandle).n128_u64[0];
  v5->_logHandle = 0;
  v3.receiver = v5;
  v3.super_class = CBSoftWakeDisplayDelegate;
  [(CBSoftWakeDisplayDelegate *)&v3 dealloc];
}

- (int64_t)action:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (canTransition(self->_state, a3))
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
      if (a3 == 1)
      {
        v3 = "activated";
      }

      else
      {
        v3 = "deactivated";
      }

      __os_log_helper_16_2_1_8_32(v13, v3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Soft wake %s", v13, 0xCu);
    }

    self->_fade.Fstart = 0.0;
    self->_fade.Fcurrent = 0.0;
    self->_fade.Ftarget = 0.0;
    self->_fade.period = 0.0;
    self->_state = a3;
    v11 = 0;
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
      __os_log_helper_16_0_2_8_0_8_0(v12, self->_state, a3);
      _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "Cannot transition from %ld to %ld", v12, 0x16u);
    }

    v11 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v11;
}

@end