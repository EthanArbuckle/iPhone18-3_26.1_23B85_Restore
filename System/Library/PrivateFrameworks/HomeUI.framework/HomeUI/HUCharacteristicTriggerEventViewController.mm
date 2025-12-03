@interface HUCharacteristicTriggerEventViewController
- (BOOL)_canCommitTriggerBuilder;
- (BOOL)_canContinue;
- (BOOL)pickerViewCell:(id)cell canSelectValueAtIndex:(int64_t)index;
- (BOOL)shouldHideFooterBelowSection:(int64_t)section;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUCharacteristicTriggerEventViewController)initWithCharacteristicEventBuilderItem:(id)item triggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate;
- (HUTriggerEditorDelegate)delegate;
- (id)_commitTriggerBuilder;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)pickerViewCell:(id)cell attributedTitleForValueAtIndex:(int64_t)index;
- (id)visibleTriggerValuesForItem:(id)item;
- (int64_t)numberOfValuesForPickerViewCell:(id)cell;
- (void)_cancel:(id)_cancel;
- (void)_showActionEditor:(id)editor;
- (void)_showSummary:(id)summary;
- (void)_updateTriggerBuilder;
- (void)_updateVisibleCellCheckmarks;
- (void)_validateNextButton;
- (void)itemManagerDidUpdate:(id)update;
- (void)pickerViewCell:(id)cell didSelectValueAtIndex:(int64_t)index;
- (void)setSelectedEventOptionItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUCharacteristicTriggerEventViewController

- (HUCharacteristicTriggerEventViewController)initWithCharacteristicEventBuilderItem:(id)item triggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate
{
  itemCopy = item;
  builderCopy = builder;
  delegateCopy = delegate;
  v13 = [[HUCharacteristicTriggerEventItemManager alloc] initWithTriggerBuilder:builderCopy eventBuilderItem:itemCopy delegate:self];
  v26.receiver = self;
  v26.super_class = HUCharacteristicTriggerEventViewController;
  v14 = [(HUItemTableViewController *)&v26 initWithItemManager:v13 tableViewStyle:1];
  v15 = v14;
  if (v14)
  {
    [(HUCharacteristicTriggerEventViewController *)v14 setEventBuilderItem:itemCopy];
    [(HUCharacteristicTriggerEventViewController *)v15 setTriggerBuilder:builderCopy];
    [(HUCharacteristicTriggerEventViewController *)v15 setMode:mode];
    [(HUCharacteristicTriggerEventViewController *)v15 setDelegate:delegateCopy];
    v16 = _HULocalizedStringWithDefaultValue(@"HUCharacteristicTriggerEventOptionTitle", @"HUCharacteristicTriggerEventOptionTitle", 1);
    [(HUCharacteristicTriggerEventViewController *)v15 setTitle:v16];

    if (!mode)
    {
      triggerActionSets = [builderCopy triggerActionSets];
      hasActions = [triggerActionSets hasActions];
      v19 = &selRef__showSummary_;
      if (!hasActions)
      {
        v19 = &selRef__showActionEditor_;
      }

      v20 = *v19;

      v21 = objc_alloc(MEMORY[0x277D751E0]);
      v22 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorNextButton", @"HUTimerTriggerEditorNextButton", 1);
      v23 = [v21 initWithTitle:v22 style:2 target:v15 action:v20];
      navigationItem = [(HUCharacteristicTriggerEventViewController *)v15 navigationItem];
      [navigationItem setRightBarButtonItem:v23];

      [(HUCharacteristicTriggerEventViewController *)v15 _validateNextButton];
    }
  }

  return v15;
}

