@interface HUTimeEventEditorViewController
- (BOOL)shouldHideFooterBelowSection:(int64_t)section;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUTimeEventEditorViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier;
- (HUTimeEventEditorViewController)initWithTimeEvent:(id)event triggerBuilder:(id)builder;
- (NSArray)selectedRecurrences;
- (NSDateComponents)selectedFireTimeComponents;
- (NSDateComponents)selectedSignificantEventOffset;
- (id)_commitTriggerBuilder;
- (id)_instructionsSectionIDs;
- (id)_localizedRecurrenceDescription;
- (id)_selectedSignificantEvent;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)_changeFireTime:(id)time;
- (void)_doneButtonPressed:(id)pressed;
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
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUTimeEventEditorViewController

- (HUTimeEventEditorViewController)initWithTimeEvent:(id)event triggerBuilder:(id)builder
{
  builderCopy = builder;
  eventCopy = event;
  v9 = [[HUTimeEventEditorItemManager alloc] initWithTimeEvent:eventCopy triggerBuilder:builderCopy delegate:self];

  v19.receiver = self;
  v19.super_class = HUTimeEventEditorViewController;
  v10 = [(HUItemTableViewController *)&v19 initWithItemManager:v9 tableViewStyle:1];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_triggerBuilder, builder);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorTitle", @"HUTimerTriggerEditorTitle", 1);
    [(HUTimeEventEditorViewController *)v11 setTitle:v13];

    date = [MEMORY[0x277CBEAA8] date];
    v15 = [currentCalendar dateByAddingUnit:32 value:1 toDate:date options:0];

    v16 = [currentCalendar components:96 fromDate:v15];
    itemManager = [(HUItemTableViewController *)v11 itemManager];
    [itemManager setDefaultFireTimeComponents:v16];
  }

  return v11;
}

