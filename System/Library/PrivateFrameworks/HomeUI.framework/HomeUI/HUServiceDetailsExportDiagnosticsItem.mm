@interface HUServiceDetailsExportDiagnosticsItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsExportDiagnosticsItem

- (id)_subclass_updateWithOptions:(id)options
{
  v39[1] = *MEMORY[0x277D85DE8];
  v38 = *MEMORY[0x277D13F60];
  v4 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsExportAnalyticsKey", @"HUServiceDetailsExportAnalyticsKey", 1);
  v39[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v6 = [v5 mutableCopy];

  v7 = HFPreferencesBooleanValueForKey();
  v8 = MEMORY[0x277CCABB0];
  sourceAccessory = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  v10 = [sourceAccessory hf_isHomePod] ^ 1;
  if (v7 == 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v8 numberWithInt:v11];
  v13 = *MEMORY[0x277D13FB8];
  [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  sourceAccessory2 = [(HUServiceDetailsAbstractItem *)self sourceAccessory];
  mediaProfile = [sourceAccessory2 mediaProfile];

  hf_settingsAdapterManager = [mediaProfile hf_settingsAdapterManager];
  v17 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13320]];
  if ([v17 conformsToProtocol:&unk_2825BD7E0])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = v19;
  if ([v20 conformsToProtocol:&unk_2825BD7E0])
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = [v22 inProgressButtonPressFutureForKeyPath:*MEMORY[0x277D13960]];

  [v6 setObject:v23 forKeyedSubscript:*MEMORY[0x277D13D30]];
  if (v23)
  {
    v24 = [v23 isFinished] ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = [MEMORY[0x277CCABB0] numberWithBool:v24];
  [v6 setObject:v25 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v7 == 2;
    v28 = [v6 objectForKeyedSubscript:v13];
    v33[0] = 67109634;
    v33[1] = v27;
    v34 = 2112;
    v35 = v28;
    v36 = 1024;
    v37 = v24;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "User has the HomePod Sysdiagnose profile installed: %{BOOL}d, Show export diagnostics button: %@, isOperationInProgress: %{BOOL}d", v33, 0x18u);
  }

  v29 = MEMORY[0x277D2C900];
  v30 = [MEMORY[0x277D14780] outcomeWithResults:v6];
  v31 = [v29 futureWithResult:v30];

  return v31;
}

@end