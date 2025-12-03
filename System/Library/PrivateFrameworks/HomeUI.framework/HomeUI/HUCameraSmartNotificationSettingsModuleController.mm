@interface HUCameraSmartNotificationSettingsModuleController
+ (BOOL)shouldDisplayAlertForItem:(id)item withSmartDetectionModule:(id)module forProfile:(id)profile;
- (BOOL)canEnableNotificationForItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUCameraSmartNotificationSettingsModuleController)initWithModule:(id)module;
- (HUCameraSmartNotificationSettingsModuleControllerDelegate)delegate;
- (id)alertMessageForEventType:(unint64_t)type;
- (id)alertTitleForEventType:(unint64_t)type;
- (unint64_t)didSelectItem:(id)item;
- (void)displayAlertForItemCell:(id)cell;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
- (void)updateNotificationSettingForItem:(id)item;
@end

@implementation HUCameraSmartNotificationSettingsModuleController

- (HUCameraSmartNotificationSettingsModuleController)initWithModule:(id)module
{
  moduleCopy = module;
  v5 = objc_opt_class();
  v6 = moduleCopy;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  v11 = &unk_2824D3FD0;
  v12 = v6;
  v13 = v12;
  if (v6)
  {
    if ([v12 conformsToProtocol:v11])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v6 = v13;
    if (!v14)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
      v19 = NSStringFromProtocol(v11);
      [currentHandler2 handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v19}];

      v6 = 0;
    }
  }

  v20.receiver = self;
  v20.super_class = HUCameraSmartNotificationSettingsModuleController;
  v15 = [(HUItemModuleController *)&v20 initWithModule:v13];

  return v15;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isItemHeader:itemCopy];

  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v7 = objc_opt_class();

  return v7;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v22.receiver = self;
  v22.super_class = HUCameraSmartNotificationSettingsModuleController;
  [(HUItemModuleController *)&v22 setupCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setValueColorFollowsTintColor:1];
  }

  latestResults = [itemCopy latestResults];
  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  if (v9)
  {
    objc_opt_class();
    v10 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    imageView = [v12 imageView];
    [imageView setContentMode:5];

    [v12 setImageViewRecommendedSize:{50.0, 50.0}];
  }

  module = [(HUItemModuleController *)self module];
  v15 = [module isItemHeader:itemCopy];

  if ((v15 & 1) == 0)
  {
    objc_opt_class();
    v16 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [v18 setHideIcon:1];
  }

  objc_opt_class();
  v19 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v21)
  {
    [v21 setDelegate:self];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v12.receiver = self;
  v12.super_class = HUCameraSmartNotificationSettingsModuleController;
  itemCopy = item;
  cellCopy = cell;
  [(HUItemModuleController *)&v12 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  latestResults = [itemCopy latestResults];

  v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  if ([v10 BOOLValue])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [cellCopy setAccessoryType:v11];
}

+ (BOOL)shouldDisplayAlertForItem:(id)item withSmartDetectionModule:(id)module forProfile:(id)profile
{
  itemCopy = item;
  moduleCopy = module;
  hf_cameraIsNotSetToRecord = [profile hf_cameraIsNotSetToRecord];
  specificMotionDetectedItem = [moduleCopy specificMotionDetectedItem];
  if (([itemCopy isEqual:specificMotionDetectedItem] & 1) == 0)
  {
    aClipIsRecordedItem = [moduleCopy aClipIsRecordedItem];
    hf_cameraIsNotSetToRecord &= [itemCopy isEqual:aClipIsRecordedItem];
  }

  return hf_cameraIsNotSetToRecord;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  module2 = [(HUItemModuleController *)self module];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (_os_feature_enabled_impl())
    {
      module3 = [(HUItemModuleController *)self module];
      v11 = [module3 didSelectItem:itemCopy];

      delegate = [(HUCameraSmartNotificationSettingsModuleController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate2 = [(HUCameraSmartNotificationSettingsModuleController *)self delegate];
        conditionCollection = [v7 conditionCollection];
        [delegate2 smartNotificationSettingsModuleController:self didUpdateConditionCollection:conditionCollection];
      }
    }

    else
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__HUCameraSmartNotificationSettingsModuleController_didSelectItem___block_invoke;
      aBlock[3] = &unk_277DBBF90;
      objc_copyWeak(&v41, &location);
      v16 = _Block_copy(aBlock);
      cameraProfiles = [v7 cameraProfiles];
      anyObject = [cameraProfiles anyObject];
      v19 = [HUCameraSmartNotificationSettingsModuleController shouldDisplayAlertForItem:itemCopy withSmartDetectionModule:v7 forProfile:anyObject];

      if (v19)
      {
        mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
        home = [mEMORY[0x277D146E8] home];
        if ([home hf_currentUserIsOwner])
        {
          v22 = @"HUCameraStatusAndNotificationsSmartAlertDescription_Owner";
        }

        else
        {
          v22 = @"HUCameraStatusAndNotificationsSmartAlertDescription";
        }

        v23 = _HULocalizedStringWithDefaultValue(v22, v22, 1);

        v24 = MEMORY[0x277D75110];
        v25 = _HULocalizedStringWithDefaultValue(@"HUCameraStatusAndNotificationsSmartAlertTitle", @"HUCameraStatusAndNotificationsSmartAlertTitle", 1);
        v26 = [v24 alertControllerWithTitle:v25 message:v23 preferredStyle:1];

        v27 = MEMORY[0x277D750F8];
        v28 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __67__HUCameraSmartNotificationSettingsModuleController_didSelectItem___block_invoke_2;
        v37 = &unk_277DBBA48;
        v39 = v16;
        v38 = itemCopy;
        v29 = [v27 actionWithTitle:v28 style:0 handler:&v34];
        [v26 addAction:{v29, v34, v35, v36, v37}];

        v30 = [HUViewControllerPresentationRequest requestWithViewController:v26];
        [v30 setPreferredPresentationType:0];
        host = [(HUItemModuleController *)self host];
        v32 = [host moduleController:self presentViewControllerForRequest:v30];
      }

      else
      {
        (*(v16 + 2))(v16, itemCopy);
      }

      objc_destroyWeak(&v41);
      objc_destroyWeak(&location);
    }
  }

  return 0;
}

