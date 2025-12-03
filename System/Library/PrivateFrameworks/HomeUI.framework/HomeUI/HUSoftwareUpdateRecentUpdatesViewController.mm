@interface HUSoftwareUpdateRecentUpdatesViewController
- (HUPresentationDelegate)presentationDelegate;
- (HUSoftwareUpdateRecentUpdatesViewController)initWithHome:(id)home;
- (HUSoftwareUpdateRecentUpdatesViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)itemModuleControllers;
- (void)viewDidLoad;
@end

@implementation HUSoftwareUpdateRecentUpdatesViewController

- (HUSoftwareUpdateRecentUpdatesViewController)initWithHome:(id)home
{
  homeCopy = home;
  v5 = [[HUSoftwareUpdateRecentUpdatesItemManager alloc] initWithDelegate:self home:homeCopy];

  v8.receiver = self;
  v8.super_class = HUSoftwareUpdateRecentUpdatesViewController;
  v6 = [(HUItemTableViewController *)&v8 initWithItemManager:v5 tableViewStyle:1];

  return v6;
}

- (HUSoftwareUpdateRecentUpdatesViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateRecentUpdatesViewController.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateRecentUpdatesViewController initWithItemManager:tableViewStyle:]", v7}];

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
  softwareUpdateItemModuleController = [(HUSoftwareUpdateRecentUpdatesViewController *)self softwareUpdateItemModuleController];

  if (!softwareUpdateItemModuleController)
  {
    v4 = [HUSoftwareUpdateItemModuleController alloc];
    itemManager = [(HUItemTableViewController *)self itemManager];
    softwareUpdateModule = [itemManager softwareUpdateModule];
    v7 = [(HUSoftwareUpdateItemModuleController *)v4 initWithModule:softwareUpdateModule delegate:0 expandableTextViewCellDelegate:self];
    [(HUSoftwareUpdateRecentUpdatesViewController *)self setSoftwareUpdateItemModuleController:v7];
  }

  v8 = MEMORY[0x277CBEB98];
  softwareUpdateItemModuleController2 = [(HUSoftwareUpdateRecentUpdatesViewController *)self softwareUpdateItemModuleController];
  v10 = [v8 setWithObject:softwareUpdateItemModuleController2];

  return v10;
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end