@interface HUServicePickerViewController
- (BOOL)_isItemPreselected:(id)a3;
- (BOOL)_preselectedServicesContainsService:(id)a3;
- (BOOL)serviceGridItemManager:(id)a3 shouldHideItem:(id)a4;
- (HUServicePickerViewController)initWithHome:(id)a3 selectedServices:(id)a4 isPresentedModally:(BOOL)a5 delegate:(id)a6;
- (id)_servicesForItem:(id)a3;
- (id)_servicesForItems:(id)a3;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)_setUpNavButtons;
- (void)itemManagerDidUpdate:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUServicePickerViewController

- (HUServicePickerViewController)initWithHome:(id)a3 selectedServices:(id)a4 isPresentedModally:(BOOL)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [HUServiceGridItemManager alloc];
  v14 = [(HUSelectableServiceGridViewController *)HUServicePickerViewController defaultItemProviderCreatorWithOptions:11];
  v15 = [(HUServiceGridItemManager *)v13 initWithDelegate:self shouldGroupByRoom:1 itemProvidersCreator:v14];

  [(HFItemManager *)v15 setHome:v10];
  v20.receiver = self;
  v20.super_class = HUServicePickerViewController;
  v16 = [(HUSelectableServiceGridViewController *)&v20 initWithServiceGridItemManager:v15];
  v17 = v16;
  if (v16)
  {
    [(HUServiceGridViewController *)v16 setDelegate:v12];
    v17->_isPresentedModally = a5;
    objc_storeStrong(&v17->_preselectedServices, a4);
    v18 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v18 setOverrideHome:v10];
  }

  return v17;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HUServicePickerViewController;
  [(HUServiceGridViewController *)&v8 viewDidLoad];
  v3 = [(HUItemCollectionViewController *)self itemManager];
  v4 = [v3 home];
  v5 = [v4 hf_displayName];
  [(HUServicePickerViewController *)self setTitle:v5];

  [(HUServicePickerViewController *)self _setUpNavButtons];
  v6 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v7 = [(HUServicePickerViewController *)self collectionView];
  [v7 setBackgroundColor:v6];
}

- (void)_setUpNavButtons
{
  v3 = [(HUServicePickerViewController *)self isPresentedModally];
  v4 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = v4;
  if (v3)
  {
    v6 = [v4 initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
    v7 = [(HUServicePickerViewController *)self navigationItem];
    [v7 setLeftBarButtonItem:v6];

    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
    v8 = [(HUServicePickerViewController *)self navigationItem];
    [v8 setRightBarButtonItem:v10];
  }

  else
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUNextTitle", @"HUNextTitle", 1);
    v8 = [v5 initWithTitle:? style:? target:? action:?];
    v9 = [(HUServicePickerViewController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];
  }
}

- (void)_cancel:(id)a3
{
  v4 = [(HUServiceGridViewController *)self delegate];
  [v4 servicePickerDidCancel:self];
}

- (void)_done:(id)a3
{
  v4 = [(HUSelectableServiceGridViewController *)self selectedItems];
  v5 = [v4 toSet];
  v7 = [(HUServicePickerViewController *)self _servicesForItems:v5];

  v6 = [(HUServiceGridViewController *)self delegate];
  [v6 servicePickerDidFinish:self selectedServices:v7];
}

- (id)_servicesForItems:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__HUServicePickerViewController__servicesForItems___block_invoke;
  v11 = &unk_277DC2510;
  objc_copyWeak(&v12, &location);
  v5 = [v4 na_map:&v8];
  v6 = [v5 na_setByFlattening];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

id __51__HUServicePickerViewController__servicesForItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _servicesForItem:v3];

  return v5;
}

- (id)_servicesForItem:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_28251AFC0])
  {
    v4 = [v3 services];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HUServicePickerViewController;
  [(HUSelectableServiceGridViewController *)&v18 itemManagerDidUpdate:v4];
  v5 = [(HUServicePickerViewController *)self preselectedServices];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(HUItemCollectionViewController *)self itemManager];
    v7 = [v6 allItems];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __54__HUServicePickerViewController_itemManagerDidUpdate___block_invoke;
    v15 = &unk_277DC0890;
    objc_copyWeak(&v16, &location);
    v8 = [v7 na_filter:&v12];

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

- (BOOL)_isItemPreselected:(id)a3
{
  v4 = a3;
  v5 = [(HUServicePickerViewController *)self _servicesForItem:v4];
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

- (BOOL)_preselectedServicesContainsService:(id)a3
{
  v4 = a3;
  v5 = [(HUServicePickerViewController *)self preselectedServices];

  if (v5)
  {
    v6 = [(HUServicePickerViewController *)self preselectedServices];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__HUServicePickerViewController__preselectedServicesContainsService___block_invoke;
    v9[3] = &unk_277DB9560;
    v10 = v4;
    v7 = [v6 na_any:v9];
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

- (BOOL)serviceGridItemManager:(id)a3 shouldHideItem:(id)a4
{
  v4 = [(HUServicePickerViewController *)self _servicesForItem:a4];
  v5 = v4 == 0;

  return v5;
}

@end