@interface HUCharacteristicTriggerEventViewController
- (BOOL)_canCommitTriggerBuilder;
- (BOOL)_canContinue;
- (BOOL)pickerViewCell:(id)a3 canSelectValueAtIndex:(int64_t)a4;
- (BOOL)shouldHideFooterBelowSection:(int64_t)a3;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUCharacteristicTriggerEventViewController)initWithCharacteristicEventBuilderItem:(id)a3 triggerBuilder:(id)a4 mode:(unint64_t)a5 delegate:(id)a6;
- (HUTriggerEditorDelegate)delegate;
- (id)_commitTriggerBuilder;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)pickerViewCell:(id)a3 attributedTitleForValueAtIndex:(int64_t)a4;
- (id)visibleTriggerValuesForItem:(id)a3;
- (int64_t)numberOfValuesForPickerViewCell:(id)a3;
- (void)_cancel:(id)a3;
- (void)_showActionEditor:(id)a3;
- (void)_showSummary:(id)a3;
- (void)_updateTriggerBuilder;
- (void)_updateVisibleCellCheckmarks;
- (void)_validateNextButton;
- (void)itemManagerDidUpdate:(id)a3;
- (void)pickerViewCell:(id)a3 didSelectValueAtIndex:(int64_t)a4;
- (void)setSelectedEventOptionItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUCharacteristicTriggerEventViewController

- (HUCharacteristicTriggerEventViewController)initWithCharacteristicEventBuilderItem:(id)a3 triggerBuilder:(id)a4 mode:(unint64_t)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[HUCharacteristicTriggerEventItemManager alloc] initWithTriggerBuilder:v11 eventBuilderItem:v10 delegate:self];
  v26.receiver = self;
  v26.super_class = HUCharacteristicTriggerEventViewController;
  v14 = [(HUItemTableViewController *)&v26 initWithItemManager:v13 tableViewStyle:1];
  v15 = v14;
  if (v14)
  {
    [(HUCharacteristicTriggerEventViewController *)v14 setEventBuilderItem:v10];
    [(HUCharacteristicTriggerEventViewController *)v15 setTriggerBuilder:v11];
    [(HUCharacteristicTriggerEventViewController *)v15 setMode:a5];
    [(HUCharacteristicTriggerEventViewController *)v15 setDelegate:v12];
    v16 = _HULocalizedStringWithDefaultValue(@"HUCharacteristicTriggerEventOptionTitle", @"HUCharacteristicTriggerEventOptionTitle", 1);
    [(HUCharacteristicTriggerEventViewController *)v15 setTitle:v16];

    if (!a5)
    {
      v17 = [v11 triggerActionSets];
      v18 = [v17 hasActions];
      v19 = &selRef__showSummary_;
      if (!v18)
      {
        v19 = &selRef__showActionEditor_;
      }

      v20 = *v19;

      v21 = objc_alloc(MEMORY[0x277D751E0]);
      v22 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorNextButton", @"HUTimerTriggerEditorNextButton", 1);
      v23 = [v21 initWithTitle:v22 style:2 target:v15 action:v20];
      v24 = [(HUCharacteristicTriggerEventViewController *)v15 navigationItem];
      [v24 setRightBarButtonItem:v23];

      [(HUCharacteristicTriggerEventViewController *)v15 _validateNextButton];
    }
  }

  return v15;
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

- (void)viewWillAppear:(BOOL)a3
{
  v22.receiver = self;
  v22.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v22 viewWillAppear:a3];
  v5 = [(HUCharacteristicTriggerEventViewController *)self eventBuilderItem];
  v6 = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
  v7 = [v6 home];
  v8 = [HUCharacteristicTriggerEventItemManager serviceVendorItemForEventBuilderItem:v5 inHome:v7];

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

    [(HUCharacteristicTriggerEventViewController *)self setSelectedEventOptionItem:0];
  }

  v18 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];

  if (!v18)
  {
    v19 = [(HUItemTableViewController *)self itemManager];
    v20 = [v19 allDisplayedItems];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__HUCharacteristicTriggerEventViewController_viewWillAppear___block_invoke;
    v21[3] = &unk_277DBAF68;
    v21[4] = self;
    [v20 na_each:v21];
  }
}

void __61__HUCharacteristicTriggerEventViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
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

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v6 triggerValue];
  if (v7)
  {

    goto LABEL_8;
  }

  v8 = [v6 triggerValueRange];

  if (v8)
  {
LABEL_8:
    v9 = [v6 characteristics];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __61__HUCharacteristicTriggerEventViewController_viewWillAppear___block_invoke_2;
    v33 = &unk_277DC0598;
    v34 = *(a1 + 32);
    v35 = v6;
    v10 = [v9 na_any:&v30];

    if (v10)
    {
LABEL_9:
      [*(a1 + 32) setSelectedEventOptionItem:{v6, v30, v31, v32, v33, v34}];
      [*(a1 + 32) _validateNextButton];
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v11 = [v6 thresholdValueRange];

  if (v11)
  {
    objc_opt_class();
    v12 = [*(a1 + 32) eventBuilderItem];
    v13 = [v12 eventBuilders];
    v14 = [v13 anyObject];
    v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
    v16 = v15;

    if (v16)
    {
      v17 = [v16 characteristic];
      v18 = [v16 thresholdRange];
      v19 = [v17 hf_thresholdValueForRange:v18];

      if (!v19)
      {

        goto LABEL_10;
      }

      v20 = MEMORY[0x277CD19F8];
      v21 = [v6 characteristics];
      v22 = [v6 thresholdValueRange];
      v23 = [v20 hf_triggerRangeTypeWithCharacteristics:v21 triggerValueRange:v22 thresholdValue:v19];

      v24 = MEMORY[0x277CD19F8];
      v25 = MEMORY[0x277CBEB98];
      v26 = [v16 characteristic];
      v27 = [v25 setWithObject:v26];
      v28 = [v16 thresholdRange];
      v29 = [v24 hf_triggerRangeTypeWithCharacteristics:v27 triggerValueRange:v28 thresholdValue:v19];

      [v6 setThresholdValue:v19];
      if (v23 != v29)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t __61__HUCharacteristicTriggerEventViewController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 eventBuilderItem];
  v6 = [*(a1 + 40) representativeTriggerValue];
  v7 = [v5 wouldFireForCharacteristic:v4 value:v6];

  return v7;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v4 viewWillDisappear:a3];
  [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
}

- (void)_cancel:(id)a3
{
  v4 = [(HUCharacteristicTriggerEventViewController *)self delegate];
  [v4 triggerEditor:self didFinishWithTriggerBuilder:0];
}

- (void)_showActionEditor:(id)a3
{
  [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
  v4 = [HUTriggerActionPickerViewController alloc];
  v5 = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
  v6 = [(HUCharacteristicTriggerEventViewController *)self mode];
  v7 = [(HUCharacteristicTriggerEventViewController *)self delegate];
  v10 = [(HUTriggerActionPickerViewController *)v4 initWithTriggerBuilder:v5 mode:v6 delegate:v7];

  v8 = [(HUCharacteristicTriggerEventViewController *)self navigationController];
  v9 = [v8 hu_pushPreloadableViewController:v10 animated:1];
}

- (void)_showSummary:(id)a3
{
  [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
  v4 = [HUTriggerSummaryViewController alloc];
  v5 = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
  v6 = [(HUCharacteristicTriggerEventViewController *)self mode];
  v7 = [(HUCharacteristicTriggerEventViewController *)self delegate];
  v10 = [(HUTriggerSummaryViewController *)v4 initWithTriggerBuilder:v5 mode:v6 isPresentedModally:0 delegate:v7];

  v8 = [(HUCharacteristicTriggerEventViewController *)self navigationController];
  v9 = [v8 hu_pushPreloadableViewController:v10 animated:1];
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = [[HUTriggerConditionEditorItemModuleController alloc] initWithModule:v4 delegate:self];

  conditionModuleController = self->_conditionModuleController;
  self->_conditionModuleController = v5;

  v7 = self->_conditionModuleController;

  return v7;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[HUItemTableViewController itemManager](self, "itemManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 serviceNameItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqual:", v7), v7, v6, v8) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = objc_opt_class();
  }

  else
  {
    v9 = v5;
    v10 = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
    v11 = [v9 mainCharacteristic];
    v12 = [v11 characteristicType];
    v13 = [v10 containsObject:v12];

    if (v13)
    {
      v14 = [v9 childItem];
      if (v14)
      {
        v15 = objc_opt_class();
      }

      else
      {
        v18 = [v9 thresholdValueRange];
        v15 = objc_opt_class();
      }
    }

    else
    {
      v15 = objc_opt_class();
    }
  }

  v16 = v15;

  return v15;
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
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_54;
      }

      v22 = [HUListContentConfigurationUtilities instructionsConfigurationForItem:v9];
      [v8 setContentConfiguration:v22];
      v30 = [MEMORY[0x277D751C0] clearConfiguration];
      [v8 setBackgroundConfiguration:v30];

      goto LABEL_53;
    }

    objc_opt_class();
    v20 = v9;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v23 = [v22 childItem];
    if (v23)
    {

      goto LABEL_16;
    }

    v37 = [v22 thresholdValueRange];

    if (!v37)
    {
LABEL_16:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = objc_opt_class();
        v25 = v8;
        if (v25)
        {
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v27 = v25;
          if (v26)
          {
            goto LABEL_24;
          }

          v28 = [MEMORY[0x277CCA890] currentHandler];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
          [v28 handleFailureInFunction:v29 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v24, objc_opt_class()}];
        }

        v27 = 0;
LABEL_24:

        [v27 setHideDescription:1];
        [v27 setHideIcon:1];
LABEL_36:

        goto LABEL_53;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = objc_opt_class();
        v32 = v8;
        if (v32)
        {
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }

          v27 = v32;
          if (v33)
          {
            goto LABEL_35;
          }

          v34 = [MEMORY[0x277CCA890] currentHandler];
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
          [v34 handleFailureInFunction:v35 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v31, objc_opt_class()}];
        }

        v27 = 0;
