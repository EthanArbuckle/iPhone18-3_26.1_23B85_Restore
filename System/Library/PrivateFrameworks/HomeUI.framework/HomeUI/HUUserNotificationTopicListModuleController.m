@interface HUUserNotificationTopicListModuleController
- (id)presentNotificationSettingsForTopic:(id)a3 animated:(BOOL)a4;
- (id)showNotificationSettingsForHomeKitObject:(id)a3 animated:(BOOL)a4;
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
@end

@implementation HUUserNotificationTopicListModuleController

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  [v9 setIconDisplayStyle:1];
  v10 = +[HUIconCellContentMetrics compactMetrics];
  [v9 setContentMetrics:v10];

  [v9 setDisableContinuousIconAnimation:1];
  [v9 setAccessoryType:1];
  [v9 setIconForegroundColorFollowsTintColor:1];
  objc_opt_class();
  v11 = [v8 latestResults];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 isSystemImage];
  if (v15)
  {
    v36 = self;
    objc_opt_class();
    v16 = v8;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [v18 topic];
    v20 = [v19 accessoryType];

    v21 = [v20 hu_tintColor];
    v22 = [v18 topic];
    v23 = [v22 topicName];
    v24 = HFLocalizedString();
    v25 = [v23 isEqualToString:v24];

    if (v25)
    {
      v26 = [MEMORY[0x277D75348] systemGreenColor];

      v27 = HFLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = NSStringFromSelector(a2);
        v29 = [v18 topic];
        v30 = [v29 topicName];
        *buf = 138413058;
        v38 = v36;
        v39 = 2112;
        v40 = v28;
        v41 = 2112;
        v42 = v30;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@ Setting new color for %@ to %@", buf, 0x2Au);
      }
    }

    else
    {
      v26 = v21;
    }

    objc_opt_class();
    v31 = v20;
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    if (v26)
    {
      v34 = [v33 categoryType];
      v35 = [v34 isEqual:*MEMORY[0x277CCE8B0]];

      if ((v35 & 1) == 0)
      {
        [v9 setIconForegroundColor:v26];
        [v9 setIconForegroundColorFollowsTintColor:0];
      }
    }
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 bridgesItem];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = [(HUItemModuleController *)self module];
    v9 = [v8 home];
    v10 = [_TtC6HomeUI24HomeHubsAndBridgesHelper createHomeHubsAndBridgesListViewHostingControllerWithHome:v9];
  }

  else
  {
    v11 = [(HUItemModuleController *)self module];
    v12 = [v11 networkRoutersListItem];
    v13 = [v4 isEqual:v12];

    if (v13)
    {
      v14 = HUNetworkRouterSettingsViewController;
    }

    else
    {
      v15 = [(HUItemModuleController *)self module];
      v16 = [v15 speakerSettingsItem];
      v17 = [v4 isEqual:v16];

      if (!v17)
      {
        v24 = [(HUItemModuleController *)self module];
        v19 = [v24 topicForItem:v4];

        v25 = [(HUUserNotificationTopicListModuleController *)self presentNotificationSettingsForTopic:v19 animated:1];
        goto LABEL_9;
      }

      v14 = HUMediaAccessControlEditorTableViewController;
    }

    v18 = [v14 alloc];
    v8 = [(HUItemModuleController *)self module];
    v9 = [v8 home];
    v10 = [v18 initWithHome:v9];
  }

  v19 = v10;

  v20 = [HUViewControllerPresentationRequest requestWithViewController:v19];
  [v20 setPreferredPresentationType:1];
  v21 = [(HUItemModuleController *)self host];
  v22 = [v21 moduleController:self presentViewControllerForRequest:v20];

LABEL_9:
  return 0;
}

- (id)presentNotificationSettingsForTopic:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 serviceTypes];
  v8 = [v7 containsObject:*MEMORY[0x277CD0EB0]];

  if (v8)
  {
    v9 = [(HUUserNotificationTopicListModuleController *)self pinCodeManager];

    v10 = [HULockCategorySettingsViewController alloc];
    if (v9)
    {
      v11 = [(HUUserNotificationTopicListModuleController *)self pinCodeManager];
      v12 = [(HUItemModuleController *)self module];
      v13 = [v12 home];
      v14 = [(HULockCategorySettingsViewController *)v10 initWithLockTopic:v6 pinCodeManager:v11 home:v13];

      goto LABEL_7;
    }

    v11 = [(HUItemModuleController *)self module];
    v12 = [v11 home];
    v16 = [(HULockCategorySettingsViewController *)v10 initWithLockTopic:v6 home:v12];
  }

  else
  {
    v15 = [HUUserNotificationTopicServiceListViewController alloc];
    v11 = [(HUItemModuleController *)self module];
    v12 = [v11 home];
    v16 = [(HUUserNotificationTopicServiceListViewController *)v15 initWithHome:v12 topic:v6];
  }

  v14 = v16;
LABEL_7:

  v17 = [HUViewControllerPresentationRequest requestWithViewController:v14];
  [v17 setPreferredPresentationType:1];
  [v17 setAnimated:v4];
  v18 = [(HUItemModuleController *)self host];
  v19 = [v18 moduleController:self presentViewControllerForRequest:v17];

  return v19;
}

- (id)showNotificationSettingsForHomeKitObject:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 home];
  v9 = [v8 hf_userNotificationTopicForObject:v6];

  v10 = [(HUUserNotificationTopicListModuleController *)self presentNotificationSettingsForTopic:v9 animated:v4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HUUserNotificationTopicListModuleController_showNotificationSettingsForHomeKitObject_animated___block_invoke;
  v14[3] = &unk_277DBFF80;
  v15 = v6;
  v16 = v4;
  v11 = v6;
  v12 = [v10 flatMap:v14];

  return v12;
}

@end