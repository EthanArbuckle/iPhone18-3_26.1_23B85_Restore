@interface HUTimerTriggerEditorViewController
- (BOOL)_canCommitTriggerBuilder;
- (BOOL)shouldHideFooterBelowSection:(int64_t)section;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUTimerTriggerEditorViewController)initWithTimerTriggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate;
- (HUTriggerEditorDelegate)delegate;
- (NSArray)selectedRecurrences;
- (NSDateComponents)selectedFireTimeComponents;
- (NSDateComponents)selectedSignificantEventOffset;
- (id)_commitTriggerBuilder;
- (id)_instructionsSectionIDs;
- (id)_localizedRecurrenceDescription;
- (id)_selectedSignificantEvent;
- (id)itemModuleControllers;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)_cancel:(id)_cancel;
- (void)_changeFireTime:(id)time;
- (void)_showActionEditor:(id)editor;
- (void)_showSummary:(id)summary;
- (void)datePickerCell:(id)cell didSelectDate:(id)date;
- (void)dayOfWeekPickerCell:(id)cell didChangeSelectedRecurrences:(id)recurrences;
- (void)setLayoutOptions:(id)options;
- (void)setSelectedDateOptionItem:(id)item;
- (void)setSelectedFireTimeComponents:(id)components;
- (void)setSelectedRecurrences:(id)recurrences;
- (void)setSelectedSignificantEventOffset:(id)offset;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)timerTriggerOffsetEditor:(id)editor didFinishWithOffset:(id)offset;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUTimerTriggerEditorViewController

- (HUTimerTriggerEditorViewController)initWithTimerTriggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate
{
  builderCopy = builder;
  delegateCopy = delegate;
  v10 = [[HUTimerTriggerEditorItemManager alloc] initWithTimerTriggerBuilder:builderCopy delegate:self];
  v48.receiver = self;
  v48.super_class = HUTimerTriggerEditorViewController;
  v11 = [(HUItemTableViewController *)&v48 initWithItemManager:v10 tableViewStyle:1];
  if (v11)
  {
    v12 = [HUTriggerConditionEditorItemModuleController alloc];
    conditionModule = [(HUTimerTriggerEditorItemManager *)v10 conditionModule];
    v14 = [(HUTriggerConditionEditorItemModuleController *)v12 initWithModule:conditionModule delegate:v11];
    conditionModuleController = v11->_conditionModuleController;
    v11->_conditionModuleController = v14;

    [(HUTimerTriggerEditorViewController *)v11 setTimerTriggerBuilder:builderCopy];
    [(HUTimerTriggerEditorViewController *)v11 setMode:mode];
    [(HUTimerTriggerEditorViewController *)v11 setDelegate:delegateCopy];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    if (!mode || ([builderCopy recurrences], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      v18 = [MEMORY[0x277CBEAB8] hf_dailyWeekdayIntervalComponentsWithCalendar:currentCalendar];
      [(HUTimerTriggerEditorViewController *)v11 setSelectedRecurrences:v18];
    }

    v19 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorTitle", @"HUTimerTriggerEditorTitle", 1);
    [(HUTimerTriggerEditorViewController *)v11 setTitle:v19];

    date = [MEMORY[0x277CBEAA8] date];
    v21 = [currentCalendar dateByAddingUnit:32 value:1 toDate:date options:0];

    v22 = [currentCalendar components:96 fromDate:v21];
    itemManager = [(HUItemTableViewController *)v11 itemManager];
    [itemManager setDefaultFireTimeComponents:v22];

    if (!mode)
    {
      triggerActionSets = [builderCopy triggerActionSets];
      hasActions = [triggerActionSets hasActions];
      v26 = &selRef__showSummary_;
      if (!hasActions)
      {
        v26 = &selRef__showActionEditor_;
      }

      v27 = *v26;

      v28 = objc_alloc(MEMORY[0x277D751E0]);
      v29 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorNextButton", @"HUTimerTriggerEditorNextButton", 1);
      v30 = [v28 initWithTitle:v29 style:2 target:v11 action:v27];
      navigationItem = [(HUTimerTriggerEditorViewController *)v11 navigationItem];
      [navigationItem setRightBarButtonItem:v30];
    }

    timeOptionItem = [(HUTimerTriggerEditorItemManager *)v10 timeOptionItem];
    timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)v11 timerTriggerBuilder];
    eventBuilder = [timerTriggerBuilder eventBuilder];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = eventBuilder;
      fireTimeComponents = [v35 fireTimeComponents];

      if (fireTimeComponents)
      {
        v47 = v21;
        fireTimeComponents2 = [v35 fireTimeComponents];
        itemManager2 = [(HUItemTableViewController *)v11 itemManager];
        [itemManager2 setDefaultFireTimeComponents:fireTimeComponents2];
LABEL_24:

        v21 = v47;
        goto LABEL_25;
      }

      fireDate = [v35 fireDate];

      if (!fireDate)
      {
LABEL_25:

        goto LABEL_26;
      }

      v47 = v21;
      fireTimeComponents2 = [v35 fireDate];
      itemManager2 = [currentCalendar components:96 fromDate:fireTimeComponents2];
      itemManager3 = [(HUItemTableViewController *)v11 itemManager];
      [itemManager3 setDefaultFireTimeComponents:itemManager2];
LABEL_23:

      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_26:
      [(HUTimerTriggerEditorViewController *)v11 setSelectedDateOptionItem:timeOptionItem];

      goto LABEL_27;
    }

    v39 = eventBuilder;
    fireTimeComponents2 = [v39 significantEvent];
    v47 = v21;
    if ([fireTimeComponents2 isEqualToString:*MEMORY[0x277CD0FA8]])
    {
      sunriseOptionItem = [(HUTimerTriggerEditorItemManager *)v10 sunriseOptionItem];
    }

    else
    {
      if (![fireTimeComponents2 isEqualToString:*MEMORY[0x277CD0FB0]])
      {
        goto LABEL_20;
      }

      sunriseOptionItem = [(HUTimerTriggerEditorItemManager *)v10 sunsetOptionItem];
    }

    v43 = sunriseOptionItem;

    timeOptionItem = v43;