void __67__HUCameraSmartNotificationSettingsModuleController_didSelectItem___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v4 = [WeakRetained module];
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
    v7 = [v6 didSelectItem:v12];
  }

  v8 = [WeakRetained delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [WeakRetained delegate];
    v11 = [v6 conditionCollection];
    [v10 smartNotificationSettingsModuleController:WeakRetained didUpdateConditionCollection:v11];
  }
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  v10 = cellCopy;
  if (onCopy && ([cellCopy item], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[HUCameraSmartNotificationSettingsModuleController canEnableNotificationForItem:](self, "canEnableNotificationForItem:", v7), v7, cellCopy = v10, !v8))
  {
    [v10 setOn:0 animated:1];
    [(HUCameraSmartNotificationSettingsModuleController *)self displayAlertForItemCell:v10];
  }

  else
  {
    item = [cellCopy item];
    [(HUCameraSmartNotificationSettingsModuleController *)self updateNotificationSettingForItem:item];
  }
}

- (void)updateNotificationSettingForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 updateMotionDetectionSettingForItem:itemCopy];
  delegate = [(HUCameraSmartNotificationSettingsModuleController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(HUCameraSmartNotificationSettingsModuleController *)self delegate];
    conditionCollection = [v7 conditionCollection];
    [delegate2 smartNotificationSettingsModuleController:self didUpdateConditionCollection:conditionCollection];
  }

  itemUpdater = [v7 itemUpdater];
  v14 = MEMORY[0x277D14788];
  itemProviders = [v7 itemProviders];
  v16 = [v14 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v17 = [itemUpdater performItemUpdateRequest:v16];
}

- (BOOL)canEnableNotificationForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  latestResults = [itemCopy latestResults];

  v9 = [latestResults objectForKeyedSubscript:@"HUCameraSettingResultKey"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  cameraProfiles = [v7 cameraProfiles];
  anyObject = [cameraProfiles anyObject];
  userSettings = [anyObject userSettings];
  recordingEventTriggers = [userSettings recordingEventTriggers];
  LOBYTE(recordingEventTriggers) = ([v11 eventTypes] & recordingEventTriggers) != 0;

  return recordingEventTriggers;
}

