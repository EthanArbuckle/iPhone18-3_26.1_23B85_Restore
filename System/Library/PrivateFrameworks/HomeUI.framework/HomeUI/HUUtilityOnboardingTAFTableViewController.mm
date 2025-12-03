@interface HUUtilityOnboardingTAFTableViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUUtilityOnboardingTAFTableViewController)initWithContext:(id)context itemManager:(id)manager tableViewStyle:(int64_t)style;
- (TAFTableDelegate)delegate;
- (id)tafFieldForItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textDidChange:(id)change forTextField:(id)field item:(id)item;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUUtilityOnboardingTAFTableViewController

- (HUUtilityOnboardingTAFTableViewController)initWithContext:(id)context itemManager:(id)manager tableViewStyle:(int64_t)style
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = HUUtilityOnboardingTAFTableViewController;
  v10 = [(HUItemTableViewController *)&v13 initWithItemManager:manager tableViewStyle:style];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_context, context);
  }

  return v11;
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
    v15 = "[HUUtilityOnboardingTAFTableViewController cellClassForItem:indexPath:]";
    v16 = 2112;
    v17 = latestResults;
    v18 = 2112;
    v19 = pathCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s cell class for item %@ with index %@ ", &v12, 0x2Au);
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  v41 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    latestResults = [itemCopy latestResults];
    *buf = 138412802;
    selfCopy = self;
    v37 = 2080;
    v38 = "[HUUtilityOnboardingTAFTableViewController setupCell:forItem:indexPath:]";
    v39 = 2112;
    v40 = latestResults;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%s Set up cell %@ ", buf, 0x20u);
  }

  v11 = cellCopy;
  latestResults2 = [itemCopy latestResults];
  v13 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textField = [v11 textField];
  [textField setPlaceholder:v13];

  v15 = MEMORY[0x277CCACA8];
  latestResults3 = [itemCopy latestResults];
  v17 = *MEMORY[0x277D13E30];
  v18 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
  v19 = [v15 stringWithFormat:@"Home.OnboardingView.Utility.TAF.TextField.%@", v18];
  textField2 = [v11 textField];
  [textField2 setAccessibilityIdentifier:v19];

  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v11 setBackgroundColor:tertiarySystemFillColor];

  latestResults4 = [itemCopy latestResults];
  v23 = [latestResults4 objectForKeyedSubscript:v17];

  v24 = +[_TtC6HomeUI12TAFFieldName phone];
  LOBYTE(latestResults3) = [v23 isEqualToString:v24];

  if ((latestResults3 & 1) == 0)
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
  textField3 = [v11 textField];
  [textField3 setKeyboardType:v25];

LABEL_8:
  context = [(HUUtilityOnboardingTAFTableViewController *)self context];
  tafResponses = [context tafResponses];
  v31 = [tafResponses objectForKeyedSubscript:v23];
  textField4 = [v11 textField];
  [textField4 setText:v31];
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  v32 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = HUUtilityOnboardingTAFTableViewController;
  [(HUItemTableViewController *)&v25 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    latestResults = [itemCopy latestResults];
    *buf = 138412802;
    selfCopy = self;
    v28 = 2080;
    v29 = "[HUUtilityOnboardingTAFTableViewController updateCell:forItem:indexPath:animated:]";
    v30 = 2112;
    v31 = latestResults;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%s item with results%@ ", buf, 0x20u);
  }

  v14 = cellCopy;
  latestResults2 = [itemCopy latestResults];
  v16 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textField = [v14 textField];
  [textField setPlaceholder:v16];

  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v14 setBackgroundColor:tertiarySystemFillColor];

  latestResults3 = [itemCopy latestResults];
  v20 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E30]];

  context = [(HUUtilityOnboardingTAFTableViewController *)self context];
  tafResponses = [context tafResponses];
  v23 = [tafResponses objectForKeyedSubscript:v20];
  textField2 = [v14 textField];

  [textField2 setText:v23];
}

- (void)textDidChange:(id)change forTextField:(id)field item:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  latestResults = [item latestResults];
  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E30]];
  v10 = [(HUUtilityOnboardingTAFTableViewController *)self tafFieldForItem:v9];

  if (v10)
  {
    context = [(HUUtilityOnboardingTAFTableViewController *)self context];
    [context setResponseFor:v10 value:changeCopy];

    allRequiredFieldsComplete = [(UtilityOnboardingContext *)self->_context allRequiredFieldsComplete];
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412802;
      selfCopy = self;
      v17 = 2080;
      v18 = "[HUUtilityOnboardingTAFTableViewController textDidChange:forTextField:item:]";
      v19 = 1024;
      v20 = allRequiredFieldsComplete;
      _os_log_debug_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEBUG, "%@:%s ENABLING BUTTON --> %{BOOL}d", &v15, 0x1Cu);
    }

    delegate = [(HUUtilityOnboardingTAFTableViewController *)self delegate];
    [delegate didCompleteAllFields:allRequiredFieldsComplete];
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(HUUtilityOnboardingTAFTableViewController *)self delegate];
  [delegate selectedTextField:editingCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = HUUtilityOnboardingTAFTableViewController;
  pathCopy = path;
  viewCopy = view;
  [(HUItemTableViewController *)&v7 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v7.receiver, v7.super_class}];
}

- (id)tafFieldForItem:(id)item
{
  itemCopy = item;
  config = [(UtilityOnboardingContext *)self->_context config];
  fields = [config fields];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HUUtilityOnboardingTAFTableViewController_tafFieldForItem___block_invoke;
  v10[3] = &unk_277DBF968;
  v11 = itemCopy;
  v7 = itemCopy;
  v8 = [fields na_firstObjectPassingTest:v10];

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