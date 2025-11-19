@interface HUCameraCloudStorageSettingsModule
- (HUCameraCloudStorageSettingsModule)initWithItemUpdater:(id)a3;
- (HUCameraCloudStorageSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (id)removeAllCameraRecordings;
@end

@implementation HUCameraCloudStorageSettingsModule

- (HUCameraCloudStorageSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v8 count])
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HUCameraCloudStorageSettingsModule.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"cameraProfiles.count > 0"}];
  }

  v14.receiver = self;
  v14.super_class = HUCameraCloudStorageSettingsModule;
  v9 = [(HFItemModule *)&v14 initWithItemUpdater:v7];
  if (v9)
  {
    v10 = [v8 copy];
    cameraProfiles = v9->_cameraProfiles;
    v9->_cameraProfiles = v10;
  }

  return v9;
}

- (HUCameraCloudStorageSettingsModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_cameraProfiles_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCameraCloudStorageSettingsModule.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HUCameraCloudStorageSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)removeAllCameraRecordings
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(HUCameraCloudStorageSettingsModule *)self cameraProfiles];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __63__HUCameraCloudStorageSettingsModule_removeAllCameraRecordings__block_invoke;
        v16[3] = &unk_277DB7580;
        v16[4] = v9;
        v10 = [MEMORY[0x277D2C900] futureWithBlock:v16];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x277D2C900] combineAllFutures:v3];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__HUCameraCloudStorageSettingsModule_removeAllCameraRecordings__block_invoke_16;
  v15[3] = &unk_277DBC578;
  v15[4] = self;
  v15[5] = a2;
  v12 = [v11 addCompletionBlock:v15];

  return v12;
}

void __63__HUCameraCloudStorageSettingsModule_removeAllCameraRecordings__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) recordingEventManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HUCameraCloudStorageSettingsModule_removeAllCameraRecordings__block_invoke_2;
  v7[3] = &unk_277DB7E90;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 deleteAllEventsWithCompletionHandler:v7];
}

void __63__HUCameraCloudStorageSettingsModule_removeAllCameraRecordings__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error removing all camera clips: %@", &v7, 0xCu);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) uniqueIdentifier];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Deleted all clips for profile:%@", &v7, 0xCu);
    }

    [*(a1 + 32) finishWithNoResult];
  }
}

void __63__HUCameraCloudStorageSettingsModule_removeAllCameraRecordings__block_invoke_16(uint64_t a1)
{
  v6 = [*(a1 + 32) itemUpdater];
  v2 = MEMORY[0x277D14788];
  v3 = [*(a1 + 32) itemProviders];
  v4 = [v2 requestToReloadItemProviders:v3 senderSelector:*(a1 + 40)];
  v5 = [v6 performItemUpdateRequest:v4];
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    v4 = [HUCameraCloudStorageItemProvider alloc];
    v5 = [(HUCameraCloudStorageSettingsModule *)self cameraProfiles];
    v6 = [v5 anyObject];
    v7 = [(HUCameraCloudStorageItemProvider *)v4 initWithCameraProfile:v6];
    cloudStorageSectionSettingsItemProvider = self->_cloudStorageSectionSettingsItemProvider;
    self->_cloudStorageSectionSettingsItemProvider = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{self->_cloudStorageSectionSettingsItemProvider, 0}];
    v10 = self->_itemProviders;
    self->_itemProviders = v9;

    itemProviders = self->_itemProviders;
  }

  v11 = itemProviders;

  return v11;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraCloudStorageSettingsModule *)self itemProviders];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__HUCameraCloudStorageSettingsModule_buildSectionsWithDisplayedItems___block_invoke;
  v23[3] = &unk_277DBF990;
  v24 = v4;
  v6 = v4;
  v7 = [v5 na_flatMap:v23];

  v8 = [(HUCameraCloudStorageSettingsModule *)self cloudStorageSectionSettingsItemProvider];
  v9 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"iCloudStorageSection"];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __70__HUCameraCloudStorageSettingsModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v21 = &unk_277DB85D8;
  v22 = v8;
  v11 = v8;
  v12 = [v7 na_filter:&v18];
  v13 = [v12 allObjects];
  v14 = [MEMORY[0x277D14778] itemResultManualSortComparator];
  v15 = [v13 sortedArrayUsingComparator:v14];
  [v10 setItems:v15];

  v16 = _HULocalizedStringWithDefaultValue(@"HUCameraEraseFooterString", @"HUCameraEraseFooterString", 1);
  [v10 setFooterTitle:v16];

  [v9 addObject:v10];

  return v9;
}

id __70__HUCameraCloudStorageSettingsModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 na_setByIntersectingWithSet:*(a1 + 32)];

  return v4;
}

uint64_t __70__HUCameraCloudStorageSettingsModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 items];
  v5 = [v4 containsObject:v3];

  return v5;
}

@end