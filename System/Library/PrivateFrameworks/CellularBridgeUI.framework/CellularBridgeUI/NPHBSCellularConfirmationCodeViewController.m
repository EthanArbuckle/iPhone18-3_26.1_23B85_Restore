@interface NPHBSCellularConfirmationCodeViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (NPHBSCellularConfirmationCodeViewController)init;
- (NPHBSCellularConfirmationCodeViewControllerDelegate)delegate;
- (NSLayoutConstraint)infoTableViewHeightConstraint;
- (UILabel)confirmationCodeTitleLabel;
- (UITableView)infoTableView;
- (void)confirm:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NPHBSCellularConfirmationCodeViewController

- (NPHBSCellularConfirmationCodeViewController)init
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[NPHBSCellularConfirmationCodeViewController init]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14.receiver = self;
  v14.super_class = NPHBSCellularConfirmationCodeViewController;
  v5 = [(NPHBSCellularConfirmationCodeViewController *)&v14 initWithNibName:@"NPHBSCellularConfirmationCode" bundle:v4];

  if (v5)
  {
    v6 = [[NPHSetupTableViewCell alloc] initWithTag:0 delegate:v5];
    confirmationCodeCell = v5->_confirmationCodeCell;
    v5->_confirmationCodeCell = v6;

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_CONFIRMATION_CODE_LABEL" value:&stru_285611AE0 table:0];
    v10 = [(NPHSetupTableViewCell *)v5->_confirmationCodeCell textLabel];
    [v10 setText:v9];

    v11 = [(NPHSetupTableViewCell *)v5->_confirmationCodeCell editableTextField];
    [v11 setKeyboardType:2];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)viewDidLoad
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[NPHBSCellularConfirmationCodeViewController viewDidLoad]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = NPHBSCellularConfirmationCodeViewController;
  [(NPHBSCellularConfirmationCodeViewController *)&v10 viewDidLoad];
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A00]];
  v5 = MEMORY[0x277D74300];
  v6 = [v4 fontDescriptorWithSymbolicTraits:2];
  v7 = [v5 fontWithDescriptor:v6 size:0.0];

  WeakRetained = objc_loadWeakRetained(&self->_confirmationCodeTitleLabel);
  [WeakRetained setFont:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_infoTableView);
  [(NPHBSCellularConfirmationCodeViewController *)self tableView:WeakRetained heightForRowAtIndexPath:0];
  v5 = v4;

  v6 = objc_loadWeakRetained(&self->_infoTableViewHeightConstraint);
  [v6 setConstant:v5 + -0.5];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  [a3 resignFirstResponder];
  [(NPHBSCellularConfirmationCodeViewController *)self confirm:0];
  return 1;
}

- (void)confirm:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NPHSetupTableViewCell *)self->_confirmationCodeCell editableTextField];
    v6 = [v5 text];
    v12 = 136315394;
    v13 = "[NPHBSCellularConfirmationCodeViewController confirm:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s confirmation code:%@", &v12, 0x16u);
  }

  v7 = [(NPHBSCellularConfirmationCodeViewController *)self presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  v8 = [(NPHBSCellularConfirmationCodeViewController *)self delegate];
  v9 = [(NPHSetupTableViewCell *)self->_confirmationCodeCell editableTextField];
  v10 = [v9 text];
  [v8 cellularConfirmationCodeViewController:self confirmedWithCode:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (NPHBSCellularConfirmationCodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UILabel)confirmationCodeTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_confirmationCodeTitleLabel);

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

@end