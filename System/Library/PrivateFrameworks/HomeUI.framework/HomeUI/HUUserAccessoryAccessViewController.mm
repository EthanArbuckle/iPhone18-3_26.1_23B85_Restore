@interface HUUserAccessoryAccessViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUUserAccessoryAccessViewController)initWithHome:(id)home user:(id)user accessoryCategoryType:(id)type;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)viewDidLoad;
@end

@implementation HUUserAccessoryAccessViewController

- (HUUserAccessoryAccessViewController)initWithHome:(id)home user:(id)user accessoryCategoryType:(id)type
{
  homeCopy = home;
  userCopy = user;
  typeCopy = type;
  if (homeCopy)
  {
    if (userCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUUserAccessoryAccessViewController.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"user"}];

    if (typeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUUserAccessoryAccessViewController.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"home"}];

  if (!userCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (typeCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HUUserAccessoryAccessViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"accessoryCategoryType"}];

LABEL_4:
  v13 = [[HUUserAccessoryAccessItemManager alloc] initWithHome:homeCopy user:userCopy accessoryCategoryType:typeCopy];
  v24.receiver = self;
  v24.super_class = HUUserAccessoryAccessViewController;
  v14 = [(HUItemTableViewController *)&v24 initWithItemManager:v13 tableViewStyle:1];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, home);
    objc_storeStrong(&v15->_user, user);
    objc_storeStrong(&v15->_accessoryCategoryType, type);
    objc_storeStrong(&v15->_userAccessoryAccessItemManager, v13);
    v16 = objc_opt_new();
    inFlightAllowedAccessoryRemovals = v15->_inFlightAllowedAccessoryRemovals;
    v15->_inFlightAllowedAccessoryRemovals = v16;

    v18 = objc_opt_new();
    inFlightAllowedAccessoryAdditions = v15->_inFlightAllowedAccessoryAdditions;
    v15->_inFlightAllowedAccessoryAdditions = v18;
  }

  return v15;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HUUserAccessoryAccessViewController;
  [(HUItemTableViewController *)&v6 viewDidLoad];
  v3 = MEMORY[0x277CD1650];
  accessoryCategoryType = [(HUUserAccessoryAccessViewController *)self accessoryCategoryType];
  v5 = [v3 hf_userFriendlyLocalizedCapitalizedPluralDescription:accessoryCategoryType];

  [(HUUserAccessoryAccessViewController *)self setTitle:v5];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  userAccessoryAccessItemManager = [(HUUserAccessoryAccessViewController *)self userAccessoryAccessItemManager];
  transformedAllowedAccessoryItemProvider = [userAccessoryAccessItemManager transformedAllowedAccessoryItemProvider];
  items = [transformedAllowedAccessoryItemProvider items];
  v9 = [items containsObject:itemCopy];

  if (v9)
  {
    home = [(HUUserAccessoryAccessViewController *)self home];
    if ([home hf_currentUserIsAdministrator])
    {
      home2 = [(HUUserAccessoryAccessViewController *)self home];
      user = [(HUUserAccessoryAccessViewController *)self user];
      [home2 hf_userIsRestrictedGuest:user];
    }

    v13 = objc_opt_class();
  }

  else
  {
    v13 = objc_opt_class();
  }

  return v13;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v22.receiver = self;
  v22.super_class = HUUserAccessoryAccessViewController;
  [(HUItemTableViewController *)&v22 setupCell:cellCopy forItem:itemCopy indexPath:path];
  userAccessoryAccessItemManager = [(HUUserAccessoryAccessViewController *)self userAccessoryAccessItemManager];
  transformedAllowedAccessoryItemProvider = [userAccessoryAccessItemManager transformedAllowedAccessoryItemProvider];
  items = [transformedAllowedAccessoryItemProvider items];
  v13 = [items containsObject:itemCopy];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v14 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      [v16 setDelegate:self];
      [v16 setIconDisplayStyle:1];