LABEL_20:
    itemManager2 = [(HUItemTableViewController *)v11 itemManager];
    itemManager3 = [v39 significantEventOffset];
    if (itemManager3)
    {
      [itemManager2 setDefaultOffset:itemManager3 forSignificantEvent:fireTimeComponents2];
    }

    else
    {
      v46 = delegateCopy;
      v44 = objc_opt_new();
      [itemManager2 setDefaultOffset:v44 forSignificantEvent:fireTimeComponents2];

      delegateCopy = v46;
    }

    goto LABEL_23;
  }

LABEL_27:

  return v11;
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HUTimerTriggerEditorViewController;
  [(HUItemTableViewController *)&v8 viewWillAppear:appear];
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    view = [(HUTimerTriggerEditorViewController *)self view];
    [view frame];
    v7 = [HUGridLimitedWidthViewLayoutOptions defaultOptionsForViewSize:1 columnStyle:&unk_2824912E0 overrideSizeSubclass:v5, v6];
    [(HUTimerTriggerEditorViewController *)self setLayoutOptions:v7];
  }
}

- (void)setSelectedDateOptionItem:(id)item
{
  itemCopy = item;
  if (([itemCopy isEqual:self->_selectedDateOptionItem] & 1) == 0)
  {
    v5 = self->_selectedDateOptionItem;
    objc_storeStrong(&self->_selectedDateOptionItem, item);
    if (v5)
    {
      itemManager = [(HUItemTableViewController *)self itemManager];
      v7 = [itemManager indexPathForItem:v5];

      if (v7)
      {
        tableView = [(HUTimerTriggerEditorViewController *)self tableView];
        v9 = [tableView cellForRowAtIndexPath:v7];

        [(HUTimerTriggerEditorViewController *)self updateCell:v9 forItem:v5 indexPath:v7 animated:1];
      }

      itemManager2 = [(HUItemTableViewController *)self itemManager];
      timeOptionItem = [itemManager2 timeOptionItem];

      if (v5 == timeOptionItem)
      {
        itemManager3 = [(HUItemTableViewController *)self itemManager];
        [itemManager3 setDatePickerShown:0];
      }
    }

    if (!self->_selectedDateOptionItem)
    {
      timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
      [timerTriggerBuilder setEventBuilder:0];
LABEL_21:

      goto LABEL_22;
    }

    itemManager4 = [(HUItemTableViewController *)self itemManager];
    timerTriggerBuilder = [itemManager4 indexPathForItem:self->_selectedDateOptionItem];

    if (timerTriggerBuilder)
    {
      tableView2 = [(HUTimerTriggerEditorViewController *)self tableView];
      v16 = [tableView2 cellForRowAtIndexPath:timerTriggerBuilder];

      [(HUTimerTriggerEditorViewController *)self updateCell:v16 forItem:self->_selectedDateOptionItem indexPath:timerTriggerBuilder animated:1];
    }

    selectedDateOptionItem = self->_selectedDateOptionItem;
    itemManager5 = [(HUItemTableViewController *)self itemManager];
    timeOptionItem2 = [itemManager5 timeOptionItem];
    LODWORD(selectedDateOptionItem) = [(HFItem *)selectedDateOptionItem isEqual:timeOptionItem2];

    if (selectedDateOptionItem)
    {
      _selectedSignificantEvent = objc_alloc_init(MEMORY[0x277D14448]);
      itemManager6 = [(HUItemTableViewController *)self itemManager];
      defaultFireTimeComponents = [itemManager6 defaultFireTimeComponents];
      [_selectedSignificantEvent setFireTimeComponents:defaultFireTimeComponents];

      timerTriggerBuilder2 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
      [timerTriggerBuilder2 setEventBuilder:_selectedSignificantEvent];
    }

    else
    {
      v24 = self->_selectedDateOptionItem;
      itemManager7 = [(HUItemTableViewController *)self itemManager];
      sunriseOptionItem = [itemManager7 sunriseOptionItem];
      if ([(HFItem *)v24 isEqual:sunriseOptionItem])
      {
      }

      else
      {
        v27 = self->_selectedDateOptionItem;
        itemManager8 = [(HUItemTableViewController *)self itemManager];
        sunsetOptionItem = [itemManager8 sunsetOptionItem];
        LODWORD(v27) = [(HFItem *)v27 isEqual:sunsetOptionItem];

        if (!v27)
        {
          NSLog(&cfstr_UnhandledOptio.isa, self->_selectedDateOptionItem);
LABEL_19:
          v34 = self->_selectedDateOptionItem;
          itemManager9 = [(HUItemTableViewController *)self itemManager];
          timeOptionItem3 = [itemManager9 timeOptionItem];

          if (v34 == timeOptionItem3)
          {
            itemManager10 = [(HUItemTableViewController *)self itemManager];
            [itemManager10 setDatePickerShown:1];
          }

          goto LABEL_21;
        }
      }

      _selectedSignificantEvent = [(HUTimerTriggerEditorViewController *)self _selectedSignificantEvent];
      itemManager11 = [(HUItemTableViewController *)self itemManager];
      v31 = [itemManager11 defaultOffsetForSignificantEvent:_selectedSignificantEvent];

      v32 = objc_alloc_init(MEMORY[0x277D14AF0]);
      [v32 setSignificantEvent:_selectedSignificantEvent];
      [v32 setSignificantEventOffset:v31];
      timerTriggerBuilder3 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
      [timerTriggerBuilder3 setEventBuilder:v32];
    }

    goto LABEL_19;
  }

LABEL_22:
}

