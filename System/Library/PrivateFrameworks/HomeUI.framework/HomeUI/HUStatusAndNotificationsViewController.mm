@interface HUStatusAndNotificationsViewController
- (BOOL)_isAutoClimateCapableThermostat;
- (BOOL)_isClimateService;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)showStatusSection;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUStatusAndNotificationsViewController)initWithServiceItem:(id)a3 inHome:(id)a4 displayingDetails:(BOOL)a5;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)itemModuleControllers;
- (unint64_t)automaticDisablingReasonsForItem:(id)a3;
- (void)_toggleSmartActivityNotificationWithAlertNotificationForCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)conditionEditorModuleController:(id)a3 didUpdateConditionCollection:(id)a4;
- (void)setShowStatusSection:(BOOL)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)smartNotificationSettingsModuleController:(id)a3 didUpdateConditionCollection:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUStatusAndNotificationsViewController

- (HUStatusAndNotificationsViewController)initWithServiceItem:(id)a3 inHome:(id)a4 displayingDetails:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [[HUStatusAndNotificationsItemManager alloc] initWithServiceItem:v8 delegate:self home:v9];
  v32.receiver = self;
  v32.super_class = HUStatusAndNotificationsViewController;
  v11 = [(HUItemTableViewController *)&v32 initWithItemManager:v10 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    [(HUStatusAndNotificationsViewController *)v11 setItem:v8];
    if (v5)
    {
      [(HUStatusAndNotificationsViewController *)v12 setUseServiceNameAsTitle:0];
      v13 = [(HUItemTableViewController *)v12 itemManager];
      [v13 setShowsForServiceDetails:1];
    }

    else
    {
      [(HUStatusAndNotificationsViewController *)v12 setShowStatusSection:0];
      [(HUStatusAndNotificationsViewController *)v12 setUseServiceNameAsTitle:1];
    }

    if (([v9 hf_currentUserIsAdministrator] & 1) == 0)
    {
      [(HUStatusAndNotificationsViewController *)v12 setShowStatusSection:0];
    }

    v14 = [MEMORY[0x277D144A0] cameraContainsMotionServiceItem:v8];
    v15 = [(HUStatusAndNotificationsItemManager *)v10 conditionModule];
    v16 = (v15 == 0) | v14;

    if ((v16 & 1) == 0)
    {
      v17 = [HUTriggerConditionEditorItemModuleController alloc];
      v18 = [(HUStatusAndNotificationsItemManager *)v10 conditionModule];
      v19 = [(HUTriggerConditionEditorItemModuleController *)v17 initWithModule:v18 delegate:v12];
      conditionModuleController = v12->_conditionModuleController;
      v12->_conditionModuleController = v19;
    }

    v21 = [(HUStatusAndNotificationsItemManager *)v10 cameraSmartDetectionSettingsModule];

    if (v21)
    {
      v22 = [HUCameraSmartNotificationSettingsModuleController alloc];
      v23 = [(HUStatusAndNotificationsItemManager *)v10 cameraSmartDetectionSettingsModule];
      v24 = [(HUCameraSmartNotificationSettingsModuleController *)v22 initWithModule:v23];
      cameraSmartSettingsModuleController = v12->_cameraSmartSettingsModuleController;
      v12->_cameraSmartSettingsModuleController = v24;

      [(HUCameraSmartNotificationSettingsModuleController *)v12->_cameraSmartSettingsModuleController setDelegate:v12];
      [(HUItemModuleController *)v12->_cameraSmartSettingsModuleController setHost:v12];
    }

    v26 = [(HUStatusAndNotificationsViewController *)v12 showStatusSection];
    v27 = @"HUNotificationsTitle";
    if (v26)
    {
      v27 = @"HUStatusAndNotificationsTitle";
    }

    if (v16)
    {
      v28 = @"HUStatusTitle";
    }

    else
    {
      v28 = v27;
    }

    v29 = _HULocalizedStringWithDefaultValue(v28, v28, 1);
    if ([(HUStatusAndNotificationsViewController *)v12 _isClimateService]|| ![(HUStatusAndNotificationsViewController *)v12 _isAutoClimateCapableThermostat])
    {
      [(HUStatusAndNotificationsViewController *)v12 setTitle:v29];
    }

    else
    {
      v30 = _HULocalizedStringWithDefaultValue(@"HUNotificationsTitle", @"HUNotificationsTitle", 1);
      [(HUStatusAndNotificationsViewController *)v12 setTitle:v30];
    }
  }

  return v12;
}

