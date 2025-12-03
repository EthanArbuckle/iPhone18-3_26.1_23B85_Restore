@interface CAMPowerController
- (CAMPowerController)init;
- (id)description;
- (unsigned)powerPressureLevel;
- (void)_endBackgroundTaskIfNeeded;
- (void)_startBackgroundTaskIfNeeded;
- (void)addAssertionForIndentifier:(unsigned int)indentifier withReason:(unsigned int)reason;
- (void)dealloc;
- (void)init;
- (void)removeAssertionForIdentifier:(unsigned int)identifier withReason:(unsigned int)reason;
@end

@implementation CAMPowerController

- (CAMPowerController)init
{
  v18.receiver = self;
  v18.super_class = CAMPowerController;
  v2 = [(CAMPowerController *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    *(v2 + 5) = *MEMORY[0x1E69DDBE8];
    *(v2 + 3) = -1;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v6 = dispatch_queue_create("com.apple.camera.power-controller.assertions", v5);
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    objc_initWeak(&location, v2);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __26__CAMPowerController_init__block_invoke;
    aBlock[3] = &unk_1E76F8388;
    objc_copyWeak(&v16, &location);
    v8 = _Block_copy(aBlock);
    v9 = notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v2 + 3, *(v2 + 4), v8);
    if (v9)
    {
      v10 = os_log_create("com.apple.camera", "PowerController");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CAMPowerController *)v9 init];
      }
    }

    else
    {
      v14 = v8;
      v13 = v2;
      pl_dispatch_async();

      v10 = v14;
    }

    v11 = v2;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__CAMPowerController_init__block_invoke(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state)
  {
    v7 = state;
    v8 = os_log_create("com.apple.camera", "PowerController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __26__CAMPowerController_init__block_invoke_cold_1(v7, v8);
    }
  }

  else
  {
    [WeakRetained _powerControllerQueue_setPowerPressureLevel:state64];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_startBackgroundTaskIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  _assertionsByIdentifier = [(CAMPowerController *)self _assertionsByIdentifier];
  if ([_assertionsByIdentifier count] && self->__backgroundTaskIdentifier == *MEMORY[0x1E69DDBE8])
  {
    v4 = [objc_opt_class() description];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__CAMPowerController__startBackgroundTaskIfNeeded__block_invoke;
    v8[3] = &unk_1E76F77B0;
    v9 = _assertionsByIdentifier;
    self->__backgroundTaskIdentifier = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:v4 expirationHandler:v8];

    v6 = os_log_create("com.apple.camera", "PowerController");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      backgroundTaskIdentifier = self->__backgroundTaskIdentifier;
      *buf = 134217984;
      v11 = backgroundTaskIdentifier;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "PowerController: Started background task: %ld", buf, 0xCu);
    }
  }
}

- (void)_endBackgroundTaskIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  _assertionsByIdentifier = [(CAMPowerController *)self _assertionsByIdentifier];
  if (![_assertionsByIdentifier count])
  {
    v4 = *MEMORY[0x1E69DDBE8];
    if (self->__backgroundTaskIdentifier != *MEMORY[0x1E69DDBE8])
    {
      v5 = os_log_create("com.apple.camera", "PowerController");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        backgroundTaskIdentifier = self->__backgroundTaskIdentifier;
        v8 = 134217984;
        v9 = backgroundTaskIdentifier;
        _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "PowerController: Ending background task: %ld", &v8, 0xCu);
      }

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668] endBackgroundTask:self->__backgroundTaskIdentifier];

      self->__backgroundTaskIdentifier = v4;
    }
  }
}

- (void)dealloc
{
  _powerPressureNotificationToken = [(CAMPowerController *)self _powerPressureNotificationToken];
  if ((_powerPressureNotificationToken & 0x80000000) == 0)
  {
    notify_cancel(_powerPressureNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = CAMPowerController;
  [(CAMPowerController *)&v4 dealloc];
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  _assertionsByIdentifier = [(CAMPowerController *)self _assertionsByIdentifier];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = _assertionsByIdentifier;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        intValue = [v11 intValue];

        v13 = NSStringFromCAMPowerAssertionReasonBitfield(intValue);
        [v4 setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ backgroundTaskIdentifier:%ld assertions:%@>", objc_opt_class(), -[CAMPowerController _backgroundTaskIdentifier](self, "_backgroundTaskIdentifier"), v4];

  return v14;
}

void __50__CAMPowerController__startBackgroundTaskIfNeeded__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "PowerController");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__CAMPowerController__startBackgroundTaskIfNeeded__block_invoke_cold_1(a1, v2);
  }
}

