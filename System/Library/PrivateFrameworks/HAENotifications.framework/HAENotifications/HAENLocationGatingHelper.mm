@interface HAENLocationGatingHelper
+ (id)sharedInstance;
- (BOOL)_isHAENFeatureMandatory:(id)mandatory dataDisposition:(id)disposition;
- (BOOL)_isIPad;
- (BOOL)_isIPod;
- (BOOL)_isMandatoryDeviceClass;
- (BOOL)_regionAndDeviceMandatesFeature:(id)feature;
- (BOOL)_shouldUpdateLocation:(id)location;
- (BOOL)_validDataDisposition:(id)disposition;
- (HAENLocationGatingHelper)init;
- (id)_readDeviceDisposition;
- (int)_getMGProductType;
- (void)_contryConfigurationDidChange:(id)change;
- (void)_donateSignalToTipsKit:(BOOL)kit;
- (void)_donateSignalToTipsKitOnInitialization;
- (void)_loadRegionPlistFile;
- (void)_logLocationGatingFlags;
- (void)_setFeatureMandatoryFlag:(id)flag;
- (void)_setHEANEnabled:(id)enabled;
- (void)_updateImpl;
- (void)_updateLocationGatingFlags;
- (void)_updateSampleTransient:(id)transient;
- (void)_updateStatsWithGeoLocation:(id)location disposition:(id)disposition andMandatoryFlag:(BOOL)flag;
- (void)dealloc;
- (void)deviceDataDispositionDidChange;
- (void)reloadProductTypeOverride;
- (void)update;
@end

@implementation HAENLocationGatingHelper

- (void)_updateImpl
{
  v16 = *MEMORY[0x277D85DE8];
  [(HAENLocationGatingHelper *)self _logLocationGatingFlags];
  v3 = objc_alloc_init(HAENGeoLocation);
  if ([(HAENGeoLocation *)self->_geoLocation source]== 2)
  {
    v4 = HAENotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      geoLocation = self->_geoLocation;
      v12 = 138412546;
      v13 = geoLocation;
      v14 = 2112;
      v15 = v3;
      v6 = "geo location since was overriden: %@, new location: %@";
      v7 = v4;
      v8 = 22;
LABEL_7:
      _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = [(HAENLocationGatingHelper *)self _shouldUpdateLocation:v3];
  v4 = HAENotificationsLog();
  v10 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = v3;
      v6 = "updating to new geo location: %@";
      v7 = v4;
      v8 = 12;
      goto LABEL_7;
    }

LABEL_8:

    objc_storeStrong(&self->_geoLocation, v3);
    [(HAENLocationGatingHelper *)self _updateLocationGatingFlags];
    goto LABEL_12;
  }

  if (v10)
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "HAEN GeoLocation update skipped for new location: %@", &v12, 0xCu);
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_logLocationGatingFlags
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEFAA8];
  CFPreferencesAppSynchronize(*MEMORY[0x277CEFAA8]);
  v3 = CFPreferencesCopyMultiple(0, v2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v4 = HAENotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "HAEN flags: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)update
{
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HAENLocationGatingHelper_update__block_invoke;
  block[3] = &unk_27969F218;
  block[4] = self;
  dispatch_sync(updateQueue, block);
}

- (BOOL)_isIPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_7 != -1)
  {
    +[HAENLocationGatingHelper sharedInstance];
  }

  v3 = sharedInstance_instance_7;

  return v3;
}

uint64_t __42__HAENLocationGatingHelper_sharedInstance__block_invoke()
{
  sharedInstance_instance_7 = objc_alloc_init(HAENLocationGatingHelper);

  return MEMORY[0x2821F96F8]();
}

