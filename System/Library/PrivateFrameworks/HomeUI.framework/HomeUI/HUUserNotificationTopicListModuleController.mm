@interface HUUserNotificationTopicListModuleController
- (id)presentNotificationSettingsForTopic:(id)topic animated:(BOOL)animated;
- (id)showNotificationSettingsForHomeKitObject:(id)object animated:(BOOL)animated;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
@end

@implementation HUUserNotificationTopicListModuleController

- (void)setupCell:(id)cell forItem:(id)item
{
  v45 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  v9 = cellCopy;
  [v9 setIconDisplayStyle:1];
  v10 = +[HUIconCellContentMetrics compactMetrics];
  [v9 setContentMetrics:v10];

  [v9 setDisableContinuousIconAnimation:1];
  [v9 setAccessoryType:1];
  [v9 setIconForegroundColorFollowsTintColor:1];
  objc_opt_class();
  latestResults = [itemCopy latestResults];
  v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  isSystemImage = [v14 isSystemImage];
  if (isSystemImage)
  {
    selfCopy = self;
    objc_opt_class();
    v16 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    topic = [v18 topic];
    accessoryType = [topic accessoryType];

    hu_tintColor = [accessoryType hu_tintColor];
    topic2 = [v18 topic];
    topicName = [topic2 topicName];
    v24 = HFLocalizedString();
    v25 = [topicName isEqualToString:v24];

    if (v25)
    {
      systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];

      v27 = HFLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = NSStringFromSelector(a2);
        topic3 = [v18 topic];
        topicName2 = [topic3 topicName];
        *buf = 138413058;
        v38 = selfCopy;
        v39 = 2112;
        v40 = v28;
        v41 = 2112;
        v42 = topicName2;
        v43 = 2112;
        v44 = systemGreenColor;
        _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@ Setting new color for %@ to %@", buf, 0x2Au);
      }
    }

    else
    {
      systemGreenColor = hu_tintColor;
    }

    objc_opt_class();
    v31 = accessoryType;
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    if (systemGreenColor)
    {
      categoryType = [v33 categoryType];
      v35 = [categoryType isEqual:*MEMORY[0x277CCE8B0]];

      if ((v35 & 1) == 0)
      {
        [v9 setIconForegroundColor:systemGreenColor];
        [v9 setIconForegroundColorFollowsTintColor:0];
      }
    }
  }
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  bridgesItem = [module bridgesItem];
  v7 = [itemCopy isEqual:bridgesItem];

  if (v7)
  {
    module2 = [(HUItemModuleController *)self module];
    home = [module2 home];
    v10 = [_TtC6HomeUI24HomeHubsAndBridgesHelper createHomeHubsAndBridgesListViewHostingControllerWithHome:home];
  }

  else
  {
    module3 = [(HUItemModuleController *)self module];
    networkRoutersListItem = [module3 networkRoutersListItem];
    v13 = [itemCopy isEqual:networkRoutersListItem];

    if (v13)
    {
      v14 = HUNetworkRouterSettingsViewController;
    }

    else
    {
      module4 = [(HUItemModuleController *)self module];
      speakerSettingsItem = [module4 speakerSettingsItem];
      v17 = [itemCopy isEqual:speakerSettingsItem];

      if (!v17)
      {
        module5 = [(HUItemModuleController *)self module];
        v19 = [module5 topicForItem:itemCopy];

        v25 = [(HUUserNotificationTopicListModuleController *)self presentNotificationSettingsForTopic:v19 animated:1];
        goto LABEL_9;
      }

      v14 = HUMediaAccessControlEditorTableViewController;
    }

    v18 = [v14 alloc];
    module2 = [(HUItemModuleController *)self module];
    home = [module2 home];
    v10 = [v18 initWithHome:home];
  }

  v19 = v10;

  v20 = [HUViewControllerPresentationRequest requestWithViewController:v19];
  [v20 setPreferredPresentationType:1];
  host = [(HUItemModuleController *)self host];
  v22 = [host moduleController:self presentViewControllerForRequest:v20];

LABEL_9:
  return 0;
}

- (id)presentNotificationSettingsForTopic:(id)topic animated:(BOOL)animated
{
  animatedCopy = animated;
  topicCopy = topic;
  serviceTypes = [topicCopy serviceTypes];
  v8 = [serviceTypes containsObject:*MEMORY[0x277CD0EB0]];

  if (v8)
  {
    pinCodeManager = [(HUUserNotificationTopicListModuleController *)self pinCodeManager];

    v10 = [HULockCategorySettingsViewController alloc];
    if (pinCodeManager)
    {
      pinCodeManager2 = [(HUUserNotificationTopicListModuleController *)self pinCodeManager];
      module = [(HUItemModuleController *)self module];
      home = [module home];
      v14 = [(HULockCategorySettingsViewController *)v10 initWithLockTopic:topicCopy pinCodeManager:pinCodeManager2 home:home];

      goto LABEL_7;
    }

    pinCodeManager2 = [(HUItemModuleController *)self module];
    module = [pinCodeManager2 home];
    v16 = [(HULockCategorySettingsViewController *)v10 initWithLockTopic:topicCopy home:module];
  }

  else
  {
    v15 = [HUUserNotificationTopicServiceListViewController alloc];
    pinCodeManager2 = [(HUItemModuleController *)self module];
    module = [pinCodeManager2 home];
    v16 = [(HUUserNotificationTopicServiceListViewController *)v15 initWithHome:module topic:topicCopy];
  }

  v14 = v16;
LABEL_7:

  v17 = [HUViewControllerPresentationRequest requestWithViewController:v14];
  [v17 setPreferredPresentationType:1];
  [v17 setAnimated:animatedCopy];
  host = [(HUItemModuleController *)self host];
  v19 = [host moduleController:self presentViewControllerForRequest:v17];

  return v19;
}

- (id)showNotificationSettingsForHomeKitObject:(id)object animated:(BOOL)animated
{
  animatedCopy = animated;
  objectCopy = object;
  module = [(HUItemModuleController *)self module];
  home = [module home];
  v9 = [home hf_userNotificationTopicForObject:objectCopy];

  v10 = [(HUUserNotificationTopicListModuleController *)self presentNotificationSettingsForTopic:v9 animated:animatedCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HUUserNotificationTopicListModuleController_showNotificationSettingsForHomeKitObject_animated___block_invoke;
  v14[3] = &unk_277DBFF80;
  v15 = objectCopy;
  v16 = animatedCopy;
  v11 = objectCopy;
  v12 = [v10 flatMap:v14];

  return v12;
}

@end