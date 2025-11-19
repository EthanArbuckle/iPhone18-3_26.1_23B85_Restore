@interface HUCharacteristicEventViewController
- (BOOL)_canContinue;
- (BOOL)pickerViewCell:(id)a3 canSelectValueAtIndex:(int64_t)a4;
- (BOOL)shouldHideFooterBelowSection:(int64_t)a3;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUCharacteristicEventViewController)initWithEventBuilderItem:(id)a3 triggerBuilder:(id)a4;
- (HUCharacteristicEventViewController)initWithFlow:(id)a3 stepIdentifier:(id)a4;
- (id)_commitTriggerBuilder;
- (id)itemModuleControllers;
- (id)pickerViewCell:(id)a3 attributedTitleForValueAtIndex:(int64_t)a4;
- (int64_t)numberOfValuesForPickerViewCell:(id)a3;
- (void)_doneButtonPressed:(id)a3;
- (void)_nextButtonPressed:(id)a3;
- (void)_updateTriggerBuilder;
- (void)_updateVisibleCellCheckmarks;
- (void)_validateNextButton;
- (void)itemManagerDidUpdate:(id)a3;
- (void)pickerViewCell:(id)a3 didSelectValueAtIndex:(int64_t)a4;
- (void)setSelectedEventOptionItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUCharacteristicEventViewController

- (HUCharacteristicEventViewController)initWithEventBuilderItem:(id)a3 triggerBuilder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[HUCharacteristicEventItemManager alloc] initWithTriggerBuilder:v7 eventBuilderItem:v6 delegate:self];
  v16.receiver = self;
  v16.super_class = HUCharacteristicEventViewController;
  v9 = [(HUItemTableViewController *)&v16 initWithItemManager:v8 tableViewStyle:1];
  if (v9)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v10 = [HUTriggerConditionEditorItemModuleController alloc];
      v11 = [(HUCharacteristicEventItemManager *)v8 conditionModule];
      v12 = [(HUTriggerConditionEditorItemModuleController *)v10 initWithModule:v11 delegate:v9];
      conditionModuleController = v9->_conditionModuleController;
      v9->_conditionModuleController = v12;
    }

    [(HUCharacteristicEventViewController *)v9 setEventBuilderItem:v6];
    [(HUCharacteristicEventViewController *)v9 setTriggerBuilder:v7];
    v14 = _HULocalizedStringWithDefaultValue(@"HUCharacteristicEventOptionTitle", @"HUCharacteristicEventOptionTitle", 1);
    [(HUCharacteristicEventViewController *)v9 setTitle:v14];
  }

  return v9;
}

- (HUCharacteristicEventViewController)initWithFlow:(id)a3 stepIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 eventBuilderItem];
  v9 = [v6 triggerBuilder];
  v10 = [(HUCharacteristicEventViewController *)self initWithEventBuilderItem:v8 triggerBuilder:v9];

  if (v10)
  {
    [(HUCharacteristicEventViewController *)v10 setFlow:v6];
    [(HUCharacteristicEventViewController *)v10 setStepIdentifier:v7];
  }

  return v10;
}

- (void)setSelectedEventOptionItem:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_selectedEventOptionItem] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedEventOptionItem, a3);
    v5 = [(HUItemTableViewController *)self itemManager];
    [v5 setActiveOptionItem:v6];
  }
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUCharacteristicEventViewController *)self conditionModuleController];
  v4 = [v2 na_setWithSafeObject:v3];

  return v4;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v15 viewDidLoad];
  v3 = [(HUCharacteristicEventViewController *)self flow];
  v4 = [(HUCharacteristicEventViewController *)self stepIdentifier];
  v5 = [v3 shouldShowDoneButtonForStep:v4];

  if (v5)
  {
    v6 = &selRef__doneButtonPressed_;
    v7 = @"HUDoneTitle";
LABEL_5:
    v11 = objc_alloc(MEMORY[0x277D751E0]);
    v12 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
    v13 = [v11 initWithTitle:v12 style:2 target:self action:*v6];
    v14 = [(HUCharacteristicEventViewController *)self navigationItem];
    [v14 setRightBarButtonItem:v13];

    goto LABEL_6;
  }

  v8 = [(HUCharacteristicEventViewController *)self flow];
  v9 = [(HUCharacteristicEventViewController *)self stepIdentifier];
  v10 = [v8 shouldShowNextButtonForStep:v9];

  if (v10)
  {
    v6 = &selRef__nextButtonPressed_;
    v7 = @"HUTimerTriggerEditorNextButton";
    goto LABEL_5;
  }

LABEL_6:
  [(HUCharacteristicEventViewController *)self _validateNextButton];
}

