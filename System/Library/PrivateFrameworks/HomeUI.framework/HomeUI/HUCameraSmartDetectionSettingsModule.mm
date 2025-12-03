@interface HUCameraSmartDetectionSettingsModule
+ (BOOL)isSpecificMotionSelectedForConfiguration:(id)configuration withCurrentConfiguration:(id)currentConfiguration;
+ (id)_updatedCurrentSignificantEventConfiguration:(id)configuration withSelectedConfiguration:(id)selectedConfiguration context:(unint64_t)context;
+ (id)_updatedNotificationCurrentSignificantEventConfiguration:(id)configuration withSelectedConfiguration:(id)selectedConfiguration cameraProfile:(id)profile;
+ (id)_updatedRecordingCurrentSignificantEventConfiguration:(id)configuration withSelectedConfiguration:(id)selectedConfiguration cameraProfile:(id)profile;
+ (id)notificationConfiguration:(id)configuration forRecordingTriggers:(unint64_t)triggers;
+ (id)notificationConfigurationForAClipIsRecorded;
+ (id)recordingConfiguration:(id)configuration withCurrentConfiguration:(id)currentConfiguration forProfile:(id)profile;
+ (id)specificMotionNotificationConfigurationForCameraProfile:(id)profile;
+ (id)updateCurrentSignificantEventConfiguration:(id)configuration withSelectedConfiguration:(id)selectedConfiguration cameraProfile:(id)profile context:(unint64_t)context;
- (HUCameraSmartDetectionSettingsModule)initWithItemUpdater:(id)updater;
- (HUCameraSmartDetectionSettingsModule)initWithItemUpdater:(id)updater cameraProfiles:(id)profiles conditionCollection:(id)collection settingsContext:(unint64_t)context;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)didSelectItem:(id)item;
- (id)enableSmartMotion:(BOOL)motion forItem:(id)item;
- (id)itemProviders;
- (id)updateMotionDetectionSettingForItem:(id)item;
- (id)updateSignificantEventConfiguration:(id)configuration;
@end

@implementation HUCameraSmartDetectionSettingsModule

- (HUCameraSmartDetectionSettingsModule)initWithItemUpdater:(id)updater cameraProfiles:(id)profiles conditionCollection:(id)collection settingsContext:(unint64_t)context
{
  updaterCopy = updater;
  profilesCopy = profiles;
  collectionCopy = collection;
  if (![profilesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraSmartDetectionSettingsModule.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"cameraProfiles.count > 0"}];
  }

  v23.receiver = self;
  v23.super_class = HUCameraSmartDetectionSettingsModule;
  v14 = [(HFItemModule *)&v23 initWithItemUpdater:updaterCopy];
  if (v14)
  {
    v15 = [profilesCopy copy];
    cameraProfiles = v14->_cameraProfiles;
    v14->_cameraProfiles = v15;

    v14->_settingsContext = context;
    objc_storeStrong(&v14->_conditionCollection, collection);
    conditions = [collectionCopy conditions];
    v18 = [conditions na_map:&__block_literal_global_238];
    firstObject = [v18 firstObject];
    condition = v14->_condition;
    v14->_condition = firstObject;
  }

  return v14;
}

void *__111__HUCameraSmartDetectionSettingsModule_initWithItemUpdater_cameraProfiles_conditionCollection_settingsContext___block_invoke(uint64_t a1, void *a2)
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

  return v4;
}

- (HUCameraSmartDetectionSettingsModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_cameraProfiles_conditionCollection_settingsContext_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraSmartDetectionSettingsModule.m" lineNumber:59 description:{@"%s is unavailable; use %@ instead", "-[HUCameraSmartDetectionSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)enableSmartMotion:(BOOL)motion forItem:(id)item
{
  motionCopy = motion;
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = !motionCopy;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if ([(HUCameraSmartDetectionSettingsModule *)self settingsContext]== 1)
    {
      v11 = +[HUCameraSmartDetectionSettingsModule selectedNotificationConfigurationForSmartMotion];
      aClipIsRecordedItem = [(HUCameraSmartDetectionSettingsModule *)self aClipIsRecordedItem];
      v13 = [itemCopy isEqual:aClipIsRecordedItem];

      if (v13)
      {
        +[HUCameraSmartDetectionSettingsModule selectedNotificationConfigurationForAClipIsRecorded];
      }

      else
      {
        +[HUCameraSmartDetectionSettingsModule selectedNotificationConfigurationForAnyMotion];
      }
      v14 = ;
    }

    else
    {
      v11 = +[HUCameraSmartDetectionSettingsModule selectedRecordingConfigurationForSmartMotion];
      v14 = +[HUCameraSmartDetectionSettingsModule selectedRecordingConfigurationForAnyMotion];
    }

    v16 = v14;
    if (motionCopy)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    futureWithNoResult = [(HUCameraSmartDetectionSettingsModule *)self updateSignificantEventConfiguration:v17];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (id)updateMotionDetectionSettingForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:@"HUCameraSettingResultKey"];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && (-[HUCameraSmartDetectionSettingsModule motionDetectionSettingsItemProvider](self, "motionDetectionSettingsItemProvider"), v9 = objc_claimAutoreleasedReturnValue(), [v9 items], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", itemCopy), v10, v9, v11))
  {
    futureWithNoResult = [(HUCameraSmartDetectionSettingsModule *)self updateSignificantEventConfiguration:v8];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v13 = futureWithNoResult;

  return v13;
}

- (id)updateSignificantEventConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  cameraProfiles = [(HUCameraSmartDetectionSettingsModule *)self cameraProfiles];
  allObjects = [cameraProfiles allObjects];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke;
  v16[3] = &unk_277DC2818;
  objc_copyWeak(&v18, &location);
  v8 = configurationCopy;
  v17 = v8;
  v9 = [allObjects na_map:v16];

  v10 = MEMORY[0x277D2C900];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v12 = [v10 combineAllFutures:v9 ignoringErrors:1 scheduler:mainThreadScheduler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_3_32;
  v15[3] = &unk_277DBB420;
  v15[4] = self;
  v15[5] = a2;
  v13 = [v12 addCompletionBlock:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v13;
}

id __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_2;
  v12[3] = &unk_277DB91B8;
  objc_copyWeak(&v15, (a1 + 40));
  v13 = *(a1 + 32);
  v5 = v3;
  v14 = v5;
  v6 = [v4 futureWithBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_25;
  v10[3] = &unk_277DBA338;
  v7 = v5;
  v11 = v7;
  v8 = [v6 addSuccessBlock:v10];

  objc_destroyWeak(&v15);

  return v8;
}

void __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (![WeakRetained settingsContext])
  {
    v8 = MEMORY[0x277D144E0];
    v6 = [WeakRetained cameraProfiles];
    v7 = [v8 configurationForCameraProfilesRecordingSettings:v6];
    goto LABEL_5;
  }

  if ([WeakRetained settingsContext] == 1)
  {
    v5 = MEMORY[0x277D144E0];
    v6 = [WeakRetained cameraProfiles];
    v7 = [v5 configurationForCameraProfilesNotificationSettings:v6];
LABEL_5:
    v9 = v7;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = +[HUCameraSmartDetectionSettingsModule updateCurrentSignificantEventConfiguration:withSelectedConfiguration:cameraProfile:context:](HUCameraSmartDetectionSettingsModule, "updateCurrentSignificantEventConfiguration:withSelectedConfiguration:cameraProfile:context:", v9, *(a1 + 32), *(a1 + 40), [WeakRetained settingsContext]);
  if ([WeakRetained settingsContext])
  {
    if ([WeakRetained settingsContext] == 1)
    {
      v11 = [v10 predicateRepresentation];
      v12 = [objc_alloc(MEMORY[0x277D144E8]) initWithPredicate:v11];
      v13 = [WeakRetained conditionCollection];
      v14 = [WeakRetained condition];
      [v13 removeCondition:v14];

      [WeakRetained setCondition:v12];
      v15 = [WeakRetained conditionCollection];
      v16 = [WeakRetained condition];
      [v15 addCondition:v16];

      [v3 finishWithNoResult];
    }
  }

  else
  {
    v17 = [*(a1 + 40) userSettings];
    v18 = [v10 eventTypes];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_3;
    v19[3] = &unk_277DBE710;
    v20 = v10;
    v21 = *(a1 + 40);
    v22 = v3;
    [v17 updateRecordingEventTriggers:v18 completionHandler:v19];
  }
}

void __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) eventTypes];
      v6 = *(a1 + 40);
      v7 = 134218498;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Error updating smart motion recording eventTypes: %lu for camera: %@ (error: %@)", &v7, 0x20u);
    }

    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    [*(a1 + 48) finishWithNoResult];
  }
}

