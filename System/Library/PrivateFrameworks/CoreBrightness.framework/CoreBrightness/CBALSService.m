@interface CBALSService
- (BOOL)updateEventData;
- (CBALSService)initWithHIDALSServiceClient:(__IOHIDServiceClient *)a3;
- (id)copyDataInDictionary;
- (id)description;
- (void)dealloc;
- (void)resetEventData;
- (void)setEvent:(__IOHIDEvent *)a3;
@end

@implementation CBALSService

- (void)resetEventData
{
  if (self->super._event)
  {
    CFRelease(self->super._event);
    self->super._event = 0;
  }

  *(&self->super._builtIn + 1) = 0;
  *&self->_colorSupport = 0;
  self->_x = 0.0;
  self->_y = 0.0;
  *&self->_validData = 0;
}

- (id)copyDataInDictionary
{
  v14 = self;
  v13 = a2;
  v12 = 0;
  v3[17] = 0x1E696A000uLL;
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:self->_desc];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v14->_location];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v14->super._builtIn];
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*(&v14->super._builtIn + 1)];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:*&v14->_validData];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v14->_y];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:*&v14->_colorSupport];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v14->_x];
  if (v11 && v10 && v9 && v8 && v7 && v6 && v5 && v4)
  {
    v3[16] = v3;
    v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v11, @"location", v10, @"placement", v9, @"internal", v8, @"valid", v7, @"lux", v6, @"CCT", v5, @"x", v4, @"y", 0}];
  }

  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return v12;
}

- (CBALSService)initWithHIDALSServiceClient:(__IOHIDServiceClient *)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.CBALSService.%lu", objc_msgSend(IOHIDServiceClientGetRegistryID(a3), "unsignedIntegerValue")];
  v13.receiver = v17;
  v13.super_class = CBALSService;
  v17 = [(CBHIDService *)&v13 initWithHIDServiceClient:v15 andIdentifier:v14];
  if (v17)
  {
    v12 = IOHIDServiceClientCopyProperty(v17->super._service, @"SensorLocation");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v12 unsignedIntegerValue];
      v17->_desc = v3;
    }

    MEMORY[0x1E69E5920](v12);
    v11 = IOHIDServiceClientCopyProperty(v17->super._service, @"Placement");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v11 unsignedIntegerValue];
      v17->_location = v4;
    }

    MEMORY[0x1E69E5920](v11);
    v10 = IOHIDServiceClientCopyProperty(v17->super._service, @"Built-In");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v10 BOOLValue];
      v17->super._builtIn = v5;
    }

    MEMORY[0x1E69E5920](v10);
    v9 = IOHIDServiceClientCopyProperty(v17->super._service, @"ColorSupport");
    if (!v9)
    {
      v9 = IOHIDServiceClientCopyProperty(v17->super._service, @"crgb");
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v9 BOOLValue];
      LOBYTE(v17->_lux) = v6;
    }

    *&v7 = MEMORY[0x1E69E5920](v9).n128_u64[0];
    [(CBALSService *)v17 updateEventData];
  }

  MEMORY[0x1E69E5920](v14);
  return v17;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](*&self->_CCT).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBALSService;
  [(CBHIDService *)&v3 dealloc];
}

- (void)setEvent:(__IOHIDEvent *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = self;
  v30 = a2;
  v29 = a3;
  [(CBALSService *)self resetEventData];
  if (v29)
  {
    v31->super._event = v29;
    CFRetain(v31->super._event);
    event = v31->super._event;
    IOHIDEventGetDoubleValue();
    *&v31->_validData = v4;
    if (*&v31->_validData < 0.0)
    {
      *&v31->_validData = 0;
    }

    v5 = v31->super._event;
    if (IOHIDEventGetIntegerValue() == 1)
    {
      v6 = v31->super._event;
      IOHIDEventGetDoubleValue();
      *&v31->_validData = v7;
      v8 = v31->super._event;
      IOHIDEventGetDoubleValue();
      v31->_y = v9;
      v10 = v31->super._event;
      IOHIDEventGetDoubleValue();
      v25 = v11;
      v12 = v31->super._event;
      IOHIDEventGetDoubleValue();
      v24 = v13;
      v14 = v31->super._event;
      IOHIDEventGetDoubleValue();
      v23 = *&v15;
      v22 = *&v25 + *&v24 + v15;
      if (v31->super._logHandle)
      {
        logHandle = v31->super._logHandle;
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
        __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v32, *&v22, v25, v24, v23, *&v31->_validData, *&v31->_y);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "sum:%f tempX=%f tempY=%f tempZ:%f lux=%f CCT=%f", v32, 0x3Eu);
      }

      if (v22 != 0.0)
      {
        *&v31->_colorSupport = *&v25 / v22;
        v31->_x = *&v24 / v22;
      }
    }

    *(&v31->super._builtIn + 1) = 1;
  }

  else
  {
    if (v31->super._logHandle)
    {
      v21 = v31->super._logHandle;
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

    v28 = v21;
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      log = v28;
      type = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_impl(&dword_1DE8E5000, log, type, "nulling event", v26, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)description
{
  v15 = self;
  v14 = a2;
  if (*&self->_CCT)
  {
    MEMORY[0x1E69E5920](*&v15->_CCT);
  }

  v13 = 0;
  v12 = 0;
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"id=0x%lX location=%lu internal=%d placement=%lu", v15->super._registryID, v15->_desc, v15->super._builtIn, v15->_location];
  if (*(&v15->super._builtIn + 1))
  {
    if (LOBYTE(v15->_lux))
    {
      v2 = objc_alloc(MEMORY[0x1E696AEC0]);
      y = v15->_y;
      v4 = *&v15->_colorSupport;
      x = v15->_x;
      v10 = *&v15->_validData;
      v13 = [v2 initWithFormat:@"lux=%f CCT=%f xy= %f | %f", v10, *&y, v4, *&x];
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = *&v15->_validData;
      v13 = [v6 initWithFormat:@"lux=%f", v10];
    }
  }

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [v7 initWithFormat:@"service %@ | data %@", v12, v13];
  v11 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
  *&v15->_CCT = v8;
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v12);
  return *(&v15->super.super.isa + v11[653]);
}

- (BOOL)updateEventData
{
  v7 = 0;
  service = self->super._service;
  cf = IOHIDServiceClientCopyEvent();
  if (cf)
  {
    [(CBALSService *)self setEvent:cf];
    CFRelease(cf);
    return 1;
  }

  else
  {
    [(CBALSService *)self resetEventData];
    v5 = [(CBHIDService *)self copyPropertyForKey:@"CurrentLuxValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      *&self->_validData = v3;
      *(&self->super._builtIn + 1) = 1;
      v7 = 1;
    }

    MEMORY[0x1E69E5920](v5);
  }

  return v7;
}

@end