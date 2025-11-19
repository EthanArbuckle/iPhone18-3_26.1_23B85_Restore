@interface HUAddRestrictedGuestTableViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUAddRestrictedGuestTableViewController)initWithItem:(id)a3 home:(id)a4 inviteeAddresses:(id)a5;
- (HUAddRestrictedGuestTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUAddRestrictedGuestViewDelegate)delegate;
- (HUPresentationDelegate)presentationDelegate;
- (NSArray)accessoriesToAllowToRG;
- (id)rgHomeAccessSettings;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)didUpdateInviteUserSchedule:(id)a3 schedule:(id)a4;
- (void)sendInvites;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUAddRestrictedGuestTableViewController

- (HUAddRestrictedGuestTableViewController)initWithItem:(id)a3 home:(id)a4 inviteeAddresses:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HUAddRestrictedGuestTableViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  if (![v11 count])
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HUAddRestrictedGuestTableViewController.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"inviteeAddresses.count > 0"}];
  }

  v12 = [v9 copy];
  v13 = [[HUAddRestrictedGuestItemManager alloc] initWithDelegate:self sourceItem:v12 home:v10 inviteeAddresses:v11];
  v20.receiver = self;
  v20.super_class = HUAddRestrictedGuestTableViewController;
  v14 = [(HUItemTableViewController *)&v20 initWithItemManager:v13 tableViewStyle:1];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_restrictedGuestItemManager, v13);
    [(HUItemTableViewController *)v15 setAutomaticallyUpdatesViewControllerTitle:0];
    v16 = objc_opt_new();
    [(HUAddRestrictedGuestTableViewController *)v15 setAccessoriesToAllow:v16];
  }

  return v15;
}

- (HUAddRestrictedGuestTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItem_home_inviteeAddresses_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUAddRestrictedGuestTableViewController.m" lineNumber:59 description:{@"%s is unavailable; use %@ instead", "-[HUAddRestrictedGuestTableViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)sendInvites
{
  v4 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  v3 = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllow];
  [v4 sendInvitesWithAllowedAccessories:v3];
}

- (id)rgHomeAccessSettings
{
  v3 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  v4 = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllowToRG];
  v5 = [v3 mutableRestrictedGuestHomeAccessSettingsWithAllowedAccessories:v4];

  return v5;
}

- (NSArray)accessoriesToAllowToRG
{
  v2 = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllow];
  v3 = [v2 copy];

  return v3;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  v7 = [v6 homeScheduleItem];
  v8 = [v7 isEqual:v5];

  if ((v8 & 1) == 0)
  {
    v9 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
    v10 = [v9 transformedSecureAccessoryItemProvider];
    v11 = [v10 items];
    [v11 containsObject:v5];
  }

  v12 = objc_opt_class();

  return v12;
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v38.receiver = self;
  v38.super_class = HUAddRestrictedGuestTableViewController;
  [(HUItemTableViewController *)&v38 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  [v10 setBackgroundColor:v12];

  v13 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  v14 = [v13 homeScheduleItem];
  v15 = [v14 isEqual:v11];

  if (v15)
  {
    objc_opt_class();
    v16 = v10;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [v18 setIconDisplayStyle:1];
    [v18 setDisableContinuousIconAnimation:1];
    HUDefaultSizeForIconSize();
    v20 = v19;
    v22 = v21;
    v23 = [v18 contentMetrics];
    [v23 setIconSize:{v20, v22}];

    [v18 setAccessoryView:0];
    [v18 setAccessoryType:0];
    [v18 setValueColorFollowsTintColor:1];
    v24 = [v11 latestResults];
    v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v18 setAccessibilityIdentifier:v25];
LABEL_16:

    goto LABEL_17;
  }

  v26 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  v27 = [v26 transformedSecureAccessoryItemProvider];
  v28 = [v27 items];
  v29 = [v28 containsObject:v11];

  if (v29)
  {
    objc_opt_class();
    v30 = v10;
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v24 = v31;

    [v24 setDelegate:self];
    v25 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v11];
    objc_opt_class();
    v32 = [v11 latestResults];
    v33 = [v32 objectForKeyedSubscript:*MEMORY[0x277D13F58]];
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v18 = v34;

    if (v18)
    {
      v35 = [v25 imageProperties];
      [v35 setTintColor:v18];
    }

    [v24 setContentConfiguration:v25];
    v36 = [v11 latestResults];
    v37 = [v36 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v24 setAccessibilityIdentifier:v37];

    goto LABEL_16;
  }

LABEL_17:
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  v8 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  v9 = [v8 transformedSecureAccessoryItemProvider];
  v10 = [v9 items];
  v11 = [v10 containsObject:v7];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19.receiver = self;
  v19.super_class = HUAddRestrictedGuestTableViewController;
  v6 = a4;
  v7 = a3;
  [(HUItemTableViewController *)&v19 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager:v19.receiver];
  v9 = [v8 displayedItemAtIndexPath:v6];

  [v7 deselectRowAtIndexPath:v6 animated:1];
  v10 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  v11 = [v10 homeScheduleItem];
  LODWORD(v7) = [v9 isEqual:v11];

  if (v7)
  {
    v12 = [HURestrictedGuestScheduleViewController alloc];
    v13 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
    v14 = [v13 homeScheduleItem];
    v15 = [v14 schedule];
    v16 = [(HURestrictedGuestScheduleViewController *)v12 initWithSchedule:v15 delegate:self];

    v17 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
    [v17 setModalPresentationStyle:2];
    v18 = [(UIViewController *)self hu_presentPreloadableViewController:v17 animated:1];
  }
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = self;
    v26 = 1024;
    v27 = v4;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: User tapped switchCell to: %{BOOL}d", &v24, 0x12u);
  }

  v8 = [(HUAddRestrictedGuestTableViewController *)self tableView];
  v9 = [v8 indexPathForCell:v6];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 displayedItemAtIndexPath:v9];

  objc_opt_class();
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllow];
  v19 = [v17 accessory];
  if (v4)
  {
    [v18 addObject:v19];
  }

  else
  {
    [v18 removeObject:v19];
  }

  v20 = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllow];
  v21 = [v20 count] != 0;
  v22 = [(HUAddRestrictedGuestTableViewController *)self delegate];
  v23 = [v22 addButtonItem];
  [v23 setEnabled:v21];
}

- (void)didUpdateInviteUserSchedule:(id)a3 schedule:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
    v10 = [v9 homeScheduleItem];
    v11 = [v10 schedule];
    v13 = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating new invite user schedule from [%@] to [%@]", &v13, 0x2Au);
  }

  v12 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  [v12 updateAccessSchedule:v6];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUAddRestrictedGuestViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end