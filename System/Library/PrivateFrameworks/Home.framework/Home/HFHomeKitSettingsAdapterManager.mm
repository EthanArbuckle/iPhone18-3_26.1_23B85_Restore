@interface HFHomeKitSettingsAdapterManager
- (HFHomeKitSettingsAdapterManager)init;
- (HFHomeKitSettingsAdapterManager)initWithHomeKitSettingsVendor:(id)vendor;
- (HFHomeKitSettingsVendor)homeKitSettingsVendor;
- (id)_createAdapterForIdentifier:(id)identifier;
- (id)adapterForIdentifier:(id)identifier;
@end

@implementation HFHomeKitSettingsAdapterManager

- (HFHomeKitSettingsAdapterManager)initWithHomeKitSettingsVendor:(id)vendor
{
  objc_initWeak(&location, vendor);
  v9.receiver = self;
  v9.super_class = HFHomeKitSettingsAdapterManager;
  v4 = [(HFHomeKitSettingsAdapterManager *)&v9 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_homeKitSettingsVendor, v5);

    v6 = objc_opt_new();
    adaptersByID = v4->_adaptersByID;
    v4->_adaptersByID = v6;
  }

  objc_destroyWeak(&location);
  return v4;
}

- (HFHomeKitSettingsAdapterManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomeKitSettingsAdapterManager.m" lineNumber:65 description:{@"%s is unavailable; use %@ instead", "-[HFHomeKitSettingsAdapterManager init]", v5}];

  return 0;
}

- (id)adapterForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  adaptersByID = [(HFHomeKitSettingsAdapterManager *)self adaptersByID];
  v6 = [adaptersByID objectForKey:identifierCopy];

  if (!v6)
  {
    v6 = [(HFHomeKitSettingsAdapterManager *)self _createAdapterForIdentifier:identifierCopy];
    adaptersByID2 = [(HFHomeKitSettingsAdapterManager *)self adaptersByID];
    [adaptersByID2 na_safeSetObject:v6 forKey:identifierCopy];
  }

  return v6;
}

- (id)_createAdapterForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"SiriLanguageAdapter"])
  {
    v5 = off_277DEF370;
LABEL_17:
    v6 = objc_alloc(*v5);
    homeKitSettingsVendor = [(HFHomeKitSettingsAdapterManager *)self homeKitSettingsVendor];
    v8 = [v6 initWithHomeKitSettingsVendor:homeKitSettingsVendor mode:0];

    goto LABEL_18;
  }

  if ([identifierCopy isEqualToString:@"ManagedConfigurationAdapter"])
  {
    v5 = off_277DEF340;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToString:@"MobileTimerAdapter"])
  {
    v5 = off_277DEF348;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToString:@"MusicAdapter"])
  {
    v5 = off_277DEF350;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToString:@"DataAnalytics"])
  {
    v5 = off_277DEF300;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToString:@"DoorbellChimeAdapter"])
  {
    v5 = off_277DEF320;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToString:@"DeviceOptions"])
  {
    v5 = off_277DEF310;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToString:@"SiriHistoryAdapter"])
  {
    v5 = off_277DEF368;
    goto LABEL_17;
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (HFHomeKitSettingsVendor)homeKitSettingsVendor
{
  WeakRetained = objc_loadWeakRetained(&self->_homeKitSettingsVendor);

  return WeakRetained;
}

@end