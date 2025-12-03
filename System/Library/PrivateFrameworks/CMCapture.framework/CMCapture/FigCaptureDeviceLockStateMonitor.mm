@interface FigCaptureDeviceLockStateMonitor
+ (id)sharedDeviceLockStateMonitor;
- (BOOL)deviceIsLocked;
- (FigCaptureDeviceLockStateMonitor)init;
- (uint64_t)_stopMonitoringDeviceLockState;
- (void)_startMonitoringDeviceLockState;
- (void)_updateDeviceLockState;
- (void)_updateObserversWithDeviceIsLockedState:(uint64_t)state;
- (void)addDeviceLockStateObserver:(id)observer;
- (void)dealloc;
- (void)removeDeviceLockStateObserver:(id)observer;
@end

@implementation FigCaptureDeviceLockStateMonitor

- (void)_updateDeviceLockState
{
  if (self)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v2 = MKBGetDeviceLockState();
    v3 = (v2 < 7) & (0x46u >> v2);
    if (*(self + 48) != v3)
    {
      *(self + 48) = v3;

      [(FigCaptureDeviceLockStateMonitor *)self _updateObserversWithDeviceIsLockedState:v3];
    }
  }
}

- (FigCaptureDeviceLockStateMonitor)init
{
  v8.receiver = self;
  v8.super_class = FigCaptureDeviceLockStateMonitor;
  v2 = [(FigCaptureDeviceLockStateMonitor *)&v8 init];
  if (v2)
  {
    v2->_monitorQueue = FigDispatchQueueCreateWithPriority();
    v2->_notificationQueue = FigDispatchQueueCreateWithPriority();
    v2->_deviceLockStateObservers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = @"ExtendedDeviceLockState";
    v7 = MEMORY[0x1E695E118];
    v2->_mobileKeyBagOptions = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    monitorQueue = v2->_monitorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FigCaptureDeviceLockStateMonitor_init__block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = v2;
    dispatch_async(monitorQueue, block);
  }

  return v2;
}

- (void)dealloc
{
  monitorQueue = self->_monitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__FigCaptureDeviceLockStateMonitor_dealloc__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(monitorQueue, block);

  v4.receiver = self;
  v4.super_class = FigCaptureDeviceLockStateMonitor;
  [(FigCaptureDeviceLockStateMonitor *)&v4 dealloc];
}

+ (id)sharedDeviceLockStateMonitor
{
  if (sharedDeviceLockStateMonitor_sDeviceLockStateMonitorOnceToken != -1)
  {
    +[FigCaptureDeviceLockStateMonitor sharedDeviceLockStateMonitor];
  }

  return sharedDeviceLockStateMonitor_sDeviceLockStateMonitor;
}

FigCaptureDeviceLockStateMonitor *__64__FigCaptureDeviceLockStateMonitor_sharedDeviceLockStateMonitor__block_invoke()
{
  result = objc_alloc_init(FigCaptureDeviceLockStateMonitor);
  sharedDeviceLockStateMonitor_sDeviceLockStateMonitor = result;
  return result;
}

- (void)addDeviceLockStateObserver:(id)observer
{
  monitorQueue = self->_monitorQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__FigCaptureDeviceLockStateMonitor_addDeviceLockStateObserver___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = self;
  v4[5] = observer;
  dispatch_async(monitorQueue, v4);
}

void __63__FigCaptureDeviceLockStateMonitor_addDeviceLockStateObserver___block_invoke(int8x16_t *a1)
{
  [*(a1[2].i64[0] + 24) addObject:a1[2].i64[1]];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v2 = vextq_s8(a1[2], a1[2], 8uLL);
  v3 = a1[2].i64[0];
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  block[2] = __63__FigCaptureDeviceLockStateMonitor_addDeviceLockStateObserver___block_invoke_2;
  block[3] = &unk_1E79973A0;
  v7 = v2;
  v8 = v4;
  dispatch_async(v5, block);
}

- (void)removeDeviceLockStateObserver:(id)observer
{
  monitorQueue = self->_monitorQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__FigCaptureDeviceLockStateMonitor_removeDeviceLockStateObserver___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = self;
  v4[5] = observer;
  dispatch_async(monitorQueue, v4);
}

- (BOOL)deviceIsLocked
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (!_FigIsNotCurrentDispatchQueue())
  {
    FigDebugAssert3();
  }

  monitorQueue = self->_monitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FigCaptureDeviceLockStateMonitor_deviceIsLocked__block_invoke;
  block[3] = &unk_1E798FAF8;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(monitorQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __76__FigCaptureDeviceLockStateMonitor__updateObserversWithDeviceIsLockedState___block_invoke(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) deviceLockStateMonitor:*(a1 + 40) didUpdateDeviceLockState:*(a1 + 48)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)_startMonitoringDeviceLockState
{
  if (self)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (!*(self + 32))
    {
      OUTLINED_FUNCTION_8_7();
      v5 = 3221225472;
      v6 = __67__FigCaptureDeviceLockStateMonitor__startMonitoringDeviceLockState__block_invoke;
      v7 = &unk_1E7991270;
      selfCopy = self;
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v2, v3, handler);
      [(FigCaptureDeviceLockStateMonitor *)self _updateDeviceLockState];
    }
  }
}

- (uint64_t)_stopMonitoringDeviceLockState
{
  if (result)
  {
    v1 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    result = *(v1 + 32);
    if (result)
    {
      result = notify_cancel(result);
      *(v1 + 32) = 0;
    }
  }

  return result;
}

- (void)_updateObserversWithDeviceIsLockedState:(uint64_t)state
{
  if (state)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      v8 = v2;
      LODWORD(v7) = 0;
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v5 = [*(state + 24) copy];
    OUTLINED_FUNCTION_8_7();
    v10 = 3221225472;
    v11 = __76__FigCaptureDeviceLockStateMonitor__updateObserversWithDeviceIsLockedState___block_invoke;
    v12 = &unk_1E79973A0;
    v13 = v5;
    stateCopy = state;
    v15 = a2;
    dispatch_async(v6, block);
  }
}

@end