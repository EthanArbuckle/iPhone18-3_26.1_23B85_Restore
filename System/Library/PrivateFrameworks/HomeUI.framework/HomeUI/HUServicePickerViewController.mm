@interface HUServicePickerViewController
- (BOOL)_isItemPreselected:(id)preselected;
- (BOOL)_preselectedServicesContainsService:(id)service;
- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item;
- (HUServicePickerViewController)initWithHome:(id)home selectedServices:(id)services isPresentedModally:(BOOL)modally delegate:(id)delegate;
- (id)_servicesForItem:(id)item;
- (id)_servicesForItems:(id)items;
- (void)_cancel:(id)_cancel;
- (void)_done:(id)_done;
- (void)_setUpNavButtons;
- (void)itemManagerDidUpdate:(id)update;
- (void)viewDidLoad;
@end

@implementation HUServicePickerViewController

- (HUServicePickerViewController)initWithHome:(id)home selectedServices:(id)services isPresentedModally:(BOOL)modally delegate:(id)delegate
{
  homeCopy = home;
  servicesCopy = services;
  delegateCopy = delegate;
  v13 = [HUServiceGridItemManager alloc];
  v14 = [(HUSelectableServiceGridViewController *)HUServicePickerViewController defaultItemProviderCreatorWithOptions:11];
  v15 = [(HUServiceGridItemManager *)v13 initWithDelegate:self shouldGroupByRoom:1 itemProvidersCreator:v14];

  [(HFItemManager *)v15 setHome:homeCopy];
  v20.receiver = self;
  v20.super_class = HUServicePickerViewController;
  v16 = [(HUSelectableServiceGridViewController *)&v20 initWithServiceGridItemManager:v15];
  v17 = v16;
  if (v16)
  {
    [(HUServiceGridViewController *)v16 setDelegate:delegateCopy];
    v17->_isPresentedModally = modally;
    objc_storeStrong(&v17->_preselectedServices, services);
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] setOverrideHome:homeCopy];
  }

  return v17;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HUServicePickerViewController;
  [(HUServiceGridViewController *)&v8 viewDidLoad];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager home];
  hf_displayName = [home hf_displayName];
  [(HUServicePickerViewController *)self setTitle:hf_displayName];

  [(HUServicePickerViewController *)self _setUpNavButtons];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  collectionView = [(HUServicePickerViewController *)self collectionView];
  [collectionView setBackgroundColor:systemGroupedBackgroundColor];
}

- (void)_setUpNavButtons
{
  isPresentedModally = [(HUServicePickerViewController *)self isPresentedModally];
  v4 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = v4;
  if (isPresentedModally)
  {
    v6 = [v4 initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
    navigationItem = [(HUServicePickerViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v6];

    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
    navigationItem2 = [(HUServicePickerViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v10];
  }

  else
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUNextTitle", @"HUNextTitle", 1);
    navigationItem2 = [v5 initWithTitle:? style:? target:? action:?];
    navigationItem3 = [(HUServicePickerViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:navigationItem2];
  }
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUServiceGridViewController *)self delegate];
  [delegate servicePickerDidCancel:self];
}

- (void)_done:(id)_done
{
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  toSet = [selectedItems toSet];
  v7 = [(HUServicePickerViewController *)self _servicesForItems:toSet];

  delegate = [(HUServiceGridViewController *)self delegate];
  [delegate servicePickerDidFinish:self selectedServices:v7];
}

- (id)_servicesForItems:(id)items
{
  itemsCopy = items;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__HUServicePickerViewController__servicesForItems___block_invoke;
  v11 = &unk_277DC2510;
  objc_copyWeak(&v12, &location);
  v5 = [itemsCopy na_map:&v8];
  na_setByFlattening = [v5 na_setByFlattening];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return na_setByFlattening;
}

id __51__HUServicePickerViewController__servicesForItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _servicesForItem:v3];

  return v5;
}

- (id)_servicesForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_28251AFC0])
  {
    services = [itemCopy services];
  }

  else
  {
    services = 0;
  }

  return services;
}

- (void)itemManagerDidUpdate:(id)update
{
  updateCopy = update;
  v18.receiver = self;
  v18.super_class = HUServicePickerViewController;
  [(HUSelectableServiceGridViewController *)&v18 itemManagerDidUpdate:updateCopy];
  preselectedServices = [(HUServicePickerViewController *)self preselectedServices];

  if (preselectedServices)
  {
    objc_initWeak(&location, self);
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    allItems = [itemManager allItems];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __54__HUServicePickerViewController_itemManagerDidUpdate___block_invoke;
    v15 = &unk_277DC0890;
    objc_copyWeak(&v16, &location);
    v8 = [allItems na_filter:&v12];

    v9 = objc_alloc(MEMORY[0x277D14868]);
    v10 = [v9 initWithFromSet:{v8, v12, v13, v14, v15}];
    v11 = [v10 copy];
    [(HUSelectableServiceGridViewController *)self setSelectedItems:v11];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

uint64_t __54__HUServicePickerViewController_itemManagerDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _isItemPreselected:v3];

  return v5;
}

- (BOOL)_isItemPreselected:(id)preselected
{
  preselectedCopy = preselected;
  v5 = [(HUServicePickerViewController *)self _servicesForItem:preselectedCopy];
  if (v5)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__HUServicePickerViewController__isItemPreselected___block_invoke;
    v8[3] = &unk_277DC2538;
    objc_copyWeak(&v9, &location);
    v6 = [v5 na_any:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __52__HUServicePickerViewController__isItemPreselected___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _preselectedServicesContainsService:v3];

  return v5;
}

- (BOOL)_preselectedServicesContainsService:(id)service
{
  serviceCopy = service;
  preselectedServices = [(HUServicePickerViewController *)self preselectedServices];

  if (preselectedServices)
  {
    preselectedServices2 = [(HUServicePickerViewController *)self preselectedServices];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__HUServicePickerViewController__preselectedServicesContainsService___block_invoke;
    v9[3] = &unk_277DB9560;
    v10 = serviceCopy;
    v7 = [preselectedServices2 na_any:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __69__HUServicePickerViewController__preselectedServicesContainsService___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item
{
  v4 = [(HUServicePickerViewController *)self _servicesForItem:item];
  v5 = v4 == 0;

  return v5;
}

@end