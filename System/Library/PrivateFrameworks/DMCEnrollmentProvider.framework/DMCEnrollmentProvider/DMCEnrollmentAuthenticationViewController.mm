@interface DMCEnrollmentAuthenticationViewController
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (DMCEnrollmentAuthenticationViewController)init;
- (DMCEnrollmentAuthenticationViewControllerDelegate)delegate;
- (void)_setupNavigationBar;
- (void)continueButtonTapped;
- (void)dmc_viewControllerHasBeenDismissed;
- (void)leftBarButtonTapped:(id)tapped;
- (void)setBottomText:(id)text;
- (void)setCancelButtonTitle:(id)title;
- (void)setInProgress:(BOOL)progress;
- (void)setStyle:(unint64_t)style;
- (void)setUsername:(id)username;
- (void)setUsernameEditable:(BOOL)editable;
- (void)showPasswordField:(BOOL)field;
- (void)textFieldDidChange:(id)change;
- (void)updateContinueButtonStatus;
- (void)viewWillAppear:(BOOL)appear;
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

    textField = [(DMCEnrollmentTableViewTextFieldCell *)v4->_usernameCell textField];
    [textField setDelegate:v4];

    textField2 = [(DMCEnrollmentTableViewTextFieldCell *)v4->_usernameCell textField];
    [textField2 addTarget:v4 action:sel_textFieldDidChange_ forControlEvents:0x20000];

    v16[0] = v4->_usernameCell;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v4->_userInputSection = [(DMCEnrollmentTemplateTableViewController *)v4 addSectionWithCellData:v9 animated:0];

    v10 = [[DMCEnrollmentTableViewTextFieldCell alloc] initWithType:1];
    passwordCell = v4->_passwordCell;
    v4->_passwordCell = v10;

    textField3 = [(DMCEnrollmentTableViewTextFieldCell *)v4->_passwordCell textField];
    [textField3 setDelegate:v4];

    textField4 = [(DMCEnrollmentTableViewTextFieldCell *)v4->_passwordCell textField];
    [textField4 addTarget:v4 action:sel_textFieldDidChange_ forControlEvents:0x20000];

    v4->_usernameEditable = 1;
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v23.receiver = self;
  v23.super_class = DMCEnrollmentAuthenticationViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v23 viewWillAppear:appear];
  if (([(DMCEnrollmentAuthenticationViewController *)self isBeingPresented]& 1) != 0 || [(DMCEnrollmentAuthenticationViewController *)self isMovingToParentViewController])
  {
    [(DMCEnrollmentAuthenticationViewController *)self _setupNavigationBar];
    bottomView = [(DMCEnrollmentTemplateTableViewController *)self bottomView];

    if (!bottomView)
    {
      bottomViewText = [(DMCEnrollmentAuthenticationViewController *)self bottomViewText];
      v6 = [bottomViewText length];

      if (v6)
      {
        v7 = [DMCEnrollmentLinkLabelView alloc];
        bottomViewText2 = [(DMCEnrollmentAuthenticationViewController *)self bottomViewText];
        v9 = [(DMCEnrollmentLinkLabelView *)v7 initWithIcon:0 message:bottomViewText2 linkMessage:0 linkHandler:0];
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

    confirmationView = [(DMCEnrollmentAuthenticationViewController *)self confirmationView];

    if (!confirmationView)
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
  delegate = [(DMCEnrollmentAuthenticationViewController *)self delegate];
  [delegate authenticationViewControllerDidCancel:self];
}

- (void)_setupNavigationBar
{
  [(DMCEnrollmentTemplateTableViewController *)self updateNavBarButtonType:1 forButtonPosition:0 enabled:1];
  cancelButtonTitle = [(DMCEnrollmentAuthenticationViewController *)self cancelButtonTitle];

  if (cancelButtonTitle)
  {
    cancelButtonTitle = self->_cancelButtonTitle;
    navigationItem = [(DMCEnrollmentAuthenticationViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setTitle:cancelButtonTitle];
  }
}

- (void)updateContinueButtonStatus
{
  if ([(DMCEnrollmentTemplateTableViewController *)self inProgress])
  {
    confirmationView = [(DMCEnrollmentAuthenticationViewController *)self confirmationView];
    [confirmationView setInProgress:1];
  }

  else
  {
    usernameCell = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    textField = [usernameCell textField];
    text = [textField text];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    confirmationView = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    LODWORD(usernameCell) = [(DMCEnrollmentAuthenticationViewController *)self isDisplayingPasswordCell];
    v7 = [confirmationView length];
    if (usernameCell)
    {
      if (v7)
      {
        passwordCell = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
        textField2 = [passwordCell textField];
        text2 = [textField2 text];
        v11 = [text2 length] != 0;
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

    confirmationView2 = [(DMCEnrollmentAuthenticationViewController *)self confirmationView];
    [confirmationView2 setInProgress:0];

    confirmationView3 = [(DMCEnrollmentAuthenticationViewController *)self confirmationView];
    [confirmationView3 setConfirmationButtonEnabled:v11];
  }
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  objc_storeStrong(&self->_username, username);
  usernameCell = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
  textField = [usernameCell textField];
  [textField setText:usernameCopy];

  if (![usernameCopy length])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__DMCEnrollmentAuthenticationViewController_setUsername___block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setCancelButtonTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_cancelButtonTitle isEqualToString:?])
  {
    v4 = [titleCopy copy];
    cancelButtonTitle = self->_cancelButtonTitle;
    self->_cancelButtonTitle = v4;

    v6 = self->_cancelButtonTitle;
    navigationItem = [(DMCEnrollmentAuthenticationViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setTitle:v6];
  }
}

- (void)setBottomText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_bottomViewText isEqualToString:?])
  {
    v4 = [textCopy copy];
    bottomViewText = self->_bottomViewText;
    self->_bottomViewText = v4;
  }
}

- (void)setInProgress:(BOOL)progress
{
  progressCopy = progress;
  v6.receiver = self;
  v6.super_class = DMCEnrollmentAuthenticationViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v6 setInProgress:?];
  [(DMCEnrollmentTemplateTableViewController *)self updateNavBarButtonType:1 forButtonPosition:0 enabled:!progressCopy];
  bottomLinkView = [(DMCEnrollmentAuthenticationViewController *)self bottomLinkView];
  [bottomLinkView setEnabled:!progressCopy];
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    if (style == 1)
    {
      [(DMCEnrollmentTemplateTableViewController *)self setIconName:@"icloud"];
      v5 = DMCLocalizedString();
      [(DMCEnrollmentTemplateTableViewController *)self setTitleText:v5];

      usernameCell = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
      textField = [usernameCell textField];
      text = [textField text];
      v9 = DMCLocalizedFormat();
      [(DMCEnrollmentTemplateTableViewController *)self setSubtitleText:v9, text];

      bottomView = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
      [bottomView setAlpha:0.0];

      [(DMCEnrollmentAuthenticationViewController *)self setModalInPresentation:1];
    }

    else if (!style)
    {
      [(DMCEnrollmentTemplateTableViewController *)self setIconName:@"person.lanyardcard"];
      v4 = DMCLocalizedString();
      [(DMCEnrollmentTemplateTableViewController *)self setTitleText:v4];

      [(DMCEnrollmentTemplateTableViewController *)self setSubtitleText:0];
      bottomView2 = [(DMCEnrollmentTemplateTableViewController *)self bottomView];
      [bottomView2 setAlpha:1.0];
    }
  }
}

