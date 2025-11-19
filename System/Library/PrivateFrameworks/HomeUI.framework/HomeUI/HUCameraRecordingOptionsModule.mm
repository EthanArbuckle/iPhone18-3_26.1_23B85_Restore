@interface HUCameraRecordingOptionsModule
- (HUCameraRecordingOptionsModule)initWithItemUpdater:(id)a3;
- (HUCameraRecordingOptionsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)didSelectItem:(id)a3;
- (void)_buildItemProviders;
- (void)updateRecordAudioValue:(BOOL)a3;
@end

@implementation HUCameraRecordingOptionsModule

- (HUCameraRecordingOptionsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v8 count])
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HUCameraRecordingOptionsModule.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"cameraProfiles.count > 0"}];
  }

  v14.receiver = self;
  v14.super_class = HUCameraRecordingOptionsModule;
  v9 = [(HFItemModule *)&v14 initWithItemUpdater:v7];
  if (v9)
  {
    v10 = [v8 copy];
    cameraProfiles = v9->_cameraProfiles;
    v9->_cameraProfiles = v10;

    [(HUCameraRecordingOptionsModule *)v9 _buildItemProviders];
  }

  return v9;
}

- (HUCameraRecordingOptionsModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_cameraProfiles_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCameraRecordingOptionsModule.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUCameraRecordingOptionsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (void)_buildItemProviders
{
  v3 = [HUCameraSmartDetectionSettingsModule alloc];
  v4 = [(HFItemModule *)self itemUpdater];
  v5 = [(HUCameraRecordingOptionsModule *)self cameraProfiles];
  v6 = [(HUCameraSmartDetectionSettingsModule *)v3 initWithItemUpdater:v4 cameraProfiles:v5 conditionCollection:0 settingsContext:0];
  smartDetectionModule = self->_smartDetectionModule;
  self->_smartDetectionModule = v6;

  v8 = [HUCameraCloudStorageSettingsModule alloc];
  v9 = [(HFItemModule *)self itemUpdater];
  v10 = [(HUCameraRecordingOptionsModule *)self cameraProfiles];
  v11 = [(HUCameraCloudStorageSettingsModule *)v8 initWithItemUpdater:v9 cameraProfiles:v10];
  cloudStorageModule = self->_cloudStorageModule;
  self->_cloudStorageModule = v11;

  v13 = [HUCameraRecordAudioSettingsItem alloc];
  v14 = [(HUCameraRecordingOptionsModule *)self cameraProfiles];
  v15 = [v14 anyObject];
  v16 = [(HUCameraRecordAudioSettingsItem *)v13 initWithCameraProfile:v15];
  [(HUCameraRecordingOptionsModule *)self setRecordAudioItem:v16];

  v17 = objc_alloc(MEMORY[0x277D14B40]);
  v18 = MEMORY[0x277CBEB98];
  v19 = [(HUCameraRecordingOptionsModule *)self recordAudioItem];
  v20 = [v18 setWithObject:v19];
  v21 = [v17 initWithItems:v20];
  [(HUCameraRecordingOptionsModule *)self setRecordAudioItemProvider:v21];

  v28 = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
  v22 = [v28 itemProviders];
  v23 = [(HUCameraRecordingOptionsModule *)self recordAudioItemProvider];
  v24 = [v22 setByAddingObject:v23];
  v25 = [(HUCameraRecordingOptionsModule *)self cloudStorageModule];
  v26 = [v25 itemProviders];
  v27 = [v24 setByAddingObjectsFromSet:v26];
  [(HUCameraRecordingOptionsModule *)self setItemProviders:v27];
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
  v6 = [v5 buildSectionsWithDisplayedItems:v4];

  v7 = [(HUCameraRecordingOptionsModule *)self cloudStorageModule];
  v8 = [v7 buildSectionsWithDisplayedItems:v4];

  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"recordAudioSection"];
  v10 = [(HUCameraRecordingOptionsModule *)self recordAudioItem];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v9 setItems:v11];

  v12 = [v6 arrayByAddingObject:v9];
  v13 = [v12 arrayByAddingObjectsFromArray:v8];

  v14 = [MEMORY[0x277D14778] filterSections:v13 toDisplayedItems:v4];

  return v14;
}

- (id)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
    v7 = [v6 allItems];
    v8 = [v7 containsObject:v4];

    if (!v8)
    {
      goto LABEL_5;
    }

    v5 = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
    v9 = [v5 didSelectItem:v4];
  }

LABEL_5:
  v10 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v10;
}

- (void)updateRecordAudioValue:(BOOL)a3
{
  v3 = a3;
  v6 = [(HUCameraRecordingOptionsModule *)self recordAudioItem];
  v7 = [v6 updateRecordAudioSettingWithValue:v3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HUCameraRecordingOptionsModule_updateRecordAudioValue___block_invoke;
  v9[3] = &unk_277DB96F0;
  v9[4] = self;
  v9[5] = a2;
  v8 = [v7 addCompletionBlock:v9];
}

void __57__HUCameraRecordingOptionsModule_updateRecordAudioValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) recordAudioItem];
      v6 = [v5 cameraProfile];
      v7 = [v6 userSettings];
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Failed to change audio recording setting for camera settings: %@", &v15, 0xCu);
    }
  }

  v8 = [*(a1 + 32) itemUpdater];
  v9 = MEMORY[0x277D14788];
  v10 = MEMORY[0x277CBEB98];
  v11 = [*(a1 + 32) recordAudioItemProvider];
  v12 = [v10 setWithObject:v11];
  v13 = [v9 requestToReloadItemProviders:v12 senderSelector:*(a1 + 40)];
  v14 = [v8 performItemUpdateRequest:v13];
}

@end