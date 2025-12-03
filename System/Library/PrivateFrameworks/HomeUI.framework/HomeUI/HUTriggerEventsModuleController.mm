@interface HUTriggerEventsModuleController
- (Class)cellClassForItem:(id)item;
- (HUTriggerEventsModuleController)initWithModule:(id)module;
- (HUTriggerEventsModuleControllerDelegate)delegate;
- (id)trailingSwipeActionsForItem:(id)item;
- (unint64_t)didSelectItem:(id)item;
- (void)deleteItem:(id)item completionHandler:(id)handler;
- (void)eventFlow:(id)flow didFinishWithEventBuilderItem:(id)item;
- (void)eventFlowDidCancel:(id)cancel;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)transitionToViewController:(id)controller;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUTriggerEventsModuleController

- (HUTriggerEventsModuleController)initWithModule:(id)module
{
  v6.receiver = self;
  v6.super_class = HUTriggerEventsModuleController;
  v3 = [(HUItemModuleController *)&v6 initWithModule:module];
  v4 = v3;
  if (v3)
  {
    [(HUTriggerEventsModuleController *)v3 setAllowsEditingEvents:1];
  }

  return v4;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  addEventButtonItem = [module addEventButtonItem];
  [itemCopy isEqual:addEventButtonItem];

  v7 = objc_opt_class();

  return v7;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [cellCopy setAdjustsTextColorWhenDisabled:0];
  }

  else
  {
    module = [(HUItemModuleController *)self module];
    addEventButtonItem = [module addEventButtonItem];
    v9 = [itemCopy isEqual:addEventButtonItem];

    if (v9)
    {
      [cellCopy setAccessoryType:1];
    }
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cellCopy;
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

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  triggerBuilder = [module triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v7 = triggerBuilder;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  module2 = [(HUItemModuleController *)self module];
  addEventButtonItem = [module2 addEventButtonItem];
  if ([itemCopy isEqual:addEventButtonItem])
  {
    v11 = _os_feature_enabled_impl();

    if (v11)
    {
      delegate = [[HUEventCreationUIFlow alloc] initWithTriggerBuilder:v8 eventBuilderItem:0];
      [(HUEventCreationUIFlow *)delegate setModalInPresentation:1];
      [(HUEventUIFlow *)delegate setDelegate:self];
      [(HUEventUIFlow *)delegate setIsPresentedModally:1];
      [(HUEventCreationUIFlow *)delegate setupNavigationController];
      navigationController = [(HUEventCreationUIFlow *)delegate navigationController];
      buildInitialViewController = [HUViewControllerPresentationRequest requestWithViewController:navigationController];

      host = [(HUItemModuleController *)self host];
      v16 = [host moduleController:self presentViewControllerForRequest:buildInitialViewController];
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
    v17 = itemCopy;
    delegate = [[HUEventUIFlow alloc] initWithTriggerBuilder:v8 eventBuilderItem:v17];

    [(HUEventUIFlow *)delegate setDelegate:self];
    [(HUEventUIFlow *)delegate setPresentationController:self];
    buildInitialViewController = [(HUEventUIFlow *)delegate buildInitialViewController];
    host = [(HUTriggerEventsModuleController *)self delegate];
    [host eventsModuleController:self pushViewController:buildInitialViewController];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    buildInitialViewController = itemCopy;
    delegate = [(HUTriggerEventsModuleController *)self delegate];
    [(HUEventCreationUIFlow *)delegate _showEditorForTriggerBuilderItem:buildInitialViewController];
    goto LABEL_14;
  }

LABEL_15:

  return 0;
}

- (id)trailingSwipeActionsForItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: User swiped for trailing actions on item: %@", buf, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && _os_feature_enabled_impl())
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = MEMORY[0x277D753C0];
    v8 = _HULocalizedStringWithDefaultValue(@"HUDeleteTitle", @"HUDeleteTitle", 1);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __63__HUTriggerEventsModuleController_trailingSwipeActionsForItem___block_invoke;
    v15 = &unk_277DC3010;
    selfCopy2 = self;
    v17 = itemCopy;
    v9 = [v7 contextualActionWithStyle:1 title:v8 handler:&v12];

    [array addObject:{v9, v12, v13, v14, v15, selfCopy2}];
    v10 = [MEMORY[0x277D75AD8] configurationWithActions:array];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)eventFlowDidCancel:(id)cancel
{
  cancelCopy = cancel;
  objc_opt_class();
  v11 = cancelCopy;
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
    navigationController = [v6 navigationController];
    v8 = [HUViewControllerDismissalRequest requestWithViewController:navigationController];

    host = [(HUItemModuleController *)self host];
    v10 = [host moduleController:self dismissViewControllerForRequest:v8];
  }
}