- (NSDateComponents)selectedSignificantEventOffset
{
  objc_opt_class();
  timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  eventBuilder = [timerTriggerBuilder eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = eventBuilder;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  significantEventOffset = [v6 significantEventOffset];

  if (significantEventOffset)
  {
    v8 = significantEventOffset;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  return v9;
}

- (void)setSelectedSignificantEventOffset:(id)offset
{
  offsetCopy = offset;
  objc_opt_class();
  timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  eventBuilder = [timerTriggerBuilder eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v6 = eventBuilder;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 setSignificantEventOffset:offsetCopy];
    itemManager = [(HUItemTableViewController *)self itemManager];
    [itemManager updateForSignificantEventOffsetChange];
  }
}

- (NSDateComponents)selectedFireTimeComponents
{
  objc_opt_class();
  timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  eventBuilder = [timerTriggerBuilder eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = eventBuilder;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  fireTimeComponents = [v6 fireTimeComponents];

  return fireTimeComponents;
}

- (void)setSelectedFireTimeComponents:(id)components
{
  componentsCopy = components;
  objc_opt_class();
  timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  eventBuilder = [timerTriggerBuilder eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v6 = eventBuilder;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 setFireTimeComponents:componentsCopy];
  }
}

- (NSArray)selectedRecurrences
{
  timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  recurrences = [timerTriggerBuilder recurrences];

  return recurrences;
}

- (void)setSelectedRecurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  [timerTriggerBuilder setRecurrences:recurrencesCopy];
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    layoutOptions = [(HUTimerTriggerEditorViewController *)self layoutOptions];
    v6 = [optionsCopy isEqual:layoutOptions];

    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_layoutOptions, options);
      [optionsCopy sectionTopMargin];
      v8 = v7;
      [optionsCopy sectionLeadingMargin];
      v10 = v9;
      [optionsCopy sectionBottomMargin];
      v12 = v11;
      [optionsCopy sectionTrailingMargin];
      v14 = v13;
      tableView = [(HUTimerTriggerEditorViewController *)self tableView];
      [tableView _setSectionContentInset:{v8, v10, v12, v14}];
    }
  }
}