- (void)displayAlertForItemCell:(id)cell
{
  cellCopy = cell;
  item = [cellCopy item];
  objc_opt_class();
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:@"HUCameraSettingResultKey"];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  home = [mEMORY[0x277D146E8] home];
  if ([home hf_currentUserIsOwner])
  {
    -[HUCameraSmartNotificationSettingsModuleController alertMessageForEventType:](self, "alertMessageForEventType:", [v9 eventTypes]);
  }

  else
  {
    _HULocalizedStringWithDefaultValue(@"HUCameraStatusAndNotificationsSmartAlertDescription", @"HUCameraStatusAndNotificationsSmartAlertDescription", 1);
  }
  v12 = ;

  v13 = MEMORY[0x277D75110];
  v14 = -[HUCameraSmartNotificationSettingsModuleController alertTitleForEventType:](self, "alertTitleForEventType:", [v9 eventTypes]);
  v15 = [v13 alertControllerWithTitle:v14 message:v12 preferredStyle:1];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D750F8];
  v17 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __77__HUCameraSmartNotificationSettingsModuleController_displayAlertForItemCell___block_invoke;
  v28[3] = &unk_277DBBFE0;
  objc_copyWeak(&v32, &location);
  v18 = v9;
  v29 = v18;
  v19 = cellCopy;
  v30 = v19;
  v20 = item;
  v31 = v20;
  v21 = [v16 actionWithTitle:v17 style:0 handler:v28];
  [v15 addAction:v21];

  v22 = MEMORY[0x277D750F8];
  v23 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v24 = [v22 actionWithTitle:v23 style:0 handler:&__block_literal_global_80];
  [v15 addAction:v24];

  v25 = [HUViewControllerPresentationRequest requestWithViewController:v15];
  [v25 setPreferredPresentationType:0];
  host = [(HUItemModuleController *)self host];
  v27 = [host moduleController:self presentViewControllerForRequest:v25];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __77__HUCameraSmartNotificationSettingsModuleController_displayAlertForItemCell___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_opt_class();
  v3 = [WeakRetained module];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = MEMORY[0x277D144E0];
  v7 = [v5 cameraProfiles];
  v8 = [v6 configurationForCameraProfilesRecordingSettings:v7];

  [v8 addConfiguration:*(a1 + 32)];
  if ([v8 eventTypes])
  {
    [v8 setEventTypes:{objc_msgSend(v8, "eventTypes") ^ 1}];
  }

  v9 = [v5 cameraProfiles];
  v10 = [v9 anyObject];

  v11 = [v10 userSettings];
  v12 = [v8 eventTypes];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__HUCameraSmartNotificationSettingsModuleController_displayAlertForItemCell___block_invoke_2;
  v15[3] = &unk_277DBBFB8;
  v16 = v8;
  v17 = v10;
  v18 = *(a1 + 40);
  v19 = WeakRetained;
  v20 = *(a1 + 48);
  v13 = v8;
  v14 = v10;
  [v11 updateRecordingEventTriggers:v12 completionHandler:v15];
}

void __77__HUCameraSmartNotificationSettingsModuleController_displayAlertForItemCell___block_invoke_2(uint64_t a1, void *a2)
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
  }

  else
  {
    [*(a1 + 48) setOn:1 animated:1];
    [*(a1 + 56) updateNotificationSettingForItem:*(a1 + 64)];
  }
}

- (id)alertTitleForEventType:(unint64_t)type
{
  v4 = __ROR8__(type - 2, 1);
  if (v4 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = _HULocalizedStringWithDefaultValue(off_277DBC000[v4], off_277DBC000[v4], 1);
  }

  else
  {
    v5 = &stru_2823E0EE8;
  }

  return v5;
}

- (id)alertMessageForEventType:(unint64_t)type
{
  v4 = __ROR8__(type - 2, 1);
  if (v4 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = _HULocalizedStringWithDefaultValue(off_277DBC040[v4], off_277DBC040[v4], 1);
  }

  else
  {
    v5 = &stru_2823E0EE8;
  }

  return v5;
}

- (HUCameraSmartNotificationSettingsModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end