@interface CBSensorOverrideFilter
- (CBSensorOverrideFilter)initWithData:(id)a3;
- (id)filterEvent:(id)a3;
- (void)dealloc;
@end

@implementation CBSensorOverrideFilter

- (CBSensorOverrideFilter)initWithData:(id)a3
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15.receiver = self;
  v15.super_class = CBSensorOverrideFilter;
  v18 = [(CBSensorOverrideFilter *)&v15 init];
  if (v18)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBSensorOverrideFilter", "default");
    v18->super._logHandle = v3;
    v18->_chromaticity.x = -1.0;
    v18->_chromaticity.y = -1.0;
    v18->_illuminance = -1.0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      v18->_illuminance = v4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v16 objectForKey:@"AABSensorOverrideValue"];
        v13 = [v16 objectForKey:@"AABSensorOverrideOrientation"];
        if (v14)
        {
          [v14 floatValue];
          v18->_illuminance = v5;
        }

        if (v13)
        {
          v6 = [v13 intValue];
          v18->_orientation = v6;
        }

        v12 = [v16 objectForKey:@"AABSensorOverrideColor"];
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
              v18->_chromaticity.x = v7;
            }

            if (v10)
            {
              [v10 floatValue];
              v18->_chromaticity.y = v8;
            }
          }
        }
      }
    }
  }

  return v18;
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
  v2.super_class = CBSensorOverrideFilter;
  [(CBSensorOverrideFilter *)&v2 dealloc];
}

- (id)filterEvent:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = self;
  v14 = a2;
  v13 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (!v15->_orientation || [v13 orientation] == v15->_orientation))
  {
    if (v15->_illuminance >= 0.0)
    {
      [v13 setIlluminance:v15->_illuminance];
    }

    if (v15->_chromaticity.x >= 0.0 && v15->_chromaticity.y >= 0.0)
    {
      memset(__b, 0, 0x3CuLL);
      if (v13)
      {
        [v13 colorSample];
      }

      else
      {
        memset(__b, 0, 0x3CuLL);
      }

      *(&__b[1] + 4) = v15->_chromaticity;
      HIDWORD(__b[2]) = CFXChromaticity2CCT(&v15->_chromaticity);
      if (v15->super._logHandle)
      {
        logHandle = v15->super._logHandle;
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

      if (v15->_chromaticity.y == 0.0)
      {
        __b[0] = 0;
        LODWORD(__b[1]) = 0;
      }

      else
      {
        v3 = v15->_illuminance / 3.14159265;
        CFXChromaticity2Tristimulus(&__b[1] + 1, __b, v3);
      }

      HIDWORD(__b[6]) = 0;
      *(&__b[3] + 4) = 0;
      *(&__b[4] + 4) = 0;
      *(&__b[5] + 4) = 0;
      LODWORD(__b[3]) = v15->_orientation;
      memcpy(__dst, __b, 0x3CuLL);
      [v13 setColorSample:__dst];
    }

    if (v15->super._logHandle)
    {
      v6 = v15->super._logHandle;
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
      __os_log_helper_16_2_1_8_64(v16, v13);
      _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "%@", v16, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v13;
}

@end