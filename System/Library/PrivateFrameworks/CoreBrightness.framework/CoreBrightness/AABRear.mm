@interface AABRear
- (AABRear)initWithQueue:(id)a3 andGrimaldiFactory:(id)a4;
- (BOOL)shouldUseRLux:(float)a3 rLux:(float)a4;
- (BOOL)shouldUseRearLuxFrontLux:(float)a3 rearLux:(float)a4 andCap:(float)a5;
- (void)dealloc;
- (void)evaluateSamplingFrequencyWithLux:(float)a3 andCap:(float)a4;
- (void)stopSampling;
@end

@implementation AABRear

- (AABRear)initWithQueue:(id)a3 andGrimaldiFactory:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = self;
  v49 = a2;
  v48 = a3;
  v47 = a4;
  v46.receiver = self;
  v46.super_class = AABRear;
  v50 = [(CBModule *)&v46 initWithQueue:a3];
  if (v50)
  {
    *(v50 + 2) = os_log_create("com.apple.CoreBrightness.AABRear", "default");
    if (!*(v50 + 2))
    {
      v23 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v45 = v23;
      v44 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        log = v45;
        type = v44;
        __os_log_helper_16_0_0(v43);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "AABRear: failed to create log handle", v43, 2u);
      }
    }

    v55 = xmmword_1DEAC8C40;
    v56 = 713503427;
    v53 = xmmword_1DEAC8C54;
    v54 = -1632750650;
    if (MGIsDeviceOneOfType())
    {
      valuePtr = 0;
      v41 = CFPreferencesCopyValue(@"AllowGrimaldi", @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      if (v41)
      {
        v20 = CFGetTypeID(v41);
        if (v20 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v41, kCFNumberIntType, &valuePtr);
        }

        CFRelease(v41);
      }

      if (!valuePtr)
      {
        if (*(v50 + 2))
        {
          v19 = *(v50 + 2);
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

        v40 = v19;
        v39 = 2;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v16 = v40;
          v17 = v39;
          __os_log_helper_16_0_0(v38);
          _os_log_debug_impl(&dword_1DE8E5000, v16, v17, "Skipping Grimaldi check", v38, 2u);
        }

LABEL_54:
        MEMORY[0x1E69E5920](v50);
        v50 = 0;
        v51 = 0;
        goto LABEL_55;
      }
    }

    *(v50 + 4) = [[CBRearALSModule alloc] initWithQueue:v48 andGrimaldiFactory:v47, &v53, 0];
    if (!*(v50 + 4))
    {
      if (*(v50 + 2))
      {
        v15 = *(v50 + 2);
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

      v37 = v15;
      v36 = 16;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v12 = v37;
        v13 = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_error_impl(&dword_1DE8E5000, v12, v13, "Failed to initialize CBRearALSModule.", v35, 2u);
      }

      goto LABEL_54;
    }

    v29[0] = 0;
    v29[1] = v29;
    v30 = 1375731712;
    v31 = 48;
    v32 = __Block_byref_object_copy__6;
    v33 = __Block_byref_object_dispose__6;
    v34 = v50;
    [*(v50 + 4) registerNotificationBlock:?];
    *(v50 + 40) = 0;
    *(v50 + 68) = 0;
    *(v50 + 11) = 1120403456;
    *(v50 + 12) = 1148846080;
    *(v50 + 13) = 2.0;
    *(v50 + 14) = 3.0;
    cf = CFPreferencesCopyValue(@"GrimaldiAABConfig", @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    if (cf)
    {
      v11 = CFGetTypeID(cf);
      if (v11 == CFDictionaryGetTypeID())
      {
        v24 = [cf objectForKey:@"frontALSThreshold"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v24 floatValue];
          *(v50 + 11) = v4;
        }

        v25 = [cf objectForKey:@"rearALSThreshold"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v25 floatValue];
          *(v50 + 12) = v5;
        }

        v26 = [cf objectForKey:@"luxRatioThreshold"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v26 floatValue];
          *(v50 + 13) = v6;
        }

        v27 = [cf objectForKey:@"nitsRatioThreshold"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27 floatValue];
          *(v50 + 14) = v7;
        }
      }

      CFRelease(cf);
    }

    if (*(v50 + 2))
    {
      v10 = *(v50 + 2);
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v52, COERCE__INT64(*(v50 + 11)), COERCE__INT64(*(v50 + 12)), COERCE__INT64(*(v50 + 13)), COERCE__INT64(*(v50 + 14)));
      _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "AABRear: frontALSThreshold = %f, rearALSThreshold = %f, luxRatioThreshold = %f, nitsRatioThreshold = %f", v52, 0x2Au);
    }

    _Block_object_dispose(v29, 8);
  }

  v51 = v50;
