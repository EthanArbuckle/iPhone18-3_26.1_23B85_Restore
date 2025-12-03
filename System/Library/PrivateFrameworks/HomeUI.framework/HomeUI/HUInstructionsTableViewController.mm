@interface HUInstructionsTableViewController
- (BOOL)shouldHideFooterBelowSection:(int64_t)section;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUInstructionsTableViewController)initWithInstructionsItem:(id)item contentViewController:(id)controller;
- (HUInstructionsTableViewController)initWithItemManager:(id)manager;
- (HUInstructionsTableViewController)initWithItemManager:(id)manager instructionsItem:(id)item contentViewController:(id)controller;
- (HUInstructionsTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)childViewControllersToPreload;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUInstructionsTableViewController

- (HUInstructionsTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithInstructionsItem_contentViewController_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUInstructionsTableViewController.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUInstructionsTableViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUInstructionsTableViewController)initWithItemManager:(id)manager instructionsItem:(id)item contentViewController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = HUInstructionsTableViewController;
  v11 = [(HUItemTableViewController *)&v14 initWithItemManager:manager tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_instructionsItem, item);
    objc_storeStrong(&v12->_contentViewController, controller);
  }

  return v12;
}

- (HUInstructionsTableViewController)initWithInstructionsItem:(id)item contentViewController:(id)controller
{
  v22[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = MEMORY[0x277D14B08];
  controllerCopy = controller;
  v9 = [v7 alloc];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __84__HUInstructionsTableViewController_initWithInstructionsItem_contentViewController___block_invoke;
  v20 = &unk_277DBA3D0;
  v21 = itemCopy;
  v10 = itemCopy;
  v11 = [v9 initWithDelegate:self itemProvidersCreator:&v17];
  v12 = MEMORY[0x277D14CE8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, v17, v18, v19, v20}];
  v14 = [v12 comparatorWithSortedClasses:v13 secondaryComparator:0];
  [v11 setItemComparator:v14];

  v15 = [(HUInstructionsTableViewController *)self initWithItemManager:v11 instructionsItem:v10 contentViewController:controllerCopy];
  return v15;
}

id __84__HUInstructionsTableViewController_initWithInstructionsItem_contentViewController___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D14B38]);
  v3 = [v2 initWithResults:MEMORY[0x277CBEC10]];
  v4 = objc_opt_new();
  [v4 na_safeAddObject:*(a1 + 32)];
  [v4 na_safeAddObject:v3];
  v5 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v4];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (HUInstructionsTableViewController)initWithItemManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = HUInstructionsTableViewController;
  return [(HUItemTableViewController *)&v4 initWithItemManager:manager tableViewStyle:1];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HUInstructionsTableViewController;
  [(HUItemTableViewController *)&v4 viewDidLoad];
  tableView = [(HUInstructionsTableViewController *)self tableView];
  [tableView setSeparatorStyle:0];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
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
    v13 = MEMORY[0x277D75348];
    v14 = cellCopy;
    clearColor = [v13 clearColor];
    [v14 setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    contentView = [v14 contentView];
    [contentView setBackgroundColor:clearColor2];

    contentViewController = [(HUInstructionsTableViewController *)self contentViewController];
    [v14 setViewController:contentViewController];
  }

  v19.receiver = self;
  v19.super_class = HUInstructionsTableViewController;
  [(HUItemTableViewController *)&v19 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  LOBYTE(section) = [itemManager numberOfSections] - 1 > section;

  return section;
}

- (id)childViewControllersToPreload
{
  v2 = MEMORY[0x277CBEA60];
  contentViewController = [(HUInstructionsTableViewController *)self contentViewController];
  v4 = [v2 na_arrayWithSafeObject:contentViewController];

  return v4;
}

@end