LABEL_35:

        [v27 setHideIcon:1];
        [v27 setValueColorFollowsTintColor:1];
        v36 = [MEMORY[0x277D75348] hf_keyColor];
        [v27 setTintColor:v36];

        goto LABEL_36;
      }

LABEL_53:

      goto LABEL_54;
    }

    v38 = objc_opt_class();
    v39 = v8;
    if (v39)
    {
      if (objc_opt_isKindOfClass())
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      v41 = v39;
      if (v40)
      {
        goto LABEL_45;
      }

      v42 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v42 handleFailureInFunction:v5 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v38, objc_opt_class()}];
    }

    v41 = 0;
LABEL_45:

    [v41 setDelegate:self];
    [v41 setItem:v22];
    v43 = [(HUCharacteristicTriggerEventViewController *)self visibleTriggerValuesForItem:v22];
    v44 = [v22 thresholdValue];
    v45 = v44;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __74__HUCharacteristicTriggerEventViewController_setupCell_forItem_indexPath___block_invoke;
      v47[3] = &unk_277DBEC28;
      v5 = &v48;
      v48 = v22;
      v46 = [v43 na_firstObjectPassingTest:v47];
    }

    [v22 setThresholdValue:v46];
    if (v46)
    {
      [v41 setSelectedIndex:objc_msgSend(MEMORY[0x277CD1970] animated:{"hf_indexOfSortedValues:closestToValue:", v43, v46), 0}];
    }

    if (!v45)
    {
    }

    goto LABEL_53;
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
  [v16 setAccessoryType:{-[HUCharacteristicTriggerEventViewController mode](self, "mode") == 1}];

LABEL_54:
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
      v15 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
      if (v14 == v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 0;
      }

      [v13 setAccessoryType:v16];

      goto LABEL_19;
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

      v21 = v20;

      [v21 setItem:v14];
      v22 = [(HUCharacteristicTriggerEventViewController *)self visibleTriggerValuesForItem:v14];
      v23 = [v14 thresholdValue];

      if (v23)
      {
        v24 = MEMORY[0x277CD1970];
        v25 = [v14 thresholdValue];
        v26 = [v24 hf_indexOfSortedValues:v22 closestToValue:v25];

        [v21 setSelectedIndex:v26 animated:0];
      }

      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v10;
      v27 = [v14 item];
      v28 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
      v29 = v27 == v28;
      v30 = v27 != v28;

      [v14 setHideValue:v30];
      [v14 setChecked:v29];
