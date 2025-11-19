@interface HUSafetyAndSecuritySettingsNotificationsItemModuleController
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
@end

@implementation HUSafetyAndSecuritySettingsNotificationsItemModuleController

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = HUSafetyAndSecuritySettingsNotificationsItemModuleController;
  [(HUItemModuleController *)&v8 setupCell:v6 forItem:a4];
  v7 = v6;
  [v7 setAccessoryView:0];
  [v7 setAccessoryType:1];
  [v7 setHideIcon:1];
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = v4;
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
  v11 = [v10 sourceItem];

  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [HUStatusAndNotificationsViewController alloc];
    v15 = [v7 home];
    v16 = [(HUStatusAndNotificationsViewController *)v14 initWithServiceItem:v13 inHome:v15 displayingDetails:0];

    v17 = [HUViewControllerPresentationRequest requestWithViewController:v16];
    v18 = 1;
    [v17 setAnimated:1];
    [v17 setPreferredPresentationType:1];
    v19 = [(HUItemModuleController *)self host];
    v20 = [v19 moduleController:self presentViewControllerForRequest:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end