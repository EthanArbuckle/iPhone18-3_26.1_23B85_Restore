@interface CBALSEvent
+ (void)replaceLuxWithFilteredLux:(__IOHIDEvent *)a3;
- (CBALSEvent)initWithHIDEvent:(__IOHIDEvent *)a3 andService:(__IOHIDServiceClient *)a4;
- (ColorSensorVendorEventData)copyVendorDataFromEvent:(SEL)a3;
- (int)getServiceOrientation:(__IOHIDServiceClient *)a3;
- (int64_t)compare:(id)a3;
- (void)dealloc;
@end

@implementation CBALSEvent

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
    v5->_logHandle = 0;
  }

  if (v5->_event)
  {
    CFRelease(v5->_event);
  }

  *&v2 = MEMORY[0x1E69E5920](v5->_node).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBALSEvent;
  [(CBHIDEvent *)&v3 dealloc];
}

- (CBALSEvent)initWithHIDEvent:(__IOHIDEvent *)a3 andService:(__IOHIDServiceClient *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = self;
  v40 = a2;
  v39 = a3;
  v38 = a4;
  v37.receiver = self;
  v37.super_class = CBALSEvent;
  v41 = [(CBHIDEvent *)&v37 initWithHIDEvent:a3 andService:a4];
  if (!v41)
  {
LABEL_47:
    v42 = v41;
    goto LABEL_48;
  }

  v4 = os_log_create("com.apple.CoreBrightness.CBALSEvent", "default");
  v41->_logHandle = v4;
  if (v39 && IOHIDEventGetType() == 12)
  {
    CFRetain(v39);
    v41->_event = v39;
    if (v41->_node && [(CBALSNode *)v41->_node supportsFloatLux])
    {
      IOHIDEventGetDoubleValue();
      IntegerValue = v5;
    }

    else
    {
      IntegerValue = IOHIDEventGetIntegerValue();
    }

    v41->_illuminance = IntegerValue;
    v6 = [(CBALSEvent *)v41 getServiceOrientation:v38];
    v41->_orientation = v6;
    event = v41->_event;
    if (IOHIDEventGetIntegerValue() == 1)
    {
      IOHIDEventGetDoubleValue();
      *&v8 = v8 / 3.14159265;
      v41->_colorSample.XYZ[0] = *&v8;
      IOHIDEventGetDoubleValue();
      *&v9 = v9 / 3.14159265;
      v41->_colorSample.XYZ[1] = *&v9;
      IOHIDEventGetDoubleValue();
      *&v10 = v10 / 3.14159265;
      v41->_colorSample.XYZ[2] = *&v10;
      IOHIDEventGetFloatValue();
      *&v11 = v11;
      v41->_colorSample.CCT1 = *&v11;
      if (v41->_colorSample.XYZ[0] == 0.0 || v41->_colorSample.XYZ[1] == 0.0)
      {
        v12 = 0.0;
        v41->_colorSample.xy.y = 0.0;
        v41->_colorSample.xy.x = 0.0;
      }

      else
      {
        *&v12 = CFXTristimulus2Chromaticity(v41->_colorSample.XYZ, &v41->_colorSample.xy);
      }

      __dst = &v41->_vendorData;
      if (v41)
      {
        [(CBALSEvent *)v41 copyVendorDataFromEvent:v39, v12];
      }

      else
      {
        memset(__b, 0, sizeof(__b));
      }

      memcpy(__dst, __b, 0x89uLL);
      v41->_integrationTime = v41->_vendorData.integrationTime / 1000000.0;
      illuminance = v41->_illuminance;
      v41->_colorSample.extra.brightness = illuminance;
      if (v38)
      {
        orientation = v41->_orientation;
      }

      else
      {
        orientation = v41->_vendorData.orientation;
      }

      v41->_colorSample.extra.orientation = orientation;
      v41->_colorSample.extra.nChannels = v41->_vendorData.nChannels;
      __memcpy_chk();
      v41->_supportColor = 1;
      if (v41->_logHandle)
      {
        logHandle = v41->_logHandle;
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
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v43, COERCE__INT64(v41->_colorSample.XYZ[0]), COERCE__INT64(v41->_colorSample.XYZ[1]), COERCE__INT64(v41->_colorSample.XYZ[2]), COERCE__INT64(v41->_colorSample.CCT1));
        _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Tristimulus values: XYZ[0]=%f, XYZ[1]=%f, XYZ[2]=%f | CCT1=%f", v43, 0x2Au);
      }
    }

    else
    {
      v41->_supportColor = 0;
      if (v41->_logHandle)
      {
        v22 = v41->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v21 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v21 = init_default_corebrightness_log();
        }

        v22 = v21;
      }

      v33 = v22;
      v32 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v19 = v33;
        v20 = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_debug_impl(&dword_1DE8E5000, v19, v20, "error: invalid Color space, can't load harmony data", v31, 2u);
      }
    }

    v41->_obstructed = 0;
    v41->_firstALSSample = 0;
    v41->_colorMitigationTriggered = 0;
    goto LABEL_47;
  }

  if (v41->_logHandle)
  {
    v18 = v41->_logHandle;
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

  v30 = v18;
  v29 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v15 = v30;
    v16 = v29;
    __os_log_helper_16_0_0(v28);
    _os_log_error_impl(&dword_1DE8E5000, v15, v16, "HID Event type is not ALS", v28, 2u);
  }

  MEMORY[0x1E69E5920](v41);
  v41 = 0;
  v42 = 0;
