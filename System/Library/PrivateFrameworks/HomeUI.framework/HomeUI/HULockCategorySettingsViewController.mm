@interface HULockCategorySettingsViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HULockCategorySettingsViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HULockCategorySettingsViewController)initWithLockTopic:(id)topic home:(id)home;
- (HULockCategorySettingsViewController)initWithLockTopic:(id)topic pinCodeManager:(id)manager home:(id)home;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation HULockCategorySettingsViewController

- (HULockCategorySettingsViewController)initWithLockTopic:(id)topic home:(id)home
{
  topicCopy = topic;
  homeCopy = home;
  serviceTypes = [topicCopy serviceTypes];
  v10 = [serviceTypes containsObject:*MEMORY[0x277CD0EB0]];

  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_ErrorThisViewC.isa);
  }

  v11 = [[HULockCategorySettingsItemManager alloc] initWithDelegate:0 topic:topicCopy home:homeCopy];

  v12 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:2];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v12 setBackgroundColor:systemGroupedBackgroundColor];

  [v12 setHeaderMode:1];
  [v12 setFooterMode:1];
  v14 = [MEMORY[0x277D752B8] layoutWithListConfiguration:v12];
  v18.receiver = self;
  v18.super_class = HULockCategorySettingsViewController;
  v15 = [(HUItemCollectionViewController *)&v18 initWithItemManager:v11 collectionViewLayout:v14];
  if (v15)
  {
    v16 = _HULocalizedStringWithDefaultValue(@"HULockCategorySettingsViewControllerTitle", @"HULockCategorySettingsViewControllerTitle", 1);
    [(HULockCategorySettingsViewController *)v15 setTitle:v16];

    objc_storeStrong(&v15->_lockSettingsItemManager, v11);
    objc_storeStrong(&v15->_topic, topic);
  }

  return v15;
}

- (HULockCategorySettingsViewController)initWithLockTopic:(id)topic pinCodeManager:(id)manager home:(id)home
{
  topicCopy = topic;
  managerCopy = manager;
  managerCopy2 = manager;
  homeCopy = home;
  v11 = [[HULockCategorySettingsItemManager alloc] initWithDelegate:0 topic:topicCopy pinCodeManager:managerCopy2 home:homeCopy];
  serviceTypes = [topicCopy serviceTypes];
  v13 = [serviceTypes containsObject:*MEMORY[0x277CD0EB0]];

  if ((v13 & 1) == 0)
  {
    NSLog(&cfstr_ErrorThisViewC.isa);
  }

  v14 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:2];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v14 setBackgroundColor:systemGroupedBackgroundColor];

  [v14 setHeaderMode:1];
  [v14 setFooterMode:1];
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__HULockCategorySettingsViewController_initWithLockTopic_pinCodeManager_home___block_invoke;
  v24[3] = &unk_277DBC500;
  objc_copyWeak(&v26, &location);
  v16 = v11;
  v25 = v16;
  [v14 setItemSeparatorHandler:v24];
  v17 = [MEMORY[0x277D752B8] layoutWithListConfiguration:v14];
  v23.receiver = self;
  v23.super_class = HULockCategorySettingsViewController;
  v18 = [(HUItemCollectionViewController *)&v23 initWithItemManager:v16 collectionViewLayout:v17];
  if (v18)
  {
    v19 = _HULocalizedStringWithDefaultValue(@"HULockCategorySettingsViewControllerTitle", @"HULockCategorySettingsViewControllerTitle", 1);
    [(HULockCategorySettingsViewController *)v18 setTitle:v19];

    objc_storeStrong(&v18->_lockSettingsItemManager, v11);
    objc_storeStrong(&v18->_topic, topic);
    objc_storeStrong(&v18->_pinCodeManager, managerCopy);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v18;
}

id __78__HULockCategorySettingsViewController_initWithLockTopic_pinCodeManager_home___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v5 section];
  if (v8 == [*(a1 + 32) sectionIndexForDisplayedSectionIdentifier:@"HULockCategorySettingsPeopleSection"])
  {
    objc_opt_class();
    v9 = [WeakRetained collectionView];
    v10 = [v9 cellForItemAtIndexPath:v5];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 avatarContentView];
    v14 = [WeakRetained view];
    v15 = [v14 effectiveUserInterfaceLayoutDirection];

    v16 = [v13 listContentView];
    v17 = [v16 textLayoutGuide];
    [v17 layoutFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [v13 listContentView];
    [v12 convertRect:v26 fromView:{v19, v21, v23, v25}];
    v28 = v27;
    v30 = v29;

    if (v15 == 1)
    {
      [v12 bounds];
      v28 = v31 - (v28 + v30);
    }

    [v6 setBottomSeparatorInsets:{0.0, v28, 0.0, 0.0}];
  }

  return v6;
}

