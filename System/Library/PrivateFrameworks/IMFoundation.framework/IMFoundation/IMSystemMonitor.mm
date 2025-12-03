@interface IMSystemMonitor
+ (id)sharedInstance;
- (BOOL)_alreadyLocked_isSystemIdle;
- (BOOL)isActive;
- (BOOL)isBackingUp;
- (BOOL)isFastUserSwitched;
- (BOOL)isInBackground;
- (BOOL)isScreenLit;
- (BOOL)isScreenLocked;
- (BOOL)isScreenSaverActive;
- (BOOL)isSetup;
- (BOOL)isSystemIdle;
- (BOOL)isSystemLocked;
- (BOOL)isUnderDataProtectionLock;
- (BOOL)isUnderFirstDataProtectionLock;
- (BOOL)receivesMemoryWarnings;
- (BOOL)systemIsShuttingDown;
- (BOOL)systemIsSleeping;
- (BOOL)usesPowerNotifications;
- (BOOL)usesSystemIdleState;
- (BOOL)watchesDataProtectionLockState;
- (BOOL)watchesScreenLightState;
- (BOOL)watchesSystemLockState;
- (IMSystemMonitor)init;
- (NSDate)dateScreenLightLastChanged;
- (NSDate)dateSystemLockLastChanged;
- (double)systemIdleTime;
- (void)_addEarlyListener:(id)listener;
- (void)_alreadyLocked_clearIdleTimer;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationDidRemoveDeactivationReason:(id)reason;
- (void)_applicationWillAddDeactivationReason:(id)reason;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_applicationWillResignActive:(id)active;
- (void)_checkRestoredFromBackup;
- (void)_clearIdleTimer;
- (void)_deliverNotificationSelector:(SEL)selector;
- (void)_overrideAndDisableIdleTimer:(BOOL)timer;
- (void)_postScreenLocked;
- (void)_postScreenSaverStarted;
- (void)_receivedMemoryNotification;
- (void)_registerForRestoreNotifications;
- (void)_registerForSetupNotifications;
- (void)_removeEarlyListener:(id)listener;
- (void)_restoreDidStart;
- (void)_restoreDidStop;
- (void)_screenLocked:(id)locked;
- (void)_screenSaverStarted:(id)started;
- (void)_screenSaverStopped:(id)stopped;
- (void)_screenUnlocked:(id)unlocked;
- (void)_setIdleState:(BOOL)state;
- (void)_setSystemLockState:(BOOL)state;
- (void)_setSystemScreenState:(BOOL)state;
- (void)_setupStateChanged;
- (void)_systemDidWake;
- (void)_systemWillSleep;
- (void)_unregisterForRestoreNotifications;
- (void)addListener:(id)listener;
- (void)dealloc;
- (void)removeListener:(id)listener;
- (void)setActive:(BOOL)active;
- (void)setReceivesMemoryWarnings:(BOOL)warnings;
- (void)setUsesPowerNotifications:(BOOL)notifications;
- (void)setWatchesDataProtectionLockState:(BOOL)state;
- (void)setWatchesScreenLightState:(BOOL)state;
- (void)setWatchesSystemLockState:(BOOL)state;
@end

@implementation IMSystemMonitor

- (BOOL)systemIsShuttingDown
{
  os_unfair_lock_lock(&unk_1ED517458);
  v2 = byte_1EAED9044;
  os_unfair_lock_unlock(&unk_1ED517458);
  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED517620 != -1)
  {
    sub_19598C594();
  }

  v3 = qword_1ED5175D8;

  return v3;
}

