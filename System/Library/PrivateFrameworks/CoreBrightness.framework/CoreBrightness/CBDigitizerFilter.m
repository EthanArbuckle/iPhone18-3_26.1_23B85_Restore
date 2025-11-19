@interface CBDigitizerFilter
+ (CBDigitizerFilterTouchProperties)loadTouchProperties:(SEL)a3;
- (BOOL)isObstructed;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBDigitizerFilter)initWithALSNode:(id)a3 andLogCategory:(const char *)a4;
- (id)filterEvent:(id)a3;
- (id)handleALSEvent:(id)a3;
- (id)handleDigitizerEvent:(id)a3;
- (id)newHospotForLocationX:(float)a3 andY:(float)a4;
- (id)newHotspot;
- (id)newHotspotForOrientation;
- (void)dealloc;
- (void)overrideHotspotWithCenterX:(float)a3 andCenterY:(float)a4;
- (void)setIsActive:(BOOL)a3;
- (void)setTriggered:(int64_t)a3 forHotspot:(id)a4;
@end

@implementation CBDigitizerFilter

- (BOOL)isObstructed
{
  v3 = 0;
  if ([(CBDigitizerFilter *)self isActive])
  {
    return [(CBDigitizerFilter *)self isObstructedIgnoreActive];
  }

  return v3;
}

- (CBDigitizerFilter)initWithALSNode:(id)a3 andLogCategory:(const char *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17.receiver = self;
  v17.super_class = CBDigitizerFilter;
  v21 = [(CBDigitizerFilter *)&v17 init];
  if (v21)
  {
    v4 = os_log_create("com.apple.CoreBrightness.CBDigitizerFilter", v18);
    v21->super._logHandle = v4;
    v5 = [v19 orientation];
    v21->_orientation = v5;
    v6 = [v19 digitizerFilterWindow];
    v21->_behavior = v6;
    if (v21->super._logHandle)
    {
      logHandle = v21->super._logHandle;
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
      __os_log_helper_16_2_1_8_64(v22, v19);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Creating digitizer filter for ALS [%@]", v22, 0xCu);
    }

    v21->_hotspot = 0;
    v21->_isActive = 1;
    if ([v19 overrideHotspot])
    {
      v13 = v21;
      [objc_msgSend(v19 "overrideHotspot")];
      v14 = v7;
      [objc_msgSend(v19 "overrideHotspot")];
      LODWORD(v9) = v8;
      LODWORD(v10) = v14;
      v11 = [(CBDigitizerFilter *)v13 newHospotForLocationX:v10 andY:v9];
      v21->_hotspot = v11;
    }

    v21->_firstDigitizerEvent = 0;
  }

  *MEMORY[0x1E69E9840];
  return v21;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](v5->super._logHandle);
    v5->super._logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](v5->_hotspot).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBDigitizerFilter;
  [(CBDigitizerFilter *)&v3 dealloc];
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
  v39 = *MEMORY[0x1E69E9840];
  v30 = 0;
  if ([a4 isEqual:@"AutoBrightnessTouchEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CBDigitizerFilter setIsActive:](self, "setIsActive:", [a3 BOOLValue]);
      v30 = 1;
    }
  }

  else if ([a4 isEqual:@"AutoBrightnessTouchDelay"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      v29 = v4;
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
        [(CBDigitizerHotspot *)self->_hotspot touchTriggerDelay];
        __os_log_helper_16_0_2_8_0_8_0(v38, COERCE__INT64(v6), COERCE__INT64(v29));
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Changing delay=%f to %f", v38, 0x16u);
      }

      *&v5 = v29;
      [(CBDigitizerHotspot *)self->_hotspot setTouchTriggerDelay:v5];
      v30 = 1;
    }
  }

  else if ([a4 isEqual:@"AutoBrightnessTouchRadius"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      v28 = (((v7 * 2.54) * 1000.0) * (v7 * 2.54)) * 1000.0;
      if (self->super._logHandle)
      {
        v21 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v20 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v20 = init_default_corebrightness_log();
        }

        v21 = v20;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v37, COERCE__INT64(self->_props.touchHotSpotSquared), COERCE__INT64(v28));
        _os_log_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_DEFAULT, "Changing touch radius=%f to %f in units of 10 µm^2", v37, 0x16u);
      }

      self->_props.touchHotSpotSquared = v28;
      v30 = 1;
    }
  }

  hotspot = self->_hotspot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = self->_hotspot;
    if ([a4 isEqual:@"AutoBrightnessTouchDelay"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 floatValue];
        [(CBDigitizerHotspot *)v27 setTouchTriggerBaseDelay:v8];
        v30 = 1;
      }
    }

    else if ([a4 isEqual:@"AutoBrightnessTouchBufferPivot"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [a3 intValue];
        if (self->super._logHandle)
        {
          v18 = self->super._logHandle;
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

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_4_0_4_0(v36, [(CBDigitizerHotspot *)v27 touchBufferPivot], v26);
          _os_log_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_DEFAULT, "Changing touch buffer pivot=%d to %d", v36, 0xEu);
        }

        [(CBDigitizerHotspot *)v27 setTouchBufferPivot:v26];
        v30 = 1;
      }
    }

    else if ([a4 isEqual:@"AutoBrightnessTouchBufferMaxCount"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [a3 intValue];
        if (self->super._logHandle)
        {
          v16 = self->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v15 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v15 = init_default_corebrightness_log();
          }

          v16 = v15;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_4_0_4_0(v35, [(CBDigitizerHotspot *)v27 touchBufferMaxCount], v25);
          _os_log_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_DEFAULT, "Changing touch buffer max count=%d to %d", v35, 0xEu);
        }

        [(CBDigitizerHotspot *)v27 setTouchBufferMaxCount:v25];
        v30 = 1;
      }
    }

    else if ([a4 isEqual:@"AutoBrightnessTouchBufferWindowS"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 floatValue];
        v24 = v9;
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

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          [(CBDigitizerHotspot *)v27 touchBufferWindowS];
          __os_log_helper_16_0_2_8_0_8_0(v34, COERCE__INT64(v11), COERCE__INT64(v24));
          _os_log_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEFAULT, "Changing touch buffer window=%f to %f sec", v34, 0x16u);
        }

        *&v10 = v24;
        [(CBDigitizerHotspot *)v27 setTouchBufferWindowS:v10];
        v30 = 1;
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v30 & 1;
}

