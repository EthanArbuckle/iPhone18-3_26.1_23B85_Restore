@interface HUTriggerActionSetsModuleController
- (Class)cellClassForItem:(id)a3;
- (HUTriggerActionSetsModuleControllerDelegate)delegate;
- (HUTriggerSummaryActionGridViewControllerProtocol)actionSetsGridViewController;
- (HUTriggerSummaryActionGridViewControllerProtocol)actionsGridViewController;
- (HUTriggerSummaryActionGridViewControllerProtocol)prioritizedActionsGridViewController;
- (id)childViewControllersToPreload;
- (void)reloadActions;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)triggerActionGridViewController:(id)a3 didUpdate:(id)a4;
- (void)triggerActionSetGridViewController:(id)a3 didUpdate:(id)a4;
@end

@implementation HUTriggerActionSetsModuleController

- (void)reloadActions
{
  if (self->_actionSetsGridViewController || (-[HUItemModuleController module](self, "module"), v3 = objc_claimAutoreleasedReturnValue(), [v3 itemUpdater], v4 = objc_claimAutoreleasedReturnValue(), -[HUItemModuleController module](self, "module"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "actionSetsGridItem"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "itemIsBeingDisplayed:", v6), v6, v5, v4, v3, v7))
  {
    v8 = [(HUTriggerActionSetsModuleController *)self actionSetsGridViewController];
    [v8 reloadActions];
  }

  if (self->_actionsGridViewController || (-[HUItemModuleController module](self, "module"), v9 = objc_claimAutoreleasedReturnValue(), [v9 itemUpdater], v10 = objc_claimAutoreleasedReturnValue(), -[HUItemModuleController module](self, "module"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "serviceActionsGridItem"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v10, "itemIsBeingDisplayed:", v12), v12, v11, v10, v9, v13))
  {
    v14 = [(HUTriggerActionSetsModuleController *)self actionsGridViewController];
    [v14 reloadActions];
  }

  if (self->_prioritizedActionsGridViewController || (-[HUItemModuleController module](self, "module"), v15 = objc_claimAutoreleasedReturnValue(), [v15 itemUpdater], v16 = objc_claimAutoreleasedReturnValue(), -[HUItemModuleController module](self, "module"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "prioritizedServiceActionsGridItem"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v16, "itemIsBeingDisplayed:", v18), v18, v17, v16, v15, v19))
  {
    v20 = [(HUTriggerActionSetsModuleController *)self prioritizedActionsGridViewController];
    [v20 reloadActions];
  }
}

- (id)childViewControllersToPreload
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HUTriggerActionSetsModuleController *)self actionsGridViewController];
  [v3 addObject:v4];

  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 itemUpdater];
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 actionSetsGridItem];
  v9 = [v6 itemIsBeingDisplayed:v8];

  if (v9)
  {
    v10 = [(HUTriggerActionSetsModuleController *)self actionSetsGridViewController];
    [v3 addObject:v10];
  }

  v11 = [(HUItemModuleController *)self module];
  v12 = [v11 itemUpdater];
  v13 = [(HUItemModuleController *)self module];
  v14 = [v13 prioritizedServiceActionsGridItem];
  v15 = [v12 itemIsBeingDisplayed:v14];

  if (v15)
  {
    v16 = [(HUTriggerActionSetsModuleController *)self prioritizedActionsGridViewController];
    [v3 addObject:v16];
  }

  [v3 na_safeAddObject:self->_actionSetsGridViewController];
  [v3 na_safeAddObject:self->_prioritizedActionsGridViewController];
  v17 = [v3 allObjects];

  return v17;
}

