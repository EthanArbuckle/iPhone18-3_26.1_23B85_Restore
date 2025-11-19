@interface HUTriggerConditionEditorItemModuleController
- (BOOL)_canEditConditionOptionItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUTriggerConditionEditorItemModuleController)initWithModule:(id)a3 delegate:(id)a4;
- (HUTriggerConditionEditorItemModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)a3;
- (void)_dismissDetailEditor:(id)a3;
- (void)_presentDetailEditorForConditionOptionItem:(id)a3;
- (void)accessoryButtonTappedForItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)timeConditionEditor:(id)a3 didFinishWithCondition:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUTriggerConditionEditorItemModuleController

- (HUTriggerConditionEditorItemModuleController)initWithModule:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HUTriggerConditionEditorItemModuleController;
  v7 = [(HUItemModuleController *)&v10 initWithModule:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
  }

  return v8;
}

- (Class)cellClassForItem:(id)a3
{
  v5 = a3;
  v6 = [(HUItemModuleController *)self module];
  v7 = [v6 isShowConditionOptionsItem:v5];

  if (v7 || (-[HUItemModuleController module](self, "module"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isCustomConditionSwitchItem:v5], v8, v9) || (-[HUItemModuleController module](self, "module"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isConditionOptionItem:", v5), v10, v11))
  {
    v12 = objc_opt_class();
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HUTriggerConditionEditorItemModuleController.m" lineNumber:57 description:{@"Unknown item %@", v5}];

    v12 = 0;
  }

  return v12;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 isShowConditionOptionsItem:v6];

  if (!v8)
  {
    v15 = [(HUItemModuleController *)self module];
    v16 = [v15 isCustomConditionSwitchItem:v6];

    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = objc_opt_class();
    v18 = v22;
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

      v20 = [MEMORY[0x277CCA890] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v20 handleFailureInFunction:v21 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];
    }

    v12 = 0;
LABEL_18:

    [v12 setDelegate:self];
    goto LABEL_19;
  }

  v9 = objc_opt_class();
  v10 = v22;
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

    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v9, objc_opt_class()}];
  }

  v12 = 0;
LABEL_9:

  [v12 setHideIcon:1];
  [v12 setValueColorFollowsTintColor:1];
  [v12 setAccessoryType:0];
LABEL_19:

LABEL_20:
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v24 = a3;
  v7 = a4;
  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 isConditionOptionItem:v7];

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = v24;
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

      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v14 handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v10, objc_opt_class()}];
    }

    v13 = 0;
LABEL_9:

    v16 = [v7 latestResults];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [v13 setTitleText:v17];

    v18 = [v7 latestResults];
    v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    [v13 setDescriptionText:v19];

    v20 = [v7 latestResults];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D14068]];
    v22 = [v21 unsignedIntegerValue];

    [v13 setChecked:v22 == 2];
    if (v22 == 2)
    {
      if ([(HUTriggerConditionEditorItemModuleController *)self _canEditConditionOptionItem:v7])
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

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 isShowConditionOptionsItem:v4];

  v7 = [(HUItemModuleController *)self module];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 conditionTypeForItem:v4];

    v10 = [(HUItemModuleController *)self module];
    v11 = [v10 shouldShowConditionOptionsForType:v9];

    v12 = [(HUItemModuleController *)self module];
    [v12 setShowConditionOptions:v11 ^ 1u forType:v9];
LABEL_3:

    goto LABEL_10;
  }

  v13 = [v7 isConditionOptionItem:v4];

  if (v13)
  {
    v14 = [(HUItemModuleController *)self module];
    v15 = [v14 doesConditionOptionItemRequireInitialConfiguration:v4];

    if (v15)
    {
      [(HUTriggerConditionEditorItemModuleController *)self _presentDetailEditorForConditionOptionItem:v4];
    }

    else
    {
      v16 = [(HUItemModuleController *)self module];
      v17 = [v16 conditionTypeForItem:v4];

      v18 = [(HUItemModuleController *)self module];
      [v18 setSelectedConditionOptionItem:v4 forType:v17];
    }

    v19 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v12 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
      v21 = [(HUItemModuleController *)self module];
      v22 = [v21 conditionCollection];
      [v12 conditionEditorModuleController:self didUpdateConditionCollection:v22];

      goto LABEL_3;
    }
  }

LABEL_10:

  return 0;
}

- (void)accessoryButtonTappedForItem:(id)a3
{
  v6 = a3;
  v4 = [(HUItemModuleController *)self module];
  v5 = [v4 isConditionOptionItem:v6];

  if (v5)
  {
    [(HUTriggerConditionEditorItemModuleController *)self _presentDetailEditorForConditionOptionItem:v6];
  }
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [(HUItemModuleController *)self module];
  v7 = [v15 item];
  v8 = [v6 isCustomConditionSwitchItem:v7];

  if (v8)
  {
    v9 = [(HUItemModuleController *)self module];
    v10 = [v15 item];
    [v9 setCustomConditionEnabled:v4 forItem:v10];

    v11 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
    LOBYTE(v9) = objc_opt_respondsToSelector();

    if (v9)
    {
      v12 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
      v13 = [(HUItemModuleController *)self module];
      v14 = [v13 conditionCollection];
      [v12 conditionEditorModuleController:self didUpdateConditionCollection:v14];
    }
  }
}

- (void)timeConditionEditor:(id)a3 didFinishWithCondition:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(HUItemModuleController *)self module];
  v8 = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];
  v9 = [v8 optionItem];
  [v7 updateCondition:v6 forOptionItem:v9];

  v10 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v11 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
    v12 = [(HUItemModuleController *)self module];
    v13 = [v12 conditionCollection];
    [v11 conditionEditorModuleController:self didUpdateConditionCollection:v13];
  }

  [(HUTriggerConditionEditorItemModuleController *)self _dismissDetailEditor:v14];
}

- (BOOL)_canEditConditionOptionItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 conditionForOptionItem:v4];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  return v5 & 1;
}

- (void)_dismissDetailEditor:(id)a3
{
  v10 = a3;
  v4 = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];
  v5 = [v4 viewController];

  if (v5 != v10)
  {
    v6 = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];
    NSLog(&cfstr_UnrecognizedEd.isa, v10, v6);
  }

  v7 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
  v8 = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];
  v9 = [v8 navigationController];
  [v7 conditionEditorModuleController:self dismissDetailViewController:v9];

  [(HUTriggerConditionEditorItemModuleController *)self setDetailEditingContext:0];
}

- (void)_presentDetailEditorForConditionOptionItem:(id)a3
{
  v14 = a3;
  v4 = [(HUItemModuleController *)self module];
  v5 = [v4 conditionForOptionItem:v14];

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
    [(HUTriggerConditionDetailEditingContext *)v11 setOptionItem:v14];
    [(HUTriggerConditionDetailEditingContext *)v11 setViewController:v9];
    [(HUTriggerConditionDetailEditingContext *)v11 setNavigationController:v10];
    v12 = [(HUTriggerConditionEditorItemModuleController *)self detailEditingContext];

    if (v12)
    {
      NSLog(&cfstr_AlreadyHaveADe.isa);
    }

    [(HUTriggerConditionEditorItemModuleController *)self setDetailEditingContext:v11];
    v13 = [(HUTriggerConditionEditorItemModuleController *)self delegate];
    [v13 conditionEditorModuleController:self presentDetailViewController:v10];
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