- (void)_registerForRestoreNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1959AF62C, @"FaceTimeRegistrationRestoredFromBackupNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, self, sub_1959AF63C, @"com.apple.private.restrict-post.MobileBackup.BackupAgent.RestoreStarted", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v5, self, sub_1959AF6B4, @"com.apple.private.restrict-post.MobileBackup.BackupAgent.RestoreEnded", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (IMSystemMonitor)init
{
  v57.receiver = self;
  v57.super_class = IMSystemMonitor;
  v2 = [(IMSystemMonitor *)&v57 init];
  if (v2)
  {
    os_unfair_lock_lock(&unk_1ED517458);
    v3 = byte_1ED517558;
    byte_1ED517558 = 1;
    os_unfair_lock_unlock(&unk_1ED517458);
    if ((v3 & 1) == 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1959AFC1C, @"com.apple.springboard.deviceWillShutDown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      if (dword_1ED51708C == -1)
      {
        v5 = im_primary_queue();
        dword_1ED51708C = IMDispatchForNotify("com.apple.mobile.data_eschaton", 0, v5, &unk_1F09D1F80);
      }
    }

    *&v2->_userIdleToken = 0xFFFFFFFFLL;
    v6 = objc_alloc(MEMORY[0x1E696AC70]);
    v8 = objc_msgSend_initWithOptions_capacity_(v6, v7, 517, 0);
    listeners = v2->_listeners;
    v2->_listeners = v8;

    v10 = objc_alloc(MEMORY[0x1E696AC70]);
    v12 = objc_msgSend_initWithOptions_capacity_(v10, v11, 517, 0);
    earlyListeners = v2->_earlyListeners;
    v2->_earlyListeners = v12;

    v14 = objc_alloc(MEMORY[0x1E69956C8]);
    v15 = im_primary_queue();
    v17 = objc_msgSend_initWithCapacity_queue_block_(v14, v16, 1, v15, &unk_1F09D1E80);
    postScreenLockedTask = v2->__postScreenLockedTask;
    v2->__postScreenLockedTask = v17;

    v19 = objc_alloc(MEMORY[0x1E69956C8]);
    v20 = im_primary_queue();
    v22 = objc_msgSend_initWithCapacity_queue_block_(v19, v21, 1, v20, &unk_1F09D1EA0);
    postScreenSaverStartedTask = v2->__postScreenSaverStartedTask;
    v2->__postScreenSaverStartedTask = v22;

    if (qword_1ED517550 != -1)
    {
      sub_19598B8EC();
    }

    if (qword_1ED5176B0 && qword_1ED517678)
    {
      v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
      objc_msgSend_addObserver_selector_name_object_(v26, v27, v2, sel__applicationDidEnterBackground_, qword_1ED5176B0, 0);

      v30 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v28, v29);
      objc_msgSend_addObserver_selector_name_object_(v30, v31, v2, sel__applicationWillEnterForeground_, qword_1ED517678, 0);
    }

    if (qword_1ED517688 && qword_1ED517698)
    {
      v32 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
      objc_msgSend_addObserver_selector_name_object_(v32, v33, v2, sel__suspend_, qword_1ED517688, 0);

      v36 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v34, v35);
      objc_msgSend_addObserver_selector_name_object_(v36, v37, v2, sel__resume_, qword_1ED517698, 0);
    }

    if (qword_1ED5176C0 && qword_1ED517670)
    {
      v38 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
      objc_msgSend_addObserver_selector_name_object_(v38, v39, v2, sel__applicationDidBecomeActive_, qword_1ED5176C0, 0);

      v42 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v40, v41);
      objc_msgSend_addObserver_selector_name_object_(v42, v43, v2, sel__applicationWillResignActive_, qword_1ED517670, 0);
    }

    if (qword_1ED517690 && qword_1ED5176A0)
    {
      v44 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
      objc_msgSend_addObserver_selector_name_object_(v44, v45, v2, sel__suspendEventsOnly_, qword_1ED517690, 0);

      v48 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v46, v47);
      objc_msgSend_addObserver_selector_name_object_(v48, v49, v2, sel__resumeEventsOnly_, qword_1ED5176A0, 0);
    }

    if (qword_1ED517680 && qword_1ED5176A8)
    {
      v50 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
      objc_msgSend_addObserver_selector_name_object_(v50, v51, v2, sel__applicationWillAddDeactivationReason_, qword_1ED517680, 0);

      v54 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v52, v53);
      objc_msgSend_addObserver_selector_name_object_(v54, v55, v2, sel__applicationDidRemoveDeactivationReason_, qword_1ED5176A8, 0);
    }

    objc_msgSend__registerForRestoreNotifications(v2, v24, v25);
  }

  return v2;
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_ivarLock);
  active = self->_active;
  os_unfair_lock_unlock(&self->_ivarLock);
  return active;
}

