@interface _GCLogitechRacingWheelDeviceManager
- (_GCDeviceRegistry)deviceRegistry;
- (_GCLogitechRacingWheelDeviceManager)init;
- (void)dealloc;
- (void)init;
@end

@implementation _GCLogitechRacingWheelDeviceManager

- (_GCLogitechRacingWheelDeviceManager)init
{
  v30.receiver = self;
  v30.super_class = _GCLogitechRacingWheelDeviceManager;
  v2 = [(_GCLogitechRacingWheelDeviceManager *)&v30 init];
  v3 = gc_log_create_device("LogitechRacingWheel");
  v4 = *(v2 + 1);
  *(v2 + 1) = v3;

  v5 = dispatch_queue_create("LogitechRacingWheel.Manager", 0);
  v6 = *(v2 + 2);
  *(v2 + 2) = v5;

  v7 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  *(v2 + 3) = v7;
  if (v7)
  {
    IONotificationPortSetDispatchQueue(v7, *(v2 + 2));
  }

  else
  {
    v8 = *(v2 + 1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(_GCLogitechRacingWheelDeviceManager *)v8 init];
    }
  }

  if (*(v2 + 3))
  {
    v9 = IOServiceMatching("IOUSBDevice");
    CFDictionarySetValue(v9, @"idVendor", &unk_1F4E369B8);
    CFDictionarySetValue(v9, @"idProduct", &unk_1F4E369D0);
    if (IOServiceAddMatchingNotification(*(v2 + 3), "IOServiceFirstMatch", v9, __USBDevicesMatched, v2, v2 + 8))
    {
      if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_FAULT))
      {
        [_GCLogitechRacingWheelDeviceManager init];
      }
    }

    else
    {
      v10 = *(v2 + 2);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43___GCLogitechRacingWheelDeviceManager_init__block_invoke;
      block[3] = &unk_1E8413DA0;
      v29 = v2;
      dispatch_async(v10, block);
    }

    v11 = IOServiceMatching("IOHIDDevice");
    CFDictionarySetValue(v11, @"VendorID", &unk_1F4E369B8);
    CFDictionarySetValue(v11, @"ProductID", &unk_1F4E369E8);
    if (IOServiceAddMatchingNotification(*(v2 + 3), "IOServiceFirstMatch", v11, __HIDDevicesMatched_0, v2, v2 + 9))
    {
      if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_FAULT))
      {
        [_GCLogitechRacingWheelDeviceManager init];
      }
    }

    else
    {
      v12 = *(v2 + 2);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __43___GCLogitechRacingWheelDeviceManager_init__block_invoke_21;
      v26[3] = &unk_1E8413DA0;
      v27 = v2;
      dispatch_async(v12, v26);
    }

    v13 = IOServiceMatching("IOUSBDevice");
    CFDictionarySetValue(v13, @"idVendor", &unk_1F4E369B8);
    CFDictionarySetValue(v13, @"idProduct", &unk_1F4E36A00);
    if (IOServiceAddMatchingNotification(*(v2 + 3), "IOServiceFirstMatch", v13, __USBDevicesMatched, v2, v2 + 10))
    {
      if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_FAULT))
      {
        [_GCLogitechRacingWheelDeviceManager init];
      }
    }

    else
    {
      v14 = *(v2 + 2);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __43___GCLogitechRacingWheelDeviceManager_init__block_invoke_24;
      v24[3] = &unk_1E8413DA0;
      v25 = v2;
      dispatch_async(v14, v24);
    }

    v15 = IOServiceMatching("IOHIDDevice");
    CFDictionarySetValue(v15, @"VendorID", &unk_1F4E369B8);
    CFDictionarySetValue(v15, @"ProductID", &unk_1F4E36A18);
    if (IOServiceAddMatchingNotification(*(v2 + 3), "IOServiceFirstMatch", v15, __HIDDevicesMatched_0, v2, v2 + 11))
    {
      if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_FAULT))
      {
        [_GCLogitechRacingWheelDeviceManager init];
      }
    }

    else
    {
      v16 = *(v2 + 2);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __43___GCLogitechRacingWheelDeviceManager_init__block_invoke_27;
      v22[3] = &unk_1E8413DA0;
      v23 = v2;
      dispatch_async(v16, v22);
    }

    v17 = IOServiceMatching("IOHIDDevice");
    CFDictionarySetValue(v17, @"VendorID", &unk_1F4E369B8);
    CFDictionarySetValue(v17, @"ProductID", &unk_1F4E36A30);
    if (IOServiceAddMatchingNotification(*(v2 + 3), "IOServiceFirstMatch", v17, __HIDDevicesMatched_0, v2, v2 + 12))
    {
      if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_FAULT))
      {
        [_GCLogitechRacingWheelDeviceManager init];
      }
    }

    else
    {
      v18 = *(v2 + 2);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __43___GCLogitechRacingWheelDeviceManager_init__block_invoke_30;
      v20[3] = &unk_1E8413DA0;
      v21 = v2;
      dispatch_async(v18, v20);
    }
  }

  return v2;
}

- (void)dealloc
{
  ioG923USBDeviceIterator = self->_ioG923USBDeviceIterator;
  if (ioG923USBDeviceIterator)
  {
    IOObjectRelease(ioG923USBDeviceIterator);
    self->_ioG923USBDeviceIterator = 0;
  }

  ioG923HIDDeviceIterator = self->_ioG923HIDDeviceIterator;
  if (ioG923HIDDeviceIterator)
  {
    IOObjectRelease(ioG923HIDDeviceIterator);
    self->_ioG923HIDDeviceIterator = 0;
  }

  ioG920USBDeviceIterator = self->_ioG920USBDeviceIterator;
  if (ioG920USBDeviceIterator)
  {
    IOObjectRelease(ioG920USBDeviceIterator);
    self->_ioG920USBDeviceIterator = 0;
  }

  ioG29PS4HIDDeviceIterator = self->_ioG29PS4HIDDeviceIterator;
  if (ioG29PS4HIDDeviceIterator)
  {
    IOObjectRelease(ioG29PS4HIDDeviceIterator);
    self->_ioG29PS4HIDDeviceIterator = 0;
  }

  ioG29PS3HIDDeviceIterator = self->_ioG29PS3HIDDeviceIterator;
  if (ioG29PS3HIDDeviceIterator)
  {
    IOObjectRelease(ioG29PS3HIDDeviceIterator);
    self->_ioG29PS3HIDDeviceIterator = 0;
  }

  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
    self->_ioNotificationPort = 0;
  }

  v9.receiver = self;
  v9.super_class = _GCLogitechRacingWheelDeviceManager;
  [(_GCLogitechRacingWheelDeviceManager *)&v9 dealloc];
}

- (_GCDeviceRegistry)deviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceRegistry);

  return WeakRetained;
}

- (void)init
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_12(&dword_1D2C3B000, v0, v1, "Failed to setup IOHIDDevice service matching: %{mach.errno}d.  Racing wheel discovery may be impacted.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end