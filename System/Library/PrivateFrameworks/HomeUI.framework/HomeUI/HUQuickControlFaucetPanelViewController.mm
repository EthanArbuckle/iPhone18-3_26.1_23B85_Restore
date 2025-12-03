@interface HUQuickControlFaucetPanelViewController
+ (id)_childValvesPredicate;
+ (id)_primaryStatePredicate;
+ (id)_temperaturePredicate;
+ (id)controlItemPredicate;
- (HFChildServiceControlItem)childValvesControlItem;
- (HFPrimaryStateWriter)primaryStateControlItem;
- (HFTemperatureThresholdControlItem)temperatureControlItem;
- (HUQuickControlFaucetPanelViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control;
- (id)_controlItemMatchingPredicate:(id)predicate;
- (id)childQuickControlContentViewControllers;
- (void)viewDidLoad;
@end

@implementation HUQuickControlFaucetPanelViewController

+ (id)_temperaturePredicate
{
  v2 = objc_opt_class();

  return [HUQuickControlSingleItemPredicate predicateWithControlItemClass:v2];
}

+ (id)_childValvesPredicate
{
  v2 = objc_opt_class();

  return [HUQuickControlSingleItemPredicate predicateWithControlItemClass:v2];
}

+ (id)_primaryStatePredicate
{
  v2 = [[HUQuickControlSingleItemPredicate alloc] initWithBlock:&__block_literal_global_37];

  return v2;
}

+ (id)controlItemPredicate
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [HUQuickControlCompoundItemPredicate alloc];
  _primaryStatePredicate = [self _primaryStatePredicate];
  v12[0] = _primaryStatePredicate;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  _temperaturePredicate = [self _temperaturePredicate];
  _childValvesPredicate = [self _childValvesPredicate];
  v11[1] = _childValvesPredicate;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9 = [(HUQuickControlCompoundItemPredicate *)v3 initWithRequiredSubpredicates:v5 optionalSubpredicates:v8 minimumNumberOfMatchedPredicates:2];

  return v9;
}

- (HUQuickControlFaucetPanelViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control
{
  itemsCopy = items;
  v34.receiver = self;
  v34.super_class = HUQuickControlFaucetPanelViewController;
  v14 = [(HUQuickControlViewController *)&v34 initWithControlItems:itemsCopy home:home itemUpdater:updater controlOrientation:orientation preferredControl:control];
  v15 = v14;
  if (v14)
  {
    primaryStateControlItem = [(HUQuickControlFaucetPanelViewController *)v14 primaryStateControlItem];

    if (!primaryStateControlItem)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v15 file:@"HUQuickControlFaucetPanelViewController.m" lineNumber:56 description:{@"%@ was initialized with missing control items! Items: %@", v15, itemsCopy}];
    }

    v17 = MEMORY[0x277CBEB58];
    primaryStateControlItem2 = [(HUQuickControlFaucetPanelViewController *)v15 primaryStateControlItem];
    v19 = [v17 setWithObject:primaryStateControlItem2];

    temperatureControlItem = [(HUQuickControlFaucetPanelViewController *)v15 temperatureControlItem];
    [v19 na_safeAddObject:temperatureControlItem];

    v21 = [v19 na_map:&__block_literal_global_60];
    v22 = [HUQuickControlCollectionItemManager alloc];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __117__HUQuickControlFaucetPanelViewController_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl___block_invoke_2;
    v32[3] = &unk_277DB9738;
    v33 = v21;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __117__HUQuickControlFaucetPanelViewController_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl___block_invoke_3;
    v30[3] = &unk_277DB9738;
    v23 = v15;
    v31 = v23;
    v24 = v21;
    v25 = [(HUQuickControlCollectionItemManager *)v22 initWithDelegate:0 gridItemProviderCreator:v32 supplementaryItemProviderCreator:v30];
    v26 = [[HUQuickControlCollectionViewController alloc] initWithItemManager:v25];
    collectionViewController = v23->_collectionViewController;
    v23->_collectionViewController = v26;
  }

  return v15;
}

id __117__HUQuickControlFaucetPanelViewController_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

id __117__HUQuickControlFaucetPanelViewController_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl___block_invoke_2(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:*(a1 + 32)];

  return v1;
}