- (HAENLocationGatingHelper)init
{
  v22 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HAENLocationGatingHelper;
  v2 = [(HAENLocationGatingHelper *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(HAENGeoLocation);
    geoLocation = v2->_geoLocation;
    v2->_geoLocation = v3;

    v5 = HAENotificationsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v2->_geoLocation;
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "HAENLocationGating: geo location at init time: %@", buf, 0xCu);
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.coreaudio.hae.location_gating", v7);
    updateQueue = v2->_updateQueue;
    v2->_updateQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v11 = [v10 getPreferenceFor:*MEMORY[0x277CEFAD8]];
    productTypeOverride = v2->_productTypeOverride;
    v2->_productTypeOverride = v11;

    if ([(HAENGeoLocation *)v2->_geoLocation source]!= 2)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel__contryConfigurationDidChange_ name:*MEMORY[0x277D0E7C8] object:0];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, GeoLocationDidChange, *MEMORY[0x277CEFA78], 0, 0);
    v2->_EUVolumeLimitFlagOn = MGGetBoolAnswer();
    v15 = HAENotificationsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithBool:v2->_EUVolumeLimitFlagOn];
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_25081E000, v15, OS_LOG_TYPE_DEFAULT, "HAENLocationGating: EU Volume Limit behavior: %@", buf, 0xCu);
    }

    [(HAENLocationGatingHelper *)v2 _loadRegionPlistFile];
    [(HAENLocationGatingHelper *)v2 update];
    [(HAENLocationGatingHelper *)v2 _donateSignalToTipsKitOnInitialization];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_setFeatureMandatoryFlag:(id)flag
{
  v9 = *MEMORY[0x277D85DE8];
  flagCopy = flag;
  v5 = HAENotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = flagCopy;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "*** setting HAEN feature mandatory flag to %@", &v7, 0xCu);
  }

  SetDeviceSpecificDefaultsFor(@"HAENFeatureMandatory", flagCopy);
  CFPreferencesAppSynchronize(*MEMORY[0x277CEFAA8]);
  [(HAENLocationGatingHelper *)self _updateSampleTransient:flagCopy];
  [(HAENLocationGatingHelper *)self _setHEANEnabled:flagCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateLocationGatingFlags
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HAENGeoLocation source](self->_geoLocation, "source")}];
  SetDeviceSpecificDefaultsFor(@"HAENGeoLocationSource", v3);

  CFPreferencesAppSynchronize(*MEMORY[0x277CEFAA8]);
  _readDeviceDisposition = [(HAENLocationGatingHelper *)self _readDeviceDisposition];
  v4 = [(HAENLocationGatingHelper *)self _isHAENFeatureMandatory:self->_geoLocation dataDisposition:_readDeviceDisposition];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  [(HAENLocationGatingHelper *)self _setFeatureMandatoryFlag:v5];
}

- (void)_setHEANEnabled:(id)enabled
{
  enabledCopy = enabled;
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = [v3 setPreferenceFor:*MEMORY[0x277CEFAF0] value:enabledCopy];
}

- (void)_updateSampleTransient:(id)transient
{
  if ([transient BOOLValue])
  {
    v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
    [v3 removePreferenceFor:*MEMORY[0x277CEFB10]];
    [v3 migrateKeyEnableHAEHKMeasurement:0];
  }
}

- (void)_contryConfigurationDidChange:(id)change
{
  v4 = HAENotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "Received Geo Location Notification from GeoServices", v5, 2u);
  }

  [(HAENLocationGatingHelper *)self update];
}

- (void)deviceDataDispositionDidChange
{
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HAENLocationGatingHelper_deviceDataDispositionDidChange__block_invoke;
  block[3] = &unk_27969F218;
  block[4] = self;
  dispatch_sync(updateQueue, block);
}

uint64_t __58__HAENLocationGatingHelper_deviceDataDispositionDidChange__block_invoke(uint64_t a1)
{
  v2 = HAENotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25081E000, v2, OS_LOG_TYPE_DEFAULT, "HAEN Location Gating updating device data disposition", v4, 2u);
  }

  return [*(a1 + 32) _updateImpl];
}

