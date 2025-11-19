@interface HFAccessoryNetworkInfoItem
- (BOOL)_hiddenForType:(unint64_t)a3;
- (BOOL)_showSignalStrength:(unint64_t)a3;
- (BOOL)supportsWiFiStrengthDisplay;
- (HFAccessoryNetworkInfoItem)initWithAccessory:(id)a3 home:(id)a4;
- (id)_currentDeviceNetworkSSID;
- (id)_extractWiFiInfo:(id)a3;
- (id)_localizedDescriptionForType:(unint64_t)a3;
- (id)_localizedTitleForType:(unint64_t)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)_updateAccessoryWifiInfo;
- (id)accessoryMACAddress;
- (id)accessoryNetworkSSID;
- (int64_t)_getWiFiStrength:(id)a3 forFastUpdate:(BOOL)a4;
- (unint64_t)_nextNetworkInfoType;
- (void)toggleNetworkInfoType;
@end

@implementation HFAccessoryNetworkInfoItem

- (HFAccessoryNetworkInfoItem)initWithAccessory:(id)a3 home:(id)a4
{
  v8.receiver = self;
  v8.super_class = HFAccessoryNetworkInfoItem;
  v4 = [(HFAccessoryInfoItem *)&v8 initWithAccessory:a3 infoType:3 home:a4];
  v5 = v4;
  if (v4)
  {
    v4->_networkInfoType = 2;
    [(HFAccessoryNetworkInfoItem *)v4 setFakeNetworkStrength:-1];
    [(HFAccessoryNetworkInfoItem *)v5 setInitialSetup:1];
    v6 = [(HFAccessoryNetworkInfoItem *)v5 _updateAccessoryWifiInfo];
  }

  return v5;
}

- (void)toggleNetworkInfoType
{
  v3 = [(HFAccessoryNetworkInfoItem *)self _nextNetworkInfoType];

  [(HFAccessoryNetworkInfoItem *)self setNetworkInfoType:v3];
}

- (BOOL)supportsWiFiStrengthDisplay
{
  v3 = [(HFAccessoryInfoItem *)self accessory];
  v4 = [v3 home];
  v5 = [v4 hf_currentUserIsAdministrator];

  if (!v5)
  {
    return 0;
  }

  v6 = [(HFAccessoryInfoItem *)self accessory];
  v7 = [v6 hf_isFirstPartyAccessory];

  if (v7)
  {
    v8 = [(HFAccessoryInfoItem *)self accessory];
    v9 = [v8 softwareVersion];
    v10 = [v9 hf_canProvideWifiStrength];
    goto LABEL_7;
  }

  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v8 = [(HFAccessoryNetworkInfoItem *)self wifiInfo];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v9 = [(HFAccessoryNetworkInfoItem *)self wifiInfo];
  v11 = [v9 objectForKeyedSubscript:@"HMAccessoryLinkQualityNetworkSupported"];
  v10 = v11 != 0;

LABEL_7:
LABEL_8:

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_initWeak(&location, self);
  v21.receiver = self;
  v21.super_class = HFAccessoryNetworkInfoItem;
  v6 = [(HFAccessoryInfoItem *)&v21 _subclass_updateWithOptions:v5];
  v23[0] = v6;
  v7 = [(HFAccessoryNetworkInfoItem *)self _updateAccessoryWifiInfo];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__HFAccessoryNetworkInfoItem__subclass_updateWithOptions___block_invoke;
  v20[3] = &unk_277DF3FD0;
  v20[4] = self;
  v8 = [v7 flatMap:v20];
  v23[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

  v10 = MEMORY[0x277D2C900];
  v11 = [MEMORY[0x277D2C938] immediateScheduler];
  v12 = [v10 combineAllFutures:v9 scheduler:v11];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__HFAccessoryNetworkInfoItem__subclass_updateWithOptions___block_invoke_2;
  v17[3] = &unk_277DF8750;
  objc_copyWeak(v19, &location);
  v13 = v5;
  v18 = v13;
  v19[1] = a2;
  v14 = [v12 flatMap:v17];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __58__HFAccessoryNetworkInfoItem__subclass_updateWithOptions___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) initialSetup])
  {
    [*(a1 + 32) toggleNetworkInfoType];
    [*(a1 + 32) setInitialSetup:0];
  }

  v2 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v2;
}

id __58__HFAccessoryNetworkInfoItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 firstObject];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v6 mutableCopy];
  v9 = [WeakRetained _localizedTitleForType:{objc_msgSend(WeakRetained, "networkInfoType")}];
  [v8 setObject:v9 forKeyedSubscript:@"title"];

  v10 = [WeakRetained _localizedDescriptionForType:{objc_msgSend(WeakRetained, "networkInfoType")}];
  [v8 setObject:v10 forKeyedSubscript:@"description"];

  LOBYTE(v10) = [WeakRetained _hiddenForType:{objc_msgSend(WeakRetained, "networkInfoType")}];
  v11 = [WeakRetained home];
  LOBYTE(v10) = [v11 hf_currentUserIsRestrictedGuest] | v10;

  v12 = [MEMORY[0x277CCABB0] numberWithBool:v10 & 1];
  [v8 setObject:v12 forKeyedSubscript:@"hidden"];

  [v8 setObject:@"AccessoryDetails.NetworkInfo" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  v13 = MEMORY[0x277CCABB0];
  v14 = +[HFAccessoryInfoDetailsItemProvider preferredCharacteristicOrderArray];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "indexOfObject:", @"HFAccessoryInfoTypeNetworkPreferredOrderKey"}];
  [v8 setObject:v15 forKeyedSubscript:@"accessoryInfoDetailPreferredOrder"];

  if (![WeakRetained _showSignalStrength:{objc_msgSend(WeakRetained, "networkInfoType")}])
  {
    goto LABEL_7;
  }

  v16 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    v18 = [WeakRetained wifiInfo];
    v19 = [WeakRetained _getSignalStrengthIcon:v18 forFastUpdate:1];
    [v8 setObject:v19 forKeyedSubscript:@"icon"];

LABEL_7:
    v20 = [MEMORY[0x277D2C900] futureWithResult:v8];
    goto LABEL_9;
  }

  v21 = [WeakRetained accessory];
  v22 = [WeakRetained _extractWiFiInfo:v21];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __58__HFAccessoryNetworkInfoItem__subclass_updateWithOptions___block_invoke_3;
  v31[3] = &unk_277DF8700;
  v31[4] = WeakRetained;
  v23 = v8;
  v32 = v23;
  v33 = 0;
  v24 = [v22 flatMap:v31];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __58__HFAccessoryNetworkInfoItem__subclass_updateWithOptions___block_invoke_4;
  v27[3] = &unk_277DF8728;
  v25 = *(a1 + 48);
  v27[4] = WeakRetained;
  v29 = v25;
  v28 = v23;
  v30 = 0;
  v20 = [v24 recover:v27];

LABEL_9:

  return v20;
}

uint64_t __58__HFAccessoryNetworkInfoItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setWifiInfo:v4];
  v5 = [*(a1 + 32) _getSignalStrengthIcon:v4 forFastUpdate:*(a1 + 48)];

  [*(a1 + 40) setObject:v5 forKeyedSubscript:@"icon"];
  v6 = MEMORY[0x277D2C900];
  v7 = *(a1 + 40);

  return [v6 futureWithResult:v7];
}

id __58__HFAccessoryNetworkInfoItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 48));
    v13 = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ Failed to get wifiInfo with error %@", &v13, 0x20u);
  }

  v7 = *(a1 + 32);
  v8 = [v7 wifiInfo];
  v9 = [v7 _getSignalStrengthIcon:v8 forFastUpdate:*(a1 + 56)];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:@"icon"];

  v10 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 40)];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (unint64_t)_nextNetworkInfoType
{
  v3 = [(HFAccessoryNetworkInfoItem *)self networkInfoType];
  do
  {
    if (!v3)
    {
      v4 = [(HFAccessoryNetworkInfoItem *)self fakeNetworkStrength];
      [(HFAccessoryNetworkInfoItem *)self setFakeNetworkStrength:~(5 * ((v4 + 2) / 5)) + v4 + 2];
    }

    v3 = (v3 + 1) % 3;
  }

  while ([(HFAccessoryNetworkInfoItem *)self _hiddenForType:v3]&& v3 != [(HFAccessoryNetworkInfoItem *)self networkInfoType]);
  return v3;
}

- (id)_localizedTitleForType:(unint64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = HFLocalizedWiFiString(off_277DF87E8[a3]);
  }

  return v4;
}

- (id)_localizedDescriptionForType:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      v7 = [(HFAccessoryNetworkInfoItem *)self accessoryNetworkSSID];
      v4 = v7;
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryInfoTypeNetworkNotConnected", @"HFAccessoryInfoTypeNetworkNotConnected", 1);
      }

      v3 = v8;
      goto LABEL_11;
    case 2uLL:
      v4 = [(HFAccessoryInfoItem *)self accessory];
      v5 = [v4 hf_networkConfigurationProfiles];
      v6 = [v5 firstObject];
      v3 = [v6 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];