- (void)viewWillAppear:(BOOL)a3
{
  v22.receiver = self;
  v22.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v22 viewWillAppear:a3];
  v5 = [(HUCharacteristicEventViewController *)self eventBuilderItem];
  v6 = [(HUCharacteristicEventViewController *)self triggerBuilder];
  v7 = [v6 home];
  v8 = [HUCharacteristicEventItemManager serviceVendorItemForEventBuilderItem:v5 inHome:v7];

  v9 = [v8 services];
  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 serviceVendingItem];
  v12 = [v11 services];
  v13 = [v9 isEqual:v12];

  if ((v13 & 1) == 0)
  {
    v14 = [(HUItemTableViewController *)self itemManager];
    [v14 setServiceVendingItem:v8];

    v15 = [(HUItemTableViewController *)self itemManager];
    [v15 resetItemProvidersAndModules];

    v16 = [(HUItemTableViewController *)self itemManager];
    v17 = [v16 reloadAndUpdateAllItemsFromSenderSelector:a2];

    [(HUCharacteristicEventViewController *)self setSelectedEventOptionItem:0];
  }

  v18 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];

  if (!v18)
  {
    v19 = [(HUItemTableViewController *)self itemManager];
    v20 = [v19 allDisplayedItems];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__HUCharacteristicEventViewController_viewWillAppear___block_invoke;
    v21[3] = &unk_277DBAF68;
    v21[4] = self;
    [v20 na_each:v21];
  }
}

void __54__HUCharacteristicEventViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 triggerValue];
    if (v7)
    {
    }

    else
    {
      v8 = [v6 triggerValueRange];

      if (!v8)
      {
        v11 = [v6 thresholdValueRange];

        if (!v11)
        {
          goto LABEL_10;
        }

        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy__30;
        v20 = __Block_byref_object_dispose__30;
        v21 = 0;
        v12 = [*(a1 + 32) eventBuilderItem];
        v13 = [v12 eventBuilders];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __54__HUCharacteristicEventViewController_viewWillAppear___block_invoke_22;
        v15[3] = &unk_277DC32E8;
        v15[4] = &v16;
        v14 = [v13 na_any:v15];

        if (!v14)
        {
          _Block_object_dispose(&v16, 8);

          goto LABEL_10;
        }

        [v6 setThresholdValue:v17[5]];
        _Block_object_dispose(&v16, 8);

        goto LABEL_9;
      }
    }

    v9 = [v6 characteristics];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__HUCharacteristicEventViewController_viewWillAppear___block_invoke_2;
    v22[3] = &unk_277DC0598;
    v22[4] = *(a1 + 32);
    v23 = v6;
    v10 = [v9 na_any:v22];

    if (v10)
    {
LABEL_9:
      [*(a1 + 32) setSelectedEventOptionItem:v6];
      [*(a1 + 32) _validateNextButton];
    }
  }

LABEL_10:
}

uint64_t __54__HUCharacteristicEventViewController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 eventBuilderItem];
  v6 = [*(a1 + 40) representativeTriggerValue];
  v7 = [v5 wouldFireForCharacteristic:v4 value:v6];

  return v7;
}

BOOL __54__HUCharacteristicEventViewController_viewWillAppear___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v4 characteristic];
  v8 = [v6 thresholdRange];
  v9 = [v7 hf_thresholdValueForRange:v8];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 32) + 8) + 40) != 0;
  return v12;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v4 viewWillDisappear:a3];
  [(HUCharacteristicEventViewController *)self _updateTriggerBuilder];
}

- (void)_nextButtonPressed:(id)a3
{
  v5 = [(HUCharacteristicEventViewController *)self flow];
  v4 = [(HUCharacteristicEventViewController *)self stepIdentifier];
  [v5 viewController:self didFinishStepWithIdentifier:v4];
}

- (void)_doneButtonPressed:(id)a3
{
  v5 = [(HUCharacteristicEventViewController *)self flow];
  v4 = [(HUCharacteristicEventViewController *)self stepIdentifier];
  [v5 viewController:self didFinishStepWithIdentifier:v4];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[HUItemTableViewController itemManager](self, "itemManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 serviceNameItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqual:", v7), v7, v6, v8) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = objc_opt_class();
  }

  else
  {
    v9 = v5;
    v10 = [v9 childItem];
    if (v10)
    {
      v11 = objc_opt_class();
    }

    else
    {
      v14 = [v9 thresholdValueRange];
      v11 = objc_opt_class();
    }
  }

  v12 = v11;

  return v11;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 serviceNameItem];
  v12 = [v9 isEqual:v11];

  if (!v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    objc_opt_class();
    v23 = v9;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    v26 = [v25 childItem];
    if (v26)
    {

      goto LABEL_19;
    }

    v33 = [v25 thresholdValueRange];

    if (!v33)
    {
LABEL_19:
      v27 = objc_opt_class();
      v28 = v8;
      if (v28)
      {
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = v28;
        if (v29)
        {
          goto LABEL_26;
        }

        v31 = [MEMORY[0x277CCA890] currentHandler];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
        [v31 handleFailureInFunction:v32 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v27, objc_opt_class()}];
      }

      v30 = 0;
LABEL_26:

      [v30 setHideDescription:1];
      [v30 setHideIcon:1];

LABEL_43:
      goto LABEL_44;
    }

    v34 = objc_opt_class();
    v35 = v8;
    if (v35)
    {
      if (objc_opt_isKindOfClass())
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      v37 = v35;
      if (v36)
      {
        goto LABEL_35;
      }

      v38 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v38 handleFailureInFunction:v5 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v34, objc_opt_class()}];
    }

    v37 = 0;
