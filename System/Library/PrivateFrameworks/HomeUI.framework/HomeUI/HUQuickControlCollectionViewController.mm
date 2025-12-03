@interface HUQuickControlCollectionViewController
- (HULayoutAnchorProviding)preferredFrameLayoutGuide;
- (HUQuickControlCollectionViewController)initWithItemManager:(id)manager;
- (HUQuickControlCollectionViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUQuickControlContentCharacteristicWritingDelegate)characteristicWritingDelegate;
- (HUQuickControlContentHosting)quickControlHost;
- (NSSet)affectedCharacteristics;
- (id)_allContentViewControllers;
- (id)_allViewControllers;
- (id)_controlItemsForItem:(id)item;
- (id)_createCellContainerForViewController:(id)controller forItem:(id)item;
- (id)_viewControllerForItem:(id)item;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)intrinsicSizeDescriptorForItemAtIndexPath:(id)path itemSize:(unint64_t)size;
- (id)overrideValueForCharacteristic:(id)characteristic;
- (id)viewForTouchContinuation;
- (unint64_t)_determineReachabilityForIndexPath:(id)path;
- (unint64_t)_titlePositionForItem:(id)item;
- (void)_fetchReachabilityStateForMediaAccessory:(id)accessory accessType:(unint64_t)type itemSectionIdentifier:(id)identifier;
- (void)_handleCoordinationReachableStatusChanged:(id)changed;
- (void)_propagateInteractiveContentStateForChildViewControllers:(id)controllers;
- (void)_reconfigureLayoutOptions;
- (void)_setReachabilityForHeaderForIdentifier:(id)identifier to:(BOOL)to;
- (void)accessoryDidUpdateControllable:(id)controllable;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)invalidateContentViewLayout;
- (void)itemManager:(id)manager didRemoveItem:(id)item atIndexPath:(id)path;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setCharacteristicWritingDelegate:(id)delegate;
- (void)setDisableItemUpdatesForOverrideCharacteristicValueChanges:(BOOL)changes;
- (void)setLayoutOptions:(id)options;
- (void)setQuickControlHost:(id)host;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)shouldHideQuickControlHeaderButton:(BOOL)button forSectionIdentifier:(id)identifier;
- (void)shouldHideQuickControlHeaderText:(BOOL)text forSectionIdentifier:(id)identifier;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillDismiss;
@end

@implementation HUQuickControlCollectionViewController

- (HUQuickControlCollectionViewController)initWithItemManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(HUQuickControlCollectionViewLayout);
  v13.receiver = self;
  v13.super_class = HUQuickControlCollectionViewController;
  v6 = [(HUItemCollectionViewController *)&v13 initWithItemManager:managerCopy collectionViewLayout:v5];
  if (v6)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    viewControllersKeyedByItem = v6->_viewControllersKeyedByItem;
    v6->_viewControllersKeyedByItem = weakToStrongObjectsMapTable;

    v9 = [[HUQuickControlContentCharacteristicWritingUpdateAdapter alloc] initWithItemManager:managerCopy];
    characteristicWritingAdapter = v6->_characteristicWritingAdapter;
    v6->_characteristicWritingAdapter = v9;

    v6->_disableItemUpdatesForOverrideCharacteristicValueChanges = 0;
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addAccessoryObserver:v6];
  }

  return v6;
}