LABEL_48:
  *MEMORY[0x1E69E9840];
  return v42;
}

- (int64_t)compare:(id)a3
{
  illuminance = self->_illuminance;
  [a3 illuminance];
  if (illuminance > v3 && !self->_obstructed)
  {
    return -1;
  }

  v6 = self->_illuminance;
  [a3 illuminance];
  return v6 < v4 || self->_obstructed;
}

- (ColorSensorVendorEventData)copyVendorDataFromEvent:(SEL)a3
{
  memset(retstr, 0, 0x89uLL);
  result = IOHIDEventGetChildren();
  if (result)
  {
    result = CFArrayGetValueAtIndex(result, 0);
    if (result)
    {
      result = IOHIDEventGetDataValue();
      if (result)
      {
        IOHIDEventGetIntegerValue();
        return __memcpy_chk();
      }
    }
  }

  return result;
}

- (int)getServiceOrientation:(__IOHIDServiceClient *)a3
{
  v5 = 0;
  if (self->_node)
  {
    return [(CBALSNode *)self->_node orientation];
  }

  if (a3)
  {
    cf = IOHIDServiceClientCopyProperty(a3, @"Orientation");
    if (cf)
    {
      v5 = [cf intValue];
      CFRelease(cf);
    }
  }

  return v5;
}

+ (void)replaceLuxWithFilteredLux:(__IOHIDEvent *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  theArray = IOHIDEventGetChildren();
  if (theArray)
  {
    if (CFArrayGetValueAtIndex(theArray, 0))
    {
      if (IOHIDEventGetIntegerValue() == 137)
      {
        DataValue = IOHIDEventGetDataValue();
        if (DataValue)
        {
          if (*(DataValue + 136))
          {
            v3 = *(DataValue + 132);
            IOHIDEventSetDoubleValue();
            v4 = *(DataValue + 132);
            IOHIDEventSetIntegerValue();
            IOHIDEventGetDoubleValue();
            IOHIDEventGetDoubleValue();
            v9 = v5;
            IOHIDEventGetDoubleValue();
            if (v9 > 0.0)
            {
              v6 = *(DataValue + 132) / v9;
              v10 = *(DataValue + 132);
              IOHIDEventSetDoubleValue();
              IOHIDEventSetDoubleValue();
              IOHIDEventSetDoubleValue();
            }
          }
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

@end