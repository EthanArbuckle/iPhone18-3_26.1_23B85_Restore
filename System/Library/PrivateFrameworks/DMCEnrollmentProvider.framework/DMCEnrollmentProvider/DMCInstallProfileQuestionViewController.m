@interface DMCInstallProfileQuestionViewController
- (DMCInstallProfileQuestionViewController)initWithFieldCollection:(id)a3;
- (DMCInstallProfileQuestionViewController)initWithStyle:(int64_t)a3;
- (DMCInstallProfileQuestionViewController)initWithUserInput:(id)a3;
- (DMCProfileQuestionsControllerDelegate)questionsDelegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)_addActionForError:(unint64_t)a3 title:(id)a4 toAlert:(id)a5;
- (void)_configureQuestionField:(id)a3;
- (void)_continueOrFinish;
- (void)_continueWithCurrentField;
- (void)_didFinishPasscodePreflightWithError:(id)a3;
- (void)_didFinishPreflightWithError:(id)a3;
- (void)_finishInput;
- (void)_handleError:(unint64_t)a3;
- (void)_preflightCurrentPayload;
- (void)_processResponseAndContinue;
- (void)_retryCurrentPasswordFieldWithError:(id)a3;
- (void)_retryWithCurrentField;
- (void)_setup;
- (void)_showAlertForError:(id)a3;
- (void)_showNavButtonsAnimated:(BOOL)a3;
- (void)_showProgressIndicator;
- (void)_tellDelegateDidFinishWithUserInputResponses:(id)a3;
- (void)_textFieldDidChange;
- (void)_updateNavigationBar;
- (void)profileConnectionDidFinishPreflightWithError:(id)a3;
- (void)setQuestionsDelegate:(id)a3;
- (void)updateWithUserInput:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation DMCInstallProfileQuestionViewController

- (DMCInstallProfileQuestionViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = DMCInstallProfileQuestionViewController;
  v3 = [(DMCProfileTableViewController *)&v6 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(DMCInstallProfileQuestionViewController *)v3 _setup];
  }

  return v4;
}

- (DMCInstallProfileQuestionViewController)initWithUserInput:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMCInstallProfileQuestionViewController;
  v5 = [(DMCProfileTableViewController *)&v9 initWithStyle:2];
  if (v5)
  {
    v6 = [[DMCFieldCollection alloc] initWithUserInput:v4];
    fieldCollection = v5->_fieldCollection;
    v5->_fieldCollection = v6;

    [(DMCInstallProfileQuestionViewController *)v5 _setup];
  }

  return v5;
}

- (DMCInstallProfileQuestionViewController)initWithFieldCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DMCInstallProfileQuestionViewController;
  v6 = [(DMCProfileTableViewController *)&v9 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fieldCollection, a3);
    [(DMCInstallProfileQuestionViewController *)v7 _setup];
  }

  return v7;
}

- (void)_setup
{
  v5.receiver = self;
  v5.super_class = DMCInstallProfileQuestionViewController;
  [(DMCProfileTableViewController *)&v5 updateExtendedLayoutIncludesOpaqueBars];
  v3 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [v4 setBackButtonTitle:&stru_2859FB650];

  [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:0];
  [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DMCInstallProfileQuestionViewController;
  [(DMCInstallProfileQuestionViewController *)&v5 viewDidAppear:a3];
  v4 = [(DMCInstallProfileQuestionViewController *)self textField];
  [v4 becomeFirstResponder];
}

- (void)setQuestionsDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_questionsDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_questionsDelegate, obj);
    [obj setCurrentQuestionsController:self];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(DMCFieldCollection *)self->_fieldCollection currentField:a3];
  v5 = [v4 fieldDescription];

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(DMCFieldCollection *)self->_fieldCollection currentField:a3];
  v5 = [v4 finePrint];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"MCProfileQuestionCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1000 reuseIdentifier:@"MCProfileQuestionCell"];
  }

  if (![v6 row])
  {
    [v7 setTextFieldOffset:0.0];
    [v7 setSelectionStyle:0];
    v8 = [v7 editableTextField];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel__textFieldDidChange name:*MEMORY[0x277D770B0] object:0];

    [(DMCInstallProfileQuestionViewController *)self _configureQuestionField:v8];
    [(DMCInstallProfileQuestionViewController *)self setTextField:v8];
  }

  return v7;
}