- (void)_showActionEditor:(id)editor
{
  if ([(HUTimerTriggerEditorViewController *)self _canContinue])
  {
    v4 = [HUTriggerActionPickerViewController alloc];
    timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
    mode = [(HUTimerTriggerEditorViewController *)self mode];
    delegate = [(HUTimerTriggerEditorViewController *)self delegate];
    v10 = [(HUTriggerActionPickerViewController *)v4 initWithTriggerBuilder:timerTriggerBuilder mode:mode delegate:delegate];

    navigationController = [(HUTimerTriggerEditorViewController *)self navigationController];
    v9 = [navigationController hu_pushPreloadableViewController:v10 animated:1];
  }
}

- (void)_showSummary:(id)summary
{
  if ([(HUTimerTriggerEditorViewController *)self _canContinue])
  {
    v4 = [HUTriggerSummaryViewController alloc];
    timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
    mode = [(HUTimerTriggerEditorViewController *)self mode];
    delegate = [(HUTimerTriggerEditorViewController *)self delegate];
    v10 = [(HUTriggerSummaryViewController *)v4 initWithTriggerBuilder:timerTriggerBuilder mode:mode isPresentedModally:0 delegate:delegate];

    navigationController = [(HUTimerTriggerEditorViewController *)self navigationController];
    v9 = [navigationController hu_pushPreloadableViewController:v10 animated:1];
  }
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUTimerTriggerEditorViewController *)self delegate];
  [delegate triggerEditor:self didFinishWithTriggerBuilder:0];
}

- (void)_changeFireTime:(id)time
{
  timeCopy = time;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = timeCopy;
    calendar = [v4 calendar];
    date = [v4 date];

    v7 = [calendar components:96 fromDate:date];
    [(HUTimerTriggerEditorViewController *)self setSelectedFireTimeComponents:v7];

    selectedFireTimeComponents = [(HUTimerTriggerEditorViewController *)self selectedFireTimeComponents];
    itemManager = [(HUItemTableViewController *)self itemManager];
    [itemManager setDefaultFireTimeComponents:selectedFireTimeComponents];
  }
}

