@interface HUServiceDetailsStatusAndNotificationItem
- (BOOL)_isThermostatServiceSupportingAdaptiveTemperature;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsStatusAndNotificationItem

- (id)_subclass_updateWithOptions:(id)options
{
  v49 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  homeKitObject = [sourceServiceItem homeKitObject];

  v7 = homeKitObject;
  if ([v7 conformsToProtocol:&unk_28259DE80])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  hf_supportsHomeStatus = [v9 hf_supportsHomeStatus];
  v10 = MEMORY[0x277D144A0];
  sourceServiceItem2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v12 = [v10 cameraContainsMotionServiceItem:sourceServiceItem2];

  v13 = v7;
  if ([v13 conformsToProtocol:&unk_2825BD420])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  objc_opt_class();
  sourceServiceItem3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v17 = sourceServiceItem3;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  mediaAccessoryItemType = [v18 mediaAccessoryItemType];
  if (v18)
  {
    accessories = [v18 accessories];
    anyObject = [accessories anyObject];
    if ([anyObject conformsToProtocol:&unk_2825BD420])
    {
      v21 = anyObject;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v15 = v22;
  }

  hf_userNotificationSettings = [v15 hf_userNotificationSettings];
  v24 = (hf_userNotificationSettings == 0) | v12;

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  home = [(HUServiceDetailsAbstractItem *)self home];
  residentDevices = [home residentDevices];

  if (v24)
  {
    v30 = 0;
  }

  else if (hasOptedToHH2 && [residentDevices count])
  {
    v30 = 1;
  }

  else
  {
    v30 = hasOptedToHH2 ^ 1;
  }

  v31 = HFLogForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v44 = "[HUServiceDetailsStatusAndNotificationItem _subclass_updateWithOptions:]";
    v45 = 1024;
    v46 = hasOptedToHH2;
    v47 = 2048;
    v48 = [residentDevices count];
    _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, "%s hasOptedToHH2 = %{BOOL}d residents = %lu", buf, 0x1Cu);
  }

  if (v30)
  {
    v32 = hf_supportsHomeStatus;
    if (hf_supportsHomeStatus)
    {
      v33 = @"HUServiceDetailsStatusAndNotificationTitle";
    }

    else
    {
      v33 = @"HUNotificationsTitle";
    }

    v34 = _HULocalizedStringWithDefaultValue(v33, v33, 1);
    if ([(HUServiceDetailsStatusAndNotificationItem *)self _isThermostatServiceSupportingAdaptiveTemperature])
    {
      v35 = _HULocalizedStringWithDefaultValue(@"HUNotificationsTitle", @"HUNotificationsTitle", 1);

      v34 = v35;
    }
  }

  else
  {
    v34 = _HULocalizedStringWithDefaultValue(@"HUStatusTitle", @"HUStatusTitle", 1);
    v32 = hf_supportsHomeStatus;
  }

  [dictionary setObject:v34 forKeyedSubscript:*MEMORY[0x277D13F60]];
  [dictionary setObject:@"AccessoryDetails.Status" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  if ((v32 & 1) == 0 && (!v30 || ![(HUServiceDetailsAbstractItem *)self isService]&& ![(HUServiceDetailsAbstractItem *)self isNotificationSupportedCamera]&& ![(HUServiceDetailsAbstractItem *)self isAudioAnalysisSupportedDevice]))
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  if (v41 == 3)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v36 = MEMORY[0x277D2C900];
  v37 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
  v38 = [v36 futureWithResult:v37];

  return v38;
}

- (BOOL)_isThermostatServiceSupportingAdaptiveTemperature
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  sourceAccessory = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  home = [sourceAccessory home];
  if ([home hf_hasResidentCapableOfSupportingHomeActivityState])
  {
    sourceAccessory2 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
    if ([sourceAccessory2 supportsAdaptiveTemperatureAutomations])
    {
      supportsAdaptiveTemperatureAutomations = 1;
    }

    else
    {
      sourceAccessory3 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
      supportsAdaptiveTemperatureAutomations = [sourceAccessory3 supportsAdaptiveTemperatureAutomations];
    }
  }

  else
  {
    supportsAdaptiveTemperatureAutomations = 0;
  }

  return supportsAdaptiveTemperatureAutomations;
}

@end