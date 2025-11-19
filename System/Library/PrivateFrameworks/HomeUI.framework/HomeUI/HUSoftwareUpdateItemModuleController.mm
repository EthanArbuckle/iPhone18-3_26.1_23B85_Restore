@interface HUSoftwareUpdateItemModuleController
- (Class)cellClassForItem:(id)a3;
- (HUExpandableTextViewCellDelegate)expandableTextViewCellDelegate;
- (HUSoftwareUpdateItemModuleController)initWithModule:(id)a3;
- (HUSoftwareUpdateItemModuleController)initWithModule:(id)a3 delegate:(id)a4 expandableTextViewCellDelegate:(id)a5;
- (HUSoftwareUpdateItemModuleControllerDelegate)delegate;
- (id)softwareUpdateUIManager:(id)a3 dismissViewController:(id)a4;
- (id)softwareUpdateUIManager:(id)a3 presentViewController:(id)a4;
- (void)_startUpdateOnAccessories:(id)a3;
- (void)lockupView:(id)a3 downloadControlTapped:(id)a4;
- (void)lockupView:(id)a3 expandableTextViewDidExpand:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateAllAccessories;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUSoftwareUpdateItemModuleController

- (HUSoftwareUpdateItemModuleController)initWithModule:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateItemModuleController.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateItemModuleController initWithModule:]", v6}];

  return 0;
}

- (HUSoftwareUpdateItemModuleController)initWithModule:(id)a3 delegate:(id)a4 expandableTextViewCellDelegate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = HUSoftwareUpdateItemModuleController;
  v10 = [(HUItemModuleController *)&v17 initWithModule:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    objc_storeWeak(&v11->_expandableTextViewCellDelegate, v9);
    v12 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    serviceGridViewControllersByItems = v11->_serviceGridViewControllersByItems;
    v11->_serviceGridViewControllersByItems = v12;

    v14 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    expandedStateByItems = v11->_expandedStateByItems;
    v11->_expandedStateByItems = v14;
  }

  return v11;
}

- (Class)cellClassForItem:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_opt_class();
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateItemModuleController.m" lineNumber:55 description:{@"Unknown item %@", v5}];

    v6 = 0;
  }

  return v6;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = HUSoftwareUpdateItemModuleController;
  [(HUItemModuleController *)&v30 setupCell:v6 forItem:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [(HUSoftwareUpdateItemModuleController *)self expandedStateByItems];
    v10 = [v9 objectForKey:v7];
    v11 = [v10 BOOLValue];

    v12 = [v8 lockupView];
    v13 = [v12 descriptionExpandableTextView];
    [v13 setDelegate:0];

    v14 = [v8 lockupView];
    v15 = [v14 descriptionExpandableTextView];
    [v15 setExpanded:v11];

    v16 = [v8 lockupView];
    v17 = [v8 lockupView];
    v18 = [v17 descriptionExpandableTextView];
    [v18 setDelegate:v16];

    v19 = [(HUSoftwareUpdateItemModuleController *)self serviceGridViewControllersByItems];
    v20 = [v19 objectForKey:v7];

    v21 = v20;
    v22 = v21;
    if (!v21)
    {
      v22 = objc_alloc_init(HUInformationalAccessoryGridViewController);
      v23 = [(HUInformationalAccessoryGridViewController *)v22 view];
      [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

      v24 = [(HUInformationalAccessoryGridViewController *)v22 collectionView];
      [v24 setScrollEnabled:0];

      [(HUItemCollectionViewController *)v22 setWantsPreferredContentSize:1];
      v25 = [(HUInformationalAccessoryGridViewController *)v22 collectionView];
      [v25 setClipsToBounds:1];

      v26 = [(HUSoftwareUpdateItemModuleController *)self serviceGridViewControllersByItems];
      [v26 setObject:v22 forKey:v7];
    }

    objc_opt_class();
    v27 = [v8 lockupView];
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    [v29 setGridViewController:v22];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v14.receiver = self;
  v14.super_class = HUSoftwareUpdateItemModuleController;
  v9 = a4;
  [(HUItemModuleController *)&v14 updateCell:v8 forItem:v9 animated:v5];
  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    objc_opt_class();
    v10 = v8;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 lockupView];
    [v13 setDelegate:self];
  }
}

- (void)lockupView:(id)a3 downloadControlTapped:(id)a4
{
  v5 = [a3 item];
  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 accessories];
    [(HUSoftwareUpdateItemModuleController *)self _startUpdateOnAccessories:v8];
  }
}

- (void)lockupView:(id)a3 expandableTextViewDidExpand:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUSoftwareUpdateItemModuleController *)self expandedStateByItems];
  v9 = [v7 item];

  [v8 setObject:MEMORY[0x277CBEC38] forKey:v9];
  v10 = [(HUSoftwareUpdateItemModuleController *)self expandableTextViewCellDelegate];
  [v10 expandableTextViewCellStateDidChange:v6];
}

- (void)updateAllAccessories
{
  v4 = [(HUItemModuleController *)self module];
  v3 = [v4 accessories];
  [(HUSoftwareUpdateItemModuleController *)self _startUpdateOnAccessories:v3];
}

- (void)_startUpdateOnAccessories:(id)a3
{
  v10 = a3;
  if ([v10 count] == 1)
  {
    v4 = +[HUSoftwareUpdateUIManager sharedManager];
    v5 = [v10 anyObject];
    v6 = [v4 startUpdateForAccessory:v5 presentationDelegate:self];
  }

  else
  {
    v7 = +[HUSoftwareUpdateUIManager sharedManager];
    v4 = v7;
    if (v10)
    {
      v6 = [v7 startUpdatesForAccessories:v10 presentationDelegate:self];
      goto LABEL_7;
    }

    v5 = [(HUItemModuleController *)self module];
    v8 = [v5 home];
    v6 = [v4 startUpdatesForAllAccessoriesInHome:v8 presentationDelegate:self];
  }

LABEL_7:
  v9 = [v6 addFailureBlock:&__block_literal_global_220];
}

void __66__HUSoftwareUpdateItemModuleController__startUpdateOnAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 na_isCancelledError] & 1) == 0)
  {
    v2 = [MEMORY[0x277D14640] sharedHandler];
    [v2 handleError:v3];
  }
}

- (id)softwareUpdateUIManager:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [(HUSoftwareUpdateItemModuleController *)self delegate];
  v7 = [v6 softwareUpdateModuleController:self presentViewController:v5];

  return v7;
}

- (id)softwareUpdateUIManager:(id)a3 dismissViewController:(id)a4
{
  v5 = a4;
  v6 = [(HUSoftwareUpdateItemModuleController *)self delegate];
  v7 = [v6 softwareUpdateModuleController:self dismissViewController:v5];

  return v7;
}

- (HUSoftwareUpdateItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUExpandableTextViewCellDelegate)expandableTextViewCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableTextViewCellDelegate);

  return WeakRetained;
}

@end