- (BOOL)isSetup
{
  v26 = *MEMORY[0x1E69E9840];
  objc_msgSend__registerForSetupNotifications(self, a2, v2);
  v5 = objc_msgSend_sharedInstance(IMLockdownManager, v3, v4);
  isVendorInstall = objc_msgSend_isVendorInstall(v5, v6, v7);

  if (isVendorInstall)
  {
    goto LABEL_6;
  }

  if (qword_1EAED8780 != -1)
  {
    sub_1959D541C();
  }

  if (byte_1EAED8788 & 1) != 0 || (byte_1EAED9049)
  {
LABEL_6:
    v9 = 1;
  }

  else
  {
    if (qword_1EAED8798 != -1)
    {
      sub_1959D5430();
    }

    if (qword_1EAED8790 != -1)
    {
      sub_1959D5444();
    }

    v12 = off_1EAED87A8();
    v13 = off_1EAED87A0();
    v9 = (v13 | v12) ^ 1;
    v16 = objc_msgSend_registration(IMRGLog, v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"YES";
      if ((v13 | v12))
      {
        v18 = @"NO";
      }

      else
      {
        v18 = @"YES";
      }

      if (v13)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v20 = 138412802;
      v21 = v18;
      v22 = 2112;
      v23 = v19;
      if (v12)
      {
        v17 = @"NO";
      }

      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_195988000, v16, OS_LOG_TYPE_DEFAULT, "Done checking if device is setup {isSetup: %@, needsToRun: %@, tokenUpgradeDone: %@}", &v20, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

- (void)_registerForSetupNotifications
{
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_listeningForSetupAssistantNotifications)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    self->_listeningForSetupAssistantNotifications = 1;
    os_unfair_lock_unlock(&self->_ivarLock);
    if (qword_1EAED8940 != -1)
    {
      sub_1959D53F4();
    }

    if (qword_1EAED8A50)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1959AF570, qword_1EAED8A50, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = sub_1959AF5E8();

    CFNotificationCenterAddObserver(v4, self, sub_1959AF570, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (BOOL)isUnderFirstDataProtectionLock
{
  os_unfair_lock_lock(&self->_ivarLock);
  underFirstLock = self->_underFirstLock;
  os_unfair_lock_unlock(&self->_ivarLock);
  return underFirstLock;
}

- (BOOL)isUnderDataProtectionLock
{
  os_unfair_lock_lock(&self->_ivarLock);
  isUnderDataProtectionLockForState = objc_msgSend__isUnderDataProtectionLockForState_(self, v3, self->_dataProtectionState);
  os_unfair_lock_unlock(&self->_ivarLock);
  return isUnderDataProtectionLockForState;
}

- (BOOL)usesPowerNotifications
{
  os_unfair_lock_lock(&self->_ivarLock);
  usesPowerNotifications = self->_usesPowerNotifications;
  os_unfair_lock_unlock(&self->_ivarLock);
  return usesPowerNotifications;
}

- (void)_systemDidWake
{
  os_unfair_lock_lock(&self->_ivarLock);
  self->_willSleep = 0;
  os_unfair_lock_unlock(&self->_ivarLock);

  objc_msgSend__deliverNotificationSelector_(self, v3, sel_systemDidWake);
}

- (BOOL)watchesDataProtectionLockState
{
  os_unfair_lock_lock(&self->_ivarLock);
  watchesDataProtectionLockState = self->_watchesDataProtectionLockState;
  os_unfair_lock_unlock(&self->_ivarLock);
  return watchesDataProtectionLockState;
}

- (BOOL)watchesScreenLightState
{
  os_unfair_lock_lock(&self->_ivarLock);
  watchesScreenLightState = self->_watchesScreenLightState;
  os_unfair_lock_unlock(&self->_ivarLock);
  return watchesScreenLightState;
}

- (BOOL)watchesSystemLockState
{
  os_unfair_lock_lock(&self->_ivarLock);
  watchesSystemLockState = self->_watchesSystemLockState;
  os_unfair_lock_unlock(&self->_ivarLock);
  return watchesSystemLockState;
}

- (BOOL)receivesMemoryWarnings
{
  os_unfair_lock_lock(&self->_ivarLock);
  receivesMemoryWarnings = self->_receivesMemoryWarnings;
  os_unfair_lock_unlock(&self->_ivarLock);
  return receivesMemoryWarnings;
}

- (BOOL)usesSystemIdleState
{
  os_unfair_lock_lock(&self->_ivarLock);
  usesSystemIdleState = self->_usesSystemIdleState;
  os_unfair_lock_unlock(&self->_ivarLock);
  return usesSystemIdleState;
}

- (NSDate)dateScreenLightLastChanged
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = self->_dateScreenLightLastChanged;
  os_unfair_lock_unlock(&self->_ivarLock);

  return v3;
}

- (NSDate)dateSystemLockLastChanged
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = self->_dateSystemLockLastChanged;
  os_unfair_lock_unlock(&self->_ivarLock);

  return v3;
}

- (BOOL)systemIsSleeping
{
  os_unfair_lock_lock(&self->_ivarLock);
  willSleep = self->_willSleep;
  os_unfair_lock_unlock(&self->_ivarLock);
  return willSleep;
}

- (BOOL)isScreenSaverActive
{
  os_unfair_lock_lock(&self->_ivarLock);
  screensaverActive = self->_screensaverActive;
  os_unfair_lock_unlock(&self->_ivarLock);
  return screensaverActive;
}

- (BOOL)isBackingUp
{
  os_unfair_lock_lock(&self->_ivarLock);
  backingUp = self->_backingUp;
  os_unfair_lock_unlock(&self->_ivarLock);
  return backingUp;
}

- (BOOL)isFastUserSwitched
{
  os_unfair_lock_lock(&self->_ivarLock);
  switchedOut = self->_switchedOut;
  os_unfair_lock_unlock(&self->_ivarLock);
  return switchedOut;
}

- (BOOL)isScreenLit
{
  os_unfair_lock_lock(&self->_ivarLock);
  screenLit = self->_screenLit;
  os_unfair_lock_unlock(&self->_ivarLock);
  return screenLit;
}

- (BOOL)isSystemLocked
{
  os_unfair_lock_lock(&self->_ivarLock);
  systemLocked = self->_systemLocked;
  os_unfair_lock_unlock(&self->_ivarLock);
  return systemLocked;
}

- (BOOL)isInBackground
{
  os_unfair_lock_lock(&self->_ivarLock);
  inBackground = self->_inBackground;
  os_unfair_lock_unlock(&self->_ivarLock);
  return inBackground;
}

- (void)dealloc
{
  objc_msgSend__unregisterForRestoreNotifications(self, a2, v2);
  objc_msgSend__unregisterForLoginWindowNotifications(self, v4, v5);
  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, 0, 0);

  sub_1959ADD08();
  objc_msgSend_invalidate(self->_timer, v10, v11);
  v12.receiver = self;
  v12.super_class = IMSystemMonitor;
  [(IMSystemMonitor *)&v12 dealloc];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  os_unfair_lock_lock(&self->_ivarLock);
  if (activeCopy)
  {
    self->_active = 1;
  }

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)_deliverNotificationSelector:(SEL)selector
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isActive(self, a2, selector))
  {
    os_unfair_lock_lock(&self->_ivarLock);
    v7 = objc_msgSend_allObjects(self->_earlyListeners, v5, v6);
    os_unfair_lock_unlock(&self->_ivarLock);
    v8 = v7;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v32, 16);
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_performSelector_withObject_(v14, v15, selector, 0);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v28, v32, 16);
      }

      while (v11);
    }

    os_unfair_lock_lock(&self->_ivarLock);
    v18 = objc_msgSend_allObjects(self->_listeners, v16, v17);
    os_unfair_lock_unlock(&self->_ivarLock);
    v19 = v18;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v32, 16);
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        v24 = 0;
        do
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v28 + 1) + 8 * v24);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_performSelector_withObject_(v25, v26, selector, 0);
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v26, &v28, v32, 16);
      }

      while (v22);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_systemWillSleep
{
  os_unfair_lock_lock(&self->_ivarLock);
  self->_willSleep = 1;
  os_unfair_lock_unlock(&self->_ivarLock);

  objc_msgSend__deliverNotificationSelector_(self, v3, sel_systemWillSleep);
}

