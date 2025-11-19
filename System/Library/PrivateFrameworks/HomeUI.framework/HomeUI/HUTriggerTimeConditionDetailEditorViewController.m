@interface HUTriggerTimeConditionDetailEditorViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HFTimeRangeCondition)rangeCondition;
- (HUTriggerTimeConditionDetailEditorDelegate)delegate;
- (HUTriggerTimeConditionDetailEditorViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUTriggerTimeConditionDetailEditorViewController)initWithRangeCondition:(id)a3 delegate:(id)a4;
- (id)allCellClasses;
- (unint64_t)automaticDisablingReasonsForItem:(id)a3;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)datePickerCell:(id)a3 didSelectDate:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)significantEventOffsetPicker:(id)a3 didSelectOffset:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUTriggerTimeConditionDetailEditorViewController

- (HUTriggerTimeConditionDetailEditorViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItemManager_tableViewStyle_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUTriggerTimeConditionDetailEditorViewController.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HUTriggerTimeConditionDetailEditorViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUTriggerTimeConditionDetailEditorViewController)initWithRangeCondition:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HUTriggerTimeConditionDetailEditorItemManager alloc] initWithDelegate:self rangeCondition:v7];

  v12.receiver = self;
  v12.super_class = HUTriggerTimeConditionDetailEditorViewController;
  v9 = [(HUItemTableViewController *)&v12 initWithItemManager:v8 tableViewStyle:1];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v6);
  }

  return v10;
}

- (HFTimeRangeCondition)rangeCondition
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 rangeCondition];

  return v3;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HUTriggerTimeConditionDetailEditorViewController;
  [(HUItemTableViewController *)&v9 viewDidLoad];
  v3 = [(HUTriggerTimeConditionDetailEditorViewController *)self tableView];
  [v3 setSeparatorStyle:1];

  v4 = _HULocalizedStringWithDefaultValue(@"HUTriggerTimeConditionDetailEditorTitle", @"HUTriggerTimeConditionDetailEditorTitle", 1);
  [(HUTriggerTimeConditionDetailEditorViewController *)self setTitle:v4];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  v6 = [(HUTriggerTimeConditionDetailEditorViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  v8 = [(HUTriggerTimeConditionDetailEditorViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];
}

- (void)_cancel:(id)a3
{
  v4 = [(HUTriggerTimeConditionDetailEditorViewController *)self delegate];
  [v4 timeConditionEditorDidCancel:self];
}

- (void)_done:(id)a3
{
  v5 = [(HUTriggerTimeConditionDetailEditorViewController *)self delegate];
  v4 = [(HUTriggerTimeConditionDetailEditorViewController *)self rangeCondition];
  [v5 timeConditionEditor:self didFinishWithCondition:v4];
}

- (id)allCellClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 primitiveConditionForPickerItem:v5];

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

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = HUTriggerTimeConditionDetailEditorViewController;
  [(HUItemTableViewController *)&v10 setupCell:v8 forItem:a4 indexPath:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      [v9 setDelegate:self];
      [v9 setHideTitleLabel:1];
      [v9 setLeftMargin:8.0];
    }
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v29.receiver = self;
  v29.super_class = HUTriggerTimeConditionDetailEditorViewController;
  v11 = a4;
  [(HUItemTableViewController *)&v29 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 primitiveConditionForPickerItem:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_opt_class();
    v15 = v10;
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

      v18 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v18 handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class(), v29.receiver, v29.super_class}];
    }

    v17 = 0;
LABEL_9:

    v20 = [v13 dateComponents];
    [v17 setTimeComponents:v20];
LABEL_22:

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_opt_class();
    v22 = v10;
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

      v24 = [MEMORY[0x277CCA890] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v24 handleFailureInFunction:v25 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v21, objc_opt_class(), v29.receiver, v29.super_class}];
    }

    v17 = 0;
LABEL_18:

    v20 = v13;
    v26 = [v20 significantEvent];
    [v17 setSignificantEvent:v26];

    v27 = [v20 offset];
    if (v27)
    {
      [v17 setCurrentOffset:v27];
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

- (unint64_t)automaticDisablingReasonsForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 startConditionPickerItem];
  v7 = v6;
  if (v6 == v4)
  {

    goto LABEL_5;
  }

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 endConditionPickerItem];

  if (v9 == v4)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v12.receiver = self;
  v12.super_class = HUTriggerTimeConditionDetailEditorViewController;
  v10 = [(HUItemTableViewController *)&v12 automaticDisablingReasonsForItem:v4];
LABEL_6:

  return v10;
}

- (void)significantEventOffsetPicker:(id)a3 didSelectOffset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUTriggerTimeConditionDetailEditorViewController *)self tableView];
  v22 = [v8 indexPathForCell:v7];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v22];

  v11 = objc_opt_class();
  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 primitiveConditionForPickerItem:v10];
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

    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
  }

  v15 = 0;
LABEL_8:

  v18 = objc_alloc(MEMORY[0x277D14B70]);
  v19 = [v15 significantEvent];
  v20 = [v18 initWithSignificantEvent:v19 offset:v6 comparisonType:{objc_msgSend(v15, "comparisonType")}];

  v21 = [(HUItemTableViewController *)self itemManager];
  [v21 setPrimitiveCondition:v20 forPickerItem:v10];
}

- (void)datePickerCell:(id)a3 didSelectDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUTriggerTimeConditionDetailEditorViewController *)self tableView];
  v22 = [v8 indexPathForCell:v7];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v22];

  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [v11 components:96 fromDate:v6];

  v13 = objc_opt_class();
  v14 = [(HUItemTableViewController *)self itemManager];
  v15 = [v14 primitiveConditionForPickerItem:v10];
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

    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v18 handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];
  }

  v17 = 0;
LABEL_8:

  v20 = [objc_alloc(MEMORY[0x277D145F0]) initWithDateComponents:v12 comparisonType:{objc_msgSend(v17, "comparisonType")}];
  v21 = [(HUItemTableViewController *)self itemManager];
  [v21 setPrimitiveCondition:v20 forPickerItem:v10];
}

- (HUTriggerTimeConditionDetailEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end