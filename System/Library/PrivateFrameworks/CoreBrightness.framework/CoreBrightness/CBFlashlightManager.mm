@interface CBFlashlightManager
- (CBFlashlightManager)initWithQueue:(id)a3 andSamplingTime:(unint64_t)a4;
- (void)dealloc;
- (void)getStrobeState;
- (void)handleCameraServiceArrival:(unsigned int)a3;
- (void)registerForCameraArrivalNotifications;
- (void)startCameraServiceLookup;
- (void)timerCallback;
- (void)unregisterForCameraArrivalNotifications;
@end

@implementation CBFlashlightManager

- (CBFlashlightManager)initWithQueue:(id)a3 andSamplingTime:(unint64_t)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6.receiver = self;
  v6.super_class = CBFlashlightManager;
  v10 = [(CBFlashlightManager *)&v6 init];
  if (v10)
  {
    *(v10 + 4) = v8;
    dispatch_retain(*(v10 + 4));
    *(v10 + 6) = v7;
    *(v10 + 2) = 0;
    *(v10 + 2) = 0;
    *(v10 + 6) = 0;
    v4 = os_log_create("com.apple.CoreBrightness.CBFlashlightManager", "default");
    *(v10 + 5) = v4;
  }

  return v10;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v4->_logHandle);
    v4->_logHandle = 0;
  }

  if (v4->_queue)
  {
    dispatch_release(v4->_queue);
    v4->_queue = 0;
  }

  if (v4->_cameraService)
  {
    IOObjectRelease(v4->_cameraService);
    v4->_cameraService = 0;
  }

  v2.receiver = v4;
  v2.super_class = CBFlashlightManager;
  [(CBFlashlightManager *)&v2 dealloc];
}

- (void)unregisterForCameraArrivalNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_ioNotificationPort)
  {
    IONotificationPortDestroy(self->_ioNotificationPort);
    self->_ioNotificationPort = 0;
  }

  if (self->_ioServiceArrivalIterator)
  {
    IOObjectRelease(self->_ioServiceArrivalIterator);
    self->_ioServiceArrivalIterator = 0;
  }
}

- (void)registerForCameraArrivalNotifications
{
  v10 = self;
  v9 = a2;
  dispatch_assert_queue_V2(self->_queue);
  [(CBFlashlightManager *)v10 unregisterForCameraArrivalNotifications];
  v10->_ioNotificationPort = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  if (v10->_ioNotificationPort)
  {
    IONotificationPortSetDispatchQueue(v10->_ioNotificationPort, v10->_queue);
    [(CBFlashlightManager *)v10 startCameraServiceLookup];
  }

  else
  {
    if (v10->_logHandle)
    {
      logHandle = v10->_logHandle;
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

    v8 = logHandle;
    v7 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create notification port", v6, 2u);
    }
  }
}

- (void)startCameraServiceLookup
{
  notifyPort = self->_ioNotificationPort;
  v2 = IOServiceNameMatching("AppleH16CamIn");
  if (!IOServiceAddMatchingNotification(notifyPort, "IOServiceFirstMatch", v2, cameraServiceArrivalCallback, self, &self->_ioServiceArrivalIterator) && self->_ioServiceArrivalIterator)
  {
    while (1)
    {
      v4 = IOIteratorNext(self->_ioServiceArrivalIterator);
      if (!v4)
      {
        break;
      }

      [(CBFlashlightManager *)self handleCameraServiceArrival:v4];
    }
  }
}

- (void)handleCameraServiceArrival:(unsigned int)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  if (a3)
  {
    v12->_cameraService = v10;
    IOObjectRetain(v12->_cameraService);
    [(CBFlashlightManager *)v12 timerCallback];
  }

  else
  {
    if (v12->_logHandle)
    {
      logHandle = v12->_logHandle;
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

    v9 = logHandle;
    v8 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Invalid camera service arrived", v7, 2u);
    }
  }
}

- (void)timerCallback
{
  v11 = self;
  v10 = a2;
  dispatch_assert_queue_V2(self->_queue);
  [(CBFlashlightManager *)v11 getStrobeState];
  v2 = dispatch_time(0, v11->_samplingTime);
  queue = v11->_queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __36__CBFlashlightManager_timerCallback__block_invoke;
  v8 = &unk_1E867B480;
  v9 = v11;
  dispatch_after(v2, queue, &block);
}

- (void)getStrobeState
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_cameraService)
  {
    CFProperty = IORegistryEntryCreateCFProperty(self->_cameraService, @"StrobeState", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v4 = CFGetTypeID(CFProperty);
      v5 = 0;
      if (v4 == CFBooleanGetTypeID())
      {
        v5 = CFProperty == *MEMORY[0x1E695E4D0];
      }

      CFRelease(CFProperty);
      if (self->_flashlightState.isFlashlightOn != v5)
      {
        if (self->_logHandle)
        {
          logHandle = self->_logHandle;
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

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_4_0(v8, v5);
          _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Strobe state changed to %d", v8, 8u);
        }

        self->_flashlightState.isFlashlightOn = v5;
        self->_flashlightState.stateChangeTimestamp = mach_time_now_in_seconds();
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

@end