- (void)_postScreenLocked
{
  objc_msgSend_cancelPendingExecutions(self->__postScreenLockedTask, a2, v2);
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_screenLocked)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    self->_screenLocked = 1;
    os_unfair_lock_unlock(&self->_ivarLock);

    objc_msgSend__deliverNotificationSelector_(self, v4, sel_screenLocked);
  }
}

- (void)_screenLocked:(id)locked
{
  objc_msgSend_cancelPendingExecutions(self->__postScreenLockedTask, a2, locked);
  os_unfair_lock_lock(&self->_ivarLock);
  screenLocked = self->_screenLocked;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (!screenLocked)
  {
    postScreenLockedTask = self->__postScreenLockedTask;

    objc_msgSend_enqueueExecutionWithTarget_afterDelay_(postScreenLockedTask, v5, self, 6.0);
  }
}

- (void)_screenUnlocked:(id)unlocked
{
  objc_msgSend_cancelPendingExecutions(self->__postScreenLockedTask, a2, unlocked);
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_screenLocked)
  {
    self->_screenLocked = 0;
    os_unfair_lock_unlock(&self->_ivarLock);

    objc_msgSend__deliverNotificationSelector_(self, v4, sel_screenUnlocked);
  }

  else
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }
}

- (BOOL)isScreenLocked
{
  if (qword_1EAED9038 != -1)
  {
    sub_1959D539C();
  }

  v3 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, v2);
  isSystemLocked = objc_msgSend_isSystemLocked(v3, v4, v5);

  return isSystemLocked;
}

