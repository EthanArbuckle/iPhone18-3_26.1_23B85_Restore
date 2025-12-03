@interface HUAddRestrictedGuestTableViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUAddRestrictedGuestTableViewController)initWithItem:(id)item home:(id)home inviteeAddresses:(id)addresses;
- (HUAddRestrictedGuestTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUAddRestrictedGuestViewDelegate)delegate;
- (HUPresentationDelegate)presentationDelegate;
- (NSArray)accessoriesToAllowToRG;
- (id)rgHomeAccessSettings;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)didUpdateInviteUserSchedule:(id)schedule schedule:(id)a4;
- (void)sendInvites;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUAddRestrictedGuestTableViewController

- (HUAddRestrictedGuestTableViewController)initWithItem:(id)item home:(id)home inviteeAddresses:(id)addresses
{
  itemCopy = item;
  homeCopy = home;
  addressesCopy = addresses;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddRestrictedGuestTableViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  if (![addressesCopy count])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUAddRestrictedGuestTableViewController.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"inviteeAddresses.count > 0"}];
  }

  v12 = [itemCopy copy];
  v13 = [[HUAddRestrictedGuestItemManager alloc] initWithDelegate:self sourceItem:v12 home:homeCopy inviteeAddresses:addressesCopy];
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

- (HUAddRestrictedGuestTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItem_home_inviteeAddresses_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddRestrictedGuestTableViewController.m" lineNumber:59 description:{@"%s is unavailable; use %@ instead", "-[HUAddRestrictedGuestTableViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)sendInvites
{
  restrictedGuestItemManager = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  accessoriesToAllow = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllow];
  [restrictedGuestItemManager sendInvitesWithAllowedAccessories:accessoriesToAllow];
}

- (id)rgHomeAccessSettings
{
  restrictedGuestItemManager = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  accessoriesToAllowToRG = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllowToRG];
  v5 = [restrictedGuestItemManager mutableRestrictedGuestHomeAccessSettingsWithAllowedAccessories:accessoriesToAllowToRG];

  return v5;
}

- (NSArray)accessoriesToAllowToRG
{
  accessoriesToAllow = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllow];
  v3 = [accessoriesToAllow copy];

  return v3;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  restrictedGuestItemManager = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  homeScheduleItem = [restrictedGuestItemManager homeScheduleItem];
  v8 = [homeScheduleItem isEqual:itemCopy];

  if ((v8 & 1) == 0)
  {
    restrictedGuestItemManager2 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
    transformedSecureAccessoryItemProvider = [restrictedGuestItemManager2 transformedSecureAccessoryItemProvider];
    items = [transformedSecureAccessoryItemProvider items];
    [items containsObject:itemCopy];
  }

  v12 = objc_opt_class();

  return v12;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v38.receiver = self;
  v38.super_class = HUAddRestrictedGuestTableViewController;
  [(HUItemTableViewController *)&v38 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  tertiarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  [cellCopy setBackgroundColor:tertiarySystemGroupedBackgroundColor];

  restrictedGuestItemManager = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  homeScheduleItem = [restrictedGuestItemManager homeScheduleItem];
  v15 = [homeScheduleItem isEqual:itemCopy];

  if (v15)
  {
    objc_opt_class();
    v16 = cellCopy;
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
    contentMetrics = [v18 contentMetrics];
    [contentMetrics setIconSize:{v20, v22}];

    [v18 setAccessoryView:0];
    [v18 setAccessoryType:0];
    [v18 setValueColorFollowsTintColor:1];
    latestResults = [itemCopy latestResults];
    v25 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v18 setAccessibilityIdentifier:v25];
LABEL_16:

    goto LABEL_17;
  }

  restrictedGuestItemManager2 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  transformedSecureAccessoryItemProvider = [restrictedGuestItemManager2 transformedSecureAccessoryItemProvider];
  items = [transformedSecureAccessoryItemProvider items];
  v29 = [items containsObject:itemCopy];

  if (v29)
  {
    objc_opt_class();
    v30 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    latestResults = v31;

    [latestResults setDelegate:self];
    v25 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:itemCopy];
    objc_opt_class();
    latestResults2 = [itemCopy latestResults];
    v33 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F58]];
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
      imageProperties = [v25 imageProperties];
      [imageProperties setTintColor:v18];
    }

    [latestResults setContentConfiguration:v25];
    latestResults3 = [itemCopy latestResults];
    v37 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [latestResults setAccessibilityIdentifier:v37];

    goto LABEL_16;
  }

LABEL_17:
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

  restrictedGuestItemManager = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  transformedSecureAccessoryItemProvider = [restrictedGuestItemManager transformedSecureAccessoryItemProvider];
  items = [transformedSecureAccessoryItemProvider items];
  v11 = [items containsObject:v7];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = pathCopy;
  }

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v19.receiver = self;
  v19.super_class = HUAddRestrictedGuestTableViewController;
  pathCopy = path;
  viewCopy = view;
  [(HUItemTableViewController *)&v19 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(HUItemTableViewController *)self itemManager:v19.receiver];
  v9 = [v8 displayedItemAtIndexPath:pathCopy];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  restrictedGuestItemManager = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  homeScheduleItem = [restrictedGuestItemManager homeScheduleItem];
  LODWORD(viewCopy) = [v9 isEqual:homeScheduleItem];

  if (viewCopy)
  {
    v12 = [HURestrictedGuestScheduleViewController alloc];
    restrictedGuestItemManager2 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
    homeScheduleItem2 = [restrictedGuestItemManager2 homeScheduleItem];
    schedule = [homeScheduleItem2 schedule];
    v16 = [(HURestrictedGuestScheduleViewController *)v12 initWithSchedule:schedule delegate:self];

    v17 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
    [v17 setModalPresentationStyle:2];
    v18 = [(UIViewController *)self hu_presentPreloadableViewController:v17 animated:1];
  }
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v28 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    selfCopy = self;
    v26 = 1024;
    v27 = onCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: User tapped switchCell to: %{BOOL}d", &v24, 0x12u);
  }

  tableView = [(HUAddRestrictedGuestTableViewController *)self tableView];
  v9 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v11 = [itemManager displayedItemAtIndexPath:v9];

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

  sourceItem = [v14 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v16 = sourceItem;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  accessoriesToAllow = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllow];
  accessory = [v17 accessory];
  if (onCopy)
  {
    [accessoriesToAllow addObject:accessory];
  }

  else
  {
    [accessoriesToAllow removeObject:accessory];
  }

  accessoriesToAllow2 = [(HUAddRestrictedGuestTableViewController *)self accessoriesToAllow];
  v21 = [accessoriesToAllow2 count] != 0;
  delegate = [(HUAddRestrictedGuestTableViewController *)self delegate];
  addButtonItem = [delegate addButtonItem];
  [addButtonItem setEnabled:v21];
}

- (void)didUpdateInviteUserSchedule:(id)schedule schedule:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    restrictedGuestItemManager = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
    homeScheduleItem = [restrictedGuestItemManager homeScheduleItem];
    schedule = [homeScheduleItem schedule];
    v13 = 138413058;
    selfCopy = self;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = schedule;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating new invite user schedule from [%@] to [%@]", &v13, 0x2Au);
  }

  restrictedGuestItemManager2 = [(HUAddRestrictedGuestTableViewController *)self restrictedGuestItemManager];
  [restrictedGuestItemManager2 updateAccessSchedule:v6];
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