- (void)setSelectedEventOptionItem:(id)item
{
  itemCopy = item;
  if (([itemCopy isEqual:self->_selectedEventOptionItem] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedEventOptionItem, item);
    itemManager = [(HUItemTableViewController *)self itemManager];
    [itemManager setActiveOptionItem:itemCopy];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v22.receiver = self;
  v22.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v22 viewWillAppear:appear];
  eventBuilderItem = [(HUCharacteristicTriggerEventViewController *)self eventBuilderItem];
  triggerBuilder = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
  home = [triggerBuilder home];
  v8 = [HUCharacteristicTriggerEventItemManager serviceVendorItemForEventBuilderItem:eventBuilderItem inHome:home];

  services = [v8 services];
  itemManager = [(HUItemTableViewController *)self itemManager];
  serviceVendingItem = [itemManager serviceVendingItem];
  services2 = [serviceVendingItem services];
  v13 = [services isEqual:services2];

  if ((v13 & 1) == 0)
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    [itemManager2 setServiceVendingItem:v8];

    itemManager3 = [(HUItemTableViewController *)self itemManager];
    [itemManager3 resetItemProvidersAndModules];

    itemManager4 = [(HUItemTableViewController *)self itemManager];
    v17 = [itemManager4 reloadAndUpdateAllItemsFromSenderSelector:a2];

    [(HUCharacteristicTriggerEventViewController *)self setSelectedEventOptionItem:0];
  }

  selectedEventOptionItem = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];

  if (!selectedEventOptionItem)
  {
    itemManager5 = [(HUItemTableViewController *)self itemManager];
    allDisplayedItems = [itemManager5 allDisplayedItems];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__HUCharacteristicTriggerEventViewController_viewWillAppear___block_invoke;
    v21[3] = &unk_277DBAF68;
    v21[4] = self;
    [allDisplayedItems na_each:v21];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v4 viewWillDisappear:disappear];
  [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUCharacteristicTriggerEventViewController *)self delegate];
  [delegate triggerEditor:self didFinishWithTriggerBuilder:0];
}

- (void)_showActionEditor:(id)editor
{
  [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
  v4 = [HUTriggerActionPickerViewController alloc];
  triggerBuilder = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
  mode = [(HUCharacteristicTriggerEventViewController *)self mode];
  delegate = [(HUCharacteristicTriggerEventViewController *)self delegate];
  v10 = [(HUTriggerActionPickerViewController *)v4 initWithTriggerBuilder:triggerBuilder mode:mode delegate:delegate];

  navigationController = [(HUCharacteristicTriggerEventViewController *)self navigationController];
  v9 = [navigationController hu_pushPreloadableViewController:v10 animated:1];
}

- (void)_showSummary:(id)summary
{
  [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
  v4 = [HUTriggerSummaryViewController alloc];
  triggerBuilder = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
  mode = [(HUCharacteristicTriggerEventViewController *)self mode];
  delegate = [(HUCharacteristicTriggerEventViewController *)self delegate];
  v10 = [(HUTriggerSummaryViewController *)v4 initWithTriggerBuilder:triggerBuilder mode:mode isPresentedModally:0 delegate:delegate];

  navigationController = [(HUCharacteristicTriggerEventViewController *)self navigationController];
  v9 = [navigationController hu_pushPreloadableViewController:v10 animated:1];
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  v5 = [[HUTriggerConditionEditorItemModuleController alloc] initWithModule:moduleCopy delegate:self];

  conditionModuleController = self->_conditionModuleController;
  self->_conditionModuleController = v5;

  v7 = self->_conditionModuleController;

  return v7;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[HUItemTableViewController itemManager](self, "itemManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 serviceNameItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(itemCopy, "isEqual:", v7), v7, v6, v8) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = objc_opt_class();
  }

  else
  {
    v9 = itemCopy;
    hf_valueRangeCharacteristicTypes = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
    mainCharacteristic = [v9 mainCharacteristic];
    characteristicType = [mainCharacteristic characteristicType];
    v13 = [hf_valueRangeCharacteristicTypes containsObject:characteristicType];

    if (v13)
    {
      childItem = [v9 childItem];
      if (childItem)
      {
        v15 = objc_opt_class();
      }

      else
      {
        thresholdValueRange = [v9 thresholdValueRange];
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

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  serviceNameItem = [itemManager serviceNameItem];
  v12 = [itemCopy isEqual:serviceNameItem];

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

      v22 = [HUListContentConfigurationUtilities instructionsConfigurationForItem:itemCopy];
      [cellCopy setContentConfiguration:v22];
      clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
      [cellCopy setBackgroundConfiguration:clearConfiguration];

      goto LABEL_53;
    }

    objc_opt_class();
    v20 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    childItem = [v22 childItem];
    if (childItem)
    {

      goto LABEL_16;
    }

    thresholdValueRange = [v22 thresholdValueRange];

    if (!thresholdValueRange)
    {
LABEL_16:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = objc_opt_class();
        v25 = cellCopy;
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

          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
          [currentHandler handleFailureInFunction:v29 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v24, objc_opt_class()}];
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
        v32 = cellCopy;
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

          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
          [currentHandler2 handleFailureInFunction:v35 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v31, objc_opt_class()}];
        }

        v27 = 0;
LABEL_35:

        [v27 setHideIcon:1];
        [v27 setValueColorFollowsTintColor:1];
        hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
        [v27 setTintColor:hf_keyColor];

        goto LABEL_36;
      }

LABEL_53:

      goto LABEL_54;
    }

    v38 = objc_opt_class();
    v39 = cellCopy;
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

      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler3 handleFailureInFunction:v5 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v38, objc_opt_class()}];
    }

    v41 = 0;