- (void)_applicationWillResignActive:(id)active
{
  os_unfair_lock_lock(&self->_ivarLock);
  resignActiveCount = self->_resignActiveCount;
  self->_resignActiveCount = resignActiveCount + 1;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (!resignActiveCount)
  {

    objc_msgSend__deliverNotificationSelector_(self, v5, sel_systemApplicationWillResignActive);
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  os_unfair_lock_lock(&self->_ivarLock);
  resignActiveCount = self->_resignActiveCount;
  v5 = resignActiveCount - 1;
  if (resignActiveCount < 1)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    self->_resignActiveCount = v5;
    os_unfair_lock_unlock(&self->_ivarLock);
    if (!v5)
    {

      objc_msgSend__deliverNotificationSelector_(self, v6, sel_systemApplicationDidBecomeActive);
    }
  }
}

- (void)_postScreenSaverStarted
{
  objc_msgSend_cancelPendingExecutions(self->__postScreenSaverStartedTask, a2, v2);
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_screensaverActive)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    self->_screensaverActive = 1;
    os_unfair_lock_unlock(&self->_ivarLock);

    objc_msgSend__deliverNotificationSelector_(self, v4, sel_screenSaverDidStart);
  }
}

- (void)_screenSaverStopped:(id)stopped
{
  objc_msgSend_cancelPendingExecutions(self->__postScreenSaverStartedTask, a2, stopped);
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_screensaverActive)
  {
    self->_screensaverActive = 0;
    os_unfair_lock_unlock(&self->_ivarLock);

    objc_msgSend__deliverNotificationSelector_(self, v4, sel_screenSaverDidStop);
  }

  else
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }
}

- (void)_screenSaverStarted:(id)started
{
  objc_msgSend_cancelPendingExecutions(self->__postScreenSaverStartedTask, a2, started);
  os_unfair_lock_lock(&self->_ivarLock);
  screensaverActive = self->_screensaverActive;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (!screensaverActive)
  {
    postScreenSaverStartedTask = self->__postScreenSaverStartedTask;

    objc_msgSend_enqueueExecutionWithTarget_afterDelay_(postScreenSaverStartedTask, v5, self, 5.0);
  }
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  os_unfair_lock_lock(&self->_ivarLock);
  self->_inBackground = 0;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (objc_msgSend_usesPowerNotifications(self, v4, v5))
  {
    sub_1959AE54C();
  }

  objc_msgSend__deliverNotificationSelector_(self, v6, sel_systemApplicationWillEnterForeground);
}

