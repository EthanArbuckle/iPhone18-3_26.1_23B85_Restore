@interface HUQuickControlCollectionViewController
- (HULayoutAnchorProviding)preferredFrameLayoutGuide;
- (HUQuickControlCollectionViewController)initWithItemManager:(id)a3;
- (HUQuickControlCollectionViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUQuickControlContentCharacteristicWritingDelegate)characteristicWritingDelegate;
- (HUQuickControlContentHosting)quickControlHost;
- (NSSet)affectedCharacteristics;
- (id)_allContentViewControllers;
- (id)_allViewControllers;
- (id)_controlItemsForItem:(id)a3;
- (id)_createCellContainerForViewController:(id)a3 forItem:(id)a4;
- (id)_viewControllerForItem:(id)a3;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)intrinsicSizeDescriptorForItemAtIndexPath:(id)a3 itemSize:(unint64_t)a4;
- (id)overrideValueForCharacteristic:(id)a3;
- (id)viewForTouchContinuation;
- (unint64_t)_determineReachabilityForIndexPath:(id)a3;
- (unint64_t)_titlePositionForItem:(id)a3;
- (void)_fetchReachabilityStateForMediaAccessory:(id)a3 accessType:(unint64_t)a4 itemSectionIdentifier:(id)a5;
- (void)_handleCoordinationReachableStatusChanged:(id)a3;
- (void)_propagateInteractiveContentStateForChildViewControllers:(id)a3;
- (void)_reconfigureLayoutOptions;
- (void)_setReachabilityForHeaderForIdentifier:(id)a3 to:(BOOL)a4;
- (void)accessoryDidUpdateControllable:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)invalidateContentViewLayout;
- (void)itemManager:(id)a3 didRemoveItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setCharacteristicWritingDelegate:(id)a3;
- (void)setDisableItemUpdatesForOverrideCharacteristicValueChanges:(BOOL)a3;
- (void)setLayoutOptions:(id)a3;
- (void)setQuickControlHost:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)shouldHideQuickControlHeaderButton:(BOOL)a3 forSectionIdentifier:(id)a4;
- (void)shouldHideQuickControlHeaderText:(BOOL)a3 forSectionIdentifier:(id)a4;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillDismiss;
@end

@implementation HUQuickControlCollectionViewController

- (HUQuickControlCollectionViewController)initWithItemManager:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HUQuickControlCollectionViewLayout);
  v13.receiver = self;
  v13.super_class = HUQuickControlCollectionViewController;
  v6 = [(HUItemCollectionViewController *)&v13 initWithItemManager:v4 collectionViewLayout:v5];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    viewControllersKeyedByItem = v6->_viewControllersKeyedByItem;
    v6->_viewControllersKeyedByItem = v7;

    v9 = [[HUQuickControlContentCharacteristicWritingUpdateAdapter alloc] initWithItemManager:v4];
    characteristicWritingAdapter = v6->_characteristicWritingAdapter;
    v6->_characteristicWritingAdapter = v9;

    v6->_disableItemUpdatesForOverrideCharacteristicValueChanges = 0;
    v11 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v11 addAccessoryObserver:v6];
  }

  return v6;
}

