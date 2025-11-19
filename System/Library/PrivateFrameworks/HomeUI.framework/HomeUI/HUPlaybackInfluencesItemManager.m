@interface HUPlaybackInfluencesItemManager
- (BOOL)playbackInfluencesFollowUser;
- (HUPlaybackInfluencesItemManager)initWithDelegate:(id)a3;
- (HUPlaybackInfluencesItemManager)initWithDelegate:(id)a3 module:(id)a4 homeKitAccessorySettingItem:(id)a5;
- (HUPlaybackInfluencesItemManager)initWithDelegate:(id)a3 settingItem:(id)a4;
- (HUPlaybackInfluencesItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)playbackInfluencesSetting;
- (id)updateUseListeningHistorySetting:(BOOL)a3;
@end

@implementation HUPlaybackInfluencesItemManager

- (HUPlaybackInfluencesItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUPlaybackInfluencesItemManager.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HUPlaybackInfluencesItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUPlaybackInfluencesItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUPlaybackInfluencesItemManager.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUPlaybackInfluencesItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUPlaybackInfluencesItemManager)initWithDelegate:(id)a3 settingItem:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v10.receiver = self;
  v10.super_class = HUPlaybackInfluencesItemManager;
  v8 = [(HFItemManager *)&v10 initWithDelegate:v6 sourceItem:v7];

  return v8;
}

- (HUPlaybackInfluencesItemManager)initWithDelegate:(id)a3 module:(id)a4 homeKitAccessorySettingItem:(id)a5
{
  v9 = a4;
  v10 = a3;
  v11 = [a5 copy];
  v14.receiver = self;
  v14.super_class = HUPlaybackInfluencesItemManager;
  v12 = [(HFItemManager *)&v14 initWithDelegate:v10 sourceItem:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_accessorySettingsModule, a4);
  }

  return v12;
}

- (id)playbackInfluencesSetting
{
  v2 = [(HUPlaybackInfluencesItemManager *)self settingItem];
  v3 = [v2 homeKitSettingsVendor];
  v4 = [v3 settings];
  v5 = [v4 hf_accessorySettingAtKeyPath:*MEMORY[0x277D13990]];

  return v5;
}

- (BOOL)playbackInfluencesFollowUser
{
  objc_opt_class();
  v3 = [(HUPlaybackInfluencesItemManager *)self settingItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 settingValue];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v8 = [(HUPlaybackInfluencesItemManager *)self settingItem];
    v9 = [v8 homeKitSettingsVendor];
    v6 = [v9 hf_settingsValueManager];

    v10 = [(HUPlaybackInfluencesItemManager *)self playbackInfluencesSetting];
    v11 = [v6 valueForSetting:v10];
    v7 = [v11 BOOLValue];
  }

  return v7;
}

- (id)updateUseListeningHistorySetting:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUPlaybackInfluencesItemManager *)self settingItem];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v6 = [v4 updateValue:v5];

  return v6;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HUPlaybackInfluencesItemManager__buildItemProvidersForHome___block_invoke;
  v13[3] = &unk_277DB7478;
  v13[4] = self;
  v5 = [v4 initWithResultsBlock:v13];
  [(HUPlaybackInfluencesItemManager *)self setUseListeningHistoryItem:v5];

  v6 = objc_alloc(MEMORY[0x277D14B40]);
  v7 = MEMORY[0x277CBEB98];
  v8 = [(HUPlaybackInfluencesItemManager *)self useListeningHistoryItem];
  v9 = [v7 setWithObject:v8];
  v10 = [v6 initWithItems:v9];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  return v11;
}

id __62__HUPlaybackInfluencesItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v16[0] = *MEMORY[0x277D13F60];
  v3 = HFLocalizedString();
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D13DA8];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [*(a1 + 32) home];
  v15[0] = v5;
  v6 = [*(a1 + 32) home];
  v7 = [v6 accessories];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v9 = [v4 initWithArray:v8];
  v17[1] = v9;
  v16[2] = *MEMORY[0x277D14068];
  v10 = MEMORY[0x277CCABB0];
  [*(a1 + 32) playbackInfluencesFollowUser];
  v11 = [v10 numberWithInteger:HFPrimaryStateFromBOOL()];
  v17[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v13 = [v2 futureWithResult:v12];

  return v13;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = [v5 array];
  v8 = [(HUPlaybackInfluencesItemManager *)self accessorySettingsModule];
  v9 = [v8 sourceItem];
  v10 = [v9 accessories];
  v11 = [v10 anyObject];

  v12 = [(HUPlaybackInfluencesItemManager *)self accessorySettingsModule];
  if (v12)
  {
    [v11 mediaProfile];
  }

  else
  {
    v3 = [(HUPlaybackInfluencesItemManager *)self settingItem];
    [v3 homeKitSettingsVendor];
  }
  v13 = ;
  v14 = v13;
  if ([v14 conformsToProtocol:&unk_2825BCB38])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (!v12)
  {

    v13 = v3;
  }

  if (v16)
  {
    v17 = [MEMORY[0x277D14810] siriLanguageOptionFor:v16];
    v18 = [v16 hf_home];
    v19 = [HUHomeFeatureOnboardingUtilities home:v18 voiceRecognitionIsSupportedForCurrentUserOnMediaAccessory:v16 languageOption:v17];
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x277CBEB98];
  v21 = [(HUPlaybackInfluencesItemManager *)self useListeningHistoryItem];
  v22 = [v20 setWithObject:v21];
  v23 = [v6 intersectsSet:v22];

  if (v23)
  {
    v24 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"UpdateListeningHistory"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __68__HUPlaybackInfluencesItemManager__buildSectionsWithDisplayedItems___block_invoke;
    v29[3] = &__block_descriptor_33_e32___NSMutableAttributedString_8__0l;
    v30 = v19;
    v25 = __68__HUPlaybackInfluencesItemManager__buildSectionsWithDisplayedItems___block_invoke(v29);
    [v24 setAttributedFooterTitle:v25];

    v26 = [(HUPlaybackInfluencesItemManager *)self useListeningHistoryItem];
    v31[0] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [v24 setItems:v27];

    [v7 addObject:v24];
  }

  return v7;
}

id __68__HUPlaybackInfluencesItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = HFLocalizedString();
  if (*(a1 + 32) == 1)
  {
    v3 = HFLocalizedString();
    v4 = HFLocalizedString();
    v5 = objc_alloc(MEMORY[0x277CCAB48]);
    v6 = [v3 stringByAppendingString:@" "];
    v7 = [v5 initWithString:v6];

    v8 = objc_alloc(MEMORY[0x277CCA898]);
    v21 = *MEMORY[0x277D740E8];
    v9 = [MEMORY[0x277D14C80] musicPrivacyURL];
    v22[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v11 = [v8 initWithString:v2 attributes:v10];
    [v7 appendAttributedString:v11];

    v12 = objc_alloc(MEMORY[0x277CCA898]);
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@" \n\n%@", v4];
    v14 = [v12 initWithString:v13 attributes:0];
    [v7 appendAttributedString:v14];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CCAB48]);
    v16 = HFLocalizedString();
    v7 = [v15 initWithString:v16];

    v17 = objc_alloc(MEMORY[0x277CCA898]);
    v19 = *MEMORY[0x277D740E8];
    v3 = [MEMORY[0x277D14C80] musicPrivacyURL];
    v20 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [v17 initWithString:v2 attributes:v4];
    [v7 appendAttributedString:v13];
  }

  return v7;
}

@end