LABEL_45:

    [v41 setDelegate:self];
    [v41 setItem:v22];
    v43 = [(HUCharacteristicTriggerEventViewController *)self visibleTriggerValuesForItem:v22];
    thresholdValue = [v22 thresholdValue];
    v45 = thresholdValue;
    if (thresholdValue)
    {
      v46 = thresholdValue;
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
  v14 = cellCopy;
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

    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler4 handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];
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

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = cellCopy;
      item = [v13 item];
      selectedEventOptionItem = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
      if (item == selectedEventOptionItem)
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
      v17 = itemCopy;
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      item = v18;

      objc_opt_class();
      v19 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      [v21 setItem:item];
      v22 = [(HUCharacteristicTriggerEventViewController *)self visibleTriggerValuesForItem:item];
      thresholdValue = [item thresholdValue];

      if (thresholdValue)
      {
        v24 = MEMORY[0x277CD1970];
        thresholdValue2 = [item thresholdValue];
        v26 = [v24 hf_indexOfSortedValues:v22 closestToValue:thresholdValue2];

        [v21 setSelectedIndex:v26 animated:0];
      }

      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      item = cellCopy;
      v14Item = [item item];
      selectedEventOptionItem2 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
      v29 = v14Item == selectedEventOptionItem2;
      v30 = v14Item != selectedEventOptionItem2;

      [item setHideValue:v30];
      [item setChecked:v29];
LABEL_19:
    }
  }

  v31.receiver = self;
  v31.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v31 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
}

- (void)itemManagerDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidUpdate:update];
  [(HUCharacteristicTriggerEventViewController *)self _validateNextButton];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v6 = [v5 isEqualToString:@"HUCharacteristicTriggerEventSectionIdentifierInstructions"];

  return v6;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v6 = [v5 isEqualToString:@"HUCharacteristicTriggerEventSectionIdentifierInstructions"];

  return v6;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  instructionsItem = [itemManager2 instructionsItem];

  if (v9 == instructionsItem)
  {
    v14 = 0;
  }

  else
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    serviceNameItem = [itemManager3 serviceNameItem];

    if (v9 == serviceNameItem)
    {
      v14 = [(HUCharacteristicTriggerEventViewController *)self mode]== 1;
    }

    else
    {
      v16.receiver = self;
      v16.super_class = HUCharacteristicTriggerEventViewController;
      v14 = [(HUItemTableViewController *)&v16 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
    }
  }

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = HUCharacteristicTriggerEventViewController;
  [(HUItemTableViewController *)&v24 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (!v10)
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    serviceNameItem = [itemManager2 serviceNameItem];
    v13 = [v9 isEqual:serviceNameItem];

    if (v13)
    {
      triggerBuilder = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
      v15 = [HUCharacteristicTriggerServicePickerViewController sourceForTriggerBuilder:triggerBuilder];

      v16 = [HUAccessoryEventPickerViewController alloc];
      eventBuilderItem = [(HUCharacteristicTriggerEventViewController *)self eventBuilderItem];
      triggerBuilder2 = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
      mode = [(HUCharacteristicTriggerEventViewController *)self mode];
      delegate = [(HUCharacteristicTriggerEventViewController *)self delegate];
      v21 = [(HUAccessoryEventPickerViewController *)v16 initWithEventBuilderItem:eventBuilderItem triggerBuilder:triggerBuilder2 mode:mode source:v15 delegate:delegate];

      navigationController = [(HUCharacteristicTriggerEventViewController *)self navigationController];
      v23 = [navigationController hu_pushPreloadableViewController:v21 animated:1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        [(HUCharacteristicTriggerEventViewController *)self setSelectedEventOptionItem:v9];
        [(HUCharacteristicTriggerEventViewController *)self _updateVisibleCellCheckmarks];
      }
    }
  }
}