- (void)_applicationDidEnterBackground:(id)background
{
  os_unfair_lock_lock(&self->_ivarLock);
  self->_inBackground = 1;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (objc_msgSend_usesPowerNotifications(self, v4, v5))
  {
    sub_1959ADD08();
  }

  objc_msgSend__deliverNotificationSelector_(self, v6, sel_systemApplicationDidEnterBackground);
}

- (void)_applicationWillAddDeactivationReason:(id)reason
{
  reasonCopy = reason;
  v6 = objc_msgSend_userInfo(reasonCopy, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, qword_1ED5176B8);

  if (objc_msgSend_intValue(v8, v9, v10) == 1)
  {
    objc_msgSend__notificationCenterWillAppear_(self, v11, reasonCopy);
  }
}

- (void)_applicationDidRemoveDeactivationReason:(id)reason
{
  reasonCopy = reason;
  v6 = objc_msgSend_userInfo(reasonCopy, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, qword_1ED5176B8);

  if (objc_msgSend_intValue(v8, v9, v10) == 1)
  {
    objc_msgSend__notificationCenterDidDisappear_(self, v11, reasonCopy);
  }
}

- (void)setWatchesDataProtectionLockState:(BOOL)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_ivarLock);
  if (stateCopy && !self->_watchesDataProtectionLockState)
  {
    self->_watchesDataProtectionLockState = 1;
    os_unfair_lock_unlock(&self->_ivarLock);
    os_unfair_lock_lock(&unk_1ED517458);
    if (dword_1EAED7D98 == -1)
    {
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_create(0, v5);

      dword_1EAED7D98 = IMDispatchForNotify(*MEMORY[0x1E69B1A70], 0, v6, &unk_1F09D1FE0);
      os_unfair_lock_unlock(&unk_1ED517458);
      v9 = objc_msgSend_sharedInstance(IMSystemMonitor, v7, v8);
      v10 = MKBGetDeviceLockState() != 0;
      objc_msgSend__setSystemLockState_(v9, v11, v10);
    }

    else
    {
      os_unfair_lock_unlock(&unk_1ED517458);
    }

    os_unfair_lock_lock(&self->_ivarLock);
    self->_dataProtectionState = MKBGetDeviceLockState();
    self->_underFirstLock = objc_msgSend__deviceStillUnderFirstLock(self, v12, v13);
  }

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)setWatchesSystemLockState:(BOOL)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_ivarLock);
  if (stateCopy && !self->_watchesSystemLockState)
  {
    self->_watchesSystemLockState = 1;
    os_unfair_lock_unlock(&self->_ivarLock);
    v11 = 0;
    os_unfair_lock_lock(&unk_1ED517458);
    if (dword_1EAED7D50 == -1)
    {
      v6 = im_primary_queue();
      im_notify_register_dispatch("com.apple.springboard.lockstate", &dword_1EAED7D50, &v11, 1, v6, &unk_1F09D2000);

      os_unfair_lock_unlock(&unk_1ED517458);
      v9 = objc_msgSend_sharedInstance(IMSystemMonitor, v7, v8);
      objc_msgSend__setSystemLockState_(v9, v10, v11 != 0);

      return;
    }

    p_ivarLock = &unk_1ED517458;
  }

  else
  {
    p_ivarLock = &self->_ivarLock;
  }

  os_unfair_lock_unlock(p_ivarLock);
}

- (void)setWatchesScreenLightState:(BOOL)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_ivarLock);
  if (stateCopy && !self->_watchesScreenLightState)
  {
    self->_watchesScreenLightState = 1;
    os_unfair_lock_unlock(&self->_ivarLock);
    v11 = 0;
    os_unfair_lock_lock(&unk_1ED517458);
    if (dword_1EAED7D54 == -1)
    {
      v6 = im_primary_queue();
      im_notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &dword_1EAED7D54, &v11, 1, v6, &unk_1F09D2020);

      os_unfair_lock_unlock(&unk_1ED517458);
      v9 = objc_msgSend_sharedInstance(IMSystemMonitor, v7, v8);
      objc_msgSend__setSystemScreenState_(v9, v10, v11 == 0);

      return;
    }

    p_ivarLock = &unk_1ED517458;
  }

  else
  {
    p_ivarLock = &self->_ivarLock;
  }

  os_unfair_lock_unlock(p_ivarLock);
}

