@interface CBFlashlightManager
- (CBFlashlightManager)initWithQueue:(id)queue andSamplingTime:(unint64_t)time;
- (void)dealloc;
- (void)getStrobeState;
- (void)handleCameraServiceArrival:(unsigned int)arrival;
- (void)registerForCameraArrivalNotifications;
- (void)startCameraServiceLookup;
- (void)timerCallback;
- (void)unregisterForCameraArrivalNotifications;
@end

@implementation CBFlashlightManager

- (CBFlashlightManager)initWithQueue:(id)queue andSamplingTime:(unint64_t)time
{
  selfCopy = self;
  v9 = a2;
  queueCopy = queue;
  timeCopy = time;
  v6.receiver = self;
  v6.super_class = CBFlashlightManager;
  selfCopy = [(CBFlashlightManager *)&v6 init];
  if (selfCopy)
  {
    *(selfCopy + 4) = queueCopy;
    dispatch_retain(*(selfCopy + 4));
    *(selfCopy + 6) = timeCopy;
    *(selfCopy + 2) = 0;
    *(selfCopy + 2) = 0;
    *(selfCopy + 6) = 0;
    v4 = os_log_create("com.apple.CoreBrightness.CBFlashlightManager", "default");
    *(selfCopy + 5) = v4;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
    selfCopy->_queue = 0;
  }

  if (selfCopy->_cameraService)
  {
    IOObjectRelease(selfCopy->_cameraService);
    selfCopy->_cameraService = 0;
  }

  v2.receiver = selfCopy;
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
  selfCopy = self;
  v9 = a2;
  dispatch_assert_queue_V2(self->_queue);
  [(CBFlashlightManager *)selfCopy unregisterForCameraArrivalNotifications];
  selfCopy->_ioNotificationPort = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  if (selfCopy->_ioNotificationPort)
  {
    IONotificationPortSetDispatchQueue(selfCopy->_ioNotificationPort, selfCopy->_queue);
    [(CBFlashlightManager *)selfCopy startCameraServiceLookup];
  }

  else
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

- (void)handleCameraServiceArrival:(unsigned int)arrival
{
  selfCopy = self;
  v11 = a2;
  arrivalCopy = arrival;
  if (arrival)
  {
    selfCopy->_cameraService = arrivalCopy;
    IOObjectRetain(selfCopy->_cameraService);
    [(CBFlashlightManager *)selfCopy timerCallback];
  }

  else
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
  selfCopy = self;
  v10 = a2;
  dispatch_assert_queue_V2(self->_queue);
  [(CBFlashlightManager *)selfCopy getStrobeState];
  v2 = dispatch_time(0, selfCopy->_samplingTime);
  queue = selfCopy->_queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __36__CBFlashlightManager_timerCallback__block_invoke;
  v8 = &unk_1E867B480;
  v9 = selfCopy;
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