- (HUQuickControlCollectionViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItemManager_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUQuickControlCollectionViewController.m" lineNumber:84 description:{@"%s is unavailable; use %@ instead", "-[HUQuickControlCollectionViewController initWithItemManager:collectionViewLayout:]", v7}];

  return 0;
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = HUQuickControlCollectionViewController;
  [(HUQuickControlCollectionViewController *)&v19 loadView];
  v3 = [HUQuickControlCollectionView alloc];
  v4 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  v5 = [(HUQuickControlCollectionView *)v3 initWithFrame:v4 collectionViewLayout:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(HUQuickControlCollectionViewController *)self setCollectionView:v5];

  v6 = [HUQuickControlGridLayoutManager alloc];
  v7 = [(HUQuickControlCollectionViewController *)self collectionView];
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [(HUQuickControlCollectionViewController *)self layoutOptions];
  v10 = [(HUQuickControlGridLayoutManager *)v6 initWithCollectionView:v7 itemManager:v8 layoutOptions:v9];
  v11 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [v11 setLayoutManager:v10];

  v12 = [(HUQuickControlCollectionViewController *)self collectionView];
  v13 = [v12 heightAnchor];
  v14 = [(HUQuickControlCollectionViewController *)self view];
  [v14 frame];
  v16 = [v13 constraintEqualToConstant:v15];
  v17 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [v17 setHeightConstraint:v16];

  v18 = [(HUQuickControlCollectionViewController *)self collectionView];
  [v18 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"HUQuickControlSectionHeaderViewReuseIdentifier"];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HUQuickControlCollectionViewController;
  [(HUItemCollectionViewController *)&v19 viewDidLoad];
  v5 = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];
  v6 = v5;
  if (v5)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    v2 = [(HUQuickControlCollectionViewController *)self view];
    v3 = [v2 traitCollection];
    +[HUQuickControlUtilities backgroundColorForUserInterfaceStyle:](HUQuickControlUtilities, "backgroundColorForUserInterfaceStyle:", [v3 userInterfaceStyle]);
  }
  v7 = ;
  v8 = [(HUQuickControlCollectionViewController *)self view];
  [v8 setBackgroundColor:v7];

  if ((v6 & 1) == 0)
  {

    v7 = v2;
  }

  v9 = [(HUQuickControlCollectionViewController *)self collectionView];
  [v9 setBackgroundColor:0];

  v10 = [(HUQuickControlCollectionViewController *)self collectionView];
  [v10 setShowsHorizontalScrollIndicator:0];

  v11 = [(HUQuickControlCollectionViewController *)self collectionView];
  [v11 setDelaysContentTouches:1];

  v12 = [(HUQuickControlCollectionViewController *)self view];
  [v12 frame];
  v15 = [HUQuickControlCollectionViewControllerLayoutOptions defaultOptionsForViewSize:v13, v14];
  [(HUQuickControlCollectionViewController *)self setLayoutOptions:v15];

  [(HUQuickControlCollectionViewController *)self _reconfigureLayoutOptions];
  [(HUItemCollectionViewController *)self setWantsPreferredContentSize:1];
  v16 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  v17 = [v16 heightConstraint];
  [v17 setActive:1];

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 addObserver:self selector:sel__handleCoordinationReachableStatusChanged_ name:*MEMORY[0x277D13830] object:0];
}

- (void)viewWillDismiss
{
  objc_opt_class();
  v3 = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 tearDown];
}

- (void)viewLayoutMarginsDidChange
{
  v13.receiver = self;
  v13.super_class = HUQuickControlCollectionViewController;
  [(HUQuickControlCollectionViewController *)&v13 viewLayoutMarginsDidChange];
  v3 = [(HUQuickControlCollectionViewController *)self view];
  [v3 layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [v12 setContentInset:{v5, v7, v9, v11}];
}

- (void)setDisableItemUpdatesForOverrideCharacteristicValueChanges:(BOOL)a3
{
  if (self->_disableItemUpdatesForOverrideCharacteristicValueChanges != a3)
  {
    v4 = a3;
    self->_disableItemUpdatesForOverrideCharacteristicValueChanges = a3;
    v5 = [(HUQuickControlCollectionViewController *)self characteristicWritingAdapter];
    [v5 setShouldIssueItemUpdatesOnCharacteristicOverrideValueChanges:!v4];
  }
}

- (HULayoutAnchorProviding)preferredFrameLayoutGuide
{
  preferredFrameLayoutGuide = self->_preferredFrameLayoutGuide;
  if (preferredFrameLayoutGuide)
  {
    v3 = preferredFrameLayoutGuide;
  }

  else
  {
    v3 = [(HUQuickControlCollectionViewController *)self view];
  }

  return v3;
}

- (void)setLayoutOptions:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v3 = [(HUQuickControlCollectionViewController *)self view];
    [v3 frame];
    v5 = [HUQuickControlCollectionViewControllerLayoutOptions defaultOptionsForViewSize:v6, v7];
  }

  objc_storeStrong(&self->_layoutOptions, v5);
  if (!v9)
  {
  }

  v8 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [v8 setLayoutOptions:v9];

  if ([(HUQuickControlCollectionViewController *)self isViewLoaded])
  {
    [(HUQuickControlCollectionViewController *)self _reconfigureLayoutOptions];
  }
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HUQuickControlCollectionViewController;
  [(HUItemCollectionViewController *)&v18 configureCell:v6 forItem:v7];
  v8 = v6;
  v9 = [(HUQuickControlCollectionViewController *)self _viewControllerForItem:v7];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __64__HUQuickControlCollectionViewController_configureCell_forItem___block_invoke;
  v15 = &unk_277DBD538;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = __64__HUQuickControlCollectionViewController_configureCell_forItem___block_invoke(&v12);
  [v9 setTitle:{v11, v12, v13, v14, v15, v16}];

  [v8 setViewController:v9];
}

