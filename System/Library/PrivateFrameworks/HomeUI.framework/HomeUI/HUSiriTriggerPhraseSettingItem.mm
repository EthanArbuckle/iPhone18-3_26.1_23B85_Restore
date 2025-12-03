@interface HUSiriTriggerPhraseSettingItem
- (HUSiriTriggerPhraseSettingItem)initWithHome:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
- (id)description;
@end

@implementation HUSiriTriggerPhraseSettingItem

- (HUSiriTriggerPhraseSettingItem)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HUSiriTriggerPhraseSettingItem;
  v6 = [(HUSiriTriggerPhraseSettingItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CBEB58];
  home = [(HUSiriTriggerPhraseSettingItem *)self home];
  hf_allHomePodsOrStereoPairs = [home hf_allHomePodsOrStereoPairs];
  v9 = [v6 setWithArray:hf_allHomePodsOrStereoPairs];

  home2 = [(HUSiriTriggerPhraseSettingItem *)self home];
  hf_siriEndPointAccessories = [home2 hf_siriEndPointAccessories];
  [v9 addObjectsFromArray:hf_siriEndPointAccessories];

  home3 = [(HUSiriTriggerPhraseSettingItem *)self home];
  if ([home3 siriPhraseOptions] == 3)
  {
    home6 = @"HUJustSiriOrHeySiri_Home_Level_Setting_Title";
    home4 = [(HUSiriTriggerPhraseSettingItem *)self home];
    hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage = [home4 hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage];

    if (hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage)
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
  home5 = [(HUSiriTriggerPhraseSettingItem *)self home];
  hf_atleastOneMediaAccessorySupportingJustSiri = [home5 hf_atleastOneMediaAccessorySupportingJustSiri];
  if (hf_atleastOneMediaAccessorySupportingJustSiri)
  {
    home6 = [(HUSiriTriggerPhraseSettingItem *)self home];
    v16 = [(__CFString *)home6 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]^ 1;
  }

  v21 = [v18 numberWithInt:v16];
  [v5 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  if (hf_atleastOneMediaAccessorySupportingJustSiri)
  {
  }

  home7 = [(HUSiriTriggerPhraseSettingItem *)self home];
  if ([home7 hf_atleastOneMediaAccessoryHasSiriEnabled])
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
  latestResults = [(HUSiriTriggerPhraseSettingItem *)self latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v6 = [v3 appendBool:objc_msgSend(v5 withName:"BOOLValue") ifEqualTo:{@"hidden", 1}];

  latestResults2 = [(HUSiriTriggerPhraseSettingItem *)self latestResults];
  v8 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v3 appendString:v8 withName:@"title"];

  latestResults3 = [(HUSiriTriggerPhraseSettingItem *)self latestResults];
  v10 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v3 appendString:v10 withName:@"description" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

@end