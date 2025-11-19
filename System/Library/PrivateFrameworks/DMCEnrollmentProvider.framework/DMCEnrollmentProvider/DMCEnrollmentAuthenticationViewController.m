@interface DMCEnrollmentAuthenticationViewController
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (DMCEnrollmentAuthenticationViewController)init;
- (DMCEnrollmentAuthenticationViewControllerDelegate)delegate;
- (void)_setupNavigationBar;
- (void)continueButtonTapped;
- (void)dmc_viewControllerHasBeenDismissed;
- (void)leftBarButtonTapped:(id)a3;
- (void)setBottomText:(id)a3;
- (void)setCancelButtonTitle:(id)a3;
- (void)setInProgress:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setUsername:(id)a3;
- (void)setUsernameEditable:(BOOL)a3;
- (void)showPasswordField:(BOOL)a3;
- (void)textFieldDidChange:(id)a3;
- (void)updateContinueButtonStatus;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DMCEnrollmentAuthenticationViewController

- (DMCEnrollmentAuthenticationViewController)init
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = DMCLocalizedString();
  v15.receiver = self;
  v15.super_class = DMCEnrollmentAuthenticationViewController;
  v4 = [(DMCEnrollmentTemplateTableViewController *)&v15 initWithIconName:@"person.lanyardcard" title:v3 subTitle:0];

  if (v4)
  {
    v5 = [[DMCEnrollmentTableViewTextFieldCell alloc] initWithType:0];
    usernameCell = v4->_usernameCell;
    v4->_usernameCell = v5;

    v7 = [(DMCEnrollmentTableViewTextFieldCell *)v4->_usernameCell textField];
    [v7 setDelegate:v4];

    v8 = [(DMCEnrollmentTableViewTextFieldCell *)v4->_usernameCell textField];
    [v8 addTarget:v4 action:sel_textFieldDidChange_ forControlEvents:0x20000];

    v16[0] = v4->_usernameCell;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v4->_userInputSection = [(DMCEnrollmentTemplateTableViewController *)v4 addSectionWithCellData:v9 animated:0];

    v10 = [[DMCEnrollmentTableViewTextFieldCell alloc] initWithType:1];
    passwordCell = v4->_passwordCell;
    v4->_passwordCell = v10;

    v12 = [(DMCEnrollmentTableViewTextFieldCell *)v4->_passwordCell textField];
    [v12 setDelegate:v4];

    v13 = [(DMCEnrollmentTableViewTextFieldCell *)v4->_passwordCell textField];
    [v13 addTarget:v4 action:sel_textFieldDidChange_ forControlEvents:0x20000];

    v4->_usernameEditable = 1;
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v23.receiver = self;
  v23.super_class = DMCEnrollmentAuthenticationViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v23 viewWillAppear:a3];
  if (([(DMCEnrollmentAuthenticationViewController *)self isBeingPresented]& 1) != 0 || [(DMCEnrollmentAuthenticationViewController *)self isMovingToParentViewController])
  {
    [(DMCEnrollmentAuthenticationViewController *)self _setupNavigationBar];
    v4 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

    if (!v4)
    {
      v5 = [(DMCEnrollmentAuthenticationViewController *)self bottomViewText];
      v6 = [v5 length];

      if (v6)
      {
        v7 = [DMCEnrollmentLinkLabelView alloc];
        v8 = [(DMCEnrollmentAuthenticationViewController *)self bottomViewText];
        v9 = [(DMCEnrollmentLinkLabelView *)v7 initWithIcon:0 message:v8 linkMessage:0 linkHandler:0];
      }

      else
      {
        objc_initWeak(&location, self);
        v10 = [DMCEnrollmentLinkLabelView alloc];
        v11 = DMCLocalizedString();
        v12 = DMCLocalizedString();
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __60__DMCEnrollmentAuthenticationViewController_viewWillAppear___block_invoke;
        v20[3] = &unk_278EE7880;
        objc_copyWeak(&v21, &location);
        v9 = [(DMCEnrollmentLinkLabelView *)v10 initWithIcon:0 message:v11 linkMessage:v12 linkHandler:v20];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }

      [(DMCEnrollmentTemplateTableViewController *)self addBottomView:v9];
      [(DMCEnrollmentAuthenticationViewController *)self setBottomLinkView:v9];
    }

    v13 = [(DMCEnrollmentAuthenticationViewController *)self confirmationView];

    if (!v13)
    {
      objc_initWeak(&location, self);
      v14 = [DMCEnrollmentConfirmationView alloc];
      v15 = DMCLocalizedString();
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __60__DMCEnrollmentAuthenticationViewController_viewWillAppear___block_invoke_3;
      v18[3] = &unk_278EE7880;
      objc_copyWeak(&v19, &location);
      v16 = [(DMCEnrollmentConfirmationView *)v14 initWithConfirmationText:v15 cancelText:0 confirmationAction:v18 cancelAction:0];
      confirmationView = self->_confirmationView;
      self->_confirmationView = v16;

      [(DMCEnrollmentTemplateTableViewController *)self addFloatyBottomView:self->_confirmationView];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    [(DMCEnrollmentAuthenticationViewController *)self updateContinueButtonStatus];
  }
}

void __60__DMCEnrollmentAuthenticationViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__DMCEnrollmentAuthenticationViewController_viewWillAppear___block_invoke_2;
    block[3] = &unk_278EE74C0;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __60__DMCEnrollmentAuthenticationViewController_viewWillAppear___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained continueButtonTapped];
}

- (void)dmc_viewControllerHasBeenDismissed
{
  v3 = [(DMCEnrollmentAuthenticationViewController *)self delegate];
  [v3 authenticationViewControllerDidCancel:self];
}

- (void)_setupNavigationBar
{
  [(DMCEnrollmentTemplateTableViewController *)self updateNavBarButtonType:1 forButtonPosition:0 enabled:1];
  v3 = [(DMCEnrollmentAuthenticationViewController *)self cancelButtonTitle];

  if (v3)
  {
    cancelButtonTitle = self->_cancelButtonTitle;
    v6 = [(DMCEnrollmentAuthenticationViewController *)self navigationItem];
    v5 = [v6 leftBarButtonItem];
    [v5 setTitle:cancelButtonTitle];
  }
}

- (void)updateContinueButtonStatus
{
  if ([(DMCEnrollmentTemplateTableViewController *)self inProgress])
  {
    v14 = [(DMCEnrollmentAuthenticationViewController *)self confirmationView];
    [v14 setInProgress:1];
  }

  else
  {
    v3 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    v4 = [v3 textField];
    v5 = [v4 text];
    v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v14 = [v5 stringByTrimmingCharactersInSet:v6];

    LODWORD(v3) = [(DMCEnrollmentAuthenticationViewController *)self isDisplayingPasswordCell];
    v7 = [v14 length];
    if (v3)
    {
      if (v7)
      {
        v8 = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
        v9 = [v8 textField];
        v10 = [v9 text];
        v11 = [v10 length] != 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = v7 != 0;
    }

    v12 = [(DMCEnrollmentAuthenticationViewController *)self confirmationView];
    [v12 setInProgress:0];

    v13 = [(DMCEnrollmentAuthenticationViewController *)self confirmationView];
    [v13 setConfirmationButtonEnabled:v11];
  }
}

- (void)setUsername:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_username, a3);
  v6 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
  v7 = [v6 textField];
  [v7 setText:v5];

  if (![v5 length])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__DMCEnrollmentAuthenticationViewController_setUsername___block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setCancelButtonTitle:(id)a3
{
  v9 = a3;
  if (![(NSString *)self->_cancelButtonTitle isEqualToString:?])
  {
    v4 = [v9 copy];
    cancelButtonTitle = self->_cancelButtonTitle;
    self->_cancelButtonTitle = v4;

    v6 = self->_cancelButtonTitle;
    v7 = [(DMCEnrollmentAuthenticationViewController *)self navigationItem];
    v8 = [v7 leftBarButtonItem];
    [v8 setTitle:v6];
  }
}

- (void)setBottomText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_bottomViewText isEqualToString:?])
  {
    v4 = [v6 copy];
    bottomViewText = self->_bottomViewText;
    self->_bottomViewText = v4;
  }
}

- (void)setInProgress:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = DMCEnrollmentAuthenticationViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v6 setInProgress:?];
  [(DMCEnrollmentTemplateTableViewController *)self updateNavBarButtonType:1 forButtonPosition:0 enabled:!v3];
  v5 = [(DMCEnrollmentAuthenticationViewController *)self bottomLinkView];
  [v5 setEnabled:!v3];
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    if (a3 == 1)
    {
      [(DMCEnrollmentTemplateTableViewController *)self setIconName:@"icloud"];
      v5 = DMCLocalizedString();
      [(DMCEnrollmentTemplateTableViewController *)self setTitleText:v5];

      v6 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
      v7 = [v6 textField];
      v8 = [v7 text];
      v9 = DMCLocalizedFormat();
      [(DMCEnrollmentTemplateTableViewController *)self setSubtitleText:v9, v8];

      v10 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
      [v10 setAlpha:0.0];

      [(DMCEnrollmentAuthenticationViewController *)self setModalInPresentation:1];
    }

    else if (!a3)
    {
      [(DMCEnrollmentTemplateTableViewController *)self setIconName:@"person.lanyardcard"];
      v4 = DMCLocalizedString();
      [(DMCEnrollmentTemplateTableViewController *)self setTitleText:v4];

      [(DMCEnrollmentTemplateTableViewController *)self setSubtitleText:0];
      v11 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
      [v11 setAlpha:1.0];
    }
  }
}

