@interface CAMFrameworkUtilities
+ (BOOL)isPasscodeLocked;
+ (BOOL)isPhotosAppLocked;
+ (id)_deviceOrientationLockedStateMonitor;
+ (id)_devicePasscodeLockedStateMonitor;
+ (id)_notifyQueue;
+ (id)_photosAppLockedStateMonitor;
+ (id)snapshotForCrossFadingView:(id)view fadeOutDuration:(double)duration fadeOutDelay:(double)delay fadeInDuration:(double)inDuration fadeInDelay:(double)inDelay embedSnapshot:(BOOL)snapshot;
+ (void)setPasscodeLockedNeedsUpdate;
+ (void)setPhotosAppLockedNeedsUpdate;
@end

@implementation CAMFrameworkUtilities

+ (id)snapshotForCrossFadingView:(id)view fadeOutDuration:(double)duration fadeOutDelay:(double)delay fadeInDuration:(double)inDuration fadeInDelay:(double)inDelay embedSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  viewCopy = view;
  v14 = [viewCopy snapshotViewAfterScreenUpdates:0];
  [viewCopy bounds];
  [v14 setBounds:?];
  [viewCopy center];
  [v14 setCenter:?];
  if (viewCopy)
  {
    [viewCopy transform];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
  }

  v29[0] = v30;
  v29[1] = v31;
  v29[2] = v32;
  [v14 setTransform:v29];
  if (snapshotCopy)
  {
    superview = [viewCopy superview];
    [superview addSubview:v14];
  }

  v16 = MEMORY[0x1E69DD250];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __122__CAMFrameworkUtilities_snapshotForCrossFadingView_fadeOutDuration_fadeOutDelay_fadeInDuration_fadeInDelay_embedSnapshot___block_invoke;
  v27[3] = &unk_1E76F77B0;
  v28 = v14;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __122__CAMFrameworkUtilities_snapshotForCrossFadingView_fadeOutDuration_fadeOutDelay_fadeInDuration_fadeInDelay_embedSnapshot___block_invoke_2;
  v25[3] = &unk_1E76F7988;
  v17 = v28;
  v26 = v17;
  [v16 animateWithDuration:0 delay:v27 options:v25 animations:duration completion:delay];
  [viewCopy setAlpha:0.0];
  v18 = MEMORY[0x1E69DD250];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __122__CAMFrameworkUtilities_snapshotForCrossFadingView_fadeOutDuration_fadeOutDelay_fadeInDuration_fadeInDelay_embedSnapshot___block_invoke_3;
  v23[3] = &unk_1E76F77B0;
  v24 = viewCopy;
  v19 = viewCopy;
  [v18 animateWithDuration:2 delay:v23 options:0 animations:inDuration completion:inDelay];
  v20 = v24;
  v21 = v17;

  return v17;
}

+ (id)_deviceOrientationLockedStateMonitor
{
  if (_deviceOrientationLockedStateMonitor_onceToken != -1)
  {
    +[CAMFrameworkUtilities _deviceOrientationLockedStateMonitor];
  }

  v3 = _deviceOrientationLockedStateMonitor_monitor;

  return v3;
}

void __61__CAMFrameworkUtilities__deviceOrientationLockedStateMonitor__block_invoke()
{
  v0 = [CAMLibNotifyStateMonitor alloc];
  v3 = +[CAMFrameworkUtilities _notifyQueue];
  v1 = [(CAMLibNotifyStateMonitor *)v0 initWithNotificationName:"com.apple.backboardd.orientationlock" queue:v3 updateHandler:&__block_literal_global_103];
  v2 = _deviceOrientationLockedStateMonitor_monitor;
  _deviceOrientationLockedStateMonitor_monitor = v1;
}

BOOL __61__CAMFrameworkUtilities__deviceOrientationLockedStateMonitor__block_invoke_2(int a1, int token)
{
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v3 = state;
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__CAMFrameworkUtilities__deviceOrientationLockedStateMonitor__block_invoke_2_cold_1(v3, v4);
    }
  }

  return state64 != 0;
}

+ (BOOL)isPasscodeLocked
{
  _devicePasscodeLockedStateMonitor = [self _devicePasscodeLockedStateMonitor];
  monitoredValue = [_devicePasscodeLockedStateMonitor monitoredValue];

  return monitoredValue;
}

