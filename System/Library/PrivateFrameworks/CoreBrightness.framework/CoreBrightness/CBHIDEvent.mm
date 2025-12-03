@interface CBHIDEvent
+ (id)newEvent:(__IOHIDEvent *)event andService:(__IOHIDServiceClient *)service;
- (CBHIDEvent)initWithHIDEvent:(__IOHIDEvent *)event andService:(__IOHIDServiceClient *)service;
- (NSArray)copyChildren;
- (float)floatValueForKey:(unsigned int)key;
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
  selfCopy = self;
  v4 = a2;
  if (self->_event)
  {
    CFRelease(selfCopy->_event);
  }

  if (selfCopy->_service)
  {
    CFRelease(selfCopy->_service);
  }

  v2 = MEMORY[0x1E69E5920](selfCopy->_serviceRegistryID).n128_u64[0];
  if (selfCopy->_logHandle)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_logHandle).n128_u64[0];
    selfCopy->_logHandle = 0;
  }

  v3.receiver = selfCopy;
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

- (CBHIDEvent)initWithHIDEvent:(__IOHIDEvent *)event andService:(__IOHIDServiceClient *)service
{
  selfCopy = self;
  v33 = a2;
  eventCopy = event;
  serviceCopy = service;
  v30.receiver = self;
  v30.super_class = CBHIDEvent;
  selfCopy = [(CBHIDEvent *)&v30 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v4 = os_log_create("com.apple.CoreBrightness.CBHIDEvent", "default");
  selfCopy->_logHandle = v4;
  if (!eventCopy)
  {
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

  CFRetain(eventCopy);
  selfCopy->_event = eventCopy;
  if (!serviceCopy)
  {
    if (selfCopy->_logHandle)
    {
      v15 = selfCopy->_logHandle;
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

  CFRetain(serviceCopy);
  selfCopy->_service = serviceCopy;
  RegistryID = IOHIDServiceClientGetRegistryID(serviceCopy);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    if (selfCopy->_logHandle)
    {
      v11 = selfCopy->_logHandle;
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
    MEMORY[0x1E69E5920](selfCopy);
    selfCopy = 0;
    return 0;
  }

  v6 = [RegistryID copy];
  selfCopy->_serviceRegistryID = v6;
  return selfCopy;
}

+ (id)newEvent:(__IOHIDEvent *)event andService:(__IOHIDServiceClient *)service
{
  if (IOHIDEventGetType() == 12)
  {
    return [[CBALSEvent alloc] initWithHIDEvent:event andService:service];
  }

  else
  {
    return [[CBHIDEvent alloc] initWithHIDEvent:event andService:service];
  }
}

- (float)floatValueForKey:(unsigned int)key
{
  event = self->_event;
  IOHIDEventGetFloatValue();
  return v4;
}

@end