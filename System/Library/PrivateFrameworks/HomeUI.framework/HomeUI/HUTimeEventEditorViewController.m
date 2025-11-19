@interface HUTimeEventEditorViewController
- (BOOL)shouldHideFooterBelowSection:(int64_t)a3;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUTimeEventEditorViewController)initWithFlow:(id)a3 stepIdentifier:(id)a4;
- (HUTimeEventEditorViewController)initWithTimeEvent:(id)a3 triggerBuilder:(id)a4;
- (NSArray)selectedRecurrences;
- (NSDateComponents)selectedFireTimeComponents;
- (NSDateComponents)selectedSignificantEventOffset;
- (id)_commitTriggerBuilder;
- (id)_instructionsSectionIDs;
- (id)_localizedRecurrenceDescription;
- (id)_selectedSignificantEvent;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)_changeFireTime:(id)a3;
- (void)_doneButtonPressed:(id)a3;
- (void)datePickerCell:(id)a3 didSelectDate:(id)a4;
- (void)dayOfWeekPickerCell:(id)a3 didChangeSelectedRecurrences:(id)a4;
- (void)setLayoutOptions:(id)a3;
- (void)setSelectedDateOptionItem:(id)a3;
- (void)setSelectedFireTimeComponents:(id)a3;
- (void)setSelectedRecurrences:(id)a3;
- (void)setSelectedSignificantEventOffset:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)timerTriggerOffsetEditor:(id)a3 didFinishWithOffset:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUTimeEventEditorViewController

- (HUTimeEventEditorViewController)initWithTimeEvent:(id)a3 triggerBuilder:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [[HUTimeEventEditorItemManager alloc] initWithTimeEvent:v8 triggerBuilder:v7 delegate:self];

  v19.receiver = self;
  v19.super_class = HUTimeEventEditorViewController;
  v10 = [(HUItemTableViewController *)&v19 initWithItemManager:v9 tableViewStyle:1];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_triggerBuilder, a4);
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorTitle", @"HUTimerTriggerEditorTitle", 1);
    [(HUTimeEventEditorViewController *)v11 setTitle:v13];

    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [v12 dateByAddingUnit:32 value:1 toDate:v14 options:0];

    v16 = [v12 components:96 fromDate:v15];
    v17 = [(HUItemTableViewController *)v11 itemManager];
    [v17 setDefaultFireTimeComponents:v16];
  }

  return v11;
}

