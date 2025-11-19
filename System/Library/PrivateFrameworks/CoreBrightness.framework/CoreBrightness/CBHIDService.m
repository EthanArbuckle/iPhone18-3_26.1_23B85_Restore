@interface CBHIDService
- (CBHIDService)initWithHIDServiceClient:(__IOHIDServiceClient *)a3 andIdentifier:(id)a4;
- (void)dealloc;
- (void)setEvent:(__IOHIDEvent *)a3;
@end

@implementation CBHIDService

- (CBHIDService)initWithHIDServiceClient:(__IOHIDServiceClient *)a3 andIdentifier:(id)a4
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19.receiver = self;
  v19.super_class = CBHIDService;
  v23 = [(CBHIDService *)&v19 init];
  if (v23)
  {
    v23->_service = v21;
    CFRetain(v23->_service);
    RegistryID = IOHIDServiceClientGetRegistryID(v23->_service);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [RegistryID unsignedIntegerValue];
      v23->_registryID = v4;
    }

    v17 = 0;
    if (v20)
    {
      v17 = [v20 copy];
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = [v5 initWithFormat:@"com.apple.CBHIDService.%lu", v23->_registryID];
    }

    if (v17)
    {
      v6 = os_log_create([v17 cStringUsingEncoding:1], "default");
      v23->_logHandle = v6;
      MEMORY[0x1E69E5920](v17);
      v17 = 0;
    }

    else
    {
      v7 = os_log_create("com.apple.CBHIDService", "default");
      v23->_logHandle = v7;
    }

    if (!v23->_logHandle)
    {
      v12 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v16 = v12;
      v15 = 16;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        log = v16;
        type = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v14, 2u);
      }
    }

    v13 = IOHIDServiceClientCopyProperty(v23->_service, @"Built-In");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v13 BOOLValue];
      v23->_builtIn = v8;
    }

    MEMORY[0x1E69E5920](v13);
  }

  return v23;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_event)
  {
    CFRelease(v4->_event);
  }

  if (v4->_logHandle)
  {
    MEMORY[0x1E69E5920](v4->_logHandle);
  }

  CFRelease(v4->_service);
  v2.receiver = v4;
  v2.super_class = CBHIDService;
  [(CBHIDService *)&v2 dealloc];
}

- (void)setEvent:(__IOHIDEvent *)a3
{
  if (self->_event)
  {
    CFRelease(self->_event);
  }

  self->_event = a3;
  CFRetain(self->_event);
}

@end