LABEL_12:
      v19 = +[HUIconCellContentMetrics compactMetrics];
      [v16 setContentMetrics:v19];

      latestResults = [itemCopy latestResults];
      v21 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v16 setAccessibilityIdentifier:v21];

      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v17 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v16 = v18;

      [v16 setAccessoryView:0];
      [v16 setAccessoryType:0];
      [v16 setHideIcon:0];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v9 == 0;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v53 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  tableView = [(HUUserAccessoryAccessViewController *)self tableView];
  v9 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v11 = [itemManager displayedItemAtIndexPath:v9];

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    text = [cellCopy text];
    *buf = 136315906;
    v46 = "[HUUserAccessoryAccessViewController switchCell:didTurnOn:]";
    v47 = 2112;
    v48 = text;
    v49 = 1024;
    v50 = onCopy;
    v51 = 2112;
    v52 = v11;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "(%s) User tapped switch cell: '%@' | isOn = %{BOOL}d | item = %@", buf, 0x26u);
  }

  objc_opt_class();
  v14 = v11;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  objc_opt_class();
  sourceItem = [v16 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v18 = sourceItem;
  }

  else
  {
    v18 = 0;
  }

  v33 = v18;

  home = [(HUUserAccessoryAccessViewController *)self home];
  if (![home hf_currentUserIsAdministrator])
  {
    goto LABEL_12;
  }

  v31 = a2;
  v20 = onCopy;
  home2 = [(HUUserAccessoryAccessViewController *)self home];
  user = [(HUUserAccessoryAccessViewController *)self user];
  v23 = [home2 hf_userIsRestrictedGuest:user];

  if (v23)
  {
    accessory = [v33 accessory];
    home3 = [(HUUserAccessoryAccessViewController *)self home];
    user2 = [(HUUserAccessoryAccessViewController *)self user];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DBC0E8;
    v44 = v20;
    v38 = accessory;
    selfCopy = self;
    v40 = home3;
    v41 = user2;
    v43 = v31;
    v27 = cellCopy;
    v42 = v27;
    v32 = user2;
    v30 = home3;
    home = accessory;
    v28 = _Block_copy(aBlock);
    v29 = MEMORY[0x277D75D28];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_76;
    v34[3] = &unk_277DB7EE0;
    v35 = v27;
    v36 = v20;
    [v29 hu_presentingLockLimitAlertIfNeededFromViewController:self home:v30 user:v32 accessory:home include:v20 continueActionBlock:v28 cancelActionBlock:v34];

LABEL_12:
  }
}

void __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hf_servicesWithBulletinBoardNotificationTurnedOff];
  v3 = v2;
  v4 = *(a1 + 80) == 1 && [v2 count] != 0;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 80);
    *buf = 136316162;
    v20 = "[HUUserAccessoryAccessViewController switchCell:didTurnOn:]_block_invoke";
    v21 = 1024;
    v22 = v4;
    v23 = 1024;
    v24 = v6;
    v25 = 2048;
    v26 = [v3 count];
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) displayNotificationAlert = %{BOOL}d because isOn = %{BOOL}d and servicesWithNotificationOff = (%ld) %@", buf, 0x2Cu);
  }

  objc_initWeak(buf, *(a1 + 40));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_50;
  aBlock[3] = &unk_277DBC0C0;
  objc_copyWeak(v17, buf);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v18 = *(a1 + 80);
  v7 = *(a1 + 32);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v15 = v7;
  v17[1] = v8;
  v16 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (v4)
  {
    [*(a1 + 40) hu_presentNotificationAlertForNotificationCapableObjects:v3 notificationsEnabled:1 mainActionBlock:v10 notNowActionBlock:v10];
  }

  else
  {
    (*(v10 + 2))(v10);
  }

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

