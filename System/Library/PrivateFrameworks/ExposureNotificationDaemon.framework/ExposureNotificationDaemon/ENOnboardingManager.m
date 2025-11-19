@interface ENOnboardingManager
- (BOOL)_isInLostMode;
- (BOOL)isDeviceUnlocked;
- (BOOL)isIdealTimeForBuddy;
- (ENOnboardingManager)init;
- (ENOnboardingManagerDelegate)delegate;
- (void)_cameraIrisStateChangedWithToken:(int)a3;
- (void)_deviceLockStateChangedWithToken:(int)a3;
- (void)_observeCameraIrisNotifications;
- (void)dealloc;
- (void)setShouldObserveDeviceUnlocks:(BOOL)a3;
@end

@implementation ENOnboardingManager

void __54__ENOnboardingManager__observeCameraIrisNotifications__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraIrisStateChangedWithToken:a2];
}

- (ENOnboardingManager)init
{
  v6.receiver = self;
  v6.super_class = ENOnboardingManager;
  v2 = [(ENOnboardingManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBAF78]);
    callObserver = v2->_callObserver;
    v2->_callObserver = v3;

    v2->_pendingBuddyOnboarding = 0;
    [(ENOnboardingManager *)v2 _observeCameraIrisNotifications];
  }

  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_cameraIrisFrontNotifyToken);
  notify_cancel(self->_cameraIrisBackNotifyToken);
  notify_cancel(self->_cameraIrisBackTeleNotifyToken);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = ENOnboardingManager;
  [(ENOnboardingManager *)&v4 dealloc];
}

- (BOOL)isIdealTimeForBuddy
{
  if ([(ENOnboardingManager *)self _isInLostMode])
  {
    return 0;
  }

  if ([(ENOnboardingManager *)self isCaptureSessionRunning])
  {
    return 0;
  }

  v3 = [(ENOnboardingManager *)self callObserver];
  v4 = [v3 calls];
  v5 = [v4 count];

  if (v5)
  {
    return 0;
  }

  if (ENIsTestContext_onceToken != -1)
  {
    [ENOnboardingManager isIdealTimeForBuddy];
  }

  return (ENIsTestContext__isTestingContext & 1) != 0 || (BYSetupAssistantNeedsToRun() & 1) == 0;
}

- (BOOL)isDeviceUnlocked
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = SBSGetScreenLockStatus();
  v8 = @"ExtendedDeviceLockState";
  v9[0] = MEMORY[0x277CBEC30];
  [MEMORY[0x277CBEAC8] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v3 = MKBGetDeviceLockState();
  result = v3 != 6 && (v3 - 3) < 0xFFFFFFFE && v2 == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setShouldObserveDeviceUnlocks:(BOOL)a3
{
  if (a3)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__ENOnboardingManager_setShouldObserveDeviceUnlocks___block_invoke;
    v10[3] = &unk_278FD2A18;
    objc_copyWeak(&v11, &location);
    v4 = MEMORY[0x24C214430](v10);
    screenLockNotifyToken = self->_screenLockNotifyToken;
    p_screenLockNotifyToken = &self->_screenLockNotifyToken;
    if (notify_is_valid_token(screenLockNotifyToken))
    {
      if (gLogCategory_ENOnboardingManager > 30 || gLogCategory_ENOnboardingManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *MEMORY[0x277D67778];
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
      LODWORD(v7) = notify_register_dispatch(v7, p_screenLockNotifyToken, v8, v4);

      if (v7)
      {
        if (gLogCategory_ENOnboardingManager <= 90 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        *p_screenLockNotifyToken = -1;
        goto LABEL_22;
      }

      if (gLogCategory_ENOnboardingManager > 30 || gLogCategory_ENOnboardingManager == -1 && !_LogCategory_Initialize())
      {
LABEL_22:

        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
        return;
      }
    }

    LogPrintF_safe();
    goto LABEL_22;
  }

  if (self->_screenLockNotifyToken != -1)
  {
    if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
    {
      [ENOnboardingManager setShouldObserveDeviceUnlocks:];
    }

    notify_cancel(self->_screenLockNotifyToken);
    self->_screenLockNotifyToken = -1;
  }
}

void __53__ENOnboardingManager_setShouldObserveDeviceUnlocks___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceLockStateChangedWithToken:a2];
}

- (BOOL)_isInLostMode
{
  v2 = [MEMORY[0x277D08F70] sharedInstance];
  if ([v2 lostModeIsActive])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isManagedLostModeActive];
  }

  return v3;
}

- (void)_deviceLockStateChangedWithToken:(int)a3
{
  state64 = 0;
  notify_get_state(a3, &state64);
  v4 = [(ENOnboardingManager *)self delegate];
  if (state64 || ![(ENOnboardingManager *)self isDeviceUnlocked])
  {
    if (!CFPrefs_GetInt64())
    {
      if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
      {
        [ENOnboardingManager _deviceLockStateChangedWithToken:];
      }

      self->_pendingBuddyOnboarding = 1;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ENOnboardingManager__deviceLockStateChangedWithToken___block_invoke;
    block[3] = &unk_278FD1120;
    v6 = v4;
    v7 = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_cameraIrisStateChangedWithToken:(int)a3
{
  state64 = 0;
  notify_get_state(a3, &state64);
  [(ENOnboardingManager *)self setIsCaptureSessionRunning:state64 == 1];
}

- (void)_observeCameraIrisNotifications
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__ENOnboardingManager__observeCameraIrisNotifications__block_invoke;
  v8[3] = &unk_278FD2A18;
  objc_copyWeak(&v9, &location);
  v3 = MEMORY[0x24C214430](v8);
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  LODWORD(v4) = notify_register_dispatch("com.apple.isp.frontcamerapower", &self->_cameraIrisFrontNotifyToken, v4, v3);

  if (v4)
  {
    if (gLogCategory_ENOnboardingManager <= 90 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    self->_cameraIrisFrontNotifyToken = -1;
  }

  else if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v6 = notify_register_dispatch("com.apple.isp.backcamerapower", &self->_cameraIrisBackNotifyToken, MEMORY[0x277D85CD0], v3);

  if (v6)
  {
    if (gLogCategory_ENOnboardingManager <= 90 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    self->_cameraIrisBackNotifyToken = -1;
  }

  else if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v7 = notify_register_dispatch("com.apple.isp.backtelecamerapower", &self->_cameraIrisBackTeleNotifyToken, MEMORY[0x277D85CD0], v3);

  if (v7)
  {
    if (gLogCategory_ENOnboardingManager <= 90 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    self->_cameraIrisBackTeleNotifyToken = -1;
  }

  else if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (ENOnboardingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end