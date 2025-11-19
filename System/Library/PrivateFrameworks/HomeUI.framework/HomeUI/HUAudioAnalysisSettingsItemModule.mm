@interface HUAudioAnalysisSettingsItemModule
- (HUAudioAnalysisSettingsItemModule)initWithItemUpdater:(id)a3;
- (HUAudioAnalysisSettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)enableAudioAnalysisSetting:(BOOL)a3 forItem:(id)a4;
- (id)itemProviders;
- (id)updateAudioAnalysisDetectionSettings:(BOOL)a3 forItem:(id)a4;
- (void)_buildItemProviders;
- (void)mediaProfileContainer:(id)a3 didUpdateSettingKeypath:(id)a4 value:(id)a5;
@end

@implementation HUAudioAnalysisSettingsItemModule

- (HUAudioAnalysisSettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUAudioAnalysisSettingsItemModule.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v13.receiver = self;
  v13.super_class = HUAudioAnalysisSettingsItemModule;
  v9 = [(HFItemModule *)&v13 initWithItemUpdater:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a4);
    [(HUAudioAnalysisSettingsItemModule *)v10 _buildItemProviders];
  }

  return v10;
}

- (HUAudioAnalysisSettingsItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUAudioAnalysisSettingsItemModule.m" lineNumber:46 description:{@"%s is unavailable; use %@ instead", "-[HUAudioAnalysisSettingsItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (void)_buildItemProviders
{
  v3 = objc_alloc(MEMORY[0x277D147F0]);
  v4 = [(HUAudioAnalysisSettingsItemModule *)self home];
  v5 = [v3 initWithHome:v4];
  [(HUAudioAnalysisSettingsItemModule *)self setMediaAccessoryItemProvider:v5];

  v6 = [(HUAudioAnalysisSettingsItemModule *)self mediaAccessoryItemProvider];
  [v6 setFilter:&__block_literal_global_173];

  v7 = [HUHomeAudioAnalysisDetectionSettingsItemProvider alloc];
  v8 = [(HUAudioAnalysisSettingsItemModule *)self home];
  v9 = [(HUHomeAudioAnalysisDetectionSettingsItemProvider *)v7 initWithHome:v8];
  [(HUAudioAnalysisSettingsItemModule *)self setSoundsItemProvider:v9];

  v10 = objc_alloc(MEMORY[0x277D14C38]);
  v11 = [(HUAudioAnalysisSettingsItemModule *)self mediaAccessoryItemProvider];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__HUAudioAnalysisSettingsItemModule__buildItemProviders__block_invoke_3;
  v16[3] = &unk_277DC01A0;
  v16[4] = self;
  v12 = [v10 initWithSourceProvider:v11 transformationBlock:v16];
  [(HUAudioAnalysisSettingsItemModule *)self setAudioAnalysisDeviceItemProvider:v12];

  v13 = objc_alloc(MEMORY[0x277D142F0]);
  v14 = [(HUAudioAnalysisSettingsItemModule *)self home];
  v15 = [v13 initWithHome:v14];

  [v15 setFilter:&__block_literal_global_291];
}

uint64_t __56__HUAudioAnalysisSettingsItemModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2825BCB38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 accessories];
    v7 = [v6 na_all:&__block_literal_global_266];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v2 supportsAudioAnalysis];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

id __56__HUAudioAnalysisSettingsItemModule__buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HUAudioAnalysisSettingsItemModule__buildItemProviders__block_invoke_4;
  v9[3] = &unk_277DBDC00;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 initWithSourceItem:v6 transformationBlock:v9];

  return v7;
}

id __56__HUAudioAnalysisSettingsItemModule__buildItemProviders__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = &unk_28251AE08;
  if ([v7 conformsToProtocol:v8])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ([v10 isSiriEndpointAccessory])
  {
    v11 = [v10 commonSettingsManager];

    if (v11)
    {
      v12 = [v10 commonSettingsManager];
      [v12 addObserver:*(a1 + 40)];
    }
  }

  v13 = MEMORY[0x277CCABB0];
  [v10 isAudioAnalysisEnabled];
  v14 = [v13 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v6;
}

void *__56__HUAudioAnalysisSettingsItemModule__buildItemProviders__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 hf_siriEndpointProfile];
  if (v6)
  {
    v7 = [v5 hf_primaryService];

    if (v7)
    {
      v6 = [v5 supportsAudioAnalysis];
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HUAudioAnalysisSettingsItemModule *)self soundsItemProvider];
  v5 = [(HUAudioAnalysisSettingsItemModule *)self audioAnalysisDeviceItemProvider];
  v6 = [(HUAudioAnalysisSettingsItemModule *)self accessoryItemProvider];
  v7 = [v3 setWithObjects:{v4, v5, v6, 0}];

  return v7;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAudioAnalysisSettingsAudioAnalysisSoundsItemSectionIdentifier"];
  v7 = _HULocalizedStringWithDefaultValue(@"HUListenSettingsSoundsSection_Header", @"HUListenSettingsSoundsSection_Header", 1);
  [v6 setHeaderTitle:v7];

  v8 = objc_opt_new();
  v9 = [(HUAudioAnalysisSettingsItemModule *)self soundsItemProvider];
  v10 = [v9 items];
  v11 = [v10 allObjects];
  [v8 na_safeAddObjectsFromArray:v11];

  [v6 setItems:v8];
  [v5 addObject:v6];
  v12 = [(HUAudioAnalysisSettingsItemModule *)self home];
  v13 = [v12 audioAnalysisClassifierOptions];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAudioAnalysisSettingsAudioAnalysisDeviceItemSectionIdentifier"];
    v15 = _HULocalizedStringWithDefaultValue(@"HUListenSettingsHomePodSection_Header", @"HUListenSettingsHomePodSection_Header", 1);
    [v14 setHeaderTitle:v15];

    v16 = _HULocalizedStringWithDefaultValue(@"HUListenSettingsHomePodSection_Footer", @"HUListenSettingsHomePodSection_Footer", 1);
    [v14 setFooterTitle:v16];

    v17 = objc_opt_new();
    v18 = [(HUAudioAnalysisSettingsItemModule *)self audioAnalysisDeviceItemProvider];
    v19 = [v18 items];
    v20 = [v19 allObjects];
    [v17 na_safeAddObjectsFromArray:v20];

    v21 = [v17 copy];
    v22 = [objc_opt_class() _audioAnalysisDeviceItemComparator];
    v23 = [v21 sortedArrayUsingComparator:v22];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __69__HUAudioAnalysisSettingsItemModule_buildSectionsWithDisplayedItems___block_invoke;
    v26[3] = &unk_277DB85D8;
    v27 = v4;
    v24 = [v23 na_filter:v26];
    [v14 setItems:v24];

    [v5 addObject:v14];
  }

  return v5;
}

