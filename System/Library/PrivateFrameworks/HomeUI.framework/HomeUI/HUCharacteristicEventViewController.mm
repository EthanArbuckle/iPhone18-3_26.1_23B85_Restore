@interface HUCharacteristicEventViewController
- (BOOL)_canContinue;
- (BOOL)pickerViewCell:(id)cell canSelectValueAtIndex:(int64_t)index;
- (BOOL)shouldHideFooterBelowSection:(int64_t)section;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUCharacteristicEventViewController)initWithEventBuilderItem:(id)item triggerBuilder:(id)builder;
- (HUCharacteristicEventViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier;
- (id)_commitTriggerBuilder;
- (id)itemModuleControllers;
- (id)pickerViewCell:(id)cell attributedTitleForValueAtIndex:(int64_t)index;
- (int64_t)numberOfValuesForPickerViewCell:(id)cell;
- (void)_doneButtonPressed:(id)pressed;
- (void)_nextButtonPressed:(id)pressed;
- (void)_updateTriggerBuilder;
- (void)_updateVisibleCellCheckmarks;
- (void)_validateNextButton;
- (void)itemManagerDidUpdate:(id)update;
- (void)pickerViewCell:(id)cell didSelectValueAtIndex:(int64_t)index;
- (void)setSelectedEventOptionItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUCharacteristicEventViewController

- (HUCharacteristicEventViewController)initWithEventBuilderItem:(id)item triggerBuilder:(id)builder
{
  itemCopy = item;
  builderCopy = builder;
  v8 = [[HUCharacteristicEventItemManager alloc] initWithTriggerBuilder:builderCopy eventBuilderItem:itemCopy delegate:self];
  v16.receiver = self;
  v16.super_class = HUCharacteristicEventViewController;
  v9 = [(HUItemTableViewController *)&v16 initWithItemManager:v8 tableViewStyle:1];
  if (v9)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v10 = [HUTriggerConditionEditorItemModuleController alloc];
      conditionModule = [(HUCharacteristicEventItemManager *)v8 conditionModule];
      v12 = [(HUTriggerConditionEditorItemModuleController *)v10 initWithModule:conditionModule delegate:v9];
      conditionModuleController = v9->_conditionModuleController;
      v9->_conditionModuleController = v12;
    }

    [(HUCharacteristicEventViewController *)v9 setEventBuilderItem:itemCopy];
    [(HUCharacteristicEventViewController *)v9 setTriggerBuilder:builderCopy];
    v14 = _HULocalizedStringWithDefaultValue(@"HUCharacteristicEventOptionTitle", @"HUCharacteristicEventOptionTitle", 1);
    [(HUCharacteristicEventViewController *)v9 setTitle:v14];
  }

  return v9;
}

- (HUCharacteristicEventViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier
{
  flowCopy = flow;
  identifierCopy = identifier;
  eventBuilderItem = [flowCopy eventBuilderItem];
  triggerBuilder = [flowCopy triggerBuilder];
  v10 = [(HUCharacteristicEventViewController *)self initWithEventBuilderItem:eventBuilderItem triggerBuilder:triggerBuilder];

  if (v10)
  {
    [(HUCharacteristicEventViewController *)v10 setFlow:flowCopy];
    [(HUCharacteristicEventViewController *)v10 setStepIdentifier:identifierCopy];
  }

  return v10;
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

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  conditionModuleController = [(HUCharacteristicEventViewController *)self conditionModuleController];
  v4 = [v2 na_setWithSafeObject:conditionModuleController];

  return v4;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v15 viewDidLoad];
  flow = [(HUCharacteristicEventViewController *)self flow];
  stepIdentifier = [(HUCharacteristicEventViewController *)self stepIdentifier];
  v5 = [flow shouldShowDoneButtonForStep:stepIdentifier];

  if (v5)
  {
    v6 = &selRef__doneButtonPressed_;
    v7 = @"HUDoneTitle";
LABEL_5:
    v11 = objc_alloc(MEMORY[0x277D751E0]);
    v12 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
    v13 = [v11 initWithTitle:v12 style:2 target:self action:*v6];
    navigationItem = [(HUCharacteristicEventViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v13];

    goto LABEL_6;
  }

  flow2 = [(HUCharacteristicEventViewController *)self flow];
  stepIdentifier2 = [(HUCharacteristicEventViewController *)self stepIdentifier];
  v10 = [flow2 shouldShowNextButtonForStep:stepIdentifier2];

  if (v10)
  {
    v6 = &selRef__nextButtonPressed_;
    v7 = @"HUTimerTriggerEditorNextButton";
    goto LABEL_5;
  }

LABEL_6:
  [(HUCharacteristicEventViewController *)self _validateNextButton];
}

- (void)viewWillAppear:(BOOL)appear
{
  v22.receiver = self;
  v22.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v22 viewWillAppear:appear];
  eventBuilderItem = [(HUCharacteristicEventViewController *)self eventBuilderItem];
  triggerBuilder = [(HUCharacteristicEventViewController *)self triggerBuilder];
  home = [triggerBuilder home];
  v8 = [HUCharacteristicEventItemManager serviceVendorItemForEventBuilderItem:eventBuilderItem inHome:home];

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

    [(HUCharacteristicEventViewController *)self setSelectedEventOptionItem:0];
  }

  selectedEventOptionItem = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];

  if (!selectedEventOptionItem)
  {
    itemManager5 = [(HUItemTableViewController *)self itemManager];
    allDisplayedItems = [itemManager5 allDisplayedItems];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__HUCharacteristicEventViewController_viewWillAppear___block_invoke;
    v21[3] = &unk_277DBAF68;
    v21[4] = self;
    [allDisplayedItems na_each:v21];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v4 viewWillDisappear:disappear];
  [(HUCharacteristicEventViewController *)self _updateTriggerBuilder];
}

