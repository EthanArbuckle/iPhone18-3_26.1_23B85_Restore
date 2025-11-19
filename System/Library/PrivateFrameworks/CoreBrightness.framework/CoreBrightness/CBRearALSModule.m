@interface CBRearALSModule
- (BOOL)AABSensorOverridePropertyHandler:(id)a3;
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)displayBrightnessFactorPropertyHandler:(id)a3;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4;
- (BOOL)isMitigationActive;
- (BOOL)isRearALSSupported;
- (BOOL)rLuxOverridePropertyHandler:(id)a3;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBRearALSModule)initWithQueue:(id)a3 andGrimaldiFactory:(id)a4;
- (id)copyParam:(id)a3;
- (id)copyRearLux;
- (void)dealloc;
- (void)startSamplingWithFrequency:(float)a3;
- (void)stopSampling;
@end

@implementation CBRearALSModule

- (BOOL)isRearALSSupported
{
  v3 = 1;
  if (!self->_Grimaldi)
  {
    return self->_rearALS != 0;
  }

  return v3;
}

- (id)copyRearLux
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (self->_providerType == 1 && self->_rearALS)
  {
    if (self->_started)
    {
      if (self->_enableIlluminanceOverride)
      {
        v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:self->_illuminanceOverride];
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

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_1_8_0(v27, COERCE__INT64(self->_illuminanceOverride));
          _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Copy overridden rear ALS Lux = %f", v27, 0xCu);
        }
      }

      else if ([(CBRearALSModule *)self isMitigationActive])
      {
        v21 = [(NSNumber *)self->_lastLux copy];
        if (self->super._logHandle)
        {
          v11 = self->super._logHandle;
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

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          [(NSNumber *)self->_lastLux floatValue];
          __os_log_helper_16_0_1_8_0(v24, COERCE__INT64(v6));
          _os_log_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_INFO, "Mitigation is active -> copy last valid rear ALS Lux = %f", v24, 0xCu);
        }
      }

      else
      {
        v2 = [(CBALSNode *)self->_rearALS currentALSEvent];
        v20 = MEMORY[0x1E69E5928](v2);
        v19 = mach_time_now_in_seconds();
        if (!v20 || ([v20 timestamp], vabds_f32(v19, v3) >= 1.0))
        {
          v4 = MEMORY[0x1E69E5920](v20);
          v4.n128_u32[0] = 1.0;
          v20 = [(CBALSNode *)self->_rearALS copyALSEventWithinTimeout:v4.n128_f64[0]];
          if (self->super._logHandle)
          {
            v16 = self->super._logHandle;
          }

          else
          {
            v15 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v16 = v15;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_64(v26, v20);
            _os_log_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_INFO, "Copied ALS event %@", v26, 0xCu);
          }
        }

        if (v20)
        {
          v14 = objc_alloc(MEMORY[0x1E696AD98]);
          [v20 illuminance];
          v21 = [v14 initWithDouble:?];
          self->_lastLux = [v21 copy];
          if (self->super._logHandle)
          {
            v13 = self->super._logHandle;
          }

          else
          {
            v12 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v13 = v12;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            [v20 illuminance];
            __os_log_helper_16_0_1_8_0(v25, v5);
            _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_INFO, "Copy rear ALS Lux = %f", v25, 0xCu);
          }
        }

        MEMORY[0x1E69E5920](v20);
      }
    }
  }

  else if (self->_providerType == 2 && self->_Grimaldi)
  {
    v21 = [(CBGrimaldiModule *)self->_Grimaldi copyRearLux];
  }

  if (v21)
  {
    if (self->super._logHandle)
    {
      v9 = self->super._logHandle;
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v23, v21);
      _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "Copy Grimaldi Lux = %@", v23, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v21;
}

