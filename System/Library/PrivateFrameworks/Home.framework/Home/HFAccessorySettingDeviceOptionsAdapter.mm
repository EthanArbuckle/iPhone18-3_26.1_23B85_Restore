@interface HFAccessorySettingDeviceOptionsAdapter
- (BOOL)shouldShowSettingsEntity:(id)entity;
- (BOOL)supportButtonPressForEntity:(id)entity;
- (HFAccessorySettingDeviceOptionsAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode;
- (NAFuture)inProgressSysdiagnoseCollectionFuture;
- (id)_handleButtonPress;
- (id)_home;
- (id)airDropSysdiagnose:(id)sysdiagnose;
- (id)extractWiFiInfo;
- (id)handleButtonPressForEntity:(id)entity;
- (id)identifyAccessory;
- (id)inProgressButtonPressFutureForEntity:(id)entity;
- (id)inProgressButtonPressFutureForKeyPath:(id)path;
- (id)resetAccessory;
- (id)restartAccessories;
- (id)restartAccessory;
@end

@implementation HFAccessorySettingDeviceOptionsAdapter

- (HFAccessorySettingDeviceOptionsAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode
{
  vendorCopy = vendor;
  v7 = vendorCopy;
  if (mode == 1 || ([vendorCopy isItemGroup] & 1) != 0 || !+[HFExecutionEnvironment isHomeApp](HFExecutionEnvironment, "isHomeApp"))
  {
    selfCopy = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
    v14.receiver = self;
    v14.super_class = HFAccessorySettingDeviceOptionsAdapter;
    v9 = [(HFAccessorySettingAdapter *)&v14 initWithHomeKitSettingsVendor:v7 keyPaths:v8 mode:mode updateHandler:0];
    if (v9)
    {
      v10 = [[HFAccessorySettingDeviceOptionsAdapterUtility alloc] initWithHomeKitSettingsVendor:v7 mode:mode groupedAccessory:0 delegate:v9];
      adapterUtility = v9->_adapterUtility;
      v9->_adapterUtility = v10;

      v9->_isAccessoryReachableOverRapport = 0;
    }

    self = v9;

    selfCopy = self;
  }

  return selfCopy;
}

- (id)identifyAccessory
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "identifyAccessory invoked", v7, 2u);
  }

  adapterUtility = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  identifyAccessory = [adapterUtility identifyAccessory];

  return identifyAccessory;
}

- (id)restartAccessory
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "restartAccessory invoked", v7, 2u);
  }

  adapterUtility = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  restartAccessory = [adapterUtility restartAccessory];

  return restartAccessory;
}

- (id)resetAccessory
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "resetAccessory invoked", v7, 2u);
  }

  adapterUtility = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  resetAccessory = [adapterUtility resetAccessory];

  return resetAccessory;
}

- (id)restartAccessories
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "restartAccessories invoked", v7, 2u);
  }

  adapterUtility = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  restartAccessories = [adapterUtility restartAccessories];

  return restartAccessories;
}

- (id)airDropSysdiagnose:(id)sysdiagnose
{
  sysdiagnoseCopy = sysdiagnose;
  v5 = HFLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "airDrop invoked", v9, 2u);
  }

  adapterUtility = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  v7 = [adapterUtility requestAirDrop:sysdiagnoseCopy];

  return v7;
}

- (id)extractWiFiInfo
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "extractWiFiInfo invoked", v7, 2u);
  }

  adapterUtility = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  extractWiFiInfo = [adapterUtility extractWiFiInfo];

  return extractWiFiInfo;
}

- (NAFuture)inProgressSysdiagnoseCollectionFuture
{
  inProgressSysdiagnoseCollectionFuture = self->_inProgressSysdiagnoseCollectionFuture;
  if (inProgressSysdiagnoseCollectionFuture)
  {
    if (([(NAFuture *)inProgressSysdiagnoseCollectionFuture isFinished]& 1) != 0)
    {
      inProgressSysdiagnoseCollectionFuture = 0;
    }

    else
    {
      inProgressSysdiagnoseCollectionFuture = self->_inProgressSysdiagnoseCollectionFuture;
    }
  }

  return inProgressSysdiagnoseCollectionFuture;
}

- (BOOL)shouldShowSettingsEntity:(id)entity
{
  keyPath = [entity keyPath];
  v4 = [keyPath isEqualToString:@"root.general.analytics.sysdiagnose"];

  return v4 && HFPreferencesBooleanValueForKey(@"EXPOSE_SYSDIAGNOSE_FOR_HOMEPOD") == 2;
}

- (id)handleButtonPressForEntity:(id)entity
{
  entityCopy = entity;
  v6 = entityCopy;
  if (entityCopy && ([entityCopy keyPath], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"root.general.analytics.sysdiagnose"), v7, !v8))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingDeviceOptionsAdapter.m" lineNumber:113 description:{@"Unhandled button press from entity '%@'  for adapter: %@", self, v6}];

    v11 = MEMORY[0x277D2C900];
    v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25];
    _handleButtonPress = [v11 futureWithError:v12];
  }

  else
  {
    _handleButtonPress = [(HFAccessorySettingDeviceOptionsAdapter *)self _handleButtonPress];
  }

  return _handleButtonPress;
}

- (BOOL)supportButtonPressForEntity:(id)entity
{
  keyPath = [entity keyPath];
  v4 = [keyPath isEqualToString:@"root.general.analytics.sysdiagnose"];

  return v4;
}

- (id)inProgressButtonPressFutureForEntity:(id)entity
{
  keyPath = [entity keyPath];
  v5 = [keyPath isEqualToString:@"root.general.analytics.sysdiagnose"];

  if (v5)
  {
    inProgressSysdiagnoseCollectionFuture = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];
  }

  else
  {
    inProgressSysdiagnoseCollectionFuture = 0;
  }

  return inProgressSysdiagnoseCollectionFuture;
}

- (id)inProgressButtonPressFutureForKeyPath:(id)path
{
  if ([path isEqualToString:@"root.general.analytics.sysdiagnose"])
  {
    inProgressSysdiagnoseCollectionFuture = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];
  }

  else
  {
    inProgressSysdiagnoseCollectionFuture = 0;
  }

  return inProgressSysdiagnoseCollectionFuture;
}

- (id)_handleButtonPress
{
  v23 = *MEMORY[0x277D85DE8];
  inProgressSysdiagnoseCollectionFuture = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];

  if (inProgressSysdiagnoseCollectionFuture)
  {
    v5 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Ignoring because previous SysdiagnoseCollection future is active", buf, 0x16u);
    }

    inProgressSysdiagnoseCollectionFuture2 = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];
  }

  else
  {
    v8 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    v18 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    v12 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = v11;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Sending Collect Sysdiagnose rapport message w/ request: %@", buf, 0xCu);
    }

    adapterUtility = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
    v14 = [adapterUtility requestSysdiagnose:v11 options:0];
    [(HFAccessorySettingDeviceOptionsAdapter *)self setInProgressSysdiagnoseCollectionFuture:v14];

    inProgressSysdiagnoseCollectionFuture2 = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];
  }

  v15 = *MEMORY[0x277D85DE8];

  return inProgressSysdiagnoseCollectionFuture2;
}

- (id)_home
{
  homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  hf_home = [homeKitSettingsVendor hf_home];

  return hf_home;
}

@end