LABEL_55:
  *MEMORY[0x1E69E9840];
  return v51;
}

uint64_t __44__AABRear_initWithQueue_andGrimaldiFactory___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [*(*(*(result + 32) + 8) + 40) sendNotificationForKey:a2 withValue:a3];
    }
  }

  return result;
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  [(CBModule *)self->_rearALSModule unregisterNotificationBlock];
  v2 = MEMORY[0x1E69E5920](v6->_rearALSModule).n128_u64[0];
  if (v6->super._logHandle)
  {
    v3 = &OBJC_IVAR___CBModule__logHandle;
    v2 = MEMORY[0x1E69E5920](v6->super._logHandle).n128_u64[0];
    v6->super._logHandle = 0;
  }

  v4.receiver = v6;
  v4.super_class = AABRear;
  [(CBModule *)&v4 dealloc:*&v2];
}

- (BOOL)shouldUseRLux:(float)a3 rLux:(float)a4
{
  v6 = 0;
  if (a3 >= self->_frontALSThreshold)
  {
    v6 = a4 >= self->_rearALSThreshold;
  }

  if (self->_activationFLux <= 0.0 || a3 >= a4 || a4 <= self->_frontALSThreshold)
  {
    v5 = 0;
    if (v6)
    {
      v5 = a4 >= (self->_luxRatioThreshold * a3);
    }

    v7 = v5;
    if (v5)
    {
      self->_activationFLux = a3;
    }
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    self->_activationFLux = -1.0;
  }

  return v7;
}

- (void)evaluateSamplingFrequencyWithLux:(float)a3 andCap:(float)a4
{
  if (self->_sensorEnabled)
  {
    if (a3 < a4)
    {
      if (self->_lastFrequency < 1.0)
      {
        self->_lastFrequency = 1.0;
        [(CBRearALSModule *)self->_rearALSModule stopSampling];
        *&v5 = self->_lastFrequency;
        [(CBRearALSModule *)self->_rearALSModule startSamplingWithFrequency:v5];
      }
    }

    else if (self->_lastFrequency > 1.0)
    {
      self->_lastFrequency = 1.0;
      [(CBRearALSModule *)self->_rearALSModule stopSampling];
      *&v4 = self->_lastFrequency;
      [(CBRearALSModule *)self->_rearALSModule startSamplingWithFrequency:v4];
    }
  }
}

- (BOOL)shouldUseRearLuxFrontLux:(float)a3 rearLux:(float)a4 andCap:(float)a5
{
  v25 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_3_8_0_8_0_8_0(v24, COERCE__INT64(a3), COERCE__INT64(a4), COERCE__INT64(a5));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "AABRear: shouldUseRearLuxFrontLux called with (fLux:%f, rLux:%f, cap: %f)", v24, 0x20u);
  }

  *&v5 = a3;
  *&v6 = a4;
  v17 = [(AABRear *)self shouldUseRLux:v5 rLux:v6];
  *&v7 = a4;
  *&v8 = a5;
  [(AABRear *)self evaluateSamplingFrequencyWithLux:v7 andCap:v8];
  if (self->super._logHandle)
  {
    v14 = self->super._logHandle;
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

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v23, v17);
    _os_log_debug_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEBUG, "AABRear: using rear? %d", v23, 8u);
  }

  if (v17 != self->_shouldUseRearLux)
  {
    self->_shouldUseRearLux = v17;
    if (self->super._logHandle)
    {
      v12 = self->super._logHandle;
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

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_shouldUseRearLux)
      {
        v9 = "";
      }

      else
      {
        v9 = "Don't ";
      }

      __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v22, v9, COERCE__INT64(a3), COERCE__INT64(a4), COERCE__INT64(a5));
      _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "AABRear: %suse rear Lux (fLux:%f, rLux:%f, cap: %f)", v22, 0x2Au);
    }
  }

  *MEMORY[0x1E69E9840];
  return v17;
}

- (void)stopSampling
{
  if (self->_sensorEnabled)
  {
    [(CBRearALSModule *)self->_rearALSModule stopSampling];
    self->_sensorEnabled = 0;
  }

  self->_started = 0;
  self->_activationFLux = -1.0;
}

@end