@interface HUCameraSmartNotificationSettingsModuleController
+ (BOOL)shouldDisplayAlertForItem:(id)a3 withSmartDetectionModule:(id)a4 forProfile:(id)a5;
- (BOOL)canEnableNotificationForItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUCameraSmartNotificationSettingsModuleController)initWithModule:(id)a3;
- (HUCameraSmartNotificationSettingsModuleControllerDelegate)delegate;
- (id)alertMessageForEventType:(unint64_t)a3;
- (id)alertTitleForEventType:(unint64_t)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)displayAlertForItemCell:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
- (void)updateNotificationSettingForItem:(id)a3;
@end

@implementation HUCameraSmartNotificationSettingsModuleController

- (HUCameraSmartNotificationSettingsModuleController)initWithModule:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

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
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
      v19 = NSStringFromProtocol(v11);
      [v17 handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v19}];

      v6 = 0;
    }
  }

  v20.receiver = self;
  v20.super_class = HUCameraSmartNotificationSettingsModuleController;
  v15 = [(HUItemModuleController *)&v20 initWithModule:v13];

  return v15;
}

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 isItemHeader:v4];

  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v7 = objc_opt_class();

  return v7;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HUCameraSmartNotificationSettingsModuleController;
  [(HUItemModuleController *)&v22 setupCell:v6 forItem:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setValueColorFollowsTintColor:1];
  }

  v8 = [v7 latestResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  if (v9)
  {
    objc_opt_class();
    v10 = v6;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 imageView];
    [v13 setContentMode:5];

    [v12 setImageViewRecommendedSize:{50.0, 50.0}];
  }

  v14 = [(HUItemModuleController *)self module];
  v15 = [v14 isItemHeader:v7];

  if ((v15 & 1) == 0)
  {
    objc_opt_class();
    v16 = v6;
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
  v19 = v6;
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

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12.receiver = self;
  v12.super_class = HUCameraSmartNotificationSettingsModuleController;
  v7 = a4;
  v8 = a3;
  [(HUItemModuleController *)&v12 updateCell:v8 forItem:v7 animated:v5];
  v9 = [v7 latestResults];

  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  if ([v10 BOOLValue])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v8 setAccessoryType:v11];
}

+ (BOOL)shouldDisplayAlertForItem:(id)a3 withSmartDetectionModule:(id)a4 forProfile:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 hf_cameraIsNotSetToRecord];
  v10 = [v8 specificMotionDetectedItem];
  if (([v7 isEqual:v10] & 1) == 0)
  {
    v11 = [v8 aClipIsRecordedItem];
    v9 &= [v7 isEqual:v11];
  }

  return v9;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(HUItemModuleController *)self module];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (_os_feature_enabled_impl())
    {
      v10 = [(HUItemModuleController *)self module];
      v11 = [v10 didSelectItem:v4];

      v12 = [(HUCameraSmartNotificationSettingsModuleController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = [(HUCameraSmartNotificationSettingsModuleController *)self delegate];
        v15 = [v7 conditionCollection];
        [v14 smartNotificationSettingsModuleController:self didUpdateConditionCollection:v15];
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
      v17 = [v7 cameraProfiles];
      v18 = [v17 anyObject];
      v19 = [HUCameraSmartNotificationSettingsModuleController shouldDisplayAlertForItem:v4 withSmartDetectionModule:v7 forProfile:v18];

      if (v19)
      {
        v20 = [MEMORY[0x277D146E8] sharedDispatcher];
        v21 = [v20 home];
        if ([v21 hf_currentUserIsOwner])
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
        v38 = v4;
        v29 = [v27 actionWithTitle:v28 style:0 handler:&v34];
        [v26 addAction:{v29, v34, v35, v36, v37}];

        v30 = [HUViewControllerPresentationRequest requestWithViewController:v26];
        [v30 setPreferredPresentationType:0];
        v31 = [(HUItemModuleController *)self host];
        v32 = [v31 moduleController:self presentViewControllerForRequest:v30];
      }

      else
      {
        (*(v16 + 2))(v16, v4);
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

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = v6;
  if (v4 && ([v6 item], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[HUCameraSmartNotificationSettingsModuleController canEnableNotificationForItem:](self, "canEnableNotificationForItem:", v7), v7, v6 = v10, !v8))
  {
    [v10 setOn:0 animated:1];
    [(HUCameraSmartNotificationSettingsModuleController *)self displayAlertForItemCell:v10];
  }

  else
  {
    v9 = [v6 item];
    [(HUCameraSmartNotificationSettingsModuleController *)self updateNotificationSettingForItem:v9];
  }
}

- (void)updateNotificationSettingForItem:(id)a3
{
  v18 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 updateMotionDetectionSettingForItem:v18];
  v9 = [(HUCameraSmartNotificationSettingsModuleController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(HUCameraSmartNotificationSettingsModuleController *)self delegate];
    v12 = [v7 conditionCollection];
    [v11 smartNotificationSettingsModuleController:self didUpdateConditionCollection:v12];
  }

  v13 = [v7 itemUpdater];
  v14 = MEMORY[0x277D14788];
  v15 = [v7 itemProviders];
  v16 = [v14 requestToReloadItemProviders:v15 senderSelector:a2];
  v17 = [v13 performItemUpdateRequest:v16];
}

- (BOOL)canEnableNotificationForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = [v4 latestResults];

  v9 = [v8 objectForKeyedSubscript:@"HUCameraSettingResultKey"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v7 cameraProfiles];
  v13 = [v12 anyObject];
  v14 = [v13 userSettings];
  v15 = [v14 recordingEventTriggers];
  LOBYTE(v15) = ([v11 eventTypes] & v15) != 0;

  return v15;
}

- (void)displayAlertForItemCell:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  objc_opt_class();
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:@"HUCameraSettingResultKey"];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [MEMORY[0x277D146E8] sharedDispatcher];
  v11 = [v10 home];
  if ([v11 hf_currentUserIsOwner])
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
  v19 = v4;
  v30 = v19;
  v20 = v5;
  v31 = v20;
  v21 = [v16 actionWithTitle:v17 style:0 handler:v28];
  [v15 addAction:v21];

  v22 = MEMORY[0x277D750F8];
  v23 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v24 = [v22 actionWithTitle:v23 style:0 handler:&__block_literal_global_80];
  [v15 addAction:v24];

  v25 = [HUViewControllerPresentationRequest requestWithViewController:v15];
  [v25 setPreferredPresentationType:0];
  v26 = [(HUItemModuleController *)self host];
  v27 = [v26 moduleController:self presentViewControllerForRequest:v25];

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

- (id)alertTitleForEventType:(unint64_t)a3
{
  v4 = __ROR8__(a3 - 2, 1);
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

- (id)alertMessageForEventType:(unint64_t)a3
{
  v4 = __ROR8__(a3 - 2, 1);
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