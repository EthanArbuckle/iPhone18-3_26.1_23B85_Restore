@interface HUCameraRecordingOptionsItemManager
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (void)cameraRecordingSettingsModule:(id)a3 didUpdateItem:(id)a4;
@end

@implementation HUCameraRecordingOptionsItemManager

- (id)_buildItemProvidersForHome:(id)a3
{
  objc_opt_class();
  v4 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 profile];
    if ([v7 hf_supportsRecordingEvents])
    {
      v8 = [(HUCameraRecordingOptionsItemManager *)self cameraRecordingItemModule];

      if (v8)
      {
        goto LABEL_9;
      }

      v9 = [HUCameraRecordingSettingsModule alloc];
      v10 = MEMORY[0x277CBEB98];
      v11 = [v6 profile];
      v12 = [v10 setWithObject:v11];
      v13 = [(HUCameraRecordingSettingsModule *)v9 initWithItemUpdater:self cameraProfiles:v12 displayStyle:[(HUCameraRecordingOptionsItemManager *)self displayStyle]];
      [(HUCameraRecordingOptionsItemManager *)self setCameraRecordingItemModule:v13];

      v7 = [(HUCameraRecordingOptionsItemManager *)self cameraRecordingItemModule];
      [v7 setDelegate:self];
    }
  }

LABEL_9:
  v14 = [(HUCameraRecordingOptionsItemManager *)self cameraRecordingItemModule];
  v15 = [v14 itemProviders];
  v16 = [v15 allObjects];

  return v16;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraRecordingOptionsItemManager *)self cameraRecordingItemModule];
  v6 = [v5 buildSectionsWithDisplayedItems:v4];

  return v6;
}

- (void)cameraRecordingSettingsModule:(id)a3 didUpdateItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEB98];
  v10 = [(HFItemManager *)self sourceItem];
  v11 = [v9 setWithObject:v10];
  v12 = [(HFItemManager *)self updateResultsForItems:v11 senderSelector:a2];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__HUCameraRecordingOptionsItemManager_cameraRecordingSettingsModule_didUpdateItem___block_invoke;
  v16[3] = &unk_277DBE550;
  v17 = v7;
  v18 = v8;
  v13 = v8;
  v14 = v7;
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