- (void)overrideHotspotWithCenterX:(float)a3 andCenterY:(float)a4
{
  v4 = MEMORY[0x1E69E5920](self->_hotspot);
  v4.n128_f32[0] = a3;
  *&v5 = a4;
  self->_hotspot = [(CBDigitizerFilter *)self newHospotForLocationX:v4.n128_f64[0] andY:v5];
}

- (id)filterEvent:(id)a3
{
  v4 = [a3 eventType];
  if (v4 == 11)
  {
    return [(CBDigitizerFilter *)self handleDigitizerEvent:a3];
  }

  if (v4 == 12)
  {
    return [(CBDigitizerFilter *)self handleALSEvent:a3];
  }

  return a3;
}

- (id)handleALSEvent:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([a3 firstALSSample] & 1) == 0)
    {
      v9 = [(CBDigitizerHotspot *)self->_hotspot orientation];
      if (v9 == [a3 orientation])
      {
        hotspot = self->_hotspot;
        [a3 timestamp];
        if ([(CBDigitizerHotspot *)hotspot isClearedAt:?])
        {
          [(CBDigitizerFilter *)self setTriggered:0 forHotspot:self->_hotspot];
        }

        if ([(CBDigitizerHotspot *)self->_hotspot triggered]&& [(CBDigitizerFilter *)self isActive])
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
            v5 = [a3 orientation];
            [a3 timestamp];
            __os_log_helper_16_2_3_4_0_8_0_8_64(v12, v5, COERCE__INT64(v3), self->_hotspot);
            _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Hotspot for ALS %d: timestamp = %.2f marked as obstructed hotspot = [%@]", v12, 0x1Cu);
          }

          [a3 setObstructed:1];
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return a3;
}

