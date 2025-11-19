@interface HUQuickControlFaucetPanelViewController
+ (id)_childValvesPredicate;
+ (id)_primaryStatePredicate;
+ (id)_temperaturePredicate;
+ (id)controlItemPredicate;
- (HFChildServiceControlItem)childValvesControlItem;
- (HFPrimaryStateWriter)primaryStateControlItem;
- (HFTemperatureThresholdControlItem)temperatureControlItem;
- (HUQuickControlFaucetPanelViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7;
- (id)_controlItemMatchingPredicate:(id)a3;
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
  v4 = [a1 _primaryStatePredicate];
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [a1 _temperaturePredicate];
  v7 = [a1 _childValvesPredicate];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9 = [(HUQuickControlCompoundItemPredicate *)v3 initWithRequiredSubpredicates:v5 optionalSubpredicates:v8 minimumNumberOfMatchedPredicates:2];

  return v9;
}

- (HUQuickControlFaucetPanelViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7
{
  v13 = a3;
  v34.receiver = self;
  v34.super_class = HUQuickControlFaucetPanelViewController;
  v14 = [(HUQuickControlViewController *)&v34 initWithControlItems:v13 home:a4 itemUpdater:a5 controlOrientation:a6 preferredControl:a7];
  v15 = v14;
  if (v14)
  {
    v16 = [(HUQuickControlFaucetPanelViewController *)v14 primaryStateControlItem];

    if (!v16)
    {
      v29 = [MEMORY[0x277CCA890] currentHandler];
      [v29 handleFailureInMethod:a2 object:v15 file:@"HUQuickControlFaucetPanelViewController.m" lineNumber:56 description:{@"%@ was initialized with missing control items! Items: %@", v15, v13}];
    }

    v17 = MEMORY[0x277CBEB58];
    v18 = [(HUQuickControlFaucetPanelViewController *)v15 primaryStateControlItem];
    v19 = [v17 setWithObject:v18];

    v20 = [(HUQuickControlFaucetPanelViewController *)v15 temperatureControlItem];
    [v19 na_safeAddObject:v20];

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
  v3 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  [(HUQuickControlFaucetPanelViewController *)self addChildViewController:v3];

  v4 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  v7 = [v6 view];
  [v7 setPreservesSuperviewLayoutMargins:1];

  v8 = [(HUQuickControlFaucetPanelViewController *)self view];
  v9 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  v10 = [v9 view];
  [v8 addSubview:v10];

  v26 = MEMORY[0x277CCAAD0];
  v37 = [(HUQuickControlFaucetPanelViewController *)self view];
  v35 = [v37 leadingAnchor];
  v36 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  v34 = [v36 view];
  v33 = [v34 leadingAnchor];
  v32 = [v35 constraintEqualToAnchor:v33];
  v39[0] = v32;
  v31 = [(HUQuickControlFaucetPanelViewController *)self view];
  v29 = [v31 trailingAnchor];
  v30 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  v28 = [v30 view];
  v27 = [v28 trailingAnchor];
  v25 = [v29 constraintEqualToAnchor:v27];
  v39[1] = v25;
  v24 = [(HUQuickControlFaucetPanelViewController *)self view];
  v22 = [v24 topAnchor];
  v23 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  v21 = [v23 view];
  v11 = [v21 topAnchor];
  v12 = [v22 constraintEqualToAnchor:v11];
  v39[2] = v12;
  v13 = [(HUQuickControlFaucetPanelViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  v16 = [v15 view];
  v17 = [v16 bottomAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];
  v39[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  [v26 activateConstraints:v19];

  v20 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  [v20 didMoveToParentViewController:self];
}

- (id)childQuickControlContentViewControllers
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(HUQuickControlFaucetPanelViewController *)self collectionViewController];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)_controlItemMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlViewController *)self controlItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HUQuickControlFaucetPanelViewController__controlItemMatchingPredicate___block_invoke;
  v9[3] = &unk_277DB7330;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (HFPrimaryStateWriter)primaryStateControlItem
{
  v3 = [objc_opt_class() _primaryStatePredicate];
  v4 = [(HUQuickControlFaucetPanelViewController *)self _controlItemMatchingPredicate:v3];

  return v4;
}

- (HFTemperatureThresholdControlItem)temperatureControlItem
{
  v3 = [objc_opt_class() _temperaturePredicate];
  v4 = [(HUQuickControlFaucetPanelViewController *)self _controlItemMatchingPredicate:v3];

  return v4;
}

- (HFChildServiceControlItem)childValvesControlItem
{
  v3 = [objc_opt_class() _childValvesPredicate];
  v4 = [(HUQuickControlFaucetPanelViewController *)self _controlItemMatchingPredicate:v3];

  return v4;
}

@end