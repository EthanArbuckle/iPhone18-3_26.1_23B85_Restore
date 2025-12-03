@interface HUStatusAndNotificationsViewController
- (BOOL)_isAutoClimateCapableThermostat;
- (BOOL)_isClimateService;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (BOOL)showStatusSection;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUStatusAndNotificationsViewController)initWithServiceItem:(id)item inHome:(id)home displayingDetails:(BOOL)details;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)itemModuleControllers;
- (unint64_t)automaticDisablingReasonsForItem:(id)item;
- (void)_toggleSmartActivityNotificationWithAlertNotificationForCell:(id)cell didTurnOn:(BOOL)on;
- (void)conditionEditorModuleController:(id)controller didUpdateConditionCollection:(id)collection;
- (void)setShowStatusSection:(BOOL)section;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)smartNotificationSettingsModuleController:(id)controller didUpdateConditionCollection:(id)collection;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUStatusAndNotificationsViewController

- (HUStatusAndNotificationsViewController)initWithServiceItem:(id)item inHome:(id)home displayingDetails:(BOOL)details
{
  detailsCopy = details;
  itemCopy = item;
  homeCopy = home;
  v10 = [[HUStatusAndNotificationsItemManager alloc] initWithServiceItem:itemCopy delegate:self home:homeCopy];
  v32.receiver = self;
  v32.super_class = HUStatusAndNotificationsViewController;
  v11 = [(HUItemTableViewController *)&v32 initWithItemManager:v10 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    [(HUStatusAndNotificationsViewController *)v11 setItem:itemCopy];
    if (detailsCopy)
    {
      [(HUStatusAndNotificationsViewController *)v12 setUseServiceNameAsTitle:0];
      itemManager = [(HUItemTableViewController *)v12 itemManager];
      [itemManager setShowsForServiceDetails:1];
    }

    else
    {
      [(HUStatusAndNotificationsViewController *)v12 setShowStatusSection:0];
      [(HUStatusAndNotificationsViewController *)v12 setUseServiceNameAsTitle:1];
    }

    if (([homeCopy hf_currentUserIsAdministrator] & 1) == 0)
    {
      [(HUStatusAndNotificationsViewController *)v12 setShowStatusSection:0];
    }

    v14 = [MEMORY[0x277D144A0] cameraContainsMotionServiceItem:itemCopy];
    conditionModule = [(HUStatusAndNotificationsItemManager *)v10 conditionModule];
    v16 = (conditionModule == 0) | v14;

    if ((v16 & 1) == 0)
    {
      v17 = [HUTriggerConditionEditorItemModuleController alloc];
      conditionModule2 = [(HUStatusAndNotificationsItemManager *)v10 conditionModule];
      v19 = [(HUTriggerConditionEditorItemModuleController *)v17 initWithModule:conditionModule2 delegate:v12];
      conditionModuleController = v12->_conditionModuleController;
      v12->_conditionModuleController = v19;
    }

    cameraSmartDetectionSettingsModule = [(HUStatusAndNotificationsItemManager *)v10 cameraSmartDetectionSettingsModule];

    if (cameraSmartDetectionSettingsModule)
    {
      v22 = [HUCameraSmartNotificationSettingsModuleController alloc];
      cameraSmartDetectionSettingsModule2 = [(HUStatusAndNotificationsItemManager *)v10 cameraSmartDetectionSettingsModule];
      v24 = [(HUCameraSmartNotificationSettingsModuleController *)v22 initWithModule:cameraSmartDetectionSettingsModule2];
      cameraSmartSettingsModuleController = v12->_cameraSmartSettingsModuleController;
      v12->_cameraSmartSettingsModuleController = v24;

      [(HUCameraSmartNotificationSettingsModuleController *)v12->_cameraSmartSettingsModuleController setDelegate:v12];
      [(HUItemModuleController *)v12->_cameraSmartSettingsModuleController setHost:v12];
    }

    showStatusSection = [(HUStatusAndNotificationsViewController *)v12 showStatusSection];
    v27 = @"HUNotificationsTitle";
    if (showStatusSection)
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
  itemManager = [(HUItemTableViewController *)self itemManager];
  showStatusSection = [itemManager showStatusSection];

  return showStatusSection;
}

- (void)setShowStatusSection:(BOOL)section
{
  sectionCopy = section;
  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager setShowStatusSection:sectionCopy];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  chimeOnAccessoriesListItem = [itemManager chimeOnAccessoriesListItem];
  [itemCopy isEqual:chimeOnAccessoriesListItem];

  v8 = objc_opt_class();

  return v8;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v21.receiver = self;
  v21.super_class = HUStatusAndNotificationsViewController;
  [(HUItemTableViewController *)&v21 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = cellCopy;
    [v12 setDelegate:self];
    itemManager = [(HUItemTableViewController *)self itemManager];
    includeInStatusItem = [itemManager includeInStatusItem];
    v15 = [itemCopy isEqual:includeInStatusItem];

    if (v15)
    {
      item = [(HUStatusAndNotificationsViewController *)self item];
      homeKitObject = [item homeKitObject];
      if ([homeKitObject conformsToProtocol:&unk_28259DE80])
      {
        v18 = homeKitObject;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      hf_isForcedVisibleInHomeStatus = [v19 hf_isForcedVisibleInHomeStatus];
      [v12 setDisabled:hf_isForcedVisibleInHomeStatus];
    }
  }
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  chimeOnAccessoriesListItem = [itemManager chimeOnAccessoriesListItem];
  v10 = [itemCopy isEqual:chimeOnAccessoriesListItem];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = cellCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
    }

    v14 = 0;
LABEL_9:

    [v14 setHideIcon:1];
    [v14 setAccessoryType:1];
  }
}

- (unint64_t)automaticDisablingReasonsForItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = HUStatusAndNotificationsViewController;
  v5 = [(HUItemTableViewController *)&v13 automaticDisablingReasonsForItem:itemCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  allowNotificationsItem = [itemManager allowNotificationsItem];
  v8 = allowNotificationsItem;
  if (allowNotificationsItem == itemCopy)
  {
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    conditionModule = [itemManager2 conditionModule];
    v11 = [conditionModule containsItem:itemCopy];

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
  conditionModuleController = [(HUStatusAndNotificationsViewController *)self conditionModuleController];
  [v3 na_safeAddObject:conditionModuleController];

  cameraSmartSettingsModuleController = [(HUStatusAndNotificationsViewController *)self cameraSmartSettingsModuleController];
  [v3 na_safeAddObject:cameraSmartSettingsModuleController];

  return v3;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v9 = [v8 isEqualToString:@"HUStatusAndNotificationsConditionSectionIdentifier"];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  if ([itemManager2 numberOfSections] - 1 <= section)
  {
  }

  else
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    v12 = [itemManager3 displayedSectionIdentifierForSectionIndex:section + 1];
    v13 = [v12 isEqualToString:@"HUCameraSmartDetectionSettingsOnOffSectionIdentifier"];

    v14 = 10.0;
    if (v9 & v13)
    {
      goto LABEL_6;
    }
  }

  v17.receiver = self;
  v17.super_class = HUStatusAndNotificationsViewController;
  [(HUItemTableViewController *)&v17 tableView:viewCopy heightForFooterInSection:section];
  v14 = v15;
LABEL_6:

  return v14;
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v7 = [v6 isEqualToString:@"HUCameraSmartDetectionSettingsOnOffSectionIdentifier"];

  v8 = section < 1;
  v9 = section - 1;
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v11 = [itemManager2 displayedSectionIdentifierForSectionIndex:v9];
    v12 = [v11 isEqualToString:@"HUStatusAndNotificationsConditionSectionIdentifier"];
  }

  return v7 & v12;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
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
    v10 = [(HUItemTableViewController *)&v12 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = HUStatusAndNotificationsViewController;
  pathCopy = path;
  [(HUItemTableViewController *)&v15 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(HUItemTableViewController *)self itemManager:v15.receiver];
  v8 = [v7 displayedItemAtIndexPath:pathCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  chimeOnAccessoriesListItem = [itemManager chimeOnAccessoriesListItem];
  v11 = [v8 isEqual:chimeOnAccessoriesListItem];

  if (v11)
  {
    v12 = objc_alloc_init(HUDoorbellChimeDevicesViewController);
    navigationController = [(HUStatusAndNotificationsViewController *)self navigationController];
    v14 = [navigationController hu_pushPreloadableViewController:v12 animated:1];
  }
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUStatusAndNotificationsViewController *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:v8];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  includeInStatusItem = [itemManager2 includeInStatusItem];
  v13 = [v10 isEqual:includeInStatusItem];

  if (v13)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DBA338;
    aBlock[4] = self;
    itemManager13 = _Block_copy(aBlock);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_3;
    v59[3] = &unk_277DB8A10;
    v59[4] = self;
    v60 = onCopy;
    v15 = __63__HUStatusAndNotificationsViewController_switchCell_didTurnOn___block_invoke_3(v59);
    v16 = [v15 addSuccessBlock:itemManager13];
LABEL_8:

    goto LABEL_9;
  }

  itemManager3 = [(HUItemTableViewController *)self itemManager];
  allowNotificationsItem = [itemManager3 allowNotificationsItem];
  v19 = [v10 isEqual:allowNotificationsItem];

  itemManager4 = [(HUItemTableViewController *)self itemManager];
  itemManager13 = itemManager4;
  if (v19)
  {
    v21 = [itemManager4 updateAllowNotifications:onCopy];
    v15 = v21;
    v22 = &__block_literal_global_187;
LABEL_7:
    v26 = [v21 addFailureBlock:v22];
    goto LABEL_8;
  }

  allowAudioNotificationsItem = [itemManager4 allowAudioNotificationsItem];
  v24 = [v10 isEqual:allowAudioNotificationsItem];

  itemManager5 = [(HUItemTableViewController *)self itemManager];
  itemManager13 = itemManager5;
  if (v24)
  {
    v21 = [itemManager5 updateAllowAudioNotifications:onCopy];
    v15 = v21;
    v22 = &__block_literal_global_91_0;
    goto LABEL_7;
  }

  allowActivityNotificationsItem = [itemManager5 allowActivityNotificationsItem];
  v37 = [v10 isEqual:allowActivityNotificationsItem];

  if (v37)
  {
    [(HUStatusAndNotificationsViewController *)self _toggleSmartActivityNotificationWithAlertNotificationForCell:cellCopy didTurnOn:onCopy];
  }

  else
  {
    itemManager6 = [(HUItemTableViewController *)self itemManager];
    allowDoorbellNotificationsItem = [itemManager6 allowDoorbellNotificationsItem];
    v40 = [v10 isEqual:allowDoorbellNotificationsItem];

    itemManager7 = [(HUItemTableViewController *)self itemManager];
    itemManager13 = itemManager7;
    if (v40)
    {
      v21 = [itemManager7 updateAllowDoorbellNotifications:onCopy];
      v15 = v21;
      v22 = &__block_literal_global_93;
      goto LABEL_7;
    }

    allowAnalogChimeNotificationItem = [itemManager7 allowAnalogChimeNotificationItem];
    v43 = [v10 isEqual:allowAnalogChimeNotificationItem];

    itemManager8 = [(HUItemTableViewController *)self itemManager];
    itemManager13 = itemManager8;
    if (v43)
    {
      v21 = [itemManager8 updateAllowChimeAnalogNotifications:onCopy];
      v15 = v21;
      v22 = &__block_literal_global_95_0;
      goto LABEL_7;
    }

    allowMotionNotificationsItem = [itemManager8 allowMotionNotificationsItem];
    v46 = [v10 isEqual:allowMotionNotificationsItem];

    itemManager9 = [(HUItemTableViewController *)self itemManager];
    itemManager13 = itemManager9;
    if (v46)
    {
      v21 = [itemManager9 updateAllowMotionNotifications:onCopy];
      v15 = v21;
      v22 = &__block_literal_global_97_0;
      goto LABEL_7;
    }

    chimeOnHomePodSingleItem = [itemManager9 chimeOnHomePodSingleItem];
    v49 = [v10 isEqual:chimeOnHomePodSingleItem];

    itemManager10 = [(HUItemTableViewController *)self itemManager];
    itemManager13 = itemManager10;
    if (v49)
    {
      v21 = [itemManager10 updateChimeOnAccessory:onCopy];
      v15 = v21;
      v22 = &__block_literal_global_99_3;
      goto LABEL_7;
    }

    allowCameraSnapshotsItem = [itemManager10 allowCameraSnapshotsItem];
    v52 = [v10 isEqual:allowCameraSnapshotsItem];

    itemManager11 = [(HUItemTableViewController *)self itemManager];
    itemManager13 = itemManager11;
    if (v52)
    {
      v21 = [itemManager11 updateAllowSnapshotsInNotifications:onCopy];
      v15 = v21;
      v22 = &__block_literal_global_101_0;
      goto LABEL_7;
    }

    allowCameraStatusChangesItem = [itemManager11 allowCameraStatusChangesItem];
    v55 = [v10 isEqual:allowCameraStatusChangesItem];

    itemManager12 = [(HUItemTableViewController *)self itemManager];
    itemManager13 = itemManager12;
    if (v55)
    {
      v21 = [itemManager12 updateAllowCameraStatusChangeNotifications:onCopy];
      v15 = v21;
      v22 = &__block_literal_global_103;
      goto LABEL_7;
    }

    allowCameraReachabilityChangeNotificationsItem = [itemManager12 allowCameraReachabilityChangeNotificationsItem];
    v58 = [v10 isEqual:allowCameraReachabilityChangeNotificationsItem];

    if (v58)
    {
      itemManager13 = [(HUItemTableViewController *)self itemManager];
      v21 = [itemManager13 updateAllowCameraReachabilityStatusChangeNotifications:onCopy];
      v15 = v21;
      v22 = &__block_literal_global_105_1;
      goto LABEL_7;
    }
  }

