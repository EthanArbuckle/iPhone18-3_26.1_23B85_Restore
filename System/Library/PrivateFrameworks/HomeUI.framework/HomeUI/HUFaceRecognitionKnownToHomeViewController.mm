@interface HUFaceRecognitionKnownToHomeViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUFaceRecognitionKnownToHomeViewController)initWithHome:(id)a3;
- (HUFaceRecognitionKnownToHomeViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)presentFaceRecognitionPersonSettingsForPerson:(id)a3 personManager:(id)a4 animated:(BOOL)a5;
- (void)personEditorViewController:(id)a3 didUpdateItem:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HUFaceRecognitionKnownToHomeViewController

- (HUFaceRecognitionKnownToHomeViewController)initWithHome:(id)a3
{
  v4 = a3;
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
    v18 = v4;
    [v5 setHomeCreator:v17];
    if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
    {
      v7 = 1;
    }

    else
    {
      v7 = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
    }

    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __59__HUFaceRecognitionKnownToHomeViewController_initWithHome___block_invoke_2;
    v14 = &unk_277DC1530;
    objc_copyWeak(&v15, &location);
    v16 = v7;
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

- (HUFaceRecognitionKnownToHomeViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionKnownToHomeViewController.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionKnownToHomeViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (id)presentFaceRecognitionPersonSettingsForPerson:(id)a3 personManager:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HUItemTableViewController *)self hu_preloadContent];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __115__HUFaceRecognitionKnownToHomeViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke;
  v15[3] = &unk_277DB9190;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = a5;
  v11 = v9;
  v12 = v8;
  v13 = [v10 flatMap:v15];

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

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = [a3 latestResults];
  [v4 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x277D756E0];
  v8 = a4;
  v9 = [v7 cellConfiguration];
  v10 = [v8 latestResults];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v9 setText:v11];

  v12 = [v8 latestResults];

  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];
  [v9 setImage:v13];

  v14 = [v9 imageProperties];
  [v14 setMaximumSize:{44.0, 44.0}];

  v15 = [v9 imageProperties];
  [v15 setCornerRadius:22.0];

  [v6 setContentConfiguration:v9];
  objc_opt_class();
  v18 = v6;
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = HUFaceRecognitionKnownToHomeViewController;
  v6 = a4;
  [(HUItemTableViewController *)&v14 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(HUItemTableViewController *)self itemManager:v14.receiver];
  v8 = [v7 displayedItemAtIndexPath:v6];

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
  v12 = [(HUFaceRecognitionKnownToHomeViewController *)self navigationController];
  v13 = [v12 hu_pushPreloadableViewController:v11 animated:1];
}

- (void)personEditorViewController:(id)a3 didUpdateItem:(id)a4
{
  v14 = a4;
  if ([v14 conformsToProtocol:&unk_2824C0788])
  {
    v6 = v14;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 homeKitObject];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 matchingItemForHomeKitObject:v8];

  if (v10)
  {
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
    v13 = [v11 updateResultsForItems:v12 senderSelector:a2];
  }
}

@end