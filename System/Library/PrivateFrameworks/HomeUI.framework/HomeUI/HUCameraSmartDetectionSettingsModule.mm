@interface HUCameraSmartDetectionSettingsModule
+ (BOOL)isSpecificMotionSelectedForConfiguration:(id)a3 withCurrentConfiguration:(id)a4;
+ (id)_updatedCurrentSignificantEventConfiguration:(id)a3 withSelectedConfiguration:(id)a4 context:(unint64_t)a5;
+ (id)_updatedNotificationCurrentSignificantEventConfiguration:(id)a3 withSelectedConfiguration:(id)a4 cameraProfile:(id)a5;
+ (id)_updatedRecordingCurrentSignificantEventConfiguration:(id)a3 withSelectedConfiguration:(id)a4 cameraProfile:(id)a5;
+ (id)notificationConfiguration:(id)a3 forRecordingTriggers:(unint64_t)a4;
+ (id)notificationConfigurationForAClipIsRecorded;
+ (id)recordingConfiguration:(id)a3 withCurrentConfiguration:(id)a4 forProfile:(id)a5;
+ (id)specificMotionNotificationConfigurationForCameraProfile:(id)a3;
+ (id)updateCurrentSignificantEventConfiguration:(id)a3 withSelectedConfiguration:(id)a4 cameraProfile:(id)a5 context:(unint64_t)a6;
- (HUCameraSmartDetectionSettingsModule)initWithItemUpdater:(id)a3;
- (HUCameraSmartDetectionSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4 conditionCollection:(id)a5 settingsContext:(unint64_t)a6;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)didSelectItem:(id)a3;
- (id)enableSmartMotion:(BOOL)a3 forItem:(id)a4;
- (id)itemProviders;
- (id)updateMotionDetectionSettingForItem:(id)a3;
- (id)updateSignificantEventConfiguration:(id)a3;
@end

@implementation HUCameraSmartDetectionSettingsModule

- (HUCameraSmartDetectionSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4 conditionCollection:(id)a5 settingsContext:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (![v12 count])
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HUCameraSmartDetectionSettingsModule.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"cameraProfiles.count > 0"}];
  }

  v23.receiver = self;
  v23.super_class = HUCameraSmartDetectionSettingsModule;
  v14 = [(HFItemModule *)&v23 initWithItemUpdater:v11];
  if (v14)
  {
    v15 = [v12 copy];
    cameraProfiles = v14->_cameraProfiles;
    v14->_cameraProfiles = v15;

    v14->_settingsContext = a6;
    objc_storeStrong(&v14->_conditionCollection, a5);
    v17 = [v13 conditions];
    v18 = [v17 na_map:&__block_literal_global_238];
    v19 = [v18 firstObject];
    condition = v14->_condition;
    v14->_condition = v19;
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

- (HUCameraSmartDetectionSettingsModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_cameraProfiles_conditionCollection_settingsContext_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCameraSmartDetectionSettingsModule.m" lineNumber:59 description:{@"%s is unavailable; use %@ instead", "-[HUCameraSmartDetectionSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)enableSmartMotion:(BOOL)a3 forItem:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [v6 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = !v4;
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
      v12 = [(HUCameraSmartDetectionSettingsModule *)self aClipIsRecordedItem];
      v13 = [v6 isEqual:v12];

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
    if (v4)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    v15 = [(HUCameraSmartDetectionSettingsModule *)self updateSignificantEventConfiguration:v17];
  }

  else
  {
    v15 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v15;
}

- (id)updateMotionDetectionSettingForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"HUCameraSettingResultKey"];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && (-[HUCameraSmartDetectionSettingsModule motionDetectionSettingsItemProvider](self, "motionDetectionSettingsItemProvider"), v9 = objc_claimAutoreleasedReturnValue(), [v9 items], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v4), v10, v9, v11))
  {
    v12 = [(HUCameraSmartDetectionSettingsModule *)self updateSignificantEventConfiguration:v8];
  }

  else
  {
    v12 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v13 = v12;

  return v13;
}

