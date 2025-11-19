@interface HUQuickControlChildServiceGridViewController
+ (id)controlItemPredicate;
- (HFChildServiceControlItem)controlItem;
- (HUQuickControlChildServiceGridViewController)initWithChildServiceControlItem:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7;
- (HUQuickControlChildServiceGridViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7;
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

- (HUQuickControlChildServiceGridViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a4;
  if ([v12 count] != 1)
  {
    NSLog(&cfstr_ShouldBeInitia_0.isa, self, v12);
  }

  v15 = objc_opt_class();
  v16 = [v12 anyObject];
  if (!v16)
  {
    goto LABEL_9;
  }

  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v16;
  if (!v17)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];

LABEL_9:
    v18 = 0;
  }

  v21 = [(HUQuickControlChildServiceGridViewController *)self initWithChildServiceControlItem:v18 home:v14 itemUpdater:v13 controlOrientation:a6 preferredControl:a7];
  return v21;
}

- (HUQuickControlChildServiceGridViewController)initWithChildServiceControlItem:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (!v13)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"HUQuickControlChildServiceGridViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"originalControlItem"}];
  }

  v16 = [MEMORY[0x277CBEB98] setWithObject:v13];
  v29.receiver = self;
  v29.super_class = HUQuickControlChildServiceGridViewController;
  v17 = [(HUQuickControlViewController *)&v29 initWithControlItems:v16 home:v14 itemUpdater:v15 controlOrientation:a6 preferredControl:a7];

  if (v17)
  {
    v18 = [v13 copy];
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
    v24 = [(HUQuickControlChildServiceGridViewController *)v17 collectionViewController];
    [(HUQuickControlChildServiceGridViewController *)v17 _subclass_configureQuickControlViewController:v24];
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
  v3 = [(HUQuickControlViewController *)&v7 hu_preloadContent];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HUQuickControlChildServiceGridViewController_hu_preloadContent__block_invoke;
  v6[3] = &unk_277DC0788;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

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
  v3 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  [(HUQuickControlChildServiceGridViewController *)self addChildViewController:v3];

  v4 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  v7 = [v6 view];
  [v7 setPreservesSuperviewLayoutMargins:1];

  v8 = [(HUQuickControlChildServiceGridViewController *)self view];
  v9 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  v10 = [v9 view];
  [v8 addSubview:v10];

  v26 = MEMORY[0x277CCAAD0];
  v37 = [(HUQuickControlChildServiceGridViewController *)self view];
  v35 = [v37 leadingAnchor];
  v36 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  v34 = [v36 view];
  v33 = [v34 leadingAnchor];
  v32 = [v35 constraintEqualToAnchor:v33];
  v39[0] = v32;
  v31 = [(HUQuickControlChildServiceGridViewController *)self view];
  v29 = [v31 trailingAnchor];
  v30 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  v28 = [v30 view];
  v27 = [v28 trailingAnchor];
  v25 = [v29 constraintEqualToAnchor:v27];
  v39[1] = v25;
  v24 = [(HUQuickControlChildServiceGridViewController *)self view];
  v22 = [v24 topAnchor];
  v23 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  v21 = [v23 view];
  v11 = [v21 topAnchor];
  v12 = [v22 constraintEqualToAnchor:v11];
  v39[2] = v12;
  v13 = [(HUQuickControlChildServiceGridViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  v16 = [v15 view];
  v17 = [v16 bottomAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];
  v39[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  [v26 activateConstraints:v19];

  v20 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  [v20 didMoveToParentViewController:self];
}

- (HFChildServiceControlItem)controlItem
{
  v3 = [(HUQuickControlViewController *)self controlItems];
  v4 = [v3 count];

  if (v4 != 1)
  {
    v5 = [(HUQuickControlViewController *)self controlItems];
    NSLog(&cfstr_ShouldHaveExac.isa, self, v5);
  }

  v6 = objc_opt_class();
  v7 = [(HUQuickControlViewController *)self controlItems];
  v8 = [v7 anyObject];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v8;
    if (v9)
    {
      goto LABEL_10;
    }

    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)childQuickControlContentViewControllers
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(HUQuickControlChildServiceGridViewController *)self collectionViewController];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end