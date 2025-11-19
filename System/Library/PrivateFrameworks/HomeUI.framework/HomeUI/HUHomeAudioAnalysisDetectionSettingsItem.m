@interface HUHomeAudioAnalysisDetectionSettingsItem
- (HUHomeAudioAnalysisDetectionSettingsItem)initWithDetectionType:(unint64_t)a3 home:(id)a4;
- (id)_localizedStringFromDetectionType:(unint64_t)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUHomeAudioAnalysisDetectionSettingsItem

- (HUHomeAudioAnalysisDetectionSettingsItem)initWithDetectionType:(unint64_t)a3 home:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUHomeAudioAnalysisDetectionSettingsItem;
  v8 = [(HUHomeAudioAnalysisDetectionSettingsItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_audioDetectionType = a3;
    objc_storeStrong(&v8->_home, a4);
  }

  return v9;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v23[5] = *MEMORY[0x277D85DE8];
  v4 = [(HUHomeAudioAnalysisDetectionSettingsItem *)self home];
  [v4 audioAnalysisClassifierOptions];

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
  v12 = [(HUHomeAudioAnalysisDetectionSettingsItem *)self home];
  v13 = [v11 setWithObject:v12];
  v23[3] = v13;
  v22[4] = *MEMORY[0x277D13EA8];
  v14 = [(HUHomeAudioAnalysisDetectionSettingsItem *)self home];
  v15 = [v14 hf_currentUserIsAdministrator];
  v16 = MEMORY[0x277CBEC38];
  if (v15)
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

- (id)_localizedStringFromDetectionType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HUAudioAnalysisEventSmokeAlarm", @"HUAudioAnalysisEventSmokeAlarm", a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end