- (id)handleDigitizerEvent:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v46 = self;
  v45 = a2;
  v44 = a3;
  if (!self->_firstDigitizerEvent)
  {
    if (v46->super._logHandle)
    {
      logHandle = v46->super._logHandle;
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

    v43 = logHandle;
    v42 = 2;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      log = v43;
      type = v42;
      __os_log_helper_16_0_0(v41);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "First digitizer event -> load touch properties", v41, 2u);
    }

    p_props = &v46->_props;
    +[CBDigitizerFilter loadTouchProperties:](CBDigitizerFilter, "loadTouchProperties:", [v44 service]);
    *&p_props->digitizerWidth = v39;
    p_props->touchHotSpotSquared = v40;
    if (!v46->_hotspot)
    {
      v46->_hotspot = [(CBDigitizerFilter *)v46 newHotspotForOrientation];
    }

    v46->_firstDigitizerEvent = 1;
  }

  v38 = [v44 copyChildren];
  if (!v38)
  {
    v3 = objc_alloc(MEMORY[0x1E695DEC8]);
    v38 = [v3 initWithObjects:{v44, 0}];
  }

  if (v38)
  {
    v37 = 0;
    for (i = 0; i < [v38 count]; ++i)
    {
      [v38 objectAtIndexedSubscript:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [objc_msgSend(v38 objectAtIndexedSubscript:{i), "integerValueForKey:", 720905}] != 0;
        [objc_msgSend(v38 objectAtIndexedSubscript:{i), "floatValueForKey:", 720896}];
        v34 = v4;
        [objc_msgSend(v38 objectAtIndexedSubscript:{i), "floatValueForKey:", 720897}];
        v33 = v34 * v46->_props.digitizerWidth;
        v32 = v5 * v46->_props.digitizerHeight;
        [(CBDigitizerHotspot *)v46->_hotspot center_X];
        v31 = v6 - v33;
        [(CBDigitizerHotspot *)v46->_hotspot center_Y];
        v30 = ((v7 - v32) * (v7 - v32)) + (v31 * v31);
        if (v46->super._logHandle)
        {
          v24 = v46->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v23 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v23 = init_default_corebrightness_log();
          }

          v24 = v23;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [objc_msgSend(v38 objectAtIndexedSubscript:{i), "floatValueForKey:", 720904}];
          *&v18 = v9;
          [objc_msgSend(v38 objectAtIndexedSubscript:{i), "floatValueForKey:", 720917}];
          *&v19 = v10;
          [objc_msgSend(v38 objectAtIndexedSubscript:{i), "floatValueForKey:", 720916}];
          *&v20 = v11;
          v21 = [(CBDigitizerHotspot *)v46->_hotspot orientation];
          v22 = 0;
          if (v30 < v46->_props.touchHotSpotSquared)
          {
            v22 = v35;
          }

          v12 = "";
          if (!v22)
          {
            v12 = "un";
          }

          __os_log_helper_16_2_8_8_0_8_0_8_0_8_0_8_0_4_0_4_0_8_32(v48, COERCE__INT64(v33), COERCE__INT64(v32), v18, v19, v20, v35, v21, v12);
          _os_log_debug_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_DEBUG, "Multitouch event - X: %f, Y: %f, range: %f, minor r: %f, major r: %f, touch: %d, ALS[%d] obstruction %sdetected", v48, 0x4Au);
        }

        *&v8 = v30;
        if (v30 < v46->_props.touchHotSpotSquared && v35)
        {
          v37 = 1;
          [(CBDigitizerFilter *)v46 setTriggered:1 forHotspot:v46->_hotspot, v8];
          break;
        }
      }
    }

    if ((v37 & 1) == 0 && [(CBDigitizerHotspot *)v46->_hotspot triggered]== 1)
    {
      [(CBDigitizerFilter *)v46 setTriggered:2 forHotspot:v46->_hotspot];
      hotspot = v46->_hotspot;
      [v44 timestamp];
      [(CBDigitizerHotspot *)hotspot setTouchReleaseTime:?];
      if (v46->super._logHandle)
      {
        v16 = v46->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v15 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v15 = init_default_corebrightness_log();
        }

        v16 = v15;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        [(CBDigitizerHotspot *)v46->_hotspot touchTriggerDelay];
        __os_log_helper_16_0_1_8_0(v47, COERCE__INT64(v13));
        _os_log_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_INFO, "Touch release delay %f", v47, 0xCu);
      }
    }
  }

  MEMORY[0x1E69E5920](v38);
  *MEMORY[0x1E69E9840];
  return v44;
}

