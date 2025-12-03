@interface HUTriggerConditionEditorItemModuleController
- (BOOL)_canEditConditionOptionItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUTriggerConditionEditorItemModuleController)initWithModule:(id)module delegate:(id)delegate;
- (HUTriggerConditionEditorItemModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)item;
- (void)_dismissDetailEditor:(id)editor;
- (void)_presentDetailEditorForConditionOptionItem:(id)item;
- (void)accessoryButtonTappedForItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)timeConditionEditor:(id)editor didFinishWithCondition:(id)condition;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUTriggerConditionEditorItemModuleController

- (HUTriggerConditionEditorItemModuleController)initWithModule:(id)module delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HUTriggerConditionEditorItemModuleController;
  v7 = [(HUItemModuleController *)&v10 initWithModule:module];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v7 = [module isShowConditionOptionsItem:itemCopy];

  if (v7 || (-[HUItemModuleController module](self, "module"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isCustomConditionSwitchItem:itemCopy], v8, v9) || (-[HUItemModuleController module](self, "module"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isConditionOptionItem:", itemCopy), v10, v11))
  {
    v12 = objc_opt_class();
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorItemModuleController.m" lineNumber:57 description:{@"Unknown item %@", itemCopy}];

    v12 = 0;
  }

  return v12;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v8 = [module isShowConditionOptionsItem:itemCopy];

  if (!v8)
  {
    module2 = [(HUItemModuleController *)self module];
    v16 = [module2 isCustomConditionSwitchItem:itemCopy];

    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = objc_opt_class();
    v18 = cellCopy;
    if (v18)
    {
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v12 = v18;
      if (v19)
      {
        goto LABEL_18;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v21 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];
    }

    v12 = 0;
LABEL_18:

    [v12 setDelegate:self];
    goto LABEL_19;
  }

  v9 = objc_opt_class();
  v10 = cellCopy;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v10;
    if (v11)
    {
      goto LABEL_9;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler2 handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v9, objc_opt_class()}];
  }

  v12 = 0;
LABEL_9:

  [v12 setHideIcon:1];
  [v12 setValueColorFollowsTintColor:1];
  [v12 setAccessoryType:0];
LABEL_19:

LABEL_20:
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v9 = [module isConditionOptionItem:itemCopy];

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = cellCopy;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v11;
      if (v12)
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v10, objc_opt_class()}];
    }

    v13 = 0;
LABEL_9:

    latestResults = [itemCopy latestResults];
    v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [v13 setTitleText:v17];

    latestResults2 = [itemCopy latestResults];
    v19 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    [v13 setDescriptionText:v19];

    latestResults3 = [itemCopy latestResults];
    v21 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D14068]];
    unsignedIntegerValue = [v21 unsignedIntegerValue];

    [v13 setChecked:unsignedIntegerValue == 2];
    if (unsignedIntegerValue == 2)
    {
      if ([(HUTriggerConditionEditorItemModuleController *)self _canEditConditionOptionItem:itemCopy])
      {
        v23 = 4;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    [v13 setAccessoryType:v23];
  }
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isShowConditionOptionsItem:itemCopy];

  module2 = [(HUItemModuleController *)self module];
  v8 = module2;
  if (v6)
  {
    v9 = [module2 conditionTypeForItem:itemCopy];

    module3 = [(HUItemModuleController *)self module];
    v11 = [module3 shouldShowConditionOptionsForType:v9];

    module4 = [(HUItemModuleController *)self module];
    [module4 setShowConditionOptions:v11 ^ 1u forType:v9];
LABEL_3:

    goto LABEL_10;
  }

  v13 = [module2 isConditionOptionItem:itemCopy];

  if (v13)
  {
    module5 = [(HUItemModuleController *)self module];
    v15 = [module5 doesConditionOptionItemRequireInitialConfiguration:itemCopy];

    if (v15)
    {
      [(HUTriggerConditionEditorItemModuleController *)self _presentDetailEditorForConditionOptionItem:itemCopy];
    }

    else
    {
      module6 = [(HUItemModuleController *)self module];
      v17 = [module6 conditionTypeForItem:itemCopy];

      module7 = [(HUItemModuleController *)self module];
      [module7 setSelectedConditionOptionItem:itemCopy forType:v17];
    }

    delegate = [(HUTriggerConditionEditorItemModuleController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      module4 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
      module8 = [(HUItemModuleController *)self module];
      conditionCollection = [module8 conditionCollection];
      [module4 conditionEditorModuleController:self didUpdateConditionCollection:conditionCollection];

      goto LABEL_3;
    }
  }

LABEL_10:

  return 0;
}

