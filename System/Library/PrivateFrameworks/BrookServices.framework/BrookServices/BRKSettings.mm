@interface BRKSettings
+ (id)_stringForConfigurationWithKey:(id)key;
+ (id)remindersFooterExplanationContactStoreNotAuthorized;
+ (id)remindersFooterExplanationFormat;
+ (id)remindersFooterLinkTitleContacts;
+ (id)remindersFooterLinkTitleLocation;
+ (id)remindersSettingFooter;
+ (id)remindersSettingTitle;
+ (id)settingsForActiveDevice;
+ (id)settingsForDevice:(id)device;
+ (id)settingsTitle;
+ (id)timerSettingFooter;
+ (id)timerSettingTitle;
- (BOOL)_isManagedConfigurationImproveHandwashingEnabled;
- (BOOL)_isManagedConfigurationImproveHealthAndActivityEnabled;
- (BOOL)_isTinkerDataCollectionEnabled;
- (BOOL)areRemindersEnabled;
- (BOOL)isAvailable;
- (BOOL)isCachedLocationAuthFlowEnabled;
- (BOOL)isDataCollectionEnabled;
- (BOOL)isDataCollectionOnboardingComplete;
- (BOOL)isDataCollectionUploadDisabled;
- (BOOL)isEnabled;
- (BOOL)isOnboardingComplete;
- (double)brookCoolDownInterval;
- (id)_initWithDevice:(id)device;
- (id)_valueForKey:(id)key;
- (id)tinkerDataCollectionCredentials;
- (unint64_t)overrideDataCollectionAuthorization;
- (void)_BRKCancelForBRKSettingsChange;
- (void)_BRKRegisterForBRKSettingsChange;
- (void)_handleNPSNotification;
- (void)_observeDefaultChanges:(BOOL)changes;
- (void)_setValue:(id)value forKey:(id)key;
- (void)_setupLocationManager;
- (void)dealloc;
- (void)isLocationAuthFlowEnabledWithCompletionHandler:(id)handler;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setBrookCoolDownInterval:(double)interval;
- (void)setOverrideDataCollectionAuthorization:(unint64_t)authorization;
@end

@implementation BRKSettings

+ (id)settingsForActiveDevice
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  v5 = [self settingsForDevice:getActivePairedDevice];

  return v5;
}

+ (id)settingsForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[BRKSettings alloc] _initWithDevice:deviceCopy];

  return v4;
}

- (id)_initWithDevice:(id)device
{
  v24[7] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = BRKSettings;
  v6 = [(BRKSettings *)&v23 init];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v24[0] = @"BrookEnabled";
    v24[1] = @"BrookRemindersEnabled";
    v24[2] = @"BrookOnboardingComplete";
    v24[3] = @"BrookCoolDownInterval";
    v24[4] = @"BrookLastDataCollectionUploadDate";
    v24[5] = @"BrookOverrideDataCollectionAuthorization";
    v24[6] = @"BrookDataCollectionUploadDisabled";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:7];
    v9 = [v7 setWithArray:v8];
    observedKeys = v6->_observedKeys;
    v6->_observedKeys = v9;

    v6->_notifyToken = -1;
    objc_storeStrong(&v6->_device, device);
    v11 = objc_opt_new();
    npsManager = v6->_npsManager;
    v6->_npsManager = v11;

    v13 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.brook" pairedDevice:deviceCopy];
    domainAccessor = v6->_domainAccessor;
    v6->_domainAccessor = v13;

    synchronize = [(NPSDomainAccessor *)v6->_domainAccessor synchronize];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _BRKHandleNPSNotification, @"com.apple.brook.NPSSettingsDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__handleNPSNotification name:*MEMORY[0x277D2BC48] object:0];

    [(BRKSettings *)v6 _BRKRegisterForBRKSettingsChange];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] addObserver:v6];

    v6->_currentIsManagedConfigurationImproveHandwashingEnabled = [(BRKSettings *)v6 _isManagedConfigurationImproveHandwashingEnabled];
    [(BRKSettings *)v6 _observeDefaultChanges:1];
    v6->_locationManagerLastAuthorizationStatus = -1;
    v6->_locationManagerAuthorizationStatusHasChangedOnce = 0;
    v19 = BRKCreateDispatchQueue("com.brook.settings.locationmanager", QOS_CLASS_UTILITY);
    locationManagerQueue = v6->_locationManagerQueue;
    v6->_locationManagerQueue = v19;

    [(BRKSettings *)v6 _setupLocationManager];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_setupLocationManager
{
  v3 = objc_initWeak(&location, self);
  locationManagerQueue = [(BRKSettings *)self locationManagerQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__BRKSettings__setupLocationManager__block_invoke;
  v5[3] = &unk_278D28C60;
  objc_copyWeak(&v6, &location);
  dispatch_async(locationManagerQueue, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __36__BRKSettings__setupLocationManager__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277CBFC10]);
    v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/HandwashingLocation.bundle"];
    v4 = [WeakRetained locationManagerQueue];
    v5 = [v2 initWithEffectiveBundle:v3 delegate:WeakRetained onQueue:v4];
    [WeakRetained setLocationManager:v5];
  }

  else
  {
    v6 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __36__BRKSettings__setupLocationManager__block_invoke_cold_1(v6);
    }
  }

  v7 = [WeakRetained locationManager];

  v8 = BRKLoggingObjectForDomain(13);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[BRKSettings _setupLocationManager]_block_invoke";
      _os_log_impl(&dword_241EE4000, v9, OS_LOG_TYPE_INFO, "%s: successfully initialized location manager for Handwashing settings!", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __36__BRKSettings__setupLocationManager__block_invoke_cold_2(v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.brook.NPSSettingsDidChangeNotification", 0);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] removeObserver:self];

  [(BRKSettings *)self _observeDefaultChanges:0];
  [(BRKSettings *)self _BRKCancelForBRKSettingsChange];
  v6.receiver = self;
  v6.super_class = BRKSettings;
  [(BRKSettings *)&v6 dealloc];
}

- (void)_BRKRegisterForBRKSettingsChange
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__BRKSettings__BRKRegisterForBRKSettingsChange__block_invoke;
  v5[3] = &unk_278D28C88;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch("com.apple.brook.BRKSettingsDidChangeNotification", &self->_notifyToken, v3, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__BRKSettings__BRKRegisterForBRKSettingsChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNPSNotification];
}

