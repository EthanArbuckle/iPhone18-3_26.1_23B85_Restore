@interface HUAudioAnalysisDetectionSettingsModule
- (HUAudioAnalysisDetectionSettingsModule)initWithItemUpdater:(id)a3;
- (HUAudioAnalysisDetectionSettingsModule)initWithItemUpdater:(id)a3 accessory:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
@end

@implementation HUAudioAnalysisDetectionSettingsModule

- (HUAudioAnalysisDetectionSettingsModule)initWithItemUpdater:(id)a3 accessory:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUAudioAnalysisDetectionSettingsModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessory, a4);
  }

  return v9;
}

- (HUAudioAnalysisDetectionSettingsModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_accessory_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUAudioAnalysisDetectionSettingsModule.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HUAudioAnalysisDetectionSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    v4 = [HUAudioAnalysisDetectionSettingsItemProvider alloc];
    v5 = [(HUAudioAnalysisDetectionSettingsModule *)self accessory];
    v6 = [(HUAudioAnalysisDetectionSettingsItemProvider *)v4 initWithAccessory:v5];
    audioDetectionSettingsItemProvider = self->_audioDetectionSettingsItemProvider;
    self->_audioDetectionSettingsItemProvider = v6;

    v8 = [MEMORY[0x277CBEB98] setWithObjects:{self->_audioDetectionSettingsItemProvider, 0}];
    v9 = self->_itemProviders;
    self->_itemProviders = v8;

    itemProviders = self->_itemProviders;
  }

  v10 = itemProviders;

  return v10;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [(HUAudioAnalysisDetectionSettingsModule *)self itemProviders];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__HUAudioAnalysisDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke;
  v23[3] = &unk_277DBF990;
  v24 = v4;
  v6 = v4;
  v7 = [v5 na_flatMap:v23];

  v8 = objc_opt_new();
  v9 = [(HUAudioAnalysisDetectionSettingsModule *)self audioDetectionSettingsItemProvider];
  v10 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAudioAnalysisDetectionSettingsSoundDetectionSectionIdentifier"];
  v11 = _HULocalizedStringWithDefaultValue(@"HUAudioAnalysisEventSettings_Title", @"HUAudioAnalysisEventSettings_Title", 1);
  [v10 setHeaderTitle:v11];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __74__HUAudioAnalysisDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v21 = &unk_277DB85D8;
  v22 = v9;
  v12 = v9;
  v13 = [v7 na_filter:&v18];
  v14 = [v13 allObjects];
  v15 = [MEMORY[0x277D14778] itemResultManualSortComparator];
  v16 = [v14 sortedArrayUsingComparator:v15];
  [v10 setItems:v16];

  [v8 addObject:v10];

  return v8;
}

id __74__HUAudioAnalysisDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 na_setByIntersectingWithSet:*(a1 + 32)];

  return v4;
}

uint64_t __74__HUAudioAnalysisDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 items];
  v5 = [v4 containsObject:v3];

  return v5;
}

@end