LABEL_11:
      break;
    case 1uLL:
      v3 = [(HFAccessoryNetworkInfoItem *)self accessoryMACAddress];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (BOOL)_showSignalStrength:(unint64_t)a3
{
  v5 = [(HFAccessoryNetworkInfoItem *)self supportsWiFiStrengthDisplay];
  v6 = 0;
  if (a3 || !v5)
  {
    return v6;
  }

  v7 = [(HFAccessoryInfoItem *)self accessory];
  v8 = [v7 hf_fakeNetworkStrengthError];

  if (v8)
  {
    return 1;
  }

  v9 = [(HFAccessoryNetworkInfoItem *)self accessoryNetworkSSID];
  v10 = [(HFAccessoryNetworkInfoItem *)self _currentDeviceNetworkSSID];
  v11 = [v9 isEqualToString:v10];

  if (!v11)
  {
    v14 = [(HFAccessoryNetworkInfoItem *)self wifiInfo];
    v6 = v14 != 0;
LABEL_9:

    return v6;
  }

  v12 = [(HFAccessoryInfoItem *)self accessory];
  v13 = [v12 mediaProfile];
  if ([v13 hf_isReachable])
  {
    v6 = 1;
  }

  else
  {
    v15 = [(HFAccessoryNetworkInfoItem *)self wifiInfo];
    v6 = v15 != 0;
  }

  if (_os_feature_enabled_impl())
  {
    v16 = [(HFAccessoryInfoItem *)self accessory];
    v17 = [v16 hf_isHomePod];

    if ((v17 & 1) == 0)
    {
      v14 = [(HFAccessoryInfoItem *)self accessory];
      if ([v14 isReachable])
      {
        v19 = [(HFAccessoryNetworkInfoItem *)self wifiInfo];
        v6 = v19 != 0;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_9;
    }
  }

  return v6;
}

- (int64_t)_getWiFiStrength:(id)a3 forFastUpdate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HFAccessoryInfoItem *)self accessory];
  v8 = [v7 hf_fakeNetworkStrengthError];

  if (v8)
  {
    v9 = [(HFAccessoryNetworkInfoItem *)self fakeNetworkStrength];
  }

  else if (v6)
  {
    objc_opt_class();
    v10 = [v6 objectForKeyedSubscript:@"num3BarsRSSI"];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v9 = [v12 integerValue];
    }

    else
    {
      objc_opt_class();
      v13 = [v6 objectForKeyedSubscript:@"RSSI"];
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v15)
      {
        v16 = [v15 integerValue];
        v17 = 2;
        if (v16 >= -70)
        {
          v17 = 3;
        }

        if (v16 >= -80)
        {
          v9 = v17;
        }

        else
        {
          v9 = 1;
        }
      }

      else if (_os_feature_enabled_impl() && ((objc_opt_class(), [v6 objectForKeyedSubscript:@"HMAccessoryLinkQuality"], v18 = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) == 0) ? (v19 = 0) : (v19 = v18), v20 = v19, v18, v20))
      {
        if ([v20 integerValue] <= 2)
        {
          if ([v20 integerValue] > 1)
          {
            v9 = 2;
          }

          else
          {
            v9 = [v20 integerValue];
          }
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = -1;
      }
    }
  }

  else
  {
    v9 = v4 - 1;
  }

  return v9;
}

