@interface HUQuickControlGridViewController
+ (id)controlItemPredicate;
- (HUQuickControlGridViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control;
- (id)childQuickControlContentViewControllers;
- (id)hu_preloadContent;
- (void)viewDidLoad;
@end

@implementation HUQuickControlGridViewController

- (HUQuickControlGridViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control
{
  itemsCopy = items;
  v19.receiver = self;
  v19.super_class = HUQuickControlGridViewController;
  v13 = [(HUQuickControlViewController *)&v19 initWithControlItems:itemsCopy home:home itemUpdater:updater controlOrientation:orientation preferredControl:control];
  if (v13)
  {
    v14 = [[HUQuickControlGridCollectionItemManager alloc] initWithDelegate:0 controlItems:itemsCopy];
    v15 = [[HUQuickControlCollectionViewController alloc] initWithItemManager:v14];
    collectionViewController = v13->_collectionViewController;
    v13->_collectionViewController = v15;

    [(HUQuickControlCollectionViewController *)v13->_collectionViewController setDisableItemUpdatesForOverrideCharacteristicValueChanges:0];
    collectionViewController = [(HUQuickControlGridViewController *)v13 collectionViewController];
    [(HUQuickControlGridViewController *)v13 _subclass_configureQuickControlViewController:collectionViewController];
  }

  return v13;
}

- (id)hu_preloadContent
{
  v7.receiver = self;
  v7.super_class = HUQuickControlGridViewController;
  hu_preloadContent = [(HUQuickControlViewController *)&v7 hu_preloadContent];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HUQuickControlGridViewController_hu_preloadContent__block_invoke;
  v6[3] = &unk_277DC0788;
  v6[4] = self;
  v4 = [hu_preloadContent flatMap:v6];

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
  collectionViewController = [(HUQuickControlGridViewController *)self collectionViewController];
  [(HUQuickControlGridViewController *)self addChildViewController:collectionViewController];

  collectionViewController2 = [(HUQuickControlGridViewController *)self collectionViewController];
  view = [collectionViewController2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionViewController3 = [(HUQuickControlGridViewController *)self collectionViewController];
  view2 = [collectionViewController3 view];
  [view2 setPreservesSuperviewLayoutMargins:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionViewController4 = [(HUQuickControlGridViewController *)self collectionViewController];
  view3 = [collectionViewController4 view];
  [view3 setBackgroundColor:clearColor];

  view4 = [(HUQuickControlGridViewController *)self view];
  collectionViewController5 = [(HUQuickControlGridViewController *)self collectionViewController];
  view5 = [collectionViewController5 view];
  [view4 addSubview:view5];

  v31 = MEMORY[0x277CCAAD0];
  view6 = [(HUQuickControlGridViewController *)self view];
  leadingAnchor = [view6 leadingAnchor];
  collectionViewController6 = [(HUQuickControlGridViewController *)self collectionViewController];
  view7 = [collectionViewController6 view];
  leadingAnchor2 = [view7 leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[0] = v37;
  view8 = [(HUQuickControlGridViewController *)self view];
  trailingAnchor = [view8 trailingAnchor];
  collectionViewController7 = [(HUQuickControlGridViewController *)self collectionViewController];
  view9 = [collectionViewController7 view];
  trailingAnchor2 = [view9 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[1] = v30;
  view10 = [(HUQuickControlGridViewController *)self view];
  topAnchor = [view10 topAnchor];
  collectionViewController8 = [(HUQuickControlGridViewController *)self collectionViewController];
  view11 = [collectionViewController8 view];
  topAnchor2 = [view11 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[2] = v15;
  view12 = [(HUQuickControlGridViewController *)self view];
  bottomAnchor = [view12 bottomAnchor];
  collectionViewController9 = [(HUQuickControlGridViewController *)self collectionViewController];
  view13 = [collectionViewController9 view];
  bottomAnchor2 = [view13 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
  [v31 activateConstraints:v22];

  collectionViewController10 = [(HUQuickControlGridViewController *)self collectionViewController];
  [collectionViewController10 didMoveToParentViewController:self];

  collectionViewController11 = [(HUQuickControlGridViewController *)self collectionViewController];
  collectionView = [collectionViewController11 collectionView];
  [collectionView setScrollEnabled:0];
}

- (id)childQuickControlContentViewControllers
{
  v5[1] = *MEMORY[0x277D85DE8];
  collectionViewController = [(HUQuickControlGridViewController *)self collectionViewController];
  v5[0] = collectionViewController;
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