id __64__HUQuickControlCollectionViewController_configureCell_forItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) itemManager];
    v5 = [v4 titleForItem:*(a1 + 40)];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 40) latestResults];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
LABEL_5:
    v6 = v5;

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v7 = [*(a1 + 40) latestResults];
  v6 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

LABEL_7:

  return v6;
}

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([+[HUQuickControlCollectionViewController superclass](HUQuickControlCollectionViewController "superclass")])
  {
    v16.receiver = self;
    v16.super_class = HUQuickControlCollectionViewController;
    [(HUItemCollectionViewController *)&v16 itemManager:v9 didUpdateResultsForItem:v10 atIndexPath:v11];
  }

  v12 = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  v13 = [v12 objectForKey:v10];
  v14 = [v13 contentViewController];

  v15 = [(HUQuickControlCollectionViewController *)self _controlItemsForItem:v10];
  [v14 quickControlItemUpdater:self didUpdateResultsForControlItems:v15];
}

- (void)itemManager:(id)a3 didRemoveItem:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([+[HUQuickControlCollectionViewController superclass](HUQuickControlCollectionViewController "superclass")])
  {
    v13.receiver = self;
    v13.super_class = HUQuickControlCollectionViewController;
    [(HUItemCollectionViewController *)&v13 itemManager:v9 didRemoveItem:v10 atIndexPath:v11];
  }

  v12 = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  [v12 removeObjectForKey:v10];
}

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = HUQuickControlCollectionViewController;
  [(HUItemCollectionViewController *)&v19 diffableDataItemManager:v10 didUpdateItems:v11 addItems:v12 removeItems:v13];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__HUQuickControlCollectionViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
  v16[3] = &unk_277DBBF90;
  objc_copyWeak(&v17, &location);
  [v11 na_each:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__HUQuickControlCollectionViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke_2;
  v14[3] = &unk_277DBBF90;
  objc_copyWeak(&v15, &location);
  [v13 na_each:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __102__HUQuickControlCollectionViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained viewControllersKeyedByItem];
  v5 = [v4 objectForKey:v3];
  v6 = [v5 contentViewController];

  v7 = [WeakRetained _controlItemsForItem:v3];

  [v6 quickControlItemUpdater:WeakRetained didUpdateResultsForControlItems:v7];
}