- (BOOL)showStatusSection
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 showStatusSection];

  return v3;
}

- (void)setShowStatusSection:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUItemTableViewController *)self itemManager];
  [v4 setShowStatusSection:v3];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 chimeOnAccessoriesListItem];
  [v5 isEqual:v7];

  v8 = objc_opt_class();

  return v8;
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v21.receiver = self;
  v21.super_class = HUStatusAndNotificationsViewController;
  [(HUItemTableViewController *)&v21 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
    [v12 setDelegate:self];
    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 includeInStatusItem];
    v15 = [v11 isEqual:v14];

    if (v15)
    {
      v16 = [(HUStatusAndNotificationsViewController *)self item];
      v17 = [v16 homeKitObject];
      if ([v17 conformsToProtocol:&unk_28259DE80])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v20 = [v19 hf_isForcedVisibleInHomeStatus];
      [v12 setDisabled:v20];
    }
  }
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v17 = a3;
  v7 = a4;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 chimeOnAccessoriesListItem];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = v17;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v12;
      if (v13)
      {
        goto LABEL_9;
      }

      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v15 handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
    }

    v14 = 0;
LABEL_9:

    [v14 setHideIcon:1];
    [v14 setAccessoryType:1];
  }
}

- (unint64_t)automaticDisablingReasonsForItem:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HUStatusAndNotificationsViewController;
  v5 = [(HUItemTableViewController *)&v13 automaticDisablingReasonsForItem:v4];
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 allowNotificationsItem];
  v8 = v7;
  if (v7 == v4)
  {
  }

  else
  {
    v9 = [(HUItemTableViewController *)self itemManager];
    v10 = [v9 conditionModule];
    v11 = [v10 containsItem:v4];

    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v5 = 1;
LABEL_6:

  return v5;
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v4 = [(HUStatusAndNotificationsViewController *)self conditionModuleController];
  [v3 na_safeAddObject:v4];

  v5 = [(HUStatusAndNotificationsViewController *)self cameraSmartSettingsModuleController];
  [v3 na_safeAddObject:v5];

  return v3;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 displayedSectionIdentifierForSectionIndex:a4];
  v9 = [v8 isEqualToString:@"HUStatusAndNotificationsConditionSectionIdentifier"];

  v10 = [(HUItemTableViewController *)self itemManager];
  if ([v10 numberOfSections] - 1 <= a4)
  {
  }

  else
  {
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 displayedSectionIdentifierForSectionIndex:a4 + 1];
    v13 = [v12 isEqualToString:@"HUCameraSmartDetectionSettingsOnOffSectionIdentifier"];

    v14 = 10.0;
    if (v9 & v13)
    {
      goto LABEL_6;
    }
  }

  v17.receiver = self;
  v17.super_class = HUStatusAndNotificationsViewController;
  [(HUItemTableViewController *)&v17 tableView:v6 heightForFooterInSection:a4];
  v14 = v15;
LABEL_6:

  return v14;
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex:a3];
  v7 = [v6 isEqualToString:@"HUCameraSmartDetectionSettingsOnOffSectionIdentifier"];

  v8 = a3 < 1;
  v9 = a3 - 1;
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 displayedSectionIdentifierForSectionIndex:v9];
    v12 = [v11 isEqualToString:@"HUStatusAndNotificationsConditionSectionIdentifier"];
  }

  return v7 & v12;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUStatusAndNotificationsViewController;
    v10 = [(HUItemTableViewController *)&v12 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = HUStatusAndNotificationsViewController;
  v6 = a4;
  [(HUItemTableViewController *)&v15 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(HUItemTableViewController *)self itemManager:v15.receiver];
  v8 = [v7 displayedItemAtIndexPath:v6];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 chimeOnAccessoriesListItem];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = objc_alloc_init(HUDoorbellChimeDevicesViewController);
    v13 = [(HUStatusAndNotificationsViewController *)self navigationController];
    v14 = [v13 hu_pushPreloadableViewController:v12 animated:1];
  }
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUStatusAndNotificationsViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];

  v11 = [(HUItemTableViewController *)self itemManager];
  v12 = [v11 includeInStatusItem];
  v13 = [v10 isEqual:v12];

  if (v13)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DBA338;
    aBlock[4] = self;
    v14 = _Block_copy(aBlock);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_3;
    v59[3] = &unk_277DB8A10;
    v59[4] = self;
    v60 = v4;
    v15 = __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_3(v59);
    v16 = [v15 addSuccessBlock:v14];
