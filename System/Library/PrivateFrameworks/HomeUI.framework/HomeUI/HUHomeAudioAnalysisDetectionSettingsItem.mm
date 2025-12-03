@interface HUHomeAudioAnalysisDetectionSettingsItem
- (HUHomeAudioAnalysisDetectionSettingsItem)initWithDetectionType:(unint64_t)type home:(id)home;
- (id)_localizedStringFromDetectionType:(unint64_t)type;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUHomeAudioAnalysisDetectionSettingsItem

- (HUHomeAudioAnalysisDetectionSettingsItem)initWithDetectionType:(unint64_t)type home:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUHomeAudioAnalysisDetectionSettingsItem;
  v8 = [(HUHomeAudioAnalysisDetectionSettingsItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_audioDetectionType = type;
    objc_storeStrong(&v8->_home, home);
  }

  return v9;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v23[5] = *MEMORY[0x277D85DE8];
  home = [(HUHomeAudioAnalysisDetectionSettingsItem *)self home];
  [home audioAnalysisClassifierOptions];

  v22[0] = *MEMORY[0x277D13F60];
  v5 = [(HUHomeAudioAnalysisDetectionSettingsItem *)self _localizedStringFromDetectionType:[(HUHomeAudioAnalysisDetectionSettingsItem *)self audioDetectionType]];
  v23[0] = v5;
  v22[1] = *MEMORY[0x277D14068];
  v6 = MEMORY[0x277CCABB0];
  [(HUHomeAudioAnalysisDetectionSettingsItem *)self audioDetectionType];
  v7 = [v6 numberWithInteger:HFPrimaryStateFromBOOL()];
  v8 = *MEMORY[0x277D13FB8];
  v9 = MEMORY[0x277CBEC28];
  v23[1] = v7;
  v23[2] = MEMORY[0x277CBEC28];
  v10 = *MEMORY[0x277D13DA8];
  v22[2] = v8;
  v22[3] = v10;
  v11 = MEMORY[0x277CBEB98];
  home2 = [(HUHomeAudioAnalysisDetectionSettingsItem *)self home];
  v13 = [v11 setWithObject:home2];
  v23[3] = v13;
  v22[4] = *MEMORY[0x277D13EA8];
  home3 = [(HUHomeAudioAnalysisDetectionSettingsItem *)self home];
  hf_currentUserIsAdministrator = [home3 hf_currentUserIsAdministrator];
  v16 = MEMORY[0x277CBEC38];
  if (hf_currentUserIsAdministrator)
  {
    v16 = v9;
  }

  v23[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = MEMORY[0x277D2C900];
  v19 = [MEMORY[0x277D14780] outcomeWithResults:v17];
  v20 = [v18 futureWithResult:v19];

  return v20;
}

- (id)_localizedStringFromDetectionType:(unint64_t)type
{
  if (type == 1)
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HUAudioAnalysisEventSmokeAlarm", @"HUAudioAnalysisEventSmokeAlarm", type);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end