- (HUTimeEventEditorViewController)initWithFlow:(id)a3 stepIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 eventBuilderItem];
  v9 = [v8 timeEventBuilder];
  v10 = [v6 triggerBuilder];
  v11 = [(HUTimeEventEditorViewController *)self initWithTimeEvent:v9 triggerBuilder:v10];

  if (v11)
  {
    [(HUTimeEventEditorViewController *)v11 setFlow:v6];
    [(HUTimeEventEditorViewController *)v11 setStepIdentifier:v7];
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [(HUTimeEventEditorViewController *)v11 flow];
    v14 = [v13 originalEventBuilderItem];

    if (!v14)
    {
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v21[3] = 1;
      v15 = MEMORY[0x277CBEA60];
      v16 = [v12 weekdaySymbols];
      v17 = [v16 count];
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
  v3 = [(HUTimeEventEditorViewController *)self flow];
  v4 = [(HUTimeEventEditorViewController *)self stepIdentifier];
  v5 = [v3 shouldShowDoneButtonForStep:v4];

  if (v5)
  {
    v6 = &selRef__doneButtonPressed_;
    v7 = @"HUDoneTitle";
  }

  else
  {
    v8 = [(HUTimeEventEditorViewController *)self flow];
    v9 = [(HUTimeEventEditorViewController *)self stepIdentifier];
    v10 = [v8 shouldShowNextButtonForStep:v9];

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
  v14 = [(HUTimeEventEditorViewController *)self navigationItem];
  [v14 setRightBarButtonItem:v13];

LABEL_6:
  v15 = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = [(HUItemTableViewController *)self itemManager];
  v17 = [v16 timeOptionItem];

  v18 = [(HUTimeEventEditorViewController *)self timeEvent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v20 = [(HUTimeEventEditorViewController *)self timeEvent];
  v21 = v20;
  if (isKindOfClass)
  {
    v22 = [v20 fireTimeComponents];

    if (v22)
    {
      v23 = [v21 fireTimeComponents];
      v24 = [(HUItemTableViewController *)self itemManager];
      [v24 setDefaultFireTimeComponents:v23];
LABEL_21:

      goto LABEL_22;
    }

    v28 = [v21 fireDate];

    if (!v28)
    {
LABEL_22:

      goto LABEL_23;
    }

    v23 = [v21 fireDate];
    v24 = [v15 components:96 fromDate:v23];
    v29 = [(HUItemTableViewController *)self itemManager];
    [v29 setDefaultFireTimeComponents:v24];
LABEL_20:

    goto LABEL_21;
  }

  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v25)
  {
    v21 = [(HUTimeEventEditorViewController *)self timeEvent];
    v23 = [v21 significantEvent];
    if ([v23 isEqualToString:*MEMORY[0x277CD0FA8]])
    {
      v26 = [(HUItemTableViewController *)self itemManager];
      v27 = [v26 sunriseOptionItem];
    }

    else
    {
      if (![v23 isEqualToString:*MEMORY[0x277CD0FB0]])
      {
        goto LABEL_17;
      }

      v26 = [(HUItemTableViewController *)self itemManager];
      v27 = [v26 sunsetOptionItem];
    }

    v30 = v27;

    v17 = v30;
LABEL_17:
    v24 = [(HUItemTableViewController *)self itemManager];
    v29 = [v21 significantEventOffset];
    if (v29)
    {
      [v24 setDefaultOffset:v29 forSignificantEvent:v23];
    }

    else
    {
      v31 = objc_opt_new();
      [v24 setDefaultOffset:v31 forSignificantEvent:v23];
    }

    goto LABEL_20;
  }

LABEL_23:
  [(HUTimeEventEditorViewController *)self setSelectedDateOptionItem:v17];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v8 viewWillAppear:a3];
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v4 = [(HUTimeEventEditorViewController *)self view];
    [v4 frame];
    v7 = [HUGridLimitedWidthViewLayoutOptions defaultOptionsForViewSize:1 columnStyle:&unk_2824911A8 overrideSizeSubclass:v5, v6];
    [(HUTimeEventEditorViewController *)self setLayoutOptions:v7];
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(HUTimeEventEditorViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 frame];
  v6 = v5;

  v7 = [(HUTimeEventEditorViewController *)self tableView];
  [v7 contentInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(HUTimeEventEditorViewController *)self tableView];
  [v14 setContentInset:{v6, v9, v11, v13}];
}

- (void)setSelectedDateOptionItem:(id)a3
{
  v44 = a3;
  if (([v44 isEqual:self->_selectedDateOptionItem] & 1) == 0)
  {
    v5 = self->_selectedDateOptionItem;
    objc_storeStrong(&self->_selectedDateOptionItem, a3);
    if (v5)
    {
      v6 = [(HUItemTableViewController *)self itemManager];
      v7 = [v6 indexPathForItem:v5];

      if (v7)
      {
        v8 = [(HUTimeEventEditorViewController *)self tableView];
        v9 = [v8 cellForRowAtIndexPath:v7];

        [(HUTimeEventEditorViewController *)self updateCell:v9 forItem:v5 indexPath:v7 animated:1];
      }

      v10 = [(HUItemTableViewController *)self itemManager];
      v11 = [v10 timeOptionItem];

      if (v5 == v11)
      {
        v12 = [(HUItemTableViewController *)self itemManager];
        [v12 setDatePickerShown:0];
      }
    }

    if (!self->_selectedDateOptionItem)
    {
      v26 = [(HUTimeEventEditorViewController *)self triggerBuilder];
      v27 = [(HUTimeEventEditorViewController *)self timeEvent];
      [v26 removeEventBuilder:v27];

      [(HUTimeEventEditorViewController *)self setTimeEvent:0];
LABEL_24:

      goto LABEL_25;
    }

    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 indexPathForItem:self->_selectedDateOptionItem];

    if (v14)
    {
      v15 = [(HUTimeEventEditorViewController *)self tableView];
      v16 = [v15 cellForRowAtIndexPath:v14];

      if (v16)
      {
        [(HUTimeEventEditorViewController *)self updateCell:v16 forItem:self->_selectedDateOptionItem indexPath:v14 animated:1];
      }
    }

    selectedDateOptionItem = self->_selectedDateOptionItem;
    v18 = [(HUItemTableViewController *)self itemManager];
    v19 = [v18 timeOptionItem];
    LODWORD(selectedDateOptionItem) = [(HFItem *)selectedDateOptionItem isEqual:v19];

    if (selectedDateOptionItem)
    {
      v20 = objc_alloc_init(MEMORY[0x277D14448]);
      v21 = [(HUItemTableViewController *)self itemManager];
      v22 = [v21 defaultFireTimeComponents];
      [v20 setFireTimeComponents:v22];

      v23 = [(HUTimeEventEditorViewController *)self triggerBuilder];
      v24 = [(HUTimeEventEditorViewController *)self timeEvent];
      [v23 removeEventBuilder:v24];

      v25 = [(HUTimeEventEditorViewController *)self triggerBuilder];
      [v25 addEventBuilder:v20];

      [(HUTimeEventEditorViewController *)self setTimeEvent:v20];
    }

    else
    {
      v28 = self->_selectedDateOptionItem;
      v29 = [(HUItemTableViewController *)self itemManager];
      v30 = [v29 sunriseOptionItem];
      if ([(HFItem *)v28 isEqual:v30])
      {
      }

      else
      {
        v31 = self->_selectedDateOptionItem;
        v32 = [(HUItemTableViewController *)self itemManager];
        v33 = [v32 sunsetOptionItem];
        LODWORD(v31) = [(HFItem *)v31 isEqual:v33];

        if (!v31)
        {
          NSLog(&cfstr_UnhandledOptio.isa, self->_selectedDateOptionItem);
          goto LABEL_21;
        }
      }

      v20 = [(HUTimeEventEditorViewController *)self _selectedSignificantEvent];
      v34 = [(HUItemTableViewController *)self itemManager];
      v35 = [v34 defaultOffsetForSignificantEvent:v20];

      v36 = objc_alloc_init(MEMORY[0x277D14AF0]);
      [v36 setSignificantEvent:v20];
      [v36 setSignificantEventOffset:v35];
      v37 = [(HUTimeEventEditorViewController *)self triggerBuilder];
      v38 = [(HUTimeEventEditorViewController *)self timeEvent];
      [v37 removeEventBuilder:v38];

      v39 = [(HUTimeEventEditorViewController *)self triggerBuilder];
      [v39 addEventBuilder:v36];

      [(HUTimeEventEditorViewController *)self setTimeEvent:v36];
    }

LABEL_21:
    v40 = self->_selectedDateOptionItem;
    v41 = [(HUItemTableViewController *)self itemManager];
    v42 = [v41 timeOptionItem];

    if (v40 == v42)
    {
      v43 = [(HUItemTableViewController *)self itemManager];
      [v43 setDatePickerShown:1];
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (NSDateComponents)selectedSignificantEventOffset
{
  objc_opt_class();
  v3 = [(HUTimeEventEditorViewController *)self timeEvent];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 significantEventOffset];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

- (void)setSelectedSignificantEventOffset:(id)a3
{
  v8 = a3;
  objc_opt_class();
  v4 = [(HUTimeEventEditorViewController *)self timeEvent];
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
    [v6 setSignificantEventOffset:v8];
    v7 = [(HUItemTableViewController *)self itemManager];
    [v7 updateForSignificantEventOffsetChange];
  }
}

- (NSDateComponents)selectedFireTimeComponents
{
  objc_opt_class();
  v3 = [(HUTimeEventEditorViewController *)self timeEvent];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 fireTimeComponents];

  return v6;
}

- (void)setSelectedFireTimeComponents:(id)a3
{
  v7 = a3;
  objc_opt_class();
  v4 = [(HUTimeEventEditorViewController *)self timeEvent];
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
    [v6 setFireTimeComponents:v7];
  }
}

