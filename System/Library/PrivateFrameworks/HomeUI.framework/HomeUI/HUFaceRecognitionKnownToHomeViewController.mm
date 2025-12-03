@interface HUFaceRecognitionKnownToHomeViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUFaceRecognitionKnownToHomeViewController)initWithHome:(id)home;
- (HUFaceRecognitionKnownToHomeViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)presentFaceRecognitionPersonSettingsForPerson:(id)person personManager:(id)manager animated:(BOOL)animated;
- (void)personEditorViewController:(id)controller didUpdateItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HUFaceRecognitionKnownToHomeViewController

- (HUFaceRecognitionKnownToHomeViewController)initWithHome:(id)home
{
  homeCopy = home;
  v5 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v20.receiver = self;
  v20.super_class = HUFaceRecognitionKnownToHomeViewController;
  v6 = [(HUItemTableViewController *)&v20 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__HUFaceRecognitionKnownToHomeViewController_initWithHome___block_invoke;
    v17[3] = &unk_277DB7478;
    v18 = homeCopy;
    [v5 setHomeCreator:v17];
    if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
    {
      isRunningInStoreDemoMode = 1;
    }

    else
    {
      isRunningInStoreDemoMode = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
    }

    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __59__HUFaceRecognitionKnownToHomeViewController_initWithHome___block_invoke_2;
    v14 = &unk_277DC1530;
    objc_copyWeak(&v15, &location);
    v16 = isRunningInStoreDemoMode;
    [v5 setItemProviderCreator:&v11];
    v8 = [MEMORY[0x277D14B50] policyWithDecision:{0, v11, v12, v13, v14}];
    [v5 setReadPolicy:v8];

    v9 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionKnownToHouseViewControllerTitle", @"HUFaceRecognitionKnownToHouseViewControllerTitle", 1);
    [(HUFaceRecognitionKnownToHomeViewController *)v6 setTitle:v9];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v6;
}

id __59__HUFaceRecognitionKnownToHomeViewController_initWithHome___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40))
  {
    v5 = [objc_alloc(MEMORY[0x277D14618]) initForMode:1 home:v3];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277D14700]) initWithHome:v3];

    [v5 setFilter:&__block_literal_global_206];
  }

  [WeakRetained setHomePersonItemProvider:v5];

  v6 = [WeakRetained homePersonItemProvider];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

BOOL __59__HUFaceRecognitionKnownToHomeViewController_initWithHome___block_invoke_3(uint64_t a1, void *a2)
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

  v6 = [v5 name];
  v7 = v6 != 0;

  return v7;
}

- (HUFaceRecognitionKnownToHomeViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionKnownToHomeViewController.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionKnownToHomeViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (id)presentFaceRecognitionPersonSettingsForPerson:(id)person personManager:(id)manager animated:(BOOL)animated
{
  personCopy = person;
  managerCopy = manager;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __115__HUFaceRecognitionKnownToHomeViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke;
  v15[3] = &unk_277DB9190;
  v16 = personCopy;
  v17 = managerCopy;
  selfCopy = self;
  animatedCopy = animated;
  v11 = managerCopy;
  v12 = personCopy;
  v13 = [hu_preloadContent flatMap:v15];

  return v13;
}

id __115__HUFaceRecognitionKnownToHomeViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke(uint64_t a1)
{
  v2 = [HUFaceRecognitionPersonEditorViewController alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) itemManager];
  v6 = [v5 home];
  v7 = [(HUFaceRecognitionPersonEditorViewController *)v2 initWithPerson:v3 personManager:v4 home:v6];

  [(HUFaceRecognitionPersonEditorViewController *)v7 setDelegate:*(a1 + 48)];
  v8 = [*(a1 + 48) navigationController];
  v9 = [v8 hu_pushPreloadableViewController:v7 animated:*(a1 + 56)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __115__HUFaceRecognitionKnownToHomeViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke_2;
  v13[3] = &unk_277DBAFF8;
  v14 = v7;
  v10 = v7;
  v11 = [v9 flatMap:v13];

  return v11;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  latestResults = [item latestResults];
  [latestResults objectForKeyedSubscript:*MEMORY[0x277D13CF0]];

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v7 = MEMORY[0x277D756E0];
  itemCopy = item;
  cellConfiguration = [v7 cellConfiguration];
  latestResults = [itemCopy latestResults];
  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [cellConfiguration setText:v11];

  latestResults2 = [itemCopy latestResults];

  v13 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];
  [cellConfiguration setImage:v13];

  imageProperties = [cellConfiguration imageProperties];
  [imageProperties setMaximumSize:{44.0, 44.0}];

  imageProperties2 = [cellConfiguration imageProperties];
  [imageProperties2 setCornerRadius:22.0];

  [cellCopy setContentConfiguration:cellConfiguration];
  objc_opt_class();
  v18 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v16 = v18;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  [v17 setAvatarSize:44.0];
  [v18 setAccessoryType:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = HUFaceRecognitionKnownToHomeViewController;
  pathCopy = path;
  [(HUItemTableViewController *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(HUItemTableViewController *)self itemManager:v14.receiver];
  v8 = [v7 displayedItemAtIndexPath:pathCopy];

  if ([v8 conformsToProtocol:&unk_2825BD540])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [[HUFaceRecognitionPersonEditorViewController alloc] initWithPersonLikeItem:v10];
  [(HUFaceRecognitionPersonEditorViewController *)v11 setDelegate:self];
  navigationController = [(HUFaceRecognitionKnownToHomeViewController *)self navigationController];
  v13 = [navigationController hu_pushPreloadableViewController:v11 animated:1];
}

- (void)personEditorViewController:(id)controller didUpdateItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_2824C0788])
  {
    v6 = itemCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  homeKitObject = [v7 homeKitObject];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager matchingItemForHomeKitObject:homeKitObject];

  if (v10)
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
    v13 = [itemManager2 updateResultsForItems:v12 senderSelector:a2];
  }
}

@end