- (id)updateSignificantEventConfiguration:(id)a3
{
  v5 = a3;
  objc_initWeak(&location, self);
  v6 = [(HUCameraSmartDetectionSettingsModule *)self cameraProfiles];
  v7 = [v6 allObjects];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HUCameraSmartDetectionSettingsModule_updateSignificantEventConfiguration___block_invoke;
  v16[3] = &unk_277DC2818;
  objc_copyWeak(&v18, &location);
  v8 = v5;
  v17 = v8;
  v9 = [v7 na_map:v16];

  v10 = MEMORY[0x277D2C900];
  v11 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v12 = [v10 combineAllFutures:v9 ignoringErrors:1 scheduler:v11];
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

+ (id)updateCurrentSignificantEventConfiguration:(id)a3 withSelectedConfiguration:(id)a4 cameraProfile:(id)a5 context:(unint64_t)a6
{
  if (a6)
  {
    [HUCameraSmartDetectionSettingsModule _updatedNotificationCurrentSignificantEventConfiguration:a3 withSelectedConfiguration:a4 cameraProfile:a5];
  }

  else
  {
    [HUCameraSmartDetectionSettingsModule _updatedRecordingCurrentSignificantEventConfiguration:a3 withSelectedConfiguration:a4 cameraProfile:a5];
  }
  v6 = ;

  return v6;
}

+ (id)_updatedRecordingCurrentSignificantEventConfiguration:(id)a3 withSelectedConfiguration:(id)a4 cameraProfile:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v8 eventTypes])
  {
    v10 = [v8 copy];
    goto LABEL_5;
  }

  if ([v8 eventTypes] == 1)
  {
    v10 = [MEMORY[0x277D144E0] defaultAnyMotionConfiguration];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v12 = [HUCameraSmartDetectionSettingsModule _updatedCurrentSignificantEventConfiguration:v7 withSelectedConfiguration:v8 context:0];
  v11 = [HUCameraSmartDetectionSettingsModule recordingConfiguration:v12 withCurrentConfiguration:v7 forProfile:v9];

LABEL_7:

  return v11;
}

+ (id)_updatedNotificationCurrentSignificantEventConfiguration:(id)a3 withSelectedConfiguration:(id)a4 cameraProfile:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 eventTypes] == 1)
  {
    v10 = [objc_opt_class() notificationConfigurationForAClipIsRecorded];
  }

  else if ([v8 eventTypes])
  {
    if ([objc_opt_class() isSpecificMotionSelectedForConfiguration:v8 withCurrentConfiguration:v7])
    {
      [objc_opt_class() specificMotionNotificationConfigurationForCameraProfile:v9];
    }

    else
    {
      [HUCameraSmartDetectionSettingsModule _updatedCurrentSignificantEventConfiguration:v7 withSelectedConfiguration:v8 context:1];
    }
    v10 = ;
  }

  else
  {
    v10 = [v8 copy];
  }

  v11 = v10;

  return v11;
}

+ (id)_updatedCurrentSignificantEventConfiguration:(id)a3 withSelectedConfiguration:(id)a4 context:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 copy];
  v10 = [v8 containsConfiguration:v7];

  if (v10)
  {
    [v9 removeConfiguration:v7];
    if ([v9 eventTypes])
    {
      goto LABEL_9;
    }

    if (a5)
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
    v11 = [MEMORY[0x277D144E0] defaultAnyMotionConfiguration];
    v12 = [MEMORY[0x277D144E0] configurationWithEventTypes:1 personFamiliarityOptions:0];

    [v9 removeConfiguration:v12];
    [v9 addConfiguration:v7];
  }

LABEL_9:

  return v9;
}

+ (BOOL)isSpecificMotionSelectedForConfiguration:(id)a3 withCurrentConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 eventTypes];
  v8 = [MEMORY[0x277D144E0] defaultSmartMotionConfiguration];
  v9 = [v8 eventTypes];

  if (v7 == v9)
  {
    v10 = [v6 eventTypes];
    v11 = v10 != [v5 eventTypes];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)notificationConfigurationForAClipIsRecorded
{
  v2 = [MEMORY[0x277D144E0] defaultSmartMotionConfiguration];
  [v2 setEventTypes:{objc_msgSend(v2, "eventTypes") | 1}];

  return v2;
}

