@interface HUMatterConnectedServicesItemModuleController
- (BOOL)canSelectItem:(id)item;
- (unint64_t)didSelectItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUMatterConnectedServicesItemModuleController

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  latestResults = [item latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FD0]];
  bOOLValue = [v8 BOOLValue];

  objc_opt_class();
  v12 = cellCopy;
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
  [v11 setShowSpinner:bOOLValue];
}

- (BOOL)canSelectItem:(id)item
{
  latestResults = [item latestResults];
  v4 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

  LOBYTE(latestResults) = [v4 BOOLValue];
  return latestResults ^ 1;
}

- (unint64_t)didSelectItem:(id)item
{
  module = [(HUItemModuleController *)self module];
  connectedServicesItemProvider = [module connectedServicesItemProvider];

  v6 = [[HUMatterConnectedServicesViewController alloc] initWithConnectedServicesItemProvider:connectedServicesItemProvider];
  host = [(HUItemModuleController *)self host];
  if ([host conformsToProtocol:&unk_28253CF98])
  {
    v8 = host;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [(HUMatterConnectedServicesViewController *)v6 setDelegate:v9];

  v10 = [HUViewControllerPresentationRequest requestWithViewController:v6];
  [v10 setPreferredPresentationType:1];
  host2 = [(HUItemModuleController *)self host];
  v12 = [host2 moduleController:self presentViewControllerForRequest:v10];

  return 0;
}

@end