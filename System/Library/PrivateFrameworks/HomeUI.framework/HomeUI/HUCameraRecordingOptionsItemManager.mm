@interface HUCameraRecordingOptionsItemManager
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)cameraRecordingSettingsModule:(id)module didUpdateItem:(id)item;
@end

@implementation HUCameraRecordingOptionsItemManager

- (id)_buildItemProvidersForHome:(id)home
{
  objc_opt_class();
  sourceItem = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceItem;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    profile = [v6 profile];
    if ([profile hf_supportsRecordingEvents])
    {
      cameraRecordingItemModule = [(HUCameraRecordingOptionsItemManager *)self cameraRecordingItemModule];

      if (cameraRecordingItemModule)
      {
        goto LABEL_9;
      }

      v9 = [HUCameraRecordingSettingsModule alloc];
      v10 = MEMORY[0x277CBEB98];
      profile2 = [v6 profile];
      v12 = [v10 setWithObject:profile2];
      v13 = [(HUCameraRecordingSettingsModule *)v9 initWithItemUpdater:self cameraProfiles:v12 displayStyle:[(HUCameraRecordingOptionsItemManager *)self displayStyle]];
      [(HUCameraRecordingOptionsItemManager *)self setCameraRecordingItemModule:v13];

      profile = [(HUCameraRecordingOptionsItemManager *)self cameraRecordingItemModule];
      [profile setDelegate:self];
    }
  }

LABEL_9:
  cameraRecordingItemModule2 = [(HUCameraRecordingOptionsItemManager *)self cameraRecordingItemModule];
  itemProviders = [cameraRecordingItemModule2 itemProviders];
  allObjects = [itemProviders allObjects];

  return allObjects;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  cameraRecordingItemModule = [(HUCameraRecordingOptionsItemManager *)self cameraRecordingItemModule];
  v6 = [cameraRecordingItemModule buildSectionsWithDisplayedItems:itemsCopy];

  return v6;
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
  v16[2] = __83__HUCameraRecordingOptionsItemManager_cameraRecordingSettingsModule_didUpdateItem___block_invoke;
  v16[3] = &unk_277DBE550;
  v17 = moduleCopy;
  v18 = itemCopy;
  v13 = itemCopy;
  v14 = moduleCopy;
  v15 = [v12 addCompletionBlock:v16];
}

void __83__HUCameraRecordingOptionsItemManager_cameraRecordingSettingsModule_didUpdateItem___block_invoke(uint64_t a1)
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