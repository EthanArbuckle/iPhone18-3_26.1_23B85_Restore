@interface HUTimerTriggerEditorViewController
- (BOOL)_canCommitTriggerBuilder;
- (BOOL)shouldHideFooterBelowSection:(int64_t)a3;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUTimerTriggerEditorViewController)initWithTimerTriggerBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5;
- (HUTriggerEditorDelegate)delegate;
- (NSArray)selectedRecurrences;
- (NSDateComponents)selectedFireTimeComponents;
- (NSDateComponents)selectedSignificantEventOffset;
- (id)_commitTriggerBuilder;
- (id)_instructionsSectionIDs;
- (id)_localizedRecurrenceDescription;
- (id)_selectedSignificantEvent;
- (id)itemModuleControllers;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)_cancel:(id)a3;
- (void)_changeFireTime:(id)a3;
- (void)_showActionEditor:(id)a3;
- (void)_showSummary:(id)a3;
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
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUTimerTriggerEditorViewController

- (HUTimerTriggerEditorViewController)initWithTimerTriggerBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[HUTimerTriggerEditorItemManager alloc] initWithTimerTriggerBuilder:v8 delegate:self];
  v48.receiver = self;
  v48.super_class = HUTimerTriggerEditorViewController;
  v11 = [(HUItemTableViewController *)&v48 initWithItemManager:v10 tableViewStyle:1];
  if (v11)
  {
    v12 = [HUTriggerConditionEditorItemModuleController alloc];
    v13 = [(HUTimerTriggerEditorItemManager *)v10 conditionModule];
    v14 = [(HUTriggerConditionEditorItemModuleController *)v12 initWithModule:v13 delegate:v11];
    conditionModuleController = v11->_conditionModuleController;
    v11->_conditionModuleController = v14;

    [(HUTimerTriggerEditorViewController *)v11 setTimerTriggerBuilder:v8];
    [(HUTimerTriggerEditorViewController *)v11 setMode:a4];
    [(HUTimerTriggerEditorViewController *)v11 setDelegate:v9];
    v16 = [MEMORY[0x277CBEA80] currentCalendar];
    if (!a4 || ([v8 recurrences], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      v18 = [MEMORY[0x277CBEAB8] hf_dailyWeekdayIntervalComponentsWithCalendar:v16];
      [(HUTimerTriggerEditorViewController *)v11 setSelectedRecurrences:v18];
    }

    v19 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorTitle", @"HUTimerTriggerEditorTitle", 1);
    [(HUTimerTriggerEditorViewController *)v11 setTitle:v19];

    v20 = [MEMORY[0x277CBEAA8] date];
    v21 = [v16 dateByAddingUnit:32 value:1 toDate:v20 options:0];

    v22 = [v16 components:96 fromDate:v21];
    v23 = [(HUItemTableViewController *)v11 itemManager];
    [v23 setDefaultFireTimeComponents:v22];

    if (!a4)
    {
      v24 = [v8 triggerActionSets];
      v25 = [v24 hasActions];
      v26 = &selRef__showSummary_;
      if (!v25)
      {
        v26 = &selRef__showActionEditor_;
      }

      v27 = *v26;

      v28 = objc_alloc(MEMORY[0x277D751E0]);
      v29 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorNextButton", @"HUTimerTriggerEditorNextButton", 1);
      v30 = [v28 initWithTitle:v29 style:2 target:v11 action:v27];
      v31 = [(HUTimerTriggerEditorViewController *)v11 navigationItem];
      [v31 setRightBarButtonItem:v30];
    }

    v32 = [(HUTimerTriggerEditorItemManager *)v10 timeOptionItem];
    v33 = [(HUTimerTriggerEditorViewController *)v11 timerTriggerBuilder];
    v34 = [v33 eventBuilder];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
      v36 = [v35 fireTimeComponents];

      if (v36)
      {
        v47 = v21;
        v37 = [v35 fireTimeComponents];
        v38 = [(HUItemTableViewController *)v11 itemManager];
        [v38 setDefaultFireTimeComponents:v37];
LABEL_24:

        v21 = v47;
        goto LABEL_25;
      }

      v41 = [v35 fireDate];

      if (!v41)
      {
LABEL_25:

        goto LABEL_26;
      }

      v47 = v21;
      v37 = [v35 fireDate];
      v38 = [v16 components:96 fromDate:v37];
      v42 = [(HUItemTableViewController *)v11 itemManager];
      [v42 setDefaultFireTimeComponents:v38];
LABEL_23:

      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_26:
      [(HUTimerTriggerEditorViewController *)v11 setSelectedDateOptionItem:v32];

      goto LABEL_27;
    }

    v39 = v34;
    v37 = [v39 significantEvent];
    v47 = v21;
    if ([v37 isEqualToString:*MEMORY[0x277CD0FA8]])
    {
      v40 = [(HUTimerTriggerEditorItemManager *)v10 sunriseOptionItem];
    }

    else
    {
      if (![v37 isEqualToString:*MEMORY[0x277CD0FB0]])
      {
        goto LABEL_20;
      }

      v40 = [(HUTimerTriggerEditorItemManager *)v10 sunsetOptionItem];
    }

    v43 = v40;

    v32 = v43;
LABEL_20:
    v38 = [(HUItemTableViewController *)v11 itemManager];
    v42 = [v39 significantEventOffset];
    if (v42)
    {
      [v38 setDefaultOffset:v42 forSignificantEvent:v37];
    }

    else
    {
      v46 = v9;
      v44 = objc_opt_new();
      [v38 setDefaultOffset:v44 forSignificantEvent:v37];

      v9 = v46;
    }

    goto LABEL_23;
  }

