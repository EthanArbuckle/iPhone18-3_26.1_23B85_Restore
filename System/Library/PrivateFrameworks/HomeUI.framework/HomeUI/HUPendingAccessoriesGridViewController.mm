@interface HUPendingAccessoriesGridViewController
- (HUPendingAccessoriesGridViewController)initWithUser:(id)a3 home:(id)a4;
- (id)layoutOptionsForSection:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation HUPendingAccessoriesGridViewController

- (HUPendingAccessoriesGridViewController)initWithUser:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277D14B08]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HUPendingAccessoriesGridViewController_initWithUser_home___block_invoke;
  v17[3] = &unk_277DBA3D0;
  v18 = v6;
  v9 = v6;
  v10 = [v8 initWithDelegate:self itemProvidersCreator:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HUPendingAccessoriesGridViewController_initWithUser_home___block_invoke_2;
  v15[3] = &unk_277DB7478;
  v16 = v7;
  v11 = v7;
  [v10 setHomeCreator:v15];
  v14.receiver = self;
  v14.super_class = HUPendingAccessoriesGridViewController;
  v12 = [(HUServiceGridViewController *)&v14 initWithItemManager:v10];

  return v12;
}

id __60__HUPendingAccessoriesGridViewController_initWithUser_home___block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D142E0];
  v4 = a2;
  v5 = [[v3 alloc] initWithHome:v4 user:*(a1 + 32)];
  v6 = [objc_alloc(MEMORY[0x277D142D8]) initWithHome:v4 user:*(a1 + 32)];

  v9[0] = v5;
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUPendingAccessoriesGridViewController;
  [(HUServiceGridViewController *)&v10 viewDidLoad];
  v3 = [(HUPendingAccessoriesGridViewController *)self collectionView];
  [v3 _setShouldDeriveVisibleBoundsFromContainingScrollView:1];

  v4 = [(HUPendingAccessoriesGridViewController *)self collectionView];
  [v4 setScrollEnabled:0];

  v5 = [(HUPendingAccessoriesGridViewController *)self collectionView];
  [v5 setClipsToBounds:1];

  v6 = [MEMORY[0x277D75348] clearColor];
  v7 = [(HUPendingAccessoriesGridViewController *)self collectionView];
  [v7 setBackgroundColor:v6];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(HUPendingAccessoriesGridViewController *)self view];
  [v9 setBackgroundColor:v8];
}

- (id)layoutOptionsForSection:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = HUPendingAccessoriesGridViewController;
  v3 = [(HUServiceGridViewController *)&v6 layoutOptionsForSection:a3];
  v4 = [v3 serviceCellOptions];
  [v4 setShowDescription:0];

  return v3;
}

@end