- (void)setUsesPowerNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  os_unfair_lock_lock(&self->_ivarLock);
  if (notificationsCopy && !self->_usesPowerNotifications)
  {
    self->_usesPowerNotifications = 1;
    os_unfair_lock_unlock(&self->_ivarLock);

    sub_1959AE54C();
  }

  else
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }
}

- (void)_setSystemScreenState:(BOOL)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_screenLit == stateCopy)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    self->_screenLit = stateCopy;
    v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
    dateScreenLightLastChanged = self->_dateScreenLightLastChanged;
    self->_dateScreenLightLastChanged = v5;

    os_unfair_lock_unlock(&self->_ivarLock);
    if (stateCopy)
    {
      v8 = sel_systemScreenDidPowerUp;
    }

    else
    {
      v8 = sel_systemScreenDidPowerDown;
    }

    objc_msgSend__deliverNotificationSelector_(self, v7, v8);
  }
}

- (void)_setSystemLockState:(BOOL)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_systemLocked == stateCopy)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    self->_systemLocked = stateCopy;
    v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
    dateSystemLockLastChanged = self->_dateSystemLockLastChanged;
    self->_dateSystemLockLastChanged = v5;

    os_unfair_lock_unlock(&self->_ivarLock);
    if (stateCopy)
    {
      v8 = sel_systemDidLock;
    }

    else
    {
      v8 = sel_systemDidUnlock;
    }

    objc_msgSend__deliverNotificationSelector_(self, v7, v8);
  }
}

- (void)_setIdleState:(BOOL)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_ivarLock);
  if (((self->_idleStart == 0) ^ stateCopy))
  {
    goto LABEL_5;
  }

  objc_msgSend__alreadyLocked_clearIdleTimer(self, v5, v6);
  idleStart = self->_idleStart;
  self->_idleStart = 0;

  if (stateCopy)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF00]);
    v13 = objc_msgSend_initWithTimeIntervalSinceNow_(v10, v11, v12, -self->_delayTime);
    v14 = self->_idleStart;
    self->_idleStart = v13;
  }

  if (self->_idleOverride)
  {
LABEL_5:

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    isSystemIdle = objc_msgSend__alreadyLocked_isSystemIdle(self, v8, v9);
    os_unfair_lock_unlock(&self->_ivarLock);
    if (isSystemIdle)
    {
      v17 = sel_systemDidBecomeIdle;
    }

    else
    {
      v17 = sel_systemDidBecomeUnidle;
    }

    objc_msgSend__deliverNotificationSelector_(self, v16, v17);
  }
}

- (void)_overrideAndDisableIdleTimer:(BOOL)timer
{
  timerCopy = timer;
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_idleOverride == timerCopy)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    idleStart = self->_idleStart;
    self->_idleOverride = timerCopy;
    os_unfair_lock_unlock(&self->_ivarLock);
    if (timerCopy || !idleStart)
    {
      if (!timerCopy || !idleStart)
      {
        return;
      }

      v7 = sel_systemDidBecomeUnidle;
    }

    else
    {
      v7 = sel_systemDidBecomeIdle;
    }

    objc_msgSend__deliverNotificationSelector_(self, v6, v7);
  }
}

- (void)_clearIdleTimer
{
  os_unfair_lock_lock(&self->_ivarLock);
  objc_msgSend__alreadyLocked_clearIdleTimer(self, v3, v4);

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)_alreadyLocked_clearIdleTimer
{
  timer = self->_timer;
  if (timer)
  {
    objc_msgSend_invalidate(timer, a2, v2);
    v5 = self->_timer;
    self->_timer = 0;
  }
}

- (BOOL)isSystemIdle
{
  os_unfair_lock_lock(&self->_ivarLock);
  isSystemIdle = objc_msgSend__alreadyLocked_isSystemIdle(self, v3, v4);
  os_unfair_lock_unlock(&self->_ivarLock);
  return isSystemIdle;
}