LABEL_27:

  return v11;
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HUTimerTriggerEditorViewController;
  [(HUItemTableViewController *)&v8 viewWillAppear:a3];
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v4 = [(HUTimerTriggerEditorViewController *)self view];
    [v4 frame];
    v7 = [HUGridLimitedWidthViewLayoutOptions defaultOptionsForViewSize:1 columnStyle:&unk_2824912E0 overrideSizeSubclass:v5, v6];
    [(HUTimerTriggerEditorViewController *)self setLayoutOptions:v7];
  }
}

- (void)setSelectedDateOptionItem:(id)a3
{
  v38 = a3;
  if (([v38 isEqual:self->_selectedDateOptionItem] & 1) == 0)
  {
    v5 = self->_selectedDateOptionItem;
    objc_storeStrong(&self->_selectedDateOptionItem, a3);
    if (v5)
    {
      v6 = [(HUItemTableViewController *)self itemManager];
      v7 = [v6 indexPathForItem:v5];

      if (v7)
      {
        v8 = [(HUTimerTriggerEditorViewController *)self tableView];
        v9 = [v8 cellForRowAtIndexPath:v7];

        [(HUTimerTriggerEditorViewController *)self updateCell:v9 forItem:v5 indexPath:v7 animated:1];
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
      v14 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
      [v14 setEventBuilder:0];
LABEL_21:

      goto LABEL_22;
    }

    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 indexPathForItem:self->_selectedDateOptionItem];

    if (v14)
    {
      v15 = [(HUTimerTriggerEditorViewController *)self tableView];
      v16 = [v15 cellForRowAtIndexPath:v14];

      [(HUTimerTriggerEditorViewController *)self updateCell:v16 forItem:self->_selectedDateOptionItem indexPath:v14 animated:1];
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

      v23 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
      [v23 setEventBuilder:v20];
    }

    else
    {
      v24 = self->_selectedDateOptionItem;
      v25 = [(HUItemTableViewController *)self itemManager];
      v26 = [v25 sunriseOptionItem];
      if ([(HFItem *)v24 isEqual:v26])
      {
      }

      else
      {
        v27 = self->_selectedDateOptionItem;
        v28 = [(HUItemTableViewController *)self itemManager];
        v29 = [v28 sunsetOptionItem];
        LODWORD(v27) = [(HFItem *)v27 isEqual:v29];

        if (!v27)
        {
          NSLog(&cfstr_UnhandledOptio.isa, self->_selectedDateOptionItem);
LABEL_19:
          v34 = self->_selectedDateOptionItem;
          v35 = [(HUItemTableViewController *)self itemManager];
          v36 = [v35 timeOptionItem];

          if (v34 == v36)
          {
            v37 = [(HUItemTableViewController *)self itemManager];
            [v37 setDatePickerShown:1];
          }

          goto LABEL_21;
        }
      }

      v20 = [(HUTimerTriggerEditorViewController *)self _selectedSignificantEvent];
      v30 = [(HUItemTableViewController *)self itemManager];
      v31 = [v30 defaultOffsetForSignificantEvent:v20];

      v32 = objc_alloc_init(MEMORY[0x277D14AF0]);
      [v32 setSignificantEvent:v20];
      [v32 setSignificantEventOffset:v31];
      v33 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
      [v33 setEventBuilder:v32];
    }

    goto LABEL_19;
  }

LABEL_22:
}

