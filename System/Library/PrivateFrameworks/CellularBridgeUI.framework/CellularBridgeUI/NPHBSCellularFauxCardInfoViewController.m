@interface NPHBSCellularFauxCardInfoViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (NPHBSCellularFauxCardInfoViewController)init;
- (NSLayoutConstraint)infoTableViewHeightConstraint;
- (UILabel)enterActivationLabel;
- (UIScrollView)scrollView;
- (UITableView)infoTableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)activatePlan:(id)a3;
- (void)configureCell:(id)a3 atIndexPath:(id)a4;
- (void)keyboardWasShown:(id)a3;
- (void)keyboardWillBeHidden:(id)a3;
- (void)scrollViewForKeyboardIfNecessary;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NPHBSCellularFauxCardInfoViewController

- (NPHBSCellularFauxCardInfoViewController)init
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25.receiver = self;
  v25.super_class = NPHBSCellularFauxCardInfoViewController;
  v4 = [(NPHBSCellularFauxCardInfoViewController *)&v25 initWithNibName:@"NPHBSCellularFauxCardInfo" bundle:v3];

  if (v4)
  {
    v5 = objc_opt_new();
    tableData = v4->_tableData;
    v4->_tableData = v5;

    v31 = @"TITLE_KEY";
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_SMDP_LABEL" value:&stru_285611AE0 table:0];
    v32[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v24 = [v9 mutableCopy];

    v29 = @"TITLE_KEY";
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_ACTIVATION_CODE_LABEL" value:&stru_285611AE0 table:0];
    v30 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v13 = [v12 mutableCopy];

    v27[0] = @"TITLE_KEY";
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_CONFIRMATION_CODE_LABEL" value:&stru_285611AE0 table:0];
    v27[1] = @"PLACEHOLDER_KEY";
    v28[0] = v15;
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_CONFIRMATION_CODE_PLACEHOLDER" value:&stru_285611AE0 table:0];
    v28[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v19 = [v18 mutableCopy];

    v26[0] = v24;
    v26[1] = v13;
    v26[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
    v21 = v4->_tableData;
    v4->_tableData = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = NPHBSCellularFauxCardInfoViewController;
  [(NPHBSCellularFauxCardInfoViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A00]];
  v4 = MEMORY[0x277D74300];
  v5 = [v3 fontDescriptorWithSymbolicTraits:2];
  v6 = [v4 fontWithDescriptor:v5 size:0.0];

  WeakRetained = objc_loadWeakRetained(&self->_enterActivationLabel);
  [WeakRetained setFont:v6];
}

- (void)viewDidLayoutSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_infoTableView);
  v4 = [MEMORY[0x277CCAA70] indexPathWithIndex:0];
  [(NPHBSCellularFauxCardInfoViewController *)self tableView:WeakRetained heightForRowAtIndexPath:v4];
  v6 = v5;

  v7 = objc_loadWeakRetained(&self->_infoTableViewHeightConstraint);
  [v7 setConstant:v6 * 3.0 + -0.5];
}

- (void)keyboardWasShown:(id)a3
{
  v7 = [a3 userInfo];
  v4 = [v7 objectForKey:*MEMORY[0x277D76BB0]];
  [v4 CGRectValue];
  self->_keyboardSize.width = v5;
  self->_keyboardSize.height = v6;

  [(NPHBSCellularFauxCardInfoViewController *)self scrollViewForKeyboardIfNecessary];
}

- (void)keyboardWillBeHidden:(id)a3
{
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained setContentInset:{v4, v5, v6, v7}];

  v9 = objc_loadWeakRetained(&self->_scrollView);
  [v9 setScrollIndicatorInsets:{v4, v5, v6, v7}];
}