- (void)addAssertionForIndentifier:(unsigned int)indentifier withReason:(unsigned int)reason
{
  _powerControllerQueue = [(CAMPowerController *)self _powerControllerQueue];
  pl_dispatch_async();
}

void __60__CAMPowerController_addAssertionForIndentifier_withReason___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
  v4 = [*(a1 + 32) _assertionsByIdentifier];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 intValue];

  v8 = (a1 + 44);
  v7 = *(a1 + 44);
  if ((v7 & v6) != 0)
  {
    v9 = os_log_create("com.apple.camera", "PowerController");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __60__CAMPowerController_addAssertionForIndentifier_withReason___block_invoke_cold_1(v2, v8, v9);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7 | v6];
    [v4 setObject:v10 forKeyedSubscript:v3];

    [*(a1 + 32) _startBackgroundTaskIfNeeded];
  }
}

- (void)removeAssertionForIdentifier:(unsigned int)identifier withReason:(unsigned int)reason
{
  _powerControllerQueue = [(CAMPowerController *)self _powerControllerQueue];
  pl_dispatch_async();
}

void __62__CAMPowerController_removeAssertionForIdentifier_withReason___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
  v3 = [*(a1 + 32) _assertionsByIdentifier];
  v4 = [v3 objectForKeyedSubscript:v2];
  v5 = v4;
  if (!v4)
  {
    v11 = os_log_create("com.apple.camera", "PowerController");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      goto LABEL_9;
    }

    v12 = *(a1 + 40);
    v13 = NSStringFromCAMPowerAssertionReason(*(a1 + 44));
    v16 = 67109634;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v3;
    _os_log_error_impl(&dword_1A3640000, v11, OS_LOG_TYPE_ERROR, "PowerController %d: Power assertion not found, cannot remove reason %{public}@; existing assertions: %{public}@", &v16, 0x1Cu);
LABEL_11:

    goto LABEL_8;
  }

  v6 = [v4 intValue];
  v7 = v6;
  v8 = *(a1 + 44);
  if ((v8 & v6) == 0)
  {
    v11 = os_log_create("com.apple.camera", "PowerController");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v14 = *(a1 + 40);
    v13 = NSStringFromCAMPowerAssertionReason(*(a1 + 44));
    v15 = NSStringFromCAMPowerAssertionReasonBitfield(v7);
    v16 = 67109634;
    v17 = v14;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v15;
    _os_log_error_impl(&dword_1A3640000, v11, OS_LOG_TYPE_ERROR, "PowerController %d: Power assertion was not asserted with reason %{public}@; existing reasons: %{public}@", &v16, 0x1Cu);

    goto LABEL_11;
  }

  v9 = v6 & ~v8;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
  [v3 setObject:v10 forKeyedSubscript:v2];

  if (!v9)
  {
    [v3 removeObjectForKey:v2];
    [*(a1 + 32) _endBackgroundTaskIfNeeded];
  }

LABEL_9:
}

- (unsigned)powerPressureLevel
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  objc_initWeak(&location, self);
  _powerControllerQueue = [(CAMPowerController *)self _powerControllerQueue];
  objc_copyWeak(&v5, &location);
  pl_dispatch_sync();

  LODWORD(_powerControllerQueue) = *(v8 + 6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v7, 8);
  return _powerControllerQueue;
}

void __40__CAMPowerController_powerPressureLevel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = [WeakRetained _powerControllerQueue_powerPressureLevel];
}

- (void)init
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "PowerController: Unable to register for power pressure notification: %d", v2, 8u);
}

void __26__CAMPowerController_init__block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "PowerController: Unable to get power pressure notification state: %d", v2, 8u);
}

void __50__CAMPowerController__startBackgroundTaskIfNeeded__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "PowerController: A power assertion expired without finishing! Assertions active: %{public}@", &v3, 0xCu);
}

void __60__CAMPowerController_addAssertionForIndentifier_withReason___block_invoke_cold_1(int *a1, int *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = NSStringFromCAMPowerAssertionReason(*a2);
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2114;
  v8 = v5;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "PowerController %d: Power assertion %{public}@ already exists", v6, 0x12u);
}

@end