+ (void)setPasscodeLockedNeedsUpdate
{
  _devicePasscodeLockedStateMonitor = [self _devicePasscodeLockedStateMonitor];
  [_devicePasscodeLockedStateMonitor setNeedsUpdate];
}

+ (id)_devicePasscodeLockedStateMonitor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CAMFrameworkUtilities__devicePasscodeLockedStateMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_devicePasscodeLockedStateMonitor_onceToken != -1)
  {
    dispatch_once(&_devicePasscodeLockedStateMonitor_onceToken, block);
  }

  v2 = _devicePasscodeLockedStateMonitor_monitor;

  return v2;
}

void __58__CAMFrameworkUtilities__devicePasscodeLockedStateMonitor__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"ExtendedDeviceLockState";
  v14[0] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v3 = [CAMLibNotifyStateMonitor alloc];
  v4 = *MEMORY[0x1E69B1A70];
  v5 = [*(a1 + 32) _notifyQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CAMFrameworkUtilities__devicePasscodeLockedStateMonitor__block_invoke_2;
  v10[3] = &unk_1E76FDBD8;
  v6 = *(a1 + 32);
  v11 = v2;
  v12 = v6;
  v7 = v2;
  v8 = [(CAMLibNotifyStateMonitor *)v3 initWithNotificationName:v4 queue:v5 updateHandler:v10];
  v9 = _devicePasscodeLockedStateMonitor_monitor;
  _devicePasscodeLockedStateMonitor_monitor = v8;
}

uint64_t __58__CAMFrameworkUtilities__devicePasscodeLockedStateMonitor__block_invoke_2(uint64_t a1)
{
  v2 = MKBGetDeviceLockState();
  v3 = *(a1 + 40);

  return [v3 _isPasscodeLockedForMobileKeyBagLockState:v2];
}

+ (BOOL)isPhotosAppLocked
{
  _photosAppLockedStateMonitor = [self _photosAppLockedStateMonitor];
  monitoredValue = [_photosAppLockedStateMonitor monitoredValue];

  return monitoredValue;
}

+ (void)setPhotosAppLockedNeedsUpdate
{
  _photosAppLockedStateMonitor = [self _photosAppLockedStateMonitor];
  [_photosAppLockedStateMonitor setNeedsUpdate];
}

+ (id)_photosAppLockedStateMonitor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CAMFrameworkUtilities__photosAppLockedStateMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_photosAppLockedStateMonitor_onceToken != -1)
  {
    dispatch_once(&_photosAppLockedStateMonitor_onceToken, block);
  }

  v2 = _photosAppLockedStateMonitor_monitor;

  return v2;
}

void __53__CAMFrameworkUtilities__photosAppLockedStateMonitor__block_invoke(uint64_t a1)
{
  v2 = [CAMLibNotifyStateMonitor alloc];
  v3 = *MEMORY[0x1E698B098];
  v6 = [*(a1 + 32) _notifyQueue];
  v4 = [(CAMLibNotifyStateMonitor *)v2 initWithNotificationName:v3 queue:v6 updateHandler:&__block_literal_global_109];
  v5 = _photosAppLockedStateMonitor_monitor;
  _photosAppLockedStateMonitor_monitor = v4;
}

uint64_t __53__CAMFrameworkUtilities__photosAppLockedStateMonitor__block_invoke_2()
{
  v0 = [MEMORY[0x1E698B0C8] applicationWithBundleIdentifier:@"com.apple.mobileslideshow"];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 isLocked];
  }

  else
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __53__CAMFrameworkUtilities__photosAppLockedStateMonitor__block_invoke_2_cold_1(v3);
    }

    v2 = 0;
  }

  return v2;
}

+ (id)_notifyQueue
{
  if (_notifyQueue_onceToken != -1)
  {
    +[CAMFrameworkUtilities _notifyQueue];
  }

  v3 = _notifyQueue_queue;

  return v3;
}

void __37__CAMFrameworkUtilities__notifyQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.camera.libnotify", v2);
  v1 = _notifyQueue_queue;
  _notifyQueue_queue = v0;
}

void __61__CAMFrameworkUtilities__deviceOrientationLockedStateMonitor__block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "notify_get_state failed with %d", v2, 8u);
}

void __53__CAMFrameworkUtilities__photosAppLockedStateMonitor__block_invoke_2_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = @"com.apple.mobileslideshow";
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "App not found with bundle identifier: %{public}@", &v1, 0xCu);
}

@end