@interface HUQuickControlChildServiceGridViewController
+ (id)controlItemPredicate;
- (HFChildServiceControlItem)controlItem;
- (HUQuickControlChildServiceGridViewController)initWithChildServiceControlItem:(id)item home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control;
- (HUQuickControlChildServiceGridViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control;
- (id)childQuickControlContentViewControllers;
- (id)hu_preloadContent;
- (void)viewDidLoad;
@end

@implementation HUQuickControlChildServiceGridViewController

+ (id)controlItemPredicate
{
  v2 = objc_opt_class();

  return [HUQuickControlSingleItemPredicate predicateWithControlItemClass:v2];
}

- (HUQuickControlChildServiceGridViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control
{
  itemsCopy = items;
  updaterCopy = updater;
  homeCopy = home;
  if ([itemsCopy count] != 1)
  {
    NSLog(&cfstr_ShouldBeInitia_0.isa, self, itemsCopy);
  }

  v15 = objc_opt_class();
  anyObject = [itemsCopy anyObject];
  if (!anyObject)
  {
    goto LABEL_9;
  }

  if (objc_opt_isKindOfClass())
  {
    v17 = anyObject;
  }

  else
  {
    v17 = 0;
  }

  v18 = anyObject;
  if (!v17)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];

LABEL_9:
    v18 = 0;
  }

  v21 = [(HUQuickControlChildServiceGridViewController *)self initWithChildServiceControlItem:v18 home:homeCopy itemUpdater:updaterCopy controlOrientation:orientation preferredControl:control];
  return v21;
}

- (HUQuickControlChildServiceGridViewController)initWithChildServiceControlItem:(id)item home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control
{
  itemCopy = item;
  homeCopy = home;
  updaterCopy = updater;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlChildServiceGridViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"originalControlItem"}];
  }

  v16 = [MEMORY[0x277CBEB98] setWithObject:itemCopy];
  v29.receiver = self;
  v29.super_class = HUQuickControlChildServiceGridViewController;
  v17 = [(HUQuickControlViewController *)&v29 initWithControlItems:v16 home:homeCopy itemUpdater:updaterCopy controlOrientation:orientation preferredControl:control];

  if (v17)
  {
    v18 = [itemCopy copy];
    v19 = [HUQuickControlCollectionItemManager alloc];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __133__HUQuickControlChildServiceGridViewController_initWithChildServiceControlItem_home_itemUpdater_controlOrientation_preferredControl___block_invoke;
    v27[3] = &unk_277DB9738;
    v28 = v18;
    v20 = v18;
    v21 = [(HUQuickControlCollectionItemManager *)v19 initWithDelegate:0 gridItemProviderCreator:v27 supplementaryItemProviderCreator:0];
    v22 = [[HUQuickControlCollectionViewController alloc] initWithItemManager:v21];
    collectionViewController = v17->_collectionViewController;
    v17->_collectionViewController = v22;

    [(HUQuickControlCollectionViewController *)v17->_collectionViewController setDisableItemUpdatesForOverrideCharacteristicValueChanges:1];
    collectionViewController = [(HUQuickControlChildServiceGridViewController *)v17 collectionViewController];
    [(HUQuickControlChildServiceGridViewController *)v17 _subclass_configureQuickControlViewController:collectionViewController];
  }

  return v17;
}

id __133__HUQuickControlChildServiceGridViewController_initWithChildServiceControlItem_home_itemUpdater_controlOrientation_preferredControl___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14AD0];
  v4 = a2;
  v5 = [[v3 alloc] initWithHome:v4];

  v6 = [*(a1 + 32) valueSource];
  v7 = [v6 valueSource];
  [v5 setValueSource:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __133__HUQuickControlChildServiceGridViewController_initWithChildServiceControlItem_home_itemUpdater_controlOrientation_preferredControl___block_invoke_2;
  v9[3] = &unk_277DB9780;
  v10 = *(a1 + 32);
  [v5 setSourceServiceGenerator:v9];

  return v5;
}