void __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_25(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_2_27;
  v3[3] = &unk_277DBF4B0;
  v4 = *(a1 + 32);
  [v2 dispatchCameraObserverMessage:v3 sender:0];
}

void __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_2_27(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userSettings];
  [v3 cameraUserSettingsDidUpdate:v4];
}

void __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke_3_32(uint64_t a1)
{
  v6 = [*(a1 + 32) itemUpdater];
  v2 = MEMORY[0x277D14788];
  v3 = [*(a1 + 32) itemProviders];
  v4 = [v2 requestToReloadItemProviders:v3 senderSelector:*(a1 + 40)];
  v5 = [v6 performItemUpdateRequest:v4];
}

+ (id)updateCurrentSignificantEventConfiguration:(id)configuration withSelectedConfiguration:(id)selectedConfiguration cameraProfile:(id)profile context:(unint64_t)context
{
  if (context)
  {
    [HUCameraSmartDetectionSettingsModule _updatedNotificationCurrentSignificantEventConfiguration:configuration withSelectedConfiguration:selectedConfiguration cameraProfile:profile];
  }

  else
  {
    [HUCameraSmartDetectionSettingsModule _updatedRecordingCurrentSignificantEventConfiguration:configuration withSelectedConfiguration:selectedConfiguration cameraProfile:profile];
  }
  v6 = ;

  return v6;
}

+ (id)_updatedRecordingCurrentSignificantEventConfiguration:(id)configuration withSelectedConfiguration:(id)selectedConfiguration cameraProfile:(id)profile
{
  configurationCopy = configuration;
  selectedConfigurationCopy = selectedConfiguration;
  profileCopy = profile;
  if (![selectedConfigurationCopy eventTypes])
  {
    defaultAnyMotionConfiguration = [selectedConfigurationCopy copy];
    goto LABEL_5;
  }

  if ([selectedConfigurationCopy eventTypes] == 1)
  {
    defaultAnyMotionConfiguration = [MEMORY[0x277D144E0] defaultAnyMotionConfiguration];
LABEL_5:
    v11 = defaultAnyMotionConfiguration;
    goto LABEL_7;
  }

  v12 = [HUCameraSmartDetectionSettingsModule _updatedCurrentSignificantEventConfiguration:configurationCopy withSelectedConfiguration:selectedConfigurationCopy context:0];
  v11 = [HUCameraSmartDetectionSettingsModule recordingConfiguration:v12 withCurrentConfiguration:configurationCopy forProfile:profileCopy];

LABEL_7:

  return v11;
}

+ (id)_updatedNotificationCurrentSignificantEventConfiguration:(id)configuration withSelectedConfiguration:(id)selectedConfiguration cameraProfile:(id)profile
{
  configurationCopy = configuration;
  selectedConfigurationCopy = selectedConfiguration;
  profileCopy = profile;
  if ([selectedConfigurationCopy eventTypes] == 1)
  {
    notificationConfigurationForAClipIsRecorded = [objc_opt_class() notificationConfigurationForAClipIsRecorded];
  }

  else if ([selectedConfigurationCopy eventTypes])
  {
    if ([objc_opt_class() isSpecificMotionSelectedForConfiguration:selectedConfigurationCopy withCurrentConfiguration:configurationCopy])
    {
      [objc_opt_class() specificMotionNotificationConfigurationForCameraProfile:profileCopy];
    }

    else
    {
      [HUCameraSmartDetectionSettingsModule _updatedCurrentSignificantEventConfiguration:configurationCopy withSelectedConfiguration:selectedConfigurationCopy context:1];
    }
    notificationConfigurationForAClipIsRecorded = ;
  }

  else
  {
    notificationConfigurationForAClipIsRecorded = [selectedConfigurationCopy copy];
  }

  v11 = notificationConfigurationForAClipIsRecorded;

  return v11;
}

