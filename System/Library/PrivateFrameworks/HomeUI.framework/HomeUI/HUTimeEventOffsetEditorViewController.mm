@interface HUTimeEventOffsetEditorViewController
- (HUTimeEventOffsetEditorDelegate)delegate;
- (HUTimeEventOffsetEditorViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUTimeEventOffsetEditorViewController)initWithSignificantEvent:(id)event currentOffset:(id)offset delegate:(id)delegate;
- (void)_cancel:(id)_cancel;
- (void)_done:(id)_done;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUTimeEventOffsetEditorViewController

- (HUTimeEventOffsetEditorViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithSignificantEvent_currentOffset_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTimeEventOffsetEditorViewController.m" lineNumber:29 description:{@"%s is unavailable; use %@ instead", "-[HUTimeEventOffsetEditorViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUTimeEventOffsetEditorViewController)initWithSignificantEvent:(id)event currentOffset:(id)offset delegate:(id)delegate
{
  eventCopy = event;
  offsetCopy = offset;
  delegateCopy = delegate;
  v12 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self itemProvidersCreator:&__block_literal_global_232];
  v16.receiver = self;
  v16.super_class = HUTimeEventOffsetEditorViewController;
  v13 = [(HUItemTableViewController *)&v16 initWithItemManager:v12 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_significantEvent, event);
    objc_storeStrong(&v14->_currentOffset, offset);
    objc_storeStrong(&v14->_selectedOffset, offset);
    objc_storeWeak(&v14->_delegate, delegateCopy);
  }

  return v14;
}

id __89__HUTimeEventOffsetEditorViewController_initWithSignificantEvent_currentOffset_delegate___block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277D14B38]);
  v1 = [v0 initWithResults:MEMORY[0x277CBEC10]];
  v2 = objc_alloc(MEMORY[0x277D14B40]);
  v3 = [MEMORY[0x277CBEB98] setWithObject:v1];
  v4 = [v2 initWithItems:v3];

  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = HUTimeEventOffsetEditorViewController;
  [(HUItemTableViewController *)&v15 viewDidLoad];
  tableView = [(HUTimeEventOffsetEditorViewController *)self tableView];
  [tableView setSeparatorStyle:1];

  tableView2 = [(HUTimeEventOffsetEditorViewController *)self tableView];
  [tableView2 setScrollEnabled:0];

  significantEvent = [(HUTimeEventOffsetEditorViewController *)self significantEvent];
  v6 = [significantEvent isEqualToString:*MEMORY[0x277CD0FA8]];

  if (v6)
  {
    v7 = @"HUTimeEventOffsetEditorTitleSunrise";
  }

  else
  {
    significantEvent2 = [(HUTimeEventOffsetEditorViewController *)self significantEvent];
    v9 = [significantEvent2 isEqualToString:*MEMORY[0x277CD0FB0]];

    if (!v9)
    {
      significantEvent3 = [(HUTimeEventOffsetEditorViewController *)self significantEvent];
      NSLog(&cfstr_UnhandledSigni.isa, significantEvent3);
      goto LABEL_7;
    }

    v7 = @"HUTimeEventOffsetEditorTitleSunset";
  }

  significantEvent3 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
  [(HUTimeEventOffsetEditorViewController *)self setTitle:significantEvent3];
LABEL_7:

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  navigationItem = [(HUTimeEventOffsetEditorViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v11];

  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  navigationItem2 = [(HUTimeEventOffsetEditorViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v13];
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUTimeEventOffsetEditorViewController *)self delegate];
  [delegate timerTriggerOffsetEditorDidCancel:self];
}

- (void)_done:(id)_done
{
  delegate = [(HUTimeEventOffsetEditorViewController *)self delegate];
  selectedOffset = [(HUTimeEventOffsetEditorViewController *)self selectedOffset];
  [delegate timerTriggerOffsetEditor:self didFinishWithOffset:selectedOffset];
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  itemCopy = item;
  v11 = objc_opt_class();
  v12 = cellCopy;
  if (!v12)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12;
  if (!v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];

LABEL_7:
    v14 = 0;
  }

  [v14 setDelegate:self];
  v17.receiver = self;
  v17.super_class = HUTimeEventOffsetEditorViewController;
  [(HUItemTableViewController *)&v17 setupCell:v12 forItem:itemCopy indexPath:pathCopy];
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  pathCopy = path;
  itemCopy = item;
  v13 = objc_opt_class();
  v14 = cellCopy;
  if (!v14)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14;
  if (!v15)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];

LABEL_7:
    v16 = 0;
  }

  significantEvent = [(HUTimeEventOffsetEditorViewController *)self significantEvent];
  [v16 setSignificantEvent:significantEvent];

  currentOffset = [(HUTimeEventOffsetEditorViewController *)self currentOffset];
  [v16 setCurrentOffset:currentOffset];

  v21.receiver = self;
  v21.super_class = HUTimeEventOffsetEditorViewController;
  [(HUItemTableViewController *)&v21 updateCell:v14 forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
}

- (HUTimeEventOffsetEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end