- (void)eventFlow:(id)flow didFinishWithEventBuilderItem:(id)item
{
  flowCopy = flow;
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  triggerBuilder = [module triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v11 = triggerBuilder;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  originalEventBuilderItem = [flowCopy originalEventBuilderItem];
  if (originalEventBuilderItem)
  {
    v14 = originalEventBuilderItem;
    originalEventBuilderItem2 = [flowCopy originalEventBuilderItem];

    if (originalEventBuilderItem2 != itemCopy)
    {
      originalEventBuilderItem3 = [flowCopy originalEventBuilderItem];
      eventBuilders = [originalEventBuilderItem3 eventBuilders];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __75__HUTriggerEventsModuleController_eventFlow_didFinishWithEventBuilderItem___block_invoke;
      v39[3] = &unk_277DC3038;
      v40 = v12;
      [eventBuilders na_each:v39];
    }
  }

  eventBuilders2 = [itemCopy eventBuilders];
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __75__HUTriggerEventsModuleController_eventFlow_didFinishWithEventBuilderItem___block_invoke_2;
  v37 = &unk_277DC3038;
  v19 = v12;
  v38 = v19;
  [eventBuilders2 na_each:&v34];

  objc_opt_class();
  v20 = flowCopy;
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
    navigationController = [v22 navigationController];
    v24 = [HUViewControllerDismissalRequest requestWithViewController:navigationController];

    host = [(HUItemModuleController *)self host];
    v26 = [host moduleController:self dismissViewControllerForRequest:v24];

    v27 = MEMORY[0x277D14788];
    module2 = [(HUItemModuleController *)self module];
    itemProviders = [module2 itemProviders];
    v30 = [v27 requestToReloadItemProviders:itemProviders senderSelector:a2];

    module3 = [(HUItemModuleController *)self module];
    itemUpdater = [module3 itemUpdater];
    v33 = [itemUpdater performItemUpdateRequest:v30];
  }
}

- (void)transitionToViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(HUTriggerEventsModuleController *)self delegate];
  [delegate eventsModuleController:self pushViewController:controllerCopy];
}

- (void)deleteItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  objc_opt_class();
  v7 = itemCopy;
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
  module = [(HUItemModuleController *)self module];
  triggerBuilder = [module triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v12 = triggerBuilder;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  eventBuilders = [v9 eventBuilders];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__HUTriggerEventsModuleController_deleteItem_completionHandler___block_invoke;
  v24[3] = &unk_277DC3038;
  v25 = v13;
  v15 = v13;
  [eventBuilders na_each:v24];

  delegate = [(HUTriggerEventsModuleController *)self delegate];

  if (delegate)
  {
    delegate2 = [(HUTriggerEventsModuleController *)self delegate];
    [delegate2 eventsModuleControllerDidUpdateTriggerBuilder:self];
  }

  else
  {
    v18 = MEMORY[0x277D14788];
    module2 = [(HUItemModuleController *)self module];
    itemProviders = [module2 itemProviders];
    delegate2 = [v18 requestToReloadItemProviders:itemProviders senderSelector:a2];

    module3 = [(HUItemModuleController *)self module];
    itemUpdater = [module3 itemUpdater];
    v23 = [itemUpdater performItemUpdateRequest:delegate2];
  }
}

- (HUTriggerEventsModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end