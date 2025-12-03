@interface DMCInstallProfileQuestionViewController
- (DMCInstallProfileQuestionViewController)initWithFieldCollection:(id)collection;
- (DMCInstallProfileQuestionViewController)initWithStyle:(int64_t)style;
- (DMCInstallProfileQuestionViewController)initWithUserInput:(id)input;
- (DMCProfileQuestionsControllerDelegate)questionsDelegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)_addActionForError:(unint64_t)error title:(id)title toAlert:(id)alert;
- (void)_configureQuestionField:(id)field;
- (void)_continueOrFinish;
- (void)_continueWithCurrentField;
- (void)_didFinishPasscodePreflightWithError:(id)error;
- (void)_didFinishPreflightWithError:(id)error;
- (void)_finishInput;
- (void)_handleError:(unint64_t)error;
- (void)_preflightCurrentPayload;
- (void)_processResponseAndContinue;
- (void)_retryCurrentPasswordFieldWithError:(id)error;
- (void)_retryWithCurrentField;
- (void)_setup;
- (void)_showAlertForError:(id)error;
- (void)_showNavButtonsAnimated:(BOOL)animated;
- (void)_showProgressIndicator;
- (void)_tellDelegateDidFinishWithUserInputResponses:(id)responses;
- (void)_textFieldDidChange;
- (void)_updateNavigationBar;
- (void)profileConnectionDidFinishPreflightWithError:(id)error;
- (void)setQuestionsDelegate:(id)delegate;
- (void)updateWithUserInput:(id)input;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation DMCInstallProfileQuestionViewController

- (DMCInstallProfileQuestionViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = DMCInstallProfileQuestionViewController;
  v3 = [(DMCProfileTableViewController *)&v6 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(DMCInstallProfileQuestionViewController *)v3 _setup];
  }

  return v4;
}

- (DMCInstallProfileQuestionViewController)initWithUserInput:(id)input
{
  inputCopy = input;
  v9.receiver = self;
  v9.super_class = DMCInstallProfileQuestionViewController;
  v5 = [(DMCProfileTableViewController *)&v9 initWithStyle:2];
  if (v5)
  {
    v6 = [[DMCFieldCollection alloc] initWithUserInput:inputCopy];
    fieldCollection = v5->_fieldCollection;
    v5->_fieldCollection = v6;

    [(DMCInstallProfileQuestionViewController *)v5 _setup];
  }

  return v5;
}

- (DMCInstallProfileQuestionViewController)initWithFieldCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = DMCInstallProfileQuestionViewController;
  v6 = [(DMCProfileTableViewController *)&v9 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fieldCollection, collection);
    [(DMCInstallProfileQuestionViewController *)v7 _setup];
  }

  return v7;
}

- (void)_setup
{
  v5.receiver = self;
  v5.super_class = DMCInstallProfileQuestionViewController;
  [(DMCProfileTableViewController *)&v5 updateExtendedLayoutIncludesOpaqueBars];
  navigationItem = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  navigationItem2 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [navigationItem2 setBackButtonTitle:&stru_2859FB650];

  [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:0];
  [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = DMCInstallProfileQuestionViewController;
  [(DMCInstallProfileQuestionViewController *)&v5 viewDidAppear:appear];
  textField = [(DMCInstallProfileQuestionViewController *)self textField];
  [textField becomeFirstResponder];
}

- (void)setQuestionsDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_questionsDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_questionsDelegate, obj);
    [obj setCurrentQuestionsController:self];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(DMCFieldCollection *)self->_fieldCollection currentField:view];
  fieldDescription = [v4 fieldDescription];

  return fieldDescription;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(DMCFieldCollection *)self->_fieldCollection currentField:view];
  finePrint = [v4 finePrint];

  return finePrint;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"MCProfileQuestionCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1000 reuseIdentifier:@"MCProfileQuestionCell"];
  }

  if (![pathCopy row])
  {
    [v7 setTextFieldOffset:0.0];
    [v7 setSelectionStyle:0];
    editableTextField = [v7 editableTextField];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__textFieldDidChange name:*MEMORY[0x277D770B0] object:0];

    [(DMCInstallProfileQuestionViewController *)self _configureQuestionField:editableTextField];
    [(DMCInstallProfileQuestionViewController *)self setTextField:editableTextField];
  }

  return v7;
}

