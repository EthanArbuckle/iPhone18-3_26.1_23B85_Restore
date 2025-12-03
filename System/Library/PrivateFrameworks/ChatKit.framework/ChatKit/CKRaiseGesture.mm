@interface CKRaiseGesture
+ (BOOL)isRaiseGestureEnabled;
+ (BOOL)isRaiseGestureSupported;
- (BOOL)isRecognized;
- (CKRaiseGesture)initWithTarget:(id)target action:(SEL)action;
- (SEL)action;
- (id)target;
- (void)dealloc;
- (void)proximityStateDidChange:(id)change;
- (void)setAction:(SEL)action;
- (void)setEnabled:(BOOL)enabled;
- (void)setGestureState:(int64_t)state;
- (void)setProximityMonitoringEnabled:(BOOL)enabled;
- (void)setProximityState:(BOOL)state;
@end

@implementation CKRaiseGesture

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CMGestureManager *)self->_gestureManager setGestureHandler:0];
  gestureHandler = [(CMGestureManager *)self->_gestureManager gestureHandler];
  proximityToken = self->proximityToken;
  if (proximityToken)
  {
    notify_cancel(proximityToken);
  }

  v6.receiver = self;
  v6.super_class = CKRaiseGesture;
  [(CKRaiseGesture *)&v6 dealloc];
}

+ (BOOL)isRaiseGestureEnabled
{
  isRaiseGestureSupported = [self isRaiseGestureSupported];
  if (isRaiseGestureSupported)
  {
    LOBYTE(isRaiseGestureSupported) = CKRaiseToListenEnabled() != 0;
  }

  return isRaiseGestureSupported;
}

+ (BOOL)isRaiseGestureSupported
{
  if (isRaiseGestureSupported_once != -1)
  {
    +[CKRaiseGesture isRaiseGestureSupported];
  }

  return isRaiseGestureSupported_isRaiseGestureSupported;
}

void __41__CKRaiseGesture_isRaiseGestureSupported__block_invoke()
{
  if ([MEMORY[0x1E69634A8] isGestureServiceAvailable])
  {
    v0 = +[CKUIBehavior sharedBehaviors];
    isRaiseGestureSupported_isRaiseGestureSupported = [v0 isProximityMonitoringSupported];
  }

  else
  {
    isRaiseGestureSupported_isRaiseGestureSupported = 0;
  }
}

- (CKRaiseGesture)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = CKRaiseGesture;
  v7 = [(CKRaiseGesture *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(CKRaiseGesture *)v7 setTarget:targetCopy];
    [(CKRaiseGesture *)v8 setAction:action];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_proximityStateDidChange_ name:*MEMORY[0x1E69DDCC0] object:0];
  }

  return v8;
}

- (void)setProximityMonitoringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v25 = *MEMORY[0x1E69E9840];
  if (setProximityMonitoringEnabled__once != -1)
  {
    [CKRaiseGesture setProximityMonitoringEnabled:];
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      v20 = "[CKRaiseGesture setProximityMonitoringEnabled:]";
      if (setProximityMonitoringEnabled__isExtension)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      *buf = 136315650;
      v22 = v7;
      v21 = 2112;
      if (enabledCopy)
      {
        v6 = @"YES";
      }

      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s isExtension %@ enabled %@", buf, 0x20u);
    }
  }

  if (setProximityMonitoringEnabled__isExtension == 1)
  {
    if (setProximityMonitoringEnabled___pred_BKSHIDServicesRequestProximityDetectionModeBackBoardServices != -1)
    {
      [CKRaiseGesture setProximityMonitoringEnabled:];
    }

    if (!self->proximityToken)
    {
      objc_initWeak(buf, self);
      v8 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __48__CKRaiseGesture_setProximityMonitoringEnabled___block_invoke_2;
      v16 = &unk_1E72F4A50;
      objc_copyWeak(&v18, buf);
      selfCopy = self;
      notify_register_dispatch("com.apple.backboard.proximity.changed", &self->proximityToken, MEMORY[0x1E69E96A0], &v13);

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }

    if (enabledCopy)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    setProximityMonitoringEnabled___BKSHIDServicesRequestProximityDetectionMode(v9);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = @"NO";
        if (enabledCopy)
        {
          v11 = @"YES";
        }

        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Setting backboard ProximityDetectionMode. enabled %@", buf, 0xCu);
      }
    }
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  [currentDevice setProximityMonitoringEnabled:enabledCopy];
}

void __48__CKRaiseGesture_setProximityMonitoringEnabled___block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundlePath];
  setProximityMonitoringEnabled__isExtension = [v0 hasSuffix:@".appex"];
}

void *__48__CKRaiseGesture_setProximityMonitoringEnabled___block_invoke_51()
{
  result = MEMORY[0x193AF5ED0]("BKSHIDServicesRequestProximityDetectionMode", @"BackBoardServices");
  setProximityMonitoringEnabled___BKSHIDServicesRequestProximityDetectionMode = result;
  return result;
}