id __133__HUQuickControlChildServiceGridViewController_initWithChildServiceControlItem_home_itemUpdater_controlOrientation_preferredControl___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) updateWithOptions:MEMORY[0x277CBEC10]];
  v2 = [v1 flatMap:&__block_literal_global_282];

  return v2;
}

id __133__HUQuickControlChildServiceGridViewController_initWithChildServiceControlItem_home_itemUpdater_controlOrientation_preferredControl___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D13D90]];
  if (v3)
  {
    v4 = [v2 futureWithResult:v3];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
    v4 = [v2 futureWithResult:v5];
  }

  return v4;
}

- (id)hu_preloadContent
{
  v7.receiver = self;
  v7.super_class = HUQuickControlChildServiceGridViewController;
  hu_preloadContent = [(HUQuickControlViewController *)&v7 hu_preloadContent];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HUQuickControlChildServiceGridViewController_hu_preloadContent__block_invoke;
  v6[3] = &unk_277DC0788;
  v6[4] = self;
  v4 = [hu_preloadContent flatMap:v6];

  return v4;
}

id __65__HUQuickControlChildServiceGridViewController_hu_preloadContent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewController];
  v2 = [v1 hu_preloadContent];

  return v2;
}

- (void)viewDidLoad
{
  v39[4] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = HUQuickControlChildServiceGridViewController;
  [(HUQuickControlChildServiceGridViewController *)&v38 viewDidLoad];
  collectionViewController = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  [(HUQuickControlChildServiceGridViewController *)self addChildViewController:collectionViewController];

  collectionViewController2 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  view = [collectionViewController2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionViewController3 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  view2 = [collectionViewController3 view];
  [view2 setPreservesSuperviewLayoutMargins:1];

  view3 = [(HUQuickControlChildServiceGridViewController *)self view];
  collectionViewController4 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  view4 = [collectionViewController4 view];
  [view3 addSubview:view4];

  v26 = MEMORY[0x277CCAAD0];
  view5 = [(HUQuickControlChildServiceGridViewController *)self view];
  leadingAnchor = [view5 leadingAnchor];
  collectionViewController5 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  view6 = [collectionViewController5 view];
  leadingAnchor2 = [view6 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[0] = v32;
  view7 = [(HUQuickControlChildServiceGridViewController *)self view];
  trailingAnchor = [view7 trailingAnchor];
  collectionViewController6 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  view8 = [collectionViewController6 view];
  trailingAnchor2 = [view8 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[1] = v25;
  view9 = [(HUQuickControlChildServiceGridViewController *)self view];
  topAnchor = [view9 topAnchor];
  collectionViewController7 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  view10 = [collectionViewController7 view];
  topAnchor2 = [view10 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[2] = v12;
  view11 = [(HUQuickControlChildServiceGridViewController *)self view];
  bottomAnchor = [view11 bottomAnchor];
  collectionViewController8 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  view12 = [collectionViewController8 view];
  bottomAnchor2 = [view12 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v39[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  [v26 activateConstraints:v19];

  collectionViewController9 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  [collectionViewController9 didMoveToParentViewController:self];
}

- (HFChildServiceControlItem)controlItem
{
  controlItems = [(HUQuickControlViewController *)self controlItems];
  v4 = [controlItems count];

  if (v4 != 1)
  {
    controlItems2 = [(HUQuickControlViewController *)self controlItems];
    NSLog(&cfstr_ShouldHaveExac.isa, self, controlItems2);
  }

  v6 = objc_opt_class();
  controlItems3 = [(HUQuickControlViewController *)self controlItems];
  anyObject = [controlItems3 anyObject];
  if (anyObject)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = anyObject;
    }

    else
    {
      v9 = 0;
    }

    v10 = anyObject;
    if (v9)
    {
      goto LABEL_10;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)childQuickControlContentViewControllers
{
  v5[1] = *MEMORY[0x277D85DE8];
  collectionViewController = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  v5[0] = collectionViewController;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end