- (void)_configureQuestionField:(id)field
{
  fieldCollection = self->_fieldCollection;
  fieldCopy = field;
  currentField = [(DMCFieldCollection *)fieldCollection currentField];
  [fieldCopy setSecureTextEntry:{objc_msgSend(currentField, "isPassword")}];
  [fieldCopy setKeyboardType:{objc_msgSend(currentField, "keyboardType")}];
  [fieldCopy setAutocapitalizationType:{objc_msgSend(currentField, "capitalizationType")}];
  [fieldCopy setAutocorrectionType:1];
  [fieldCopy setClearButtonMode:3];
  defaultValue = [currentField defaultValue];
  [fieldCopy setText:defaultValue];

  placeholderValue = [currentField placeholderValue];
  [fieldCopy setPlaceholder:placeholderValue];
}

- (void)_textFieldDidChange
{
  currentField = [(DMCFieldCollection *)self->_fieldCollection currentField];
  if ([currentField isRequired])
  {
    textField = [(DMCInstallProfileQuestionViewController *)self textField];
    text = [textField text];
    v5 = [text length];

    minimumLength = [currentField minimumLength];
    if (minimumLength)
    {
      minimumLength2 = [currentField minimumLength];
      v8 = v5 >= [minimumLength2 integerValue];
    }

    else
    {
      v8 = 1;
    }

    v9 = v5 != 0;
    navigationItem = [(DMCInstallProfileQuestionViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v9 & v8];

    navigationItem2 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
    DMCSendNavUIUpdatedNotification(navigationItem2);
  }
}

- (void)_preflightCurrentPayload
{
  [(DMCInstallProfileQuestionViewController *)self _showProgressIndicator];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  responseDictionariesForCurrentPayload = [(DMCFieldCollection *)self->_fieldCollection responseDictionariesForCurrentPayload];
  [mEMORY[0x277D262A0] preflightUserInputResponses:responseDictionariesForCurrentPayload forPayloadIndex:{-[DMCFieldCollection currentPayloadIndex](self->_fieldCollection, "currentPayloadIndex")}];
}

- (void)profileConnectionDidFinishPreflightWithError:(id)error
{
  errorCopy = error;
  [(DMCProfileTableViewController *)self hideProgressInNavBarShowBackButton:0];
  if (self->_waitingForPasscodePreflight)
  {
    self->_waitingForPasscodePreflight = 0;
    [(DMCInstallProfileQuestionViewController *)self _didFinishPasscodePreflightWithError:errorCopy];
  }

  else
  {
    [(DMCInstallProfileQuestionViewController *)self _didFinishPreflightWithError:errorCopy];
  }
}

- (void)_didFinishPasscodePreflightWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    previousResponseValue = self->_previousResponseValue;
    self->_previousResponseValue = 0;

    [(DMCInstallProfileQuestionViewController *)self _retryCurrentPasswordFieldWithError:errorCopy];
  }

  else
  {
    [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:1];
    [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
    currentField = [(DMCFieldCollection *)self->_fieldCollection currentField];
    retypeDescription = [currentField retypeDescription];
    v7 = retypeDescription;
    if (retypeDescription)
    {
      v8 = retypeDescription;
    }

    else
    {
      v8 = &stru_2859FB650;
    }

    [currentField setFieldDescription:v8];

    tableView = [(DMCInstallProfileQuestionViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)_didFinishPreflightWithError:(id)error
{
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v6 = [userInfo objectForKey:*MEMORY[0x277D25CB0]];
    if ([v6 isEqualToString:*MEMORY[0x277D25CB8]])
    {
      currentFieldIsSinglePasswordField = [(DMCFieldCollection *)self->_fieldCollection currentFieldIsSinglePasswordField];

      if (currentFieldIsSinglePasswordField)
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

- (void)updateWithUserInput:(id)input
{
  inputCopy = input;
  v5 = [[DMCFieldCollection alloc] initWithUserInput:inputCopy];

  fieldCollection = self->_fieldCollection;
  self->_fieldCollection = v5;

  [(DMCInstallProfileQuestionViewController *)self _continueWithCurrentField];
}

- (void)_processResponseAndContinue
{
  currentField = [(DMCFieldCollection *)self->_fieldCollection currentField];
  textField = [(DMCInstallProfileQuestionViewController *)self textField];
  text = [textField text];

  if ([currentField needsRetype])
  {
    if (self->_previousResponseValue)
    {
      if ([text isEqualToString:?])
      {
        isDevicePasscodeField = [currentField isDevicePasscodeField];
        previousResponseValue = self->_previousResponseValue;
        self->_previousResponseValue = 0;

        goto LABEL_6;
      }

      v10 = self->_previousResponseValue;
      self->_previousResponseValue = 0;

      if ([currentField isDevicePasscodeField])
      {
        [currentField setUserResponse:0];
      }

      mismatchDescription = [currentField mismatchDescription];
LABEL_18:
      v12 = mismatchDescription;
      if (mismatchDescription)
      {
        v13 = mismatchDescription;
      }

      else
      {
        v13 = &stru_2859FB650;
      }

      [currentField setFieldDescription:v13];

      [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
      tableView = [(DMCInstallProfileQuestionViewController *)self tableView];
      [tableView reloadData];
      goto LABEL_22;
    }

    v8 = [text copy];
    v9 = self->_previousResponseValue;
    self->_previousResponseValue = v8;

    if (![currentField isDevicePasscodeField])
    {
      mismatchDescription = [currentField retypeDescription];
      goto LABEL_18;
    }

    [currentField setUserResponse:text];
    isDevicePasscodeField = 0;
    self->_waitingForPasscodePreflight = 1;
  }

  else
  {
    isDevicePasscodeField = 0;
  }

LABEL_6:
  if (self->_waitingForPasscodePreflight || (isDevicePasscodeField & 1) != 0)
  {
    if (isDevicePasscodeField)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [currentField setUserResponse:text];
    if (![(DMCFieldCollection *)self->_fieldCollection currentFieldIsLastInPayload])
    {
LABEL_9:
      [(DMCInstallProfileQuestionViewController *)self _continueOrFinish];
      goto LABEL_23;
    }
  }

  [(DMCInstallProfileQuestionViewController *)self _preflightCurrentPayload];
  tableView = [(DMCInstallProfileQuestionViewController *)self view];
  [tableView endEditing:1];
LABEL_22:

LABEL_23:
}

- (void)_showProgressIndicator
{
  navigationItem = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0 animated:0];

  navigationItem2 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:0 animated:0];

  [(DMCProfileTableViewController *)self showProgressInNavBar];
}

- (void)_showNavButtonsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = DMCEnrollmentLocalizedString(@"DMC_GENERAL_NEXT");
  v11 = [v5 initWithTitle:v6 style:0 target:self action:sel__processResponseAndContinue];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelInput];
  navigationItem = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v11 animated:animatedCopy];

  navigationItem2 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v7 animated:animatedCopy];

  navigationItem3 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem3);
}