- (NSDateComponents)selectedSignificantEventOffset
{
  objc_opt_class();
  v3 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  v4 = [v3 eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 significantEventOffset];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  return v9;
}

- (void)setSelectedSignificantEventOffset:(id)a3
{
  v9 = a3;
  objc_opt_class();
  v4 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  v5 = [v4 eventBuilder];
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
    [v7 setSignificantEventOffset:v9];
    v8 = [(HUItemTableViewController *)self itemManager];
    [v8 updateForSignificantEventOffsetChange];
  }
}

- (NSDateComponents)selectedFireTimeComponents
{
  objc_opt_class();
  v3 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  v4 = [v3 eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 fireTimeComponents];

  return v7;
}

- (void)setSelectedFireTimeComponents:(id)a3
{
  v8 = a3;
  objc_opt_class();
  v4 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  v5 = [v4 eventBuilder];
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
    [v7 setFireTimeComponents:v8];
  }
}

- (NSArray)selectedRecurrences
{
  v2 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  v3 = [v2 recurrences];

  return v3;
}

- (void)setSelectedRecurrences:(id)a3
{
  v4 = a3;
  v5 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  [v5 setRecurrences:v4];
}

- (void)setLayoutOptions:(id)a3
{
  v16 = a3;
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v5 = [(HUTimerTriggerEditorViewController *)self layoutOptions];
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
      v15 = [(HUTimerTriggerEditorViewController *)self tableView];
      [v15 _setSectionContentInset:{v8, v10, v12, v14}];
    }
  }
}

- (void)_showActionEditor:(id)a3
{
  if ([(HUTimerTriggerEditorViewController *)self _canContinue])
  {
    v4 = [HUTriggerActionPickerViewController alloc];
    v5 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
    v6 = [(HUTimerTriggerEditorViewController *)self mode];
    v7 = [(HUTimerTriggerEditorViewController *)self delegate];
    v10 = [(HUTriggerActionPickerViewController *)v4 initWithTriggerBuilder:v5 mode:v6 delegate:v7];

    v8 = [(HUTimerTriggerEditorViewController *)self navigationController];
    v9 = [v8 hu_pushPreloadableViewController:v10 animated:1];
  }
}

- (void)_showSummary:(id)a3
{
  if ([(HUTimerTriggerEditorViewController *)self _canContinue])
  {
    v4 = [HUTriggerSummaryViewController alloc];
    v5 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
    v6 = [(HUTimerTriggerEditorViewController *)self mode];
    v7 = [(HUTimerTriggerEditorViewController *)self delegate];
    v10 = [(HUTriggerSummaryViewController *)v4 initWithTriggerBuilder:v5 mode:v6 isPresentedModally:0 delegate:v7];

    v8 = [(HUTimerTriggerEditorViewController *)self navigationController];
    v9 = [v8 hu_pushPreloadableViewController:v10 animated:1];
  }
}

- (void)_cancel:(id)a3
{
  v4 = [(HUTimerTriggerEditorViewController *)self delegate];
  [v4 triggerEditor:self didFinishWithTriggerBuilder:0];
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
    [(HUTimerTriggerEditorViewController *)self setSelectedFireTimeComponents:v7];

    v8 = [(HUTimerTriggerEditorViewController *)self selectedFireTimeComponents];
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

  [(HUTimerTriggerEditorViewController *)self setSelectedFireTimeComponents:v8];
  v10 = [(HUTimerTriggerEditorViewController *)self selectedFireTimeComponents];
  v9 = [(HUItemTableViewController *)self itemManager];
  [v9 setDefaultFireTimeComponents:v10];
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUTimerTriggerEditorViewController *)self conditionModuleController];
  v4 = [v2 setWithObject:v3];

  return v4;
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
  v12 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = v12;
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
    v11 = +[HUIconCellContentMetrics defaultMetrics];
    [v11 iconSize];
    [v10 setLeftMargin:?];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = [HUListContentConfigurationUtilities instructionsConfigurationForItem:v7];
    [v12 setContentConfiguration:v10];
    v11 = [MEMORY[0x277D751C0] clearConfiguration];
    [v12 setBackgroundConfiguration:v11];
  }

