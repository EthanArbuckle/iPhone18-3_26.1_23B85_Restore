@interface BWDeviceOrientationMonitor
- (BWDeviceOrientationMonitor)init;
- (int)rotationDegreesFromOrientation:(int)a3 isFrontCamera:(BOOL)a4 isExternalCamera:(BOOL)a5 isMirrored:(BOOL)a6 clientExpectsCameraMountedInLandscapeOrientation:(BOOL)a7;
- (uint64_t)_doStart;
- (uint64_t)_doStop;
- (uint64_t)_orientationChanged;
- (void)dealloc;
@end

@implementation BWDeviceOrientationMonitor

- (BWDeviceOrientationMonitor)init
{
  v5.receiver = self;
  v5.super_class = BWDeviceOrientationMonitor;
  v2 = [(BWDeviceOrientationMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_orientationDispatchToken = 0;
    v2->_orientationNotificationDispatchQueue = dispatch_queue_create("com.apple.bwgraph.device-orientation-monitor", 0);
    *&v3->_mostRecentPortraitLandscapeOrientation = 0;
    v3->_stateMutex = FigSimpleMutexCreate();
  }

  return v3;
}

- (uint64_t)_doStart
{
  if (result)
  {
    v1 = result;
    result = FigSimpleMutexLock();
    if (!result)
    {
      if (*(v1 + 8))
      {
        return FigSimpleMutexUnlock();
      }

      out_token = 0;
      if (notify_register_check("com.apple.backboardd.rawOrientation", &out_token))
      {
LABEL_11:
        objc_initWeak(&state64, v1);
        v4 = *(v1 + 16);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __38__BWDeviceOrientationMonitor__doStart__block_invoke;
        handler[3] = &unk_1E7999FB0;
        objc_copyWeak(&v6, &state64);
        notify_register_dispatch("com.apple.backboardd.rawOrientation", (v1 + 8), v4, handler);
        objc_destroyWeak(&v6);
        objc_destroyWeak(&state64);
        return FigSimpleMutexUnlock();
      }

      state64 = 0;
      notify_get_state(out_token, &state64);
      v2 = state64;
      if ((state64 - 1) > 3)
      {
        if ((state64 - 1) > 5)
        {
          v3 = objc_alloc_init(MEMORY[0x1E699FB90]);
          *(v1 + 24) = [v3 activeInterfaceOrientation];
          [v3 invalidate];

          goto LABEL_10;
        }
      }

      else
      {
        *(v1 + 24) = state64;
      }

      *(v1 + 28) = v2;
LABEL_10:
      notify_cancel(out_token);
      goto LABEL_11;
    }
  }

  return result;
}

- (void)dealloc
{
  [(BWDeviceOrientationMonitor *)self _doStop];

  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = BWDeviceOrientationMonitor;
  [(BWDeviceOrientationMonitor *)&v3 dealloc];
}

- (int)rotationDegreesFromOrientation:(int)a3 isFrontCamera:(BOOL)a4 isExternalCamera:(BOOL)a5 isMirrored:(BOOL)a6 clientExpectsCameraMountedInLandscapeOrientation:(BOOL)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = FigCaptureCameraRequires180DegreesRotation(a4, a5);
  if (FigCapturePlatformMountsCamerasInLandscapeOrientation(v9, v8))
  {
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 180;
    }

    if (v11)
    {
      v13 = 180;
    }

    else
    {
      v13 = 0;
    }

    if (a3 != 3)
    {
      v13 = 0;
    }

    if (a3 == 4)
    {
      v13 = v12;
    }

    if ((v8 | v9 & ~v11))
    {
      v14 = 270;
    }

    else
    {
      v14 = 90;
    }

    if ((v8 | v9 & ~v11))
    {
      v15 = 90;
    }

    else
    {
      v15 = 270;
    }

    if (a3 != 2)
    {
      v15 = 0;
    }

    if (a3 == 1)
    {
      v15 = v14;
    }

    if (a3 <= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }
  }

  else
  {
    if (v9)
    {
      v17 = 270;
    }

    else
    {
      v17 = 90;
    }

    if (v9)
    {
      v18 = 90;
    }

    else
    {
      v18 = 270;
    }

    if (a3 != 3)
    {
      v18 = 0;
    }

    if (a3 == 4)
    {
      v18 = v17;
    }

    if (a3 == 2)
    {
      v16 = 180;
    }

    else
    {
      v16 = v18;
    }
  }

  return FigCaptureRotationDegreesWithMirroring(v16, v7);
}

void __38__BWDeviceOrientationMonitor__doStart__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(BWDeviceOrientationMonitor *)WeakRetained _orientationChanged];
}

- (uint64_t)_doStop
{
  if (result)
  {
    v1 = result;
    result = FigSimpleMutexLock();
    if (!result)
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        notify_cancel(v2);
        *(v1 + 8) = 0;
      }

      *(v1 + 24) = 0;

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

- (uint64_t)_orientationChanged
{
  if (result)
  {
    v1 = result;
    result = FigSimpleMutexLock();
    if (!result)
    {
      v2 = v1[2];
      if (v2)
      {
        state64 = 0;
        notify_get_state(v2, &state64);
        v3 = state64;
        if (state64)
        {
          if (v1[7] != state64)
          {
            if (state64 >= 7)
            {
              fig_log_get_emitter();
              FigDebugAssert3();
            }

            else
            {
              if (state64 <= 4 && v1[6] != state64)
              {
                v1[6] = state64;
                v4 = [v1 portraitLandscapeUpdateDelegate];
                if (v4)
                {
                  [v4 didUpdatePortraitLandscapeOrientation:v1[6]];
                }
              }

              v1[7] = v3;
            }
          }
        }
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

@end