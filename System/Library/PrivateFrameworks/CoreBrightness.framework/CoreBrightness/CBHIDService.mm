@interface CBHIDService
- (CBHIDService)initWithHIDServiceClient:(__IOHIDServiceClient *)client andIdentifier:(id)identifier;
- (void)dealloc;
- (void)setEvent:(__IOHIDEvent *)event;
@end

@implementation CBHIDService

- (CBHIDService)initWithHIDServiceClient:(__IOHIDServiceClient *)client andIdentifier:(id)identifier
{
  selfCopy = self;
  v22 = a2;
  clientCopy = client;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CBHIDService;
  selfCopy = [(CBHIDService *)&v19 init];
  if (selfCopy)
  {
    selfCopy->_service = clientCopy;
    CFRetain(selfCopy->_service);
    RegistryID = IOHIDServiceClientGetRegistryID(selfCopy->_service);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [RegistryID unsignedIntegerValue];
      selfCopy->_registryID = unsignedIntegerValue;
    }

    v17 = 0;
    if (identifierCopy)
    {
      v17 = [identifierCopy copy];
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = [v5 initWithFormat:@"com.apple.CBHIDService.%lu", selfCopy->_registryID];
    }

    if (v17)
    {
      v6 = os_log_create([v17 cStringUsingEncoding:1], "default");
      selfCopy->_logHandle = v6;
      MEMORY[0x1E69E5920](v17);
      v17 = 0;
    }

    else
    {
      v7 = os_log_create("com.apple.CBHIDService", "default");
      selfCopy->_logHandle = v7;
    }

    if (!selfCopy->_logHandle)
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

    v13 = IOHIDServiceClientCopyProperty(selfCopy->_service, @"Built-In");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v13 BOOLValue];
      selfCopy->_builtIn = bOOLValue;
    }

    MEMORY[0x1E69E5920](v13);
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_event)
  {
    CFRelease(selfCopy->_event);
  }

  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
  }

  CFRelease(selfCopy->_service);
  v2.receiver = selfCopy;
  v2.super_class = CBHIDService;
  [(CBHIDService *)&v2 dealloc];
}

- (void)setEvent:(__IOHIDEvent *)event
{
  if (self->_event)
  {
    CFRelease(self->_event);
  }

  self->_event = event;
  CFRetain(self->_event);
}

@end