- (void)_configureQuestionField:(id)a3
{
  fieldCollection = self->_fieldCollection;
  v4 = a3;
  v7 = [(DMCFieldCollection *)fieldCollection currentField];
  [v4 setSecureTextEntry:{objc_msgSend(v7, "isPassword")}];
  [v4 setKeyboardType:{objc_msgSend(v7, "keyboardType")}];
  [v4 setAutocapitalizationType:{objc_msgSend(v7, "capitalizationType")}];
  [v4 setAutocorrectionType:1];
  [v4 setClearButtonMode:3];
  v5 = [v7 defaultValue];
  [v4 setText:v5];

  v6 = [v7 placeholderValue];
  [v4 setPlaceholder:v6];
}

- (void)_textFieldDidChange
{
  v13 = [(DMCFieldCollection *)self->_fieldCollection currentField];
  if ([v13 isRequired])
  {
    v3 = [(DMCInstallProfileQuestionViewController *)self textField];
    v4 = [v3 text];
    v5 = [v4 length];

    v6 = [v13 minimumLength];
    if (v6)
    {
      v7 = [v13 minimumLength];
      v8 = v5 >= [v7 integerValue];
    }

    else
    {
      v8 = 1;
    }

    v9 = v5 != 0;
    v10 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
    v11 = [v10 rightBarButtonItem];
    [v11 setEnabled:v9 & v8];

    v12 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
    DMCSendNavUIUpdatedNotification(v12);
  }
}

- (void)_preflightCurrentPayload
{
  [(DMCInstallProfileQuestionViewController *)self _showProgressIndicator];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [(DMCFieldCollection *)self->_fieldCollection responseDictionariesForCurrentPayload];
  [v4 preflightUserInputResponses:v3 forPayloadIndex:{-[DMCFieldCollection currentPayloadIndex](self->_fieldCollection, "currentPayloadIndex")}];
}

- (void)profileConnectionDidFinishPreflightWithError:(id)a3
{
  v4 = a3;
  [(DMCProfileTableViewController *)self hideProgressInNavBarShowBackButton:0];
  if (self->_waitingForPasscodePreflight)
  {
    self->_waitingForPasscodePreflight = 0;
    [(DMCInstallProfileQuestionViewController *)self _didFinishPasscodePreflightWithError:v4];
  }

  else
  {
    [(DMCInstallProfileQuestionViewController *)self _didFinishPreflightWithError:v4];
  }
}

- (void)_didFinishPasscodePreflightWithError:(id)a3
{
  v10 = a3;
  if (v10)
  {
    previousResponseValue = self->_previousResponseValue;
    self->_previousResponseValue = 0;

    [(DMCInstallProfileQuestionViewController *)self _retryCurrentPasswordFieldWithError:v10];
  }

  else
  {
    [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:1];
    [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
    v5 = [(DMCFieldCollection *)self->_fieldCollection currentField];
    v6 = [v5 retypeDescription];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_2859FB650;
    }

    [v5 setFieldDescription:v8];

    v9 = [(DMCInstallProfileQuestionViewController *)self tableView];
    [v9 reloadData];
  }
}

- (void)_didFinishPreflightWithError:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKey:*MEMORY[0x277D25CB0]];
    if ([v6 isEqualToString:*MEMORY[0x277D25CB8]])
    {
      v7 = [(DMCFieldCollection *)self->_fieldCollection currentFieldIsSinglePasswordField];

      if (v7)
      {
        [(DMCInstallProfileQuestionViewController *)self _retryCurrentPasswordFieldWithError:v8];
        goto LABEL_8;
      }
    }

    else
    {
    }

    [(DMCInstallProfileQuestionViewController *)self _showAlertForError:v8];
  }

  else
  {
    [(DMCInstallProfileQuestionViewController *)self _continueOrFinish];
  }

LABEL_8:
}

- (void)updateWithUserInput:(id)a3
{
  v4 = a3;
  v5 = [[DMCFieldCollection alloc] initWithUserInput:v4];

  fieldCollection = self->_fieldCollection;
  self->_fieldCollection = v5;

  [(DMCInstallProfileQuestionViewController *)self _continueWithCurrentField];
}