LABEL_35:

    [v37 setDelegate:self];
    [v37 setItem:v25];
    v39 = [v25 validTriggerValues];
    v40 = [v25 thresholdValue];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __67__HUCharacteristicEventViewController_setupCell_forItem_indexPath___block_invoke;
      v43[3] = &unk_277DBEC28;
      v5 = &v44;
      v44 = v25;
      v42 = [v39 na_firstObjectPassingTest:v43];
    }

    [v25 setThresholdValue:v42];
    if (v42)
    {
      [v37 setSelectedIndex:objc_msgSend(MEMORY[0x277CD1970] animated:{"hf_indexOfSortedValues:closestToValue:", v39, v42), 0}];
    }

    if (!v41)
    {
    }

    goto LABEL_43;
  }

  v13 = objc_opt_class();
  v14 = v8;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v14;
    if (v15)
    {
      goto LABEL_9;
    }

    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v17 handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];
  }

  v16 = 0;
LABEL_9:

  [v16 setIconDisplayStyle:1];
  v19 = +[HUIconCellContentMetrics compactMetrics];
  [v16 setContentMetrics:v19];

  [v16 setDisableContinuousIconAnimation:1];
  v20 = [(HUCharacteristicEventViewController *)self flow];
  v21 = [v20 characteristicEditorAllowChangingCharacteristic:self];

  [v16 setAccessoryType:v21];
  if (v21)
  {
    v22 = 3;
  }

  else
  {
    v22 = 0;
  }

  [v16 setSelectionStyle:v22];

LABEL_44:
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v10;
      v14 = [v13 item];
      v15 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
      if (v14 == v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 0;
      }

      [v13 setAccessoryType:v16];

LABEL_16:
      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v17 = v11;
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v14 = v18;

      objc_opt_class();
      v19 = v10;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v15 = v20;

      [v15 setItem:v14];
      v21 = [v14 thresholdValue];

      if (v21)
      {
        v22 = [v14 validTriggerValues];
        v23 = [v14 thresholdValue];
        v24 = [v22 indexOfObject:v23];

        [v15 setSelectedIndex:v24 animated:0];
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  v25.receiver = self;
  v25.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v25 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
}

- (void)itemManagerDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidUpdate:a3];
  [(HUCharacteristicEventViewController *)self _validateNextButton];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 displayedSectionIdentifierForSectionIndex:a3];
  v6 = [v5 isEqualToString:@"HUCharacteristicEventSectionIdentifierInstructions"];

  return v6;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 displayedSectionIdentifierForSectionIndex:a3];
  v6 = [v5 isEqualToString:@"HUCharacteristicEventSectionIdentifierInstructions"];

  return v6;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 instructionsItem];

  if (v9 == v11)
  {
    v14 = 0;
  }

  else
  {
    v12 = [(HUItemTableViewController *)self itemManager];
    v13 = [v12 serviceNameItem];

    if (v9 == v13)
    {
      v15 = [(HUCharacteristicEventViewController *)self flow];
      v14 = [v15 characteristicEditorAllowChangingCharacteristic:self];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = HUCharacteristicEventViewController;
      v14 = [(HUItemTableViewController *)&v17 tableView:v6 shouldHighlightRowAtIndexPath:v7];
    }
  }

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v15 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (!v10)
  {
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 serviceNameItem];
    v13 = [v9 isEqual:v12];

    if (v13)
    {
      v14 = [(HUCharacteristicEventViewController *)self flow];
      [v14 characteristicEditorDidSelectToChangeCharacteristic:self];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 deselectRowAtIndexPath:v7 animated:1];
        [(HUCharacteristicEventViewController *)self setSelectedEventOptionItem:v9];
        [(HUCharacteristicEventViewController *)self _updateVisibleCellCheckmarks];
      }
    }
  }
}