- (BOOL)_shouldUpdateLocation:(id)location
{
  v20 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v5 = GetDeviceSpecificDefaults(@"HAENFeatureMandatory");
  if (-[HAENLocationGatingHelper _isIPad](self, "_isIPad") && ([v5 BOOLValue] & 1) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = GetDeviceSpecificDefaults(@"HAENGeoLocationSource");
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_2862C97A8;
    }

    v6 = -[HAENLocationGatingHelper _validCountryCodeSource:](self, "_validCountryCodeSource:", [locationCopy source]);
    v9 = HAENotificationsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      describeSource = [locationCopy describeSource];
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      v14 = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = describeSource;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_25081E000, v9, OS_LOG_TYPE_DEFAULT, "Stored geo location source: %@, new source: %@, valid: %@", &v14, 0x20u);
    }

    if (v6)
    {
      LODWORD(v6) = [locationCopy source];
      LOBYTE(v6) = v6 > [v8 intValue];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_isMandatoryDeviceClass
{
  if (_isMandatoryDeviceClass_once != -1)
  {
    [HAENLocationGatingHelper _isMandatoryDeviceClass];
  }

  return _isMandatoryDeviceClass_ans;
}

void __51__HAENLocationGatingHelper__isMandatoryDeviceClass__block_invoke()
{
  v1 = MGGetStringAnswer();
  if ([v1 isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"iPod"))
  {
    v0 = 1;
  }

  else
  {
    v0 = [v1 isEqualToString:@"Watch"];
  }

  _isMandatoryDeviceClass_ans = v0;
}

- (BOOL)_isHAENFeatureMandatory:(id)mandatory dataDisposition:(id)disposition
{
  v26 = *MEMORY[0x277D85DE8];
  dispositionCopy = disposition;
  mandatoryCopy = mandatory;
  countryCode = [mandatoryCopy countryCode];
  v9 = [(HAENLocationGatingHelper *)self _regionAndDeviceMandatesFeature:countryCode];

  v10 = self->_EUVolumeLimitFlagOn | v9 & ([dispositionCopy isEqualToString:*MEMORY[0x277CEFAA0]] ^ 1);
  v11 = ![(HAENLocationGatingHelper *)self _isIPad];
  v12 = HAENotificationsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v11 & v10];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_EUVolumeLimitFlagOn];
    v18 = 138413058;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = dispositionCopy;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_25081E000, v12, OS_LOG_TYPE_DEFAULT, "*** HAE Feature Regional Status: ** %@ ** [ Mandatory: %@, Dispositon: %@, EUVolumeLimit: %@ ]", &v18, 0x2Au);
  }

  [(HAENLocationGatingHelper *)self _updateStatsWithGeoLocation:mandatoryCopy disposition:dispositionCopy andMandatoryFlag:v11 & v10];
  [(HAENLocationGatingHelper *)self _donateSignalToTipsKit:v11 & v10];

  v16 = *MEMORY[0x277D85DE8];
  return v11 & v10;
}

- (id)_readDeviceDisposition
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = GetDeviceSpecificDefaults(*MEMORY[0x277CEFAD0]);
  v3 = HAENotificationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, "*** Device data disposition is: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)_validDataDisposition:(id)disposition
{
  dispositionCopy = disposition;
  if ([dispositionCopy isEqualToString:*MEMORY[0x277CEFAA0]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [dispositionCopy isEqualToString:*MEMORY[0x277CEFA98]];
  }

  return v4;
}

- (BOOL)_isIPod
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPod"];

  return v3;
}

- (void)_loadRegionPlistFile
{
  v3 = MEMORY[0x277CCACA8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 stringWithUTF8String:{objc_msgSend(defaultManager, "fileSystemRepresentationWithPath:", @"/System/Library/CoreServices/RegionalOverrideSoftwareBehaviors.plist"}];

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
  regionBehavior = self->_regionBehavior;
  self->_regionBehavior = v6;

  if (!self->_regionBehavior)
  {
    v8 = HAENotificationsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HAENLocationGatingHelper *)v8 _loadRegionPlistFile];
    }
  }
}