LABEL_9:
  latestResults = [v10 latestResults];
  v28 = *MEMORY[0x277D13F68];
  v29 = [latestResults objectForKey:*MEMORY[0x277D13F68]];

  if (v29)
  {
    latestResults2 = [v10 latestResults];
    v31 = [latestResults2 objectForKeyedSubscript:v28];
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
    itemTitleLocalizationKey = [v34 itemTitleLocalizationKey];

    v31 = itemTitleLocalizationKey;
  }

  [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:v32 isOn:onCopy title:v31 fromSourceViewController:self];
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

- (void)conditionEditorModuleController:(id)controller didUpdateConditionCollection:(id)collection
{
  v34 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  conditions = [collectionCopy conditions];
  v7 = [conditions na_any:&__block_literal_global_120_0];

  if (v7)
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    conditions2 = [collectionCopy conditions];
    v9 = [conditions2 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(conditions2);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            itemManager = [(HUItemTableViewController *)self itemManager];
            [collectionCopy predicate];
            v16 = v15 = collectionCopy;
            v17 = [itemManager updateCameraSmartNotificationCondition:v16];
            v18 = [v17 addFailureBlock:&__block_literal_global_126_2];

            collectionCopy = v15;
          }

          else
          {
            [v28 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [conditions2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    v19 = [objc_alloc(MEMORY[0x277D14598]) initWithConditions:v28];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    predicate = [v19 predicate];
    v22 = [itemManager2 updateNotificationCondition:predicate];
    v23 = [v22 addFailureBlock:&__block_literal_global_129];
  }

  else
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    predicate2 = [collectionCopy predicate];
    v26 = [itemManager3 updateNotificationCondition:predicate2];
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

- (void)smartNotificationSettingsModuleController:(id)controller didUpdateConditionCollection:(id)collection
{
  collectionCopy = collection;
  itemManager = [(HUItemTableViewController *)self itemManager];
  predicate = [collectionCopy predicate];

  v7 = [itemManager updateCameraSmartNotificationCondition:predicate];
  v8 = [v7 addFailureBlock:&__block_literal_global_131_3];
}

void __113__HUStatusAndNotificationsViewController_smartNotificationSettingsModuleController_didUpdateConditionCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3 operationType:*MEMORY[0x277D13C18] options:0 retryBlock:0 cancelBlock:0];
}

- (void)_toggleSmartActivityNotificationWithAlertNotificationForCell:(id)cell didTurnOn:(BOOL)on
{
  v52 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  item = [(HUStatusAndNotificationsViewController *)self item];
  services = [item services];
  allObjects = [services allObjects];
  firstObject = [allObjects firstObject];
  accessory = [firstObject accessory];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HUStatusAndNotificationsViewController__toggleSmartActivityNotificationWithAlertNotificationForCell_didTurnOn___block_invoke;
  aBlock[3] = &unk_277DBBCF0;
  objc_copyWeak(&v33, &location);
  onCopy = on;
  v26 = _Block_copy(aBlock);
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];

  restrictedGuests = [home restrictedGuests];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __113__HUStatusAndNotificationsViewController__toggleSmartActivityNotificationWithAlertNotificationForCell_didTurnOn___block_invoke_3;
  v29[3] = &unk_277DC0C10;
  v14 = home;
  v30 = v14;
  v15 = accessory;
  v31 = v15;
  v16 = [restrictedGuests na_firstObjectPassingTest:v29];

  hf_currentUserIsAdministrator = 0;
  if (!on && v16)
  {
    hf_currentUserIsAdministrator = [v14 hf_currentUserIsAdministrator];
  }

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v19 = NSStringFromBooleanValue();
    v20 = NSStringFromBooleanValue();
    v21 = NSStringFromBooleanValue();
    hf_prettyDescription = [v16 hf_prettyDescription];
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
    v45 = hf_prettyDescription;
    v46 = 2112;
    v47 = v23;
    v48 = 2112;
    v49 = v15;
    v50 = 2112;
    v51 = v14;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "(%s) shouldShowNotificationAlert = %@ because isOn = %@, isAccessoryAllowedForRG is '%@' for rg %@, isAdmin = %@, accessory = %@, home = %@", buf, 0x52u);

    self = selfCopy;
  }

  if (hf_currentUserIsAdministrator)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __113__HUStatusAndNotificationsViewController__toggleSmartActivityNotificationWithAlertNotificationForCell_didTurnOn___block_invoke_136;
    v27[3] = &unk_277DB8488;
    v28 = cellCopy;
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
  itemManager = [(HUItemTableViewController *)self itemManager];
  serviceItem = [itemManager serviceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = serviceItem;
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
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    serviceItem2 = [itemManager2 serviceItem];
    if (objc_opt_isKindOfClass())
    {
      v10 = serviceItem2;
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

  itemManager = [(HUItemTableViewController *)self itemManager];
  serviceItem = [itemManager serviceItem];
  accessories = [serviceItem accessories];
  v6 = [accessories na_firstObjectPassingTest:&__block_literal_global_143];

  if (v6)
  {
    home = [v6 home];
    v8 = home;
    if (home && [home hf_hasResidentCapableOfSupportingHomeActivityState])
    {
      if ([v6 supportsAdaptiveTemperatureAutomations])
      {
        supportsCleanEnergyAutomation = 1;
      }

      else
      {
        supportsCleanEnergyAutomation = [v6 supportsCleanEnergyAutomation];
      }
    }

    else
    {
      supportsCleanEnergyAutomation = 0;
    }
  }

  else
  {
    supportsCleanEnergyAutomation = 0;
  }

  return supportsCleanEnergyAutomation;
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