void __102__HUQuickControlCollectionViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained viewControllersKeyedByItem];
  [v4 removeObjectForKey:v3];
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(HUItemCollectionViewController *)self itemManager];
  v8 = [v7 titleForSection:{objc_msgSend(v6, "section")}];

  v9 = [(HUQuickControlCollectionViewController *)self collectionView];
  v10 = [v9 dequeueReusableSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"HUQuickControlSectionHeaderViewReuseIdentifier" forIndexPath:v6];

  v11 = [(HUItemCollectionViewController *)self itemManager];
  v12 = [v11 attributedTitleForSection:{objc_msgSend(v6, "section")}];

  if (v12)
  {
    [v10 setAttributedTitleText:v12];
  }

  else
  {
    if (!v8)
    {
      NSLog(&cfstr_AskedForHeader.isa, v6);
    }

    [v10 setTitleText:v8];
  }

  objc_opt_class();
  v13 = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v36 = v12;
    v37 = v8;
    v16 = [v15 itemSectionForSectionIndex:{objc_msgSend(v6, "section")}];
    v17 = [v16 headerAccessoryButtonTitle];
    [v10 setAccessoryButtonTitleText:v17];

    v18 = [v16 headerAccessoryButtonDelegate];

    if (!v18)
    {
      v19 = [v16 items];
      v20 = [v19 firstObject];
      v21 = [(HUQuickControlCollectionViewController *)self _viewControllerForItem:v20];
      v22 = [v21 contentViewController];
      if ([v22 conformsToProtocol:&unk_2824F2098])
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      [v16 setHeaderAccessoryButtonDelegate:v23];

      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v39 = "[HUQuickControlCollectionViewController collectionView:viewForSupplementaryElementOfKind:atIndexPath:]";
        v40 = 2112;
        v41 = self;
        v42 = 2112;
        v43 = v6;
        v44 = 2112;
        v45 = v16;
        _os_log_error_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_ERROR, "%s(%@) headerAccessoryButtonDelegate should not be nil (indexPath = %@ / section = %@)", buf, 0x2Au);
      }
    }

    v25 = [v16 headerAccessoryButtonDelegate];
    [v10 setAccessoryButtonTarget:v25];

    [v10 setItemSection:v16];
    [v10 setHideAccessoryButton:{objc_msgSend(v16, "hideAccessoryButton")}];
    [v10 setHideHeaderText:{objc_msgSend(v16, "hideHeaderText")}];
    v26 = [(HUItemCollectionViewController *)self itemManager];
    v27 = [v26 displayedItemAtIndexPath:v6];

    v28 = [v27 latestResults];
    v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277D140E8]];

    if (v29)
    {
      v30 = [v29 category] == 1;
    }

    else
    {
      v30 = [(HUQuickControlCollectionViewController *)self _determineReachabilityForIndexPath:v6];
    }

    v31 = HFLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
      *buf = 136315650;
      v39 = "[HUQuickControlCollectionViewController collectionView:viewForSupplementaryElementOfKind:atIndexPath:]";
      v40 = 2112;
      v41 = self;
      v42 = 2112;
      v43 = v32;
      _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, "%s(%@) Setting  reachabilityState = %@ ", buf, 0x20u);
    }

    [v10 updateUIForReachabilityState:v30];
    v12 = v36;
    v8 = v37;
  }

  v33 = [v15 allDisplayedItems];
  v34 = [v33 count];

  if (v34 == 1)
  {
    [v10 setHideSeparator:1];
  }

  return v10;
}

- (unint64_t)_determineReachabilityForIndexPath:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 displayedItemAtIndexPath:v4];

  objc_opt_class();
  v7 = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v4 section];
  v11 = [v9 itemSectionForSectionIndex:v10];
  objc_opt_class();
  v12 = v6;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 mediaProfileContainer];
      v28 = 136315650;
      v29 = "[HUQuickControlCollectionViewController _determineReachabilityForIndexPath:]";
      v30 = 2112;
      v31 = self;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%s(%@) Fetching  reachability for MediaAccessory = %@ ", &v28, 0x20u);
    }

    v17 = [v14 mediaProfileContainer];
    v18 = [v11 identifier];
    [(HUQuickControlCollectionViewController *)self _fetchReachabilityStateForMediaAccessory:v17 accessType:0 itemSectionIdentifier:v18];

    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  objc_opt_class();
  v20 = v12;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    v23 = [v22 mediaProfileContainer];
    v24 = [v11 identifier];
    v19 = 1;
    [(HUQuickControlCollectionViewController *)self _fetchReachabilityStateForMediaAccessory:v23 accessType:1 itemSectionIdentifier:v24];
  }

  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    v28 = 136315650;
    v29 = "[HUQuickControlCollectionViewController _determineReachabilityForIndexPath:]";
    v30 = 2112;
    v31 = self;
    v32 = 2112;
    v33 = v26;
    _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%s(%@) Returning reachabilityState = %@ ", &v28, 0x20u);
  }

  return v19;
}

