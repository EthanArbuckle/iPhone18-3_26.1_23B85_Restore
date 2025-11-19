@interface HUTimeEventOffsetEditorViewController
- (HUTimeEventOffsetEditorDelegate)delegate;
- (HUTimeEventOffsetEditorViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUTimeEventOffsetEditorViewController)initWithSignificantEvent:(id)a3 currentOffset:(id)a4 delegate:(id)a5;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUTimeEventOffsetEditorViewController

- (HUTimeEventOffsetEditorViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithSignificantEvent_currentOffset_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUTimeEventOffsetEditorViewController.m" lineNumber:29 description:{@"%s is unavailable; use %@ instead", "-[HUTimeEventOffsetEditorViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUTimeEventOffsetEditorViewController)initWithSignificantEvent:(id)a3 currentOffset:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self itemProvidersCreator:&__block_literal_global_232];
  v16.receiver = self;
  v16.super_class = HUTimeEventOffsetEditorViewController;
  v13 = [(HUItemTableViewController *)&v16 initWithItemManager:v12 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_significantEvent, a3);
    objc_storeStrong(&v14->_currentOffset, a4);
    objc_storeStrong(&v14->_selectedOffset, a4);
    objc_storeWeak(&v14->_delegate, v11);
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
  v3 = [(HUTimeEventOffsetEditorViewController *)self tableView];
  [v3 setSeparatorStyle:1];

  v4 = [(HUTimeEventOffsetEditorViewController *)self tableView];
  [v4 setScrollEnabled:0];

  v5 = [(HUTimeEventOffsetEditorViewController *)self significantEvent];
  v6 = [v5 isEqualToString:*MEMORY[0x277CD0FA8]];

  if (v6)
  {
    v7 = @"HUTimeEventOffsetEditorTitleSunrise";
  }

  else
  {
    v8 = [(HUTimeEventOffsetEditorViewController *)self significantEvent];
    v9 = [v8 isEqualToString:*MEMORY[0x277CD0FB0]];

    if (!v9)
    {
      v10 = [(HUTimeEventOffsetEditorViewController *)self significantEvent];
      NSLog(&cfstr_UnhandledSigni.isa, v10);
      goto LABEL_7;
    }

    v7 = @"HUTimeEventOffsetEditorTitleSunset";
  }

  v10 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
  [(HUTimeEventOffsetEditorViewController *)self setTitle:v10];
LABEL_7:

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  v12 = [(HUTimeEventOffsetEditorViewController *)self navigationItem];
  [v12 setLeftBarButtonItem:v11];

  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  v14 = [(HUTimeEventOffsetEditorViewController *)self navigationItem];
  [v14 setRightBarButtonItem:v13];
}

- (void)_cancel:(id)a3
{
  v4 = [(HUTimeEventOffsetEditorViewController *)self delegate];
  [v4 timerTriggerOffsetEditorDidCancel:self];
}

- (void)_done:(id)a3
{
  v5 = [(HUTimeEventOffsetEditorViewController *)self delegate];
  v4 = [(HUTimeEventOffsetEditorViewController *)self selectedOffset];
  [v5 timerTriggerOffsetEditor:self didFinishWithOffset:v4];
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_class();
  v12 = v8;
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
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v15 handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];

LABEL_7:
    v14 = 0;
  }

  [v14 setDelegate:self];
  v17.receiver = self;
  v17.super_class = HUTimeEventOffsetEditorViewController;
  [(HUItemTableViewController *)&v17 setupCell:v12 forItem:v10 indexPath:v9];
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_class();
  v14 = v10;
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
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v17 handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];

LABEL_7:
    v16 = 0;
  }

  v19 = [(HUTimeEventOffsetEditorViewController *)self significantEvent];
  [v16 setSignificantEvent:v19];

  v20 = [(HUTimeEventOffsetEditorViewController *)self currentOffset];
  [v16 setCurrentOffset:v20];

  v21.receiver = self;
  v21.super_class = HUTimeEventOffsetEditorViewController;
  [(HUItemTableViewController *)&v21 updateCell:v14 forItem:v12 indexPath:v11 animated:v6];
}

- (HUTimeEventOffsetEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end