@interface HFHomeKitSettingsAdapterManager
- (HFHomeKitSettingsAdapterManager)init;
- (HFHomeKitSettingsAdapterManager)initWithHomeKitSettingsVendor:(id)a3;
- (HFHomeKitSettingsVendor)homeKitSettingsVendor;
- (id)_createAdapterForIdentifier:(id)a3;
- (id)adapterForIdentifier:(id)a3;
@end

@implementation HFHomeKitSettingsAdapterManager

- (HFHomeKitSettingsAdapterManager)initWithHomeKitSettingsVendor:(id)a3
{
  objc_initWeak(&location, a3);
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFHomeKitSettingsAdapterManager.m" lineNumber:65 description:{@"%s is unavailable; use %@ instead", "-[HFHomeKitSettingsAdapterManager init]", v5}];

  return 0;
}

- (id)adapterForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitSettingsAdapterManager *)self adaptersByID];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [(HFHomeKitSettingsAdapterManager *)self _createAdapterForIdentifier:v4];
    v7 = [(HFHomeKitSettingsAdapterManager *)self adaptersByID];
    [v7 na_safeSetObject:v6 forKey:v4];
  }

  return v6;
}

- (id)_createAdapterForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"SiriLanguageAdapter"])
  {
    v5 = off_277DEF370;
LABEL_17:
    v6 = objc_alloc(*v5);
    v7 = [(HFHomeKitSettingsAdapterManager *)self homeKitSettingsVendor];
    v8 = [v6 initWithHomeKitSettingsVendor:v7 mode:0];

    goto LABEL_18;
  }

  if ([v4 isEqualToString:@"ManagedConfigurationAdapter"])
  {
    v5 = off_277DEF340;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"MobileTimerAdapter"])
  {
    v5 = off_277DEF348;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"MusicAdapter"])
  {
    v5 = off_277DEF350;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"DataAnalytics"])
  {
    v5 = off_277DEF300;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"DoorbellChimeAdapter"])
  {
    v5 = off_277DEF320;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"DeviceOptions"])
  {
    v5 = off_277DEF310;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"SiriHistoryAdapter"])
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