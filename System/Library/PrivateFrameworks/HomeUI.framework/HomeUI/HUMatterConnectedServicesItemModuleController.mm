@interface HUMatterConnectedServicesItemModuleController
- (BOOL)canSelectItem:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUMatterConnectedServicesItemModuleController

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v6 = a3;
  v7 = [a4 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13FD0]];
  v9 = [v8 BOOLValue];

  objc_opt_class();
  v12 = v6;
  if (objc_opt_isKindOfClass())
  {
    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 setHideIcon:1];
  [v11 setAccessoryType:1];
  [v11 setShowSpinner:v9];
}

- (BOOL)canSelectItem:(id)a3
{
  v3 = [a3 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

  LOBYTE(v3) = [v4 BOOLValue];
  return v3 ^ 1;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = [(HUItemModuleController *)self module];
  v5 = [v4 connectedServicesItemProvider];

  v6 = [[HUMatterConnectedServicesViewController alloc] initWithConnectedServicesItemProvider:v5];
  v7 = [(HUItemModuleController *)self host];
  if ([v7 conformsToProtocol:&unk_28253CF98])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [(HUMatterConnectedServicesViewController *)v6 setDelegate:v9];

  v10 = [HUViewControllerPresentationRequest requestWithViewController:v6];
  [v10 setPreferredPresentationType:1];
  v11 = [(HUItemModuleController *)self host];
  v12 = [v11 moduleController:self presentViewControllerForRequest:v10];

  return 0;
}

@end