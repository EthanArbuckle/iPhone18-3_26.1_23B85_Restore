@interface HUTriggerActionSetsModuleController
- (Class)cellClassForItem:(id)item;
- (HUTriggerActionSetsModuleControllerDelegate)delegate;
- (HUTriggerSummaryActionGridViewControllerProtocol)actionSetsGridViewController;
- (HUTriggerSummaryActionGridViewControllerProtocol)actionsGridViewController;
- (HUTriggerSummaryActionGridViewControllerProtocol)prioritizedActionsGridViewController;
- (id)childViewControllersToPreload;
- (void)reloadActions;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)triggerActionGridViewController:(id)controller didUpdate:(id)update;
- (void)triggerActionSetGridViewController:(id)controller didUpdate:(id)update;
@end

@implementation HUTriggerActionSetsModuleController

- (void)reloadActions
{
  if (self->_actionSetsGridViewController || (-[HUItemModuleController module](self, "module"), v3 = objc_claimAutoreleasedReturnValue(), [v3 itemUpdater], v4 = objc_claimAutoreleasedReturnValue(), -[HUItemModuleController module](self, "module"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "actionSetsGridItem"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "itemIsBeingDisplayed:", v6), v6, v5, v4, v3, v7))
  {
    actionSetsGridViewController = [(HUTriggerActionSetsModuleController *)self actionSetsGridViewController];
    [actionSetsGridViewController reloadActions];
  }

  if (self->_actionsGridViewController || (-[HUItemModuleController module](self, "module"), v9 = objc_claimAutoreleasedReturnValue(), [v9 itemUpdater], v10 = objc_claimAutoreleasedReturnValue(), -[HUItemModuleController module](self, "module"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "serviceActionsGridItem"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v10, "itemIsBeingDisplayed:", v12), v12, v11, v10, v9, v13))
  {
    actionsGridViewController = [(HUTriggerActionSetsModuleController *)self actionsGridViewController];
    [actionsGridViewController reloadActions];
  }

  if (self->_prioritizedActionsGridViewController || (-[HUItemModuleController module](self, "module"), v15 = objc_claimAutoreleasedReturnValue(), [v15 itemUpdater], v16 = objc_claimAutoreleasedReturnValue(), -[HUItemModuleController module](self, "module"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "prioritizedServiceActionsGridItem"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v16, "itemIsBeingDisplayed:", v18), v18, v17, v16, v15, v19))
  {
    prioritizedActionsGridViewController = [(HUTriggerActionSetsModuleController *)self prioritizedActionsGridViewController];
    [prioritizedActionsGridViewController reloadActions];
  }
}