- (BOOL)_alreadyLocked_isSystemIdle
{
  idleStart = self->_idleStart;
  if (idleStart)
  {
    LOBYTE(idleStart) = !self->_idleOverride;
  }

  return idleStart & 1;
}

- (double)systemIdleTime
{
  os_unfair_lock_lock(&self->_ivarLock);
  objc_msgSend_timeIntervalSinceNow(self->_idleStart, v3, v4);
  v6 = v5;
  os_unfair_lock_unlock(&self->_ivarLock);
  return v6;
}

- (void)_addEarlyListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_ivarLock);
  if ((objc_msgSend_containsObject_(self->_earlyListeners, v4, listenerCopy) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_earlyListeners, v5, listenerCopy);
  }

  if (self->_listeningForSetupAssistantNotifications)
  {
    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
    os_unfair_lock_unlock(&self->_ivarLock);
    if (v6)
    {
      objc_msgSend__registerForSetupNotifications(self, v7, v8);
    }
  }
}

- (void)_removeEarlyListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_ivarLock);
  objc_msgSend_removeObject_(self->_earlyListeners, v5, listenerCopy);

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_ivarLock);
  if ((objc_msgSend_containsObject_(self->_listeners, v4, listenerCopy) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_listeners, v5, listenerCopy);
  }

  if (self->_listeningForSetupAssistantNotifications)
  {
    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
    os_unfair_lock_unlock(&self->_ivarLock);
    if (v6)
    {
      objc_msgSend__registerForSetupNotifications(self, v7, v8);
    }
  }
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_ivarLock);
  objc_msgSend_removeObject_(self->_listeners, v5, listenerCopy);

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)_checkRestoredFromBackup
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1959AF34C;
  v2[3] = &unk_1E7438888;
  v2[4] = self;
  im_dispatch_after_primary_queue(v2, 5.0);
}

- (void)_restoreDidStart
{
  os_unfair_lock_lock(&self->_ivarLock);
  self->_backingUp = 1;
  os_unfair_lock_unlock(&self->_ivarLock);

  objc_msgSend__deliverNotificationSelector_(self, v3, sel_systemDidStartBackup);
}

- (void)_restoreDidStop
{
  os_unfair_lock_lock(&self->_ivarLock);
  self->_backingUp = 0;
  os_unfair_lock_unlock(&self->_ivarLock);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1959AF490;
  v3[3] = &unk_1E7438888;
  v3[4] = self;
  im_dispatch_after_primary_queue(v3, 5.0);
}

- (void)_setupStateChanged
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1959AF510;
  v2[3] = &unk_1E7438888;
  v2[4] = self;
  im_dispatch_after_primary_queue(v2, 5.0);
}

- (void)_unregisterForRestoreNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = sub_1959AF5E8();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"FaceTimeRegistrationRestoredFromBackupNotification", 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, @"com.apple.private.restrict-post.MobileBackup.BackupAgent.RestoreStarted", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(v7, self, @"com.apple.private.restrict-post.MobileBackup.BackupAgent.RestoreEnded", 0);
}

- (void)_receivedMemoryNotification
{
  v3 = sub_1959AF938();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "Received memory warning, dispatching to listeners", v5, 2u);
  }

  objc_msgSend__deliverNotificationSelector_(self, v4, sel_systemDidEnterMemoryPressure);
}

- (void)setReceivesMemoryWarnings:(BOOL)warnings
{
  if (warnings)
  {
    os_unfair_lock_lock(&unk_1ED517458);
    if (!qword_1EAED9050)
    {
      v4 = im_primary_queue();
      v5 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 2uLL, v4);
      v6 = qword_1EAED9050;
      qword_1EAED9050 = v5;

      dispatch_source_set_event_handler(qword_1EAED9050, &unk_1F09D1F60);
      dispatch_resume(qword_1EAED9050);
    }

    os_unfair_lock_unlock(&unk_1ED517458);
    os_unfair_lock_lock(&self->_ivarLock);
    self->_receivesMemoryWarnings = 1;

    os_unfair_lock_unlock(&self->_ivarLock);
  }
}

@end