- (void)_BRKCancelForBRKSettingsChange
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }
}

- (BOOL)isAvailable
{
  device = self->_device;
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0C599FD8-CC9F-48C9-BC37-C764A8B0527C"];
  LOBYTE(device) = [(NRDevice *)device supportsCapability:v3];

  return device;
}

- (BOOL)isEnabled
{
  v2 = [(BRKSettings *)self _valueForKey:@"BrookEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)areRemindersEnabled
{
  v2 = [(BRKSettings *)self _valueForKey:@"BrookRemindersEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isDataCollectionEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  if (BRKActiveDeviceIsAltAccount())
  {
    _isTinkerDataCollectionEnabled = [(BRKSettings *)self _isTinkerDataCollectionEnabled];
  }

  else
  {
    _isTinkerDataCollectionEnabled = [(BRKSettings *)self _isManagedConfigurationImproveHandwashingEnabled];
  }

  v4 = _isTinkerDataCollectionEnabled;
  v5 = BRKLoggingObjectForDomain(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v9 = 136315394;
    v10 = "[BRKSettings isDataCollectionEnabled]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isDataCollectionOnboardingComplete
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F08]] != 0;

  return v3;
}

- (BOOL)isOnboardingComplete
{
  v2 = [(BRKSettings *)self _valueForKey:@"BrookOnboardingComplete"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)isLocationAuthFlowEnabledWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _os_feature_enabled_impl();
  if ((v5 & 1) == 0)
  {
    v6 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[BRKSettings isLocationAuthFlowEnabledWithCompletionHandler:]";
      _os_log_impl(&dword_241EE4000, v6, OS_LOG_TYPE_DEFAULT, "%s return NO os_feature_enabled(Brook, brook_new_location_auth) == NO", buf, 0xCu);
    }
  }

  device = self->_device;
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E90AC0F3-E83B-42C8-8EDB-D6C6BCF08D65"];
  LOBYTE(device) = [(NRDevice *)device supportsCapability:v8];

  if ((device & 1) == 0)
  {
    v9 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[BRKSettings isLocationAuthFlowEnabledWithCompletionHandler:]";
      _os_log_impl(&dword_241EE4000, v9, OS_LOG_TYPE_DEFAULT, "%s return NO [_device supportsCapability:NRDEVICECAPABILITY_BROOK_NEW_LOCATION_AUTH] == NO", buf, 0xCu);
    }

    v5 = 0;
  }

  if (self->_locationManagerAuthorizationStatusHasChangedOnce)
  {
    v10 = objc_initWeak(buf, self);
    locationManagerQueue = [(BRKSettings *)self locationManagerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__BRKSettings_isLocationAuthFlowEnabledWithCompletionHandler___block_invoke;
    block[3] = &unk_278D28CB0;
    objc_copyWeak(&v17, buf);
    v18 = v5;
    v16 = handlerCopy;
    dispatch_async(locationManagerQueue, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    if (self->_locationManagerLastAuthorizationStatus)
    {
      v12 = v5;
    }

    else
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      v13 = BRKLoggingObjectForDomain(13);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[BRKSettings isLocationAuthFlowEnabledWithCompletionHandler:]";
        _os_log_impl(&dword_241EE4000, v13, OS_LOG_TYPE_DEFAULT, "%s return NO [_locationManager(legacy) authorizationStatus] != kCLAuthorizationStatusNotDetermined", buf, 0xCu);
      }

      v5 = 0;
    }

    (*(handlerCopy + 2))(handlerCopy, v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __62__BRKSettings_isLocationAuthFlowEnabledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained locationManagerAuthorizationStatusHasChangedOnce])
  {
    v3 = [WeakRetained locationManager];
    [WeakRetained setLocationManagerLastAuthorizationStatus:{objc_msgSend(v3, "authorizationStatus")}];
  }

  v4 = *(a1 + 48);
  if ([WeakRetained locationManagerLastAuthorizationStatus] && (*(a1 + 48) & 1) == 0)
  {
    v5 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[BRKSettings isLocationAuthFlowEnabledWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s return NO [_locationManager(legacy) authorizationStatus] != kCLAuthorizationStatusNotDetermined", &v7, 0xCu);
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[BRKSettings isLocationAuthFlowEnabledWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s return YES", &v7, 0xCu);
    }
  }

LABEL_13:
  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCachedLocationAuthFlowEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_241EE4000, v3, OS_LOG_TYPE_DEFAULT, "Checking if location auth flow is enabled!", &v13, 2u);
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[BRKSettings isCachedLocationAuthFlowEnabled]";
      v9 = "%s return NO os_feature_enabled(Brook, brook_new_location_auth) == NO";
      goto LABEL_12;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  device = self->_device;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E90AC0F3-E83B-42C8-8EDB-D6C6BCF08D65"];
  LOBYTE(device) = [(NRDevice *)device supportsCapability:v5];

  if ((device & 1) == 0)
  {
    v7 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[BRKSettings isCachedLocationAuthFlowEnabled]";
      v9 = "%s return NO [_device supportsCapability:NRDEVICECAPABILITY_BROOK_NEW_LOCATION_AUTH] == NO";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  locationManagerLastAuthorizationStatus = self->_locationManagerLastAuthorizationStatus;
  v7 = BRKLoggingObjectForDomain(13);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (locationManagerLastAuthorizationStatus)
  {
    if (v8)
    {
      v13 = 136315138;
      v14 = "[BRKSettings isCachedLocationAuthFlowEnabled]";
      v9 = "%s return NO [_locationManager(legacy) authorizationStatus] != kCLAuthorizationStatusNotDetermined";
LABEL_12:
      _os_log_impl(&dword_241EE4000, v7, OS_LOG_TYPE_DEFAULT, v9, &v13, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v8)
  {
    v13 = 136315138;
    v14 = "[BRKSettings isCachedLocationAuthFlowEnabled]";
    _os_log_impl(&dword_241EE4000, v7, OS_LOG_TYPE_DEFAULT, "%s return YES", &v13, 0xCu);
  }

  v10 = 1;
LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)setBrookCoolDownInterval:(double)interval
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
  [(BRKSettings *)self _setValue:v4 forKey:@"BrookCoolDownInterval"];
}

- (double)brookCoolDownInterval
{
  v2 = [(BRKSettings *)self _valueForKey:@"BrookCoolDownInterval"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (unint64_t)overrideDataCollectionAuthorization
{
  v2 = [(BRKSettings *)self _valueForKey:@"BrookOverrideDataCollectionAuthorization"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setOverrideDataCollectionAuthorization:(unint64_t)authorization
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:authorization];
  [(BRKSettings *)self _setValue:v4 forKey:@"BrookOverrideDataCollectionAuthorization"];
}

- (BOOL)isDataCollectionUploadDisabled
{
  v2 = [(BRKSettings *)self _valueForKey:@"BrookDataCollectionUploadDisabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)tinkerDataCollectionCredentials
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.brook.credentials"];
  dictionaryRepresentation = [v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (BOOL)_isManagedConfigurationImproveHandwashingEnabled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F08]] == 1;

  return v3;
}

- (BOOL)_isTinkerDataCollectionEnabled
{
  tinkerDataCollectionCredentials = [(BRKSettings *)self tinkerDataCollectionCredentials];
  v3 = [tinkerDataCollectionCredentials objectForKeyedSubscript:@"urlString"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_isManagedConfigurationImproveHealthAndActivityEnabled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F18]] == 1;

  return v3;
}

- (void)_setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    v7 = [(BRKSettings *)self _valueForKey:keyCopy];
    if (v7 != valueCopy && ([v7 isEqual:valueCopy] & 1) == 0)
    {
      [(BRKSettings *)self _observeDefaultChanges:0];
      [(NPSDomainAccessor *)self->_domainAccessor setObject:valueCopy forKey:keyCopy];
      synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
      npsManager = self->_npsManager;
      v10 = [MEMORY[0x277CBEB98] setWithObject:keyCopy];
      [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.brook" keys:v10];

      if ([(NSSet *)self->_observedKeys containsObject:keyCopy])
      {
        notify_post("com.apple.brook.BRKSettingsDidChangeNotification");
      }

      [(BRKSettings *)self _observeDefaultChanges:1];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"BRKSettingsDidUpdateNotification" object:self];
    }
  }
}

- (id)_valueForKey:(id)key
{
  if (key)
  {
    v4 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([(NSSet *)self->_observedKeys containsObject:pathCopy])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"BRKSettingsDidUpdateNotification" object:self];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BRKSettings;
    [(BRKSettings *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_observeDefaultChanges:(BOOL)changes
{
  if (self->_shouldObserveDefaultChanges != changes)
  {
    self->_shouldObserveDefaultChanges = changes;
  }
}

- (void)_handleNPSNotification
{
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"BRKSettingsDidUpdateNotification" object:0];
}

+ (id)settingsTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SETTINGS_TITLE" value:&stru_285413D38 table:0];

  return v3;
}

+ (id)timerSettingTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SETTINGS_ENABLE_TIMER" value:&stru_285413D38 table:0];

  return v3;
}

+ (id)timerSettingFooter
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SETTINGS_ENABLE_TIMER_DESCRIPTION" value:&stru_285413D38 table:0];

  return v3;
}