LABEL_19:
    }
  }

  v31.receiver = self;
  v31.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v31 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
}

- (void)itemManagerDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidUpdate:a3];
  [(HUCharacteristicTriggerEventViewController *)self _validateNextButton];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 displayedSectionIdentifierForSectionIndex:a3];
  v6 = [v5 isEqualToString:@"HUCharacteristicTriggerEventSectionIdentifierInstructions"];

  return v6;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 displayedSectionIdentifierForSectionIndex:a3];
  v6 = [v5 isEqualToString:@"HUCharacteristicTriggerEventSectionIdentifierInstructions"];

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
      v14 = [(HUCharacteristicTriggerEventViewController *)self mode]== 1;
    }

    else
    {
      v16.receiver = self;
      v16.super_class = HUCharacteristicTriggerEventViewController;
      v14 = [(HUItemTableViewController *)&v16 tableView:v6 shouldHighlightRowAtIndexPath:v7];
    }
  }

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v24 tableView:v6 didSelectRowAtIndexPath:v7];
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
      v14 = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
      v15 = [HUCharacteristicTriggerServicePickerViewController sourceForTriggerBuilder:v14];

      v16 = [HUAccessoryEventPickerViewController alloc];
      v17 = [(HUCharacteristicTriggerEventViewController *)self eventBuilderItem];
      v18 = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
      v19 = [(HUCharacteristicTriggerEventViewController *)self mode];
      v20 = [(HUCharacteristicTriggerEventViewController *)self delegate];
      v21 = [(HUAccessoryEventPickerViewController *)v16 initWithEventBuilderItem:v17 triggerBuilder:v18 mode:v19 source:v15 delegate:v20];

      v22 = [(HUCharacteristicTriggerEventViewController *)self navigationController];
      v23 = [v22 hu_pushPreloadableViewController:v21 animated:1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 deselectRowAtIndexPath:v7 animated:1];
        [(HUCharacteristicTriggerEventViewController *)self setSelectedEventOptionItem:v9];
        [(HUCharacteristicTriggerEventViewController *)self _updateVisibleCellCheckmarks];
      }
    }
  }
}

- (id)visibleTriggerValuesForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D14140]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = [v3 visibleTriggerValues];
  }

  v9 = v8;

  return v9;
}

- (void)_updateVisibleCellCheckmarks
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [(HUCharacteristicTriggerEventViewController *)self tableView];
  v3 = [v2 visibleCells];

  v4 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    v7 = off_277DB1000;
    v8 = off_277DB0000;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 item];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v14 = [v11 item];
            v15 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
            v30 = v14 == v15;
            v16 = v5;
            v17 = v6;
            v18 = v7;
            v19 = v3;
            v20 = v8;
            v21 = v14 != v15;

            v22 = v21;
            v8 = v20;
            v3 = v19;
            v7 = v18;
            v6 = v17;
            v5 = v16;
            [v11 setHideValue:v22];
            [v11 setChecked:v30];
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v23 = v10;
          v24 = [v23 item];
          objc_opt_class();
          v25 = objc_opt_isKindOfClass();

          if (v25)
          {
            v26 = [v23 item];
            v27 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
            if (v26 == v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 0;
            }

            [v23 setAccessoryType:v28];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  [(HUCharacteristicTriggerEventViewController *)self _validateNextButton];
}