- (HUQuickControlCollectionViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItemManager_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlCollectionViewController.m" lineNumber:84 description:{@"%s is unavailable; use %@ instead", "-[HUQuickControlCollectionViewController initWithItemManager:collectionViewLayout:]", v7}];

  return 0;
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = HUQuickControlCollectionViewController;
  [(HUQuickControlCollectionViewController *)&v19 loadView];
  v3 = [HUQuickControlCollectionView alloc];
  collectionViewLayout = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  v5 = [(HUQuickControlCollectionView *)v3 initWithFrame:collectionViewLayout collectionViewLayout:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(HUQuickControlCollectionViewController *)self setCollectionView:v5];

  v6 = [HUQuickControlGridLayoutManager alloc];
  collectionView = [(HUQuickControlCollectionViewController *)self collectionView];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  layoutOptions = [(HUQuickControlCollectionViewController *)self layoutOptions];
  v10 = [(HUQuickControlGridLayoutManager *)v6 initWithCollectionView:collectionView itemManager:itemManager layoutOptions:layoutOptions];
  collectionViewLayout2 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout2 setLayoutManager:v10];

  collectionView2 = [(HUQuickControlCollectionViewController *)self collectionView];
  heightAnchor = [collectionView2 heightAnchor];
  view = [(HUQuickControlCollectionViewController *)self view];
  [view frame];
  v16 = [heightAnchor constraintEqualToConstant:v15];
  collectionViewLayout3 = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout3 setHeightConstraint:v16];

  collectionView3 = [(HUQuickControlCollectionViewController *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"HUQuickControlSectionHeaderViewReuseIdentifier"];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HUQuickControlCollectionViewController;
  [(HUItemCollectionViewController *)&v19 viewDidLoad];
  shouldUseControlCenterMaterials = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];
  v6 = shouldUseControlCenterMaterials;
  if (shouldUseControlCenterMaterials)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    view = [(HUQuickControlCollectionViewController *)self view];
    traitCollection = [view traitCollection];
    +[HUQuickControlUtilities backgroundColorForUserInterfaceStyle:](HUQuickControlUtilities, "backgroundColorForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);
  }
  v7 = ;
  view2 = [(HUQuickControlCollectionViewController *)self view];
  [view2 setBackgroundColor:v7];

  if ((v6 & 1) == 0)
  {

    v7 = view;
  }

  collectionView = [(HUQuickControlCollectionViewController *)self collectionView];
  [collectionView setBackgroundColor:0];

  collectionView2 = [(HUQuickControlCollectionViewController *)self collectionView];
  [collectionView2 setShowsHorizontalScrollIndicator:0];

  collectionView3 = [(HUQuickControlCollectionViewController *)self collectionView];
  [collectionView3 setDelaysContentTouches:1];

  view3 = [(HUQuickControlCollectionViewController *)self view];
  [view3 frame];
  v15 = [HUQuickControlCollectionViewControllerLayoutOptions defaultOptionsForViewSize:v13, v14];
  [(HUQuickControlCollectionViewController *)self setLayoutOptions:v15];

  [(HUQuickControlCollectionViewController *)self _reconfigureLayoutOptions];
  [(HUItemCollectionViewController *)self setWantsPreferredContentSize:1];
  collectionViewLayout = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  heightConstraint = [collectionViewLayout heightConstraint];
  [heightConstraint setActive:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleCoordinationReachableStatusChanged_ name:*MEMORY[0x277D13830] object:0];
}

- (void)viewWillDismiss
{
  objc_opt_class();
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v4 = itemManager;
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
  view = [(HUQuickControlCollectionViewController *)self view];
  [view layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  collectionViewLayout = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout setContentInset:{v5, v7, v9, v11}];
}

- (void)setDisableItemUpdatesForOverrideCharacteristicValueChanges:(BOOL)changes
{
  if (self->_disableItemUpdatesForOverrideCharacteristicValueChanges != changes)
  {
    changesCopy = changes;
    self->_disableItemUpdatesForOverrideCharacteristicValueChanges = changes;
    characteristicWritingAdapter = [(HUQuickControlCollectionViewController *)self characteristicWritingAdapter];
    [characteristicWritingAdapter setShouldIssueItemUpdatesOnCharacteristicOverrideValueChanges:!changesCopy];
  }
}