- (void)_updateVisibleCellCheckmarks
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(HUCharacteristicEventViewController *)self tableView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 item];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v13 = [v10 item];
            v14 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
            if (v13 == v14)
            {
              v15 = 3;
            }

            else
            {
              v15 = 0;
            }

            [v10 setAccessoryType:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [(HUCharacteristicEventViewController *)self _validateNextButton];
}

- (BOOL)_canContinue
{
  v2 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
  v3 = v2 != 0;

  return v3;
}

- (id)_commitTriggerBuilder
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:41];
  v5 = [v3 futureWithError:v4];

  if ([(HUCharacteristicEventViewController *)self _canCommitTriggerBuilder])
  {
    [(HUCharacteristicEventViewController *)self _updateTriggerBuilder];
    v6 = [(HUCharacteristicEventViewController *)self triggerBuilder];
    v7 = [v6 commitItem];

    v5 = v7;
  }

  return v5;
}

- (void)_validateNextButton
{
  v3 = [(HUCharacteristicEventViewController *)self _canContinue];
  v5 = [(HUCharacteristicEventViewController *)self navigationItem];
  v4 = [v5 rightBarButtonItem];
  [v4 setEnabled:v3];
}

- (void)_updateTriggerBuilder
{
  v3 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];

  if (v3)
  {
    v4 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    v5 = [v4 characteristics];

    v6 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    v7 = [v6 triggerValue];

    v8 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    v9 = [v8 triggerValueRange];

    v10 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    v11 = [v10 thresholdValueRange];
    if (v11)
    {
      v12 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
      v13 = [v12 triggerValueRangeByApplyingThreshold];
    }

    else
    {
      v13 = 0;
    }

    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v13;
    }

    v15 = v14;
    v16 = [(HUCharacteristicEventViewController *)self eventBuilderItem];
    v17 = v16;
    if (v7)
    {
      v18 = v7;
    }

    else
    {
      v18 = v15;
    }

    v19 = [v16 setCharacteristics:v5 triggerValue:v18];

    v20 = [(HUCharacteristicEventViewController *)self flow];
    if (!v20 || (v21 = v20, -[HUCharacteristicEventViewController flow](self, "flow"), v22 = objc_claimAutoreleasedReturnValue(), -[HUCharacteristicEventViewController stepIdentifier](self, "stepIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v22 shouldSaveEventBuildersToTriggerBuilderForStep:v23], v23, v22, v21, v24))
    {
      v25 = [v19 deletions];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __60__HUCharacteristicEventViewController__updateTriggerBuilder__block_invoke;
      v28[3] = &unk_277DBB5D8;
      v28[4] = self;
      [v25 na_each:v28];

      v26 = [v19 additions];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __60__HUCharacteristicEventViewController__updateTriggerBuilder__block_invoke_2;
      v27[3] = &unk_277DBB5D8;
      v27[4] = self;
      [v26 na_each:v27];
    }
  }
}

void __60__HUCharacteristicEventViewController__updateTriggerBuilder__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 removeEventBuilder:v3];
}

void __60__HUCharacteristicEventViewController__updateTriggerBuilder__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 addEventBuilder:v3];
}

- (int64_t)numberOfValuesForPickerViewCell:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 item];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 validTriggerValues];
    v8 = [v7 count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)pickerViewCell:(id)a3 canSelectValueAtIndex:(int64_t)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = [v5 item];

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
    v9 = [v8 validTriggerValues];
    v10 = [v9 objectAtIndexedSubscript:a4];

    v11 = [v8 isValidThresholdValue:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)pickerViewCell:(id)a3 attributedTitleForValueAtIndex:(int64_t)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = [v5 item];

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
    v9 = [v8 validTriggerValues];
    v10 = [v9 objectAtIndexedSubscript:a4];

    v11 = objc_alloc(MEMORY[0x277CCAB48]);
    v12 = [v8 localizedListDescriptionForThresholdValue:v10];
    v13 = [v11 initWithString:v12];

    if (([v8 isValidThresholdValue:v10] & 1) == 0)
    {
      v14 = *MEMORY[0x277D740C0];
      v15 = [MEMORY[0x277D75348] systemGrayColor];
      [v13 addAttribute:v14 value:v15 range:{0, objc_msgSend(v13, "length")}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)pickerViewCell:(id)a3 didSelectValueAtIndex:(int64_t)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = [v6 item];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v13 = v8;

  v9 = v13;
  if (v13)
  {
    v10 = [v13 validTriggerValues];
    v11 = [v10 objectAtIndexedSubscript:a4];

    v12 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    [v12 setThresholdValue:v11];

    [(HUCharacteristicEventViewController *)self _updateTriggerBuilder];
    v9 = v13;
  }
}

@end