- (id)enableAudioAnalysisSetting:(BOOL)a3 forItem:(id)a4
{
  v5 = [a4 sourceItem];
  v6 = &unk_28251AE08;
  if ([v5 conformsToProtocol:v6])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = MEMORY[0x277D2C900];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__HUAudioAnalysisSettingsItemModule_enableAudioAnalysisSetting_forItem___block_invoke;
    v12[3] = &unk_277DBB320;
    v13 = v8;
    v14 = a3;
    v10 = [v9 futureWithBlock:v12];
  }

  else
  {
    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v10;
}

void __72__HUAudioAnalysisSettingsItemModule_enableAudioAnalysisSetting_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) setEnableAudioAnalysis:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HUAudioAnalysisSettingsItemModule_enableAudioAnalysisSetting_forItem___block_invoke_2;
  v7[3] = &unk_277DB7530;
  v8 = v3;
  v5 = v3;
  v6 = [v4 addCompletionBlock:v7];
}

void __72__HUAudioAnalysisSettingsItemModule_enableAudioAnalysisSetting_forItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Failed to update enable audio analysis setting : %@", &v8, 0xCu);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  [*(a1 + 32) finishWithResult:v5 error:v6];
}

uint64_t __71__HUAudioAnalysisSettingsItemModule__audioAnalysisDeviceItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D14778];
  v5 = a3;
  v6 = a2;
  v7 = [v4 defaultItemComparator];
  v8 = (v7)[2](v7, v6, v5);

  return v8;
}

- (void)mediaProfileContainer:(id)a3 didUpdateSettingKeypath:(id)a4 value:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Received update for setting keypath %@ value = %@", &v16, 0x16u);
  }

  v11 = [(HFItemModule *)self itemUpdater];
  v12 = MEMORY[0x277D14788];
  v13 = [(HUAudioAnalysisSettingsItemModule *)self itemProviders];
  v14 = [v12 requestToReloadItemProviders:v13 senderSelector:a2];
  v15 = [v11 performItemUpdateRequest:v14];
}

- (id)updateAudioAnalysisDetectionSettings:(BOOL)a3 forItem:(id)a4
{
  v4 = a3;
  v7 = a4;
  v8 = [(HUAudioAnalysisSettingsItemModule *)self home];
  v9 = [v8 audioAnalysisClassifierOptions];

  v10 = [v7 audioDetectionType];
  v11 = v10 | v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HUAudioAnalysisSettingsItemModule_updateAudioAnalysisDetectionSettings_forItem___block_invoke;
  v16[3] = &unk_277DBC9F8;
  if (!v4)
  {
    v11 = v9 & ~v10;
  }

  v16[4] = self;
  v16[5] = v11;
  v12 = [MEMORY[0x277D2C900] futureWithBlock:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HUAudioAnalysisSettingsItemModule_updateAudioAnalysisDetectionSettings_forItem___block_invoke_320;
  v15[3] = &unk_277DBB420;
  v15[4] = self;
  v15[5] = a2;
  v13 = [v12 addCompletionBlock:v15];

  return v13;
}

void __82__HUAudioAnalysisSettingsItemModule_updateAudioAnalysisDetectionSettings_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HUAudioAnalysisSettingsItemModule_updateAudioAnalysisDetectionSettings_forItem___block_invoke_2;
  v8[3] = &unk_277DB7E90;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v7 = v3;
  [v4 updateAudioAnalysisClassifierOptions:v6 completion:v8];
}

void __82__HUAudioAnalysisSettingsItemModule_updateAudioAnalysisDetectionSettings_forItem___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error setting audio analysis classifier setting: %@", &v10, 0xCu);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated audio analysis classifier settings", &v10, 2u);
    }

    v6 = MEMORY[0x277CCABB0];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) home];
    v9 = [v6 numberWithUnsignedInteger:{objc_msgSend(v8, "audioAnalysisClassifierOptions")}];
    [v7 finishWithResult:v9 error:0];
  }
}

void __82__HUAudioAnalysisSettingsItemModule_updateAudioAnalysisDetectionSettings_forItem___block_invoke_320(uint64_t a1)
{
  v6 = [*(a1 + 32) itemUpdater];
  v2 = MEMORY[0x277D14788];
  v3 = [*(a1 + 32) itemProviders];
  v4 = [v2 requestToReloadItemProviders:v3 senderSelector:*(a1 + 40)];
  v5 = [v6 performItemUpdateRequest:v4];
}

@end