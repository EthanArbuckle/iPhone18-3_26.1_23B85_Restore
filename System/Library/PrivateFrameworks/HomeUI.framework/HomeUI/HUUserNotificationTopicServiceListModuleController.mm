@interface HUUserNotificationTopicServiceListModuleController
- (Class)cellClassForItem:(id)a3;
- (id)showNotificationSettingsForServiceLikeItem:(id)a3 animated:(BOOL)a4;
- (unint64_t)didSelectItem:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUUserNotificationTopicServiceListModuleController

- (Class)cellClassForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 sourceItem];
  objc_opt_class();
  objc_opt_isKindOfClass();

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v4 = a3;
  [v4 setHideIcon:1];
  [v4 setAccessoryView:0];
  [v4 setAccessoryType:1];
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = HUUserNotificationTopicServiceListModuleController;
  [(HUItemModuleController *)&v15 updateCell:v8 forItem:v9 animated:v5];
  v10 = [v9 latestResults];
  v11 = [v10 objectForKeyedSubscript:@"HUUserNotificationTopicSubtitleResultKey"];

  if (v11)
  {
    v12 = v8;
    [v12 setDescriptionText:v11];
    v13 = [v9 latestResults];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    [v12 setValueText:v14];
  }
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = HUUserNotificationTopicServiceListModuleController;
  v7 = a4;
  [(HUItemModuleController *)&v15 configureCell:v6 forItem:v7];
  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v12 = [HUListContentConfigurationUtilities labelConfiguration:v11 forItem:v7];

  [v10 setContentConfiguration:v12];
  v13 = objc_alloc_init(MEMORY[0x277D75258]);
  v16[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v10 setAccessories:v14];
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 serviceLikeItemForItem:v4];

  if (v6)
  {
    v7 = [(HUUserNotificationTopicServiceListModuleController *)self showNotificationSettingsForServiceLikeItem:v6 animated:1];
  }

  else
  {
    NSLog(&cfstr_MissingService.isa, v4);
  }

  return 0;
}

- (id)showNotificationSettingsForServiceLikeItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [HUStatusAndNotificationsViewController alloc];
  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 home];
  v10 = [(HUStatusAndNotificationsViewController *)v7 initWithServiceItem:v6 inHome:v9 displayingDetails:0];

  v11 = [HUViewControllerPresentationRequest requestWithViewController:v10];
  [v11 setPreferredPresentationType:1];
  [v11 setAnimated:v4];
  v12 = [(HUItemModuleController *)self host];
  v13 = [v12 moduleController:self presentViewControllerForRequest:v11];

  return v13;
}

@end