@interface HUSafetyAndSecuritySettingsNotificationsItemModuleController
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
@end

@implementation HUSafetyAndSecuritySettingsNotificationsItemModuleController

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v8.receiver = self;
  v8.super_class = HUSafetyAndSecuritySettingsNotificationsItemModuleController;
  [(HUItemModuleController *)&v8 setupCell:cellCopy forItem:item];
  v7 = cellCopy;
  [v7 setAccessoryView:0];
  [v7 setAccessoryType:1];
  [v7 setHideIcon:1];
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  sourceItem = [v10 sourceItem];

  if (objc_opt_isKindOfClass())
  {
    v12 = sourceItem;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [HUStatusAndNotificationsViewController alloc];
    home = [v7 home];
    v16 = [(HUStatusAndNotificationsViewController *)v14 initWithServiceItem:v13 inHome:home displayingDetails:0];

    v17 = [HUViewControllerPresentationRequest requestWithViewController:v16];
    v18 = 1;
    [v17 setAnimated:1];
    [v17 setPreferredPresentationType:1];
    host = [(HUItemModuleController *)self host];
    v20 = [host moduleController:self presentViewControllerForRequest:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end