- (NSArray)selectedRecurrences
{
  v2 = [(HUTimeEventEditorViewController *)self triggerBuilder];
  v3 = [v2 recurrences];

  return v3;
}

- (void)setSelectedRecurrences:(id)a3
{
  v4 = a3;
  v5 = [(HUTimeEventEditorViewController *)self triggerBuilder];
  [v5 setRecurrences:v4];
}

- (void)setLayoutOptions:(id)a3
{
  v16 = a3;
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v5 = [(HUTimeEventEditorViewController *)self layoutOptions];
    v6 = [v16 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_layoutOptions, a3);
      [v16 sectionTopMargin];
      v8 = v7;
      [v16 sectionLeadingMargin];
      v10 = v9;
      [v16 sectionBottomMargin];
      v12 = v11;
      [v16 sectionTrailingMargin];
      v14 = v13;
      v15 = [(HUTimeEventEditorViewController *)self tableView];
      [v15 _setSectionContentInset:{v8, v10, v12, v14}];
    }
  }
}

- (void)_doneButtonPressed:(id)a3
{
  v4 = [(HUTimeEventEditorViewController *)self timeEvent];
  v5 = [(HUTimeEventEditorViewController *)self flow];
  v6 = [v5 eventBuilderItem];
  [v6 setTimeEventBuilder:v4];

  v8 = [(HUTimeEventEditorViewController *)self flow];
  v7 = [(HUTimeEventEditorViewController *)self stepIdentifier];
  [v8 viewController:self didFinishStepWithIdentifier:v7];
}