- (void)_nextButtonPressed:(id)pressed
{
  flow = [(HUCharacteristicEventViewController *)self flow];
  stepIdentifier = [(HUCharacteristicEventViewController *)self stepIdentifier];
  [flow viewController:self didFinishStepWithIdentifier:stepIdentifier];
}

- (void)_doneButtonPressed:(id)pressed
{
  flow = [(HUCharacteristicEventViewController *)self flow];
  stepIdentifier = [(HUCharacteristicEventViewController *)self stepIdentifier];
  [flow viewController:self didFinishStepWithIdentifier:stepIdentifier];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[HUItemTableViewController itemManager](self, "itemManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 serviceNameItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(itemCopy, "isEqual:", v7), v7, v6, v8) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = objc_opt_class();
  }

  else
  {
    v9 = itemCopy;
    childItem = [v9 childItem];
    if (childItem)
    {
      v11 = objc_opt_class();
    }

    else
    {
      thresholdValueRange = [v9 thresholdValueRange];
      v11 = objc_opt_class();
    }
  }

  v12 = v11;

  return v11;
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
      goto LABEL_44;
    }

    objc_opt_class();
    v23 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    childItem = [v25 childItem];
    if (childItem)
    {

      goto LABEL_19;
    }

    thresholdValueRange = [v25 thresholdValueRange];

    if (!thresholdValueRange)
    {
LABEL_19:
      v27 = objc_opt_class();
      v28 = cellCopy;
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

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
        [currentHandler handleFailureInFunction:v32 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v27, objc_opt_class()}];
      }

      v30 = 0;
LABEL_26:

      [v30 setHideDescription:1];
      [v30 setHideIcon:1];

LABEL_43:
      goto LABEL_44;
    }

    v34 = objc_opt_class();
    v35 = cellCopy;
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

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler2 handleFailureInFunction:v5 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v34, objc_opt_class()}];
    }

    v37 = 0;
LABEL_35:

    [v37 setDelegate:self];
    [v37 setItem:v25];
    validTriggerValues = [v25 validTriggerValues];
    thresholdValue = [v25 thresholdValue];
    v41 = thresholdValue;
    if (thresholdValue)
    {
      v42 = thresholdValue;
    }

    else
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __67__HUCharacteristicEventViewController_setupCell_forItem_indexPath___block_invoke;
      v43[3] = &unk_277DBEC28;
      v5 = &v44;
      v44 = v25;
      v42 = [validTriggerValues na_firstObjectPassingTest:v43];
    }

    [v25 setThresholdValue:v42];
    if (v42)
    {
      [v37 setSelectedIndex:objc_msgSend(MEMORY[0x277CD1970] animated:{"hf_indexOfSortedValues:closestToValue:", validTriggerValues, v42), 0}];
    }

    if (!v41)
    {
    }

    goto LABEL_43;
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

    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler3 handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];
  }

  v16 = 0;
LABEL_9:

  [v16 setIconDisplayStyle:1];
  v19 = +[HUIconCellContentMetrics compactMetrics];
  [v16 setContentMetrics:v19];

  [v16 setDisableContinuousIconAnimation:1];
  flow = [(HUCharacteristicEventViewController *)self flow];
  v21 = [flow characteristicEditorAllowChangingCharacteristic:self];

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
      selectedEventOptionItem = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
      if (item == selectedEventOptionItem)
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

      selectedEventOptionItem = v20;

      [selectedEventOptionItem setItem:item];
      thresholdValue = [item thresholdValue];

      if (thresholdValue)
      {
        validTriggerValues = [item validTriggerValues];
        thresholdValue2 = [item thresholdValue];
        v24 = [validTriggerValues indexOfObject:thresholdValue2];

        [selectedEventOptionItem setSelectedIndex:v24 animated:0];
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  v25.receiver = self;
  v25.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v25 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
}

