@interface HUCameraRecordingOptionsModule
- (HUCameraRecordingOptionsModule)initWithItemUpdater:(id)updater;
- (HUCameraRecordingOptionsModule)initWithItemUpdater:(id)updater cameraProfiles:(id)profiles;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)didSelectItem:(id)item;
- (void)_buildItemProviders;
- (void)updateRecordAudioValue:(BOOL)value;
@end

@implementation HUCameraRecordingOptionsModule

- (HUCameraRecordingOptionsModule)initWithItemUpdater:(id)updater cameraProfiles:(id)profiles
{
  updaterCopy = updater;
  profilesCopy = profiles;
  if (![profilesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraRecordingOptionsModule.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"cameraProfiles.count > 0"}];
  }

  v14.receiver = self;
  v14.super_class = HUCameraRecordingOptionsModule;
  v9 = [(HFItemModule *)&v14 initWithItemUpdater:updaterCopy];
  if (v9)
  {
    v10 = [profilesCopy copy];
    cameraProfiles = v9->_cameraProfiles;
    v9->_cameraProfiles = v10;

    [(HUCameraRecordingOptionsModule *)v9 _buildItemProviders];
  }

  return v9;
}

- (HUCameraRecordingOptionsModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_cameraProfiles_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraRecordingOptionsModule.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUCameraRecordingOptionsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (void)_buildItemProviders
{
  v3 = [HUCameraSmartDetectionSettingsModule alloc];
  itemUpdater = [(HFItemModule *)self itemUpdater];
  cameraProfiles = [(HUCameraRecordingOptionsModule *)self cameraProfiles];
  v6 = [(HUCameraSmartDetectionSettingsModule *)v3 initWithItemUpdater:itemUpdater cameraProfiles:cameraProfiles conditionCollection:0 settingsContext:0];
  smartDetectionModule = self->_smartDetectionModule;
  self->_smartDetectionModule = v6;

  v8 = [HUCameraCloudStorageSettingsModule alloc];
  itemUpdater2 = [(HFItemModule *)self itemUpdater];
  cameraProfiles2 = [(HUCameraRecordingOptionsModule *)self cameraProfiles];
  v11 = [(HUCameraCloudStorageSettingsModule *)v8 initWithItemUpdater:itemUpdater2 cameraProfiles:cameraProfiles2];
  cloudStorageModule = self->_cloudStorageModule;
  self->_cloudStorageModule = v11;

  v13 = [HUCameraRecordAudioSettingsItem alloc];
  cameraProfiles3 = [(HUCameraRecordingOptionsModule *)self cameraProfiles];
  anyObject = [cameraProfiles3 anyObject];
  v16 = [(HUCameraRecordAudioSettingsItem *)v13 initWithCameraProfile:anyObject];
  [(HUCameraRecordingOptionsModule *)self setRecordAudioItem:v16];

  v17 = objc_alloc(MEMORY[0x277D14B40]);
  v18 = MEMORY[0x277CBEB98];
  recordAudioItem = [(HUCameraRecordingOptionsModule *)self recordAudioItem];
  v20 = [v18 setWithObject:recordAudioItem];
  v21 = [v17 initWithItems:v20];
  [(HUCameraRecordingOptionsModule *)self setRecordAudioItemProvider:v21];

  smartDetectionModule = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
  itemProviders = [smartDetectionModule itemProviders];
  recordAudioItemProvider = [(HUCameraRecordingOptionsModule *)self recordAudioItemProvider];
  v24 = [itemProviders setByAddingObject:recordAudioItemProvider];
  cloudStorageModule = [(HUCameraRecordingOptionsModule *)self cloudStorageModule];
  itemProviders2 = [cloudStorageModule itemProviders];
  v27 = [v24 setByAddingObjectsFromSet:itemProviders2];
  [(HUCameraRecordingOptionsModule *)self setItemProviders:v27];
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v16[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  smartDetectionModule = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
  v6 = [smartDetectionModule buildSectionsWithDisplayedItems:itemsCopy];

  cloudStorageModule = [(HUCameraRecordingOptionsModule *)self cloudStorageModule];
  v8 = [cloudStorageModule buildSectionsWithDisplayedItems:itemsCopy];

  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"recordAudioSection"];
  recordAudioItem = [(HUCameraRecordingOptionsModule *)self recordAudioItem];
  v16[0] = recordAudioItem;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v9 setItems:v11];

  v12 = [v6 arrayByAddingObject:v9];
  v13 = [v12 arrayByAddingObjectsFromArray:v8];

  v14 = [MEMORY[0x277D14778] filterSections:v13 toDisplayedItems:itemsCopy];

  return v14;
}

- (id)didSelectItem:(id)item
{
  itemCopy = item;
  smartDetectionModule = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
  if (objc_opt_respondsToSelector())
  {
    smartDetectionModule2 = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
    allItems = [smartDetectionModule2 allItems];
    v8 = [allItems containsObject:itemCopy];

    if (!v8)
    {
      goto LABEL_5;
    }

    smartDetectionModule = [(HUCameraRecordingOptionsModule *)self smartDetectionModule];
    v9 = [smartDetectionModule didSelectItem:itemCopy];
  }

LABEL_5:
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (void)updateRecordAudioValue:(BOOL)value
{
  valueCopy = value;
  recordAudioItem = [(HUCameraRecordingOptionsModule *)self recordAudioItem];
  v7 = [recordAudioItem updateRecordAudioSettingWithValue:valueCopy];
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