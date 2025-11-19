@interface HUUtilityOnboardingTAFTableViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUUtilityOnboardingTAFTableViewController)initWithContext:(id)a3 itemManager:(id)a4 tableViewStyle:(int64_t)a5;
- (TAFTableDelegate)delegate;
- (id)tafFieldForItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUUtilityOnboardingTAFTableViewController

- (HUUtilityOnboardingTAFTableViewController)initWithContext:(id)a3 itemManager:(id)a4 tableViewStyle:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HUUtilityOnboardingTAFTableViewController;
  v10 = [(HUItemTableViewController *)&v13 initWithItemManager:a4 tableViewStyle:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_context, a3);
  }

  return v11;
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
    v15 = "[HUUtilityOnboardingTAFTableViewController cellClassForItem:indexPath:]";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s cell class for item %@ with index %@ ", &v12, 0x2Au);
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 latestResults];
    *buf = 138412802;
    v36 = self;
    v37 = 2080;
    v38 = "[HUUtilityOnboardingTAFTableViewController setupCell:forItem:indexPath:]";
    v39 = 2112;
    v40 = v10;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%s Set up cell %@ ", buf, 0x20u);
  }

  v11 = v7;
  v12 = [v8 latestResults];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v14 = [v11 textField];
  [v14 setPlaceholder:v13];

  v15 = MEMORY[0x277CCACA8];
  v16 = [v8 latestResults];
  v17 = *MEMORY[0x277D13E30];
  v18 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
  v19 = [v15 stringWithFormat:@"Home.OnboardingView.Utility.TAF.TextField.%@", v18];
  v20 = [v11 textField];
  [v20 setAccessibilityIdentifier:v19];

  v21 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v11 setBackgroundColor:v21];

  v22 = [v8 latestResults];
  v23 = [v22 objectForKeyedSubscript:v17];

  v24 = +[_TtC6HomeUI12TAFFieldName phone];
  LOBYTE(v16) = [v23 isEqualToString:v24];

  if ((v16 & 1) == 0)
  {
    v26 = +[_TtC6HomeUI12TAFFieldName email];
    v27 = [v23 isEqualToString:v26];

    if (v27)
    {
      v25 = 7;
      goto LABEL_7;
    }

    v33 = +[_TtC6HomeUI12TAFFieldName postalCode];
    v34 = [v23 isEqualToString:v33];

    if (!v34)
    {
      goto LABEL_8;
    }
  }

  v25 = 2;
LABEL_7:
  v28 = [v11 textField];
  [v28 setKeyboardType:v25];

LABEL_8:
  v29 = [(HUUtilityOnboardingTAFTableViewController *)self context];
  v30 = [v29 tafResponses];
  v31 = [v30 objectForKeyedSubscript:v23];
  v32 = [v11 textField];
  [v32 setText:v31];
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v25.receiver = self;
  v25.super_class = HUUtilityOnboardingTAFTableViewController;
  [(HUItemTableViewController *)&v25 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 latestResults];
    *buf = 138412802;
    v27 = self;
    v28 = 2080;
    v29 = "[HUUtilityOnboardingTAFTableViewController updateCell:forItem:indexPath:animated:]";
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%s item with results%@ ", buf, 0x20u);
  }

  v14 = v10;
  v15 = [v11 latestResults];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v17 = [v14 textField];
  [v17 setPlaceholder:v16];

  v18 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v14 setBackgroundColor:v18];

  v19 = [v11 latestResults];
  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13E30]];

  v21 = [(HUUtilityOnboardingTAFTableViewController *)self context];
  v22 = [v21 tafResponses];
  v23 = [v22 objectForKeyedSubscript:v20];
  v24 = [v14 textField];

  [v24 setText:v23];
}

- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [a5 latestResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
  v10 = [(HUUtilityOnboardingTAFTableViewController *)self tafFieldForItem:v9];

  if (v10)
  {
    v11 = [(HUUtilityOnboardingTAFTableViewController *)self context];
    [v11 setResponseFor:v10 value:v7];

    v12 = [(UtilityOnboardingContext *)self->_context allRequiredFieldsComplete];
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412802;
      v16 = self;
      v17 = 2080;
      v18 = "[HUUtilityOnboardingTAFTableViewController textDidChange:forTextField:item:]";
      v19 = 1024;
      v20 = v12;
      _os_log_debug_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEBUG, "%@:%s ENABLING BUTTON --> %{BOOL}d", &v15, 0x1Cu);
    }

    v14 = [(HUUtilityOnboardingTAFTableViewController *)self delegate];
    [v14 didCompleteAllFields:v12];
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(HUUtilityOnboardingTAFTableViewController *)self delegate];
  [v5 selectedTextField:v4];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = HUUtilityOnboardingTAFTableViewController;
  v5 = a4;
  v6 = a3;
  [(HUItemTableViewController *)&v7 tableView:v6 didSelectRowAtIndexPath:v5];
  [v6 deselectRowAtIndexPath:v5 animated:{1, v7.receiver, v7.super_class}];
}

- (id)tafFieldForItem:(id)a3
{
  v4 = a3;
  v5 = [(UtilityOnboardingContext *)self->_context config];
  v6 = [v5 fields];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HUUtilityOnboardingTAFTableViewController_tafFieldForItem___block_invoke;
  v10[3] = &unk_277DBF968;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __61__HUUtilityOnboardingTAFTableViewController_tafFieldForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 formKey];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (TAFTableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end