- (id)_updateAccessoryWifiInfo
{
  v4 = [(HFAccessoryInfoItem *)self accessory];
  v5 = [v4 hf_isFirstPartyAccessory];

  if ((v5 & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = [(HFAccessoryNetworkInfoItem *)self debounceDate];
  if (v6)
  {
    v7 = v6;
    v8 = [(HFAccessoryNetworkInfoItem *)self debounceDate];
    [v8 timeIntervalSinceNow];
    if (v9 >= 5.0)
    {
    }

    else
    {
      v10 = [(HFAccessoryNetworkInfoItem *)self initialSetup];

      if (!v10)
      {
LABEL_6:
        v11 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC10]];
        goto LABEL_9;
      }
    }
  }

  v12 = [MEMORY[0x277CBEAA8] now];
  [(HFAccessoryNetworkInfoItem *)self setDebounceDate:v12];

  objc_initWeak(&location, self);
  v13 = [(HFAccessoryInfoItem *)self accessory];
  v14 = [(HFAccessoryNetworkInfoItem *)self _extractWiFiInfo:v13];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__HFAccessoryNetworkInfoItem__updateAccessoryWifiInfo__block_invoke;
  v18[3] = &unk_277DF8778;
  objc_copyWeak(v19, &location);
  v19[1] = a2;
  v15 = [v14 flatMap:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__HFAccessoryNetworkInfoItem__updateAccessoryWifiInfo__block_invoke_55;
  v17[3] = &unk_277DF87A0;
  v17[4] = self;
  v17[5] = a2;
  v11 = [v15 recover:v17];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
LABEL_9:

  return v11;
}

id __54__HFAccessoryNetworkInfoItem__updateAccessoryWifiInfo__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3 && [v3 count])
  {
    [WeakRetained setWifiInfo:v3];
  }

  v5 = HFLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = [WeakRetained accessory];
    v8 = [v7 name];
    v9 = [WeakRetained accessory];
    v10 = [v9 uniqueIdentifier];
    v11 = [WeakRetained wifiInfo];
    v15 = 138413570;
    v16 = WeakRetained;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v3;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ received result for accessory %@[%@]: result: %@, wifiInfo: %@", &v15, 0x3Eu);
  }

  v12 = [MEMORY[0x277D2C900] futureWithResult:v3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __54__HFAccessoryNetworkInfoItem__updateAccessoryWifiInfo__block_invoke_55(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ _extractWifiInfo failed with error: %@", &v10, 0x20u);
  }

  v7 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC10]];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_extractWiFiInfo:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 hf_isHomePod])
  {
    v6 = [v5 mediaProfile];
    v7 = [v6 hf_settingsAdapterManager];
    v8 = [v7 adapterForIdentifier:@"DeviceOptions"];

    v9 = HFLogForCategory(0);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412802;
        v31 = self;
        v32 = 2112;
        v33 = v11;
        v34 = 2112;
        v35 = v6;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Preparing to send extract WiFi message to accessory: %@", buf, 0x20u);
      }

      v12 = [v8 extractWiFiInfo];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(a2);
        v25 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25];
        *buf = 138413058;
        v31 = self;
        v32 = 2112;
        v33 = v24;
        v34 = 2112;
        v35 = v5;
        v36 = 2112;
        v37 = v25;
        _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "%@:%@ Device options adapter missing for accessory %@: %@", buf, 0x2Au);
      }

      v12 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC10]];
    }

    v20 = v12;
  }

  else
  {
    v13 = _os_feature_enabled_impl();
    v14 = MEMORY[0x277D2C900];
    if (v13)
    {
      v15 = objc_alloc_init(MEMORY[0x277D2C900]);
      v16 = HFLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = NSStringFromSelector(a2);
        *buf = 138412802;
        v31 = self;
        v32 = 2112;
        v33 = v17;
        v34 = 2112;
        v35 = v5;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@ Preparing to call extract WiFi api to homekit for accessory: %@", buf, 0x20u);
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __47__HFAccessoryNetworkInfoItem__extractWiFiInfo___block_invoke;
      v26[3] = &unk_277DF87C8;
      v26[4] = self;
      v29 = a2;
      v27 = v5;
      v18 = v15;
      v28 = v18;
      [v27 queryLinkQualityWithCompletion:v26];
      v19 = v28;
      v20 = v18;
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hf_errorWithCode:38];
      v20 = [v14 futureWithError:v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

void __47__HFAccessoryNetworkInfoItem__extractWiFiInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = *(a1 + 40);
      v20 = 138413058;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v6;
      v11 = "%@:%@ Failed to extract WiFi info for accessory: %@ error: %@";
LABEL_8:
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, v11, &v20, 0x2Au);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (([v5 supported] & 1) == 0)
  {
    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v9 = NSStringFromSelector(*(a1 + 56));
      v18 = *(a1 + 40);
      v20 = 138413058;
      v21 = v17;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = 0;
      v11 = "%@:%@ WiFi info is not supported for accessory: %@ error: %@";
      goto LABEL_8;
    }

LABEL_9:

    [*(a1 + 48) finishWithResult:MEMORY[0x277CBEC10]];
    goto LABEL_10;
  }

  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "linkQuality")}];
  [v12 setObject:v13 forKeyedSubscript:@"HMAccessoryLinkQuality"];

  v14 = [v5 macAddress];
  [v12 setObject:v14 forKeyedSubscript:@"HMAccessoryLinkQualityMacAddress"];

  v15 = [v5 networkName];
  [v12 setObject:v15 forKeyedSubscript:@"HMAccessoryLinkQualityNetworkName"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "supported")}];
  [v12 setObject:v16 forKeyedSubscript:@"HMAccessoryLinkQualityNetworkSupported"];

  [*(a1 + 48) finishWithResult:v12];
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_currentDeviceNetworkSSID
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(HFAccessoryNetworkInfoItem *)self forceCurrentDeviceNetworkSSID];

  if (v4)
  {
    v5 = [(HFAccessoryNetworkInfoItem *)self forceCurrentDeviceNetworkSSID];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:3];
    [v6 resume];
    v7 = [v6 networkName];
    v5 = v7;
    if (!v6 || ![v7 length])
    {
      v8 = HFLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        v12 = [v6 networkName];
        v13 = 138413058;
        v14 = self;
        v15 = 2112;
        v16 = v11;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v12;
        _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@:%@ Can't find WiFi network SSID name: interface = %@, name = %@", &v13, 0x2Au);
      }
    }

    [v6 invalidate];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)accessoryNetworkSSID
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 diagnosticInfoManager];
  v5 = [(HFAccessoryInfoItem *)self accessory];
  v6 = [v4 wifiNetworkInfoForAccessory:v5];
  v7 = [v6 SSID];

  LODWORD(v4) = _os_feature_enabled_impl();
  v8 = [(HFAccessoryInfoItem *)self accessory];
  v9 = [v8 hf_isFirstPartyAccessory];

  if (v4)
  {
    if (!v9)
    {
      v10 = [(HFAccessoryNetworkInfoItem *)self wifiInfo];

      if (v10)
      {
        objc_opt_class();
        v11 = [(HFAccessoryNetworkInfoItem *)self wifiInfo];
        v12 = [v11 objectForKeyedSubscript:@"HMAccessoryLinkQualityNetworkName"];
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_15;
    }

LABEL_9:
    v15 = [(HFAccessoryInfoItem *)self accessory];
    v16 = [v15 wifiNetworkInfo];
    v17 = [v16 SSID];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v7;
    }

    v14 = v19;

    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_9;
  }

  v14 = v7;
