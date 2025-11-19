@interface FCUIFocusEnablementIndicatorManager
+ (id)managerWithBannerPoster:(id)a3 systemApertureElementRegistrar:(id)a4;
- (FCUIFocusEnablementIndicatorManager)init;
- (id)postPersistentActivityPickerWithSystemApertureElementProvider:(id)a3;
- (id)postPersistentActivityWithModeIdentifier:(id)a3 systemApertureElementProvider:(id)a4;
- (void)activeActivityDidChangeForManager:(id)a3;
@end

@implementation FCUIFocusEnablementIndicatorManager

+ (id)managerWithBannerPoster:(id)a3 systemApertureElementRegistrar:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!SBSIsSystemApertureAvailable() || ([FCUIFocusEnablementIndicatorSystemApertureManager managerWithSystemApertureElementRegistrar:v6], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [FCUIFocusEnablementIndicatorBannerManager managerWithBannerPoster:v5];
  }

  return v7;
}

- (FCUIFocusEnablementIndicatorManager)init
{
  v11.receiver = self;
  v11.super_class = FCUIFocusEnablementIndicatorManager;
  v2 = [(FCUIFocusEnablementIndicatorManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastActiveActivityLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v4 = [MEMORY[0x277D0A9E8] sharedActivityManager];
    activityManager = v3->_activityManager;
    v3->_activityManager = v4;

    [(FCActivityManager *)v3->_activityManager addObserver:v3];
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__FCUIFocusEnablementIndicatorManager_init__block_invoke;
    v8[3] = &unk_27901A3A8;
    objc_copyWeak(&v9, &location);
    dispatch_async(SerialWithQoS, v8);
    objc_destroyWeak(&v9);

    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__FCUIFocusEnablementIndicatorManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[1] activeActivity];
    os_unfair_lock_lock(v4 + 6);
    v3 = *&v4[4]._os_unfair_lock_opaque;
    *&v4[4]._os_unfair_lock_opaque = v2;

    os_unfair_lock_unlock(v4 + 6);
    WeakRetained = v4;
  }
}

- (void)activeActivityDidChangeForManager:(id)a3
{
  v4 = a3;
  v5 = [v4 activeActivity];
  v6 = [v4 shouldActivityShowStatusPill:v5];

  os_unfair_lock_lock(&self->_lastActiveActivityLock);
  v7 = self->_lastActiveActivity;
  os_unfair_lock_unlock(&self->_lastActiveActivityLock);
  if (([(FCUIFocusEnablementIndicatorManager *)self shouldKeepPresentingAfterActiveActivityDidChange:v5 lastActivity:v7]& 1) == 0)
  {
    if (v5)
    {
      v8 = @"Revoking for mode change";
    }

    else
    {
      v8 = @"Revoking for mode end";
    }

    [(FCUIFocusEnablementIndicatorManager *)self revokeWithReason:v8];
  }

  if (v6)
  {
    if (v5 ? v5 : v7)
    {
      [FCUIFocusEnablementIndicatorManager postActivity:"postActivity:enabled:" enabled:?];
    }
  }

  os_unfair_lock_lock(&self->_lastActiveActivityLock);
  lastActiveActivity = self->_lastActiveActivity;
  self->_lastActiveActivity = v5;
  v11 = v5;

  os_unfair_lock_unlock(&self->_lastActiveActivityLock);
}

- (id)postPersistentActivityWithModeIdentifier:(id)a3 systemApertureElementProvider:(id)a4
{
  v6 = a4;
  v7 = [(FCActivityManager *)self->_activityManager activityWithIdentifier:a3];
  v8 = [(FCActivityManager *)self->_activityManager activeActivity];
  v9 = BSEqualObjects();
  if (!(v7 | v8))
  {
    v7 = [(FCActivityManager *)self->_activityManager defaultActivity];
  }

  v10 = [(FCUIFocusEnablementIndicatorManager *)self postPersistentActivity:v7 enabled:v9 systemApertureElementProvider:v6 pickerPresentation:0];

  return v10;
}

- (id)postPersistentActivityPickerWithSystemApertureElementProvider:(id)a3
{
  v4 = a3;
  v5 = [(FCActivityManager *)self->_activityManager activeActivity];
  v6 = v5;
  if (!v5)
  {
    v6 = [(FCActivityManager *)self->_activityManager defaultActivity];
  }

  v7 = [(FCUIFocusEnablementIndicatorManager *)self postPersistentActivity:v6 enabled:v5 != 0 systemApertureElementProvider:v4 pickerPresentation:1];

  return v7;
}

@end