- (void)_fetchReachabilityStateForMediaAccessory:(id)a3 accessType:(unint64_t)a4 itemSectionIdentifier:(id)a5
{
  v8 = a5;
  v9 = [a3 accessories];
  v10 = [v9 anyObject];
  if (!v10)
  {
    NSLog(&cfstr_AccessoryCanTB.isa);
  }

  v11 = [HUAlarmsAndTimersAccessUtility canAccess:v10 for:a4 withManager:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __116__HUQuickControlCollectionViewController__fetchReachabilityStateForMediaAccessory_accessType_itemSectionIdentifier___block_invoke;
  v14[3] = &unk_277DBD4E0;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  v13 = [v11 flatMap:v14];
}

id __116__HUQuickControlCollectionViewController__fetchReachabilityStateForMediaAccessory_accessType_itemSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 136315906;
    v10 = "[HUQuickControlCollectionViewController _fetchReachabilityStateForMediaAccessory:accessType:itemSectionIdentifier:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 1024;
    v16 = [v3 BOOLValue];
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s(%@) Updating reachability for section %@ to %{BOOL}d", &v9, 0x26u);
  }

  [*(a1 + 32) _setReachabilityForHeaderForIdentifier:*(a1 + 40) to:{objc_msgSend(v3, "BOOLValue")}];
  v7 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v7;
}

- (void)_setReachabilityForHeaderForIdentifier:(id)a3 to:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUQuickControlCollectionViewController *)self collectionView];
  v8 = [v7 visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HUQuickControlCollectionViewController__setReachabilityForHeaderForIdentifier_to___block_invoke;
  v15[3] = &unk_277DBD560;
  v9 = v6;
  v16 = v9;
  v10 = [v8 na_firstObjectPassingTest:v15];

  if (!v10)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "[HUQuickControlCollectionViewController _setReachabilityForHeaderForIdentifier:to:]";
      v19 = 2112;
      v20 = self;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%s(%@) Could not find section %@", buf, 0x20u);
    }
  }

  if (v4)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    *buf = 136315650;
    v18 = "[HUQuickControlCollectionViewController _setReachabilityForHeaderForIdentifier:to:]";
    v19 = 2112;
    v20 = self;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s(%@) Setting  reachabilityState = %@ ", buf, 0x20u);
  }

  [v10 updateUIForReachabilityState:v12];
}

uint64_t __84__HUQuickControlCollectionViewController__setReachabilityForHeaderForIdentifier_to___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 itemSection];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  return v9;
}

- (void)_handleCoordinationReachableStatusChanged:(id)a3
{
  v14 = a3;
  v4 = [v14 userInfo];
  v5 = *MEMORY[0x277D13828];
  v6 = [v4 objectForKey:*MEMORY[0x277D13828]];
  if (v6)
  {
    v7 = v6;
    v8 = [v14 userInfo];
    v9 = *MEMORY[0x277D13820];
    v10 = [v8 objectForKey:*MEMORY[0x277D13820]];

    if (!v10)
    {
      goto LABEL_5;
    }

    v4 = [v14 userInfo];
    v11 = [v4 objectForKey:v5];
    v12 = [v14 userInfo];
    v13 = [v12 objectForKey:v9];
    -[HUQuickControlCollectionViewController _setReachabilityForHeaderForIdentifier:to:](self, "_setReachabilityForHeaderForIdentifier:to:", v11, [v13 BOOLValue]);
  }

LABEL_5:
}

- (id)_controlItemsForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
  }

  else
  {
    v9 = [(HUItemCollectionViewController *)self itemManager];
    v8 = [v9 childItemsForItem:v5 ofClass:objc_opt_class()];
  }

  return v8;
}

- (void)_reconfigureLayoutOptions
{
  v3 = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  v4 = [v3 keyEnumerator];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__HUQuickControlCollectionViewController__reconfigureLayoutOptions__block_invoke;
  v5[3] = &unk_277DBAF68;
  v5[4] = self;
  [v4 na_each:v5];
}