+ (id)specificMotionNotificationConfigurationForCameraProfile:(id)a3
{
  v3 = MEMORY[0x277D144E0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 userSettings];

  [v5 setEventTypes:{objc_msgSend(v6, "recordingEventTriggers")}];
  if ([v5 eventTypes])
  {
    [v5 setEventTypes:{objc_msgSend(v5, "eventTypes") ^ 1}];
  }

  return v5;
}

+ (id)recordingConfiguration:(id)a3 withCurrentConfiguration:(id)a4 forProfile:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([a5 hf_hasDoorbellService] & 1) == 0 && (objc_msgSend(v8, "eventTypes"))
  {
    [v7 setEventTypes:{objc_msgSend(v7, "eventTypes") ^ 0x10}];
  }

  v9 = [v7 copy];

  return v9;
}

+ (id)notificationConfiguration:(id)a3 forRecordingTriggers:(unint64_t)a4
{
  v5 = a3;
  if ([v5 eventTypes] != 1 && objc_msgSend(v5, "eventTypes"))
  {
    if (([v5 eventTypes] & 1) == 0)
    {
      goto LABEL_6;
    }

    a4 = [v5 eventTypes] ^ 1;
  }

  [v5 setEventTypes:a4];
LABEL_6:
  v6 = [v5 copy];

  return v6;
}

- (id)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraSmartDetectionSettingsModule *)self motionDetectionOffOnItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = [(HUCameraSmartDetectionSettingsModule *)self specificMotionDetectedItem];
    v9 = -[HUCameraSmartDetectionSettingsModule enableSmartMotion:forItem:](self, "enableSmartMotion:forItem:", [v4 isEqual:v8], v4);
  }

  else
  {
    v9 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v9;
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
    v5 = [(HUCameraSmartDetectionSettingsModule *)self cameraProfiles];
    v6 = [v5 anyObject];
    v7 = [v6 accessory];
    v8 = [v7 home];

    v9 = objc_alloc(MEMORY[0x277D14B38]);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __53__HUCameraSmartDetectionSettingsModule_itemProviders__block_invoke;
    v37[3] = &unk_277DB8648;
    v37[4] = self;
    v10 = v8;
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
    v19 = [(HUCameraSmartDetectionSettingsModule *)self anyMotionDetectedItem];
    v20 = [(HUCameraSmartDetectionSettingsModule *)self aClipIsRecordedItem];
    v21 = [(HUCameraSmartDetectionSettingsModule *)self specificMotionDetectedItem];
    v22 = [v18 setWithObjects:{v19, v20, v21, 0}];
    v23 = [v17 initWithItems:v22];
    motionDetectionOffOnItemProvider = self->_motionDetectionOffOnItemProvider;
    self->_motionDetectionOffOnItemProvider = v23;

    v25 = [HUCameraSmartDetectionSettingsItemProvider alloc];
    v26 = [(HUCameraSmartDetectionSettingsModule *)self cameraProfiles];
    v27 = [(HUCameraSmartDetectionSettingsItemProvider *)v25 initWithCameraProfiles:v26 settingsContext:[(HUCameraSmartDetectionSettingsModule *)self settingsContext]];
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

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraSmartDetectionSettingsModule *)self itemProviders];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __72__HUCameraSmartDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke;
  v25[3] = &unk_277DBF990;
  v6 = v4;
  v26 = v6;
  v7 = [v5 na_flatMap:v25];

  v8 = objc_opt_new();
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCameraSmartDetectionSettingsOnOffSectionIdentifier"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__HUCameraSmartDetectionSettingsModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v24[3] = &unk_277DB85D8;
  v24[4] = self;
  v10 = [v7 na_filter:v24];
  v11 = [v10 allObjects];
  v12 = [MEMORY[0x277D14778] itemResultManualSortComparator];
  v13 = [v11 sortedArrayUsingComparator:v12];
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
  v17 = [(HUCameraSmartDetectionSettingsModule *)self motionDetectionSettingsItemProvider];
  v18 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCameraSmartDetectionSettingsMotionDetectionSectionIdentifier"];
  v19 = [v17 items];
  v20 = [v19 allObjects];
  v21 = [MEMORY[0x277D14778] itemResultManualSortComparator];
  v22 = [v20 sortedArrayUsingComparator:v21];

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