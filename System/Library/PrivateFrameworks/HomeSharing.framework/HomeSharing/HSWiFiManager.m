@interface HSWiFiManager
+ (id)sharedWiFiManager;
- (BOOL)_getWiFiAssociated;
- (BOOL)_getWiFiEnabledFromPrefs;
- (HSWiFiManager)init;
- (id)_processIdentifier;
- (void)_wifiCallBack:(unsigned int)a3;
- (void)dealloc;
@end

@implementation HSWiFiManager

- (void)_wifiCallBack:(unsigned int)a3
{
  v3 = a3;
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = [(HSWiFiManager *)self _getWiFiEnabledFromPrefs];
  v6 = [(HSWiFiManager *)self _getWiFiAssociated];
  if (v3)
  {
    v7 = v6;
    if (v5 != [(HSWiFiManager *)self isWiFiEnabled]|| v7 != [(HSWiFiManager *)self isWiFiAssociated])
    {
      [(HSWiFiManager *)self setWiFiEnabled:v5];
      [(HSWiFiManager *)self setWiFiAssociated:v7];
      v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HSWiFiManager isWiFiEnabled](self, "isWiFiEnabled")}];
      v12[0] = v8;
      v13[0] = @"HSWiFiManagerWiFiEnabledUserInfoKey";
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HSWiFiManager isWiFiAssociated](self, "isWiFiAssociated")}];
      v12[1] = v9;
      v13[1] = @"HSWiFiManagerWiFiAssociatedUserInfoKey";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      [v11 postNotificationName:@"HSWiFiManagerWiFiDidChangeNotification" object:self userInfo:v10];
    }
  }
}

- (BOOL)_getWiFiAssociated
{
  v2 = [MEMORY[0x277D7FA90] sharedMonitor];
  v3 = [v2 isWiFiAssociated];

  return v3;
}

- (BOOL)_getWiFiEnabledFromPrefs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__HSWiFiManager__getWiFiEnabledFromPrefs__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__HSWiFiManager__getWiFiEnabledFromPrefs__block_invoke(uint64_t a1)
{
  Value = SCPreferencesGetValue(*(*(a1 + 32) + 8), @"AllowEnable");
  if (Value)
  {
    v3 = Value;
    v4 = CFGetTypeID(Value);
    if (v4 == CFNumberGetTypeID() || (v5 = CFGetTypeID(v3), v5 == CFBooleanGetTypeID()))
    {
      *(*(*(a1 + 40) + 8) + 24) = CFBooleanGetValue(v3) != 0;
    }
  }

  v6 = *(*(a1 + 32) + 8);

  SCPreferencesSynchronize(v6);
}

- (id)_processIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = getprogname();
    v3 = [v4 stringWithFormat:@"%s (%d)", v5, getpid()];
  }

  return v3;
}

- (void)dealloc
{
  wifiPreferences = self->_wifiPreferences;
  Main = CFRunLoopGetMain();
  SCPreferencesUnscheduleFromRunLoop(wifiPreferences, Main, *MEMORY[0x277CBF048]);
  CFRelease(self->_wifiPreferences);
  v5.receiver = self;
  v5.super_class = HSWiFiManager;
  [(HSWiFiManager *)&v5 dealloc];
}

- (HSWiFiManager)init
{
  v13.receiver = self;
  v13.super_class = HSWiFiManager;
  v2 = [(HSWiFiManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.amp.HomeSharing.HSWiFiManager.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = [(HSWiFiManager *)v2 _processIdentifier];
    v6 = SCPreferencesCreate(*MEMORY[0x277CBECE8], v5, @"com.apple.wifi.plist");
    v2->_wifiPreferences = v6;
    v12.version = 0;
    memset(&v12.retain, 0, 24);
    v12.info = v2;
    SCPreferencesSetCallback(v6, _WiFiCallBack, &v12);
    wifiPreferences = v2->_wifiPreferences;
    Main = CFRunLoopGetMain();
    SCPreferencesScheduleWithRunLoop(wifiPreferences, Main, *MEMORY[0x277CBF048]);
    v2->_wiFiEnabled = [(HSWiFiManager *)v2 _getWiFiEnabledFromPrefs];
    v2->_wiFiAssociated = 1;
    v9 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v9 registerObserver:v2];

    v10 = v2;
  }

  return v2;
}

+ (id)sharedWiFiManager
{
  if (sharedWiFiManager_onceToken != -1)
  {
    dispatch_once(&sharedWiFiManager_onceToken, &__block_literal_global_2105);
  }

  v3 = sharedWiFiManager_sharedWiFiManager;

  return v3;
}

uint64_t __34__HSWiFiManager_sharedWiFiManager__block_invoke()
{
  sharedWiFiManager_sharedWiFiManager = objc_alloc_init(HSWiFiManager);

  return MEMORY[0x2821F96F8]();
}

@end