LABEL_8:

    goto LABEL_9;
  }

  v17 = [(HUItemTableViewController *)self itemManager];
  v18 = [v17 allowNotificationsItem];
  v19 = [v10 isEqual:v18];

  v20 = [(HUItemTableViewController *)self itemManager];
  v14 = v20;
  if (v19)
  {
    v21 = [v20 updateAllowNotifications:v4];
    v15 = v21;
    v22 = &__block_literal_global_187;
LABEL_7:
    v26 = [v21 addFailureBlock:v22];
    goto LABEL_8;
  }

  v23 = [v20 allowAudioNotificationsItem];
  v24 = [v10 isEqual:v23];

  v25 = [(HUItemTableViewController *)self itemManager];
  v14 = v25;
  if (v24)
  {
    v21 = [v25 updateAllowAudioNotifications:v4];
    v15 = v21;
    v22 = &__block_literal_global_91_0;
    goto LABEL_7;
  }

  v36 = [v25 allowActivityNotificationsItem];
  v37 = [v10 isEqual:v36];

  if (v37)
  {
    [(HUStatusAndNotificationsViewController *)self _toggleSmartActivityNotificationWithAlertNotificationForCell:v6 didTurnOn:v4];
  }

  else
  {
    v38 = [(HUItemTableViewController *)self itemManager];
    v39 = [v38 allowDoorbellNotificationsItem];
    v40 = [v10 isEqual:v39];

    v41 = [(HUItemTableViewController *)self itemManager];
    v14 = v41;
    if (v40)
    {
      v21 = [v41 updateAllowDoorbellNotifications:v4];
      v15 = v21;
      v22 = &__block_literal_global_93;
      goto LABEL_7;
    }

    v42 = [v41 allowAnalogChimeNotificationItem];
    v43 = [v10 isEqual:v42];

    v44 = [(HUItemTableViewController *)self itemManager];
    v14 = v44;
    if (v43)
    {
      v21 = [v44 updateAllowChimeAnalogNotifications:v4];
      v15 = v21;
      v22 = &__block_literal_global_95_0;
      goto LABEL_7;
    }

    v45 = [v44 allowMotionNotificationsItem];
    v46 = [v10 isEqual:v45];

    v47 = [(HUItemTableViewController *)self itemManager];
    v14 = v47;
    if (v46)
    {
      v21 = [v47 updateAllowMotionNotifications:v4];
      v15 = v21;
      v22 = &__block_literal_global_97_0;
      goto LABEL_7;
    }

    v48 = [v47 chimeOnHomePodSingleItem];
    v49 = [v10 isEqual:v48];

    v50 = [(HUItemTableViewController *)self itemManager];
    v14 = v50;
    if (v49)
    {
      v21 = [v50 updateChimeOnAccessory:v4];
      v15 = v21;
      v22 = &__block_literal_global_99_3;
      goto LABEL_7;
    }

    v51 = [v50 allowCameraSnapshotsItem];
    v52 = [v10 isEqual:v51];

    v53 = [(HUItemTableViewController *)self itemManager];
    v14 = v53;
    if (v52)
    {
      v21 = [v53 updateAllowSnapshotsInNotifications:v4];
      v15 = v21;
      v22 = &__block_literal_global_101_0;
      goto LABEL_7;
    }

    v54 = [v53 allowCameraStatusChangesItem];
    v55 = [v10 isEqual:v54];

    v56 = [(HUItemTableViewController *)self itemManager];
    v14 = v56;
    if (v55)
    {
      v21 = [v56 updateAllowCameraStatusChangeNotifications:v4];
      v15 = v21;
      v22 = &__block_literal_global_103;
      goto LABEL_7;
    }

    v57 = [v56 allowCameraReachabilityChangeNotificationsItem];
    v58 = [v10 isEqual:v57];

    if (v58)
    {
      v14 = [(HUItemTableViewController *)self itemManager];
      v21 = [v14 updateAllowCameraReachabilityStatusChangeNotifications:v4];
      v15 = v21;
      v22 = &__block_literal_global_105_1;
      goto LABEL_7;
    }
  }