- (HULayoutAnchorProviding)preferredFrameLayoutGuide
{
  preferredFrameLayoutGuide = self->_preferredFrameLayoutGuide;
  if (preferredFrameLayoutGuide)
  {
    view = preferredFrameLayoutGuide;
  }

  else
  {
    view = [(HUQuickControlCollectionViewController *)self view];
  }

  return view;
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  v9 = optionsCopy;
  if (!optionsCopy)
  {
    view = [(HUQuickControlCollectionViewController *)self view];
    [view frame];
    optionsCopy = [HUQuickControlCollectionViewControllerLayoutOptions defaultOptionsForViewSize:v6, v7];
  }

  objc_storeStrong(&self->_layoutOptions, optionsCopy);
  if (!v9)
  {
  }

  collectionViewLayout = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout setLayoutOptions:v9];

  if ([(HUQuickControlCollectionViewController *)self isViewLoaded])
  {
    [(HUQuickControlCollectionViewController *)self _reconfigureLayoutOptions];
  }
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = HUQuickControlCollectionViewController;
  [(HUItemCollectionViewController *)&v18 configureCell:cellCopy forItem:itemCopy];
  v8 = cellCopy;
  v9 = [(HUQuickControlCollectionViewController *)self _viewControllerForItem:itemCopy];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __64__HUQuickControlCollectionViewController_configureCell_forItem___block_invoke;
  v15 = &unk_277DBD538;
  selfCopy = self;
  v17 = itemCopy;
  v10 = itemCopy;
  v11 = __64__HUQuickControlCollectionViewController_configureCell_forItem___block_invoke(&v12);
  [v9 setTitle:{v11, v12, v13, v14, v15, selfCopy}];

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

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  managerCopy = manager;
  itemCopy = item;
  pathCopy = path;
  if ([+[HUQuickControlCollectionViewController superclass](HUQuickControlCollectionViewController "superclass")])
  {
    v16.receiver = self;
    v16.super_class = HUQuickControlCollectionViewController;
    [(HUItemCollectionViewController *)&v16 itemManager:managerCopy didUpdateResultsForItem:itemCopy atIndexPath:pathCopy];
  }

  viewControllersKeyedByItem = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  v13 = [viewControllersKeyedByItem objectForKey:itemCopy];
  contentViewController = [v13 contentViewController];

  v15 = [(HUQuickControlCollectionViewController *)self _controlItemsForItem:itemCopy];
  [contentViewController quickControlItemUpdater:self didUpdateResultsForControlItems:v15];
}

