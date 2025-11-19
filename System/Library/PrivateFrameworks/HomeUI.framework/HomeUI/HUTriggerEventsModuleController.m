@interface HUTriggerEventsModuleController
- (Class)cellClassForItem:(id)a3;
- (HUTriggerEventsModuleController)initWithModule:(id)a3;
- (HUTriggerEventsModuleControllerDelegate)delegate;
- (id)trailingSwipeActionsForItem:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)deleteItem:(id)a3 completionHandler:(id)a4;
- (void)eventFlow:(id)a3 didFinishWithEventBuilderItem:(id)a4;
- (void)eventFlowDidCancel:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)transitionToViewController:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUTriggerEventsModuleController

- (HUTriggerEventsModuleController)initWithModule:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUTriggerEventsModuleController;
  v3 = [(HUItemModuleController *)&v6 initWithModule:a3];
  v4 = v3;
  if (v3)
  {
    [(HUTriggerEventsModuleController *)v3 setAllowsEditingEvents:1];
  }

  return v4;
}

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 addEventButtonItem];
  [v4 isEqual:v6];

  v7 = objc_opt_class();

  return v7;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v10 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v10 setAdjustsTextColorWhenDisabled:0];
  }

  else
  {
    v7 = [(HUItemModuleController *)self module];
    v8 = [v7 addEventButtonItem];
    v9 = [v6 isEqual:v8];

    if (v9)
    {
      [v10 setAccessoryType:1];
    }
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v10 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v8 setIconForegroundColorFollowsTintColor:1];
      [v8 setIconDisplayStyle:1];
      [v8 setIconTintColorFollowsDisabledState:0];
      v9 = -[HUTriggerEventsModuleController allowsEditingEvents](self, "allowsEditingEvents") && ![v8 isDisabled];
      [v8 setAccessoryType:v9];
    }
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(HUItemModuleController *)self module];
  v10 = [v9 addEventButtonItem];
  if ([v4 isEqual:v10])
  {
    v11 = _os_feature_enabled_impl();

    if (v11)
    {
      v12 = [[HUEventCreationUIFlow alloc] initWithTriggerBuilder:v8 eventBuilderItem:0];
      [(HUEventCreationUIFlow *)v12 setModalInPresentation:1];
      [(HUEventUIFlow *)v12 setDelegate:self];
      [(HUEventUIFlow *)v12 setIsPresentedModally:1];
      [(HUEventCreationUIFlow *)v12 setupNavigationController];
      v13 = [(HUEventCreationUIFlow *)v12 navigationController];
      v14 = [HUViewControllerPresentationRequest requestWithViewController:v13];

      v15 = [(HUItemModuleController *)self host];
      v16 = [v15 moduleController:self presentViewControllerForRequest:v14];
LABEL_11:

LABEL_14:
      goto LABEL_15;
    }
  }

  else
  {
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v8)
  {
    v17 = v4;
    v12 = [[HUEventUIFlow alloc] initWithTriggerBuilder:v8 eventBuilderItem:v17];

    [(HUEventUIFlow *)v12 setDelegate:self];
    [(HUEventUIFlow *)v12 setPresentationController:self];
    v14 = [(HUEventUIFlow *)v12 buildInitialViewController];
    v15 = [(HUTriggerEventsModuleController *)self delegate];
    [v15 eventsModuleController:self pushViewController:v14];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v4;
    v12 = [(HUTriggerEventsModuleController *)self delegate];
    [(HUEventCreationUIFlow *)v12 _showEditorForTriggerBuilderItem:v14];
    goto LABEL_14;
  }

LABEL_15:

  return 0;
}

- (id)trailingSwipeActionsForItem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: User swiped for trailing actions on item: %@", buf, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && _os_feature_enabled_impl())
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = MEMORY[0x277D753C0];
    v8 = _HULocalizedStringWithDefaultValue(@"HUDeleteTitle", @"HUDeleteTitle", 1);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __63__HUTriggerEventsModuleController_trailingSwipeActionsForItem___block_invoke;
    v15 = &unk_277DC3010;
    v16 = self;
    v17 = v4;
    v9 = [v7 contextualActionWithStyle:1 title:v8 handler:&v12];

    [v6 addObject:{v9, v12, v13, v14, v15, v16}];
    v10 = [MEMORY[0x277D75AD8] configurationWithActions:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)eventFlowDidCancel:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v11 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v11;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 navigationController];
    v8 = [HUViewControllerDismissalRequest requestWithViewController:v7];

    v9 = [(HUItemModuleController *)self host];
    v10 = [v9 moduleController:self dismissViewControllerForRequest:v8];
  }
}

- (void)eventFlow:(id)a3 didFinishWithEventBuilderItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  v9 = [(HUItemModuleController *)self module];
  v10 = [v9 triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v7 originalEventBuilderItem];
  if (v13)
  {
    v14 = v13;
    v15 = [v7 originalEventBuilderItem];

    if (v15 != v8)
    {
      v16 = [v7 originalEventBuilderItem];
      v17 = [v16 eventBuilders];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __75__HUTriggerEventsModuleController_eventFlow_didFinishWithEventBuilderItem___block_invoke;
      v39[3] = &unk_277DC3038;
      v40 = v12;
      [v17 na_each:v39];
    }
  }

  v18 = [v8 eventBuilders];
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __75__HUTriggerEventsModuleController_eventFlow_didFinishWithEventBuilderItem___block_invoke_2;
  v37 = &unk_277DC3038;
  v19 = v12;
  v38 = v19;
  [v18 na_each:&v34];

  objc_opt_class();
  v20 = v7;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    v23 = [v22 navigationController];
    v24 = [HUViewControllerDismissalRequest requestWithViewController:v23];

    v25 = [(HUItemModuleController *)self host];
    v26 = [v25 moduleController:self dismissViewControllerForRequest:v24];

    v27 = MEMORY[0x277D14788];
    v28 = [(HUItemModuleController *)self module];
    v29 = [v28 itemProviders];
    v30 = [v27 requestToReloadItemProviders:v29 senderSelector:a2];

    v31 = [(HUItemModuleController *)self module];
    v32 = [v31 itemUpdater];
    v33 = [v32 performItemUpdateRequest:v30];
  }
}

- (void)transitionToViewController:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerEventsModuleController *)self delegate];
  [v5 eventsModuleController:self pushViewController:v4];
}

- (void)deleteItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  v10 = [(HUItemModuleController *)self module];
  v11 = [v10 triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v9 eventBuilders];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__HUTriggerEventsModuleController_deleteItem_completionHandler___block_invoke;
  v24[3] = &unk_277DC3038;
  v25 = v13;
  v15 = v13;
  [v14 na_each:v24];

  v16 = [(HUTriggerEventsModuleController *)self delegate];

  if (v16)
  {
    v17 = [(HUTriggerEventsModuleController *)self delegate];
    [v17 eventsModuleControllerDidUpdateTriggerBuilder:self];
  }

  else
  {
    v18 = MEMORY[0x277D14788];
    v19 = [(HUItemModuleController *)self module];
    v20 = [v19 itemProviders];
    v17 = [v18 requestToReloadItemProviders:v20 senderSelector:a2];

    v21 = [(HUItemModuleController *)self module];
    v22 = [v21 itemUpdater];
    v23 = [v22 performItemUpdateRequest:v17];
  }
}

- (HUTriggerEventsModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end