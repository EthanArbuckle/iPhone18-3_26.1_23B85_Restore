@interface CSSiriVibrationManager
+ (id)sharedManager;
- (BOOL)_ringVibrationValue;
- (BOOL)_silentVibrationValue;
- (CSSiriVibrationManager)init;
- (void)_fetchRingVibrationValue;
- (void)_fetchSilentVibrationValue;
- (void)dealloc;
- (void)handleRingVibrationValueChange;
- (void)handleSilentVibrationValueChange;
@end

@implementation CSSiriVibrationManager

- (void)handleSilentVibrationValueChange
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[CSSiriVibrationManager handleSilentVibrationValueChange]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CSSiriVibrationManager_handleSilentVibrationValueChange__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleRingVibrationValueChange
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[CSSiriVibrationManager handleRingVibrationValueChange]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CSSiriVibrationManager_handleRingVibrationValueChange__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_fetchSilentVibrationValue
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF0A0];
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[CSSiriVibrationManager _fetchSilentVibrationValue]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  VibrationState = _fetchVibrationState(@"silent-vibrate");
  self->_silentVibrationState = VibrationState;
  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v7 = @"Off";
    if (VibrationState == 2)
    {
      v7 = @"On";
    }

    v9 = 136315394;
    v10 = "[CSSiriVibrationManager _fetchSilentVibrationValue]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRingVibrationValue
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF0A0];
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[CSSiriVibrationManager _fetchRingVibrationValue]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  VibrationState = _fetchVibrationState(@"ring-vibrate");
  self->_ringVibrationState = VibrationState;
  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v7 = @"Off";
    if (VibrationState == 2)
    {
      v7 = @"On";
    }

    v9 = 136315394;
    v10 = "[CSSiriVibrationManager _fetchRingVibrationValue]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_silentVibrationValue
{
  silentVibrationState = self->_silentVibrationState;
  if (!silentVibrationState)
  {
    [(CSSiriVibrationManager *)self _fetchSilentVibrationValue];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, kVibrationPreferenceObserver, _silentVibrationPreferenceDidChangeCallback, @"com.apple.springboard.silent-vibrate.changed", 0, CFNotificationSuspensionBehaviorCoalesce);
    silentVibrationState = self->_silentVibrationState;
  }

  return silentVibrationState == 2;
}

- (BOOL)_ringVibrationValue
{
  ringVibrationState = self->_ringVibrationState;
  if (!ringVibrationState)
  {
    [(CSSiriVibrationManager *)self _fetchRingVibrationValue];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, kVibrationPreferenceObserver, _ringVibrationPreferenceDidChangeCallback, @"com.apple.springboard.ring-vibrate.changed", 0, CFNotificationSuspensionBehaviorCoalesce);
    ringVibrationState = self->_ringVibrationState;
  }

  return ringVibrationState == 2;
}

- (void)dealloc
{
  if (self->_ringVibrationState || self->_silentVibrationState)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, kVibrationPreferenceObserver);
  }

  v4.receiver = self;
  v4.super_class = CSSiriVibrationManager;
  [(CSSiriVibrationManager *)&v4 dealloc];
}

- (CSSiriVibrationManager)init
{
  v10.receiver = self;
  v10.super_class = CSSiriVibrationManager;
  v2 = [(CSSiriVibrationManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.assistant.vibration-manager", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__CSSiriVibrationManager_init__block_invoke;
    block[3] = &unk_2784C6FD0;
    v9 = v2;
    dispatch_async(v6, block);
  }

  return v2;
}

uint64_t __30__CSSiriVibrationManager_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _silentVibrationValue];
  v2 = *(a1 + 32);

  return [v2 _ringVibrationValue];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_17098 != -1)
  {
    dispatch_once(&sharedManager_onceToken_17098, &__block_literal_global_17099);
  }

  v3 = sharedManager_sharedManager_17100;

  return v3;
}

void __39__CSSiriVibrationManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(CSSiriVibrationManager);
  v1 = sharedManager_sharedManager_17100;
  sharedManager_sharedManager_17100 = v0;
}

@end