- (HUTriggerSummaryActionGridViewControllerProtocol)actionSetsGridViewController
{
  actionSetsGridViewController = self->_actionSetsGridViewController;
  if (!actionSetsGridViewController)
  {
    v4 = [HUEmbeddedTriggerActionSetGridViewController alloc];
    v5 = [(HUItemModuleController *)self module];
    v6 = [v5 triggerBuilder];
    v7 = [(HUEmbeddedTriggerActionSetGridViewController *)v4 initWithTriggerBuilder:v6];

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
    v5 = [(HUItemModuleController *)self module];
    v6 = [v5 triggerBuilder];
    v7 = [(HUEmbeddedTriggerActionGridViewController *)v4 initWithTriggerBuilder:v6];

    v8 = [(HUItemModuleController *)self module];
    v9 = [v8 prioritizedAccessories];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [(HUItemModuleController *)self module];
      v12 = [v11 prioritizedAccessories];
      v13 = [v12 allObjects];
      [(ActionGridViewController *)v7 setDenylistedAccessories:v13];
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
    v5 = [(HUItemModuleController *)self module];
    v6 = [v5 triggerBuilder];
    v7 = [(HUEmbeddedTriggerActionGridViewController *)v4 initWithTriggerBuilder:v6];

    v8 = [(HUItemModuleController *)self module];
    v9 = [v8 prioritizedAccessories];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [(HUItemModuleController *)self module];
      v12 = [v11 prioritizedAccessories];
      v13 = [v12 allObjects];
      [(ActionGridViewController *)v7 setAllowlistedAccessories:v13];
    }

    v14 = self->_prioritizedActionsGridViewController;
    self->_prioritizedActionsGridViewController = v7;

    prioritizedActionsGridViewController = self->_prioritizedActionsGridViewController;
  }

  return prioritizedActionsGridViewController;
}

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 actionSetsGridItem];
  if ([v4 isEqual:v6])
  {
    goto LABEL_4;
  }

  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 serviceActionsGridItem];
  if ([v4 isEqual:v8])
  {

LABEL_4:
LABEL_5:
    v9 = objc_opt_class();
    goto LABEL_6;
  }

  v11 = [(HUItemModuleController *)self module];
  v12 = [v11 prioritizedServiceActionsGridItem];
  v13 = [v4 isEqual:v12];

  if (v13)
  {
    goto LABEL_5;
  }

  v14 = [(HUItemModuleController *)self module];
  v15 = [v14 shortcutItem];

  if (v15 == v4)
  {
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v33 = a3;
  v6 = a4;
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 actionSetsGridItem];

  if (v8 == v6)
  {
    v20 = MEMORY[0x277D75348];
    v19 = v33;
    v21 = [v20 clearColor];
    [v19 setBackgroundColor:v21];

    v22 = [MEMORY[0x277D75348] clearColor];
    v23 = [v19 contentView];
    [v23 setBackgroundColor:v22];

    [v19 setIgnoreRounding:1];
    v24 = [(HUTriggerActionSetsModuleController *)self actionSetsGridViewController];
LABEL_10:
    v16 = v24;
    [v19 setViewController:v24];
    goto LABEL_11;
  }

  v9 = [(HUItemModuleController *)self module];
  v10 = [v9 serviceActionsGridItem];

  if (v10 == v6)
  {
    v25 = MEMORY[0x277D75348];
    v19 = v33;
    v26 = [v25 clearColor];
    [v19 setBackgroundColor:v26];

    v27 = [MEMORY[0x277D75348] clearColor];
    v28 = [v19 contentView];
    [v28 setBackgroundColor:v27];

    [v19 setIgnoreRounding:1];
    v24 = [(HUTriggerActionSetsModuleController *)self actionsGridViewController];
    goto LABEL_10;
  }

  v11 = [(HUItemModuleController *)self module];
  v12 = [v11 prioritizedServiceActionsGridItem];

  if (v12 == v6)
  {
    v29 = MEMORY[0x277D75348];
    v19 = v33;
    v30 = [v29 clearColor];
    [v19 setBackgroundColor:v30];

    v31 = [MEMORY[0x277D75348] clearColor];
    v32 = [v19 contentView];
    [v32 setBackgroundColor:v31];

    [v19 setIgnoreRounding:1];
    v24 = [(HUTriggerActionSetsModuleController *)self prioritizedActionsGridViewController];
    goto LABEL_10;
  }

  v13 = [(HUItemModuleController *)self module];
  v14 = [v13 shortcutItem];
  v15 = [v6 isEqual:v14];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v33;
  v17 = [v16 traitCollection];
  v18 = [v17 userInterfaceStyle];

  if (v18 == 1)
  {
    v19 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v16 setCellColor:v19];
LABEL_11:
  }

LABEL_13:
}

- (void)triggerActionGridViewController:(id)a3 didUpdate:(id)a4
{
  v5 = a4;
  v6 = [(HUTriggerActionSetsModuleController *)self delegate];
  [v6 actionSetsModuleController:self didUpdateTriggerBuilder:v5];
}

- (void)triggerActionSetGridViewController:(id)a3 didUpdate:(id)a4
{
  v5 = a4;
  v6 = [(HUTriggerActionSetsModuleController *)self delegate];
  [v6 actionSetsModuleController:self didUpdateTriggerBuilder:v5];
}

- (HUTriggerActionSetsModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end