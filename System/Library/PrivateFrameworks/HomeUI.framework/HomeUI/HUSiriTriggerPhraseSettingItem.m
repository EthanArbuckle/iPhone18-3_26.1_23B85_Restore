@interface HUSiriTriggerPhraseSettingItem
- (HUSiriTriggerPhraseSettingItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)description;
@end

@implementation HUSiriTriggerPhraseSettingItem

- (HUSiriTriggerPhraseSettingItem)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUSiriTriggerPhraseSettingItem;
  v6 = [(HUSiriTriggerPhraseSettingItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CBEB58];
  v7 = [(HUSiriTriggerPhraseSettingItem *)self home];
  v8 = [v7 hf_allHomePodsOrStereoPairs];
  v9 = [v6 setWithArray:v8];

  v10 = [(HUSiriTriggerPhraseSettingItem *)self home];
  v11 = [v10 hf_siriEndPointAccessories];
  [v9 addObjectsFromArray:v11];

  v12 = [(HUSiriTriggerPhraseSettingItem *)self home];
  if ([v12 siriPhraseOptions] == 3)
  {
    v3 = @"HUJustSiriOrHeySiri_Home_Level_Setting_Title";
    v13 = [(HUSiriTriggerPhraseSettingItem *)self home];
    v14 = [v13 hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage];

    if (v14)
    {
      v15 = @"HUJustSiriOrHeySiri_Home_Level_Setting_Title";
    }

    else
    {
      v15 = @"HUHeySiri_Home_Level_Setting_Title";
    }
  }

  else
  {

    v15 = @"HUHeySiri_Home_Level_Setting_Title";
  }

  v16 = 1;
  v17 = _HULocalizedStringWithDefaultValue(v15, v15, 1);
  [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v5 setObject:@"HUJustSiriOrHeySiri_Home_Level_Setting_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
  [v5 setObject:@"Home.HomeSettings.SiriPhraseSetting" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v18 = MEMORY[0x277CCABB0];
  v19 = [(HUSiriTriggerPhraseSettingItem *)self home];
  v20 = [v19 hf_atleastOneMediaAccessorySupportingJustSiri];
  if (v20)
  {
    v3 = [(HUSiriTriggerPhraseSettingItem *)self home];
    v16 = [(__CFString *)v3 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]^ 1;
  }

  v21 = [v18 numberWithInt:v16];
  [v5 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  if (v20)
  {
  }

  v22 = [(HUSiriTriggerPhraseSettingItem *)self home];
  if ([v22 hf_atleastOneMediaAccessoryHasSiriEnabled])
  {
    v23 = @"HUSiriSetting_On";
  }

  else
  {
    v23 = @"HUSiriSetting_Off";
  }

  v24 = _HULocalizedStringWithDefaultValue(v23, v23, 1);
  [v5 setObject:v24 forKeyedSubscript:*MEMORY[0x277D13E20]];

  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F18]];
  v25 = MEMORY[0x277D2C900];
  v26 = [MEMORY[0x277D14780] outcomeWithResults:v5];
  v27 = [v25 futureWithResult:v26];

  return v27;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUSiriTriggerPhraseSettingItem *)self latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v6 = [v3 appendBool:objc_msgSend(v5 withName:"BOOLValue") ifEqualTo:{@"hidden", 1}];

  v7 = [(HUSiriTriggerPhraseSettingItem *)self latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v3 appendString:v8 withName:@"title"];

  v9 = [(HUSiriTriggerPhraseSettingItem *)self latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v3 appendString:v10 withName:@"description" skipIfEmpty:1];

  v11 = [v3 build];

  return v11;
}

@end