void __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_50(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) homeAccessControlForUser:*(a1 + 40)];
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  v5 = [v3 restrictedGuestAccessSettings];
  v6 = [v5 accessAllowedToAccessories];
  v7 = [v4 initWithSet:v6];

  if (*(a1 + 80) == 1)
  {
    [WeakRetained inFlightAllowedAccessoryAdditions];
  }

  else
  {
    [WeakRetained inFlightAllowedAccessoryRemovals];
  }
  v8 = ;
  [v8 na_safeAddObject:*(a1 + 48)];

  v9 = [WeakRetained inFlightAllowedAccessoryAdditions];
  v10 = [v7 setByAddingObjectsFromSet:v9];
  v11 = [v10 mutableCopy];

  v12 = [WeakRetained inFlightAllowedAccessoryRemovals];
  v13 = [v11 na_setByRemovingObjectsFromSet:v12];
  v14 = [v13 mutableCopy];

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(*(a1 + 72));
    v17 = [WeakRetained inFlightAllowedAccessoryAdditions];
    v18 = [WeakRetained inFlightAllowedAccessoryRemovals];
    *buf = 138413058;
    v46 = WeakRetained;
    v47 = 2112;
    v48 = v16;
    v49 = 2112;
    v50 = v17;
    v51 = 2112;
    v52 = v18;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ In flight additions: %@ | In flight removals: %@", buf, 0x2Au);
  }

  v19 = [v3 restrictedGuestAccessSettings];
  v20 = [v19 mutableCopy];

  [v20 setAccessAllowedToAccessories:v14];
  v21 = [v14 na_map:&__block_literal_global_82];
  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 80))
    {
      v23 = @"Including";
    }

    else
    {
      v23 = @"Removing";
    }

    v24 = [*(a1 + 48) hf_minimumDescription];
    v25 = [v14 count];
    *buf = 136316162;
    v46 = "[HUUserAccessoryAccessViewController switchCell:didTurnOn:]_block_invoke_2";
    v47 = 2112;
    v48 = v23;
    v49 = 2112;
    v50 = v24;
    v51 = 2048;
    v52 = v25;
    v53 = 2112;
    v54 = v21;
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "(%s) %@ accessory %@. Updating allowed accessories to (count: %ld) %@", buf, 0x34u);
  }

  v26 = MEMORY[0x277D2C900];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_60;
  v42[3] = &unk_277DB8200;
  v27 = v3;
  v43 = v27;
  v28 = v20;
  v44 = v28;
  v29 = [v26 futureWithBlock:v42];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_63;
  v39[3] = &unk_277DB8620;
  objc_copyWeak(&v41, (a1 + 64));
  v40 = *(a1 + 48);
  v30 = [v29 addCompletionBlock:v39];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_2_65;
  v36[3] = &unk_277DB7E68;
  v37 = *(a1 + 32);
  v38 = *(a1 + 40);
  v31 = [v29 addSuccessBlock:v36];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_2_72;
  v33[3] = &unk_277DBC098;
  v34 = *(a1 + 56);
  v35 = *(a1 + 80);
  v32 = [v29 addFailureBlock:v33];

  objc_destroyWeak(&v41);
}

void __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_60(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_2;
  v7[3] = &unk_277DB8C00;
  v8 = v3;
  v6 = v3;
  [v5 updateRestrictedGuestSettings:v4 completionHandler:v7];
}

void __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[HUUserAccessoryAccessViewController switchCell:didTurnOn:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Finished attempt to update guest access settings with error %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    [v5 finishWithError:v3];
  }

  else
  {
    [v5 finishWithNoResult];
  }
}

void __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained inFlightAllowedAccessoryAdditions];
  [v2 removeObject:*(a1 + 32)];

  v3 = [WeakRetained inFlightAllowedAccessoryRemovals];
  [v3 removeObject:*(a1 + 32)];
}

void __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_2_65(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[HUUserAccessoryAccessViewController switchCell:didTurnOn:]_block_invoke_2";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) Successfully updated allowed accessories.", buf, 0xCu);
  }

  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_67;
  v4[3] = &unk_277DB9920;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 dispatchHomeObserverMessage:v4 sender:0];
}

void __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didUpdateAccessControlForUser:*(a1 + 40)];
  }
}

void __60__HUUserAccessoryAccessViewController_switchCell_didTurnOn___block_invoke_2_72(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[HUUserAccessoryAccessViewController switchCell:didTurnOn:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "(%s) Failed to update allowed accessories with error: %@.", &v6, 0x16u);
  }

  v5 = [MEMORY[0x277D14640] sharedHandler];
  [v5 handleError:v3 operationType:*MEMORY[0x277D13C78] options:0 retryBlock:0 cancelBlock:0];

  [*(a1 + 32) setOn:(*(a1 + 40) & 1) == 0 animated:1];
}

@end