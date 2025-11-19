@interface HFTemperatureSensorServiceItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFTemperatureSensorServiceItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CCF868];
  v7 = a3;
  v8 = [v5 setWithObject:v6];
  v9 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v8 options:v7];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HFTemperatureSensorServiceItem__subclass_updateWithOptions___block_invoke;
  v12[3] = &unk_277DF49E8;
  v12[4] = self;
  v12[5] = a2;
  v10 = [v9 flatMap:v12];

  return v10;
}

id __62__HFTemperatureSensorServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF868]];

  v6 = [v5 characteristic];
  v7 = [v5 valueWithExpectedClass:objc_opt_class()];
  v8 = [v3 standardResults];

  v9 = [v8 mutableCopy];
  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"tempreatureUnitDependency"];
  v10 = [*(a1 + 32) service];
  v11 = [v10 accessory];
  v12 = [v11 isCalibrating];

  if (v12)
  {
    v13 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionCalibrating", @"HFServiceDescriptionCalibrating", 1);
    [v9 setObject:v13 forKeyedSubscript:@"description"];

    v14 = HFLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = NSStringFromSelector(*(a1 + 40));
      v33 = 138412802;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Sensor calibrating, resetting potential error descriptions: %@", &v33, 0x20u);
    }

    [v9 setObject:0 forKeyedSubscript:@"errorDescription"];
    [v9 setObject:0 forKeyedSubscript:@"longErrorDescription"];
  }

  if (v7)
  {
    v17 = [*(a1 + 32) service];
    v18 = [v17 accessory];

    if ([v18 hf_isHomePod] && ((objc_msgSend(v18, "hf_isReadyToInstallSoftwareUpdate") & 1) != 0 || objc_msgSend(v18, "hf_isSoftwareUpdateInProgress")))
    {
      v19 = HFLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v21 = NSStringFromSelector(*(a1 + 40));
        v33 = 138412546;
        v34 = v20;
        v35 = 2112;
        v36 = v21;
        _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@ Clearing display elements for SU for Homepod Temperature Sensor", &v33, 0x16u);
      }

      [v9 setObject:0 forKeyedSubscript:@"description"];
      [v9 setObject:0 forKeyedSubscript:@"detailedControlDescription"];
      [v9 setObject:0 forKeyedSubscript:@"badge"];
      [v9 setObject:0 forKeyedSubscript:@"descriptionBadge"];
    }

    v22 = [v9 objectForKeyedSubscript:@"description"];

    if (!v22)
    {
      v23 = +[HFFormatterManager sharedInstance];
      v24 = [v23 temperatureFormatter];

      [v24 setInputIsCelsius:1];
      v25 = [v24 stringForObjectValue:v7];
      [v9 setObject:v25 forKeyedSubscript:@"description"];
    }

    v26 = [*(a1 + 32) controlDescriptionForCharacteristic:v6 withValue:v7];
    [v9 na_safeSetObject:v26 forKey:@"controlDescription"];

    [*(a1 + 32) applyInflectionToDescriptions:v9];
    v27 = MEMORY[0x277D2C900];
    v28 = [HFItemUpdateOutcome outcomeWithResults:v9];
    v29 = [v27 futureWithResult:v28];
  }

  else
  {
    v30 = MEMORY[0x277D2C900];
    v18 = [HFItemUpdateOutcome outcomeWithResults:v9];
    v29 = [v30 futureWithResult:v18];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v29;
}

@end