- (void)itemManager:(id)manager didRemoveItem:(id)item atIndexPath:(id)path
{
  managerCopy = manager;
  itemCopy = item;
  pathCopy = path;
  if ([+[HUQuickControlCollectionViewController superclass](HUQuickControlCollectionViewController "superclass")])
  {
    v13.receiver = self;
    v13.super_class = HUQuickControlCollectionViewController;
    [(HUItemCollectionViewController *)&v13 itemManager:managerCopy didRemoveItem:itemCopy atIndexPath:pathCopy];
  }

  viewControllersKeyedByItem = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  [viewControllersKeyedByItem removeObjectForKey:itemCopy];
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  managerCopy = manager;
  itemsCopy = items;
  addItemsCopy = addItems;
  removeItemsCopy = removeItems;
  v19.receiver = self;
  v19.super_class = HUQuickControlCollectionViewController;
  [(HUItemCollectionViewController *)&v19 diffableDataItemManager:managerCopy didUpdateItems:itemsCopy addItems:addItemsCopy removeItems:removeItemsCopy];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__HUQuickControlCollectionViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
  v16[3] = &unk_277DBBF90;
  objc_copyWeak(&v17, &location);
  [itemsCopy na_each:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__HUQuickControlCollectionViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke_2;
  v14[3] = &unk_277DBBF90;
  objc_copyWeak(&v15, &location);
  [removeItemsCopy na_each:v14];
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v46 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v8 = [itemManager titleForSection:{objc_msgSend(pathCopy, "section")}];

  collectionView = [(HUQuickControlCollectionViewController *)self collectionView];
  v10 = [collectionView dequeueReusableSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"HUQuickControlSectionHeaderViewReuseIdentifier" forIndexPath:pathCopy];

  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  v12 = [itemManager2 attributedTitleForSection:{objc_msgSend(pathCopy, "section")}];

  if (v12)
  {
    [v10 setAttributedTitleText:v12];
  }

  else
  {
    if (!v8)
    {
      NSLog(&cfstr_AskedForHeader.isa, pathCopy);
    }

    [v10 setTitleText:v8];
  }

  objc_opt_class();
  itemManager3 = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v14 = itemManager3;
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
    v16 = [v15 itemSectionForSectionIndex:{objc_msgSend(pathCopy, "section")}];
    headerAccessoryButtonTitle = [v16 headerAccessoryButtonTitle];
    [v10 setAccessoryButtonTitleText:headerAccessoryButtonTitle];

    headerAccessoryButtonDelegate = [v16 headerAccessoryButtonDelegate];

    if (!headerAccessoryButtonDelegate)
    {
      items = [v16 items];
      firstObject = [items firstObject];
      v21 = [(HUQuickControlCollectionViewController *)self _viewControllerForItem:firstObject];
      contentViewController = [v21 contentViewController];
      if ([contentViewController conformsToProtocol:&unk_2824F2098])
      {
        v23 = contentViewController;
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
        selfCopy2 = self;
        v42 = 2112;
        v43 = pathCopy;
        v44 = 2112;
        v45 = v16;
        _os_log_error_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_ERROR, "%s(%@) headerAccessoryButtonDelegate should not be nil (indexPath = %@ / section = %@)", buf, 0x2Au);
      }
    }

    headerAccessoryButtonDelegate2 = [v16 headerAccessoryButtonDelegate];
    [v10 setAccessoryButtonTarget:headerAccessoryButtonDelegate2];

    [v10 setItemSection:v16];
    [v10 setHideAccessoryButton:{objc_msgSend(v16, "hideAccessoryButton")}];
    [v10 setHideHeaderText:{objc_msgSend(v16, "hideHeaderText")}];
    itemManager4 = [(HUItemCollectionViewController *)self itemManager];
    v27 = [itemManager4 displayedItemAtIndexPath:pathCopy];

    latestResults = [v27 latestResults];
    v29 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140E8]];

    if (v29)
    {
      v30 = [v29 category] == 1;
    }

    else
    {
      v30 = [(HUQuickControlCollectionViewController *)self _determineReachabilityForIndexPath:pathCopy];
    }

    v31 = HFLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
      *buf = 136315650;
      v39 = "[HUQuickControlCollectionViewController collectionView:viewForSupplementaryElementOfKind:atIndexPath:]";
      v40 = 2112;
      selfCopy2 = self;
      v42 = 2112;
      v43 = v32;
      _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, "%s(%@) Setting  reachabilityState = %@ ", buf, 0x20u);
    }

    [v10 updateUIForReachabilityState:v30];
    v12 = v36;
    v8 = v37;
  }

  allDisplayedItems = [v15 allDisplayedItems];
  v34 = [allDisplayedItems count];

  if (v34 == 1)
  {
    [v10 setHideSeparator:1];
  }

  return v10;
}