- (id)visibleTriggerValuesForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  latestResults = [itemCopy latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14140]];
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
    visibleTriggerValues = v5;
  }

  else
  {
    visibleTriggerValues = [itemCopy visibleTriggerValues];
  }

  v9 = visibleTriggerValues;

  return v9;
}

- (void)_updateVisibleCellCheckmarks
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  tableView = [(HUCharacteristicTriggerEventViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v4 = [visibleCells countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          item = [v11 item];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            item2 = [v11 item];
            selectedEventOptionItem = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
            v30 = item2 == selectedEventOptionItem;
            v16 = v5;
            v17 = v6;
            v18 = v7;
            v19 = visibleCells;
            v20 = v8;
            v21 = item2 != selectedEventOptionItem;

            v22 = v21;
            v8 = v20;
            visibleCells = v19;
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
          item3 = [v23 item];
          objc_opt_class();
          v25 = objc_opt_isKindOfClass();

          if (v25)
          {
            item4 = [v23 item];
            selectedEventOptionItem2 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
            if (item4 == selectedEventOptionItem2)
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

      v5 = [visibleCells countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  [(HUCharacteristicTriggerEventViewController *)self _validateNextButton];
}

- (BOOL)_canContinue
{
  selectedEventOptionItem = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
  v3 = selectedEventOptionItem != 0;

  return v3;
}

- (BOOL)_canCommitTriggerBuilder
{
  _canContinue = [(HUCharacteristicTriggerEventViewController *)self _canContinue];
  if (_canContinue)
  {
    delegate = [(HUCharacteristicTriggerEventViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(HUCharacteristicTriggerEventViewController *)self delegate];
      triggerBuilder = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
      v8 = [delegate2 triggerEditor:self shouldCommitTriggerBuilder:triggerBuilder];

      LOBYTE(_canContinue) = v8;
    }

    else
    {
      LOBYTE(_canContinue) = 1;
    }
  }

  return _canContinue;
}

- (id)_commitTriggerBuilder
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:41];
  v5 = [v3 futureWithError:v4];

  if ([(HUCharacteristicTriggerEventViewController *)self _canCommitTriggerBuilder])
  {
    [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
    triggerBuilder = [(HUCharacteristicTriggerEventViewController *)self triggerBuilder];
    commitItem = [triggerBuilder commitItem];

    v5 = commitItem;
  }

  return v5;
}

- (void)_validateNextButton
{
  _canContinue = [(HUCharacteristicTriggerEventViewController *)self _canContinue];
  navigationItem = [(HUCharacteristicTriggerEventViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:_canContinue];
}

- (void)_updateTriggerBuilder
{
  selectedEventOptionItem = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];

  if (selectedEventOptionItem)
  {
    selectedEventOptionItem2 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    characteristics = [selectedEventOptionItem2 characteristics];

    selectedEventOptionItem3 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    triggerValue = [selectedEventOptionItem3 triggerValue];

    selectedEventOptionItem4 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    triggerValueRange = [selectedEventOptionItem4 triggerValueRange];

    selectedEventOptionItem5 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    thresholdValueRange = [selectedEventOptionItem5 thresholdValueRange];
    if (thresholdValueRange)
    {
      selectedEventOptionItem6 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
      triggerValueRangeByApplyingThreshold = [selectedEventOptionItem6 triggerValueRangeByApplyingThreshold];
    }

    else
    {
      triggerValueRangeByApplyingThreshold = 0;
    }

    if (triggerValueRange)
    {
      v14 = triggerValueRange;
    }

    else
    {
      v14 = triggerValueRangeByApplyingThreshold;
    }

    if (triggerValue)
    {
      v15 = triggerValue;
    }

    else
    {
      v15 = v14;
    }

    v16 = v15;
    v17 = v14;
    eventBuilderItem = [(HUCharacteristicTriggerEventViewController *)self eventBuilderItem];
    v19 = [eventBuilderItem setCharacteristics:characteristics triggerValue:v16];

    deletions = [v19 deletions];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__HUCharacteristicTriggerEventViewController__updateTriggerBuilder__block_invoke;
    v23[3] = &unk_277DBB5D8;
    v23[4] = self;
    [deletions na_each:v23];

    additions = [v19 additions];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __67__HUCharacteristicTriggerEventViewController__updateTriggerBuilder__block_invoke_2;
    v22[3] = &unk_277DBB5D8;
    v22[4] = self;
    [additions na_each:v22];
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

- (int64_t)numberOfValuesForPickerViewCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  item = [cellCopy item];

  if (objc_opt_isKindOfClass())
  {
    v6 = item;
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

- (BOOL)pickerViewCell:(id)cell canSelectValueAtIndex:(int64_t)index
{
  cellCopy = cell;
  objc_opt_class();
  item = [cellCopy item];

  if (objc_opt_isKindOfClass())
  {
    v8 = item;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(HUCharacteristicTriggerEventViewController *)self visibleTriggerValuesForItem:v9];
    v11 = [v10 objectAtIndexedSubscript:index];

    v12 = [v9 isValidThresholdValue:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)pickerViewCell:(id)cell attributedTitleForValueAtIndex:(int64_t)index
{
  cellCopy = cell;
  objc_opt_class();
  item = [cellCopy item];

  if (objc_opt_isKindOfClass())
  {
    v8 = item;
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
    if ((index & 0x8000000000000000) == 0 && v11 > index)
    {
      v13 = [v10 objectAtIndexedSubscript:index];
      v14 = objc_alloc(MEMORY[0x277CCAB48]);
      v15 = [v9 localizedListDescriptionForThresholdValue:v13];
      v12 = [v14 initWithString:v15];

      if (([v9 isValidThresholdValue:v13] & 1) == 0)
      {
        v16 = *MEMORY[0x277D740C0];
        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
        [v12 addAttribute:v16 value:systemGrayColor range:{0, objc_msgSend(v12, "length")}];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)pickerViewCell:(id)cell didSelectValueAtIndex:(int64_t)index
{
  cellCopy = cell;
  objc_opt_class();
  item = [cellCopy item];

  if (objc_opt_isKindOfClass())
  {
    v9 = item;
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
    v12 = [v11 objectAtIndexedSubscript:index];

    selectedEventOptionItem = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    [selectedEventOptionItem setThresholdValue:v12];

    [(HUCharacteristicTriggerEventViewController *)self _updateTriggerBuilder];
    itemManager = [(HUItemTableViewController *)self itemManager];
    v15 = MEMORY[0x277CBEB98];
    selectedEventOptionItem2 = [(HUCharacteristicTriggerEventViewController *)self selectedEventOptionItem];
    v17 = [v15 na_setWithSafeObject:selectedEventOptionItem2];
    v18 = [itemManager updateResultsForItems:v17 senderSelector:a2];

    v10 = v19;
  }
}

- (HUTriggerEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end