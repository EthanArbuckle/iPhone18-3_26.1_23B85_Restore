@interface HUCameraRecordingOptionsModuleController
- (BOOL)hasNotificationSettingForItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUCameraRecordingOptionsModuleController)initWithModule:(id)a3;
- (id)alertMessageForEventType:(unint64_t)a3;
- (id)alertTitleForEventType:(unint64_t)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)displayAlertForItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUCameraRecordingOptionsModuleController

- (HUCameraRecordingOptionsModuleController)initWithModule:(id)a3
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
  v20.super_class = HUCameraRecordingOptionsModuleController;
  v15 = [(HUItemModuleController *)&v20 initWithModule:v13];

  return v15;
}

- (Class)cellClassForItem:(id)a3
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

  if (([v7 isItemHeader:v4] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [v7 smartDetectionModule];
      v9 = [v8 anyMotionDetectedItem];
      if ([v4 isEqual:v9])
      {
LABEL_9:

        goto LABEL_11;
      }

      v10 = [v7 smartDetectionModule];
      v11 = [v10 specificMotionDetectedItem];
      if ([v4 isEqual:v11])
      {

        goto LABEL_9;
      }

      v12 = [v7 smartDetectionModule];
      v13 = [v12 aClipIsRecordedItem];
      [v4 isEqual:v13];
    }
  }

LABEL_11:
  v14 = objc_opt_class();

  return v14;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = HUCameraRecordingOptionsModuleController;
  [(HUItemModuleController *)&v29 setupCell:v6 forItem:v7];
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

  objc_opt_class();
  v22 = v19;
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (v24)
  {
    objc_opt_class();
    v25 = v7;
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v27)
    {
      v28 = [MEMORY[0x277D75348] redColor];
      [v24 setTintColor:v28];

      [v24 setTextAlignment:4];
    }
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12.receiver = self;
  v12.super_class = HUCameraRecordingOptionsModuleController;
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

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
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

    v8 = MEMORY[0x277D75110];
    v9 = _HULocalizedStringWithDefaultValue(@"HUCameraEraseAllRecordingsAlertMessage", @"HUCameraEraseAllRecordingsAlertMessage", 1);
    v10 = [v8 alertControllerWithTitle:0 message:v9 preferredStyle:0];

    v11 = MEMORY[0x277D750F8];
    v12 = _HULocalizedStringWithDefaultValue(@"HUCameraEraseAllRecordings", @"HUCameraEraseAllRecordings", 1);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __58__HUCameraRecordingOptionsModuleController_didSelectItem___block_invoke;
    v26[3] = &unk_277DB7600;
    v27 = v7;
    v13 = v7;
    v14 = [v11 actionWithTitle:v12 style:2 handler:v26];
    [v10 addAction:v14];

    v15 = MEMORY[0x277D750F8];
    v16 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertCancelButton", @"HUServiceDetailsRemoveDeviceAlertCancelButton", 1);
    v17 = [v15 actionWithTitle:v16 style:1 handler:0];
    [v10 addAction:v17];

    v18 = [HUViewControllerPresentationRequest requestWithViewController:v10];
    [v18 setPreferredPresentationType:0];
    v19 = [(HUItemModuleController *)self host];
    v20 = [v19 moduleController:self presentViewControllerForRequest:v18];
  }

  v21 = [(HUItemModuleController *)self module];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [(HUItemModuleController *)self module];
    v24 = [v23 didSelectItem:v4];
  }

  return 0;
}

void __58__HUCameraRecordingOptionsModuleController_didSelectItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudStorageModule];
  v1 = [v2 removeAllCameraRecordings];
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v27 = a3;
  objc_opt_class();
  v6 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v27 item];
  v10 = [v8 recordAudioItem];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    [v8 updateRecordAudioValue:v4];
  }

  else
  {
    if (v4 || ([v27 item], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[HUCameraRecordingOptionsModuleController hasNotificationSettingForItem:](self, "hasNotificationSettingForItem:", v12), v12, !v13))
    {
      v14 = [v8 smartDetectionModule];
      v15 = [v27 item];
      v16 = [v14 updateMotionDetectionSettingForItem:v15];
    }

    else
    {
      [v27 setOn:1 animated:1];
      v14 = [v27 item];
      [(HUCameraRecordingOptionsModuleController *)self displayAlertForItem:v14];
    }
  }

  objc_opt_class();
  v17 = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    objc_opt_class();
    v20 = [v27 item];
    v21 = [v20 latestResults];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277D13F68]];
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v25 = MEMORY[0x277D143D8];
    v26 = [v27 item];
    [v25 sendSwitchCellToggleEventForItem:v26 isOn:v4 title:v24 fromSourceViewController:v19];
  }
}

- (BOOL)hasNotificationSettingForItem:(id)a3
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

  v12 = MEMORY[0x277D144E0];
  v13 = [v7 cameraProfiles];
  v14 = [v12 configurationForCameraProfilesNotificationSettings:v13];

  v15 = [v14 eventTypes];
  LOBYTE(v15) = ([v11 eventTypes] & v15) != 0;

  return v15;
}

- (void)displayAlertForItem:(id)a3
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

  v9 = [MEMORY[0x277D146E8] sharedDispatcher];
  v10 = [v9 home];
  if ([v10 hf_currentUserIsOwner])
  {
    -[HUCameraRecordingOptionsModuleController alertMessageForEventType:](self, "alertMessageForEventType:", [v8 eventTypes]);
  }

  else
  {
    _HULocalizedStringWithDefaultValue(@"HUCameraStatusAndNotificationsSmartAlertDescription", @"HUCameraStatusAndNotificationsSmartAlertDescription", 1);
  }
  v11 = ;

  v12 = MEMORY[0x277D75110];
  v13 = -[HUCameraRecordingOptionsModuleController alertTitleForEventType:](self, "alertTitleForEventType:", [v8 eventTypes]);
  v14 = [v12 alertControllerWithTitle:v13 message:v11 preferredStyle:1];

  v15 = MEMORY[0x277D750F8];
  v16 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __64__HUCameraRecordingOptionsModuleController_displayAlertForItem___block_invoke;
  v28 = &unk_277DBBD90;
  v29 = self;
  v30 = v4;
  v17 = v4;
  v18 = [v15 actionWithTitle:v16 style:0 handler:&v25];
  [v14 addAction:{v18, v25, v26, v27, v28, v29}];

  v19 = MEMORY[0x277D750F8];
  v20 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v21 = [v19 actionWithTitle:v20 style:0 handler:&__block_literal_global_141];
  [v14 addAction:v21];

  v22 = [HUViewControllerPresentationRequest requestWithViewController:v14];
  [v22 setPreferredPresentationType:0];
  v23 = [(HUItemModuleController *)self host];
  v24 = [v23 moduleController:self presentViewControllerForRequest:v22];
}

void __64__HUCameraRecordingOptionsModuleController_displayAlertForItem___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) module];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v6 = [v4 smartDetectionModule];

  v5 = [v6 updateMotionDetectionSettingForItem:*(a1 + 40)];
}

- (id)alertTitleForEventType:(unint64_t)a3
{
  v4 = __ROR8__(a3 - 2, 1);
  if (v4 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = _HULocalizedStringWithDefaultValue(off_277DBF260[v4], off_277DBF260[v4], 1);
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
    v5 = _HULocalizedStringWithDefaultValue(off_277DBF2A0[v4], off_277DBF2A0[v4], 1);
  }

  else
  {
    v5 = &stru_2823E0EE8;
  }

  return v5;
}

@end