LABEL_9:
  v27 = [v10 latestResults];
  v28 = *MEMORY[0x277D13F68];
  v29 = [v27 objectForKey:*MEMORY[0x277D13F68]];

  if (v29)
  {
    v30 = [v10 latestResults];
    v31 = [v30 objectForKeyedSubscript:v28];
  }

  else
  {
    v31 = 0;
  }

  v32 = v10;
  if ([v32 conformsToProtocol:&unk_2825080B8])
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (![v31 length] && v34)
  {
    v35 = [v34 itemTitleLocalizationKey];

    v31 = v35;
  }

  [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:v32 isOn:v4 title:v31 fromSourceViewController:self];
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [*(a1 + 32) item];
  v2 = [v1 services];

  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [MEMORY[0x277D146E8] sharedDispatcher];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_2;
        v9[3] = &unk_277DBEF60;
        v9[4] = v7;
        [v8 dispatchAccessoryObserverMessage:v9 sender:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) accessory];
    [v4 accessory:v3 didUpdateApplicationDataForService:*(a1 + 32)];
  }
}

id __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) item];
  v3 = [v2 homeKitObject];
  if ([v3 conformsToProtocol:&unk_28259DE80])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 hf_updateIsVisibleInHomeStatus:*(a1 + 40)];
  }

  else
  {
    v7 = [*(a1 + 32) item];
    NSLog(&cfstr_AttemptingToTo.isa, v7);

    v8 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:-1];
    v6 = [v8 futureWithError:v9];
  }

  return v6;
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

void __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

- (void)conditionEditorModuleController:(id)a3 didUpdateConditionCollection:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 conditions];
  v7 = [v6 na_any:&__block_literal_global_120_0];

  if (v7)
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v5 conditions];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        v12 = 0;
        do
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [(HUItemTableViewController *)self itemManager];
            [v5 predicate];
            v16 = v15 = v5;
            v17 = [v14 updateCameraSmartNotificationCondition:v16];
            v18 = [v17 addFailureBlock:&__block_literal_global_126_2];

            v5 = v15;
          }

          else
          {
            [v28 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    v19 = [objc_alloc(MEMORY[0x277D14598]) initWithConditions:v28];
    v20 = [(HUItemTableViewController *)self itemManager];
    v21 = [v19 predicate];
    v22 = [v20 updateNotificationCondition:v21];
    v23 = [v22 addFailureBlock:&__block_literal_global_129];
  }

  else
  {
    v24 = [(HUItemTableViewController *)self itemManager];
    v25 = [v5 predicate];
    v26 = [v24 updateNotificationCondition:v25];
    v27 = [v26 addFailureBlock:&__block_literal_global_123_2];
  }
}

uint64_t __103__HUStatusAndNotificationsViewController_conditionEditorModuleController_didUpdateConditionCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __103__HUStatusAndNotificationsViewController_conditionEditorModuleController_didUpdateConditionCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3 operationType:*MEMORY[0x277D13C18] options:0 retryBlock:0 cancelBlock:0];
}

void __103__HUStatusAndNotificationsViewController_conditionEditorModuleController_didUpdateConditionCollection___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3 operationType:*MEMORY[0x277D13C18] options:0 retryBlock:0 cancelBlock:0];
}

void __103__HUStatusAndNotificationsViewController_conditionEditorModuleController_didUpdateConditionCollection___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3 operationType:*MEMORY[0x277D13C18] options:0 retryBlock:0 cancelBlock:0];
}

- (void)smartNotificationSettingsModuleController:(id)a3 didUpdateConditionCollection:(id)a4
{
  v5 = a4;
  v9 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 predicate];

  v7 = [v9 updateCameraSmartNotificationCondition:v6];
  v8 = [v7 addFailureBlock:&__block_literal_global_131_3];
}

void __113__HUStatusAndNotificationsViewController_smartNotificationSettingsModuleController_didUpdateConditionCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3 operationType:*MEMORY[0x277D13C18] options:0 retryBlock:0 cancelBlock:0];
}