- (unint64_t)_determineReachabilityForIndexPath:(id)path
{
  v34 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v8 = itemManager2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  section = [pathCopy section];
  v11 = [v9 itemSectionForSectionIndex:section];
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
      mediaProfileContainer = [v14 mediaProfileContainer];
      v28 = 136315650;
      v29 = "[HUQuickControlCollectionViewController _determineReachabilityForIndexPath:]";
      v30 = 2112;
      selfCopy2 = self;
      v32 = 2112;
      v33 = mediaProfileContainer;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%s(%@) Fetching  reachability for MediaAccessory = %@ ", &v28, 0x20u);
    }

    mediaProfileContainer2 = [v14 mediaProfileContainer];
    identifier = [v11 identifier];
    [(HUQuickControlCollectionViewController *)self _fetchReachabilityStateForMediaAccessory:mediaProfileContainer2 accessType:0 itemSectionIdentifier:identifier];

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
    mediaProfileContainer3 = [v22 mediaProfileContainer];
    identifier2 = [v11 identifier];
    v19 = 1;
    [(HUQuickControlCollectionViewController *)self _fetchReachabilityStateForMediaAccessory:mediaProfileContainer3 accessType:1 itemSectionIdentifier:identifier2];
  }

  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    v28 = 136315650;
    v29 = "[HUQuickControlCollectionViewController _determineReachabilityForIndexPath:]";
    v30 = 2112;
    selfCopy2 = self;
    v32 = 2112;
    v33 = v26;
    _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%s(%@) Returning reachabilityState = %@ ", &v28, 0x20u);
  }

  return v19;
}

- (void)_fetchReachabilityStateForMediaAccessory:(id)accessory accessType:(unint64_t)type itemSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessories = [accessory accessories];
  anyObject = [accessories anyObject];
  if (!anyObject)
  {
    NSLog(&cfstr_AccessoryCanTB.isa);
  }

  v11 = [HUAlarmsAndTimersAccessUtility canAccess:anyObject for:type withManager:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __116__HUQuickControlCollectionViewController__fetchReachabilityStateForMediaAccessory_accessType_itemSectionIdentifier___block_invoke;
  v14[3] = &unk_277DBD4E0;
  v14[4] = self;
  v15 = identifierCopy;
  v12 = identifierCopy;
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

- (void)_setReachabilityForHeaderForIdentifier:(id)identifier to:(BOOL)to
{
  toCopy = to;
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  collectionView = [(HUQuickControlCollectionViewController *)self collectionView];
  v8 = [collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HUQuickControlCollectionViewController__setReachabilityForHeaderForIdentifier_to___block_invoke;
  v15[3] = &unk_277DBD560;
  v9 = identifierCopy;
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
      selfCopy2 = self;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%s(%@) Could not find section %@", buf, 0x20u);
    }
  }

  if (toCopy)
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
    selfCopy2 = self;
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

- (void)_handleCoordinationReachableStatusChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v5 = *MEMORY[0x277D13828];
  v6 = [userInfo objectForKey:*MEMORY[0x277D13828]];
  if (v6)
  {
    v7 = v6;
    userInfo2 = [changedCopy userInfo];
    v9 = *MEMORY[0x277D13820];
    v10 = [userInfo2 objectForKey:*MEMORY[0x277D13820]];

    if (!v10)
    {
      goto LABEL_5;
    }

    userInfo = [changedCopy userInfo];
    v11 = [userInfo objectForKey:v5];
    userInfo3 = [changedCopy userInfo];
    v13 = [userInfo3 objectForKey:v9];
    -[HUQuickControlCollectionViewController _setReachabilityForHeaderForIdentifier:to:](self, "_setReachabilityForHeaderForIdentifier:to:", v11, [v13 BOOLValue]);
  }

LABEL_5:
}

- (id)_controlItemsForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
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
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v8 = [itemManager childItemsForItem:v5 ofClass:objc_opt_class()];
  }

  return v8;
}

