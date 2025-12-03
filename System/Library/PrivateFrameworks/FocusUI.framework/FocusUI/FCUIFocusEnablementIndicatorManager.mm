@interface FCUIFocusEnablementIndicatorManager
+ (id)managerWithBannerPoster:(id)poster systemApertureElementRegistrar:(id)registrar;
- (FCUIFocusEnablementIndicatorManager)init;
- (id)postPersistentActivityPickerWithSystemApertureElementProvider:(id)provider;
- (id)postPersistentActivityWithModeIdentifier:(id)identifier systemApertureElementProvider:(id)provider;
- (void)activeActivityDidChangeForManager:(id)manager;
@end

@implementation FCUIFocusEnablementIndicatorManager

+ (id)managerWithBannerPoster:(id)poster systemApertureElementRegistrar:(id)registrar
{
  posterCopy = poster;
  registrarCopy = registrar;
  if (!SBSIsSystemApertureAvailable() || ([FCUIFocusEnablementIndicatorSystemApertureManager managerWithSystemApertureElementRegistrar:registrarCopy], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [FCUIFocusEnablementIndicatorBannerManager managerWithBannerPoster:posterCopy];
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
    mEMORY[0x277D0A9E8] = [MEMORY[0x277D0A9E8] sharedActivityManager];
    activityManager = v3->_activityManager;
    v3->_activityManager = mEMORY[0x277D0A9E8];

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

- (void)activeActivityDidChangeForManager:(id)manager
{
  managerCopy = manager;
  activeActivity = [managerCopy activeActivity];
  v6 = [managerCopy shouldActivityShowStatusPill:activeActivity];

  os_unfair_lock_lock(&self->_lastActiveActivityLock);
  v7 = self->_lastActiveActivity;
  os_unfair_lock_unlock(&self->_lastActiveActivityLock);
  if (([(FCUIFocusEnablementIndicatorManager *)self shouldKeepPresentingAfterActiveActivityDidChange:activeActivity lastActivity:v7]& 1) == 0)
  {
    if (activeActivity)
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
    if (activeActivity ? activeActivity : v7)
    {
      [FCUIFocusEnablementIndicatorManager postActivity:"postActivity:enabled:" enabled:?];
    }
  }

  os_unfair_lock_lock(&self->_lastActiveActivityLock);
  lastActiveActivity = self->_lastActiveActivity;
  self->_lastActiveActivity = activeActivity;
  v11 = activeActivity;

  os_unfair_lock_unlock(&self->_lastActiveActivityLock);
}

- (id)postPersistentActivityWithModeIdentifier:(id)identifier systemApertureElementProvider:(id)provider
{
  providerCopy = provider;
  defaultActivity = [(FCActivityManager *)self->_activityManager activityWithIdentifier:identifier];
  activeActivity = [(FCActivityManager *)self->_activityManager activeActivity];
  v9 = BSEqualObjects();
  if (!(defaultActivity | activeActivity))
  {
    defaultActivity = [(FCActivityManager *)self->_activityManager defaultActivity];
  }

  v10 = [(FCUIFocusEnablementIndicatorManager *)self postPersistentActivity:defaultActivity enabled:v9 systemApertureElementProvider:providerCopy pickerPresentation:0];

  return v10;
}

- (id)postPersistentActivityPickerWithSystemApertureElementProvider:(id)provider
{
  providerCopy = provider;
  activeActivity = [(FCActivityManager *)self->_activityManager activeActivity];
  defaultActivity = activeActivity;
  if (!activeActivity)
  {
    defaultActivity = [(FCActivityManager *)self->_activityManager defaultActivity];
  }

  v7 = [(FCUIFocusEnablementIndicatorManager *)self postPersistentActivity:defaultActivity enabled:activeActivity != 0 systemApertureElementProvider:providerCopy pickerPresentation:1];

  return v7;
}

@end