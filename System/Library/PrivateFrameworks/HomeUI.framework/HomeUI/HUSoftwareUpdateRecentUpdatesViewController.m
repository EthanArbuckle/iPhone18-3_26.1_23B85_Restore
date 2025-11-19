@interface HUSoftwareUpdateRecentUpdatesViewController
- (HUPresentationDelegate)presentationDelegate;
- (HUSoftwareUpdateRecentUpdatesViewController)initWithHome:(id)a3;
- (HUSoftwareUpdateRecentUpdatesViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)itemModuleControllers;
- (void)viewDidLoad;
@end

@implementation HUSoftwareUpdateRecentUpdatesViewController

- (HUSoftwareUpdateRecentUpdatesViewController)initWithHome:(id)a3
{
  v4 = a3;
  v5 = [[HUSoftwareUpdateRecentUpdatesItemManager alloc] initWithDelegate:self home:v4];

  v8.receiver = self;
  v8.super_class = HUSoftwareUpdateRecentUpdatesViewController;
  v6 = [(HUItemTableViewController *)&v8 initWithItemManager:v5 tableViewStyle:1];

  return v6;
}

- (HUSoftwareUpdateRecentUpdatesViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateRecentUpdatesViewController.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateRecentUpdatesViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HUSoftwareUpdateRecentUpdatesViewController;
  [(HUItemTableViewController *)&v4 viewDidLoad];
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateUpdatedRecentlyTitle", @"HUSoftwareUpdateUpdatedRecentlyTitle", 1);
  [(HUSoftwareUpdateRecentUpdatesViewController *)self setTitle:v3];
}

- (id)itemModuleControllers
{
  v3 = [(HUSoftwareUpdateRecentUpdatesViewController *)self softwareUpdateItemModuleController];

  if (!v3)
  {
    v4 = [HUSoftwareUpdateItemModuleController alloc];
    v5 = [(HUItemTableViewController *)self itemManager];
    v6 = [v5 softwareUpdateModule];
    v7 = [(HUSoftwareUpdateItemModuleController *)v4 initWithModule:v6 delegate:0 expandableTextViewCellDelegate:self];
    [(HUSoftwareUpdateRecentUpdatesViewController *)self setSoftwareUpdateItemModuleController:v7];
  }

  v8 = MEMORY[0x277CBEB98];
  v9 = [(HUSoftwareUpdateRecentUpdatesViewController *)self softwareUpdateItemModuleController];
  v10 = [v8 setWithObject:v9];

  return v10;
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end