- (void)setUsernameEditable:(BOOL)editable
{
  if (self->_usernameEditable != editable)
  {
    self->_usernameEditable = editable;
    if (editable)
    {
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] placeholderTextColor];
    }
    v7 = ;
    usernameCell = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    textField = [usernameCell textField];
    [textField setTextColor:v7];
  }
}

- (void)showPasswordField:(BOOL)field
{
  fieldCopy = field;
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(DMCEnrollmentAuthenticationViewController *)self isDisplayingPasswordCell]!= field)
  {
    if (fieldCopy)
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
      passwordCell = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
      v11[0] = passwordCell;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(DMCEnrollmentTemplateTableViewController *)self removeCellData:v6 fromSection:[(DMCEnrollmentAuthenticationViewController *)self userInputSection] animated:1];

      passwordCell2 = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
      textField = [passwordCell2 textField];
      [textField setText:0];
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

- (void)leftBarButtonTapped:(id)tapped
{
  delegate = [(DMCEnrollmentAuthenticationViewController *)self delegate];
  [delegate authenticationViewControllerDidCancel:self];
}

- (void)continueButtonTapped
{
  if ([(DMCEnrollmentAuthenticationViewController *)self isDisplayingPasswordCell])
  {
    passwordCell = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
    textField = [passwordCell textField];
    [textField resignFirstResponder];

    delegate = [(DMCEnrollmentAuthenticationViewController *)self delegate];
    passwordCell2 = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
    textField2 = [passwordCell2 textField];
    text = [textField2 text];
    usernameCell = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    textField3 = [usernameCell textField];
    text2 = [textField3 text];
    [delegate authenticationViewController:self didReceivePassword:text forUsername:text2];
  }

  else
  {
    usernameCell2 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    textField4 = [usernameCell2 textField];
    [textField4 resignFirstResponder];

    delegate = [(DMCEnrollmentAuthenticationViewController *)self delegate];
    passwordCell2 = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
    textField2 = [passwordCell2 textField];
    text = [textField2 text];
    usernameCell = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    textField3 = [text stringByTrimmingCharactersInSet:usernameCell];
    [delegate authenticationViewController:self didReceiveUsername:textField3];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  usernameCell = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
  textField = [usernameCell textField];
  v7 = [editingCopy isEqual:textField];

  if (!v7)
  {
    return 1;
  }

  return [(DMCEnrollmentAuthenticationViewController *)self isUsernameEditable];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  text = [returnCopy text];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v7 = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v8 = [v7 length];

  if (v8)
  {
    if (-[DMCEnrollmentAuthenticationViewController isDisplayingPasswordCell](self, "isDisplayingPasswordCell") && (-[DMCEnrollmentAuthenticationViewController usernameCell](self, "usernameCell"), v9 = objc_claimAutoreleasedReturnValue(), [v9 textField], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(returnCopy, "isEqual:", v10), v10, v9, v11))
    {
      passwordCell = [(DMCEnrollmentAuthenticationViewController *)self passwordCell];
      textField = [passwordCell textField];
      [textField becomeFirstResponder];
    }

    else
    {
      [(DMCEnrollmentAuthenticationViewController *)self continueButtonTapped];
    }
  }

  return v8 != 0;
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  usernameCell = [(DMCEnrollmentAuthenticationViewController *)self usernameCell];
  textField = [usernameCell textField];
  v6 = [changeCopy isEqual:textField];

  if (v6)
  {
    text = [changeCopy text];
    if (-[DMCEnrollmentAuthenticationViewController isUsernameEditable](self, "isUsernameEditable") || (-[DMCEnrollmentAuthenticationViewController username](self, "username"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [text isEqualToString:v8], v8, (v9 & 1) != 0))
    {
      v10 = text;
      username = self->_username;
      self->_username = v10;
    }

    else
    {
      username = [(DMCEnrollmentAuthenticationViewController *)self username];
      [changeCopy setText:username];
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