@interface HUNetworkConfigurationSettingsMismatchViewController
- (HUNetworkConfigurationSettingsMismatchViewController)initWithProfiles:(id)profiles;
- (void)viewDidLoad;
@end

@implementation HUNetworkConfigurationSettingsMismatchViewController

- (HUNetworkConfigurationSettingsMismatchViewController)initWithProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = _HULocalizedStringWithDefaultValue(@"HUNetworkConfigurationSettingsMismatchTitle", @"HUNetworkConfigurationSettingsMismatchTitle", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUNetworkConfigurationSettingsMismatchDescription", @"HUNetworkConfigurationSettingsMismatchDescription", 1);
  v7 = [[HUNetworkConfigurationMismatchViewController alloc] initWithProfiles:profilesCopy];

  v10.receiver = self;
  v10.super_class = HUNetworkConfigurationSettingsMismatchViewController;
  v8 = [(HUItemTableOBWelcomeController *)&v10 initWithTitle:v5 detailText:v6 icon:0 contentLayout:2 itemTableViewController:v7];

  return v8;
}

- (void)viewDidLoad
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUNetworkConfigurationSettingsMismatchViewController;
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