+ (CBDigitizerFilterTouchProperties)loadTouchProperties:(SEL)a3
{
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = 0;
  *&retstr->digitizerWidth = 0;
  *&retstr->deviceCenterX = 0;
  retstr->touchHotSpotSquared = 0.0;
  v31 = 0;
  v30 = IOHIDServiceClientCopyProperty(v33, @"SurfaceDimensions");
  if (v30)
  {
    v18 = CFGetTypeID(v30);
    if (v18 == CFDictionaryGetTypeID())
    {
      valuePtr = 0;
      v28 = 0;
      v27 = 0;
      Value = CFDictionaryGetValue(v30, @"Width");
      if (Value)
      {
        v17 = CFGetTypeID(Value);
        if (v17 == CFNumberGetTypeID())
        {
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr == 0x80000000)
          {
            v16 = NAN;
          }

          else
          {
            v16 = valuePtr / 65536.0;
          }

          v4 = v16 * 100.0;
          retstr->digitizerWidth = v4;
          v28 = 1;
        }
      }

      v25 = 0;
      v24 = CFDictionaryGetValue(v30, @"Height");
      if (v24)
      {
        v15 = CFGetTypeID(v24);
        if (v15 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v24, kCFNumberSInt32Type, &v25);
          if (v25 == 0x80000000)
          {
            v14 = NAN;
          }

          else
          {
            v14 = v25 / 65536.0;
          }

          v5 = v14 * 100.0;
          retstr->digitizerHeight = v5;
          v27 = 1;
        }
      }

      if (v28 & 1) != 0 && (v27)
      {
        v31 = 1;
      }
    }
  }

  if (v30)
  {
    CFRelease(v30);
  }

  result = IOHIDServiceClientGetRegistryID(v33);
  if (result && (v31 & 1) == 0)
  {
    result = CFNumberGetValue(result, kCFNumberSInt64Type, &v32);
  }

  if (v32)
  {
    mainPort = *MEMORY[0x1E696CD60];
    v7 = IORegistryEntryIDMatching(v32);
    MatchingService = IOServiceGetMatchingService(mainPort, v7);
    v13 = MEMORY[0x1E695E480];
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Sensor Surface Width", *MEMORY[0x1E695E480], 0);
    result = IORegistryEntryCreateCFProperty(MatchingService, @"Sensor Surface Height", *v13, 0);
    cf = result;
    if (CFProperty)
    {
      v11 = CFGetTypeID(CFProperty);
      TypeID = CFNumberGetTypeID();
      result = v11;
      if (v11 == TypeID)
      {
        if (cf)
        {
          v10 = CFGetTypeID(cf);
          v9 = CFNumberGetTypeID();
          result = v10;
          if (v10 == v9)
          {
            CFNumberGetValue(CFProperty, kCFNumberFloatType, retstr);
            result = CFNumberGetValue(cf, kCFNumberFloatType, &retstr->digitizerHeight);
            v31 = 1;
          }
        }
      }
    }

    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v31)
  {
    retstr->deviceCenterX = retstr->digitizerWidth / 2.0;
    retstr->deviceCenterY = retstr->digitizerHeight / 2.0;
    if (retstr->digitizerWidth * 0.001 <= 10.0)
    {
      v20 = 1.27;
    }

    else
    {
      v20 = 2.54;
    }

    retstr->touchHotSpotSquared = ((v20 * 1000.0) * v20) * 1000.0;
  }

  return result;
}