id __117__HUQuickControlFaucetPanelViewController_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14AD0];
  v4 = a2;
  v5 = [[v3 alloc] initWithHome:v4];

  v6 = [*(a1 + 32) childValvesControlItem];
  v7 = [v6 valueSource];
  v8 = [v7 valueSource];
  [v5 setValueSource:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __117__HUQuickControlFaucetPanelViewController_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl___block_invoke_4;
  v10[3] = &unk_277DB9780;
  v11 = *(a1 + 32);
  [v5 setSourceServiceGenerator:v10];

  return v5;
}

id __117__HUQuickControlFaucetPanelViewController_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) childValvesControlItem];
  v2 = [v1 updateWithOptions:MEMORY[0x277CBEC10]];
  v3 = [v2 flatMap:&__block_literal_global_67];

  return v3;
}

id __117__HUQuickControlFaucetPanelViewController_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl___block_invoke_5(uint64_t a1, void *a2)
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

- (void)viewDidLoad
{
  v39[4] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = HUQuickControlFaucetPanelViewController;
  [(HUQuickControlFaucetPanelViewController *)&v38 viewDidLoad];
  collectionViewController = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  [(HUQuickControlFaucetPanelViewController *)self addChildViewController:collectionViewController];

  collectionViewController2 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  view = [collectionViewController2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionViewController3 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  view2 = [collectionViewController3 view];
  [view2 setPreservesSuperviewLayoutMargins:1];

  view3 = [(HUQuickControlFaucetPanelViewController *)self view];
  collectionViewController4 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  view4 = [collectionViewController4 view];
  [view3 addSubview:view4];

  v26 = MEMORY[0x277CCAAD0];
  view5 = [(HUQuickControlFaucetPanelViewController *)self view];
  leadingAnchor = [view5 leadingAnchor];
  collectionViewController5 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  view6 = [collectionViewController5 view];
  leadingAnchor2 = [view6 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[0] = v32;
  view7 = [(HUQuickControlFaucetPanelViewController *)self view];
  trailingAnchor = [view7 trailingAnchor];
  collectionViewController6 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  view8 = [collectionViewController6 view];
  trailingAnchor2 = [view8 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[1] = v25;
  view9 = [(HUQuickControlFaucetPanelViewController *)self view];
  topAnchor = [view9 topAnchor];
  collectionViewController7 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  view10 = [collectionViewController7 view];
  topAnchor2 = [view10 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[2] = v12;
  view11 = [(HUQuickControlFaucetPanelViewController *)self view];
  bottomAnchor = [view11 bottomAnchor];
  collectionViewController8 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  view12 = [collectionViewController8 view];
  bottomAnchor2 = [view12 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v39[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  [v26 activateConstraints:v19];

  collectionViewController9 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  [collectionViewController9 didMoveToParentViewController:self];
}

- (id)childQuickControlContentViewControllers
{
  v5[1] = *MEMORY[0x277D85DE8];
  collectionViewController = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  v5[0] = collectionViewController;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)_controlItemMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  controlItems = [(HUQuickControlViewController *)self controlItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HUQuickControlFaucetPanelViewController__controlItemMatchingPredicate___block_invoke;
  v9[3] = &unk_277DB7330;
  v10 = predicateCopy;
  v6 = predicateCopy;
  v7 = [controlItems na_firstObjectPassingTest:v9];

  return v7;
}

- (HFPrimaryStateWriter)primaryStateControlItem
{
  _primaryStatePredicate = [objc_opt_class() _primaryStatePredicate];
  v4 = [(HUQuickControlFaucetPanelViewController *)self _controlItemMatchingPredicate:_primaryStatePredicate];

  return v4;
}

- (HFTemperatureThresholdControlItem)temperatureControlItem
{
  _temperaturePredicate = [objc_opt_class() _temperaturePredicate];
  v4 = [(HUQuickControlFaucetPanelViewController *)self _controlItemMatchingPredicate:_temperaturePredicate];

  return v4;
}

- (HFChildServiceControlItem)childValvesControlItem
{
  _childValvesPredicate = [objc_opt_class() _childValvesPredicate];
  v4 = [(HUQuickControlFaucetPanelViewController *)self _controlItemMatchingPredicate:_childValvesPredicate];

  return v4;
}

@end