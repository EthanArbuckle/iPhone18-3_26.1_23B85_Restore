@interface HUQuickControlGridViewController
+ (id)controlItemPredicate;
- (HUQuickControlGridViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7;
- (id)childQuickControlContentViewControllers;
- (id)hu_preloadContent;
- (void)viewDidLoad;
@end

@implementation HUQuickControlGridViewController

- (HUQuickControlGridViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7
{
  v12 = a3;
  v19.receiver = self;
  v19.super_class = HUQuickControlGridViewController;
  v13 = [(HUQuickControlViewController *)&v19 initWithControlItems:v12 home:a4 itemUpdater:a5 controlOrientation:a6 preferredControl:a7];
  if (v13)
  {
    v14 = [[HUQuickControlGridCollectionItemManager alloc] initWithDelegate:0 controlItems:v12];
    v15 = [[HUQuickControlCollectionViewController alloc] initWithItemManager:v14];
    collectionViewController = v13->_collectionViewController;
    v13->_collectionViewController = v15;

    [(HUQuickControlCollectionViewController *)v13->_collectionViewController setDisableItemUpdatesForOverrideCharacteristicValueChanges:0];
    v17 = [(HUQuickControlGridViewController *)v13 collectionViewController];
    [(HUQuickControlGridViewController *)v13 _subclass_configureQuickControlViewController:v17];
  }

  return v13;
}

- (id)hu_preloadContent
{
  v7.receiver = self;
  v7.super_class = HUQuickControlGridViewController;
  v3 = [(HUQuickControlViewController *)&v7 hu_preloadContent];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HUQuickControlGridViewController_hu_preloadContent__block_invoke;
  v6[3] = &unk_277DC0788;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

id __53__HUQuickControlGridViewController_hu_preloadContent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewController];
  v2 = [v1 hu_preloadContent];

  return v2;
}

- (void)viewDidLoad
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = HUQuickControlGridViewController;
  [(HUQuickControlGridViewController *)&v43 viewDidLoad];
  v3 = [(HUQuickControlGridViewController *)self collectionViewController];
  [(HUQuickControlGridViewController *)self addChildViewController:v3];

  v4 = [(HUQuickControlGridViewController *)self collectionViewController];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HUQuickControlGridViewController *)self collectionViewController];
  v7 = [v6 view];
  [v7 setPreservesSuperviewLayoutMargins:1];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(HUQuickControlGridViewController *)self collectionViewController];
  v10 = [v9 view];
  [v10 setBackgroundColor:v8];

  v11 = [(HUQuickControlGridViewController *)self view];
  v12 = [(HUQuickControlGridViewController *)self collectionViewController];
  v13 = [v12 view];
  [v11 addSubview:v13];

  v31 = MEMORY[0x277CCAAD0];
  v42 = [(HUQuickControlGridViewController *)self view];
  v40 = [v42 leadingAnchor];
  v41 = [(HUQuickControlGridViewController *)self collectionViewController];
  v39 = [v41 view];
  v38 = [v39 leadingAnchor];
  v37 = [v40 constraintEqualToAnchor:v38];
  v44[0] = v37;
  v36 = [(HUQuickControlGridViewController *)self view];
  v34 = [v36 trailingAnchor];
  v35 = [(HUQuickControlGridViewController *)self collectionViewController];
  v33 = [v35 view];
  v32 = [v33 trailingAnchor];
  v30 = [v34 constraintEqualToAnchor:v32];
  v44[1] = v30;
  v29 = [(HUQuickControlGridViewController *)self view];
  v27 = [v29 topAnchor];
  v28 = [(HUQuickControlGridViewController *)self collectionViewController];
  v26 = [v28 view];
  v14 = [v26 topAnchor];
  v15 = [v27 constraintEqualToAnchor:v14];
  v44[2] = v15;
  v16 = [(HUQuickControlGridViewController *)self view];
  v17 = [v16 bottomAnchor];
  v18 = [(HUQuickControlGridViewController *)self collectionViewController];
  v19 = [v18 view];
  v20 = [v19 bottomAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];
  v44[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
  [v31 activateConstraints:v22];

  v23 = [(HUQuickControlGridViewController *)self collectionViewController];
  [v23 didMoveToParentViewController:self];

  v24 = [(HUQuickControlGridViewController *)self collectionViewController];
  v25 = [v24 collectionView];
  [v25 setScrollEnabled:0];
}

- (id)childQuickControlContentViewControllers
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(HUQuickControlGridViewController *)self collectionViewController];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)controlItemPredicate
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [HUQuickControlSingleItemPredicate predicateWithControlItemClass:objc_opt_class()];
  v3 = [HUQuickControlCompoundItemPredicate alloc];
  v8[0] = v2;
  v4 = objc_alloc_init(HUQuickControlGridItemPredicate);
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [(HUQuickControlCompoundItemPredicate *)v3 initWithRequiredSubpredicates:MEMORY[0x277CBEBF8] optionalSubpredicates:v5];

  return v6;
}

@end