- (void)itemManagerDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidUpdate:update];
  [(HUCharacteristicEventViewController *)self _validateNextButton];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v6 = [v5 isEqualToString:@"HUCharacteristicEventSectionIdentifierInstructions"];

  return v6;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v6 = [v5 isEqualToString:@"HUCharacteristicEventSectionIdentifierInstructions"];

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
      flow = [(HUCharacteristicEventViewController *)self flow];
      v14 = [flow characteristicEditorAllowChangingCharacteristic:self];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = HUCharacteristicEventViewController;
      v14 = [(HUItemTableViewController *)&v17 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
    }
  }

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = HUCharacteristicEventViewController;
  [(HUItemTableViewController *)&v15 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
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
      flow = [(HUCharacteristicEventViewController *)self flow];
      [flow characteristicEditorDidSelectToChangeCharacteristic:self];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
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
  tableView = [(HUCharacteristicEventViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          item = [v10 item];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            item2 = [v10 item];
            selectedEventOptionItem = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
            if (item2 == selectedEventOptionItem)
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

      v6 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [(HUCharacteristicEventViewController *)self _validateNextButton];
}

- (BOOL)_canContinue
{
  selectedEventOptionItem = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
  v3 = selectedEventOptionItem != 0;

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
    triggerBuilder = [(HUCharacteristicEventViewController *)self triggerBuilder];
    commitItem = [triggerBuilder commitItem];

    v5 = commitItem;
  }

  return v5;
}

- (void)_validateNextButton
{
  _canContinue = [(HUCharacteristicEventViewController *)self _canContinue];
  navigationItem = [(HUCharacteristicEventViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:_canContinue];
}

- (void)_updateTriggerBuilder
{
  selectedEventOptionItem = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];

  if (selectedEventOptionItem)
  {
    selectedEventOptionItem2 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    characteristics = [selectedEventOptionItem2 characteristics];

    selectedEventOptionItem3 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    triggerValue = [selectedEventOptionItem3 triggerValue];

    selectedEventOptionItem4 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    triggerValueRange = [selectedEventOptionItem4 triggerValueRange];

    selectedEventOptionItem5 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    thresholdValueRange = [selectedEventOptionItem5 thresholdValueRange];
    if (thresholdValueRange)
    {
      selectedEventOptionItem6 = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
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

    v15 = v14;
    eventBuilderItem = [(HUCharacteristicEventViewController *)self eventBuilderItem];
    v17 = eventBuilderItem;
    if (triggerValue)
    {
      v18 = triggerValue;
    }

    else
    {
      v18 = v15;
    }

    v19 = [eventBuilderItem setCharacteristics:characteristics triggerValue:v18];

    flow = [(HUCharacteristicEventViewController *)self flow];
    if (!flow || (v21 = flow, -[HUCharacteristicEventViewController flow](self, "flow"), v22 = objc_claimAutoreleasedReturnValue(), -[HUCharacteristicEventViewController stepIdentifier](self, "stepIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v22 shouldSaveEventBuildersToTriggerBuilderForStep:v23], v23, v22, v21, v24))
    {
      deletions = [v19 deletions];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __60__HUCharacteristicEventViewController__updateTriggerBuilder__block_invoke;
      v28[3] = &unk_277DBB5D8;
      v28[4] = self;
      [deletions na_each:v28];

      additions = [v19 additions];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __60__HUCharacteristicEventViewController__updateTriggerBuilder__block_invoke_2;
      v27[3] = &unk_277DBB5D8;
      v27[4] = self;
      [additions na_each:v27];
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

- (int64_t)numberOfValuesForPickerViewCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  item = [cellCopy item];

  if (objc_opt_isKindOfClass())
  {
    v5 = item;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    validTriggerValues = [v6 validTriggerValues];
    v8 = [validTriggerValues count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)pickerViewCell:(id)cell canSelectValueAtIndex:(int64_t)index
{
  cellCopy = cell;
  objc_opt_class();
  item = [cellCopy item];

  if (objc_opt_isKindOfClass())
  {
    v7 = item;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    validTriggerValues = [v8 validTriggerValues];
    v10 = [validTriggerValues objectAtIndexedSubscript:index];

    v11 = [v8 isValidThresholdValue:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)pickerViewCell:(id)cell attributedTitleForValueAtIndex:(int64_t)index
{
  cellCopy = cell;
  objc_opt_class();
  item = [cellCopy item];

  if (objc_opt_isKindOfClass())
  {
    v7 = item;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    validTriggerValues = [v8 validTriggerValues];
    v10 = [validTriggerValues objectAtIndexedSubscript:index];

    v11 = objc_alloc(MEMORY[0x277CCAB48]);
    v12 = [v8 localizedListDescriptionForThresholdValue:v10];
    v13 = [v11 initWithString:v12];

    if (([v8 isValidThresholdValue:v10] & 1) == 0)
    {
      v14 = *MEMORY[0x277D740C0];
      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      [v13 addAttribute:v14 value:systemGrayColor range:{0, objc_msgSend(v13, "length")}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)pickerViewCell:(id)cell didSelectValueAtIndex:(int64_t)index
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

  v13 = v8;

  v9 = v13;
  if (v13)
  {
    validTriggerValues = [v13 validTriggerValues];
    v11 = [validTriggerValues objectAtIndexedSubscript:index];

    selectedEventOptionItem = [(HUCharacteristicEventViewController *)self selectedEventOptionItem];
    [selectedEventOptionItem setThresholdValue:v11];

    [(HUCharacteristicEventViewController *)self _updateTriggerBuilder];
    v9 = v13;
  }
}

@end