- (BOOL)_canContinue
{
  v2 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_canCommitTriggerBuilder
{
  v3 = [(HUCharacteristicTriggerEventViewController *)self _canContinue];
  if (v3)
  {
    v4 = [(HUCharacteristicTriggerEventViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(HUCharacteristicTriggerEventViewController *)self delegate];
      v7 = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
      v8 = [v6 triggerEditor:self shouldCommitTriggerBuilder:v7];

      LOBYTE(v3) = v8;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (id)_commitTriggerBuilder
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:41];
  v5 = [v3 futureWithError:v4];

  if ([(HUCharacteristicTriggerEventViewController *)self _canCommitTriggerBuilder])
  {
    [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
    v6 = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
    v7 = [v6 commitItem];

    v5 = v7;
  }

  return v5;
}

- (void)_validateNextButton
{
  v3 = [(HUCharacteristicTriggerEventViewController *)self _canContinue];
  v5 = [(HUCharacteristicTriggerEventViewController *)self navigationItem];
  v4 = [v5 rightBarButtonItem];
  [v4 setEnabled:v3];
}

- (void)_updateTriggerBuilder
{
  v3 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];

  if (v3)
  {
    v4 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    v5 = [v4 characteristics];

    v6 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    v7 = [v6 triggerValue];

    v8 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    v9 = [v8 triggerValueRange];

    v10 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    v11 = [v10 thresholdValueRange];
    if (v11)
    {
      v12 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
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

    if (v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = v14;
    }

    v16 = v15;
    v17 = v14;
    v18 = [(HUCharacteristicTriggerEventViewController *)self eventBuilderItem];
    v19 = [v18 setCharacteristics:v5 triggerValue:v16];

    v20 = [v19 deletions];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__HUCharacteristicTriggerEventViewController__updateTriggerBuilder__block_invoke;
    v23[3] = &unk_277DBB5D8;
    v23[4] = self;
    [v20 na_each:v23];

    v21 = [v19 additions];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __67__HUCharacteristicTriggerEventViewController__updateTriggerBuilder__block_invoke_2;
    v22[3] = &unk_277DBB5D8;
    v22[4] = self;
    [v21 na_each:v22];
  }
}

void __67__HUCharacteristicTriggerEventViewController__updateTriggerBuilder__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 removeEventBuilder:v3];
}

void __67__HUCharacteristicTriggerEventViewController__updateTriggerBuilder__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 addEventBuilder:v3];
}

- (int64_t)numberOfValuesForPickerViewCell:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 item];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(HUCharacteristicTriggerEventViewController *)self visibleTriggerValuesForItem:v7];
    v9 = [v8 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)pickerViewCell:(id)a3 canSelectValueAtIndex:(int64_t)a4
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

  v9 = v8;

  if (v9)
  {
    v10 = [(HUCharacteristicTriggerEventViewController *)self visibleTriggerValuesForItem:v9];
    v11 = [v10 objectAtIndexedSubscript:a4];

    v12 = [v9 isValidThresholdValue:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)pickerViewCell:(id)a3 attributedTitleForValueAtIndex:(int64_t)a4
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

  v9 = v8;

  if (v9)
  {
    v10 = [(HUCharacteristicTriggerEventViewController *)self visibleTriggerValuesForItem:v9];
    v11 = [v10 count];
    v12 = 0;
    if ((a4 & 0x8000000000000000) == 0 && v11 > a4)
    {
      v13 = [v10 objectAtIndexedSubscript:a4];
      v14 = objc_alloc(MEMORY[0x277CCAB48]);
      v15 = [v9 localizedListDescriptionForThresholdValue:v13];
      v12 = [v14 initWithString:v15];

      if (([v9 isValidThresholdValue:v13] & 1) == 0)
      {
        v16 = *MEMORY[0x277D740C0];
        v17 = [MEMORY[0x277D75348] systemGrayColor];
        [v12 addAttribute:v16 value:v17 range:{0, objc_msgSend(v12, "length")}];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)pickerViewCell:(id)a3 didSelectValueAtIndex:(int64_t)a4
{
  v7 = a3;
  objc_opt_class();
  v8 = [v7 item];

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v19 = v9;

  v10 = v19;
  if (v19)
  {
    v11 = [(HUCharacteristicTriggerEventViewController *)self visibleTriggerValuesForItem:v19];
    v12 = [v11 objectAtIndexedSubscript:a4];

    v13 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    [v13 setThresholdValue:v12];

    [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
    v14 = [(HUItemTableViewController *)self itemManager];
    v15 = MEMORY[0x277CBEB98];
    v16 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    v17 = [v15 na_setWithSafeObject:v16];
    v18 = [v14 updateResultsForItems:v17 senderSelector:a2];

    v10 = v19;
  }
}

- (HUTriggerEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end