void __67__HUQuickControlCollectionViewController__reconfigureLayoutOptions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 viewControllersKeyedByItem];
  v7 = [v5 objectForKey:v4];

  v6 = [*(a1 + 32) _titlePositionForItem:v4];
  [v7 setTitlePosition:v6];
}

- (unint64_t)_titlePositionForItem:(id)a3
{
  v3 = [(HUQuickControlCollectionViewController *)self layoutOptions];
  v4 = [v3 titlePosition];

  return v4;
}

- (id)_viewControllerForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [(HUItemCollectionViewController *)self itemManager];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) != 0 && (-[HUItemCollectionViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 quickControlContextForItem:v4], v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
    {
      v11 = objc_alloc([v10 quickControlClass]);
      v12 = [v10 controlItems];
      v13 = [v10 home];
      v14 = [v10 itemUpdater];
      v15 = [v11 initWithControlItems:v12 home:v13 itemUpdater:v14 controlOrientation:objc_msgSend(v10 preferredControl:{"controlOrientation"), objc_msgSend(v10, "preferredControl")}];

      [v15 setPreferredControl:{objc_msgSend(v10, "preferredControl")}];
      [v15 setControlOrientation:{objc_msgSend(v10, "controlOrientation")}];
      v16 = [(HUItemCollectionViewController *)self itemManager];
      v17 = [v16 indexPathForItem:v4];

      v18 = [(HUItemCollectionViewController *)self itemManager];
      v19 = [v18 itemSectionForSectionIndex:{objc_msgSend(v17, "section")}];

      v20 = v15;
      if ([(HUQuickControlViewControllerConfiguration *)v20 conformsToProtocol:&unk_2824F2098])
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      [v19 setHeaderAccessoryButtonDelegate:v22];
      v6 = [(HUQuickControlCollectionViewController *)self _createCellContainerForViewController:v20 forItem:v4];
    }

    else
    {
      v23 = [(HUQuickControlCollectionViewController *)self _controlItemsForItem:v4];
      v24 = [HUQuickControlViewControllerConfiguration alloc];
      v25 = [(HUItemCollectionViewController *)self itemManager];
      v26 = [v25 home];
      v27 = [(HUQuickControlViewControllerConfiguration *)v24 initWithHome:v26];

      [(HUQuickControlViewControllerConfiguration *)v27 setItemUpdater:self];
      [(HUQuickControlViewControllerConfiguration *)v27 setCopyItems:0];
      v51 = v27;
      v52 = v23;
      v17 = [MEMORY[0x277D145C8] hu_preferredQuickControlGroupContextForControlItems:v23 configuration:v27];
      v49 = [v17 primaryQuickControlContext];
      v47 = objc_alloc([v49 quickControlClass]);
      v48 = [v17 primaryQuickControlContext];
      [v48 controlItems];
      v28 = v50 = v4;
      v29 = [v17 primaryQuickControlContext];
      v30 = [v29 home];
      v31 = [v17 primaryQuickControlContext];
      v32 = [v31 itemUpdater];
      v33 = [v17 primaryQuickControlContext];
      v34 = [v33 controlOrientation];
      v35 = [v17 primaryQuickControlContext];
      v36 = [v47 initWithControlItems:v28 home:v30 itemUpdater:v32 controlOrientation:v34 preferredControl:{objc_msgSend(v35, "preferredControl")}];

      v19 = v36;
      v37 = [v17 primaryQuickControlContext];
      [v19 setPreferredControl:{objc_msgSend(v37, "preferredControl")}];

      v38 = [v17 primaryQuickControlContext];
      [v19 setControlOrientation:{objc_msgSend(v38, "controlOrientation")}];

      if (v19)
      {
        v39 = [(HUItemCollectionViewController *)self itemManager];
        v40 = [v39 indexPathForItem:v50];

        v41 = [(HUItemCollectionViewController *)self itemManager];
        v42 = [v41 itemSectionForSectionIndex:{objc_msgSend(v40, "section")}];

        v43 = v19;
        if ([v43 conformsToProtocol:&unk_2824F2098])
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v45 = v44;

        [v42 setHeaderAccessoryButtonDelegate:v45];
        v6 = [(HUQuickControlCollectionViewController *)self _createCellContainerForViewController:v43 forItem:v50];

        v4 = v50;
      }

      else
      {
        v6 = 0;
        v4 = v50;
      }

      v20 = v51;
      v10 = v52;
    }
  }

  return v6;
}

