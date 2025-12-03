@interface HUMultiCameraRecordingOptionsItemManager
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)cameraRecordingSettingsModule:(id)module didUpdateItem:(id)item;
@end

@implementation HUMultiCameraRecordingOptionsItemManager

- (id)_buildItemProvidersForHome:(id)home
{
  v27 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  cameraRecordingItemModules = [(HUMultiCameraRecordingOptionsItemManager *)self cameraRecordingItemModules];

  if (!cameraRecordingItemModules)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(HUMultiCameraRecordingOptionsItemManager *)self setCameraRecordingItemModules:array];

    hf_allCameraProfilesSupportingRecording = [homeCopy hf_allCameraProfilesSupportingRecording];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __71__HUMultiCameraRecordingOptionsItemManager__buildItemProvidersForHome___block_invoke;
    v25[3] = &unk_277DC4308;
    v25[4] = self;
    [hf_allCameraProfilesSupportingRecording na_each:v25];
  }

  objc_opt_class();
  cameraRecordingItemModules2 = [(HUMultiCameraRecordingOptionsItemManager *)self cameraRecordingItemModules];
  lastObject = [cameraRecordingItemModules2 lastObject];
  if (objc_opt_isKindOfClass())
  {
    v10 = lastObject;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 setShouldShowFooterTitle:1];
  array2 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  cameraRecordingItemModules3 = [(HUMultiCameraRecordingOptionsItemManager *)self cameraRecordingItemModules];
  v14 = [cameraRecordingItemModules3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(cameraRecordingItemModules3);
        }

        itemProviders = [*(*(&v21 + 1) + 8 * i) itemProviders];
        allObjects = [itemProviders allObjects];
        [array2 addObjectsFromArray:allObjects];
      }

      v15 = [cameraRecordingItemModules3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v15);
  }

  return array2;
}

void __71__HUMultiCameraRecordingOptionsItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HUMultiCameraRecordingSettingsModule alloc];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEB98] setWithObject:v3];

  v8 = [(HUMultiCameraRecordingSettingsModule *)v4 initWithItemUpdater:v5 cameraProfiles:v6 displayStyle:2];
  [(HUCameraRecordingSettingsModule *)v8 setDelegate:*(a1 + 32)];
  v7 = [*(a1 + 32) cameraRecordingItemModules];
  [v7 addObject:v8];
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  cameraRecordingItemModules = [(HUMultiCameraRecordingOptionsItemManager *)self cameraRecordingItemModules];
  v6 = [cameraRecordingItemModules count];

  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    cameraRecordingItemModules2 = [(HUMultiCameraRecordingOptionsItemManager *)self cameraRecordingItemModules];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__HUMultiCameraRecordingOptionsItemManager__buildSectionsWithDisplayedItems___block_invoke;
    v13[3] = &unk_277DC4330;
    v14 = itemsCopy;
    v9 = array;
    v15 = v9;
    [cameraRecordingItemModules2 na_each:v13];

    v10 = v15;
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

void __77__HUMultiCameraRecordingOptionsItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 buildSectionsWithDisplayedItems:*(a1 + 32)];
  [*(a1 + 40) addObjectsFromArray:v3];
}

- (void)cameraRecordingSettingsModule:(id)module didUpdateItem:(id)item
{
  moduleCopy = module;
  itemCopy = item;
  v9 = MEMORY[0x277CBEB98];
  sourceItem = [(HFItemManager *)self sourceItem];
  v11 = [v9 setWithObject:sourceItem];
  v12 = [(HFItemManager *)self updateResultsForItems:v11 senderSelector:a2];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__HUMultiCameraRecordingOptionsItemManager_cameraRecordingSettingsModule_didUpdateItem___block_invoke;
  v16[3] = &unk_277DBE550;
  v17 = moduleCopy;
  v18 = itemCopy;
  v13 = itemCopy;
  v14 = moduleCopy;
  v15 = [v12 addCompletionBlock:v16];
}

void __88__HUMultiCameraRecordingOptionsItemManager_cameraRecordingSettingsModule_didUpdateItem___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "Did update recording settings module:%@ with item:%@", &v5, 0x16u);
  }
}

@end