- (void)datePickerCell:(id)cell didSelectDate:(id)date
{
  v5 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v5 currentCalendar];
  v8 = [currentCalendar components:96 fromDate:dateCopy];

  [(HUTimerTriggerEditorViewController *)self setSelectedFireTimeComponents:v8];
  selectedFireTimeComponents = [(HUTimerTriggerEditorViewController *)self selectedFireTimeComponents];
  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager setDefaultFireTimeComponents:selectedFireTimeComponents];
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  conditionModuleController = [(HUTimerTriggerEditorViewController *)self conditionModuleController];
  v4 = [v2 setWithObject:conditionModuleController];

  return v4;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (-[HUItemTableViewController itemManager](self, "itemManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 dateOptionsItems], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", itemCopy), v7, v6, (v8) || (-[HUItemTableViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "datePickerItem"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10 == itemCopy) || (-[HUItemTableViewController itemManager](self, "itemManager"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "recurrencesItem"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12 == itemCopy))
  {
    v13 = objc_opt_class();
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    [v10 setDelegate:self];
    [v10 setHideTitleLabel:1];
    clearConfiguration = +[HUIconCellContentMetrics defaultMetrics];
    [clearConfiguration iconSize];
    [v10 setLeftMargin:?];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = [HUListContentConfigurationUtilities instructionsConfigurationForItem:itemCopy];
    [cellCopy setContentConfiguration:v10];
    clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
    [cellCopy setBackgroundConfiguration:clearConfiguration];
  }

LABEL_9:
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  v43[2] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  dateOptionsItems = [itemManager dateOptionsItems];
  v15 = [dateOptionsItems containsObject:itemCopy];

  if (v15)
  {
    v16 = objc_opt_class();
    v17 = cellCopy;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      selectedRecurrences = v17;
      if (v18)
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      v22 = v21 = pathCopy;
      [currentHandler handleFailureInFunction:v22 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v16, objc_opt_class()}];

      pathCopy = v21;
    }

    selectedRecurrences = 0;
LABEL_9:

    latestResults = [itemCopy latestResults];
    v24 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [selectedRecurrences setTitleText:v24];

    selectedDateOptionItem = [(HUTimerTriggerEditorViewController *)self selectedDateOptionItem];
    LODWORD(v24) = [itemCopy isEqual:selectedDateOptionItem];

    if (v24)
    {
      v40 = pathCopy;
      v41 = animatedCopy;
      [selectedRecurrences setChecked:1];
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      sunriseOptionItem = [itemManager2 sunriseOptionItem];
      v43[0] = sunriseOptionItem;
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      sunsetOptionItem = [itemManager3 sunsetOptionItem];
      v43[1] = sunsetOptionItem;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
      v31 = [v30 containsObject:itemCopy];

      if (v31)
      {
        v32 = 4;
      }

      else
      {
        v32 = 0;
      }

      [selectedRecurrences setAccessoryType:v32];
      animatedCopy = v41;
      pathCopy = v40;
    }

    else
    {
      [selectedRecurrences setChecked:0];
      [selectedRecurrences setAccessoryType:0];
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = cellCopy;
    [v33 setDelegate:self];
    v34 = MEMORY[0x277CBEB98];
    selectedRecurrences = [(HUTimerTriggerEditorViewController *)self selectedRecurrences];
    v35 = [v34 setWithArray:selectedRecurrences];
    [v33 setSelectedRecurrences:v35];

LABEL_22:
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v36 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    selectedFireTimeComponents = [(HUTimerTriggerEditorViewController *)self selectedFireTimeComponents];
    [v38 setTimeComponents:selectedFireTimeComponents];
  }

LABEL_23:
  v42.receiver = self;
  v42.super_class = HUTimerTriggerEditorViewController;
  [(HUItemTableViewController *)&v42 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  _instructionsSectionIDs = [(HUTimerTriggerEditorViewController *)self _instructionsSectionIDs];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v8 = [_instructionsSectionIDs containsObject:v7];

  return v8;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)section
{
  _instructionsSectionIDs = [(HUTimerTriggerEditorViewController *)self _instructionsSectionIDs];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v8 = [_instructionsSectionIDs containsObject:v7];

  return v8;
}

- (id)_instructionsSectionIDs
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"HUTimerTriggerEditorSectionIdentifierInstructions";
  v4[1] = @"HUTimerTriggerEditorSectionIdentifierRepeatInstructions";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (v10)
  {
    v15.receiver = self;
    v15.super_class = HUTimerTriggerEditorViewController;
    v11 = [(HUItemTableViewController *)&v15 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    dateOptionsItems = [itemManager2 dateOptionsItems];
    v11 = [dateOptionsItems containsObject:v9];
  }

  return v11;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = HUTimerTriggerEditorViewController;
  [(HUItemTableViewController *)&v11 tableView:view accessoryButtonTappedForRowWithIndexPath:path];
  v5 = [HUTimeEventOffsetEditorViewController alloc];
  _selectedSignificantEvent = [(HUTimerTriggerEditorViewController *)self _selectedSignificantEvent];
  selectedSignificantEventOffset = [(HUTimerTriggerEditorViewController *)self selectedSignificantEventOffset];
  v8 = [(HUTimeEventOffsetEditorViewController *)v5 initWithSignificantEvent:_selectedSignificantEvent currentOffset:selectedSignificantEventOffset delegate:self];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  v10 = [(UIViewController *)self hu_presentPreloadableViewController:v9 animated:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = HUTimerTriggerEditorViewController;
  [(HUItemTableViewController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (!v10)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    dateOptionsItems = [itemManager2 dateOptionsItems];
    v13 = [dateOptionsItems containsObject:v9];

    if (v13)
    {
      [(HUTimerTriggerEditorViewController *)self setSelectedDateOptionItem:v9];
    }
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v8 = [v7 isEqualToString:@"HUTimerTriggerEditorSectionIdentifierRepeat"];

  if (v8)
  {
    _localizedRecurrenceDescription = [(HUTimerTriggerEditorViewController *)self _localizedRecurrenceDescription];
  }

  else
  {
    _localizedRecurrenceDescription = 0;
  }

  return _localizedRecurrenceDescription;
}

- (void)dayOfWeekPickerCell:(id)cell didChangeSelectedRecurrences:(id)recurrences
{
  v13[1] = *MEMORY[0x277D85DE8];
  allObjects = [recurrences allObjects];
  [(HUTimerTriggerEditorViewController *)self setSelectedRecurrences:allObjects];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager sectionIndexForDisplayedSectionIdentifier:@"HUTimerTriggerEditorSectionIdentifierRepeat"];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HUTimerTriggerEditorViewController_dayOfWeekPickerCell_didChangeSelectedRecurrences___block_invoke;
  v12[3] = &unk_277DB7BA8;
  v12[4] = self;
  v12[5] = v7;
  [MEMORY[0x277D75D18] performWithoutAnimation:v12];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  itemManager3 = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager3 itemSectionForSectionIndex:v7];
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [itemManager2 reloadUIRepresentationForSections:v11 withAnimation:0];
}

void __87__HUTimerTriggerEditorViewController_dayOfWeekPickerCell_didChangeSelectedRecurrences___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  v3 = [*(a1 + 32) tableView];
  v7 = [v3 footerViewForSection:*(a1 + 40)];

  v4 = [*(a1 + 32) _localizedRecurrenceDescription];
  v5 = [v7 textLabel];
  [v5 setText:v4];

  [v7 setClipsToBounds:1];
  [v7 sizeToFit];
  v6 = [*(a1 + 32) tableView];
  [v6 endUpdates];
}

- (void)timerTriggerOffsetEditor:(id)editor didFinishWithOffset:(id)offset
{
  offsetCopy = offset;
  itemManager = [(HUItemTableViewController *)self itemManager];
  _selectedSignificantEvent = [(HUTimerTriggerEditorViewController *)self _selectedSignificantEvent];
  [itemManager setDefaultOffset:offsetCopy forSignificantEvent:_selectedSignificantEvent];

  [(HUTimerTriggerEditorViewController *)self setSelectedSignificantEventOffset:offsetCopy];

  [(HUTimerTriggerEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)_localizedRecurrenceDescription
{
  v2 = MEMORY[0x277CD1EB0];
  selectedRecurrences = [(HUTimerTriggerEditorViewController *)self selectedRecurrences];
  v4 = [v2 hf_recurrenceNaturalLanguageStringWithRecurrences:selectedRecurrences];

  return v4;
}

- (BOOL)_canCommitTriggerBuilder
{
  delegate = [(HUTimerTriggerEditorViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(HUTimerTriggerEditorViewController *)self delegate];
  timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  v7 = [delegate2 triggerEditor:self shouldCommitTriggerBuilder:timerTriggerBuilder];

  return v7;
}

- (id)_commitTriggerBuilder
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:41];
  v5 = [v3 futureWithError:v4];

  if ([(HUTimerTriggerEditorViewController *)self _canCommitTriggerBuilder]&& [(HUTimerTriggerEditorViewController *)self _canContinue])
  {
    timerTriggerBuilder = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
    commitItem = [timerTriggerBuilder commitItem];

    v8 = [commitItem addFailureBlock:&__block_literal_global_81];
    v5 = commitItem;
  }

  return v5;
}

void __59__HUTimerTriggerEditorViewController__commitTriggerBuilder__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

- (id)_selectedSignificantEvent
{
  selectedDateOptionItem = [(HUTimerTriggerEditorViewController *)self selectedDateOptionItem];
  itemManager = [(HUItemTableViewController *)self itemManager];
  sunriseOptionItem = [itemManager sunriseOptionItem];
  v6 = [selectedDateOptionItem isEqual:sunriseOptionItem];

  if (v6)
  {
    v7 = MEMORY[0x277CD0FA8];
LABEL_5:
    v12 = *v7;
    goto LABEL_7;
  }

  selectedDateOptionItem2 = [(HUTimerTriggerEditorViewController *)self selectedDateOptionItem];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  sunsetOptionItem = [itemManager2 sunsetOptionItem];
  v11 = [selectedDateOptionItem2 isEqual:sunsetOptionItem];

  if (v11)
  {
    v7 = MEMORY[0x277CD0FB0];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (HUTriggerEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end