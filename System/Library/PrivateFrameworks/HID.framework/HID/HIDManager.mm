@interface HIDManager
- (HIDManager)init;
- (HIDManager)initWithOptions:(int64_t)a3;
- (NSArray)devices;
- (void)activate;
- (void)dealloc;
- (void)setCancelHandler:(id)a3;
- (void)setDeviceMatching:(id)a3;
- (void)setDeviceNotificationHandler:(id)a3;
- (void)setInputElementHandler:(id)a3;
- (void)setInputElementMatching:(id)a3;
- (void)setInputReportHandler:(id)a3;
@end

@implementation HIDManager

- (HIDManager)init
{
  v6.receiver = self;
  v6.super_class = HIDManager;
  v2 = [(HIDManager *)&v6 init];
  if (v2 && (v3 = IOHIDManagerCreate(*MEMORY[0x277CBECE8], 0), v2->_manager = v3, v2->_handlerLock.ourl_lock._os_unfair_lock_opaque = 0, v2->_handlerLock.ourl_count = 0, v3))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HIDManager)initWithOptions:(int64_t)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = HIDManager;
  v4 = [(HIDManager *)&v8 init];
  if (v4 && (v5 = IOHIDManagerCreate(*MEMORY[0x277CBECE8], v3), v4->_manager = v5, v4->_handlerLock.ourl_lock._os_unfair_lock_opaque = 0, v4->_handlerLock.ourl_count = 0, v5))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
  }

  v4.receiver = self;
  v4.super_class = HIDManager;
  [(HIDManager *)&v4 dealloc];
}

- (NSArray)devices
{
  v2 = IOHIDManagerCopyDevices(self->_manager);
  v3 = [(__CFSet *)v2 allObjects];

  return v3;
}

- (void)setInputElementMatching:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(HIDManager *)&v8 setInputElementMatching:v9];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(__CFDictionary *)v7 count])
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    IOHIDManagerSetInputValueMatching(self->_manager, v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(__CFDictionary *)v7 count])
      {
        v5 = v7;
      }

      else
      {
        v5 = 0;
      }

      IOHIDManagerSetInputValueMatchingMultiple(self->_manager, v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setInputElementHandler:(id)a3
{
  aBlock = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_elementHandler)
  {
    [HIDManager setInputElementHandler:];
  }

  v4 = _Block_copy(aBlock);
  elementHandler = self->_elementHandler;
  self->_elementHandler = v4;

  os_unfair_recursive_lock_unlock();
  IOHIDManagerRegisterInputValueCallback(self->_manager, inputValueCallback, self);
}

- (void)setDeviceMatching:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(HIDManager *)&v8 setInputElementMatching:v9];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(__CFDictionary *)v7 count])
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    IOHIDManagerSetDeviceMatching(self->_manager, v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(__CFDictionary *)v7 count])
      {
        v5 = v7;
      }

      else
      {
        v5 = 0;
      }

      IOHIDManagerSetDeviceMatchingMultiple(self->_manager, v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceNotificationHandler:(id)a3
{
  aBlock = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_deviceNotificationHandler)
  {
    [HIDManager setDeviceNotificationHandler:];
  }

  v4 = _Block_copy(aBlock);
  deviceNotificationHandler = self->_deviceNotificationHandler;
  self->_deviceNotificationHandler = v4;

  os_unfair_recursive_lock_unlock();
  IOHIDManagerRegisterDeviceMatchingCallback(self->_manager, deviceAddedCallback, self);
  IOHIDManagerRegisterDeviceRemovalCallback(self->_manager, deviceRemovedCallback, self);
}

- (void)setInputReportHandler:(id)a3
{
  aBlock = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_inputReportHandler)
  {
    [HIDManager setInputReportHandler:];
  }

  v4 = _Block_copy(aBlock);
  inputReportHandler = self->_inputReportHandler;
  self->_inputReportHandler = v4;

  os_unfair_recursive_lock_unlock();
  IOHIDManagerRegisterInputReportWithTimeStampCallback(self->_manager, inputReportCallback, self);
}

- (void)setCancelHandler:(id)a3
{
  aBlock = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_activated)
  {
    [HIDManager setCancelHandler:];
  }

  v4 = _Block_copy(aBlock);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)activate
{
  os_unfair_recursive_lock_lock_with_options();
  self->_activated = 1;
  os_unfair_recursive_lock_unlock();
  manager = self->_manager;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __22__HIDManager_activate__block_invoke;
  handler[3] = &unk_2787A6658;
  handler[4] = self;
  IOHIDManagerSetCancelHandler(manager, handler);
  IOHIDManagerActivate(self->_manager);
}

void __22__HIDManager_activate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

- (void)setInputElementMatching:(void *)a1 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

@end