- (CBRearALSModule)initWithQueue:(id)a3 andGrimaldiFactory:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22.receiver = self;
  v22.super_class = CBRearALSModule;
  v26 = [(CBModule *)&v22 initWithQueue:a3];
  if (!v26)
  {
LABEL_20:
    v27 = v26;
    goto LABEL_21;
  }

  *(v26 + 2) = os_log_create("com.apple.CoreBrightness.AABRear.CBRearALSModule", "default");
  if (*(v26 + 2))
  {
    *(v26 + 6) = 0;
    v18 = objc_alloc_init(GrimaldiAPDSEventSource);
    [v23 setQueue:v24];
    [v23 setEventSource:v18];
    *(v26 + 4) = [v23 newInstance];
    if (*(v26 + 2))
    {
      v6 = *(v26 + 2);
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

      v6 = inited;
    }

    v17 = v6;
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v28, v26, *(v26 + 4));
      _os_log_debug_impl(&dword_1DE8E5000, v17, v16, "RearALS: obj (%@) initialized with ALS: %@", v28, 0x16u);
    }

    if (*(v26 + 4))
    {
      *(v26 + 6) = 2;
      v10[0] = 0;
      v10[1] = v10;
      v11 = 1375731712;
      v12 = 48;
      v13 = __Block_byref_object_copy__4;
      v14 = __Block_byref_object_dispose__4;
      v15 = v26;
      [*(v26 + 4) registerNotificationBlock:?];
      _Block_object_dispose(v10, 8);
    }

    *(v26 + 5) = 0;
    *(v26 + 56) = 0;
    *(v26 + 57) = 1;
    *(v26 + 58) = 0;
    *(v26 + 59) = 0;
    *(v26 + 72) = 0;
    *(v26 + 19) = -1.0;
    *(v26 + 8) = 0;
    goto LABEL_20;
  }

  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v9 = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    v9 = init_default_corebrightness_log();
  }

  v21 = v9;
  v20 = 16;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    log = v21;
    type = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v19, 2u);
  }

  MEMORY[0x1E69E5920](v26);
  v27 = 0;
LABEL_21:
  *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t __52__CBRearALSModule_initWithQueue_andGrimaldiFactory___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
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
  v5 = self;
  v4 = a2;
  [(CBGrimaldiModule *)self->_Grimaldi unregisterNotificationBlock];
  MEMORY[0x1E69E5920](v5->_Grimaldi);
  MEMORY[0x1E69E5920](v5->_rearALS);
  v2 = MEMORY[0x1E69E5920](v5->_lastLux).n128_u64[0];
  v5->_lastLux = 0;
  if (v5->super._logHandle)
  {
    v2 = MEMORY[0x1E69E5920](v5->super._logHandle).n128_u64[0];
    v5->super._logHandle = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBRearALSModule;
  [(CBModule *)&v3 dealloc];
}

- (void)startSamplingWithFrequency:(float)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self->_started)
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v8, COERCE__INT64(a3));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Start rear ALS with freq %f.", v8, 0xCu);
    }

    *&v3 = a3;
    [(CBGrimaldiModule *)self->_Grimaldi startWithFrequency:v3];
    self->_started = 1;
  }

  *MEMORY[0x1E69E9840];
}

- (void)stopSampling
{
  v10 = self;
  v9 = a2;
  if (self->_started)
  {
    if (v10->super._logHandle)
    {
      logHandle = v10->super._logHandle;
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
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_impl(&dword_1DE8E5000, log, type, "Stop sampling.", v6, 2u);
    }

    [(CBGrimaldiModule *)v10->_Grimaldi stop];
    v10->_started = 0;
    MEMORY[0x1E69E5920](v10->_lastLux);
    v10->_lastLux = 0;
  }
}

- (id)copyParam:(id)a3
{
  if ([a3 isEqualToString:@"lux"])
  {
    return [(CBRearALSModule *)self copyRearLux];
  }

  if ([a3 isEqualToString:@"GainChanged"])
  {
    return [(CBGrimaldiModule *)self->_Grimaldi copyGainChanged];
  }

  return [(CBGrimaldiModule *)self->_Grimaldi copyRearLux];
}

- (BOOL)isMitigationActive
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = [(CBGrimaldiModule *)self->_Grimaldi strobeCoex];
  if (v6 != self->_strobeCoex)
  {
    self->_strobeCoex = v6;
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
      if (v6)
      {
        v2 = "activated";
      }

      else
      {
        v2 = "deactivated";
      }

      __os_log_helper_16_2_1_8_32(v8, v2);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Strobe mitigation %s.", v8, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return self->_strobeCoex;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v5 = 0;
  if ([a4 isEqualToString:@"DisplayBrightnessFactor"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"DisplayBrightnessFactorWithFade"))
  {
    v5 = [(CBRearALSModule *)self displayBrightnessFactorPropertyHandler:a3];
  }

  else if ([a4 isEqualToString:@"AABSensorOverride"])
  {
    v5 = [(CBRearALSModule *)self AABSensorOverridePropertyHandler:a3];
  }

  else if ([a4 isEqualToString:@"RLuxOverride"])
  {
    v5 = [(CBRearALSModule *)self rLuxOverridePropertyHandler:a3];
  }

  else if ([a4 isEqualToString:@"RLuxOverrideEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_enableIlluminanceOverride = [a3 BOOLValue];
      v5 = 1;
    }
  }

  return (v5 | [(CBGrimaldiModule *)self->_Grimaldi setProperty:a3 forKey:a4]) != 0;
}

