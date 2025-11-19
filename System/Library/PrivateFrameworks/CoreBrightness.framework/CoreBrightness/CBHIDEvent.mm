@interface CBHIDEvent
+ (id)newEvent:(__IOHIDEvent *)a3 andService:(__IOHIDServiceClient *)a4;
- (CBHIDEvent)initWithHIDEvent:(__IOHIDEvent *)a3 andService:(__IOHIDServiceClient *)a4;
- (NSArray)copyChildren;
- (float)floatValueForKey:(unsigned int)a3;
- (float)timestamp;
- (void)dealloc;
@end

@implementation CBHIDEvent

- (float)timestamp
{
  event = self->_event;
  TimeStamp = IOHIDEventGetTimeStamp();
  return mach_time_to_seconds(TimeStamp);
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_event)
  {
    CFRelease(v5->_event);
  }

  if (v5->_service)
  {
    CFRelease(v5->_service);
  }

  v2 = MEMORY[0x1E69E5920](v5->_serviceRegistryID).n128_u64[0];
  if (v5->_logHandle)
  {
    v2 = MEMORY[0x1E69E5920](v5->_logHandle).n128_u64[0];
    v5->_logHandle = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBHIDEvent;
  [(CBHIDEvent *)&v3 dealloc];
}

- (NSArray)copyChildren
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  event = self->_event;
  Children = IOHIDEventGetChildren();
  if (Children)
  {
    for (i = 0; i < CFArrayGetCount(Children); ++i)
    {
      v4 = [CBHIDEvent newEvent:CFArrayGetValueAtIndex(Children andService:i), self->_service];
      [(NSArray *)v7 addObject:v4];
      MEMORY[0x1E69E5920](v4);
    }
  }

  return v7;
}

- (CBHIDEvent)initWithHIDEvent:(__IOHIDEvent *)a3 andService:(__IOHIDServiceClient *)a4
{
  v34 = self;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30.receiver = self;
  v30.super_class = CBHIDEvent;
  v34 = [(CBHIDEvent *)&v30 init];
  if (!v34)
  {
    return v34;
  }

  v4 = os_log_create("com.apple.CoreBrightness.CBHIDEvent", "default");
  v34->_logHandle = v4;
  if (!v32)
  {
    if (v34->_logHandle)
    {
      logHandle = v34->_logHandle;
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

    v29 = logHandle;
    v28 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v29;
      type = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "error: invalid HID event", v27, 2u);
    }

    goto LABEL_36;
  }

  CFRetain(v32);
  v34->_event = v32;
  if (!v31)
  {
    if (v34->_logHandle)
    {
      v15 = v34->_logHandle;
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

    v26 = v15;
    v25 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v12 = v26;
      v13 = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_error_impl(&dword_1DE8E5000, v12, v13, "error: invalid HID service", v24, 2u);
    }

    goto LABEL_36;
  }

  CFRetain(v31);
  v34->_service = v31;
  RegistryID = IOHIDServiceClientGetRegistryID(v31);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    if (v34->_logHandle)
    {
      v11 = v34->_logHandle;
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

    v22 = v11;
    v21 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v8 = v22;
      v9 = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_error_impl(&dword_1DE8E5000, v8, v9, "error: invalid service registry ID", v20, 2u);
    }

LABEL_36:
    MEMORY[0x1E69E5920](v34);
    v34 = 0;
    return 0;
  }

  v6 = [RegistryID copy];
  v34->_serviceRegistryID = v6;
  return v34;
}

+ (id)newEvent:(__IOHIDEvent *)a3 andService:(__IOHIDServiceClient *)a4
{
  if (IOHIDEventGetType() == 12)
  {
    return [[CBALSEvent alloc] initWithHIDEvent:a3 andService:a4];
  }

  else
  {
    return [[CBHIDEvent alloc] initWithHIDEvent:a3 andService:a4];
  }
}

- (float)floatValueForKey:(unsigned int)a3
{
  event = self->_event;
  IOHIDEventGetFloatValue();
  return v4;
}

@end