- (void)_processResponseAndContinue
{
  v14 = [(DMCFieldCollection *)self->_fieldCollection currentField];
  v3 = [(DMCInstallProfileQuestionViewController *)self textField];
  v4 = [v3 text];

  if ([v14 needsRetype])
  {
    if (self->_previousResponseValue)
    {
      if ([v4 isEqualToString:?])
      {
        v5 = [v14 isDevicePasscodeField];
        previousResponseValue = self->_previousResponseValue;
        self->_previousResponseValue = 0;

        goto LABEL_6;
      }

      v10 = self->_previousResponseValue;
      self->_previousResponseValue = 0;

      if ([v14 isDevicePasscodeField])
      {
        [v14 setUserResponse:0];
      }

      v11 = [v14 mismatchDescription];
LABEL_18:
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = &stru_2859FB650;
      }

      [v14 setFieldDescription:v13];

      [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
      v7 = [(DMCInstallProfileQuestionViewController *)self tableView];
      [v7 reloadData];
      goto LABEL_22;
    }

    v8 = [v4 copy];
    v9 = self->_previousResponseValue;
    self->_previousResponseValue = v8;

    if (![v14 isDevicePasscodeField])
    {
      v11 = [v14 retypeDescription];
      goto LABEL_18;
    }

    [v14 setUserResponse:v4];
    v5 = 0;
    self->_waitingForPasscodePreflight = 1;
  }

  else
  {
    v5 = 0;
  }

LABEL_6:
  if (self->_waitingForPasscodePreflight || (v5 & 1) != 0)
  {
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [v14 setUserResponse:v4];
    if (![(DMCFieldCollection *)self->_fieldCollection currentFieldIsLastInPayload])
    {
LABEL_9:
      [(DMCInstallProfileQuestionViewController *)self _continueOrFinish];
      goto LABEL_23;
    }
  }

  [(DMCInstallProfileQuestionViewController *)self _preflightCurrentPayload];
  v7 = [(DMCInstallProfileQuestionViewController *)self view];
  [v7 endEditing:1];
LABEL_22:

LABEL_23:
}

- (void)_showProgressIndicator
{
  v3 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [v3 setLeftBarButtonItem:0 animated:0];

  v4 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [v4 setRightBarButtonItem:0 animated:0];

  [(DMCProfileTableViewController *)self showProgressInNavBar];
}

- (void)_showNavButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = DMCEnrollmentLocalizedString(@"DMC_GENERAL_NEXT");
  v11 = [v5 initWithTitle:v6 style:0 target:self action:sel__processResponseAndContinue];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelInput];
  v8 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v11 animated:v3];

  v9 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [v9 setLeftBarButtonItem:v7 animated:v3];

  v10 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(v10);
}

- (void)_updateNavigationBar
{
  v12 = [(DMCFieldCollection *)self->_fieldCollection currentField];
  if (-[DMCFieldCollection currentFieldIsFinalField](self->_fieldCollection, "currentFieldIsFinalField") && (![v12 needsRetype] || self->_previousResponseValue))
  {
    v3 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
    v4 = [v3 rightBarButtonItem];
    [v4 setStyle:2];
  }

  if ([v12 isRequired])
  {
    v5 = [v12 defaultValue];
    v6 = [v5 length];

    if (!v6)
    {
      v7 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
      v8 = [v7 rightBarButtonItem];
      [v8 setEnabled:0];
    }
  }

  v9 = [v12 title];
  v10 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [v10 setTitle:v9];

  v11 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(v11);
}

- (void)_tellDelegateDidFinishWithUserInputResponses:(id)a3
{
  v4 = a3;
  v5 = [(DMCInstallProfileQuestionViewController *)self questionsDelegate];
  [v5 questionsController:self didFinishWithResponses:v4];
}

