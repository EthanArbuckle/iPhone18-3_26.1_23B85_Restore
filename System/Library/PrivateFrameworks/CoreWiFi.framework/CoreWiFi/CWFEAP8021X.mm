@interface CWFEAP8021X
- (BOOL)isMonitoringEvents;
- (CWFEAP8021X)init;
- (CWFEAP8021X)initWithInterfaceName:(id)name;
- (id)clientStatus:(id *)status;
- (id)controlMode:(id *)mode;
- (id)controlState:(id *)state;
- (id)supplicantState:(id *)state;
- (void)__startEventMonitoring;
- (void)dealloc;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation CWFEAP8021X

- (CWFEAP8021X)initWithInterfaceName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = CWFEAP8021X;
  v5 = [(CWFEAP8021X *)&v18 init];
  v6 = v5;
  if (!nameCopy)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = [nameCopy copy];
  interfaceName = v6->_interfaceName;
  v6->_interfaceName = v7;

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.corewifi.EAP8021X-mutex", v9);
  mutexQueue = v6->_mutexQueue;
  v6->_mutexQueue = v10;

  if (!v6->_mutexQueue)
  {
    goto LABEL_6;
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.corewifi.EAP8021X-event", v12);
  eventQueue = v6->_eventQueue;
  v6->_eventQueue = v13;

  if (!v6->_eventQueue || (v17.version = 0, memset(&v17.retain, 0, 24), v17.info = v6, v15 = SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"com.apple.corewifi.EAP8021X", sub_1E0D2B1F4, &v17), (v6->_storeRef = v15) == 0))
  {
LABEL_6:

    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  storeRef = self->_storeRef;
  if (storeRef)
  {
    CFRelease(storeRef);
  }

  v4.receiver = self;
  v4.super_class = CWFEAP8021X;
  [(CWFEAP8021X *)&v4 dealloc];
}

- (CWFEAP8021X)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFEAP8021X init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)__startEventMonitoring
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (sub_1E0D2BEEC())
  {
    uTF8String = [(NSString *)self->_interfaceName UTF8String];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v4 = off_1ECE81AC0;
    v15 = off_1ECE81AC0;
    if (!off_1ECE81AC0)
    {
      v5 = sub_1E0D2C080();
      v13[3] = dlsym(v5, "EAPOLControlKeyCreate");
      off_1ECE81AC0 = v13[3];
      v4 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef soft_EAPOLControlKeyCreate(const char *)"];
      [currentHandler handleFailureInFunction:v11 file:@"CWFEAP8021X.m" lineNumber:33 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v6 = v4(uTF8String);
    v7 = v6;
    if (v6)
    {
      v16[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      if (SCDynamicStoreSetNotificationKeys(self->_storeRef, v8, 0))
      {
        SCDynamicStoreSetDispatchQueue(self->_storeRef, self->_eventQueue);
      }

      CFRelease(v7);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)startEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D2B708;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)stopEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D2B7D4;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (BOOL)isMonitoringEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0D2B8F4;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)controlState:(id *)state
{
  v11 = 0;
  cf = 0;
  if (sub_1E0D2BEEC())
  {
    sub_1E0D2BA28([(NSString *)self->_interfaceName UTF8String], &v11, &cf);
    if (v5)
    {
      if (state)
      {
        v7 = *MEMORY[0x1E696A768];
        v8 = v5;
        v9 = CWFErrorDescription(*MEMORY[0x1E696A768], v5);
        *state = CWFErrorWithDescription(v7, v8, v9);

        state = 0;
      }
    }

    else
    {
      state = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    state = 0;
  }

  return state;
}

- (id)supplicantState:(id *)state
{
  v11 = 0;
  cf = 0;
  if (sub_1E0D2BEEC())
  {
    sub_1E0D2BA28([(NSString *)self->_interfaceName UTF8String], &v11, &cf);
    if (v5)
    {
      if (state)
      {
        v7 = *MEMORY[0x1E696A768];
        v8 = v5;
        v9 = CWFErrorDescription(*MEMORY[0x1E696A768], v5);
        *state = CWFErrorWithDescription(v7, v8, v9);

        state = 0;
      }
    }

    else
    {
      state = [cf objectForKeyedSubscript:@"SupplicantState"];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    state = 0;
  }

  return state;
}

- (id)controlMode:(id *)mode
{
  v11 = 0;
  cf = 0;
  if (sub_1E0D2BEEC())
  {
    sub_1E0D2BA28([(NSString *)self->_interfaceName UTF8String], &v11, &cf);
    if (v5)
    {
      if (mode)
      {
        v7 = *MEMORY[0x1E696A768];
        v8 = v5;
        v9 = CWFErrorDescription(*MEMORY[0x1E696A768], v5);
        *mode = CWFErrorWithDescription(v7, v8, v9);

        mode = 0;
      }
    }

    else
    {
      mode = [cf objectForKeyedSubscript:@"Mode"];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    mode = 0;
  }

  return mode;
}

- (id)clientStatus:(id *)status
{
  v11 = 0;
  cf = 0;
  if (sub_1E0D2BEEC())
  {
    sub_1E0D2BA28([(NSString *)self->_interfaceName UTF8String], &v11, &cf);
    if (v5)
    {
      if (status)
      {
        v7 = *MEMORY[0x1E696A768];
        v8 = v5;
        v9 = CWFErrorDescription(*MEMORY[0x1E696A768], v5);
        *status = CWFErrorWithDescription(v7, v8, v9);

        status = 0;
      }
    }

    else
    {
      status = [cf objectForKeyedSubscript:@"ClientStatus"];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    status = 0;
  }

  return status;
}

@end