LABEL_15:

  return v14;
}

- (id)accessoryMACAddress
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 diagnosticInfoManager];
  v5 = [(HFAccessoryInfoItem *)self accessory];
  v6 = [v4 wifiNetworkInfoForAccessory:v5];
  v7 = [v6 MACAddress];

  LODWORD(v4) = _os_feature_enabled_impl();
  v8 = [(HFAccessoryInfoItem *)self accessory];
  v9 = [v8 hf_isFirstPartyAccessory];

  if (v4)
  {
    if (!v9)
    {
      objc_opt_class();
      v10 = [(HFAccessoryNetworkInfoItem *)self wifiInfo];
      v11 = [v10 objectForKeyedSubscript:@"HMAccessoryLinkQualityMacAddress"];
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      goto LABEL_13;
    }

LABEL_8:
    v14 = [(HFAccessoryInfoItem *)self accessory];
    v15 = [v14 wifiNetworkInfo];
    v16 = [v15 MACAddress];
    v17 = [v16 formattedString];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [v7 formattedString];
    }

    v13 = v19;

    goto LABEL_13;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v13 = [v7 formattedString];
LABEL_13:

  return v13;
}

- (BOOL)_hiddenForType:(unint64_t)a3
{
  v5 = [(HFAccessoryNetworkInfoItem *)self _localizedDescriptionForType:?];
  v6 = [v5 length];

  if (!v6)
  {
    return 1;
  }

  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v9 = [(HFAccessoryInfoItem *)self accessory];
      v10 = [v9 home];
      if (![v10 hf_isNetworkCredentialManagementEnabled])
      {
        v13 = [(HFAccessoryInfoItem *)self accessory];
        v14 = [v13 hf_hasManagedNetworkCredential];

        return !v14;
      }
    }

    return 0;
  }

  if (!_os_feature_enabled_impl())
  {
    v11 = [(HFAccessoryInfoItem *)self accessory];
    v12 = [v11 wifiNetworkInfo];

    return !v12;
  }

  v7 = [(HFAccessoryNetworkInfoItem *)self wifiInfo];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v15 = [(HFAccessoryInfoItem *)self accessory];
    v16 = [v15 wifiNetworkInfo];
    v8 = v16 == 0;
  }

  return v8;
}

@end