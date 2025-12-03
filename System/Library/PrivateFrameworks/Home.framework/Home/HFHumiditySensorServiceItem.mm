@interface HFHumiditySensorServiceItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFHumiditySensorServiceItem

- (id)_subclass_updateWithOptions:(id)options
{
  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CCF850];
  optionsCopy = options;
  v8 = [v5 setWithObject:v6];
  v9 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v8 options:optionsCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HFHumiditySensorServiceItem__subclass_updateWithOptions___block_invoke;
  v12[3] = &unk_277DF49E8;
  v12[4] = self;
  v12[5] = a2;
  v10 = [v9 flatMap:v12];

  return v10;
}

id __59__HFHumiditySensorServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF850]];

  v6 = [v5 characteristic];
  v7 = [v5 valueWithExpectedClass:objc_opt_class()];
  v8 = [v3 standardResults];

  v9 = [v8 mutableCopy];
  v10 = [*(a1 + 32) service];
  v11 = [v10 accessory];

  if ([v11 hf_isHomePod] && ((objc_msgSend(v11, "hf_isReadyToInstallSoftwareUpdate") & 1) != 0 || objc_msgSend(v11, "hf_isSoftwareUpdateInProgress")))
  {
    v12 = HFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = NSStringFromSelector(*(a1 + 40));
      v30 = 138412546;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Clearing display elements for SU for Homepod Humidity Sensor", &v30, 0x16u);
    }

    [v9 setObject:0 forKeyedSubscript:@"description"];
    [v9 setObject:0 forKeyedSubscript:@"detailedControlDescription"];
    [v9 setObject:0 forKeyedSubscript:@"badge"];
    [v9 setObject:0 forKeyedSubscript:@"descriptionBadge"];
  }

  if (v7)
  {
    v15 = [*(a1 + 32) descriptionForCharacteristic:v6 withValue:v7];
    if (v15)
    {
      v16 = [v9 objectForKeyedSubscript:@"description"];

      if (!v16)
      {
        [v9 setObject:v15 forKeyedSubscript:@"description"];
      }
    }

    v17 = [*(a1 + 32) controlDescriptionForCharacteristic:v6 withValue:v7];
    [v9 na_safeSetObject:v17 forKey:@"controlDescription"];
  }

  v18 = [*(a1 + 32) service];
  v19 = [v18 accessory];
  v20 = [v19 isCalibrating];

  if (v20)
  {
    v21 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionCalibrating", @"HFServiceDescriptionCalibrating", 1);
    [v9 setObject:v21 forKeyedSubscript:@"description"];

    v22 = HFLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v24 = NSStringFromSelector(*(a1 + 40));
      v30 = 138412802;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@ Sensor calibrating, resetting potential error descriptions: %@", &v30, 0x20u);
    }

    [v9 setObject:0 forKeyedSubscript:@"errorDescription"];
    [v9 setObject:0 forKeyedSubscript:@"longErrorDescription"];
  }

  [*(a1 + 32) applyInflectionToDescriptions:v9];
  v25 = MEMORY[0x277D2C900];
  v26 = [HFItemUpdateOutcome outcomeWithResults:v9];
  v27 = [v25 futureWithResult:v26];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

@end