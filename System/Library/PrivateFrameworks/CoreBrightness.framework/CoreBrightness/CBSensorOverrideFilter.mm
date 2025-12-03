@interface CBSensorOverrideFilter
- (CBSensorOverrideFilter)initWithData:(id)data;
- (id)filterEvent:(id)event;
- (void)dealloc;
@end

@implementation CBSensorOverrideFilter

- (CBSensorOverrideFilter)initWithData:(id)data
{
  selfCopy = self;
  v17 = a2;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = CBSensorOverrideFilter;
  selfCopy = [(CBSensorOverrideFilter *)&v15 init];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBSensorOverrideFilter", "default");
    selfCopy->super._logHandle = v3;
    selfCopy->_chromaticity.x = -1.0;
    selfCopy->_chromaticity.y = -1.0;
    selfCopy->_illuminance = -1.0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [dataCopy floatValue];
      selfCopy->_illuminance = v4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [dataCopy objectForKey:@"AABSensorOverrideValue"];
        v13 = [dataCopy objectForKey:@"AABSensorOverrideOrientation"];
        if (v14)
        {
          [v14 floatValue];
          selfCopy->_illuminance = v5;
        }

        if (v13)
        {
          intValue = [v13 intValue];
          selfCopy->_orientation = intValue;
        }

        v12 = [dataCopy objectForKey:@"AABSensorOverrideColor"];
        if (v12)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 count] >= 2)
          {
            v11 = [v12 objectAtIndex:0];
            v10 = [v12 objectAtIndex:1];
            if (v11)
            {
              [v11 floatValue];
              selfCopy->_chromaticity.x = v7;
            }

            if (v10)
            {
              [v10 floatValue];
              selfCopy->_chromaticity.y = v8;
            }
          }
        }
      }
    }
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
  v2.super_class = CBSensorOverrideFilter;
  [(CBSensorOverrideFilter *)&v2 dealloc];
}

- (id)filterEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v14 = a2;
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (!selfCopy->_orientation || [eventCopy orientation] == selfCopy->_orientation))
  {
    if (selfCopy->_illuminance >= 0.0)
    {
      [eventCopy setIlluminance:selfCopy->_illuminance];
    }

    if (selfCopy->_chromaticity.x >= 0.0 && selfCopy->_chromaticity.y >= 0.0)
    {
      memset(__b, 0, 0x3CuLL);
      if (eventCopy)
      {
        [eventCopy colorSample];
      }

      else
      {
        memset(__b, 0, 0x3CuLL);
      }

      *(&__b[1] + 4) = selfCopy->_chromaticity;
      HIDWORD(__b[2]) = CFXChromaticity2CCT(&selfCopy->_chromaticity);
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

      v11 = logHandle;
      v10 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v17, COERCE__INT64(*(&__b[2] + 1)));
        _os_log_debug_impl(&dword_1DE8E5000, v11, v10, "CCT1 (overridden) = %f\n", v17, 0xCu);
      }

      if (selfCopy->_chromaticity.y == 0.0)
      {
        __b[0] = 0;
        LODWORD(__b[1]) = 0;
      }

      else
      {
        v3 = selfCopy->_illuminance / 3.14159265;
        CFXChromaticity2Tristimulus(&__b[1] + 1, __b, v3);
      }

      HIDWORD(__b[6]) = 0;
      *(&__b[3] + 4) = 0;
      *(&__b[4] + 4) = 0;
      *(&__b[5] + 4) = 0;
      LODWORD(__b[3]) = selfCopy->_orientation;
      memcpy(__dst, __b, 0x3CuLL);
      [eventCopy setColorSample:__dst];
    }

    if (selfCopy->super._logHandle)
    {
      v6 = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_1_8_64(v16, eventCopy);
      _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "%@", v16, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return eventCopy;
}

@end