- (BOOL)_regionAndDeviceMandatesFeature:(id)feature
{
  v21 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  if (featureCopy)
  {
    v5 = [(NSDictionary *)self->_regionBehavior objectForKey:featureCopy];
    v6 = [v5 valueForKey:@"haen"];
    bOOLValue = [v6 BOOLValue];

    _isMandatoryDeviceClass = [(HAENLocationGatingHelper *)self _isMandatoryDeviceClass];
    v9 = HAENotificationsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "optional";
      if (bOOLValue)
      {
        v11 = "mandatory";
      }

      else
      {
        v11 = "optional";
      }

      v15 = 136315650;
      v16 = v11;
      if (_isMandatoryDeviceClass)
      {
        v10 = "mandatory";
      }

      v17 = 2112;
      v18 = featureCopy;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_25081E000, v9, OS_LOG_TYPE_DEFAULT, "HAEN is [%s] for country: [%@] with device [%s]", &v15, 0x20u);
    }

    v12 = bOOLValue & _isMandatoryDeviceClass;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)_getMGProductType
{
  v11 = *MEMORY[0x277D85DE8];
  unsignedIntValue = MGGetProductType();
  productTypeOverride = self->_productTypeOverride;
  if (productTypeOverride)
  {
    unsignedIntValue = [(NSNumber *)productTypeOverride unsignedIntValue];
    v5 = HAENotificationsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      unsignedLongValue = [(NSNumber *)self->_productTypeOverride unsignedLongValue];
      v9 = 134217984;
      v10 = unsignedLongValue;
      _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "HAEN device product type is overriden: 0x%08lx", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return unsignedIntValue;
}

- (void)dealloc
{
  if ([(HAENGeoLocation *)self->_geoLocation source]!= 2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D0E7C8] object:0];
  }

  v4.receiver = self;
  v4.super_class = HAENLocationGatingHelper;
  [(HAENLocationGatingHelper *)&v4 dealloc];
}

- (void)_updateStatsWithGeoLocation:(id)location disposition:(id)disposition andMandatoryFlag:(BOOL)flag
{
  dispositionCopy = disposition;
  locationCopy = location;
  countryCode = [locationCopy countryCode];
  countryCode = self->_stats.countryCode;
  self = (self + 48);
  self->super.isa = countryCode;

  describeSource = [locationCopy describeSource];

  geoLocation = self->_geoLocation;
  self->_geoLocation = describeSource;

  objc_storeStrong(&self->_updateQueue, disposition);
  LOBYTE(self->_regionBehavior) = flag;
  BYTE1(self->_regionBehavior) = self[-1]._stats.disposition;
  v15 = +[HAENStatistics sharedInstance];
  __copy_constructor_8_8_s0_s8_s16_t24w2(v16, self);
  if (v15)
  {
    [v15 processStatsForLocationGating:v16];
  }

  else
  {
  }
}

- (void)_donateSignalToTipsKit:(BOOL)kit
{
  kitCopy = kit;
  v4 = BiomeLibrary();
  discoverability = [v4 Discoverability];
  signals = [discoverability Signals];

  source = [signals source];
  v7 = objc_alloc(MEMORY[0x277CF1160]);
  if (kitCopy)
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  v9 = [v7 initWithContentIdentifier:@"com.apple.Health.Hearing.HAENRequired" context:v8 osBuild:0 userInfo:0];
  [source sendEvent:v9];
  if (!kitCopy)
  {
    v10 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v11 = [v10 getPreferenceFor:*MEMORY[0x277CEFAF0]];
    bOOLValue = [v11 BOOLValue];

    v13 = objc_alloc(MEMORY[0x277CF1160]);
    if (bOOLValue)
    {
      v14 = @"true";
    }

    else
    {
      v14 = @"false";
    }

    v15 = [v13 initWithContentIdentifier:@"com.apple.Health.Hearing.HAENOptIn" context:v14 osBuild:0 userInfo:0];
    [source sendEvent:v15];
  }
}

- (void)_donateSignalToTipsKitOnInitialization
{
  CFPreferencesAppSynchronize(*MEMORY[0x277CEFAA8]);
  v3 = GetDeviceSpecificDefaults(@"HAENFeatureMandatory");
  v4 = dispatch_time(0, 60000000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HAENLocationGatingHelper__donateSignalToTipsKitOnInitialization__block_invoke;
  v6[3] = &unk_27969F240;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], v6);
}

uint64_t __66__HAENLocationGatingHelper__donateSignalToTipsKitOnInitialization__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!v2)
  {
    if ([v3 _isMandatoryDeviceClass])
    {
      v4 = 1;
      goto LABEL_6;
    }

    v2 = *(a1 + 40);
  }

  v4 = [v2 BOOLValue];
LABEL_6:

  return [v3 _donateSignalToTipsKit:v4];
}

- (void)reloadProductTypeOverride
{
  v5 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v3 = [v5 getPreferenceFor:*MEMORY[0x277CEFAD8]];
  productTypeOverride = self->_productTypeOverride;
  self->_productTypeOverride = v3;
}

@end