- (HUTimeEventEditorViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier
{
  flowCopy = flow;
  identifierCopy = identifier;
  eventBuilderItem = [flowCopy eventBuilderItem];
  timeEventBuilder = [eventBuilderItem timeEventBuilder];
  triggerBuilder = [flowCopy triggerBuilder];
  v11 = [(HUTimeEventEditorViewController *)self initWithTimeEvent:timeEventBuilder triggerBuilder:triggerBuilder];

  if (v11)
  {
    [(HUTimeEventEditorViewController *)v11 setFlow:flowCopy];
    [(HUTimeEventEditorViewController *)v11 setStepIdentifier:identifierCopy];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    flow = [(HUTimeEventEditorViewController *)v11 flow];
    originalEventBuilderItem = [flow originalEventBuilderItem];

    if (!originalEventBuilderItem)
    {
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v21[3] = 1;
      v15 = MEMORY[0x277CBEA60];
      weekdaySymbols = [currentCalendar weekdaySymbols];
      v17 = [weekdaySymbols count];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __63__HUTimeEventEditorViewController_initWithFlow_stepIdentifier___block_invoke;
      v20[3] = &unk_277DB7240;
      v20[4] = v21;
      v18 = [v15 na_arrayByRepeatingWithCount:v17 generatorBlock:v20];
      [(HUTimeEventEditorViewController *)v11 setSelectedRecurrences:v18];

      _Block_object_dispose(v21, 8);
    }
  }

  return v11;
}

id __63__HUTimeEventEditorViewController_initWithFlow_stepIdentifier___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v2 setWeekday:(*(*(*(a1 + 32) + 8) + 24))++];

  return v2;
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v32 viewDidLoad];
  flow = [(HUTimeEventEditorViewController *)self flow];
  stepIdentifier = [(HUTimeEventEditorViewController *)self stepIdentifier];
  v5 = [flow shouldShowDoneButtonForStep:stepIdentifier];

  if (v5)
  {
    v6 = &selRef__doneButtonPressed_;
    v7 = @"HUDoneTitle";
  }

  else
  {
    flow2 = [(HUTimeEventEditorViewController *)self flow];
    stepIdentifier2 = [(HUTimeEventEditorViewController *)self stepIdentifier];
    v10 = [flow2 shouldShowNextButtonForStep:stepIdentifier2];

    if (!v10)
    {
      goto LABEL_6;
    }

    v6 = &selRef__nextButtonPressed_;
    v7 = @"HUTimerTriggerEditorNextButton";
  }

  v11 = objc_alloc(MEMORY[0x277D751E0]);
  v12 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
  v13 = [v11 initWithTitle:v12 style:2 target:self action:*v6];
  navigationItem = [(HUTimeEventEditorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v13];

LABEL_6:
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  itemManager = [(HUItemTableViewController *)self itemManager];
  timeOptionItem = [itemManager timeOptionItem];

  timeEvent = [(HUTimeEventEditorViewController *)self timeEvent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  timeEvent2 = [(HUTimeEventEditorViewController *)self timeEvent];
  timeEvent3 = timeEvent2;
  if (isKindOfClass)
  {
    fireTimeComponents = [timeEvent2 fireTimeComponents];

    if (fireTimeComponents)
    {
      fireTimeComponents2 = [timeEvent3 fireTimeComponents];
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      [itemManager2 setDefaultFireTimeComponents:fireTimeComponents2];
LABEL_21:

      goto LABEL_22;
    }

    fireDate = [timeEvent3 fireDate];

    if (!fireDate)
    {
LABEL_22:

      goto LABEL_23;
    }

    fireTimeComponents2 = [timeEvent3 fireDate];
    itemManager2 = [currentCalendar components:96 fromDate:fireTimeComponents2];
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    [itemManager3 setDefaultFireTimeComponents:itemManager2];
LABEL_20:

    goto LABEL_21;
  }

  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v25)
  {
    timeEvent3 = [(HUTimeEventEditorViewController *)self timeEvent];
    fireTimeComponents2 = [timeEvent3 significantEvent];
    if ([fireTimeComponents2 isEqualToString:*MEMORY[0x277CD0FA8]])
    {
      itemManager4 = [(HUItemTableViewController *)self itemManager];
      sunriseOptionItem = [itemManager4 sunriseOptionItem];
    }

    else
    {
      if (![fireTimeComponents2 isEqualToString:*MEMORY[0x277CD0FB0]])
      {
        goto LABEL_17;
      }

      itemManager4 = [(HUItemTableViewController *)self itemManager];
      sunriseOptionItem = [itemManager4 sunsetOptionItem];
    }

    v30 = sunriseOptionItem;

    timeOptionItem = v30;
LABEL_17:
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    itemManager3 = [timeEvent3 significantEventOffset];
    if (itemManager3)
    {
      [itemManager2 setDefaultOffset:itemManager3 forSignificantEvent:fireTimeComponents2];
    }

    else
    {
      v31 = objc_opt_new();
      [itemManager2 setDefaultOffset:v31 forSignificantEvent:fireTimeComponents2];
    }

    goto LABEL_20;
  }

LABEL_23:
  [(HUTimeEventEditorViewController *)self setSelectedDateOptionItem:timeOptionItem];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v8 viewWillAppear:appear];
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    view = [(HUTimeEventEditorViewController *)self view];
    [view frame];
    v7 = [HUGridLimitedWidthViewLayoutOptions defaultOptionsForViewSize:1 columnStyle:&unk_2824911A8 overrideSizeSubclass:v5, v6];
    [(HUTimeEventEditorViewController *)self setLayoutOptions:v7];
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v15 viewDidLayoutSubviews];
  navigationController = [(HUTimeEventEditorViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v6 = v5;

  tableView = [(HUTimeEventEditorViewController *)self tableView];
  [tableView contentInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  tableView2 = [(HUTimeEventEditorViewController *)self tableView];
  [tableView2 setContentInset:{v6, v9, v11, v13}];
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
        tableView = [(HUTimeEventEditorViewController *)self tableView];
        v9 = [tableView cellForRowAtIndexPath:v7];

        [(HUTimeEventEditorViewController *)self updateCell:v9 forItem:v5 indexPath:v7 animated:1];
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
      triggerBuilder = [(HUTimeEventEditorViewController *)self triggerBuilder];
      timeEvent = [(HUTimeEventEditorViewController *)self timeEvent];
      [triggerBuilder removeEventBuilder:timeEvent];

      [(HUTimeEventEditorViewController *)self setTimeEvent:0];
LABEL_24:

      goto LABEL_25;
    }

    itemManager4 = [(HUItemTableViewController *)self itemManager];
    v14 = [itemManager4 indexPathForItem:self->_selectedDateOptionItem];

    if (v14)
    {
      tableView2 = [(HUTimeEventEditorViewController *)self tableView];
      v16 = [tableView2 cellForRowAtIndexPath:v14];

      if (v16)
      {
        [(HUTimeEventEditorViewController *)self updateCell:v16 forItem:self->_selectedDateOptionItem indexPath:v14 animated:1];
      }
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

      triggerBuilder2 = [(HUTimeEventEditorViewController *)self triggerBuilder];
      timeEvent2 = [(HUTimeEventEditorViewController *)self timeEvent];
      [triggerBuilder2 removeEventBuilder:timeEvent2];

      triggerBuilder3 = [(HUTimeEventEditorViewController *)self triggerBuilder];
      [triggerBuilder3 addEventBuilder:_selectedSignificantEvent];

      [(HUTimeEventEditorViewController *)self setTimeEvent:_selectedSignificantEvent];
    }

    else
    {
      v28 = self->_selectedDateOptionItem;
      itemManager7 = [(HUItemTableViewController *)self itemManager];
      sunriseOptionItem = [itemManager7 sunriseOptionItem];
      if ([(HFItem *)v28 isEqual:sunriseOptionItem])
      {
      }

      else
      {
        v31 = self->_selectedDateOptionItem;
        itemManager8 = [(HUItemTableViewController *)self itemManager];
        sunsetOptionItem = [itemManager8 sunsetOptionItem];
        LODWORD(v31) = [(HFItem *)v31 isEqual:sunsetOptionItem];

        if (!v31)
        {
          NSLog(&cfstr_UnhandledOptio.isa, self->_selectedDateOptionItem);
          goto LABEL_21;
        }
      }

      _selectedSignificantEvent = [(HUTimeEventEditorViewController *)self _selectedSignificantEvent];
      itemManager9 = [(HUItemTableViewController *)self itemManager];
      v35 = [itemManager9 defaultOffsetForSignificantEvent:_selectedSignificantEvent];

      v36 = objc_alloc_init(MEMORY[0x277D14AF0]);
      [v36 setSignificantEvent:_selectedSignificantEvent];
      [v36 setSignificantEventOffset:v35];
      triggerBuilder4 = [(HUTimeEventEditorViewController *)self triggerBuilder];
      timeEvent3 = [(HUTimeEventEditorViewController *)self timeEvent];
      [triggerBuilder4 removeEventBuilder:timeEvent3];

      triggerBuilder5 = [(HUTimeEventEditorViewController *)self triggerBuilder];
      [triggerBuilder5 addEventBuilder:v36];

      [(HUTimeEventEditorViewController *)self setTimeEvent:v36];
    }

LABEL_21:
    v40 = self->_selectedDateOptionItem;
    itemManager10 = [(HUItemTableViewController *)self itemManager];
    timeOptionItem3 = [itemManager10 timeOptionItem];

    if (v40 == timeOptionItem3)
    {
      itemManager11 = [(HUItemTableViewController *)self itemManager];
      [itemManager11 setDatePickerShown:1];
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (NSDateComponents)selectedSignificantEventOffset
{
  objc_opt_class();
  timeEvent = [(HUTimeEventEditorViewController *)self timeEvent];
  if (objc_opt_isKindOfClass())
  {
    v4 = timeEvent;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  significantEventOffset = [v5 significantEventOffset];

  if (significantEventOffset)
  {
    v7 = significantEventOffset;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

- (void)setSelectedSignificantEventOffset:(id)offset
{
  offsetCopy = offset;
  objc_opt_class();
  timeEvent = [(HUTimeEventEditorViewController *)self timeEvent];
  if (objc_opt_isKindOfClass())
  {
    v5 = timeEvent;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 setSignificantEventOffset:offsetCopy];
    itemManager = [(HUItemTableViewController *)self itemManager];
    [itemManager updateForSignificantEventOffsetChange];
  }
}

- (NSDateComponents)selectedFireTimeComponents
{
  objc_opt_class();
  timeEvent = [(HUTimeEventEditorViewController *)self timeEvent];
  if (objc_opt_isKindOfClass())
  {
    v4 = timeEvent;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  fireTimeComponents = [v5 fireTimeComponents];

  return fireTimeComponents;
}

- (void)setSelectedFireTimeComponents:(id)components
{
  componentsCopy = components;
  objc_opt_class();
  timeEvent = [(HUTimeEventEditorViewController *)self timeEvent];
  if (objc_opt_isKindOfClass())
  {
    v5 = timeEvent;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 setFireTimeComponents:componentsCopy];
  }
}

- (NSArray)selectedRecurrences
{
  triggerBuilder = [(HUTimeEventEditorViewController *)self triggerBuilder];
  recurrences = [triggerBuilder recurrences];

  return recurrences;
}

- (void)setSelectedRecurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  triggerBuilder = [(HUTimeEventEditorViewController *)self triggerBuilder];
  [triggerBuilder setRecurrences:recurrencesCopy];
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    layoutOptions = [(HUTimeEventEditorViewController *)self layoutOptions];
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
      tableView = [(HUTimeEventEditorViewController *)self tableView];
      [tableView _setSectionContentInset:{v8, v10, v12, v14}];
    }
  }
}

- (void)_doneButtonPressed:(id)pressed
{
  timeEvent = [(HUTimeEventEditorViewController *)self timeEvent];
  flow = [(HUTimeEventEditorViewController *)self flow];
  eventBuilderItem = [flow eventBuilderItem];
  [eventBuilderItem setTimeEventBuilder:timeEvent];

  flow2 = [(HUTimeEventEditorViewController *)self flow];
  stepIdentifier = [(HUTimeEventEditorViewController *)self stepIdentifier];
  [flow2 viewController:self didFinishStepWithIdentifier:stepIdentifier];
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
    [(HUTimeEventEditorViewController *)self setSelectedFireTimeComponents:v7];

    selectedFireTimeComponents = [(HUTimeEventEditorViewController *)self selectedFireTimeComponents];
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

  [(HUTimeEventEditorViewController *)self setSelectedFireTimeComponents:v8];
  selectedFireTimeComponents = [(HUTimeEventEditorViewController *)self selectedFireTimeComponents];
  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager setDefaultFireTimeComponents:selectedFireTimeComponents];
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
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v8 setDelegate:self];
    [v8 setHideTitleLabel:1];
    v9 = +[HUIconCellContentMetrics defaultMetrics];
    [v9 iconSize];
    [v8 setLeftMargin:?];
  }
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

    selectedDateOptionItem = [(HUTimeEventEditorViewController *)self selectedDateOptionItem];
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
    selectedRecurrences = [(HUTimeEventEditorViewController *)self selectedRecurrences];
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

    selectedFireTimeComponents = [(HUTimeEventEditorViewController *)self selectedFireTimeComponents];
    [v38 setTimeComponents:selectedFireTimeComponents];
  }