- (BOOL)displayBrightnessFactorPropertyHandler:(id)a3
{
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 objectForKey:@"DisplayBrightnessFactor"];
  }

  else
  {
    v5 = a3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 floatValue];
    if (v3 <= 0.0)
    {
      self->_displayOn = 0;
      if (self->_rearALS)
      {
        [(CBALSNode *)self->_rearALS setReportInterval:0];
      }

      MEMORY[0x1E69E5920](self->_lastLux);
      self->_lastLux = 0;
    }

    else
    {
      self->_displayOn = 1;
      if (self->_rearALS && [(CBALSNode *)self->_rearALS slowIntegrationTime]> 0)
      {
        [(CBALSNode *)self->_rearALS setReportInterval:[(CBALSNode *)self->_rearALS slowIntegrationTime]];
      }
    }

    return 1;
  }

  return v6;
}

- (BOOL)rLuxOverridePropertyHandler:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_enableIlluminanceOverride = 1;
    [a3 objectForKey:@"lux"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(a3 objectForKey:{@"lux", "floatValue"}];
      self->_illuminanceOverride = v3;
    }
  }

  return 1;
}

- (BOOL)AABSensorOverridePropertyHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = -1.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    v11 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [a3 objectForKey:@"AABSensorOverrideValue"];
      v9 = [a3 objectForKey:@"AABSensorOverrideOrientation"];
      if (v10)
      {
        [v10 floatValue];
        v11 = v4;
      }

      if (v9)
      {
        v12 = [v9 intValue];
      }
    }
  }

  if (!v12 || [(CBALSNode *)self->_rearALS orientation]== v12)
  {
    self->_illuminanceOverride = v11;
    self->_enableIlluminanceOverride = v11 >= 0.0;
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      v7 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v7;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_enableIlluminanceOverride)
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      __os_log_helper_16_2_2_8_0_8_32(v15, COERCE__INT64(v11), v5);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Override rear ALS samples with value = %f %s.", v15, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (IOHIDServiceClientConformsTo(a3, 0xFF00u, 4u))
  {
    v6 = [[CBALSNode alloc] initWithALSServiceClient:a3];
    if ([(CBALSNode *)v6 placement]== 2)
    {
      self->_rearALS = MEMORY[0x1E69E5928](v6);
      v7 = 1;
      self->_providerType = 1;
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
        __os_log_helper_16_2_1_8_64(v10, self->_rearALS);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Found rear ALS sensor %@.", v10, 0xCu);
      }

      [(CBGrimaldiModule *)self->_Grimaldi setProvideLux:0];
      [(CBGrimaldiModule *)self->_Grimaldi setProvideCoex:1];
      if (self->_displayOn && [(CBALSNode *)self->_rearALS slowIntegrationTime]> 0)
      {
        [(CBALSNode *)self->_rearALS setReportInterval:[(CBALSNode *)self->_rearALS slowIntegrationTime]];
      }
    }

    MEMORY[0x1E69E5920](v6);
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(CBALSNode *)self->_rearALS conformsToHIDServiceClient:a4])
  {
    v7 = [[CBALSEvent alloc] initWithHIDEvent:a3 andNode:self->_rearALS];
    [(CBALSNode *)self->_rearALS handleALSEvent:v7];
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
      __os_log_helper_16_2_1_8_64(v10, v7);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Handle rear ALS hid event %@.", v10, 0xCu);
    }

    MEMORY[0x1E69E5920](v7);
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CBALSNode *)self->_rearALS conformsToHIDServiceClient:a3])
  {
    MEMORY[0x1E69E5920](self->_rearALS);
    self->_rearALS = 0;
    MEMORY[0x1E69E5920](self->_lastLux);
    self->_lastLux = 0;
    if (self->_Grimaldi)
    {
      self->_providerType = 2;
    }

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
      __os_log_helper_16_2_1_8_64(v7, self->_rearALS);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Remove rear ALS sensor %@.", v7, 0xCu);
    }

    [(CBGrimaldiModule *)self->_Grimaldi setProvideLux:1];
    [(CBGrimaldiModule *)self->_Grimaldi setProvideCoex:0];
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

@end