LABEL_9:
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

    v25 = [(HUTimerTriggerEditorViewController *)self selectedDateOptionItem];
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
    v19 = [(HUTimerTriggerEditorViewController *)self selectedRecurrences];
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

    v39 = [(HUTimerTriggerEditorViewController *)self selectedFireTimeComponents];
    [v38 setTimeComponents:v39];
  }

LABEL_23:
  v42.receiver = self;
  v42.super_class = HUTimerTriggerEditorViewController;
  [(HUItemTableViewController *)&v42 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v5 = [(HUTimerTriggerEditorViewController *)self _instructionsSectionIDs];
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedSectionIdentifierForSectionIndex:a3];
  v8 = [v5 containsObject:v7];

  return v8;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)a3
{
  v5 = [(HUTimerTriggerEditorViewController *)self _instructionsSectionIDs];
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedSectionIdentifierForSectionIndex:a3];
  v8 = [v5 containsObject:v7];

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
    v15.super_class = HUTimerTriggerEditorViewController;
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
  v11.super_class = HUTimerTriggerEditorViewController;
  [(HUItemTableViewController *)&v11 tableView:a3 accessoryButtonTappedForRowWithIndexPath:a4];
  v5 = [HUTimeEventOffsetEditorViewController alloc];
  v6 = [(HUTimerTriggerEditorViewController *)self _selectedSignificantEvent];
  v7 = [(HUTimerTriggerEditorViewController *)self selectedSignificantEventOffset];
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
  v14.super_class = HUTimerTriggerEditorViewController;
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
      [(HUTimerTriggerEditorViewController *)self setSelectedDateOptionItem:v9];
    }
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedSectionIdentifierForSectionIndex:a4];
  v8 = [v7 isEqualToString:@"HUTimerTriggerEditorSectionIdentifierRepeat"];

  if (v8)
  {
    v9 = [(HUTimerTriggerEditorViewController *)self _localizedRecurrenceDescription];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dayOfWeekPickerCell:(id)a3 didChangeSelectedRecurrences:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [a4 allObjects];
  [(HUTimerTriggerEditorViewController *)self setSelectedRecurrences:v5];

  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 sectionIndexForDisplayedSectionIdentifier:@"HUTimerTriggerEditorSectionIdentifierRepeat"];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HUTimerTriggerEditorViewController_dayOfWeekPickerCell_didChangeSelectedRecurrences___block_invoke;
  v12[3] = &unk_277DB7BA8;
  v12[4] = self;
  v12[5] = v7;
  [MEMORY[0x277D75D18] performWithoutAnimation:v12];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 itemSectionForSectionIndex:v7];
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v8 reloadUIRepresentationForSections:v11 withAnimation:0];
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

- (void)timerTriggerOffsetEditor:(id)a3 didFinishWithOffset:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [(HUTimerTriggerEditorViewController *)self _selectedSignificantEvent];
  [v6 setDefaultOffset:v5 forSignificantEvent:v7];

  [(HUTimerTriggerEditorViewController *)self setSelectedSignificantEventOffset:v5];

  [(HUTimerTriggerEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)_localizedRecurrenceDescription
{
  v2 = MEMORY[0x277CD1EB0];
  v3 = [(HUTimerTriggerEditorViewController *)self selectedRecurrences];
  v4 = [v2 hf_recurrenceNaturalLanguageStringWithRecurrences:v3];

  return v4;
}

- (BOOL)_canCommitTriggerBuilder
{
  v3 = [(HUTimerTriggerEditorViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(HUTimerTriggerEditorViewController *)self delegate];
  v6 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
  v7 = [v5 triggerEditor:self shouldCommitTriggerBuilder:v6];

  return v7;
}

- (id)_commitTriggerBuilder
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:41];
  v5 = [v3 futureWithError:v4];

  if ([(HUTimerTriggerEditorViewController *)self _canCommitTriggerBuilder]&& [(HUTimerTriggerEditorViewController *)self _canContinue])
  {
    v6 = [(HUTimerTriggerEditorViewController *)self timerTriggerBuilder];
    v7 = [v6 commitItem];

    v8 = [v7 addFailureBlock:&__block_literal_global_81];
    v5 = v7;
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
  v3 = [(HUTimerTriggerEditorViewController *)self selectedDateOptionItem];
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

  v8 = [(HUTimerTriggerEditorViewController *)self selectedDateOptionItem];
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

- (HUTriggerEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end