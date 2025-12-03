@interface HUTriggerTimeConditionDetailEditorViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HFTimeRangeCondition)rangeCondition;
- (HUTriggerTimeConditionDetailEditorDelegate)delegate;
- (HUTriggerTimeConditionDetailEditorViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUTriggerTimeConditionDetailEditorViewController)initWithRangeCondition:(id)condition delegate:(id)delegate;
- (id)allCellClasses;
- (unint64_t)automaticDisablingReasonsForItem:(id)item;
- (void)_cancel:(id)_cancel;
- (void)_done:(id)_done;
- (void)datePickerCell:(id)cell didSelectDate:(id)date;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)significantEventOffsetPicker:(id)picker didSelectOffset:(id)offset;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUTriggerTimeConditionDetailEditorViewController

- (HUTriggerTimeConditionDetailEditorViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItemManager_tableViewStyle_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerTimeConditionDetailEditorViewController.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HUTriggerTimeConditionDetailEditorViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUTriggerTimeConditionDetailEditorViewController)initWithRangeCondition:(id)condition delegate:(id)delegate
{
  delegateCopy = delegate;
  conditionCopy = condition;
  v8 = [[HUTriggerTimeConditionDetailEditorItemManager alloc] initWithDelegate:self rangeCondition:conditionCopy];

  v12.receiver = self;
  v12.super_class = HUTriggerTimeConditionDetailEditorViewController;
  v9 = [(HUItemTableViewController *)&v12 initWithItemManager:v8 tableViewStyle:1];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v10;
}

- (HFTimeRangeCondition)rangeCondition
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  rangeCondition = [itemManager rangeCondition];

  return rangeCondition;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HUTriggerTimeConditionDetailEditorViewController;
  [(HUItemTableViewController *)&v9 viewDidLoad];
  tableView = [(HUTriggerTimeConditionDetailEditorViewController *)self tableView];
  [tableView setSeparatorStyle:1];

  v4 = _HULocalizedStringWithDefaultValue(@"HUTriggerTimeConditionDetailEditorTitle", @"HUTriggerTimeConditionDetailEditorTitle", 1);
  [(HUTriggerTimeConditionDetailEditorViewController *)self setTitle:v4];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  navigationItem = [(HUTriggerTimeConditionDetailEditorViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  navigationItem2 = [(HUTriggerTimeConditionDetailEditorViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v7];
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUTriggerTimeConditionDetailEditorViewController *)self delegate];
  [delegate timeConditionEditorDidCancel:self];
}

- (void)_done:(id)_done
{
  delegate = [(HUTriggerTimeConditionDetailEditorViewController *)self delegate];
  rangeCondition = [(HUTriggerTimeConditionDetailEditorViewController *)self rangeCondition];
  [delegate timeConditionEditor:self didFinishWithCondition:rangeCondition];
}

- (id)allCellClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager primitiveConditionForPickerItem:itemCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = objc_opt_class();
  }

  else
  {
    NSLog(&cfstr_UnrecognizedPr.isa, v7);
    v8 = 0;
  }

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = HUTriggerTimeConditionDetailEditorViewController;
  [(HUItemTableViewController *)&v10 setupCell:cellCopy forItem:item indexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = cellCopy;
      [v9 setDelegate:self];
      [v9 setHideTitleLabel:1];
      [v9 setLeftMargin:8.0];
    }
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v29.receiver = self;
  v29.super_class = HUTriggerTimeConditionDetailEditorViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v29 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v13 = [itemManager primitiveConditionForPickerItem:itemCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_opt_class();
    v15 = cellCopy;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v15;
      if (v16)
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class(), v29.receiver, v29.super_class}];
    }

    v17 = 0;
LABEL_9:

    dateComponents = [v13 dateComponents];
    [v17 setTimeComponents:dateComponents];
LABEL_22:

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_opt_class();
    v22 = cellCopy;
    if (v22)
    {
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v17 = v22;
      if (v23)
      {
        goto LABEL_18;
      }

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler2 handleFailureInFunction:v25 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v21, objc_opt_class(), v29.receiver, v29.super_class}];
    }

    v17 = 0;
LABEL_18:

    dateComponents = v13;
    significantEvent = [dateComponents significantEvent];
    [v17 setSignificantEvent:significantEvent];

    offset = [dateComponents offset];
    if (offset)
    {
      [v17 setCurrentOffset:offset];
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v17 setCurrentOffset:v28];
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (unint64_t)automaticDisablingReasonsForItem:(id)item
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  startConditionPickerItem = [itemManager startConditionPickerItem];
  v7 = startConditionPickerItem;
  if (startConditionPickerItem == itemCopy)
  {

    goto LABEL_5;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  endConditionPickerItem = [itemManager2 endConditionPickerItem];

  if (endConditionPickerItem == itemCopy)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v12.receiver = self;
  v12.super_class = HUTriggerTimeConditionDetailEditorViewController;
  v10 = [(HUItemTableViewController *)&v12 automaticDisablingReasonsForItem:itemCopy];
LABEL_6:

  return v10;
}

- (void)significantEventOffsetPicker:(id)picker didSelectOffset:(id)offset
{
  offsetCopy = offset;
  pickerCopy = picker;
  tableView = [(HUTriggerTimeConditionDetailEditorViewController *)self tableView];
  v22 = [tableView indexPathForCell:pickerCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:v22];

  v11 = objc_opt_class();
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v13 = [itemManager2 primitiveConditionForPickerItem:v10];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v13;
    if (v14)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
  }

  v15 = 0;
LABEL_8:

  v18 = objc_alloc(MEMORY[0x277D14B70]);
  significantEvent = [v15 significantEvent];
  v20 = [v18 initWithSignificantEvent:significantEvent offset:offsetCopy comparisonType:{objc_msgSend(v15, "comparisonType")}];

  itemManager3 = [(HUItemTableViewController *)self itemManager];
  [itemManager3 setPrimitiveCondition:v20 forPickerItem:v10];
}

- (void)datePickerCell:(id)cell didSelectDate:(id)date
{
  dateCopy = date;
  cellCopy = cell;
  tableView = [(HUTriggerTimeConditionDetailEditorViewController *)self tableView];
  v22 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:v22];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [currentCalendar components:96 fromDate:dateCopy];

  v13 = objc_opt_class();
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v15 = [itemManager2 primitiveConditionForPickerItem:v10];
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v15;
    if (v16)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];
  }

  v17 = 0;
LABEL_8:

  v20 = [objc_alloc(MEMORY[0x277D145F0]) initWithDateComponents:v12 comparisonType:{objc_msgSend(v17, "comparisonType")}];
  itemManager3 = [(HUItemTableViewController *)self itemManager];
  [itemManager3 setPrimitiveCondition:v20 forPickerItem:v10];
}

- (HUTriggerTimeConditionDetailEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end