- (id)_createCellContainerForViewController:(id)a3 forItem:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [[HUQuickControlCollectionViewCellContainerViewController alloc] initWithContentViewController:v7];

  [(HUQuickControlCollectionViewCellContainerViewController *)v8 setTitlePosition:[(HUQuickControlCollectionViewController *)self _titlePositionForItem:v6]];
  v9 = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  [v9 setObject:v8 forKey:v6];

  v12[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [(HUQuickControlCollectionViewController *)self _propagateInteractiveContentStateForChildViewControllers:v10];

  return v8;
}

- (void)_propagateInteractiveContentStateForChildViewControllers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) contentViewController];
        v10 = [(HUQuickControlCollectionViewController *)self characteristicWritingAdapter];
        [v9 setCharacteristicWritingDelegate:v10];

        v11 = [(HUQuickControlCollectionViewController *)self quickControlHost];
        [v9 setQuickControlHost:v11];

        [v9 setUserInteractionEnabled:{-[HUQuickControlCollectionViewController isUserInteractionEnabled](self, "isUserInteractionEnabled")}];
        v12 = [v9 childVCThatRequiresHelper];
        [v12 setQuickControlContentHelper:self];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)_allViewControllers
{
  v2 = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  v3 = [v2 objectEnumerator];
  v4 = [v3 allObjects];

  return v4;
}

- (id)_allContentViewControllers
{
  v2 = [(HUQuickControlCollectionViewController *)self _allViewControllers];
  v3 = [v2 na_map:&__block_literal_global_118];

  return v3;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUQuickControlCollectionViewController;
  [(HUQuickControlCollectionViewController *)&v6 preferredContentSizeDidChangeForChildContentContainer:a3];
  v4 = [(HUQuickControlCollectionViewController *)self transitionCoordinator];

  if (!v4)
  {
    v5 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
    [v5 invalidateLayout];
  }
}

- (id)viewForTouchContinuation
{
  v3 = [(HUItemCollectionViewController *)self itemManager];
  v4 = [v3 displayedItemsInSection:0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HUQuickControlCollectionViewController_viewForTouchContinuation__block_invoke;
  v10[3] = &unk_277DBD5A8;
  v10[4] = self;
  v5 = [v4 na_map:v10];
  v6 = [v5 na_map:&__block_literal_global_114_0];
  v7 = 0;
  if ([v6 count] == 1)
  {
    v8 = [v6 firstObject];
    v7 = [v8 viewForTouchContinuation];
  }

  return v7;
}

id __66__HUQuickControlCollectionViewController_viewForTouchContinuation__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _viewControllerForItem:a2];
  v3 = [v2 contentViewController];

  return v3;
}

id __66__HUQuickControlCollectionViewController_viewForTouchContinuation__block_invoke_2(uint64_t a1, void *a2)
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

  v6 = [v5 viewProfile];

  v7 = 0;
  if ([v6 supportsTouchContinuation])
  {
    v8 = v3;
    if ([v8 conformsToProtocol:&unk_2824E9BB0])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v7 = v9;
  }

  return v7;
}

- (id)intrinsicSizeDescriptorForItemAtIndexPath:(id)a3 itemSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HUItemCollectionViewController *)self itemManager];
  v8 = [v7 displayedItemAtIndexPath:v6];

  v9 = [(HUQuickControlCollectionViewController *)self _viewControllerForItem:v8];
  v10 = [v9 intrinsicSizeDescriptorForControlSize:{+[HUQuickControlViewControllerCollectionViewCell quickControlSizeForItemSize:](HUQuickControlViewControllerCollectionViewCell, "quickControlSizeForItemSize:", a4)}];

  return v10;
}

- (void)setCharacteristicWritingDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_characteristicWritingDelegate, v4);
  v5 = [(HUQuickControlCollectionViewController *)self characteristicWritingAdapter];
  [v5 setForwardingCharacteristicWritingDelegate:v4];
}

