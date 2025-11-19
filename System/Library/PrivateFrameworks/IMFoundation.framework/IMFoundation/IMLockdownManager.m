@interface IMLockdownManager
+ (id)sharedInstance;
- (IMLockdownManager)init;
- (int64_t)lockdownState;
- (void)_calculateInstallType;
- (void)_checkLockdown;
- (void)_checkMobileActivation;
- (void)_resetActivationState;
- (void)_setupActivationState;
- (void)dealloc;
@end

@implementation IMLockdownManager

- (IMLockdownManager)init
{
  v5.receiver = self;
  v5.super_class = IMLockdownManager;
  v2 = [(IMLockdownManager *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1959BED78, *MEMORY[0x1E69E5788], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED517638 != -1)
  {
    sub_19598ABF0();
  }

  v3 = qword_1ED5175F0;

  return v3;
}

- (void)_calculateInstallType
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19598AAD0;
  block[3] = &unk_1E7438888;
  block[4] = self;
  if (qword_1ED5175C0 != -1)
  {
    dispatch_once(&qword_1ED5175C0, block);
  }
}

- (int64_t)lockdownState
{
  result = self->_state;
  if (!result)
  {
    objc_msgSend__setupActivationState(self, a2, v2);
    return self->_state;
  }

  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = IMLockdownManager;
  [(IMLockdownManager *)&v4 dealloc];
}

- (void)_resetActivationState
{
  self->_state = 0;
  self->_hasShownMismatchedSIM = 0;
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend___mainThreadPostNotificationName_object_(v4, v3, @"__kIMLockdownDeviceActivatedChangedNotification", 0);
}

- (void)_checkMobileActivation
{
  if (qword_1EAED8948 != -1)
  {
    sub_1959D5E78();
  }

  if (off_1EAED8950)
  {
    v13 = 0;
    v4 = off_1EAED8950(&v13);
    v5 = v13;
    v8 = objc_msgSend_registration(IMRGLog, v6, v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v9)
      {
        sub_1959D5E8C(v5, v8);
      }
    }

    else if (v9)
    {
      sub_1959D5F04(v4, v8);
    }

    if (v4)
    {
      v11 = CFGetTypeID(v4);
      if (v11 == CFStringGetTypeID())
      {
        if (CFEqual(v4, @"Unactivated"))
        {
          v12 = 1;
        }

        else if (CFEqual(v4, @"Expired"))
        {
          v12 = 2;
        }

        else if (CFEqual(v4, @"Activated") || CFEqual(v4, @"WildcardActivated") || CFEqual(v4, @"Unlocked") || CFEqual(v4, @"SoftActivation"))
        {
          v12 = 3;
        }

        else if (CFEqual(v4, @"MismatchedIMEI"))
        {
          v12 = 4;
        }

        else if (CFEqual(v4, @"MismatchedICCID"))
        {
          v12 = 5;
        }

        else if (CFEqual(v4, @"MissingSIM"))
        {
          v12 = 6;
        }

        else
        {
          v12 = 7;
        }

        self->_state = v12;
      }

      CFRelease(v4);
    }
  }

  else
  {
    v10 = objc_msgSend_registration(IMRGLog, a2, v2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1959D5F7C(v10);
    }

    self->_state = 7;
    self->_settingUpActivationState = 0;
  }
}

- (void)_checkLockdown
{
  v3 = lockdown_copy_activationState();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      if (CFEqual(v4, @"Unactivated"))
      {
        v6 = 1;
      }

      else if (CFEqual(v4, @"Expired"))
      {
        v6 = 2;
      }

      else if (CFEqual(v4, @"Activated") || CFEqual(v4, @"WildcardActivated") || CFEqual(v4, @"Unlocked") || CFEqual(v4, @"SoftActivation"))
      {
        v6 = 3;
      }

      else if (CFEqual(v4, @"MismatchedIMEI"))
      {
        v6 = 4;
      }

      else if (CFEqual(v4, @"MismatchedICCID"))
      {
        v6 = 5;
      }

      else if (CFEqual(v4, @"MissingSIM"))
      {
        v6 = 6;
      }

      else
      {
        v6 = 7;
      }

      self->_state = v6;
    }

    CFRelease(v4);
  }
}

- (void)_setupActivationState
{
  if (!self->_settingUpActivationState)
  {
    self->_settingUpActivationState = 1;
    objc_msgSend__checkMobileActivation(self, a2, v2);
    self->_settingUpActivationState = 0;
  }
}

@end