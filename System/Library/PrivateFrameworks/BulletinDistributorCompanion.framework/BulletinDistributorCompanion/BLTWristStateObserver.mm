@interface BLTWristStateObserver
- (BLTWristStateObserver)init;
- (BOOL)_isWristDetectionDisabled;
- (BOOL)_wristDetectionDisabledPreference;
- (BOOL)_wristDetectionEnabledRestriction;
- (void)_updateWristDetectSetting;
- (void)dealloc;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation BLTWristStateObserver

- (BLTWristStateObserver)init
{
  v7.receiver = self;
  v7.super_class = BLTWristStateObserver;
  v2 = [(BLTWristStateObserver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(BLTWristStateObserver *)v2 _updateWristDetectSetting];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, WristDetectSettingChanged, @"CSLDisableWristDetectionChangedNotification", 0, 0);
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    [v5 addObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CSLDisableWristDetectionChangedNotification", 0);
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = BLTWristStateObserver;
  [(BLTWristStateObserver *)&v5 dealloc];
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__BLTWristStateObserver_profileConnectionDidReceiveRestrictionChangedNotification_userInfo___block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_async(v5, block);
}

- (BOOL)_wristDetectionEnabledRestriction
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D260D8]] == 1;

  return v3;
}

- (BOOL)_wristDetectionDisabledPreference
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.Carousel"];
  v3 = [v2 objectForKey:@"DisableWristDetection"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)_isWristDetectionDisabled
{
  if ([(BLTWristStateObserver *)self _wristDetectionEnabledRestriction])
  {
    return 0;
  }

  return [(BLTWristStateObserver *)self _wristDetectionDisabledPreference];
}

- (void)_updateWristDetectSetting
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(BLTWristStateObserver *)self _isWristDetectionDisabled];
  v4 = blt_settings_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = "ENABLED";
    if (self->_isWristDetectDisabled)
    {
      v6 = "DISABLED";
    }

    else
    {
      v6 = "ENABLED";
    }

    if (v3)
    {
      v5 = "DISABLED";
    }

    v8 = 136315394;
    v9 = v6;
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_INFO, "Updating wrist detect from %s to %s", &v8, 0x16u);
  }

  self->_isWristDetectDisabled = v3;
  v7 = *MEMORY[0x277D85DE8];
}

@end