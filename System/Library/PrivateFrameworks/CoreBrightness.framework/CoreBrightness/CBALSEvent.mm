@interface CBALSEvent
+ (void)replaceLuxWithFilteredLux:(__IOHIDEvent *)lux;
- (CBALSEvent)initWithHIDEvent:(__IOHIDEvent *)event andService:(__IOHIDServiceClient *)service;
- (ColorSensorVendorEventData)copyVendorDataFromEvent:(SEL)event;
- (int)getServiceOrientation:(__IOHIDServiceClient *)orientation;
- (int64_t)compare:(id)compare;
- (void)dealloc;
@end

@implementation CBALSEvent

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_event)
  {
    CFRelease(selfCopy->_event);
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_node).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBALSEvent;
  [(CBHIDEvent *)&v3 dealloc];
}

- (CBALSEvent)initWithHIDEvent:(__IOHIDEvent *)event andService:(__IOHIDServiceClient *)service
{
  v44 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v40 = a2;
  eventCopy = event;
  serviceCopy = service;
  v37.receiver = self;
  v37.super_class = CBALSEvent;
  selfCopy = [(CBHIDEvent *)&v37 initWithHIDEvent:event andService:service];
  if (!selfCopy)
  {
LABEL_47:
    v42 = selfCopy;
    goto LABEL_48;
  }

  v4 = os_log_create("com.apple.CoreBrightness.CBALSEvent", "default");
  selfCopy->_logHandle = v4;
  if (eventCopy && IOHIDEventGetType() == 12)
  {
    CFRetain(eventCopy);
    selfCopy->_event = eventCopy;
    if (selfCopy->_node && [(CBALSNode *)selfCopy->_node supportsFloatLux])
    {
      IOHIDEventGetDoubleValue();
      IntegerValue = v5;
    }

    else
    {
      IntegerValue = IOHIDEventGetIntegerValue();
    }

    selfCopy->_illuminance = IntegerValue;
    v6 = [(CBALSEvent *)selfCopy getServiceOrientation:serviceCopy];
    selfCopy->_orientation = v6;
    event = selfCopy->_event;
    if (IOHIDEventGetIntegerValue() == 1)
    {
      IOHIDEventGetDoubleValue();
      *&v8 = v8 / 3.14159265;
      selfCopy->_colorSample.XYZ[0] = *&v8;
      IOHIDEventGetDoubleValue();
      *&v9 = v9 / 3.14159265;
      selfCopy->_colorSample.XYZ[1] = *&v9;
      IOHIDEventGetDoubleValue();
      *&v10 = v10 / 3.14159265;
      selfCopy->_colorSample.XYZ[2] = *&v10;
      IOHIDEventGetFloatValue();
      *&v11 = v11;
      selfCopy->_colorSample.CCT1 = *&v11;
      if (selfCopy->_colorSample.XYZ[0] == 0.0 || selfCopy->_colorSample.XYZ[1] == 0.0)
      {
        v12 = 0.0;
        selfCopy->_colorSample.xy.y = 0.0;
        selfCopy->_colorSample.xy.x = 0.0;
      }

      else
      {
        *&v12 = CFXTristimulus2Chromaticity(selfCopy->_colorSample.XYZ, &selfCopy->_colorSample.xy);
      }

      __dst = &selfCopy->_vendorData;
      if (selfCopy)
      {
        [(CBALSEvent *)selfCopy copyVendorDataFromEvent:eventCopy, v12];
      }

      else
      {
        memset(__b, 0, sizeof(__b));
      }

      memcpy(__dst, __b, 0x89uLL);
      selfCopy->_integrationTime = selfCopy->_vendorData.integrationTime / 1000000.0;
      illuminance = selfCopy->_illuminance;
      selfCopy->_colorSample.extra.brightness = illuminance;
      if (serviceCopy)
      {
        orientation = selfCopy->_orientation;
      }

      else
      {
        orientation = selfCopy->_vendorData.orientation;
      }

      selfCopy->_colorSample.extra.orientation = orientation;
      selfCopy->_colorSample.extra.nChannels = selfCopy->_vendorData.nChannels;
      __memcpy_chk();
      selfCopy->_supportColor = 1;
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

      oslog = logHandle;
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v43, COERCE__INT64(selfCopy->_colorSample.XYZ[0]), COERCE__INT64(selfCopy->_colorSample.XYZ[1]), COERCE__INT64(selfCopy->_colorSample.XYZ[2]), COERCE__INT64(selfCopy->_colorSample.CCT1));
        _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Tristimulus values: XYZ[0]=%f, XYZ[1]=%f, XYZ[2]=%f | CCT1=%f", v43, 0x2Au);
      }
    }

    else
    {
      selfCopy->_supportColor = 0;
      if (selfCopy->_logHandle)
      {
        v22 = selfCopy->_logHandle;
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

    selfCopy->_obstructed = 0;
    selfCopy->_firstALSSample = 0;
    selfCopy->_colorMitigationTriggered = 0;
    goto LABEL_47;
  }

  if (selfCopy->_logHandle)
  {
    v18 = selfCopy->_logHandle;
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

  MEMORY[0x1E69E5920](selfCopy);
  selfCopy = 0;
  v42 = 0;
LABEL_48:
  *MEMORY[0x1E69E9840];
  return v42;
}

- (int64_t)compare:(id)compare
{
  illuminance = self->_illuminance;
  [compare illuminance];
  if (illuminance > v3 && !self->_obstructed)
  {
    return -1;
  }

  v6 = self->_illuminance;
  [compare illuminance];
  return v6 < v4 || self->_obstructed;
}

- (ColorSensorVendorEventData)copyVendorDataFromEvent:(SEL)event
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

- (int)getServiceOrientation:(__IOHIDServiceClient *)orientation
{
  intValue = 0;
  if (self->_node)
  {
    return [(CBALSNode *)self->_node orientation];
  }

  if (orientation)
  {
    cf = IOHIDServiceClientCopyProperty(orientation, @"Orientation");
    if (cf)
    {
      intValue = [cf intValue];
      CFRelease(cf);
    }
  }

  return intValue;
}

+ (void)replaceLuxWithFilteredLux:(__IOHIDEvent *)lux
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