void __48__CKRaiseGesture_setProximityMonitoringEnabled___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(*(*(a1 + 32) + 8), &state64);
    v3 = state64;
    [WeakRetained setProximityState:state64 != 0];
    if (!v3)
    {
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v6 = 0;
          _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Proximity monitoring disabled because isProxActive was NO.", v6, 2u);
        }
      }

      setProximityMonitoringEnabled___BKSHIDServicesRequestProximityDetectionMode(0);
      v5 = *(*(a1 + 32) + 8);
      if (v5)
      {
        notify_cancel(v5);
        *(*(a1 + 32) + 8) = 0;
      }
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (enabledCopy)
        {
          v6 = @"YES";
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Gesture enabled: %@", &buf, 0xCu);
      }
    }

    if (enabledCopy)
    {
      v7 = MEMORY[0x193AF5EC0](@"CMGestureManager", @"CoreMotion");
      IMCMGestureManager = v7;
      if (v7)
      {
        v8 = [[v7 alloc] initWithPriority:2];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v13 = 0x3032000000;
        v14 = __Block_byref_object_copy__44;
        v15 = __Block_byref_object_dispose__44;
        selfCopy = self;
        v16 = selfCopy;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __29__CKRaiseGesture_setEnabled___block_invoke;
        v11[3] = &unk_1E72F4A78;
        v11[4] = selfCopy;
        v11[5] = &buf;
        [v8 setGestureHandler:v11];
        [(CKRaiseGesture *)selfCopy setGestureManager:v8];
        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Tearing down proximity monitoring and gesture manager", &buf, 2u);
        }
      }

      [(CKRaiseGesture *)self setProximityMonitoringEnabled:0];
      [(CKRaiseGesture *)self setGestureManager:0];
    }
  }
}

void __29__CKRaiseGesture_setEnabled___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Gesture handler triggered, gestureType is %u", v8, 8u);
    }
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5 && [v5 isEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Proximity monitoring is enabled, updating gesture state", v8, 2u);
      }
    }

    if (a2 == 1)
    {
      v7 = 2;
    }

    else
    {
      if (a2)
      {
        return;
      }

      [*(a1 + 32) setProximityMonitoringEnabled:1];
      v7 = 1;
    }

    [*(*(*(a1 + 40) + 8) + 40) setGestureState:v7];
  }
}

- (BOOL)isRecognized
{
  if ([(CKRaiseGesture *)self gestureState]!= 1)
  {
    return 0;
  }

  return [(CKRaiseGesture *)self proximityState];
}

- (void)setGestureState:(int64_t)state
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_gestureState != state)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        stateCopy = state;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Gesture state changed to %ld", &v13, 0xCu);
      }
    }

    isRecognized = [(CKRaiseGesture *)self isRecognized];
    self->_gestureState = state;
    if (isRecognized != [(CKRaiseGesture *)self isRecognized])
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          isRecognized2 = [(CKRaiseGesture *)self isRecognized];
          v9 = @"NO";
          if (isRecognized2)
          {
            v9 = @"YES";
          }

          v13 = 138412290;
          stateCopy = v9;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Gesture state changed, recognized changed to %@", &v13, 0xCu);
        }
      }

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      action = [(CKRaiseGesture *)self action];
      target = [(CKRaiseGesture *)self target];
      [mEMORY[0x1E69DC668] sendAction:action to:target from:self forEvent:0];
    }
  }
}

- (void)setProximityState:(BOOL)state
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_proximityState != state)
  {
    stateCopy = state;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (stateCopy)
        {
          v6 = @"YES";
        }

        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Proximity state changed to %@", &v14, 0xCu);
      }
    }

    isRecognized = [(CKRaiseGesture *)self isRecognized];
    self->_proximityState = stateCopy;
    if (isRecognized != [(CKRaiseGesture *)self isRecognized])
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          isRecognized2 = [(CKRaiseGesture *)self isRecognized];
          v10 = @"NO";
          if (isRecognized2)
          {
            v10 = @"YES";
          }

          v14 = 138412290;
          v15 = v10;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Proximity state changed, recognized changed to %@", &v14, 0xCu);
        }
      }

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      action = [(CKRaiseGesture *)self action];
      target = [(CKRaiseGesture *)self target];
      [mEMORY[0x1E69DC668] sendAction:action to:target from:self forEvent:0];
    }
  }
}

- (void)proximityStateDidChange:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  proximityState = [currentDevice proximityState];

  [(CKRaiseGesture *)self setProximityState:proximityState];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (proximityState)
      {
        v8 = @"YES";
      }

      v9 = 136315394;
      v10 = "[CKRaiseGesture proximityStateDidChange:]";
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%s Proximity state did change to %@", &v9, 0x16u);
    }
  }

  if ((proximityState & 1) == 0)
  {
    [(CKRaiseGesture *)self setGestureState:0];
    [(CKRaiseGesture *)self setProximityMonitoringEnabled:0];
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end