- (void)setUsernameEditable:(BOOL)a3
{
  if (self->_usernameEditable != a3)
  {
    self->_usernameEditable = a3;
    if (a3)
    {
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] placeholderTextColor];
    }
    v7 = ;
    v5 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    v6 = [v5 textField];
    [v6 setTextColor:v7];
  }
}

- (void)showPasswordField:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(DMCEnrollmentAuthenticationViewController *)self isDisplayingPasswordCell]!= a3)
  {
    if (v3)
    {
      [(DMCEnrollmentAuthenticationViewController *)self setIsDisplayingPasswordCell:1];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __63__DMCEnrollmentAuthenticationViewController_showPasswordField___block_invoke;
      v10[3] = &unk_278EE74C0;
      v10[4] = self;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __63__DMCEnrollmentAuthenticationViewController_showPasswordField___block_invoke_2;
      v9[3] = &unk_278EE78A8;
      v9[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v9 completion:0.2];
    }

    else
    {
      [(DMCEnrollmentAuthenticationViewController *)self setIsDisplayingPasswordCell:0];
      v5 = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
      v11[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(DMCEnrollmentTemplateTableViewController *)self removeCellData:v6 fromSection:[(DMCEnrollmentAuthenticationViewController *)self userInputSection] animated:1];

      v7 = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
      v8 = [v7 textField];
      [v8 setText:0];
    }

    [(DMCEnrollmentAuthenticationViewController *)self updateContinueButtonStatus];
  }
}

void __63__DMCEnrollmentAuthenticationViewController_showPasswordField___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 passwordCell];
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 addCellData:v4 toSection:objc_msgSend(*(a1 + 32) animated:{"userInputSection"), 1}];
}

void __63__DMCEnrollmentAuthenticationViewController_showPasswordField___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) passwordCell];
  v1 = [v2 textField];
  [v1 becomeFirstResponder];
}

- (void)leftBarButtonTapped:(id)a3
{
  v4 = [(DMCEnrollmentAuthenticationViewController *)self delegate];
  [v4 authenticationViewControllerDidCancel:self];
}

- (void)continueButtonTapped
{
  if ([(DMCEnrollmentAuthenticationViewController *)self isDisplayingPasswordCell])
  {
    v3 = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
    v4 = [v3 textField];
    [v4 resignFirstResponder];

    v13 = [(DMCEnrollmentAuthenticationViewController *)self delegate];
    v5 = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
    v6 = [v5 textField];
    v7 = [v6 text];
    v8 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    v9 = [v8 textField];
    v10 = [v9 text];
    [v13 authenticationViewController:self didReceivePassword:v7 forUsername:v10];
  }

  else
  {
    v11 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    v12 = [v11 textField];
    [v12 resignFirstResponder];

    v13 = [(DMCEnrollmentAuthenticationViewController *)self delegate];
    v5 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    v6 = [v5 textField];
    v7 = [v6 text];
    v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];
    [v13 authenticationViewController:self didReceiveUsername:v9];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
  v6 = [v5 textField];
  v7 = [v4 isEqual:v6];

  if (!v7)
  {
    return 1;
  }

  return [(DMCEnrollmentAuthenticationViewController *)self isUsernameEditable];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
  v8 = [v7 length];

  if (v8)
  {
    if (-[DMCEnrollmentAuthenticationViewController isDisplayingPasswordCell](self, "isDisplayingPasswordCell") && (-[DMCEnrollmentAuthenticationViewController usernameCell](self, "usernameCell"), v9 = objc_claimAutoreleasedReturnValue(), [v9 textField], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v4, "isEqual:", v10), v10, v9, v11))
    {
      v12 = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
      v13 = [v12 textField];
      [v13 becomeFirstResponder];
    }

    else
    {
      [(DMCEnrollmentAuthenticationViewController *)self continueButtonTapped];
    }
  }

  return v8 != 0;
}

- (void)textFieldDidChange:(id)a3
{
  v12 = a3;
  v4 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
  v5 = [v4 textField];
  v6 = [v12 isEqual:v5];

  if (v6)
  {
    v7 = [v12 text];
    if (-[DMCEnrollmentAuthenticationViewController isUsernameEditable](self, "isUsernameEditable") || (-[DMCEnrollmentAuthenticationViewController username](self, "username"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToString:v8], v8, (v9 & 1) != 0))
    {
      v10 = v7;
      username = self->_username;
      self->_username = v10;
    }

    else
    {
      username = [(DMCEnrollmentAuthenticationViewController *)self username];
      [v12 setText:username];
    }
  }

  [(DMCEnrollmentAuthenticationViewController *)self updateContinueButtonStatus];
}

- (DMCEnrollmentAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end