+ (id)_updatedCurrentSignificantEventConfiguration:(id)configuration withSelectedConfiguration:(id)selectedConfiguration context:(unint64_t)context
{
  selectedConfigurationCopy = selectedConfiguration;
  configurationCopy = configuration;
  v9 = [configurationCopy copy];
  v10 = [configurationCopy containsConfiguration:selectedConfigurationCopy];

  if (v10)
  {
    [v9 removeConfiguration:selectedConfigurationCopy];
    if ([v9 eventTypes])
    {
      goto LABEL_9;
    }

    if (context)
    {
      [MEMORY[0x277D144E0] defaultNotificationAnyMotionIsDetected];
    }

    else
    {
      [MEMORY[0x277D144E0] defaultAnyMotionConfiguration];
    }

    v9 = v12 = v9;
  }

  else
  {
    defaultAnyMotionConfiguration = [MEMORY[0x277D144E0] defaultAnyMotionConfiguration];
    v12 = [MEMORY[0x277D144E0] configurationWithEventTypes:1 personFamiliarityOptions:0];

    [v9 removeConfiguration:v12];
    [v9 addConfiguration:selectedConfigurationCopy];
  }

LABEL_9:

  return v9;
}

+ (BOOL)isSpecificMotionSelectedForConfiguration:(id)configuration withCurrentConfiguration:(id)currentConfiguration
{
  configurationCopy = configuration;
  currentConfigurationCopy = currentConfiguration;
  eventTypes = [configurationCopy eventTypes];
  defaultSmartMotionConfiguration = [MEMORY[0x277D144E0] defaultSmartMotionConfiguration];
  eventTypes2 = [defaultSmartMotionConfiguration eventTypes];

  if (eventTypes == eventTypes2)
  {
    eventTypes3 = [currentConfigurationCopy eventTypes];
    v11 = eventTypes3 != [configurationCopy eventTypes];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)notificationConfigurationForAClipIsRecorded
{
  defaultSmartMotionConfiguration = [MEMORY[0x277D144E0] defaultSmartMotionConfiguration];
  [defaultSmartMotionConfiguration setEventTypes:{objc_msgSend(defaultSmartMotionConfiguration, "eventTypes") | 1}];

  return defaultSmartMotionConfiguration;
}

+ (id)specificMotionNotificationConfigurationForCameraProfile:(id)profile
{
  v3 = MEMORY[0x277D144E0];
  profileCopy = profile;
  v5 = objc_alloc_init(v3);
  userSettings = [profileCopy userSettings];

  [v5 setEventTypes:{objc_msgSend(userSettings, "recordingEventTriggers")}];
  if ([v5 eventTypes])
  {
    [v5 setEventTypes:{objc_msgSend(v5, "eventTypes") ^ 1}];
  }

  return v5;
}

+ (id)recordingConfiguration:(id)configuration withCurrentConfiguration:(id)currentConfiguration forProfile:(id)profile
{
  configurationCopy = configuration;
  currentConfigurationCopy = currentConfiguration;
  if ([profile hf_hasDoorbellService] & 1) == 0 && (objc_msgSend(currentConfigurationCopy, "eventTypes"))
  {
    [configurationCopy setEventTypes:{objc_msgSend(configurationCopy, "eventTypes") ^ 0x10}];
  }

  v9 = [configurationCopy copy];

  return v9;
}

+ (id)notificationConfiguration:(id)configuration forRecordingTriggers:(unint64_t)triggers
{
  configurationCopy = configuration;
  if ([configurationCopy eventTypes] != 1 && objc_msgSend(configurationCopy, "eventTypes"))
  {
    if (([configurationCopy eventTypes] & 1) == 0)
    {
      goto LABEL_6;
    }

    triggers = [configurationCopy eventTypes] ^ 1;
  }

  [configurationCopy setEventTypes:triggers];
LABEL_6:
  v6 = [configurationCopy copy];

  return v6;
}

- (id)didSelectItem:(id)item
{
  itemCopy = item;
  motionDetectionOffOnItemProvider = [(HUCameraSmartDetectionSettingsModule *)self motionDetectionOffOnItemProvider];
  items = [motionDetectionOffOnItemProvider items];
  v7 = [items containsObject:itemCopy];

  if (v7)
  {
    specificMotionDetectedItem = [(HUCameraSmartDetectionSettingsModule *)self specificMotionDetectedItem];
    futureWithNoResult = -[HUCameraSmartDetectionSettingsModule enableSmartMotion:forItem:](self, "enableSmartMotion:forItem:", [itemCopy isEqual:specificMotionDetectedItem], itemCopy);
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (itemProviders)
  {
    v3 = itemProviders;
  }

  else
  {
    cameraProfiles = [(HUCameraSmartDetectionSettingsModule *)self cameraProfiles];
    anyObject = [cameraProfiles anyObject];
    accessory = [anyObject accessory];
    home = [accessory home];

    v9 = objc_alloc(MEMORY[0x277D14B38]);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __53__HUCameraSmartDetectionSettingsModule_itemProviders__block_invoke;
    v37[3] = &unk_277DB8648;
    v37[4] = self;
    v10 = home;
    v38 = v10;
    v11 = [v9 initWithResultsBlock:v37];
    [(HUCameraSmartDetectionSettingsModule *)self setAClipIsRecordedItem:v11];

    v12 = objc_alloc(MEMORY[0x277D14B38]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __53__HUCameraSmartDetectionSettingsModule_itemProviders__block_invoke_43;
    v35[3] = &unk_277DB8648;
    v35[4] = self;
    v13 = v10;
    v36 = v13;
    v14 = [v12 initWithResultsBlock:v35];
    [(HUCameraSmartDetectionSettingsModule *)self setAnyMotionDetectedItem:v14];

    v15 = objc_alloc(MEMORY[0x277D14B38]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __53__HUCameraSmartDetectionSettingsModule_itemProviders__block_invoke_49;
    v33[3] = &unk_277DB8648;
    v33[4] = self;
    v34 = v13;
    v32 = v13;
    v16 = [v15 initWithResultsBlock:v33];
    [(HUCameraSmartDetectionSettingsModule *)self setSpecificMotionDetectedItem:v16];

    v17 = objc_alloc(MEMORY[0x277D14B40]);
    v18 = MEMORY[0x277CBEB98];
    anyMotionDetectedItem = [(HUCameraSmartDetectionSettingsModule *)self anyMotionDetectedItem];
    aClipIsRecordedItem = [(HUCameraSmartDetectionSettingsModule *)self aClipIsRecordedItem];
    specificMotionDetectedItem = [(HUCameraSmartDetectionSettingsModule *)self specificMotionDetectedItem];
    v22 = [v18 setWithObjects:{anyMotionDetectedItem, aClipIsRecordedItem, specificMotionDetectedItem, 0}];
    v23 = [v17 initWithItems:v22];
    motionDetectionOffOnItemProvider = self->_motionDetectionOffOnItemProvider;
    self->_motionDetectionOffOnItemProvider = v23;

    v25 = [HUCameraSmartDetectionSettingsItemProvider alloc];
    cameraProfiles2 = [(HUCameraSmartDetectionSettingsModule *)self cameraProfiles];
    v27 = [(HUCameraSmartDetectionSettingsItemProvider *)v25 initWithCameraProfiles:cameraProfiles2 settingsContext:[(HUCameraSmartDetectionSettingsModule *)self settingsContext]];
    motionDetectionSettingsItemProvider = self->_motionDetectionSettingsItemProvider;
    self->_motionDetectionSettingsItemProvider = v27;

    v29 = [MEMORY[0x277CBEB98] setWithObjects:{self->_motionDetectionOffOnItemProvider, self->_motionDetectionSettingsItemProvider, 0}];
    v30 = self->_itemProviders;
    self->_itemProviders = v29;

    v3 = self->_itemProviders;
  }

  return v3;
}

id __53__HUCameraSmartDetectionSettingsModule_itemProviders__block_invoke(uint64_t a1)
{
  v22[7] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) settingsContext])
  {
    if ([*(a1 + 32) settingsContext] != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v2 = MEMORY[0x277D144E0];
    v3 = [*(a1 + 32) cameraProfiles];
    v4 = [v2 configurationForCameraProfilesNotificationSettings:v3];
  }

  else
  {
    v5 = MEMORY[0x277D144E0];
    v3 = [*(a1 + 32) cameraProfiles];
    v4 = [v5 configurationForCameraProfilesRecordingSettings:v3];
  }

  v6 = v4;

LABEL_7:
  v7 = [v6 eventTypes];
  if ([*(a1 + 32) settingsContext] || objc_msgSend(*(a1 + 40), "hf_currentUserIsAdministrator"))
  {
    if ([*(a1 + 32) settingsContext] == 1)
    {
      v8 = [*(a1 + 40) areBulletinNotificationsSupported] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  v21[0] = *MEMORY[0x277D13FE8];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v7 & 1];
  v22[0] = v9;
  v21[1] = *MEMORY[0x277D13F60];
  v10 = _HULocalizedStringWithDefaultValue(@"HUCameraStreamingSettingAClipIsRecorded", @"HUCameraStreamingSettingAClipIsRecorded", 1);
  v22[1] = v10;
  v21[2] = *MEMORY[0x277D13DA8];
  v11 = [*(a1 + 32) cameraProfiles];
  v12 = *MEMORY[0x277D13F10];
  v13 = MEMORY[0x277CBEC28];
  v22[2] = v11;
  v22[3] = MEMORY[0x277CBEC28];
  v14 = *MEMORY[0x277D13FF0];
  v21[3] = v12;
  v21[4] = v14;
  v22[4] = &unk_2824920F0;
  v21[5] = *MEMORY[0x277D13EA8];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v22[5] = v15;
  v21[6] = *MEMORY[0x277D13FB8];
  v16 = [*(a1 + 32) settingsContext];
  v17 = MEMORY[0x277CBEC38];
  if (v16)
  {
    v17 = v13;
  }

  v22[6] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];

  v19 = [MEMORY[0x277D2C900] futureWithResult:v18];

  return v19;
}

id __53__HUCameraSmartDetectionSettingsModule_itemProviders__block_invoke_43(uint64_t a1)
{
  v20[6] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) settingsContext])
  {
    if ([*(a1 + 32) settingsContext] != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v2 = MEMORY[0x277D144E0];
    v3 = [*(a1 + 32) cameraProfiles];
    v4 = [v2 configurationForCameraProfilesNotificationSettings:v3];
  }

  else
  {
    v5 = MEMORY[0x277D144E0];
    v3 = [*(a1 + 32) cameraProfiles];
    v4 = [v5 configurationForCameraProfilesRecordingSettings:v3];
  }

  v6 = v4;

LABEL_7:
  v7 = [*(a1 + 32) settingsContext];
  v8 = [v6 eventTypes];
  if ([*(a1 + 32) settingsContext] || objc_msgSend(*(a1 + 40), "hf_currentUserIsAdministrator"))
  {
    if ([*(a1 + 32) settingsContext] == 1)
    {
      v9 = [*(a1 + 40) areBulletinNotificationsSupported] ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = v8 == 0;
  if (v7 != 1)
  {
    v10 = v8;
  }

  v19[0] = *MEMORY[0x277D13FE8];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v20[0] = v11;
  v19[1] = *MEMORY[0x277D13F60];
  v12 = _HULocalizedStringWithDefaultValue(@"HUCameraStreamingSettingAnyMotion", @"HUCameraStreamingSettingAnyMotion", 1);
  v20[1] = v12;
  v19[2] = *MEMORY[0x277D13DA8];
  v13 = [*(a1 + 32) cameraProfiles];
  v20[2] = v13;
  v20[3] = MEMORY[0x277CBEC28];
  v14 = *MEMORY[0x277D13FF0];
  v19[3] = *MEMORY[0x277D13F10];
  v19[4] = v14;
  v20[4] = &unk_282492108;
  v19[5] = *MEMORY[0x277D13EA8];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v20[5] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];

  v17 = [MEMORY[0x277D2C900] futureWithResult:v16];

  return v17;
}

id __53__HUCameraSmartDetectionSettingsModule_itemProviders__block_invoke_49(uint64_t a1)
{
  v18[6] = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) settingsContext])
  {
    v5 = MEMORY[0x277D144E0];
    v3 = [*(a1 + 32) cameraProfiles];
    v4 = [v5 configurationForCameraProfilesRecordingSettings:v3];
    goto LABEL_5;
  }

  if ([*(a1 + 32) settingsContext] == 1)
  {
    v2 = MEMORY[0x277D144E0];
    v3 = [*(a1 + 32) cameraProfiles];
    v4 = [v2 configurationForCameraProfilesNotificationSettings:v3];
LABEL_5:
    v6 = v4;

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = ([v6 eventTypes] & 1) == 0 && objc_msgSend(v6, "eventTypes") != 0;
  if ([*(a1 + 32) settingsContext] || objc_msgSend(*(a1 + 40), "hf_currentUserIsAdministrator"))
  {
    if ([*(a1 + 32) settingsContext] == 1)
    {
      v8 = [*(a1 + 40) areBulletinNotificationsSupported] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  v17[0] = *MEMORY[0x277D13FE8];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v18[0] = v9;
  v17[1] = *MEMORY[0x277D13F60];
  v10 = _HULocalizedStringWithDefaultValue(@"HUCameraStreamingSettingSpecificMotion", @"HUCameraStreamingSettingSpecificMotion", 1);
  v18[1] = v10;
  v17[2] = *MEMORY[0x277D13DA8];
  v11 = [*(a1 + 32) cameraProfiles];
  v18[2] = v11;
  v18[3] = MEMORY[0x277CBEC28];
  v12 = *MEMORY[0x277D13FF0];
  v17[3] = *MEMORY[0x277D13F10];
  v17[4] = v12;
  v18[4] = &unk_282492120;
  v17[5] = *MEMORY[0x277D13EA8];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v18[5] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:6];

  v15 = [MEMORY[0x277D2C900] futureWithResult:v14];

  return v15;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  itemProviders = [(HUCameraSmartDetectionSettingsModule *)self itemProviders];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __72__HUCameraSmartDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke;
  v25[3] = &unk_277DBF990;
  v6 = itemsCopy;
  v26 = v6;
  v7 = [itemProviders na_flatMap:v25];

  v8 = objc_opt_new();
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCameraSmartDetectionSettingsOnOffSectionIdentifier"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__HUCameraSmartDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v24[3] = &unk_277DB85D8;
  v24[4] = self;
  v10 = [v7 na_filter:v24];
  allObjects = [v10 allObjects];
  itemResultManualSortComparator = [MEMORY[0x277D14778] itemResultManualSortComparator];
  v13 = [allObjects sortedArrayUsingComparator:itemResultManualSortComparator];
  [v9 setItems:v13];

  if ([(HUCameraSmartDetectionSettingsModule *)self settingsContext])
  {
    v14 = @"HUStatusAndNotificationCameraMotionHeader";
  }

  else
  {
    v14 = @"HUCameraStreamingSettingsMotionDetectionSettings";
  }

  v15 = _HULocalizedStringWithDefaultValue(v14, v14, 1);
  [v9 setHeaderTitle:v15];

  if ([(HUCameraSmartDetectionSettingsModule *)self settingsContext]&& !_os_feature_enabled_impl())
  {
    v16 = _HULocalizedStringWithDefaultValue(@"HUStatusAndNotificationsCameraSmartSectionFooter", @"HUStatusAndNotificationsCameraSmartSectionFooter", 1);
    [v9 setFooterTitle:v16];
  }

  else
  {
    [v9 setFooterTitle:&stru_2823E0EE8];
  }

  [v8 addObject:v9];
  motionDetectionSettingsItemProvider = [(HUCameraSmartDetectionSettingsModule *)self motionDetectionSettingsItemProvider];
  v18 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCameraSmartDetectionSettingsMotionDetectionSectionIdentifier"];
  items = [motionDetectionSettingsItemProvider items];
  allObjects2 = [items allObjects];
  itemResultManualSortComparator2 = [MEMORY[0x277D14778] itemResultManualSortComparator];
  v22 = [allObjects2 sortedArrayUsingComparator:itemResultManualSortComparator2];

  [v18 setItems:v22 filteringToDisplayedItems:v7];
  [v8 addObject:v18];

  return v8;
}

id __72__HUCameraSmartDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 na_setByIntersectingWithSet:*(a1 + 32)];

  return v4;
}

uint64_t __72__HUCameraSmartDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = a2;
  v4 = [v2 items];
  v5 = [v4 containsObject:v3];

  return v5;
}

@end