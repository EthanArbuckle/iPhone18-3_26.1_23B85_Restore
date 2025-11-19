@interface HUSafetyAndSecuritySettingsNotificationsViewController
- (HUSafetyAndSecuritySettingsNotificationsViewController)initWithHome:(id)a3;
- (id)buildItemModuleControllerForModule:(id)a3;
@end

@implementation HUSafetyAndSecuritySettingsNotificationsViewController

- (HUSafetyAndSecuritySettingsNotificationsViewController)initWithHome:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HUSafetyAndSecuritySettingsNotificationsViewController.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v6 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__HUSafetyAndSecuritySettingsNotificationsViewController_initWithHome___block_invoke;
  v13[3] = &unk_277DB7478;
  v7 = v5;
  v14 = v7;
  [v6 setHomeCreator:v13];
  [v6 setItemModuleCreator:&__block_literal_global_87];
  v12.receiver = self;
  v12.super_class = HUSafetyAndSecuritySettingsNotificationsViewController;
  v8 = [(HUItemTableViewController *)&v12 initWithItemManager:v6 tableViewStyle:1];
  if (v8)
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUSafetyAndSecuritySettings_Notifications_Title", @"HUSafetyAndSecuritySettings_Notifications_Title", 1);
    [(HUSafetyAndSecuritySettingsNotificationsViewController *)v8 setTitle:v9];
  }

  return v8;
}

id __71__HUSafetyAndSecuritySettingsNotificationsViewController_initWithHome___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = a2;
  v7 = [v4 arrayWithCapacity:1];
  v8 = [[HUSafetyAndSecuritySettingsNotificationsItemModule alloc] initWithItemUpdater:v5 home:v6];

  [v7 addObject:v8];

  return v7;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, v4);
  }

  v5 = [(HUItemModuleController *)[HUSafetyAndSecuritySettingsNotificationsItemModuleController alloc] initWithModule:v4];
  [(HUSafetyAndSecuritySettingsNotificationsViewController *)self setModuleController:v5];

  v6 = [(HUSafetyAndSecuritySettingsNotificationsViewController *)self moduleController];

  return v6;
}

@end