+ (id)remindersSettingTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SETTINGS_ENABLE_REMINDERS" value:&stru_285413D38 table:0];

  return v3;
}

+ (id)remindersSettingFooter
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SETTINGS_REMINDER_FOOTER" value:&stru_285413D38 table:0];

  return v3;
}

+ (id)remindersFooterExplanationFormat
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SETTINGS_REMINDER_EXPLANATION_FORMAT" value:&stru_285413D38 table:0];

  return v3;
}

+ (id)remindersFooterLinkTitleLocation
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SETTINGS_REMINDER_LOCATION_LINK_TITLE" value:&stru_285413D38 table:0];

  return v3;
}

+ (id)remindersFooterLinkTitleContacts
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SETTINGS_REMINDER_CONTACTS_LINK_TITLE" value:&stru_285413D38 table:0];

  return v3;
}

+ (id)remindersFooterExplanationContactStoreNotAuthorized
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SETTINGS_REMINDER_EXPLANATION_CONTACT_STORE_NOT_AUTHORIZED" value:&stru_285413D38 table:0];

  return v3;
}

+ (id)_stringForConfigurationWithKey:(id)key
{
  v3 = MEMORY[0x277CCA8D8];
  keyCopy = key;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:keyCopy value:&stru_285413D38 table:0];

  return v6;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = [(BRKSettings *)self _isManagedConfigurationImproveHandwashingEnabled:notification];
  if (self->_currentIsManagedConfigurationImproveHandwashingEnabled != v5)
  {
    self->_currentIsManagedConfigurationImproveHandwashingEnabled = v5;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"BRKSettingsDidUpdateNotification" object:0];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5 = BRKLoggingObjectForDomain(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "Location manager has changed authorization status", buf, 2u);
  }

  self->_locationManagerAuthorizationStatusHasChangedOnce = 1;
  v6 = objc_initWeak(buf, self);
  locationManagerQueue = [(BRKSettings *)self locationManagerQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__BRKSettings_locationManagerDidChangeAuthorization___block_invoke;
  v9[3] = &unk_278D28CD8;
  objc_copyWeak(&v11, buf);
  v10 = authorizationCopy;
  v8 = authorizationCopy;
  dispatch_async(locationManagerQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __53__BRKSettings_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLocationManagerLastAuthorizationStatus:{objc_msgSend(*(a1 + 32), "authorizationStatus")}];
}

void __36__BRKSettings__setupLocationManager__block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[BRKSettings _setupLocationManager]_block_invoke";
  _os_log_error_impl(&dword_241EE4000, log, OS_LOG_TYPE_ERROR, "%s: cannot initialize location manager for Handwashing settings, BRKSettings reference is nil!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __36__BRKSettings__setupLocationManager__block_invoke_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[BRKSettings _setupLocationManager]_block_invoke";
  _os_log_error_impl(&dword_241EE4000, log, OS_LOG_TYPE_ERROR, "%s: failed to initialize location manager for Handwashing settings!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end