- (void)_changeFireTime:(id)a3
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v10;
    v5 = [v4 calendar];
    v6 = [v4 date];

    v7 = [v5 components:96 fromDate:v6];
    [(HUTimeEventEditorViewController *)self setSelectedFireTimeComponents:v7];

    v8 = [(HUTimeEventEditorViewController *)self selectedFireTimeComponents];
    v9 = [(HUItemTableViewController *)self itemManager];
    [v9 setDefaultFireTimeComponents:v8];
  }
}

- (void)datePickerCell:(id)a3 didSelectDate:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = [v5 currentCalendar];
  v8 = [v7 components:96 fromDate:v6];

  [(HUTimeEventEditorViewController *)self setSelectedFireTimeComponents:v8];
  v10 = [(HUTimeEventEditorViewController *)self selectedFireTimeComponents];
  v9 = [(HUItemTableViewController *)self itemManager];
  [v9 setDefaultFireTimeComponents:v10];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (-[HUItemTableViewController itemManager](self, "itemManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 dateOptionsItems], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v5), v7, v6, (v8) || (-[HUItemTableViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "datePickerItem"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10 == v5) || (-[HUItemTableViewController itemManager](self, "itemManager"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "recurrencesItem"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12 == v5))
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

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = v10;
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

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v43[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HUItemTableViewController *)self itemManager];
  v14 = [v13 dateOptionsItems];
  v15 = [v14 containsObject:v11];

  if (v15)
  {
    v16 = objc_opt_class();
    v17 = v10;
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

      v19 = v17;
      if (v18)
      {
        goto LABEL_9;
      }

      v20 = [MEMORY[0x277CCA890] currentHandler];
      [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      v22 = v21 = v12;
      [v20 handleFailureInFunction:v22 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v16, objc_opt_class()}];

      v12 = v21;
    }

    v19 = 0;
LABEL_9:

    v23 = [v11 latestResults];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [v19 setTitleText:v24];

    v25 = [(HUTimeEventEditorViewController *)self selectedDateOptionItem];
    LODWORD(v24) = [v11 isEqual:v25];

    if (v24)
    {
      v40 = v12;
      v41 = v6;
      [v19 setChecked:1];
      v26 = [(HUItemTableViewController *)self itemManager];
      v27 = [v26 sunriseOptionItem];
      v43[0] = v27;
      v28 = [(HUItemTableViewController *)self itemManager];
      v29 = [v28 sunsetOptionItem];
      v43[1] = v29;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
      v31 = [v30 containsObject:v11];

      if (v31)
      {
        v32 = 4;
      }

      else
      {
        v32 = 0;
      }

      [v19 setAccessoryType:v32];
      v6 = v41;
      v12 = v40;
    }

    else
    {
      [v19 setChecked:0];
      [v19 setAccessoryType:0];
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v10;
    [v33 setDelegate:self];
    v34 = MEMORY[0x277CBEB98];
    v19 = [(HUTimeEventEditorViewController *)self selectedRecurrences];
    v35 = [v34 setWithArray:v19];
    [v33 setSelectedRecurrences:v35];

LABEL_22:
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v36 = v10;
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    v39 = [(HUTimeEventEditorViewController *)self selectedFireTimeComponents];
    [v38 setTimeComponents:v39];
  }

LABEL_23:
  v42.receiver = self;
  v42.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v42 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v5 = [(HUTimeEventEditorViewController *)self _instructionsSectionIDs];
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedSectionIdentifierForSectionIndex:a3];
  v8 = [v5 containsObject:v7];

  return v8;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)a3
{
  v5 = [(HUTimeEventEditorViewController *)self _instructionsSectionIDs];
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedSectionIdentifierForSectionIndex:a3];
  v8 = [v5 containsObject:v7];

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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (v10)
  {
    v15.receiver = self;
    v15.super_class = HUTimeEventEditorViewController;
    v11 = [(HUItemTableViewController *)&v15 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  else
  {
    v12 = [(HUItemTableViewController *)self itemManager];
    v13 = [v12 dateOptionsItems];
    v11 = [v13 containsObject:v9];
  }

  return v11;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v11 tableView:a3 accessoryButtonTappedForRowWithIndexPath:a4];
  v5 = [HUTimeEventOffsetEditorViewController alloc];
  v6 = [(HUTimeEventEditorViewController *)self _selectedSignificantEvent];
  v7 = [(HUTimeEventEditorViewController *)self selectedSignificantEventOffset];
  v8 = [(HUTimeEventOffsetEditorViewController *)v5 initWithSignificantEvent:v6 currentOffset:v7 delegate:self];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  v10 = [(UIViewController *)self hu_presentPreloadableViewController:v9 animated:1];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HUTimeEventEditorViewController;
  [(HUItemTableViewController *)&v14 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (!v10)
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 dateOptionsItems];
    v13 = [v12 containsObject:v9];

    if (v13)
    {
      [(HUTimeEventEditorViewController *)self setSelectedDateOptionItem:v9];
    }
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedSectionIdentifierForSectionIndex:a4];
  v8 = [v7 isEqualToString:@"HUTimeEventEditorSectionIdentifierRepeat"];

  if (v8)
  {
    v9 = [(HUTimeEventEditorViewController *)self _localizedRecurrenceDescription];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dayOfWeekPickerCell:(id)a3 didChangeSelectedRecurrences:(id)a4
{
  v5 = [a4 allObjects];
  [(HUTimeEventEditorViewController *)self setSelectedRecurrences:v5];

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

- (void)timerTriggerOffsetEditor:(id)a3 didFinishWithOffset:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [(HUTimeEventEditorViewController *)self _selectedSignificantEvent];
  [v6 setDefaultOffset:v5 forSignificantEvent:v7];

  [(HUTimeEventEditorViewController *)self setSelectedSignificantEventOffset:v5];

  [(HUTimeEventEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)_localizedRecurrenceDescription
{
  v2 = MEMORY[0x277CD1EB0];
  v3 = [(HUTimeEventEditorViewController *)self selectedRecurrences];
  v4 = [v2 hf_recurrenceNaturalLanguageStringWithRecurrences:v3];

  return v4;
}

- (id)_commitTriggerBuilder
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:41];
  v5 = [v3 futureWithError:v4];

  if ([(HUTimeEventEditorViewController *)self _canCommitTriggerBuilder]&& [(HUTimeEventEditorViewController *)self _canContinue])
  {
    v6 = [(HUTimeEventEditorViewController *)self triggerBuilder];
    v7 = [v6 commitItem];

    v8 = [v7 addFailureBlock:&__block_literal_global_75];
    v5 = v7;
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
  v3 = [(HUTimeEventEditorViewController *)self selectedDateOptionItem];
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 sunriseOptionItem];
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CD0FA8];
LABEL_5:
    v12 = *v7;
    goto LABEL_7;
  }

  v8 = [(HUTimeEventEditorViewController *)self selectedDateOptionItem];
  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 sunsetOptionItem];
  v11 = [v8 isEqual:v10];

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