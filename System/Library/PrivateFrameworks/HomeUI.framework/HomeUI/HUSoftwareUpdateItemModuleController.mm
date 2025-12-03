@interface HUSoftwareUpdateItemModuleController
- (Class)cellClassForItem:(id)item;
- (HUExpandableTextViewCellDelegate)expandableTextViewCellDelegate;
- (HUSoftwareUpdateItemModuleController)initWithModule:(id)module;
- (HUSoftwareUpdateItemModuleController)initWithModule:(id)module delegate:(id)delegate expandableTextViewCellDelegate:(id)cellDelegate;
- (HUSoftwareUpdateItemModuleControllerDelegate)delegate;
- (id)softwareUpdateUIManager:(id)manager dismissViewController:(id)controller;
- (id)softwareUpdateUIManager:(id)manager presentViewController:(id)controller;
- (void)_startUpdateOnAccessories:(id)accessories;
- (void)lockupView:(id)view downloadControlTapped:(id)tapped;
- (void)lockupView:(id)view expandableTextViewDidExpand:(id)expand;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateAllAccessories;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUSoftwareUpdateItemModuleController

- (HUSoftwareUpdateItemModuleController)initWithModule:(id)module
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateItemModuleController.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateItemModuleController initWithModule:]", v6}];

  return 0;
}

- (HUSoftwareUpdateItemModuleController)initWithModule:(id)module delegate:(id)delegate expandableTextViewCellDelegate:(id)cellDelegate
{
  delegateCopy = delegate;
  cellDelegateCopy = cellDelegate;
  v17.receiver = self;
  v17.super_class = HUSoftwareUpdateItemModuleController;
  v10 = [(HUItemModuleController *)&v17 initWithModule:module];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    objc_storeWeak(&v11->_expandableTextViewCellDelegate, cellDelegateCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    serviceGridViewControllersByItems = v11->_serviceGridViewControllersByItems;
    v11->_serviceGridViewControllersByItems = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    expandedStateByItems = v11->_expandedStateByItems;
    v11->_expandedStateByItems = weakToStrongObjectsMapTable2;
  }

  return v11;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_opt_class();
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateItemModuleController.m" lineNumber:55 description:{@"Unknown item %@", itemCopy}];

    v6 = 0;
  }

  return v6;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v30.receiver = self;
  v30.super_class = HUSoftwareUpdateItemModuleController;
  [(HUItemModuleController *)&v30 setupCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cellCopy;
    expandedStateByItems = [(HUSoftwareUpdateItemModuleController *)self expandedStateByItems];
    v10 = [expandedStateByItems objectForKey:itemCopy];
    bOOLValue = [v10 BOOLValue];

    lockupView = [v8 lockupView];
    descriptionExpandableTextView = [lockupView descriptionExpandableTextView];
    [descriptionExpandableTextView setDelegate:0];

    lockupView2 = [v8 lockupView];
    descriptionExpandableTextView2 = [lockupView2 descriptionExpandableTextView];
    [descriptionExpandableTextView2 setExpanded:bOOLValue];

    lockupView3 = [v8 lockupView];
    lockupView4 = [v8 lockupView];
    descriptionExpandableTextView3 = [lockupView4 descriptionExpandableTextView];
    [descriptionExpandableTextView3 setDelegate:lockupView3];

    serviceGridViewControllersByItems = [(HUSoftwareUpdateItemModuleController *)self serviceGridViewControllersByItems];
    v20 = [serviceGridViewControllersByItems objectForKey:itemCopy];

    v21 = v20;
    v22 = v21;
    if (!v21)
    {
      v22 = objc_alloc_init(HUInformationalAccessoryGridViewController);
      view = [(HUInformationalAccessoryGridViewController *)v22 view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];

      collectionView = [(HUInformationalAccessoryGridViewController *)v22 collectionView];
      [collectionView setScrollEnabled:0];

      [(HUItemCollectionViewController *)v22 setWantsPreferredContentSize:1];
      collectionView2 = [(HUInformationalAccessoryGridViewController *)v22 collectionView];
      [collectionView2 setClipsToBounds:1];

      serviceGridViewControllersByItems2 = [(HUSoftwareUpdateItemModuleController *)self serviceGridViewControllersByItems];
      [serviceGridViewControllersByItems2 setObject:v22 forKey:itemCopy];
    }

    objc_opt_class();
    lockupView5 = [v8 lockupView];
    if (objc_opt_isKindOfClass())
    {
      v28 = lockupView5;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    [v29 setGridViewController:v22];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = HUSoftwareUpdateItemModuleController;
  itemCopy = item;
  [(HUItemModuleController *)&v14 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  LOBYTE(animatedCopy) = objc_opt_isKindOfClass();

  if (animatedCopy)
  {
    objc_opt_class();
    v10 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    lockupView = [v12 lockupView];
    [lockupView setDelegate:self];
  }
}

- (void)lockupView:(id)view downloadControlTapped:(id)tapped
{
  item = [view item];
  objc_opt_class();
  v9 = item;
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
    accessories = [v7 accessories];
    [(HUSoftwareUpdateItemModuleController *)self _startUpdateOnAccessories:accessories];
  }
}

- (void)lockupView:(id)view expandableTextViewDidExpand:(id)expand
{
  expandCopy = expand;
  viewCopy = view;
  expandedStateByItems = [(HUSoftwareUpdateItemModuleController *)self expandedStateByItems];
  item = [viewCopy item];

  [expandedStateByItems setObject:MEMORY[0x277CBEC38] forKey:item];
  expandableTextViewCellDelegate = [(HUSoftwareUpdateItemModuleController *)self expandableTextViewCellDelegate];
  [expandableTextViewCellDelegate expandableTextViewCellStateDidChange:expandCopy];
}

- (void)updateAllAccessories
{
  module = [(HUItemModuleController *)self module];
  accessories = [module accessories];
  [(HUSoftwareUpdateItemModuleController *)self _startUpdateOnAccessories:accessories];
}

- (void)_startUpdateOnAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  if ([accessoriesCopy count] == 1)
  {
    v4 = +[HUSoftwareUpdateUIManager sharedManager];
    anyObject = [accessoriesCopy anyObject];
    v6 = [v4 startUpdateForAccessory:anyObject presentationDelegate:self];
  }

  else
  {
    v7 = +[HUSoftwareUpdateUIManager sharedManager];
    v4 = v7;
    if (accessoriesCopy)
    {
      v6 = [v7 startUpdatesForAccessories:accessoriesCopy presentationDelegate:self];
      goto LABEL_7;
    }

    anyObject = [(HUItemModuleController *)self module];
    home = [anyObject home];
    v6 = [v4 startUpdatesForAllAccessoriesInHome:home presentationDelegate:self];
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

- (id)softwareUpdateUIManager:(id)manager presentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(HUSoftwareUpdateItemModuleController *)self delegate];
  v7 = [delegate softwareUpdateModuleController:self presentViewController:controllerCopy];

  return v7;
}

- (id)softwareUpdateUIManager:(id)manager dismissViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(HUSoftwareUpdateItemModuleController *)self delegate];
  v7 = [delegate softwareUpdateModuleController:self dismissViewController:controllerCopy];

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