@interface HUUtilityOnboardingOTPSelectionTableViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUUtilityOnboardingOTPSelectionTableViewController)initWithItemManager:(id)a3;
- (OTPSelectionTableDelegate)delegate;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HUUtilityOnboardingOTPSelectionTableViewController

- (HUUtilityOnboardingOTPSelectionTableViewController)initWithItemManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUUtilityOnboardingOTPSelectionTableViewController;
  return [(HUItemTableViewController *)&v4 initWithItemManager:a3 tableViewStyle:1];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 latestResults];
    v12 = 138413058;
    v13 = self;
    v14 = 2080;
    v15 = "[HUUtilityOnboardingOTPSelectionTableViewController cellClassForItem:indexPath:]";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s cell class for item %@ with index %@", &v12, 0x2Au);
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v18 = a3;
  v7 = a4;
  v8 = [v7 latestResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];

  if (v9)
  {
    [v18 setAccessoryType:3];
    v10 = [(HUUtilityOnboardingOTPSelectionTableViewController *)self delegate];
    [v10 tableView:self didSelectOTPMethod:v7];
  }

  [v18 setHideIcon:1];
  v11 = [v7 latestResults];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v18 setValueText:v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [v7 latestResults];
  v15 = [v14 objectForKeyedSubscript:@"factor-type"];
  v16 = [v13 stringWithFormat:@"Home.OnboardingView.Utility.OTP.%@", v15];
  [v18 setAccessibilityIdentifier:v16];

  v17 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v18 setBackgroundColor:v17];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [(HUUtilityOnboardingOTPSelectionTableViewController *)self tableView];
  v9 = [v8 indexPathsForVisibleRows];

  v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        objc_opt_class();
        v15 = [v6 cellForRowAtIndexPath:v14];
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
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v11);
  }

  v27.receiver = self;
  v27.super_class = HUUtilityOnboardingOTPSelectionTableViewController;
  [(HUItemTableViewController *)&v27 tableView:v6 didSelectRowAtIndexPath:v7];
  [v6 deselectRowAtIndexPath:v7 animated:1];
  objc_opt_class();
  v18 = [v6 cellForRowAtIndexPath:v7];
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
  v21 = [(HUItemTableViewController *)self itemManager];
  v22 = [v21 displayedItemAtIndexPath:v7];

  v23 = HFLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v22 latestResults];
    v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    *buf = 138412546;
    v33 = self;
    v34 = 2112;
    v35 = v25;
    _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@: ROW OPTION User tapped item: %@", buf, 0x16u);
  }

  v26 = [(HUUtilityOnboardingOTPSelectionTableViewController *)self delegate];
  [v26 tableView:self didSelectOTPMethod:v22];
}

- (OTPSelectionTableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end