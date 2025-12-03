@interface HUUtilityOnboardingOTPSelectionTableViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUUtilityOnboardingOTPSelectionTableViewController)initWithItemManager:(id)manager;
- (OTPSelectionTableDelegate)delegate;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HUUtilityOnboardingOTPSelectionTableViewController

- (HUUtilityOnboardingOTPSelectionTableViewController)initWithItemManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = HUUtilityOnboardingOTPSelectionTableViewController;
  return [(HUItemTableViewController *)&v4 initWithItemManager:manager tableViewStyle:1];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  pathCopy = path;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    latestResults = [itemCopy latestResults];
    v12 = 138413058;
    selfCopy = self;
    v14 = 2080;
    v15 = "[HUUtilityOnboardingOTPSelectionTableViewController cellClassForItem:indexPath:]";
    v16 = 2112;
    v17 = latestResults;
    v18 = 2112;
    v19 = pathCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s cell class for item %@ with index %@", &v12, 0x2Au);
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];

  if (v9)
  {
    [cellCopy setAccessoryType:3];
    delegate = [(HUUtilityOnboardingOTPSelectionTableViewController *)self delegate];
    [delegate tableView:self didSelectOTPMethod:itemCopy];
  }

  [cellCopy setHideIcon:1];
  latestResults2 = [itemCopy latestResults];
  v12 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [cellCopy setValueText:v12];

  v13 = MEMORY[0x277CCACA8];
  latestResults3 = [itemCopy latestResults];
  v15 = [latestResults3 objectForKeyedSubscript:@"factor-type"];
  v16 = [v13 stringWithFormat:@"Home.OnboardingView.Utility.OTP.%@", v15];
  [cellCopy setAccessibilityIdentifier:v16];

  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [cellCopy setBackgroundColor:tertiarySystemFillColor];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v37 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  tableView = [(HUUtilityOnboardingOTPSelectionTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v10 = [indexPathsForVisibleRows countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        objc_opt_class();
        v15 = [viewCopy cellForRowAtIndexPath:v14];
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        [v17 setAccessoryType:0];
        ++v13;
      }

      while (v11 != v13);
      v11 = [indexPathsForVisibleRows countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v11);
  }

  v27.receiver = self;
  v27.super_class = HUUtilityOnboardingOTPSelectionTableViewController;
  [(HUItemTableViewController *)&v27 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  objc_opt_class();
  v18 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  [v20 setAccessoryType:3];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v22 = [itemManager displayedItemAtIndexPath:pathCopy];

  v23 = HFLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    latestResults = [v22 latestResults];
    v25 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    *buf = 138412546;
    selfCopy = self;
    v34 = 2112;
    v35 = v25;
    _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@: ROW OPTION User tapped item: %@", buf, 0x16u);
  }

  delegate = [(HUUtilityOnboardingOTPSelectionTableViewController *)self delegate];
  [delegate tableView:self didSelectOTPMethod:v22];
}

- (OTPSelectionTableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end