LABEL_23:
  v42.receiver = self;
  v42.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v42 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  _instructionsSectionIDs = [(HUTimeEventEditorViewController *)self _instructionsSectionIDs];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v8 = [_instructionsSectionIDs containsObject:v7];

  return v8;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)section
{
  _instructionsSectionIDs = [(HUTimeEventEditorViewController *)self _instructionsSectionIDs];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v8 = [_instructionsSectionIDs containsObject:v7];

  return v8;
}

- (id)_instructionsSectionIDs
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"HUTimeEventEditorSectionIdentifierInstructions";
  v4[1] = @"HUTimeEventEditorSectionIdentifierRepeatInstructions";
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
    v15.super_class = HUTimeEventEditorViewController;
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
  v11.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v11 tableView:view accessoryButtonTappedForRowWithIndexPath:path];
  v5 = [HUTimeEventOffsetEditorViewController alloc];
  _selectedSignificantEvent = [(HUTimeEventEditorViewController *)self _selectedSignificantEvent];
  selectedSignificantEventOffset = [(HUTimeEventEditorViewController *)self selectedSignificantEventOffset];
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
  v14.super_class = HUTimeEventEditorViewController;
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
      [(HUTimeEventEditorViewController *)self setSelectedDateOptionItem:v9];
    }
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v8 = [v7 isEqualToString:@"HUTimeEventEditorSectionIdentifierRepeat"];

  if (v8)
  {
    _localizedRecurrenceDescription = [(HUTimeEventEditorViewController *)self _localizedRecurrenceDescription];
  }

  else
  {
    _localizedRecurrenceDescription = 0;
  }

  return _localizedRecurrenceDescription;
}