- (HULockCategorySettingsViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithLockTopic_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULockCategorySettingsViewController.m" lineNumber:96 description:{@"%s is unavailable; use %@ instead", "-[HULockCategorySettingsViewController initWithItemManager:collectionViewLayout:]", v7}];

  return 0;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  lockSettingsItemManager = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  userItemProvider = [lockSettingsItemManager userItemProvider];
  items = [userItemProvider items];
  [items containsObject:itemCopy];

  v9 = objc_opt_class();

  return v9;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  v44[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  v43.receiver = self;
  v43.super_class = HULockCategorySettingsViewController;
  [(HUItemCollectionViewController *)&v43 configureCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  v8 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:itemCopy];
  v12 = objc_alloc_init(MEMORY[0x277D75258]);
  v44[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  [v10 setAccessories:v13];

  lockSettingsItemManager = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  userItemProvider = [lockSettingsItemManager userItemProvider];
  items = [userItemProvider items];
  v17 = [items containsObject:itemCopy];

  if (v17)
  {
    objc_opt_class();
    v18 = v8;
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    imageProperties2 = v19;

    [imageProperties2 setShowAccessLevelDescription:1];
    latestResults = [itemCopy latestResults];
    v22 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14120]];

    if (v22)
    {
      [imageProperties2 setUserHandle:v22];
    }

    goto LABEL_13;
  }

  lockSettingsItemManager2 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  guestsItem = [lockSettingsItemManager2 guestsItem];
  v25 = [itemCopy isEqual:guestsItem];

  if (v25)
  {
    latestResults2 = [itemCopy latestResults];
    v27 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
    [v11 setImage:v27];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    imageProperties = [v11 imageProperties];
    [imageProperties setTintColor:systemGrayColor];

    v30 = *MEMORY[0x277D76C88];
    imageProperties2 = [v11 imageProperties];
    [imageProperties2 setReservedLayoutSize:{37.0, v30}];
LABEL_13:

    goto LABEL_14;
  }

  lockSettingsItemManager3 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  lockServiceItemProvider = [lockSettingsItemManager3 lockServiceItemProvider];
  items2 = [lockServiceItemProvider items];
  v36 = [items2 containsObject:itemCopy];

  if (v36)
  {
    v37 = [MEMORY[0x277D755B8] systemImageNamed:@"lock.fill"];
    [v11 setImage:v37];

    securityAccessoryTypeGroup = [MEMORY[0x277D14378] securityAccessoryTypeGroup];
    hu_tintColor = [securityAccessoryTypeGroup hu_tintColor];
    imageProperties3 = [v11 imageProperties];
    [imageProperties3 setTintColor:hu_tintColor];

    v41 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
    imageProperties4 = [v11 imageProperties];
    [imageProperties4 setPreferredSymbolConfiguration:v41];

    [v11 setSecondaryText:0];
  }

LABEL_14:
  [v10 setContentConfiguration:v11];
  latestResults3 = [itemCopy latestResults];
  v32 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [v10 setAccessibilityIdentifier:v32];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v47.receiver = self;
  v47.super_class = HULockCategorySettingsViewController;
  [(HUItemCollectionViewController *)&v47 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  lockSettingsItemManager = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  userItemProvider = [lockSettingsItemManager userItemProvider];
  items = [userItemProvider items];
  v13 = [items containsObject:v9];

  if (v13)
  {
    objc_opt_class();
    v14 = v9;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    user = [v16 user];
    itemManager2 = [(HUItemCollectionViewController *)self itemManager];
    home = [itemManager2 home];

    objc_initWeak(&location, self);
    pinCodeManager = [(HULockCategorySettingsViewController *)self pinCodeManager];
    userPinCodes = [pinCodeManager userPinCodes];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __80__HULockCategorySettingsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v41[3] = &unk_277DBC550;
    objc_copyWeak(&v45, &location);
    navigationController = user;
    v42 = navigationController;
    v23 = v16;
    v43 = v23;
    v24 = home;
    v44 = v24;
    v25 = [userPinCodes addSuccessBlock:v41];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);

    goto LABEL_14;
  }

  lockSettingsItemManager2 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  guestsItem = [lockSettingsItemManager2 guestsItem];
  v28 = [v9 isEqual:guestsItem];

  if (v28)
  {
    v29 = [HUGuestsPinCodesViewController alloc];
    pinCodeManager2 = [(HULockCategorySettingsViewController *)self pinCodeManager];
    v23 = [(HUGuestsPinCodesViewController *)v29 initWithPinCodeManager:pinCodeManager2 settingsContext:1];
LABEL_13:

    navigationController = [(HULockCategorySettingsViewController *)self navigationController];
    v39 = [navigationController hu_pushPreloadableViewController:v23 animated:1];
LABEL_14:

    goto LABEL_15;
  }

  lockSettingsItemManager3 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  lockServiceItemProvider = [lockSettingsItemManager3 lockServiceItemProvider];
  items2 = [lockServiceItemProvider items];
  v34 = [items2 containsObject:v9];

  if (v34)
  {
    v35 = v9;
    v36 = &unk_28251B0C8;
    if ([v35 conformsToProtocol:v36])
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    pinCodeManager2 = [(HULockCategorySettingsViewController *)self navigationController];
    v23 = [HUAccessoryDetailsRouter detailsViewFor:v38 navigationController:pinCodeManager2 dismiss:0];

    goto LABEL_13;
  }

LABEL_15:
  v40 = [viewCopy cellForItemAtIndexPath:pathCopy];
  [v40 setHighlighted:0];
}

void __80__HULockCategorySettingsViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HULockCategorySettingsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
  v13[3] = &unk_277DBC528;
  v14 = *(a1 + 32);
  v5 = [v3 na_firstObjectPassingTest:v13];

  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D14920]) initWithPinCode:v5 inHome:*(a1 + 48) onAccessory:0];

    v6 = v7;
  }

  v8 = [HUPinCodeDetailsViewController alloc];
  v9 = [WeakRetained pinCodeManager];
  v10 = [(HUPinCodeDetailsViewController *)v8 initWithItem:v6 pinCodeManager:v9 home:*(a1 + 48)];

  v11 = [WeakRetained navigationController];
  v12 = [v11 hu_pushPreloadableViewController:v10 animated:1];
}

uint64_t __80__HULockCategorySettingsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userLabel];
  v4 = [v3 user];
  v5 = [v4 uniqueIdentifier];
  v6 = [*(a1 + 32) uniqueIdentifier];
  v7 = [v5 isEqual:v6];

  return v7;
}

@end