- (void)scrollViewForKeyboardIfNecessary
{
  if (self->_activeTextField)
  {
    p_height = &self->_keyboardSize.height;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v6 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v4 = *(MEMORY[0x277D768C8] + 24);
    p_height = (MEMORY[0x277D768C8] + 16);
  }

  v7 = *p_height;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained setContentInset:{v6, v5, v7, v4}];

  v9 = objc_loadWeakRetained(&self->_scrollView);
  [v9 setScrollIndicatorInsets:{v6, v5, v7, v4}];

  if (self->_activeTextField)
  {
    v10 = [(NPHBSCellularFauxCardInfoViewController *)self view];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = v18 - self->_keyboardSize.height;
    activeTextField = self->_activeTextField;
    [(UITextField *)activeTextField bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = objc_loadWeakRetained(&self->_scrollView);
    [(UITextField *)activeTextField convertRect:v29 toView:v22, v24, v26, v28];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40.origin.x = v12;
    v40.origin.y = v14;
    v40.size.width = v16;
    v40.size.height = v19;
    v41.origin.x = v31;
    v41.origin.y = v33;
    v41.size.width = v35;
    v41.size.height = v37;
    if (!CGRectContainsRect(v40, v41))
    {
      v38 = objc_loadWeakRetained(&self->_scrollView);
      [v38 scrollRectToVisible:1 animated:{v31, v33, v35, v37}];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSArray objectAtIndexedSubscript:](self->_tableData, "objectAtIndexedSubscript:", [v5 row]);
  v7 = [v6 objectForKeyedSubscript:@"TABLE_CELL_KEY"];

  if (!v7)
  {
    v7 = -[NPHSetupTableViewCell initWithTag:delegate:]([NPHSetupTableViewCell alloc], "initWithTag:delegate:", [v5 row], self);
    v8 = -[NSArray objectAtIndexedSubscript:](self->_tableData, "objectAtIndexedSubscript:", [v5 row]);
    [v8 setObject:v7 forKeyedSubscript:@"TABLE_CELL_KEY"];
  }

  [(NPHBSCellularFauxCardInfoViewController *)self configureCell:v7 atIndexPath:v5];

  return v7;
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v15 = -[NSArray objectAtIndexedSubscript:](self->_tableData, "objectAtIndexedSubscript:", [v6 row]);
  v8 = [v15 objectForKeyedSubscript:@"TITLE_KEY"];
  v9 = [v7 textLabel];
  [v9 setText:v8];

  v10 = [v15 objectForKeyedSubscript:@"PLACEHOLDER_KEY"];
  v11 = [v7 editableTextField];
  [v11 setPlaceholder:v10];

  v12 = [v15 objectForKeyedSubscript:@"VALUE_KEY"];
  v13 = [v7 editableTextField];
  [v13 setText:v12];

  v14 = [v6 row];
  [v7 setTag:v14];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  [v4 resignFirstResponder];
  v5 = [v4 tag];

  switch(v5)
  {
    case 2:
      [(NPHBSCellularFauxCardInfoViewController *)self activatePlan:0];
      return 1;
    case 1:
      tableData = self->_tableData;
      v7 = 2;
      goto LABEL_6;
    case 0:
      tableData = self->_tableData;
      v7 = 1;
LABEL_6:
      v8 = [(NSArray *)tableData objectAtIndexedSubscript:v7];
      v9 = [v8 objectForKeyedSubscript:@"TABLE_CELL_KEY"];

      v10 = [v9 editableTextField];
      [v10 becomeFirstResponder];

      break;
  }

  return 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  if ([(UITextField *)v4 tag]== 2)
  {
    v5 = 11;
  }

  else
  {
    v5 = 4;
  }

  [(UITextField *)v4 setReturnKeyType:v5];
  activeTextField = self->_activeTextField;
  self->_activeTextField = v4;

  [(NPHBSCellularFauxCardInfoViewController *)self scrollViewForKeyboardIfNecessary];
}

- (void)textFieldDidEndEditing:(id)a3
{
  tableData = self->_tableData;
  v5 = a3;
  v9 = -[NSArray objectAtIndexedSubscript:](tableData, "objectAtIndexedSubscript:", [v5 tag]);
  v6 = [v5 text];

  v7 = [v6 copy];
  [v9 setObject:v7 forKeyedSubscript:@"VALUE_KEY"];

  activeTextField = self->_activeTextField;
  self->_activeTextField = 0;
}

- (void)activatePlan:(id)a3
{
  v4 = a3;
  v5 = [(NPHBSCellularFauxCardInfoViewController *)self view];
  [v5 endEditing:1];

  v6 = [(NPHBSCellularFauxCardInfoViewController *)self presentingViewController];
  [v6 dismissViewControllerAnimated:1 completion:0];

  objc_initWeak(&location, self);
  v7 = +[NPHCellularBridgeUIManager sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke;
  v8[3] = &unk_278DACEB0;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [v7 _prePromptForUserConsentIfNecessary:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1 + 32;
  v4 = [*(*(a1 + 32) + 1000) objectAtIndexedSubscript:0];
  v18 = [v4 objectForKeyedSubscript:@"VALUE_KEY"];

  v5 = [*(*v3 + 1000) objectAtIndexedSubscript:1];
  v6 = [v5 objectForKeyedSubscript:@"VALUE_KEY"];

  v7 = [*(*v3 + 1000) objectAtIndexedSubscript:2];
  v8 = [v7 objectForKeyedSubscript:@"VALUE_KEY"];

  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v22 = "[NPHBSCellularFauxCardInfoViewController activatePlan:]_block_invoke";
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s - addressField:%@, activationCode:%@, confirmationCode:%@", buf, 0x2Au);
  }

  v10 = [MEMORY[0x277CF96D8] sharedManager];
  v11 = IsCurrentDevicePairing();
  v12 = +[NPHCellularBridgeUIManager sharedInstance];
  v13 = [v12 _currentDeviceCSN];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v15 = [WeakRetained subscriptionContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke_60;
  v19[3] = &unk_278DACA18;
  objc_copyWeak(&v20, (a1 + 40));
  v19[4] = *(a1 + 32);
  [v10 addNewRemotePlanWithAddress:v18 matchingId:v6 oid:0 confirmationCode:v8 isPairing:v11 withCSN:v13 withContext:v15 userConsent:a2 completion:v19];

  objc_destroyWeak(&v20);
  v16 = *MEMORY[0x277D85DE8];
}

void __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke_60(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke_2;
  v5[3] = &unk_278DAC9F0;
  v4 = v3;
  v6 = v4;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  nph_ensure_on_main_queue(v5);
  objc_destroyWeak(&v8);
}

void __56__NPHBSCellularFauxCardInfoViewController_activatePlan___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[NPHBSCellularFauxCardInfoViewController activatePlan:]_block_invoke_2";
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s - error:%@", &v9, 0x16u);
  }

  if (v2)
  {
    v4 = MEMORY[0x277CCA9B8];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained subscriptionContext];
    v7 = [v4 NPHCellularSanitizedError:v2 forSubscriptionContext:v6];

    [NPHCellularBridgeUIManager presentCellularError:v7 onViewController:*(a1 + 40)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (UILabel)enterActivationLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_enterActivationLabel);

  return WeakRetained;
}

- (UITableView)infoTableView
{
  WeakRetained = objc_loadWeakRetained(&self->_infoTableView);

  return WeakRetained;
}

- (NSLayoutConstraint)infoTableViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_infoTableViewHeightConstraint);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end