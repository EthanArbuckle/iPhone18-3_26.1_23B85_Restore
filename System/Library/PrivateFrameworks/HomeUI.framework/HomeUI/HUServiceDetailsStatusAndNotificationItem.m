@interface HUServiceDetailsStatusAndNotificationItem
- (BOOL)_isThermostatServiceSupportingAdaptiveTemperature;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsStatusAndNotificationItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v6 = [v5 homeKitObject];

  v7 = v6;
  if ([v7 conformsToProtocol:&unk_28259DE80])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v42 = [v9 hf_supportsHomeStatus];
  v10 = MEMORY[0x277D144A0];
  v11 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v12 = [v10 cameraContainsMotionServiceItem:v11];

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
  v16 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v40 = [v18 mediaAccessoryItemType];
  if (v18)
  {
    v19 = [v18 accessories];
    v20 = [v19 anyObject];
    if ([v20 conformsToProtocol:&unk_2825BD420])
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v15 = v22;
  }

  v23 = [v15 hf_userNotificationSettings];
  v24 = (v23 == 0) | v12;

  v25 = [MEMORY[0x277D146E8] sharedDispatcher];
  v26 = [v25 homeManager];
  v27 = [v26 hasOptedToHH2];

  v28 = [(HUServiceDetailsAbstractItem *)self home];
  v29 = [v28 residentDevices];

  if (v24)
  {
    v30 = 0;
  }

  else if (v27 && [v29 count])
  {
    v30 = 1;
  }

  else
  {
    v30 = v27 ^ 1;
  }

  v31 = HFLogForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v44 = "[HUServiceDetailsStatusAndNotificationItem _subclass_updateWithOptions:]";
    v45 = 1024;
    v46 = v27;
    v47 = 2048;
    v48 = [v29 count];
    _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, "%s hasOptedToHH2 = %{BOOL}d residents = %lu", buf, 0x1Cu);
  }

  if (v30)
  {
    v32 = v42;
    if (v42)
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
    v32 = v42;
  }

  [v4 setObject:v34 forKeyedSubscript:*MEMORY[0x277D13F60]];
  [v4 setObject:@"AccessoryDetails.Status" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  if ((v32 & 1) == 0 && (!v30 || ![(HUServiceDetailsAbstractItem *)self isService]&& ![(HUServiceDetailsAbstractItem *)self isNotificationSupportedCamera]&& ![(HUServiceDetailsAbstractItem *)self isAudioAnalysisSupportedDevice]))
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  if (v41 == 3)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v36 = MEMORY[0x277D2C900];
  v37 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v38 = [v36 futureWithResult:v37];

  return v38;
}

- (BOOL)_isThermostatServiceSupportingAdaptiveTemperature
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  v4 = [v3 home];
  if ([v4 hf_hasResidentCapableOfSupportingHomeActivityState])
  {
    v5 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
    if ([v5 supportsAdaptiveTemperatureAutomations])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
      v6 = [v7 supportsAdaptiveTemperatureAutomations];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end