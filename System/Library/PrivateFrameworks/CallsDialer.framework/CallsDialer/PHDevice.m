@interface PHDevice
+ (BOOL)isGeminiCapable;
+ (id)currentDevice;
- (BOOL)isCellularRadioEnabled;
- (BOOL)isRingerSwitchEnabled;
- (PHDevice)init;
- (RadiosPreferences)radiosPreferences;
- (unint64_t)stateForNotifyToken:(int)a3;
- (void)airplaneModeChanged;
- (void)dealloc;
- (void)registerForRingerStateNotifications;
- (void)setCellularRadioEnabled:(BOOL)a3;
- (void)setRingerSwitchEnabled:(BOOL)a3;
- (void)unregisterForRingerStateNotifications;
@end

@implementation PHDevice

+ (BOOL)isGeminiCapable
{
  if (isGeminiCapable_onceToken != -1)
  {
    +[PHDevice isGeminiCapable];
  }

  return isGeminiCapable_geminiSupported;
}

void __27__PHDevice_isGeminiCapable__block_invoke()
{
  v3 = 0;
  v0 = MGCopyAnswerWithError();
  if (v0)
  {
    v1 = v0;
    isGeminiCapable_geminiSupported = CFBooleanGetValue(v0) != 0;
    CFRelease(v1);
  }

  else
  {
    v2 = PHDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __27__PHDevice_isGeminiCapable__block_invoke_cold_2(v2);
    }
  }
}

+ (id)currentDevice
{
  if (currentDevice_onceToken != -1)
  {
    +[PHDevice currentDevice];
  }

  v3 = currentDevice_device;

  return v3;
}

uint64_t __25__PHDevice_currentDevice__block_invoke()
{
  currentDevice_device = objc_alloc_init(PHDevice);

  return MEMORY[0x2821F96F8]();
}

- (PHDevice)init
{
  v9.receiver = self;
  v9.super_class = PHDevice;
  v2 = [(PHDevice *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PHDevice.serialQueue", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ringerStateNotifyToken = -1;
    v2->_ringerSwitchEnabled = 0;
    [(PHDevice *)v2 registerForRingerStateNotifications];
    v5 = [(PHDevice *)v2 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __16__PHDevice_init__block_invoke;
    block[3] = &unk_278D749E0;
    v8 = v2;
    dispatch_barrier_async(v5, block);
  }

  return v2;
}

uint64_t __16__PHDevice_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CEC5D0]);
  v3 = [*(a1 + 32) dispatchQueue];
  v4 = [v2 initWithQueue:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  [*(*(a1 + 32) + 24) setDelegate:?];
  *(*(a1 + 32) + 8) = [*(a1 + 32) fetchCellularRadioEnabled];
  result = [*(a1 + 32) fetchRingerSwitchEnabled];
  *(*(a1 + 32) + 9) = result;
  return result;
}

- (void)dealloc
{
  [(PHDevice *)self unregisterForRingerStateNotifications];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHDevice;
  [(PHDevice *)&v4 dealloc];
}

- (BOOL)isCellularRadioEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PHDevice *)self dispatchQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__PHDevice_isCellularRadioEnabled__block_invoke;
  v5[3] = &unk_278D74A70;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setCellularRadioEnabled:(BOOL)a3
{
  v5 = [(PHDevice *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PHDevice_setCellularRadioEnabled___block_invoke;
  v6[3] = &unk_278D74A98;
  v6[4] = self;
  v7 = a3;
  dispatch_barrier_async(v5, v6);
}

void __36__PHDevice_setCellularRadioEnabled___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 8) != v4)
  {
    block[5] = v1;
    block[6] = v2;
    *(v3 + 8) = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PHDevice_setCellularRadioEnabled___block_invoke_2;
    block[3] = &unk_278D749E0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __36__PHDevice_setCellularRadioEnabled___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PHDeviceCellularRadioEnabledDidChangeNotification" object:*(a1 + 32)];
}

- (BOOL)isRingerSwitchEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PHDevice *)self dispatchQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__PHDevice_isRingerSwitchEnabled__block_invoke;
  v5[3] = &unk_278D74A70;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setRingerSwitchEnabled:(BOOL)a3
{
  v5 = [(PHDevice *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__PHDevice_setRingerSwitchEnabled___block_invoke;
  v6[3] = &unk_278D74A98;
  v6[4] = self;
  v7 = a3;
  dispatch_barrier_async(v5, v6);
}

void __35__PHDevice_setRingerSwitchEnabled___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 9) != v4)
  {
    block[5] = v1;
    block[6] = v2;
    *(v3 + 9) = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PHDevice_setRingerSwitchEnabled___block_invoke_2;
    block[3] = &unk_278D749E0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __35__PHDevice_setRingerSwitchEnabled___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PHDeviceRingerSwitchDidChangeNotification" object:*(a1 + 32)];
}

- (RadiosPreferences)radiosPreferences
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(PHDevice *)self dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__PHDevice_radiosPreferences__block_invoke;
  v6[3] = &unk_278D74A70;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)registerForRingerStateNotifications
{
  if ([(PHDevice *)self ringerStateNotifyToken]== -1)
  {
    objc_initWeak(&location, self);
    v3 = [@"com.apple.springboard.ringerstate" UTF8String];
    v4 = [(PHDevice *)self dispatchQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__PHDevice_registerForRingerStateNotifications__block_invoke;
    v5[3] = &unk_278D74AC0;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(v3, &self->_ringerStateNotifyToken, v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __47__PHDevice_registerForRingerStateNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRingerSwitchEnabled:{objc_msgSend(WeakRetained, "fetchRingerSwitchEnabled")}];
}

- (void)unregisterForRingerStateNotifications
{
  if ([(PHDevice *)self ringerStateNotifyToken]!= -1)
  {
    notify_cancel([(PHDevice *)self ringerStateNotifyToken]);

    [(PHDevice *)self setRingerStateNotifyToken:0xFFFFFFFFLL];
  }
}

- (unint64_t)stateForNotifyToken:(int)a3
{
  state64 = 0;
  if (a3 == -1)
  {
    return 0;
  }

  notify_get_state(a3, &state64);
  return state64;
}

- (void)airplaneModeChanged
{
  v3 = [(PHDevice *)self fetchCellularRadioEnabled];

  [(PHDevice *)self setCellularRadioEnabled:v3];
}

void __27__PHDevice_isGeminiCapable__block_invoke_cold_1(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_2429BC000, a2, OS_LOG_TYPE_ERROR, "Could not retreive Dual SIM activation policy, mobileGestaltErrorCode: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end