- (id)childViewControllersToPreload
{
  v3 = [MEMORY[0x277CBEB58] set];
  actionsGridViewController = [(HUTriggerActionSetsModuleController *)self actionsGridViewController];
  [v3 addObject:actionsGridViewController];

  module = [(HUItemModuleController *)self module];
  itemUpdater = [module itemUpdater];
  module2 = [(HUItemModuleController *)self module];
  actionSetsGridItem = [module2 actionSetsGridItem];
  v9 = [itemUpdater itemIsBeingDisplayed:actionSetsGridItem];

  if (v9)
  {
    actionSetsGridViewController = [(HUTriggerActionSetsModuleController *)self actionSetsGridViewController];
    [v3 addObject:actionSetsGridViewController];
  }

  module3 = [(HUItemModuleController *)self module];
  itemUpdater2 = [module3 itemUpdater];
  module4 = [(HUItemModuleController *)self module];
  prioritizedServiceActionsGridItem = [module4 prioritizedServiceActionsGridItem];
  v15 = [itemUpdater2 itemIsBeingDisplayed:prioritizedServiceActionsGridItem];

  if (v15)
  {
    prioritizedActionsGridViewController = [(HUTriggerActionSetsModuleController *)self prioritizedActionsGridViewController];
    [v3 addObject:prioritizedActionsGridViewController];
  }

  [v3 na_safeAddObject:self->_actionSetsGridViewController];
  [v3 na_safeAddObject:self->_prioritizedActionsGridViewController];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (HUTriggerSummaryActionGridViewControllerProtocol)actionSetsGridViewController
{
  actionSetsGridViewController = self->_actionSetsGridViewController;
  if (!actionSetsGridViewController)
  {
    v4 = [HUEmbeddedTriggerActionSetGridViewController alloc];
    module = [(HUItemModuleController *)self module];
    triggerBuilder = [module triggerBuilder];
    v7 = [(HUEmbeddedTriggerActionSetGridViewController *)v4 initWithTriggerBuilder:triggerBuilder];

    [(HUEmbeddedTriggerActionSetGridViewController *)v7 setDelegate:self];
    v8 = self->_actionSetsGridViewController;
    self->_actionSetsGridViewController = v7;

    actionSetsGridViewController = self->_actionSetsGridViewController;
  }

  return actionSetsGridViewController;
}

- (HUTriggerSummaryActionGridViewControllerProtocol)actionsGridViewController
{
  actionsGridViewController = self->_actionsGridViewController;
  if (!actionsGridViewController)
  {
    v4 = [HUEmbeddedTriggerActionGridViewController alloc];
    module = [(HUItemModuleController *)self module];
    triggerBuilder = [module triggerBuilder];
    v7 = [(HUEmbeddedTriggerActionGridViewController *)v4 initWithTriggerBuilder:triggerBuilder];

    module2 = [(HUItemModuleController *)self module];
    prioritizedAccessories = [module2 prioritizedAccessories];
    v10 = [prioritizedAccessories count];

    if (v10)
    {
      module3 = [(HUItemModuleController *)self module];
      prioritizedAccessories2 = [module3 prioritizedAccessories];
      allObjects = [prioritizedAccessories2 allObjects];
      [(ActionGridViewController *)v7 setDenylistedAccessories:allObjects];
    }

    [(HUEmbeddedTriggerActionGridViewController *)v7 setTriggerActionGridDelegate:self];
    v14 = self->_actionsGridViewController;
    self->_actionsGridViewController = v7;

    actionsGridViewController = self->_actionsGridViewController;
  }

  return actionsGridViewController;
}

- (HUTriggerSummaryActionGridViewControllerProtocol)prioritizedActionsGridViewController
{
  prioritizedActionsGridViewController = self->_prioritizedActionsGridViewController;
  if (!prioritizedActionsGridViewController)
  {
    v4 = [HUEmbeddedTriggerActionGridViewController alloc];
    module = [(HUItemModuleController *)self module];
    triggerBuilder = [module triggerBuilder];
    v7 = [(HUEmbeddedTriggerActionGridViewController *)v4 initWithTriggerBuilder:triggerBuilder];

    module2 = [(HUItemModuleController *)self module];
    prioritizedAccessories = [module2 prioritizedAccessories];
    v10 = [prioritizedAccessories count];

    if (v10)
    {
      module3 = [(HUItemModuleController *)self module];
      prioritizedAccessories2 = [module3 prioritizedAccessories];
      allObjects = [prioritizedAccessories2 allObjects];
      [(ActionGridViewController *)v7 setAllowlistedAccessories:allObjects];
    }

    v14 = self->_prioritizedActionsGridViewController;
    self->_prioritizedActionsGridViewController = v7;

    prioritizedActionsGridViewController = self->_prioritizedActionsGridViewController;
  }

  return prioritizedActionsGridViewController;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  actionSetsGridItem = [module actionSetsGridItem];
  if ([itemCopy isEqual:actionSetsGridItem])
  {
    goto LABEL_4;
  }

  module2 = [(HUItemModuleController *)self module];
  serviceActionsGridItem = [module2 serviceActionsGridItem];
  if ([itemCopy isEqual:serviceActionsGridItem])
  {

LABEL_4:
LABEL_5:
    v9 = objc_opt_class();
    goto LABEL_6;
  }

  module3 = [(HUItemModuleController *)self module];
  prioritizedServiceActionsGridItem = [module3 prioritizedServiceActionsGridItem];
  v13 = [itemCopy isEqual:prioritizedServiceActionsGridItem];

  if (v13)
  {
    goto LABEL_5;
  }

  module4 = [(HUItemModuleController *)self module];
  shortcutItem = [module4 shortcutItem];

  if (shortcutItem == itemCopy)
  {
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  actionSetsGridItem = [module actionSetsGridItem];

  if (actionSetsGridItem == itemCopy)
  {
    v20 = MEMORY[0x277D75348];
    systemBackgroundColor = cellCopy;
    clearColor = [v20 clearColor];
    [systemBackgroundColor setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    contentView = [systemBackgroundColor contentView];
    [contentView setBackgroundColor:clearColor2];

    [systemBackgroundColor setIgnoreRounding:1];
    actionSetsGridViewController = [(HUTriggerActionSetsModuleController *)self actionSetsGridViewController];
LABEL_10:
    v16 = actionSetsGridViewController;
    [systemBackgroundColor setViewController:actionSetsGridViewController];
    goto LABEL_11;
  }

  module2 = [(HUItemModuleController *)self module];
  serviceActionsGridItem = [module2 serviceActionsGridItem];

  if (serviceActionsGridItem == itemCopy)
  {
    v25 = MEMORY[0x277D75348];
    systemBackgroundColor = cellCopy;
    clearColor3 = [v25 clearColor];
    [systemBackgroundColor setBackgroundColor:clearColor3];

    clearColor4 = [MEMORY[0x277D75348] clearColor];
    contentView2 = [systemBackgroundColor contentView];
    [contentView2 setBackgroundColor:clearColor4];

    [systemBackgroundColor setIgnoreRounding:1];
    actionSetsGridViewController = [(HUTriggerActionSetsModuleController *)self actionsGridViewController];
    goto LABEL_10;
  }

  module3 = [(HUItemModuleController *)self module];
  prioritizedServiceActionsGridItem = [module3 prioritizedServiceActionsGridItem];

  if (prioritizedServiceActionsGridItem == itemCopy)
  {
    v29 = MEMORY[0x277D75348];
    systemBackgroundColor = cellCopy;
    clearColor5 = [v29 clearColor];
    [systemBackgroundColor setBackgroundColor:clearColor5];

    clearColor6 = [MEMORY[0x277D75348] clearColor];
    contentView3 = [systemBackgroundColor contentView];
    [contentView3 setBackgroundColor:clearColor6];

    [systemBackgroundColor setIgnoreRounding:1];
    actionSetsGridViewController = [(HUTriggerActionSetsModuleController *)self prioritizedActionsGridViewController];
    goto LABEL_10;
  }

  module4 = [(HUItemModuleController *)self module];
  shortcutItem = [module4 shortcutItem];
  v15 = [itemCopy isEqual:shortcutItem];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = cellCopy;
  traitCollection = [v16 traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [v16 setCellColor:systemBackgroundColor];
LABEL_11:
  }

LABEL_13:
}

- (void)triggerActionGridViewController:(id)controller didUpdate:(id)update
{
  updateCopy = update;
  delegate = [(HUTriggerActionSetsModuleController *)self delegate];
  [delegate actionSetsModuleController:self didUpdateTriggerBuilder:updateCopy];
}

- (void)triggerActionSetGridViewController:(id)controller didUpdate:(id)update
{
  updateCopy = update;
  delegate = [(HUTriggerActionSetsModuleController *)self delegate];
  [delegate actionSetsModuleController:self didUpdateTriggerBuilder:updateCopy];
}

- (HUTriggerActionSetsModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end