- (void)accessoryButtonTappedForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v5 = [module isConditionOptionItem:itemCopy];

  if (v5)
  {
    [(HUTriggerConditionEditorItemModuleController *)self _presentDetailEditorForConditionOptionItem:itemCopy];
  }
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  module = [(HUItemModuleController *)self module];
  item = [cellCopy item];
  v8 = [module isCustomConditionSwitchItem:item];

  if (v8)
  {
    module2 = [(HUItemModuleController *)self module];
    item2 = [cellCopy item];
    [module2 setCustomConditionEnabled:onCopy forItem:item2];

    delegate = [(HUTriggerConditionEditorItemModuleController *)self delegate];
    LOBYTE(module2) = objc_opt_respondsToSelector();

    if (module2)
    {
      delegate2 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
      module3 = [(HUItemModuleController *)self module];
      conditionCollection = [module3 conditionCollection];
      [delegate2 conditionEditorModuleController:self didUpdateConditionCollection:conditionCollection];
    }
  }
}

- (void)timeConditionEditor:(id)editor didFinishWithCondition:(id)condition
{
  editorCopy = editor;
  conditionCopy = condition;
  module = [(HUItemModuleController *)self module];
  detailEditingContext = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];
  optionItem = [detailEditingContext optionItem];
  [module updateCondition:conditionCopy forOptionItem:optionItem];

  delegate = [(HUTriggerConditionEditorItemModuleController *)self delegate];
  LOBYTE(module) = objc_opt_respondsToSelector();

  if (module)
  {
    delegate2 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
    module2 = [(HUItemModuleController *)self module];
    conditionCollection = [module2 conditionCollection];
    [delegate2 conditionEditorModuleController:self didUpdateConditionCollection:conditionCollection];
  }

  [(HUTriggerConditionEditorItemModuleController *)self _dismissDetailEditor:editorCopy];
}

- (BOOL)_canEditConditionOptionItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module conditionForOptionItem:itemCopy];

  objc_opt_class();
  LOBYTE(module) = objc_opt_isKindOfClass();

  return module & 1;
}

- (void)_dismissDetailEditor:(id)editor
{
  editorCopy = editor;
  detailEditingContext = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];
  viewController = [detailEditingContext viewController];

  if (viewController != editorCopy)
  {
    detailEditingContext2 = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];
    NSLog(&cfstr_UnrecognizedEd.isa, editorCopy, detailEditingContext2);
  }

  delegate = [(HUTriggerConditionEditorItemModuleController *)self delegate];
  detailEditingContext3 = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];
  navigationController = [detailEditingContext3 navigationController];
  [delegate conditionEditorModuleController:self dismissDetailViewController:navigationController];

  [(HUTriggerConditionEditorItemModuleController *)self setDetailEditingContext:0];
}

- (void)_presentDetailEditorForConditionOptionItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v5 = [module conditionForOptionItem:itemCopy];

  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [[HUTriggerTimeConditionDetailEditorViewController alloc] initWithRangeCondition:v8 delegate:self];
    v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
    [v10 setModalPresentationStyle:2];
    v11 = objc_alloc_init(HUTriggerConditionDetailEditingContext);
    [(HUTriggerConditionDetailEditingContext *)v11 setOptionItem:itemCopy];
    [(HUTriggerConditionDetailEditingContext *)v11 setViewController:v9];
    [(HUTriggerConditionDetailEditingContext *)v11 setNavigationController:v10];
    detailEditingContext = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];

    if (detailEditingContext)
    {
      NSLog(&cfstr_AlreadyHaveADe.isa);
    }

    [(HUTriggerConditionEditorItemModuleController *)self setDetailEditingContext:v11];
    delegate = [(HUTriggerConditionEditorItemModuleController *)self delegate];
    [delegate conditionEditorModuleController:self presentDetailViewController:v10];
  }

  else
  {
    NSLog(&cfstr_TheTimeConditi.isa, v6);
  }
}

- (HUTriggerConditionEditorItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end