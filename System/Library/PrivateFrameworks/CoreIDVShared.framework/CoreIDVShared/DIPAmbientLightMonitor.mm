@interface DIPAmbientLightMonitor
- (DIPAmbientLightMonitor)init;
- (int)luxLevel;
- (void)dealloc;
- (void)handleEvent:(__IOHIDEvent *)a3;
@end

@implementation DIPAmbientLightMonitor

- (DIPAmbientLightMonitor)init
{
  v15[2] = *MEMORY[0x277D85DE8];
  self->_luxLevel = -1;
  v3 = IOHIDEventSystemClientCreateWithType();
  self->_client = v3;
  if (v3)
  {
    v14[0] = @"PrimaryUsagePage";
    v14[1] = @"PrimaryUsage";
    v15[0] = &unk_28391F7C8;
    v15[1] = &unk_28391F7E0;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    IOHIDEventSystemClientSetMatching();
    v5 = dispatch_queue_create("com.apple.CoreIDVShared.almQueue", 0);
    almQueue = self->_almQueue;
    self->_almQueue = v5;

    IOHIDEventSystemClientSetDispatchQueue();
    IOHIDEventSystemClientRegisterEventCallback();
    IOHIDEventSystemClientActivate();
    v7 = IOHIDEventSystemClientCopyServices(self->_client);
    if (v7)
    {
      v8 = v7;
      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
      self->_service = CFRetain(ValueAtIndex);
      CFRelease(v8);
      v10 = IOHIDServiceClientCopyEvent();
      if (v10)
      {
        v11 = v10;
        [(DIPAmbientLightMonitor *)self handleEvent:v10];
        CFRelease(v11);
      }
    }

    v12 = self;
  }

  else
  {
    v4 = os_log_create("com.apple.CoreIDV", "DIPAmbientLightMonitor");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DIPAmbientLightMonitor *)v4 init];
    }

    v12 = 0;
  }

  return v12;
}

- (void)dealloc
{
  if (self->_client)
  {
    IOHIDEventSystemClientCancel();
    CFRelease(self->_client);
  }

  service = self->_service;
  if (service)
  {
    CFRelease(service);
  }

  v4.receiver = self;
  v4.super_class = DIPAmbientLightMonitor;
  [(DIPAmbientLightMonitor *)&v4 dealloc];
}

- (void)handleEvent:(__IOHIDEvent *)a3
{
  if (a3)
  {
    if (IOHIDEventGetType() == 12)
    {
      self->_luxLevel = IOHIDEventGetIntegerValue();
    }
  }
}

- (int)luxLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  almQueue = self->_almQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__DIPAmbientLightMonitor_luxLevel__block_invoke;
  v5[3] = &unk_278573360;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(almQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end