- (void)_continueWithCurrentField
{
  [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:1];
  [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
  v3 = [(DMCInstallProfileQuestionViewController *)self tableView];
  [v3 reloadData];
}

- (void)_retryWithCurrentField
{
  [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:1];
  [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
  v3 = [(DMCInstallProfileQuestionViewController *)self tableView];
  [v3 reloadData];

  v4 = [(DMCInstallProfileQuestionViewController *)self tableView];
  [v4 layoutIfNeeded];

  v5 = [(DMCInstallProfileQuestionViewController *)self textField];
  [v5 becomeFirstResponder];
}

- (void)_retryCurrentPasswordFieldWithError:(id)a3
{
  v8 = a3;
  [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:1];
  [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
  v4 = [(DMCFieldCollection *)self->_fieldCollection currentField];
  v5 = [v8 localizedDescription];
  if (v5)
  {
    [v4 setFieldDescription:v5];
  }

  v6 = [v8 localizedRecoverySuggestion];
  if (v6)
  {
    [v4 setFinePrint:v6];
  }

  v7 = [(DMCInstallProfileQuestionViewController *)self tableView];
  [v7 reloadData];
}

- (void)_finishInput
{
  v3 = [(DMCFieldCollection *)self->_fieldCollection userInputResponses];
  [(DMCInstallProfileQuestionViewController *)self _tellDelegateDidFinishWithUserInputResponses:v3];
}

- (void)_continueOrFinish
{
  if ([(DMCFieldCollection *)self->_fieldCollection currentFieldIsFinalField])
  {

    [(DMCInstallProfileQuestionViewController *)self _finishInput];
  }

  else
  {
    [(DMCFieldCollection *)self->_fieldCollection moveToNextField];
    [(DMCInstallProfileQuestionViewController *)self _continueWithCurrentField];
    v4 = [[DMCInstallProfileQuestionViewController alloc] initWithFieldCollection:self->_fieldCollection];
    v3 = [(DMCInstallProfileQuestionViewController *)self questionsDelegate];
    [(DMCInstallProfileQuestionViewController *)v4 setQuestionsDelegate:v3];

    [(UIViewController *)self dmc_pushViewController:v4 animated:1];
  }
}

- (void)_showAlertForError:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = a3;
  v6 = [v5 localizedDescription];
  v7 = [v5 localizedRecoverySuggestion];
  v8 = 1;
  v16 = [v4 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = [v5 userInfo];

  v10 = [v9 objectForKey:*MEMORY[0x277D25CB0]];

  if ([v10 isEqualToString:*MEMORY[0x277D25CC8]])
  {
    v11 = 0;
    v12 = @"DMC_GENERAL_SKIP";
LABEL_5:
    v13 = @"DMC_GENERAL_RETRY";
LABEL_6:
    v14 = DMCEnrollmentLocalizedString(v13);
    [(DMCInstallProfileQuestionViewController *)self _addActionForError:v11 title:v14 toAlert:v16];

    goto LABEL_7;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D25CC0]])
  {
    v11 = 0;
    v12 = @"DMC_GENERAL_IGNORE";
    v8 = 1;
    goto LABEL_5;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D25CB8]])
  {
    v8 = 0;
    v12 = @"DMC_GENERAL_RETRY";
    v11 = 2;
    v13 = @"DMC_GENERAL_CANCEL";
    goto LABEL_6;
  }

  v12 = @"DMC_GENERAL_OK";
  v8 = 3;
LABEL_7:
  v15 = DMCEnrollmentLocalizedString(v12);
  [(DMCInstallProfileQuestionViewController *)self _addActionForError:v8 title:v15 toAlert:v16];

  [(UIViewController *)self dmc_presentAlert:v16 completion:0];
}

- (void)_addActionForError:(unint64_t)a3 title:(id)a4 toAlert:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D750F8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__DMCInstallProfileQuestionViewController__addActionForError_title_toAlert___block_invoke;
  v12[3] = &unk_278EE7DE0;
  objc_copyWeak(v13, &location);
  v13[1] = a3;
  v11 = [v10 actionWithTitle:v8 style:a3 == 2 handler:v12];
  [v9 addAction:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __76__DMCInstallProfileQuestionViewController__addActionForError_title_toAlert___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __76__DMCInstallProfileQuestionViewController__addActionForError_title_toAlert___block_invoke_2;
  v2[3] = &unk_278EE7DB8;
  objc_copyWeak(v3, (a1 + 32));
  v3[1] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(v3);
}

void __76__DMCInstallProfileQuestionViewController__addActionForError_title_toAlert___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleError:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_handleError:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {

        [(DMCInstallProfileQuestionViewController *)self _continueOrFinish];
      }

      return;
    }

    [(DMCFieldCollection *)self->_fieldCollection restartCurrentPayload];
    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      return;
    }

LABEL_11:

    [(DMCInstallProfileQuestionViewController *)self _retryWithCurrentField];
    return;
  }

  [(DMCInstallProfileQuestionViewController *)self _cancelInput];
}

- (DMCProfileQuestionsControllerDelegate)questionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_questionsDelegate);

  return WeakRetained;
}

@end