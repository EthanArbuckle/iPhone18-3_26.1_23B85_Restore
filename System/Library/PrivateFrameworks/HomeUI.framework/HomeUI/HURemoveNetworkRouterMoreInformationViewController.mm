@interface HURemoveNetworkRouterMoreInformationViewController
- (HURemoveNetworkRouterMoreInformationViewController)initWithHome:(id)home;
- (void)viewDidLoad;
@end

@implementation HURemoveNetworkRouterMoreInformationViewController

- (HURemoveNetworkRouterMoreInformationViewController)initWithHome:(id)home
{
  homeCopy = home;
  v5 = HULocalizedWiFiString(@"HUNetworkRouterRemoveManualReconfigurationTitle");
  v6 = HULocalizedWiFiString(@"HUNetworkRouterRemoveManualReconfigurationDescription");
  v7 = [[HUNetworkRouterManualReconfigurationViewController alloc] initWithHome:homeCopy];

  v10.receiver = self;
  v10.super_class = HURemoveNetworkRouterMoreInformationViewController;
  v8 = [(HUItemTableOBWelcomeController *)&v10 initWithTitle:v5 detailText:v6 icon:0 contentLayout:2 itemTableViewController:v7];

  return v8;
}

- (void)viewDidLoad
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HURemoveNetworkRouterMoreInformationViewController;
  [(HUItemTableOBWelcomeController *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__donePressed_];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  v8[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setRightBarButtonItems:v5];
}

@end