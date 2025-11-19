@interface HFAccessorySettingDeviceOptionsAdapter
- (BOOL)shouldShowSettingsEntity:(id)a3;
- (BOOL)supportButtonPressForEntity:(id)a3;
- (HFAccessorySettingDeviceOptionsAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4;
- (NAFuture)inProgressSysdiagnoseCollectionFuture;
- (id)_handleButtonPress;
- (id)_home;
- (id)airDropSysdiagnose:(id)a3;
- (id)extractWiFiInfo;
- (id)handleButtonPressForEntity:(id)a3;
- (id)identifyAccessory;
- (id)inProgressButtonPressFutureForEntity:(id)a3;
- (id)inProgressButtonPressFutureForKeyPath:(id)a3;
- (id)resetAccessory;
- (id)restartAccessories;
- (id)restartAccessory;
@end

@implementation HFAccessorySettingDeviceOptionsAdapter

- (HFAccessorySettingDeviceOptionsAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1 || ([v6 isItemGroup] & 1) != 0 || !+[HFExecutionEnvironment isHomeApp](HFExecutionEnvironment, "isHomeApp"))
  {
    v12 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
    v14.receiver = self;
    v14.super_class = HFAccessorySettingDeviceOptionsAdapter;
    v9 = [(HFAccessorySettingAdapter *)&v14 initWithHomeKitSettingsVendor:v7 keyPaths:v8 mode:a4 updateHandler:0];
    if (v9)
    {
      v10 = [[HFAccessorySettingDeviceOptionsAdapterUtility alloc] initWithHomeKitSettingsVendor:v7 mode:a4 groupedAccessory:0 delegate:v9];
      adapterUtility = v9->_adapterUtility;
      v9->_adapterUtility = v10;

      v9->_isAccessoryReachableOverRapport = 0;
    }

    self = v9;

    v12 = self;
  }

  return v12;
}

- (id)identifyAccessory
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "identifyAccessory invoked", v7, 2u);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  v5 = [v4 identifyAccessory];

  return v5;
}

- (id)restartAccessory
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "restartAccessory invoked", v7, 2u);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  v5 = [v4 restartAccessory];

  return v5;
}

- (id)resetAccessory
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "resetAccessory invoked", v7, 2u);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  v5 = [v4 resetAccessory];

  return v5;
}

- (id)restartAccessories
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "restartAccessories invoked", v7, 2u);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  v5 = [v4 restartAccessories];

  return v5;
}

- (id)airDropSysdiagnose:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "airDrop invoked", v9, 2u);
  }

  v6 = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  v7 = [v6 requestAirDrop:v4];

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

  v4 = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
  v5 = [v4 extractWiFiInfo];

  return v5;
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

- (BOOL)shouldShowSettingsEntity:(id)a3
{
  v3 = [a3 keyPath];
  v4 = [v3 isEqualToString:@"root.general.analytics.sysdiagnose"];

  return v4 && HFPreferencesBooleanValueForKey(@"EXPOSE_SYSDIAGNOSE_FOR_HOMEPOD") == 2;
}

- (id)handleButtonPressForEntity:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 keyPath], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"root.general.analytics.sysdiagnose"), v7, !v8))
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingDeviceOptionsAdapter.m" lineNumber:113 description:{@"Unhandled button press from entity '%@'  for adapter: %@", self, v6}];

    v11 = MEMORY[0x277D2C900];
    v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25];
    v9 = [v11 futureWithError:v12];
  }

  else
  {
    v9 = [(HFAccessorySettingDeviceOptionsAdapter *)self _handleButtonPress];
  }

  return v9;
}

- (BOOL)supportButtonPressForEntity:(id)a3
{
  v3 = [a3 keyPath];
  v4 = [v3 isEqualToString:@"root.general.analytics.sysdiagnose"];

  return v4;
}

- (id)inProgressButtonPressFutureForEntity:(id)a3
{
  v4 = [a3 keyPath];
  v5 = [v4 isEqualToString:@"root.general.analytics.sysdiagnose"];

  if (v5)
  {
    v6 = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)inProgressButtonPressFutureForKeyPath:(id)a3
{
  if ([a3 isEqualToString:@"root.general.analytics.sysdiagnose"])
  {
    v4 = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_handleButtonPress
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];

  if (v4)
  {
    v5 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      v20 = self;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Ignoring because previous SysdiagnoseCollection future is active", buf, 0x16u);
    }

    v7 = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];
  }

  else
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    v18 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    v12 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Sending Collect Sysdiagnose rapport message w/ request: %@", buf, 0xCu);
    }

    v13 = [(HFAccessorySettingDeviceOptionsAdapter *)self adapterUtility];
    v14 = [v13 requestSysdiagnose:v11 options:0];
    [(HFAccessorySettingDeviceOptionsAdapter *)self setInProgressSysdiagnoseCollectionFuture:v14];

    v7 = [(HFAccessorySettingDeviceOptionsAdapter *)self inProgressSysdiagnoseCollectionFuture];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_home
{
  v2 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  v3 = [v2 hf_home];

  return v3;
}

@end