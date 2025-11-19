@interface NTKCustomWorldCityAbbreviationsStore
+ (id)sharedInstance;
- (NTKCustomWorldCityAbbreviationsStore)init;
- (id)_getCustomAbbreviationsFromPrefs;
- (void)_handlePrefsChanged;
- (void)_notifyClientsOfChange;
- (void)dealloc;
- (void)setCustomAbbreviation:(id)a3 forCityIdentifier:(id)a4;
@end

@implementation NTKCustomWorldCityAbbreviationsStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[NTKCustomWorldCityAbbreviationsStore sharedInstance];
  }

  v3 = sharedInstance_sInstance_0;

  return v3;
}

void __54__NTKCustomWorldCityAbbreviationsStore_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NTKCustomWorldCityAbbreviationsStore);
  v1 = sharedInstance_sInstance_0;
  sharedInstance_sInstance_0 = v0;
}

- (NTKCustomWorldCityAbbreviationsStore)init
{
  v5.receiver = self;
  v5.super_class = NTKCustomWorldCityAbbreviationsStore;
  v2 = [(NTKCustomWorldCityAbbreviationsStore *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NTKCustomWorldCityAbbreviationsStore_HandleStoreChanged, @"com.apple.NanoTimeKit.NTKNanoPrefsChanges", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit");
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = NTKCustomWorldCityAbbreviationsStore;
  [(NTKCustomWorldCityAbbreviationsStore *)&v4 dealloc];
}

- (id)_getCustomAbbreviationsFromPrefs
{
  v2 = CFPreferencesCopyAppValue(@"customWorldCities", @"com.apple.NanoTimeKit");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
      CFRelease(v3);
      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      CFRelease(v3);
    }
  }

  v5 = [MEMORY[0x277CBEAC0] dictionary];
LABEL_7:

  return v5;
}

- (void)setCustomAbbreviation:(id)a3 forCityIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKCustomWorldCityAbbreviationsStore *)self _getCustomAbbreviationsFromPrefs];
  value = [v8 mutableCopy];

  [value setObject:v7 forKey:v6];
  CFPreferencesSetAppValue(@"customWorldCities", value, @"com.apple.NanoTimeKit");
  CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit");
  npsManager = self->_npsManager;
  if (!npsManager)
  {
    v10 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v11 = self->_npsManager;
    self->_npsManager = v10;

    npsManager = self->_npsManager;
  }

  v12 = [MEMORY[0x277CBEB98] setWithObject:@"customWorldCities"];
  [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.NanoTimeKit" keys:v12];

  [(NTKCustomWorldCityAbbreviationsStore *)self _notifyClientsOfChange];
}

- (void)_handlePrefsChanged
{
  CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit");

  [(NTKCustomWorldCityAbbreviationsStore *)self _notifyClientsOfChange];
}

- (void)_notifyClientsOfChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NTKCustomWorldCityAbbreviationsChangedNotification" object:self];
}

@end