- (void)_toggleSmartActivityNotificationWithAlertNotificationForCell:(id)a3 didTurnOn:(BOOL)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v6 = [(HUStatusAndNotificationsViewController *)self item];
  v7 = [v6 services];
  v8 = [v7 allObjects];
  v9 = [v8 firstObject];
  v10 = [v9 accessory];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HUStatusAndNotificationsViewController__toggleSmartActivityNotificationWithAlertNotificationForCell_didTurnOn___block_invoke;
  aBlock[3] = &unk_277DBBCF0;
  objc_copyWeak(&v33, &location);
  v34 = a4;
  v26 = _Block_copy(aBlock);
  v11 = [(HUItemTableViewController *)self itemManager];
  v12 = [v11 home];

  v13 = [v12 restrictedGuests];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __113__HUStatusAndNotificationsViewController__toggleSmartActivityNotificationWithAlertNotificationForCell_didTurnOn___block_invoke_3;
  v29[3] = &unk_277DC0C10;
  v14 = v12;
  v30 = v14;
  v15 = v10;
  v31 = v15;
  v16 = [v13 na_firstObjectPassingTest:v29];

  v17 = 0;
  if (!a4 && v16)
  {
    v17 = [v14 hf_currentUserIsAdministrator];
  }

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self;
    v19 = NSStringFromBooleanValue();
    v20 = NSStringFromBooleanValue();
    v21 = NSStringFromBooleanValue();
    v22 = [v16 hf_prettyDescription];
    [v14 hf_currentUserIsAdministrator];
    v23 = NSStringFromBooleanValue();
    *buf = 136316930;
    v37 = "[HUStatusAndNotificationsViewController _toggleSmartActivityNotificationWithAlertNotificationForCell:didTurnOn:]";
    v38 = 2112;
    v39 = v19;
    v40 = 2112;
    v41 = v20;
    v42 = 2112;
    v43 = v21;
    v44 = 2112;
    v45 = v22;
    v46 = 2112;
    v47 = v23;
    v48 = 2112;
    v49 = v15;
    v50 = 2112;
    v51 = v14;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "(%s) shouldShowNotificationAlert = %@ because isOn = %@, isAccessoryAllowedForRG is '%@' for rg %@, isAdmin = %@, accessory = %@, home = %@", buf, 0x52u);

    self = v24;
  }

  if (v17)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __113__HUStatusAndNotificationsViewController__toggleSmartActivityNotificationWithAlertNotificationForCell_didTurnOn___block_invoke_136;
    v27[3] = &unk_277DB8488;
    v28 = v25;
    [(UIViewController *)self hu_presentNotificationAlertForNotificationCapableObjects:MEMORY[0x277CBEBF8] notificationsEnabled:0 mainActionBlock:v26 notNowActionBlock:v27];
  }

  else
  {
    v26[2]();
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void __113__HUStatusAndNotificationsViewController__toggleSmartActivityNotificationWithAlertNotificationForCell_didTurnOn___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained itemManager];
  v3 = [v2 updateAllowSmartActivityNotifications:*(a1 + 40)];
  v4 = [v3 addFailureBlock:&__block_literal_global_133];
}

void __113__HUStatusAndNotificationsViewController__toggleSmartActivityNotificationWithAlertNotificationForCell_didTurnOn___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

uint64_t __113__HUStatusAndNotificationsViewController__toggleSmartActivityNotificationWithAlertNotificationForCell_didTurnOn___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) homeAccessControlForUser:a2];
  v4 = [v3 restrictedGuestAccessSettings];
  v5 = [v4 accessAllowedToAccessories];
  v6 = [v5 containsObject:*(a1 + 40)];

  return v6;
}

- (BOOL)_isClimateService
{
  objc_opt_class();
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 serviceItem];
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
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = [(HUItemTableViewController *)self itemManager];
    v9 = [v8 serviceItem];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v7 = v11 != 0;
  }

  return v7;
}

- (BOOL)_isAutoClimateCapableThermostat
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 serviceItem];
  v5 = [v4 accessories];
  v6 = [v5 na_firstObjectPassingTest:&__block_literal_global_143];

  if (v6)
  {
    v7 = [v6 home];
    v8 = v7;
    if (v7 && [v7 hf_hasResidentCapableOfSupportingHomeActivityState])
    {
      if ([v6 supportsAdaptiveTemperatureAutomations])
      {
        v9 = 1;
      }

      else
      {
        v9 = [v6 supportsCleanEnergyAutomation];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __73__HUStatusAndNotificationsViewController__isAutoClimateCapableThermostat__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 services];
  v3 = [v2 na_any:&__block_literal_global_146];

  return v3;
}

uint64_t __73__HUStatusAndNotificationsViewController__isAutoClimateCapableThermostat__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 serviceType];
  if ([v3 isEqualToString:*MEMORY[0x277CD0F30]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 serviceType];
    v4 = [v5 isEqualToString:*MEMORY[0x277CD0E60]];
  }

  return v4;
}

@end