- (void)invalidateContentViewLayout
{
  v2 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [v2 invalidateLayout];
}

- (void)shouldHideQuickControlHeaderButton:(BOOL)a3 forSectionIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(HUQuickControlCollectionViewController *)self collectionView];
  v8 = [v7 visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HUQuickControlCollectionViewController_shouldHideQuickControlHeaderButton_forSectionIdentifier___block_invoke;
  v12[3] = &unk_277DBD560;
  v13 = v6;
  v9 = v6;
  v10 = [v8 na_firstObjectPassingTest:v12];

  v11 = [v10 itemSection];
  [v11 setHideAccessoryButton:v4];

  [v10 setHideAccessoryButton:v4];
}

uint64_t __98__HUQuickControlCollectionViewController_shouldHideQuickControlHeaderButton_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 itemSection];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  return v9;
}

- (void)shouldHideQuickControlHeaderText:(BOOL)a3 forSectionIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(HUQuickControlCollectionViewController *)self collectionView];
  v8 = [v7 visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__HUQuickControlCollectionViewController_shouldHideQuickControlHeaderText_forSectionIdentifier___block_invoke;
  v12[3] = &unk_277DBD560;
  v13 = v6;
  v9 = v6;
  v10 = [v8 na_firstObjectPassingTest:v12];

  v11 = [v10 itemSection];
  [v11 setHideHeaderText:v4];

  [v10 setHideHeaderText:v4];
}

uint64_t __96__HUQuickControlCollectionViewController_shouldHideQuickControlHeaderText_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 itemSection];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  return v9;
}

- (void)setQuickControlHost:(id)a3
{
  objc_storeWeak(&self->_quickControlHost, a3);
  v4 = [(HUQuickControlCollectionViewController *)self _allViewControllers];
  [(HUQuickControlCollectionViewController *)self _propagateInteractiveContentStateForChildViewControllers:v4];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  self->_userInteractionEnabled = a3;
  v4 = [(HUQuickControlCollectionViewController *)self _allViewControllers];
  [(HUQuickControlCollectionViewController *)self _propagateInteractiveContentStateForChildViewControllers:v4];
}

- (NSSet)affectedCharacteristics
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUQuickControlCollectionViewController *)self _allContentViewControllers];
  v4 = [v2 setWithArray:v3];
  v5 = [v4 na_flatMap:&__block_literal_global_121_0];

  return v5;
}

- (id)overrideValueForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlCollectionViewController *)self _allContentViewControllers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HUQuickControlCollectionViewController_overrideValueForCharacteristic___block_invoke;
  v10[3] = &unk_277DBD610;
  v11 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v10];

  v8 = [v7 overrideValueForCharacteristic:v6];

  return v8;
}

uint64_t __73__HUQuickControlCollectionViewController_overrideValueForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 affectedCharacteristics];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (void)accessoryDidUpdateControllable:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = self;
  v5 = [(HUQuickControlCollectionViewController *)self collectionView];
  v6 = [v5 visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15 && [v4 hf_isHomePod])
        {
          v16 = [v4 mediaProfile];
          v17 = [v16 settings];
          if ([v17 isControllable])
          {
            v18 = 2;
          }

          else
          {
            v18 = 1;
          }

          v19 = HFLogForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
            *buf = 136315906;
            v27 = "[HUQuickControlCollectionViewController accessoryDidUpdateControllable:]";
            v28 = 2112;
            v29 = v21;
            v30 = 2112;
            v31 = v4;
            v32 = 2112;
            v33 = v20;
            _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%s(%@) accessory [%@]   reachabilityState = %@", buf, 0x2Au);
          }

          [v15 updateUIForReachabilityState:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v9);
  }
}

- (HUQuickControlContentCharacteristicWritingDelegate)characteristicWritingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_characteristicWritingDelegate);

  return WeakRetained;
}

- (HUQuickControlContentHosting)quickControlHost
{
  WeakRetained = objc_loadWeakRetained(&self->_quickControlHost);

  return WeakRetained;
}

@end