- (void)dayOfWeekPickerCell:(id)cell didChangeSelectedRecurrences:(id)recurrences
{
  allObjects = [recurrences allObjects];
  [(HUTimeEventEditorViewController *)self setSelectedRecurrences:allObjects];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__HUTimeEventEditorViewController_dayOfWeekPickerCell_didChangeSelectedRecurrences___block_invoke;
  v6[3] = &unk_277DB8488;
  v6[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v6];
}

void __84__HUTimeEventEditorViewController_dayOfWeekPickerCell_didChangeSelectedRecurrences___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  v3 = [*(a1 + 32) itemManager];
  v4 = [v3 sectionIndexForDisplayedSectionIdentifier:@"HUTimeEventEditorSectionIdentifierRepeat"];

  v5 = [*(a1 + 32) tableView];
  v9 = [v5 footerViewForSection:v4];

  v6 = [*(a1 + 32) _localizedRecurrenceDescription];
  v7 = [v9 textLabel];
  [v7 setText:v6];

  [v9 sizeToFit];
  [v9 setClipsToBounds:1];
  v8 = [*(a1 + 32) tableView];
  [v8 endUpdates];
}

- (void)timerTriggerOffsetEditor:(id)editor didFinishWithOffset:(id)offset
{
  offsetCopy = offset;
  itemManager = [(HUItemTableViewController *)self itemManager];
  _selectedSignificantEvent = [(HUTimeEventEditorViewController *)self _selectedSignificantEvent];
  [itemManager setDefaultOffset:offsetCopy forSignificantEvent:_selectedSignificantEvent];

  [(HUTimeEventEditorViewController *)self setSelectedSignificantEventOffset:offsetCopy];

  [(HUTimeEventEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)_localizedRecurrenceDescription
{
  v2 = MEMORY[0x277CD1EB0];
  selectedRecurrences = [(HUTimeEventEditorViewController *)self selectedRecurrences];
  v4 = [v2 hf_recurrenceNaturalLanguageStringWithRecurrences:selectedRecurrences];

  return v4;
}

- (id)_commitTriggerBuilder
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:41];
  v5 = [v3 futureWithError:v4];

  if ([(HUTimeEventEditorViewController *)self _canCommitTriggerBuilder]&& [(HUTimeEventEditorViewController *)self _canContinue])
  {
    triggerBuilder = [(HUTimeEventEditorViewController *)self triggerBuilder];
    commitItem = [triggerBuilder commitItem];

    v8 = [commitItem addFailureBlock:&__block_literal_global_75];
    v5 = commitItem;
  }

  return v5;
}

void __56__HUTimeEventEditorViewController__commitTriggerBuilder__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

- (id)_selectedSignificantEvent
{
  selectedDateOptionItem = [(HUTimeEventEditorViewController *)self selectedDateOptionItem];
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

  selectedDateOptionItem2 = [(HUTimeEventEditorViewController *)self selectedDateOptionItem];
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

@end