- (void)_reconfigureLayoutOptions
{
  viewControllersKeyedByItem = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  keyEnumerator = [viewControllersKeyedByItem keyEnumerator];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__HUQuickControlCollectionViewController__reconfigureLayoutOptions__block_invoke;
  v5[3] = &unk_277DBAF68;
  v5[4] = self;
  [keyEnumerator na_each:v5];
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

- (unint64_t)_titlePositionForItem:(id)item
{
  layoutOptions = [(HUQuickControlCollectionViewController *)self layoutOptions];
  titlePosition = [layoutOptions titlePosition];

  return titlePosition;
}

- (id)_viewControllerForItem:(id)item
{
  itemCopy = item;
  viewControllersKeyedByItem = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  v6 = [viewControllersKeyedByItem objectForKey:itemCopy];

  if (!v6)
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) != 0 && (-[HUItemCollectionViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 quickControlContextForItem:itemCopy], v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
    {
      v11 = objc_alloc([v10 quickControlClass]);
      controlItems = [v10 controlItems];
      home = [v10 home];
      itemUpdater = [v10 itemUpdater];
      v15 = [v11 initWithControlItems:controlItems home:home itemUpdater:itemUpdater controlOrientation:objc_msgSend(v10 preferredControl:{"controlOrientation"), objc_msgSend(v10, "preferredControl")}];

      [v15 setPreferredControl:{objc_msgSend(v10, "preferredControl")}];
      [v15 setControlOrientation:{objc_msgSend(v10, "controlOrientation")}];
      itemManager2 = [(HUItemCollectionViewController *)self itemManager];
      v17 = [itemManager2 indexPathForItem:itemCopy];

      itemManager3 = [(HUItemCollectionViewController *)self itemManager];
      v19 = [itemManager3 itemSectionForSectionIndex:{objc_msgSend(v17, "section")}];

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
      v6 = [(HUQuickControlCollectionViewController *)self _createCellContainerForViewController:v20 forItem:itemCopy];
    }

    else
    {
      v23 = [(HUQuickControlCollectionViewController *)self _controlItemsForItem:itemCopy];
      v24 = [HUQuickControlViewControllerConfiguration alloc];
      itemManager4 = [(HUItemCollectionViewController *)self itemManager];
      home2 = [itemManager4 home];
      v27 = [(HUQuickControlViewControllerConfiguration *)v24 initWithHome:home2];

      [(HUQuickControlViewControllerConfiguration *)v27 setItemUpdater:self];
      [(HUQuickControlViewControllerConfiguration *)v27 setCopyItems:0];
      v51 = v27;
      v52 = v23;
      v17 = [MEMORY[0x277D145C8] hu_preferredQuickControlGroupContextForControlItems:v23 configuration:v27];
      primaryQuickControlContext = [v17 primaryQuickControlContext];
      v47 = objc_alloc([primaryQuickControlContext quickControlClass]);
      primaryQuickControlContext2 = [v17 primaryQuickControlContext];
      [primaryQuickControlContext2 controlItems];
      v28 = v50 = itemCopy;
      primaryQuickControlContext3 = [v17 primaryQuickControlContext];
      home3 = [primaryQuickControlContext3 home];
      primaryQuickControlContext4 = [v17 primaryQuickControlContext];
      itemUpdater2 = [primaryQuickControlContext4 itemUpdater];
      primaryQuickControlContext5 = [v17 primaryQuickControlContext];
      controlOrientation = [primaryQuickControlContext5 controlOrientation];
      primaryQuickControlContext6 = [v17 primaryQuickControlContext];
      v36 = [v47 initWithControlItems:v28 home:home3 itemUpdater:itemUpdater2 controlOrientation:controlOrientation preferredControl:{objc_msgSend(primaryQuickControlContext6, "preferredControl")}];

      v19 = v36;
      primaryQuickControlContext7 = [v17 primaryQuickControlContext];
      [v19 setPreferredControl:{objc_msgSend(primaryQuickControlContext7, "preferredControl")}];

      primaryQuickControlContext8 = [v17 primaryQuickControlContext];
      [v19 setControlOrientation:{objc_msgSend(primaryQuickControlContext8, "controlOrientation")}];

      if (v19)
      {
        itemManager5 = [(HUItemCollectionViewController *)self itemManager];
        v40 = [itemManager5 indexPathForItem:v50];

        itemManager6 = [(HUItemCollectionViewController *)self itemManager];
        v42 = [itemManager6 itemSectionForSectionIndex:{objc_msgSend(v40, "section")}];

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

        itemCopy = v50;
      }

      else
      {
        v6 = 0;
        itemCopy = v50;
      }

      v20 = v51;
      v10 = v52;
    }
  }

  return v6;
}