- (id)newHotspot
{
  if (self->_behavior == 1)
  {
    return objc_alloc_init(CBDigitizerHotspotTTF);
  }

  else
  {
    return objc_alloc_init(CBDigitizerHotspot);
  }
}

- (id)newHospotForLocationX:(float)a3 andY:(float)a4
{
  v7 = [(CBDigitizerFilter *)self newHotspot];
  *&v4 = a3;
  [v7 setCenter_X:v4];
  *&v5 = a4;
  [v7 setCenter_Y:v5];
  [v7 setOrientation:self->_orientation];
  return v7;
}

- (id)newHotspotForOrientation
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = [(CBDigitizerFilter *)self newHotspot];
  [v17 setOrientation:self->_orientation];
  orientation = self->_orientation;
  switch(orientation)
  {
    case 1:
      goto LABEL_9;
    case 2:
      *&v2 = self->_props.deviceCenterX;
      [v17 setCenter_X:v2];
      *&v4 = self->_props.digitizerHeight;
      [v17 setCenter_Y:v4];
      break;
    case 3:
      *&v2 = self->_props.digitizerWidth;
      [v17 setCenter_X:v2];
      *&v3 = self->_props.deviceCenterY;
      [v17 setCenter_Y:v3];
      break;
    case 4:
      [v17 setCenter_X:0.0];
      *&v5 = self->_props.deviceCenterY;
      [v17 setCenter_Y:v5];
      break;
    case 5:
      *&v2 = self->_props.digitizerWidth;
      [v17 setCenter_X:v2];
      [v17 setCenter_Y:0.0];
      break;
    case 6:
      [v17 setCenter_X:?];
      LODWORD(v6) = 0;
      [v17 setCenter_Y:v6];
      break;
    case 7:
      *&v2 = self->_props.digitizerWidth;
      [v17 setCenter_X:v2];
      *&v7 = self->_props.digitizerHeight;
      [v17 setCenter_Y:v7];
      break;
    case 8:
      [v17 setCenter_X:0.0];
      *&v8 = self->_props.digitizerHeight;
      [v17 setCenter_Y:v8];
      break;
    default:
LABEL_9:
      *&v2 = self->_props.deviceCenterX;
      [v17 setCenter_X:v2];
      [v17 setCenter_Y:0.0];
      break;
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v12 = [v17 orientation];
    [v17 center_X];
    *&v13 = v9;
    [v17 center_Y];
    __os_log_helper_16_0_3_4_0_8_0_8_0(v19, v12, v13, COERCE__INT64(v10));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Hotspot for ALS %d: centerX %f centerY %f", v19, 0x1Cu);
  }

  *MEMORY[0x1E69E9840];
  return v17;
}

- (void)setTriggered:(int64_t)a3 forHotspot:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 != [a4 triggered])
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_4_4_0_4_0_8_32_8_32(v13, [a4 orientation], -[CBDigitizerFilter isActive](self, "isActive"), (&kTouchStateStr)[objc_msgSend(a4, "triggered")], (&kTouchStateStr)[a3]);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Hotspot for ALS %d: active = %d changed = %s to %s", v13, 0x22u);
    }

    [a4 setTriggered:a3];
    if (!a3)
    {
      [a4 touchTriggerDelay];
      [CBAnalytics touchOcclusionElapsedDelay:?];
    }

    if ([(CBDigitizerFilter *)self isActive])
    {
      context = objc_autoreleasePoolPush();
      v5 = objc_alloc(MEMORY[0x1E695DF20]);
      v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_orientation];
      v9 = [v5 initWithObjectsAndKeys:{v4, @"TouchOrientation", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", -[CBDigitizerFilter isObstructed](self, "isObstructed")), @"TouchIsObstucted", 0}];
      objc_autoreleasePoolPop(context);
      [(CBFilter *)self sendNotificationForKey:@"TouchStateChanged" andValue:v9];
      MEMORY[0x1E69E5920](v9);
    }
  }

  *MEMORY[0x1E69E9840];
}

@end