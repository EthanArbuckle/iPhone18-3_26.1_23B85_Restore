@interface HUAudioAnalysisDetectionSettingsItem
- (HUAudioAnalysisDetectionSettingsItem)initWithDetectionType:(unint64_t)a3 accessory:(id)a4;
- (id)_localizedStringFromDetectionType:(unint64_t)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUAudioAnalysisDetectionSettingsItem

- (HUAudioAnalysisDetectionSettingsItem)initWithDetectionType:(unint64_t)a3 accessory:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUAudioAnalysisDetectionSettingsItem;
  v8 = [(HUAudioAnalysisDetectionSettingsItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_audioDetectionType = a3;
    objc_storeStrong(&v8->_accessory, a4);
  }

  return v9;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v25[5] = *MEMORY[0x277D85DE8];
  v4 = [(HUAudioAnalysisDetectionSettingsItem *)self accessory];
  v5 = [v4 audioAnalysisEventBulletinBoardNotification];
  [v5 options];

  v24[0] = *MEMORY[0x277D13F60];
  v6 = [(HUAudioAnalysisDetectionSettingsItem *)self _localizedStringFromDetectionType:[(HUAudioAnalysisDetectionSettingsItem *)self audioDetectionType]];
  v25[0] = v6;
  v24[1] = *MEMORY[0x277D14068];
  v7 = MEMORY[0x277CCABB0];
  [(HUAudioAnalysisDetectionSettingsItem *)self audioDetectionType];
  v8 = [v7 numberWithInteger:HFPrimaryStateFromBOOL()];
  v9 = *MEMORY[0x277D13FB8];
  v10 = MEMORY[0x277CBEC28];
  v25[1] = v8;
  v25[2] = MEMORY[0x277CBEC28];
  v11 = *MEMORY[0x277D13DA8];
  v24[2] = v9;
  v24[3] = v11;
  v12 = MEMORY[0x277CBEB98];
  v13 = [(HUAudioAnalysisDetectionSettingsItem *)self accessory];
  v14 = [v12 setWithObject:v13];
  v25[3] = v14;
  v24[4] = *MEMORY[0x277D13EA8];
  v15 = [MEMORY[0x277D146E8] sharedDispatcher];
  v16 = [v15 home];
  v17 = [v16 hf_currentUserIsAdministrator];
  v18 = MEMORY[0x277CBEC38];
  if (v17)
  {
    v18 = v10;
  }

  v25[4] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];

  v20 = MEMORY[0x277D2C900];
  v21 = [MEMORY[0x277D14780] outcomeWithResults:v19];
  v22 = [v20 futureWithResult:v21];

  return v22;
}

- (id)_localizedStringFromDetectionType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = @"HUAudioAnalysisEventSmokeAlarm";
LABEL_5:
    v5 = _HULocalizedStringWithDefaultValue(v4, v4, 1);

    return v5;
  }

  if (a3 == 2)
  {
    v4 = @"HUAudioAnalysisEventCarbonMonoxideAlarm";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

@end