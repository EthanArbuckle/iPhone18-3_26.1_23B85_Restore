@interface HULockCategorySettingsViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HULockCategorySettingsViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HULockCategorySettingsViewController)initWithLockTopic:(id)a3 home:(id)a4;
- (HULockCategorySettingsViewController)initWithLockTopic:(id)a3 pinCodeManager:(id)a4 home:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation HULockCategorySettingsViewController

- (HULockCategorySettingsViewController)initWithLockTopic:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 serviceTypes];
  v10 = [v9 containsObject:*MEMORY[0x277CD0EB0]];

  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_ErrorThisViewC.isa);
  }

  v11 = [[HULockCategorySettingsItemManager alloc] initWithDelegate:0 topic:v7 home:v8];

  v12 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:2];
  v13 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v12 setBackgroundColor:v13];

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
    objc_storeStrong(&v15->_topic, a3);
  }

  return v15;
}

- (HULockCategorySettingsViewController)initWithLockTopic:(id)a3 pinCodeManager:(id)a4 home:(id)a5
{
  v8 = a3;
  v22 = a4;
  v9 = a4;
  v10 = a5;
  v11 = [[HULockCategorySettingsItemManager alloc] initWithDelegate:0 topic:v8 pinCodeManager:v9 home:v10];
  v12 = [v8 serviceTypes];
  v13 = [v12 containsObject:*MEMORY[0x277CD0EB0]];

  if ((v13 & 1) == 0)
  {
    NSLog(&cfstr_ErrorThisViewC.isa);
  }

  v14 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:2];
  v15 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v14 setBackgroundColor:v15];

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
    objc_storeStrong(&v18->_topic, a3);
    objc_storeStrong(&v18->_pinCodeManager, v22);
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

- (HULockCategorySettingsViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithLockTopic_home_);
  [v6 handleFailureInMethod:a2 object:self file:@"HULockCategorySettingsViewController.m" lineNumber:96 description:{@"%s is unavailable; use %@ instead", "-[HULockCategorySettingsViewController initWithItemManager:collectionViewLayout:]", v7}];

  return 0;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  v7 = [v6 userItemProvider];
  v8 = [v7 items];
  [v8 containsObject:v5];

  v9 = objc_opt_class();

  return v9;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v44[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = HULockCategorySettingsViewController;
  [(HUItemCollectionViewController *)&v43 configureCell:v6 forItem:v7];
  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v7];
  v12 = objc_alloc_init(MEMORY[0x277D75258]);
  v44[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  [v10 setAccessories:v13];

  v14 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  v15 = [v14 userItemProvider];
  v16 = [v15 items];
  v17 = [v16 containsObject:v7];

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

    v20 = v19;

    [v20 setShowAccessLevelDescription:1];
    v21 = [v7 latestResults];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277D14120]];

    if (v22)
    {
      [v20 setUserHandle:v22];
    }

    goto LABEL_13;
  }

  v23 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  v24 = [v23 guestsItem];
  v25 = [v7 isEqual:v24];

  if (v25)
  {
    v26 = [v7 latestResults];
    v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
    [v11 setImage:v27];

    v28 = [MEMORY[0x277D75348] systemGrayColor];
    v29 = [v11 imageProperties];
    [v29 setTintColor:v28];

    v30 = *MEMORY[0x277D76C88];
    v20 = [v11 imageProperties];
    [v20 setReservedLayoutSize:{37.0, v30}];
LABEL_13:

    goto LABEL_14;
  }

  v33 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  v34 = [v33 lockServiceItemProvider];
  v35 = [v34 items];
  v36 = [v35 containsObject:v7];

  if (v36)
  {
    v37 = [MEMORY[0x277D755B8] systemImageNamed:@"lock.fill"];
    [v11 setImage:v37];

    v38 = [MEMORY[0x277D14378] securityAccessoryTypeGroup];
    v39 = [v38 hu_tintColor];
    v40 = [v11 imageProperties];
    [v40 setTintColor:v39];

    v41 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
    v42 = [v11 imageProperties];
    [v42 setPreferredSymbolConfiguration:v41];

    [v11 setSecondaryText:0];
  }

LABEL_14:
  [v10 setContentConfiguration:v11];
  v31 = [v7 latestResults];
  v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [v10 setAccessibilityIdentifier:v32];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v47.receiver = self;
  v47.super_class = HULockCategorySettingsViewController;
  [(HUItemCollectionViewController *)&v47 collectionView:v6 didSelectItemAtIndexPath:v7];
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  v11 = [v10 userItemProvider];
  v12 = [v11 items];
  v13 = [v12 containsObject:v9];

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

    v17 = [v16 user];
    v18 = [(HUItemCollectionViewController *)self itemManager];
    v19 = [v18 home];

    objc_initWeak(&location, self);
    v20 = [(HULockCategorySettingsViewController *)self pinCodeManager];
    v21 = [v20 userPinCodes];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __80__HULockCategorySettingsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v41[3] = &unk_277DBC550;
    objc_copyWeak(&v45, &location);
    v22 = v17;
    v42 = v22;
    v23 = v16;
    v43 = v23;
    v24 = v19;
    v44 = v24;
    v25 = [v21 addSuccessBlock:v41];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);

    goto LABEL_14;
  }

  v26 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  v27 = [v26 guestsItem];
  v28 = [v9 isEqual:v27];

  if (v28)
  {
    v29 = [HUGuestsPinCodesViewController alloc];
    v30 = [(HULockCategorySettingsViewController *)self pinCodeManager];
    v23 = [(HUGuestsPinCodesViewController *)v29 initWithPinCodeManager:v30 settingsContext:1];
LABEL_13:

    v22 = [(HULockCategorySettingsViewController *)self navigationController];
    v39 = [v22 hu_pushPreloadableViewController:v23 animated:1];
LABEL_14:

    goto LABEL_15;
  }

  v31 = [(HULockCategorySettingsViewController *)self lockSettingsItemManager];
  v32 = [v31 lockServiceItemProvider];
  v33 = [v32 items];
  v34 = [v33 containsObject:v9];

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

    v30 = [(HULockCategorySettingsViewController *)self navigationController];
    v23 = [HUAccessoryDetailsRouter detailsViewFor:v38 navigationController:v30 dismiss:0];

    goto LABEL_13;
  }

LABEL_15:
  v40 = [v6 cellForItemAtIndexPath:v7];
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