- (void)_updateNavigationBar
{
  currentField = [(DMCFieldCollection *)self->_fieldCollection currentField];
  if (-[DMCFieldCollection currentFieldIsFinalField](self->_fieldCollection, "currentFieldIsFinalField") && (![currentField needsRetype] || self->_previousResponseValue))
  {
    navigationItem = [(DMCInstallProfileQuestionViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setStyle:2];
  }

  if ([currentField isRequired])
  {
    defaultValue = [currentField defaultValue];
    v6 = [defaultValue length];

    if (!v6)
    {
      navigationItem2 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
      rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
      [rightBarButtonItem2 setEnabled:0];
    }
  }

  title = [currentField title];
  navigationItem3 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  [navigationItem3 setTitle:title];

  navigationItem4 = [(DMCInstallProfileQuestionViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem4);
}

- (void)_tellDelegateDidFinishWithUserInputResponses:(id)responses
{
  responsesCopy = responses;
  questionsDelegate = [(DMCInstallProfileQuestionViewController *)self questionsDelegate];
  [questionsDelegate questionsController:self didFinishWithResponses:responsesCopy];
}

- (void)_continueWithCurrentField
{
  [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:1];
  [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
  tableView = [(DMCInstallProfileQuestionViewController *)self tableView];
  [tableView reloadData];
}

- (void)_retryWithCurrentField
{
  [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:1];
  [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
  tableView = [(DMCInstallProfileQuestionViewController *)self tableView];
  [tableView reloadData];

  tableView2 = [(DMCInstallProfileQuestionViewController *)self tableView];
  [tableView2 layoutIfNeeded];

  textField = [(DMCInstallProfileQuestionViewController *)self textField];
  [textField becomeFirstResponder];
}

- (void)_retryCurrentPasswordFieldWithError:(id)error
{
  errorCopy = error;
  [(DMCInstallProfileQuestionViewController *)self _showNavButtonsAnimated:1];
  [(DMCInstallProfileQuestionViewController *)self _updateNavigationBar];
  currentField = [(DMCFieldCollection *)self->_fieldCollection currentField];
  localizedDescription = [errorCopy localizedDescription];
  if (localizedDescription)
  {
    [currentField setFieldDescription:localizedDescription];
  }

  localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
  if (localizedRecoverySuggestion)
  {
    [currentField setFinePrint:localizedRecoverySuggestion];
  }

  tableView = [(DMCInstallProfileQuestionViewController *)self tableView];
  [tableView reloadData];
}

- (void)_finishInput
{
  userInputResponses = [(DMCFieldCollection *)self->_fieldCollection userInputResponses];
  [(DMCInstallProfileQuestionViewController *)self _tellDelegateDidFinishWithUserInputResponses:userInputResponses];
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
    questionsDelegate = [(DMCInstallProfileQuestionViewController *)self questionsDelegate];
    [(DMCInstallProfileQuestionViewController *)v4 setQuestionsDelegate:questionsDelegate];

    [(UIViewController *)self dmc_pushViewController:v4 animated:1];
  }
}

- (void)_showAlertForError:(id)error
{
  v4 = MEMORY[0x277D75110];
  errorCopy = error;
  localizedDescription = [errorCopy localizedDescription];
  localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
  v8 = 1;
  v16 = [v4 alertControllerWithTitle:localizedDescription message:localizedRecoverySuggestion preferredStyle:1];

  userInfo = [errorCopy userInfo];

  v10 = [userInfo objectForKey:*MEMORY[0x277D25CB0]];

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

- (void)_addActionForError:(unint64_t)error title:(id)title toAlert:(id)alert
{
  titleCopy = title;
  alertCopy = alert;
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D750F8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__DMCInstallProfileQuestionViewController__addActionForError_title_toAlert___block_invoke;
  v12[3] = &unk_278EE7DE0;
  objc_copyWeak(v13, &location);
  v13[1] = error;
  v11 = [v10 actionWithTitle:titleCopy style:error == 2 handler:v12];
  [alertCopy addAction:v11];

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

- (void)_handleError:(unint64_t)error
{
  if (error <= 1)
  {
    if (error)
    {
      if (error == 1)
      {

        [(DMCInstallProfileQuestionViewController *)self _continueOrFinish];
      }

      return;
    }

    [(DMCFieldCollection *)self->_fieldCollection restartCurrentPayload];
    goto LABEL_11;
  }

  if (error != 2)
  {
    if (error != 3)
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