- (id)_createCellContainerForViewController:(id)controller forItem:(id)item
{
  v12[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  controllerCopy = controller;
  v8 = [[HUQuickControlCollectionViewCellContainerViewController alloc] initWithContentViewController:controllerCopy];

  [(HUQuickControlCollectionViewCellContainerViewController *)v8 setTitlePosition:[(HUQuickControlCollectionViewController *)self _titlePositionForItem:itemCopy]];
  viewControllersKeyedByItem = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  [viewControllersKeyedByItem setObject:v8 forKey:itemCopy];

  v12[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [(HUQuickControlCollectionViewController *)self _propagateInteractiveContentStateForChildViewControllers:v10];

  return v8;
}

- (void)_propagateInteractiveContentStateForChildViewControllers:(id)controllers
{
  v18 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [controllersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(controllersCopy);
        }

        contentViewController = [*(*(&v13 + 1) + 8 * v8) contentViewController];
        characteristicWritingAdapter = [(HUQuickControlCollectionViewController *)self characteristicWritingAdapter];
        [contentViewController setCharacteristicWritingDelegate:characteristicWritingAdapter];

        quickControlHost = [(HUQuickControlCollectionViewController *)self quickControlHost];
        [contentViewController setQuickControlHost:quickControlHost];

        [contentViewController setUserInteractionEnabled:{-[HUQuickControlCollectionViewController isUserInteractionEnabled](self, "isUserInteractionEnabled")}];
        childVCThatRequiresHelper = [contentViewController childVCThatRequiresHelper];
        [childVCThatRequiresHelper setQuickControlContentHelper:self];

        ++v8;
      }

      while (v6 != v8);
      v6 = [controllersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)_allViewControllers
{
  viewControllersKeyedByItem = [(HUQuickControlCollectionViewController *)self viewControllersKeyedByItem];
  objectEnumerator = [viewControllersKeyedByItem objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  return allObjects;
}

- (id)_allContentViewControllers
{
  _allViewControllers = [(HUQuickControlCollectionViewController *)self _allViewControllers];
  v3 = [_allViewControllers na_map:&__block_literal_global_118];

  return v3;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v6.receiver = self;
  v6.super_class = HUQuickControlCollectionViewController;
  [(HUQuickControlCollectionViewController *)&v6 preferredContentSizeDidChangeForChildContentContainer:container];
  transitionCoordinator = [(HUQuickControlCollectionViewController *)self transitionCoordinator];

  if (!transitionCoordinator)
  {
    collectionViewLayout = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (id)viewForTouchContinuation
{
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v4 = [itemManager displayedItemsInSection:0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HUQuickControlCollectionViewController_viewForTouchContinuation__block_invoke;
  v10[3] = &unk_277DBD5A8;
  v10[4] = self;
  v5 = [v4 na_map:v10];
  v6 = [v5 na_map:&__block_literal_global_114_0];
  viewForTouchContinuation = 0;
  if ([v6 count] == 1)
  {
    firstObject = [v6 firstObject];
    viewForTouchContinuation = [firstObject viewForTouchContinuation];
  }

  return viewForTouchContinuation;
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

- (id)intrinsicSizeDescriptorForItemAtIndexPath:(id)path itemSize:(unint64_t)size
{
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v8 = [itemManager displayedItemAtIndexPath:pathCopy];

  v9 = [(HUQuickControlCollectionViewController *)self _viewControllerForItem:v8];
  v10 = [v9 intrinsicSizeDescriptorForControlSize:{+[HUQuickControlViewControllerCollectionViewCell quickControlSizeForItemSize:](HUQuickControlViewControllerCollectionViewCell, "quickControlSizeForItemSize:", size)}];

  return v10;
}

- (void)setCharacteristicWritingDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_characteristicWritingDelegate, delegateCopy);
  characteristicWritingAdapter = [(HUQuickControlCollectionViewController *)self characteristicWritingAdapter];
  [characteristicWritingAdapter setForwardingCharacteristicWritingDelegate:delegateCopy];
}

- (void)invalidateContentViewLayout
{
  collectionViewLayout = [(HUQuickControlCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)shouldHideQuickControlHeaderButton:(BOOL)button forSectionIdentifier:(id)identifier
{
  buttonCopy = button;
  identifierCopy = identifier;
  collectionView = [(HUQuickControlCollectionViewController *)self collectionView];
  v8 = [collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HUQuickControlCollectionViewController_shouldHideQuickControlHeaderButton_forSectionIdentifier___block_invoke;
  v12[3] = &unk_277DBD560;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = [v8 na_firstObjectPassingTest:v12];

  itemSection = [v10 itemSection];
  [itemSection setHideAccessoryButton:buttonCopy];

  [v10 setHideAccessoryButton:buttonCopy];
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

- (void)shouldHideQuickControlHeaderText:(BOOL)text forSectionIdentifier:(id)identifier
{
  textCopy = text;
  identifierCopy = identifier;
  collectionView = [(HUQuickControlCollectionViewController *)self collectionView];
  v8 = [collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__HUQuickControlCollectionViewController_shouldHideQuickControlHeaderText_forSectionIdentifier___block_invoke;
  v12[3] = &unk_277DBD560;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = [v8 na_firstObjectPassingTest:v12];

  itemSection = [v10 itemSection];
  [itemSection setHideHeaderText:textCopy];

  [v10 setHideHeaderText:textCopy];
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

- (void)setQuickControlHost:(id)host
{
  objc_storeWeak(&self->_quickControlHost, host);
  _allViewControllers = [(HUQuickControlCollectionViewController *)self _allViewControllers];
  [(HUQuickControlCollectionViewController *)self _propagateInteractiveContentStateForChildViewControllers:_allViewControllers];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  self->_userInteractionEnabled = enabled;
  _allViewControllers = [(HUQuickControlCollectionViewController *)self _allViewControllers];
  [(HUQuickControlCollectionViewController *)self _propagateInteractiveContentStateForChildViewControllers:_allViewControllers];
}

- (NSSet)affectedCharacteristics
{
  v2 = MEMORY[0x277CBEB98];
  _allContentViewControllers = [(HUQuickControlCollectionViewController *)self _allContentViewControllers];
  v4 = [v2 setWithArray:_allContentViewControllers];
  v5 = [v4 na_flatMap:&__block_literal_global_121_0];

  return v5;
}

- (id)overrideValueForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  _allContentViewControllers = [(HUQuickControlCollectionViewController *)self _allContentViewControllers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HUQuickControlCollectionViewController_overrideValueForCharacteristic___block_invoke;
  v10[3] = &unk_277DBD610;
  v11 = characteristicCopy;
  v6 = characteristicCopy;
  v7 = [_allContentViewControllers na_firstObjectPassingTest:v10];

  v8 = [v7 overrideValueForCharacteristic:v6];

  return v8;
}

uint64_t __73__HUQuickControlCollectionViewController_overrideValueForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 affectedCharacteristics];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (void)accessoryDidUpdateControllable:(id)controllable
{
  v35 = *MEMORY[0x277D85DE8];
  controllableCopy = controllable;
  selfCopy = self;
  collectionView = [(HUQuickControlCollectionViewController *)self collectionView];
  v6 = [collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x277D767D8]];

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

        if (v15 && [controllableCopy hf_isHomePod])
        {
          mediaProfile = [controllableCopy mediaProfile];
          settings = [mediaProfile settings];
          if ([settings isControllable])
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
            v29 = selfCopy;
            v30 = 2112;
            v31 = controllableCopy;
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