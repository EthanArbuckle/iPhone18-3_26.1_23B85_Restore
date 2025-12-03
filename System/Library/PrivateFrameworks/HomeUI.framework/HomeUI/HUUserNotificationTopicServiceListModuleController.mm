@interface HUUserNotificationTopicServiceListModuleController
- (Class)cellClassForItem:(id)item;
- (id)showNotificationSettingsForServiceLikeItem:(id)item animated:(BOOL)animated;
- (unint64_t)didSelectItem:(id)item;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUUserNotificationTopicServiceListModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v4 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  sourceItem = [v6 sourceItem];
  objc_opt_class();
  objc_opt_isKindOfClass();

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  [cellCopy setHideIcon:1];
  [cellCopy setAccessoryView:0];
  [cellCopy setAccessoryType:1];
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = HUUserNotificationTopicServiceListModuleController;
  [(HUItemModuleController *)&v15 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  latestResults = [itemCopy latestResults];
  v11 = [latestResults objectForKeyedSubscript:@"HUUserNotificationTopicSubtitleResultKey"];

  if (v11)
  {
    v12 = cellCopy;
    [v12 setDescriptionText:v11];
    latestResults2 = [itemCopy latestResults];
    v14 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    [v12 setValueText:v14];
  }
}

- (void)configureCell:(id)cell forItem:(id)item
{
  v16[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v15.receiver = self;
  v15.super_class = HUUserNotificationTopicServiceListModuleController;
  itemCopy = item;
  [(HUItemModuleController *)&v15 configureCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  v8 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v12 = [HUListContentConfigurationUtilities labelConfiguration:valueCellConfiguration forItem:itemCopy];

  [v10 setContentConfiguration:v12];
  v13 = objc_alloc_init(MEMORY[0x277D75258]);
  v16[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v10 setAccessories:v14];
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module serviceLikeItemForItem:itemCopy];

  if (v6)
  {
    v7 = [(HUUserNotificationTopicServiceListModuleController *)self showNotificationSettingsForServiceLikeItem:v6 animated:1];
  }

  else
  {
    NSLog(&cfstr_MissingService.isa, itemCopy);
  }

  return 0;
}

- (id)showNotificationSettingsForServiceLikeItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  v7 = [HUStatusAndNotificationsViewController alloc];
  module = [(HUItemModuleController *)self module];
  home = [module home];
  v10 = [(HUStatusAndNotificationsViewController *)v7 initWithServiceItem:itemCopy inHome:home displayingDetails:0];

  v11 = [HUViewControllerPresentationRequest requestWithViewController:v10];
  [v11 setPreferredPresentationType:1];
  [v11 setAnimated:animatedCopy];
  host = [(HUItemModuleController *)self host];
  v13 = [host moduleController:self presentViewControllerForRequest:v11];

  return v13;
}

@end